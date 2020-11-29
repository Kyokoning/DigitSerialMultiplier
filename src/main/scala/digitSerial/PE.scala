/*
* @Author: xnchen
* @Date:   2020-11-25 16:20:43
* @Last Modified by:   xnchen
* @Last Modified time: 2020-11-25 21:16:36
*/

package digitSerial

import chisel3._

class PE extends Module {
    val io = IO(new Bundle{
        val a = Input(UInt(1.W))
        val b = Input(UInt(1.W))
        val g = Input(UInt(1.W))
        val t_ru = Input(UInt(1.W))
        val t_lu = Input(UInt(1.W))
        val t_out = Output(UInt(1.W))
    })

    io.t_out := (io.t_lu & io.g) ^ (io.a & io.b) ^ io.t_ru
}

object PE extends App {
    chisel3.Driver.execute(args, ()=> new PE)
}