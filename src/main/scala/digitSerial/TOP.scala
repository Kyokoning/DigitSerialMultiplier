/*
* @Author: xnchen
* @Date:   2020-11-25 22:15:52
* @Last Modified by:   xnchen
* @Last Modified time: 2020-11-26 20:19:45
*/
package digitSerial

import chisel3._
import chisel3.util._

// parameter m 用于指定PE_line中含有几行, k指定累积计算几次
class PE_163_mxk_TOP(val m: Int, val k: Int) extends Module{
    val io = IO(new Bundle {
        val start = Input(Bool())
        val a_n = Input(UInt(163.W))
        val g_n = Input(UInt(163.W))
        val b_n = Input(UInt(163.W))
        val res = Output(UInt(163.W))
        val valid = Output(Bool())
    })

    val sIdel :: sStart :: sFinish :: Nil = Enum(3)
    val state = RegInit(sIdel)

    val a_in_reg = RegInit(0.U(163.W))
    val g_in_reg = RegInit(0.U(163.W))

    val b_in_reg = RegInit(0.U(m.W))
    val b_in_shift_reg = RegInit(0.U(163.W))

    val res_pre_reg = RegInit(0.U(163.W))
    val res_now_reg = RegInit(0.U(163.W))
    val res_out_reg = RegInit(0.U(163.W))

    val count = RegInit(0.U(8.W))

    // 创建并连接PE_line
    val PE_mrow_163col_module = Module(new PE_n_m(163, m))

    PE_mrow_163col_module.io.a_n := a_in_reg
    PE_mrow_163col_module.io.g_n := g_in_reg
    PE_mrow_163col_module.io.b_m := b_in_reg
    PE_mrow_163col_module.io.t_in_n := res_pre_reg
    res_now_reg := PE_mrow_163col_module.io.t_out_n


    switch (state) {
        is (sIdel) {
            when(io.start){
                count := 0.U
                res_pre_reg := 0.U
                res_out_reg := 0.U
                a_in_reg := io.a_n
                g_in_reg := io.g_n
                b_in_reg := io.b_n(m-1, 0)
                b_in_shift_reg := io.b_n
                state := sStart
            }
        }
        is (sStart) {
            when(count < k.U){
                b_in_reg := b_in_shift_reg(162, 162-m)
                b_in_shift_reg := b_in_shift_reg<<m.U
                res_pre_reg := res_out_reg
                count := count + 1.U
            }
            .otherwise {
                res_out_reg := res_now_reg
                state := sIdel
            }

        }
    }
    io.valid := (count===k.U)
    io.res := Mux(io.valid, res_now_reg, 0.U)
}