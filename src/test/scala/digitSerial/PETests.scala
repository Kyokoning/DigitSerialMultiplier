/*
* @Author: xnchen
* @Date:   2020-11-25 19:05:49
* @Last Modified by:   xnchen
* @Last Modified time: 2020-11-25 21:25:02
*/
package digitSerial

import chisel3.iotesters.PeekPokeTester
import chisel3._

class PETests(c: PE) extends PeekPokeTester(c) {
    for(i <- 0 until 10) {
        val a = rnd.nextInt(2)
        val b = rnd.nextInt(2)
        val g = rnd.nextInt(2)
        val t_ru = rnd.nextInt(2)
        val t_lu = rnd.nextInt(2)

        poke(c.io.a, a)
        poke(c.io.b, b)
        poke(c.io.g, g)
        poke(c.io.t_ru, t_ru)
        poke(c.io.t_lu, t_lu)
        step(1)
        expect(c.io.t_out, (t_lu&g)^(a&b)^t_ru)
    }
}

object PETests extends App{
    chisel3.iotesters.Driver.execute(args, () => new PE){
        c => new PETests(c)
    }
}
