### Introduction

树状结构图：

    .
    ├── README.md
    ├── build.sbt
    ├── launcher.sh
    ├── src
    │   ├── main
    │   │   └── scala
    │   │       ├── digitBasic
    │   │       └── digitSerial
    │   └── test
    │       └── scala
    │           ├── digitBasic
    │           └── digitSerial
    └── test_run_dir
        ├── digitBasic
        │   ├── Array_processor.v
        │   ├── PE_down_line.v
        │   ├── PE_nxn.v
        │   └── PE_up_line.v
        └── digitSerial
            └── PE_163_mxk_TOP.v

### IO

#### digitBasic.Array_processor

```scala
class Array_processor(val w: Int, val n: Int) extends Module{
    val io = IO(new Bundle{
        val a_n = Input(UInt(n.W))
        val g_n = Input(UInt(n.W))
        val b_w = Input(UInt(w.W))
        val control_in = Input(UInt(1.W))
        val res_n = Output(UInt(n.W))
    })
```

|IO port name| digits | description|
|-|-|-|
|a_n|n|a的n位输入，n是PE_nxn模块的大小，a_n的输入随着脉动计算从a的高位向低位进发|
|g_n|n|同a_n|
|b_w|w|b的w位输入（实验中就是163）|
|control_in|1|有输入时置1|
|res_n|n|结果的n位输出，在a输入完之后，每回合输出n个，从高位向低位的顺序。最后一回合会补零|

