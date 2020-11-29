/*
* @Author: xnchen
* @Date:   2020-11-27 17:19:26
* @Last Modified by:   xnchen
* @Last Modified time: 2020-11-29 15:41:55
*/
package digitBasic

import chisel3._

class PE_up_line(n: Int) extends Module{
    val io = IO(new Bundle{
        val a_n = Input(UInt(n.W))
        val g_n = Input(UInt(n.W))
        val b_1 = Input(UInt(1.W))
        val t_ru = Input(UInt(n.W))
        val t_ru_alloc = Input(UInt((n-1).W))
        val t_lu = Input(UInt(1.W))
        val t_out = Output(UInt(n.W))
    })

    val PE_4_combine = Array.fill(n-1)(Module(new PE_4()).io)
    val PE_3_single = Module(new PE_3())

    val t_out_temp_bool = Wire(Vec(n, Bool())) 

    // 给上方总共n-1个PE4连线,i<-0 until n-1的方向是从右向左
    for (i <- 0 until n-1) {
        PE_4_combine(i).a := io.a_n(i+1)
        PE_4_combine(i).b := io.b_1
        PE_4_combine(i).g := io.g_n(i+1)
        PE_4_combine(i).t_lu := io.t_lu
        PE_4_combine(i).t_ru := io.t_ru(i+1)
        PE_4_combine(i).t_ru_alloc := io.t_ru_alloc(i)
        t_out_temp_bool(i+1) := PE_4_combine(i).t_out.asBool()
    }
    
    // 给右上方的一个PE3连线
    PE_3_single.io.a := io.a_n(0)
    PE_3_single.io.b := io.b_1
    PE_3_single.io.g := io.g_n(0)
    PE_3_single.io.t_lu := io.t_lu
    PE_3_single.io.t_ru := io.t_ru(0)
    t_out_temp_bool(0) := PE_3_single.io.t_out.asBool()

    io.t_out := t_out_temp_bool.asUInt

}

class PE_down_line(n: Int) extends Module{
    val io = IO(new Bundle {
        val a_n = Input(UInt(n.W))
        val g_n = Input(UInt(n.W))
        val b_1 = Input(UInt(1.W))
        val t_ru = Input(UInt((n-1).W))
        val t_lu = Input(UInt(1.W))
        val t_out = Output(UInt(n.W))
    })

    val PE_3_combine = Array.fill(n-1)(Module(new PE_3()).io)
    val PE_2_single = Module(new PE_2())

    val t_out_temp_bool = Wire(Vec(n, Bool()))

    // 给每一行左边总共n-1个PE3连接
    for (i <- 0 until n-1) {
        PE_3_combine(i).a := io.a_n(i+1)
        PE_3_combine(i).b := io.b_1
        PE_3_combine(i).g := io.g_n(i+1)
        PE_3_combine(i).t_ru := io.t_ru(i)
        PE_3_combine(i).t_lu := io.t_lu
        t_out_temp_bool(i+1) := PE_3_combine(i).t_out.asBool()
    }

    // 给每一行右边的PE2连接
    PE_2_single.io.a := io.a_n(0)
    PE_2_single.io.b := io.b_1
    PE_2_single.io.g := io.g_n(0)
    PE_2_single.io.t_lu := io.t_lu
    t_out_temp_bool(0) := PE_2_single.io.t_out.asBool()

    io.t_out := t_out_temp_bool.asUInt
}

object PE_lines_inst extends App{
    chisel3.Driver.execute(args, () => new PE_up_line(163))
    chisel3.Driver.execute(args, () => new PE_down_line(163))
}