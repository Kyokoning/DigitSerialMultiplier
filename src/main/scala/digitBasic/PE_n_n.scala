/*
* @Author: xnchen
* @Date:   2020-11-25 17:03:53
* @Last Modified by:   xnchen
* @Last Modified time: 2020-11-29 15:50:18
*/

package digitBasic

import chisel3._
import chisel3.util.Fill

class PE_nxn(n: Int) extends Module {
    val io = IO(new Bundle {
        val a_n = Input(UInt(n.W))
        val b_n = Input(UInt(n.W))
        val g_n = Input(UInt(n.W))
        val t_ru = Input(UInt(n.W)) 
        val t_ru_alloc = Input(UInt((n-1).W))
        val control_in = Input(UInt(1.W))
        val control_out = Output(UInt(1.W))
        val t_out_alloc = Output(UInt((n-1).W))
        val t_out = Output(UInt(n.W))
    })
    // t_ru的最后一位同时也是t_lu输入

    val PE_up_line = Module(new PE_up_line(n))
    val PE_down_lines = Array.fill(n-1)(Module(new PE_down_line(n)).io)

    // t_out_alloc的中转量
    val t_out_alloc_temp_bool = Wire(Vec(n-1, Bool())) 

    // control register init
    // 生成control_out信号输出

    // control信号以脉动形式在PE_n连接中向下传递，只在目前计算到的最底的PE中，control=1(过了对角线，即流水线全填充满后，control信号就无)
    val control_reg = RegInit(0.U(1.W))
    control_reg := io.control_in
    io.control_out := control_reg

    // 使用control_in信号控制斜向数据的输入
    val control_n = Fill(n, io.control_in)
    val t_ru_alloc_valid = io.t_ru_alloc & control_n

    // t_lu_upline_reg用于锁存PE_n中第0行PE的t_lu数据。
    // 如果本PE_n是第一次计算，则说明在PE矩阵中处于最左侧一列，t_lu来自上一个PE_n的输入。如果不是第一次计算，则t_lu来自本PE_n之前锁存的t_lu
    // control_reg比输入control_in慢一个周期，所以如果是位于映射阵列最左侧的PE_n（流水线第一次被填充的PE_n），control_in===1, 但control_reg===0。
    // t_lu === io.t_ru(n-1)
    val t_lu_upline_reg = RegInit(0.U(1.W))
    t_lu_upline_reg := Mux(io.control_in.asBool(), t_lu_upline_reg, io.t_ru(n-1))

    // t_lu_downlines_reg信号用于锁存1至n-1行的t_lu数据。如果control_reg===1，则是本PE_n模块之前锁存的t_lu（映射在矩阵图上理解，来自左侧传入）；如果===0，则是来自本模块第0行计算得到的t_lu。
    val t_lu_downlines_reg = RegInit(VecInit(Seq.fill(n-1)(0.U(1.W))))
    t_lu_downlines_reg(0) := Mux(control_reg.asBool, t_lu_downlines_reg(0), PE_up_line.io.t_out(n-1))
    for (i <- 1 until n-1){
        t_lu_downlines_reg(i) := Mux(control_reg.asBool, t_lu_downlines_reg(i), PE_down_lines(i-1).t_out(n-1))
    }

    // PE_up_line Module的连线
    PE_up_line.io.a_n := io.a_n
    PE_up_line.io.g_n := io.g_n
    PE_up_line.io.b_1 := io.b_n(n-1)
    PE_up_line.io.t_ru := io.t_ru
    PE_up_line.io.t_ru_alloc := t_ru_alloc_valid
    PE_up_line.io.t_lu := t_lu_upline_reg
    t_out_alloc_temp_bool(n-2) := PE_up_line.io.t_out(n-1).asBool()

    // PE_down_lines Module Array的连线
    // 和PE_up_line连接的第1行的连线
    PE_down_lines(0).a_n := io.a_n
    PE_down_lines(0).g_n := io.g_n
    PE_down_lines(0).b_1 := io.b_n(n-2)
    PE_down_lines(0).t_ru := PE_up_line.io.t_out(n-1, 0)
    PE_down_lines(0).t_lu := t_lu_downlines_reg(0)

    // 第2至n-1行的连接
    for(i <- 1 until n-1) {
        PE_down_lines(i).a_n := io.a_n
        PE_down_lines(i).g_n := io.g_n
        PE_down_lines(i).b_1 := io.b_n(n-1-i)
        PE_down_lines(i).t_ru := PE_down_lines(i-1).t_out(n-1, 0)
        PE_down_lines(i).t_lu := t_lu_downlines_reg(i)
    }

    for(i <- 0 until n-1) {
        t_out_alloc_temp_bool(n-2-i) := PE_down_lines(i).t_out(n-1).asBool() 
    }

    io.t_out_alloc := t_out_alloc_temp_bool.asUInt()
    io.t_out := PE_down_lines(n-2).t_out

}

object PE_nxn_inst extends App{
    chisel3.Driver.execute(args, () => new PE_nxn(32))
}