/*
* @Author: xnchen
* @Date:   2020-11-25 15:58:32
* @Last Modified by:   xnchen
* @Last Modified time: 2020-11-29 15:40:55
*/

package digitBasic

import chisel3._

class PE_3 extends Module{
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

class PE_2 extends Module{
    val io = IO(new Bundle{
        val a = Input(UInt(1.W))
        val b = Input(UInt(1.W))
        val g = Input(UInt(1.W))
        val t_lu = Input(UInt(1.W))
        val t_out = Output(UInt(1.W))
    })
    io.t_out := (io.t_lu & io.g) ^ (io.a & io.b)
}

class PE_4 extends Module{
    val io = IO(new Bundle{
        val a = Input(UInt(1.W))
        val b = Input(UInt(1.W))
        val g = Input(UInt(1.W))
        val t_lu = Input(UInt(1.W))
        val t_ru = Input(UInt(1.W))
        val t_ru_alloc = Input(UInt(1.W))
        val t_out = Output(UInt(1.W))
    })
    io.t_out := (io.t_lu & io.g) ^ (io.a & io.b) ^ io.t_ru ^ io.t_ru_alloc

}

