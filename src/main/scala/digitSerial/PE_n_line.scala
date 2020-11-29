/*
* @Author: xnchen
* @Date:   2020-11-25 18:36:10
* @Last Modified by:   xnchen
* @Last Modified time: 2020-11-26 20:12:47
*/

package digitSerial

import chisel3._

class PE_n_line(n: Int) extends Module {
    val io = IO(new Bundle{
        val t_in_n = Input(UInt(n.W))
        val a_n = Input(UInt(n.W))
        val g_n = Input(UInt(n.W))
        val b_1 = Input(UInt(1.W))
        val t_out_n = Output(UInt(n.W))
    })

    val PE_n = Array.fill(n)(Module(new PE()).io)

    val t_out_bool = Wire(Vec(n, Bool()))


    for(j <- 0 until n) {
        PE_n(j).a := io.a_n(j)
        PE_n(j).b := io.b_1
        PE_n(j).g := io.g_n(j)
        PE_n(j).t_ru := io.t_in_n(n-2, 0)
        PE_n(j).t_lu := io.t_in_n(n-1)
        t_out_bool(j) := PE_n(j).t_out.asBool()
    }

    io.t_out_n := t_out_bool.asUInt()

}