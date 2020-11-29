/*
* @Author: xnchen
* @Date:   2020-11-26 13:50:35
* @Last Modified by:   xnchen
* @Last Modified time: 2020-11-26 21:31:23
*/

package digitSerial

import chisel3.iotesters.PeekPokeTester
import chisel3._

class TOPTests (c:PE_163_mxk_TOP) extends PeekPokeTester(c) {
    poke(c.io.a_n, "b0000011011111101010011001001011010101010100111000000001001010010000000100001100011001100101110100111111110011101110011100100011100000101001000001000001111110011010".U(163.W))
    poke(c.io.b_n, "b1110100111100000111111001110110111101001111000001111110011101101111010011110000011111100111011011110100111100000111111001110110111101001111000001111110011101101010".U(163.W))
    poke(c.io.g_n, "b1001000011010011011111111101100001000001101010001001100011110101000101100001011010111001000001000001000110100110000110101100011010001111011110001110110110111111100".U(163.W))
    poke(c.io.start, true)
    step(1)
    poke(c.io.start, false)
    poke(c.io.a_n, 0.U)
    poke(c.io.b_n, 0.U)
    poke(c.io.g_n, 0.U)
    step(c.k*2)
    peek(c.io.res)
    
}

// def readFromTxt(filePath: String) = {
//     import scala.io.Source
//     val source = Source.fromFile(filePath, "UTF-8")
//     val lines = source.getLines.toArray
//     source.close
// }

// def splitFile(array: Array[String]) = {
//     for(i <- 0 until array.length){
//         val test = array(i).trim.split(",")
//     }
// }
object TOPTests extends App{
    chisel3.iotesters.Driver.execute(
        args, () => new PE_163_mxk_TOP(1, 163)){
        c => new TOPTests(c)
    }
}