/*
* @Author: xnchen
* @Date:   2020-11-25 21:32:50
* @Last Modified by:   xnchen
* @Last Modified time: 2020-11-26 19:58:02
*/
package digitSerial

import chisel3._

// n行，m列。其中，n行的PE由PE_n_line定义
class PE_n_m(val n: Int, val m: Int) extends Module {
    val io = IO(new Bundle{
        val a_n = Input(UInt(n.W))
        val g_n = Input(UInt(n.W))
        val b_m = Input(UInt(m.W))
        val t_in_n = Input(UInt(n.W))
        val t_out_n = Output(UInt(n.W))
    })

    val PE_n_m = Array.fill(m)(Module(new PE_n_line(n)).io)

    PE_n_m(0).t_in_n := io.t_in_n 

    for(i <- 1 until m) {
        PE_n_m(i).t_in_n := PE_n_m(i-1).t_out_n
    }
    for(i <- 0 until m) {
        PE_n_m(i).a_n := io.a_n
        PE_n_m(i).g_n := io.g_n
        PE_n_m(i).b_1 := io.b_m(i)
    }

    io.t_out_n := PE_n_m(m-1).t_out_n
}