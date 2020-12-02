/*
* @Author: xnchen
* @Date:   2020-11-28 16:21:23
* @Last Modified by:   xnchen
* @Last Modified time: 2020-12-02 15:33:24
*/
package digitBasic

import chisel3._
import chisel3.util._

// n: PE大小为nxn
// w: 输入数据的长度，本实验条件为163
class Array_processor(val w: Int, val n: Int) extends Module{
    val io = IO(new Bundle{
        val a_n = Input(UInt(n.W))
        val g_n = Input(UInt(n.W))
        val b_w = Input(UInt(w.W))
        val control_in = Input(UInt(1.W))
        val res_n = Output(UInt(n.W))
    })

    val replicate_times = (w+(n-1))/n
    val PE_nxns = Array.fill(replicate_times)(Module(new PE_nxn(n)).io)

    val a_reg = RegInit(VecInit(Seq.fill(replicate_times-1)(0.U(n.W))))
    val g_reg = RegInit(VecInit(Seq.fill(replicate_times-1)(0.U(n.W))))
    val b_wire = Wire(UInt((replicate_times*n).W))
    val res_reg = RegInit(VecInit(Seq.fill(replicate_times)(0.U((n-1).W)))) // res_reg只存本PE输出给左下方PE的数据，所以只设置n-1位，是上一个模块输出的n-2至0位
    a_reg(0) := io.a_n
    g_reg(0) := io.g_n
    b_wire := io.b_w
    for(i <- 1 until replicate_times-1) {
        a_reg(i) := a_reg(i-1)
        g_reg(i) := g_reg(i-1)
    }
    for(i <- 0 until replicate_times) {
        res_reg(i) := PE_nxns(i).t_out(n-2, 0) 
    }

    val res_out_temp_bool = Wire(Vec(n, Bool()))

    // 第一个PE_nxn模块的连接
    PE_nxns(0).a_n := io.a_n
    PE_nxns(0).g_n := io.g_n
    PE_nxns(0).t_ru := 0.U
    PE_nxns(0).t_ru_alloc := 0.U
    PE_nxns(0).control_in := io.control_in




    // 接下来第2至replicate_times PE_nxn模块的连接
    for(i <- 1 until replicate_times) {
        PE_nxns(i).a_n := a_reg(i-1)
        PE_nxns(i).g_n := g_reg(i-1)
        PE_nxns(i).t_ru := Cat(res_reg(i-1), PE_nxns(i-1).t_out(n-1))
        PE_nxns(i).t_ru_alloc := PE_nxns(i-1).t_out_alloc
        PE_nxns(i).control_in := PE_nxns(i-1).control_out 
    }

    // 可能现b的在补零已经自动完成了
    for(i <- 0 until replicate_times) {
        PE_nxns(i).b_n := b_wire(replicate_times*n-1-n*i, replicate_times*n-n*(i+1))
    }

    // b要单独提出来赋值是因为要进行补零
    // for(i <- 1 until replicate_times-1){
    //     PE_nxns(i).b_n := io.b_w(w-1-n*i, w-n*(i+1))
    // }
    // PE_nxns(replicate_times-1).b_n := io.b_w(w-1-n*(replicate_times-1), 0)

    // 输出
    // 最后一个周期，没有模块进行旁路的异或，因此要保留之前的值，输出之前再进行一下异或
    // PE nxn的最后输出中，最高位是不需要异或的，使用reg保留一个周期
    val out_highorder_reg = RegInit(0.U(1.W))
    out_highorder_reg := PE_nxns(replicate_times-1).t_out(n-1)
    
    res_out_temp_bool(n-1) := out_highorder_reg.asBool()
    for(i <- 0 until n-1) {
        res_out_temp_bool(i) := (res_reg(replicate_times-1)(i)^PE_nxns(replicate_times-1).t_out_alloc(i)).asBool()
        // res_reg: 其实是输出；PE_nxns.t_out_alloc: 下一周期的旁路
    }

    io.res_n := res_out_temp_bool.asUInt()

}

object Array_processor_inst extends App{
    chisel3.Driver.execute(args, () => new Array_processor(163, 8))
}