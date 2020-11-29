module PE_4(
  input   io_a,
  input   io_b,
  input   io_g,
  input   io_t_lu,
  input   io_t_ru,
  input   io_t_ru_alloc,
  output  io_t_out
);
  wire  _T = io_t_lu & io_g; // @[PE.scala 45:26]
  wire  _T_1 = io_a & io_b; // @[PE.scala 45:42]
  wire  _T_2 = _T ^ _T_1; // @[PE.scala 45:34]
  wire  _T_3 = _T_2 ^ io_t_ru; // @[PE.scala 45:50]
  assign io_t_out = _T_3 ^ io_t_ru_alloc; // @[PE.scala 45:14]
endmodule
module PE_3(
  input   io_a,
  input   io_b,
  input   io_g,
  input   io_t_ru,
  input   io_t_lu,
  output  io_t_out
);
  wire  _T = io_t_lu & io_g; // @[PE.scala 21:26]
  wire  _T_1 = io_a & io_b; // @[PE.scala 21:42]
  wire  _T_2 = _T ^ _T_1; // @[PE.scala 21:34]
  assign io_t_out = _T_2 ^ io_t_ru; // @[PE.scala 21:14]
endmodule
module PE_up_line(
  input  [31:0] io_a_n,
  input  [31:0] io_g_n,
  input         io_b_1,
  input  [31:0] io_t_ru,
  input  [30:0] io_t_ru_alloc,
  input         io_t_lu,
  output [31:0] io_t_out
);
  wire  PE_4_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_1_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_1_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_1_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_1_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_1_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_1_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_1_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_2_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_2_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_2_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_2_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_2_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_2_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_2_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_3_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_3_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_3_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_3_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_3_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_3_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_3_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_4_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_4_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_4_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_4_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_4_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_4_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_4_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_5_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_5_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_5_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_5_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_5_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_5_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_5_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_6_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_6_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_6_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_6_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_6_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_6_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_6_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_7_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_7_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_7_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_7_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_7_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_7_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_7_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_8_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_8_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_8_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_8_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_8_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_8_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_8_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_9_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_9_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_9_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_9_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_9_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_9_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_9_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_10_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_10_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_10_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_10_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_10_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_10_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_10_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_11_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_11_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_11_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_11_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_11_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_11_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_11_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_12_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_12_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_12_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_12_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_12_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_12_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_12_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_13_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_13_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_13_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_13_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_13_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_13_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_13_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_14_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_14_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_14_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_14_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_14_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_14_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_14_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_15_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_15_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_15_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_15_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_15_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_15_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_15_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_16_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_16_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_16_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_16_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_16_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_16_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_16_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_17_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_17_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_17_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_17_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_17_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_17_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_17_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_18_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_18_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_18_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_18_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_18_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_18_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_18_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_19_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_19_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_19_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_19_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_19_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_19_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_19_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_20_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_20_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_20_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_20_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_20_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_20_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_20_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_21_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_21_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_21_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_21_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_21_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_21_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_21_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_22_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_22_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_22_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_22_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_22_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_22_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_22_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_23_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_23_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_23_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_23_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_23_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_23_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_23_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_24_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_24_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_24_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_24_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_24_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_24_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_24_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_25_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_25_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_25_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_25_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_25_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_25_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_25_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_26_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_26_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_26_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_26_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_26_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_26_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_26_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_27_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_27_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_27_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_27_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_27_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_27_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_27_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_28_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_28_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_28_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_28_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_28_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_28_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_28_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_29_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_29_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_29_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_29_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_29_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_29_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_29_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_4_30_io_a; // @[PE_combile_module.scala 22:46]
  wire  PE_4_30_io_b; // @[PE_combile_module.scala 22:46]
  wire  PE_4_30_io_g; // @[PE_combile_module.scala 22:46]
  wire  PE_4_30_io_t_lu; // @[PE_combile_module.scala 22:46]
  wire  PE_4_30_io_t_ru; // @[PE_combile_module.scala 22:46]
  wire  PE_4_30_io_t_ru_alloc; // @[PE_combile_module.scala 22:46]
  wire  PE_4_30_io_t_out; // @[PE_combile_module.scala 22:46]
  wire  PE_3_single_io_a; // @[PE_combile_module.scala 23:29]
  wire  PE_3_single_io_b; // @[PE_combile_module.scala 23:29]
  wire  PE_3_single_io_g; // @[PE_combile_module.scala 23:29]
  wire  PE_3_single_io_t_ru; // @[PE_combile_module.scala 23:29]
  wire  PE_3_single_io_t_lu; // @[PE_combile_module.scala 23:29]
  wire  PE_3_single_io_t_out; // @[PE_combile_module.scala 23:29]
  wire  t_out_temp_bool_1 = PE_4_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_2 = PE_4_1_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_3 = PE_4_2_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_4 = PE_4_3_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_5 = PE_4_4_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_6 = PE_4_5_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_7 = PE_4_6_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_8 = PE_4_7_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_9 = PE_4_8_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_10 = PE_4_9_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_11 = PE_4_10_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_12 = PE_4_11_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_13 = PE_4_12_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_14 = PE_4_13_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_15 = PE_4_14_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_16 = PE_4_15_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_17 = PE_4_16_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_18 = PE_4_17_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_19 = PE_4_18_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_20 = PE_4_19_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_21 = PE_4_20_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_22 = PE_4_21_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_23 = PE_4_22_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_24 = PE_4_23_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_25 = PE_4_24_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_26 = PE_4_25_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_27 = PE_4_26_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_28 = PE_4_27_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_29 = PE_4_28_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_30 = PE_4_29_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_31 = PE_4_30_io_t_out; // @[PE_combile_module.scala 35:61]
  wire  t_out_temp_bool_0 = PE_3_single_io_t_out; // @[PE_combile_module.scala 44:54]
  wire [7:0] _T_165 = {t_out_temp_bool_7,t_out_temp_bool_6,t_out_temp_bool_5,t_out_temp_bool_4,t_out_temp_bool_3,t_out_temp_bool_2,t_out_temp_bool_1,t_out_temp_bool_0}; // @[PE_combile_module.scala 46:33]
  wire [15:0] _T_173 = {t_out_temp_bool_15,t_out_temp_bool_14,t_out_temp_bool_13,t_out_temp_bool_12,t_out_temp_bool_11,t_out_temp_bool_10,t_out_temp_bool_9,t_out_temp_bool_8,_T_165}; // @[PE_combile_module.scala 46:33]
  wire [7:0] _T_180 = {t_out_temp_bool_23,t_out_temp_bool_22,t_out_temp_bool_21,t_out_temp_bool_20,t_out_temp_bool_19,t_out_temp_bool_18,t_out_temp_bool_17,t_out_temp_bool_16}; // @[PE_combile_module.scala 46:33]
  wire [15:0] _T_188 = {t_out_temp_bool_31,t_out_temp_bool_30,t_out_temp_bool_29,t_out_temp_bool_28,t_out_temp_bool_27,t_out_temp_bool_26,t_out_temp_bool_25,t_out_temp_bool_24,_T_180}; // @[PE_combile_module.scala 46:33]
  PE_4 PE_4 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_io_a),
    .io_b(PE_4_io_b),
    .io_g(PE_4_io_g),
    .io_t_lu(PE_4_io_t_lu),
    .io_t_ru(PE_4_io_t_ru),
    .io_t_ru_alloc(PE_4_io_t_ru_alloc),
    .io_t_out(PE_4_io_t_out)
  );
  PE_4 PE_4_1 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_1_io_a),
    .io_b(PE_4_1_io_b),
    .io_g(PE_4_1_io_g),
    .io_t_lu(PE_4_1_io_t_lu),
    .io_t_ru(PE_4_1_io_t_ru),
    .io_t_ru_alloc(PE_4_1_io_t_ru_alloc),
    .io_t_out(PE_4_1_io_t_out)
  );
  PE_4 PE_4_2 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_2_io_a),
    .io_b(PE_4_2_io_b),
    .io_g(PE_4_2_io_g),
    .io_t_lu(PE_4_2_io_t_lu),
    .io_t_ru(PE_4_2_io_t_ru),
    .io_t_ru_alloc(PE_4_2_io_t_ru_alloc),
    .io_t_out(PE_4_2_io_t_out)
  );
  PE_4 PE_4_3 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_3_io_a),
    .io_b(PE_4_3_io_b),
    .io_g(PE_4_3_io_g),
    .io_t_lu(PE_4_3_io_t_lu),
    .io_t_ru(PE_4_3_io_t_ru),
    .io_t_ru_alloc(PE_4_3_io_t_ru_alloc),
    .io_t_out(PE_4_3_io_t_out)
  );
  PE_4 PE_4_4 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_4_io_a),
    .io_b(PE_4_4_io_b),
    .io_g(PE_4_4_io_g),
    .io_t_lu(PE_4_4_io_t_lu),
    .io_t_ru(PE_4_4_io_t_ru),
    .io_t_ru_alloc(PE_4_4_io_t_ru_alloc),
    .io_t_out(PE_4_4_io_t_out)
  );
  PE_4 PE_4_5 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_5_io_a),
    .io_b(PE_4_5_io_b),
    .io_g(PE_4_5_io_g),
    .io_t_lu(PE_4_5_io_t_lu),
    .io_t_ru(PE_4_5_io_t_ru),
    .io_t_ru_alloc(PE_4_5_io_t_ru_alloc),
    .io_t_out(PE_4_5_io_t_out)
  );
  PE_4 PE_4_6 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_6_io_a),
    .io_b(PE_4_6_io_b),
    .io_g(PE_4_6_io_g),
    .io_t_lu(PE_4_6_io_t_lu),
    .io_t_ru(PE_4_6_io_t_ru),
    .io_t_ru_alloc(PE_4_6_io_t_ru_alloc),
    .io_t_out(PE_4_6_io_t_out)
  );
  PE_4 PE_4_7 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_7_io_a),
    .io_b(PE_4_7_io_b),
    .io_g(PE_4_7_io_g),
    .io_t_lu(PE_4_7_io_t_lu),
    .io_t_ru(PE_4_7_io_t_ru),
    .io_t_ru_alloc(PE_4_7_io_t_ru_alloc),
    .io_t_out(PE_4_7_io_t_out)
  );
  PE_4 PE_4_8 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_8_io_a),
    .io_b(PE_4_8_io_b),
    .io_g(PE_4_8_io_g),
    .io_t_lu(PE_4_8_io_t_lu),
    .io_t_ru(PE_4_8_io_t_ru),
    .io_t_ru_alloc(PE_4_8_io_t_ru_alloc),
    .io_t_out(PE_4_8_io_t_out)
  );
  PE_4 PE_4_9 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_9_io_a),
    .io_b(PE_4_9_io_b),
    .io_g(PE_4_9_io_g),
    .io_t_lu(PE_4_9_io_t_lu),
    .io_t_ru(PE_4_9_io_t_ru),
    .io_t_ru_alloc(PE_4_9_io_t_ru_alloc),
    .io_t_out(PE_4_9_io_t_out)
  );
  PE_4 PE_4_10 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_10_io_a),
    .io_b(PE_4_10_io_b),
    .io_g(PE_4_10_io_g),
    .io_t_lu(PE_4_10_io_t_lu),
    .io_t_ru(PE_4_10_io_t_ru),
    .io_t_ru_alloc(PE_4_10_io_t_ru_alloc),
    .io_t_out(PE_4_10_io_t_out)
  );
  PE_4 PE_4_11 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_11_io_a),
    .io_b(PE_4_11_io_b),
    .io_g(PE_4_11_io_g),
    .io_t_lu(PE_4_11_io_t_lu),
    .io_t_ru(PE_4_11_io_t_ru),
    .io_t_ru_alloc(PE_4_11_io_t_ru_alloc),
    .io_t_out(PE_4_11_io_t_out)
  );
  PE_4 PE_4_12 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_12_io_a),
    .io_b(PE_4_12_io_b),
    .io_g(PE_4_12_io_g),
    .io_t_lu(PE_4_12_io_t_lu),
    .io_t_ru(PE_4_12_io_t_ru),
    .io_t_ru_alloc(PE_4_12_io_t_ru_alloc),
    .io_t_out(PE_4_12_io_t_out)
  );
  PE_4 PE_4_13 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_13_io_a),
    .io_b(PE_4_13_io_b),
    .io_g(PE_4_13_io_g),
    .io_t_lu(PE_4_13_io_t_lu),
    .io_t_ru(PE_4_13_io_t_ru),
    .io_t_ru_alloc(PE_4_13_io_t_ru_alloc),
    .io_t_out(PE_4_13_io_t_out)
  );
  PE_4 PE_4_14 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_14_io_a),
    .io_b(PE_4_14_io_b),
    .io_g(PE_4_14_io_g),
    .io_t_lu(PE_4_14_io_t_lu),
    .io_t_ru(PE_4_14_io_t_ru),
    .io_t_ru_alloc(PE_4_14_io_t_ru_alloc),
    .io_t_out(PE_4_14_io_t_out)
  );
  PE_4 PE_4_15 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_15_io_a),
    .io_b(PE_4_15_io_b),
    .io_g(PE_4_15_io_g),
    .io_t_lu(PE_4_15_io_t_lu),
    .io_t_ru(PE_4_15_io_t_ru),
    .io_t_ru_alloc(PE_4_15_io_t_ru_alloc),
    .io_t_out(PE_4_15_io_t_out)
  );
  PE_4 PE_4_16 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_16_io_a),
    .io_b(PE_4_16_io_b),
    .io_g(PE_4_16_io_g),
    .io_t_lu(PE_4_16_io_t_lu),
    .io_t_ru(PE_4_16_io_t_ru),
    .io_t_ru_alloc(PE_4_16_io_t_ru_alloc),
    .io_t_out(PE_4_16_io_t_out)
  );
  PE_4 PE_4_17 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_17_io_a),
    .io_b(PE_4_17_io_b),
    .io_g(PE_4_17_io_g),
    .io_t_lu(PE_4_17_io_t_lu),
    .io_t_ru(PE_4_17_io_t_ru),
    .io_t_ru_alloc(PE_4_17_io_t_ru_alloc),
    .io_t_out(PE_4_17_io_t_out)
  );
  PE_4 PE_4_18 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_18_io_a),
    .io_b(PE_4_18_io_b),
    .io_g(PE_4_18_io_g),
    .io_t_lu(PE_4_18_io_t_lu),
    .io_t_ru(PE_4_18_io_t_ru),
    .io_t_ru_alloc(PE_4_18_io_t_ru_alloc),
    .io_t_out(PE_4_18_io_t_out)
  );
  PE_4 PE_4_19 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_19_io_a),
    .io_b(PE_4_19_io_b),
    .io_g(PE_4_19_io_g),
    .io_t_lu(PE_4_19_io_t_lu),
    .io_t_ru(PE_4_19_io_t_ru),
    .io_t_ru_alloc(PE_4_19_io_t_ru_alloc),
    .io_t_out(PE_4_19_io_t_out)
  );
  PE_4 PE_4_20 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_20_io_a),
    .io_b(PE_4_20_io_b),
    .io_g(PE_4_20_io_g),
    .io_t_lu(PE_4_20_io_t_lu),
    .io_t_ru(PE_4_20_io_t_ru),
    .io_t_ru_alloc(PE_4_20_io_t_ru_alloc),
    .io_t_out(PE_4_20_io_t_out)
  );
  PE_4 PE_4_21 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_21_io_a),
    .io_b(PE_4_21_io_b),
    .io_g(PE_4_21_io_g),
    .io_t_lu(PE_4_21_io_t_lu),
    .io_t_ru(PE_4_21_io_t_ru),
    .io_t_ru_alloc(PE_4_21_io_t_ru_alloc),
    .io_t_out(PE_4_21_io_t_out)
  );
  PE_4 PE_4_22 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_22_io_a),
    .io_b(PE_4_22_io_b),
    .io_g(PE_4_22_io_g),
    .io_t_lu(PE_4_22_io_t_lu),
    .io_t_ru(PE_4_22_io_t_ru),
    .io_t_ru_alloc(PE_4_22_io_t_ru_alloc),
    .io_t_out(PE_4_22_io_t_out)
  );
  PE_4 PE_4_23 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_23_io_a),
    .io_b(PE_4_23_io_b),
    .io_g(PE_4_23_io_g),
    .io_t_lu(PE_4_23_io_t_lu),
    .io_t_ru(PE_4_23_io_t_ru),
    .io_t_ru_alloc(PE_4_23_io_t_ru_alloc),
    .io_t_out(PE_4_23_io_t_out)
  );
  PE_4 PE_4_24 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_24_io_a),
    .io_b(PE_4_24_io_b),
    .io_g(PE_4_24_io_g),
    .io_t_lu(PE_4_24_io_t_lu),
    .io_t_ru(PE_4_24_io_t_ru),
    .io_t_ru_alloc(PE_4_24_io_t_ru_alloc),
    .io_t_out(PE_4_24_io_t_out)
  );
  PE_4 PE_4_25 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_25_io_a),
    .io_b(PE_4_25_io_b),
    .io_g(PE_4_25_io_g),
    .io_t_lu(PE_4_25_io_t_lu),
    .io_t_ru(PE_4_25_io_t_ru),
    .io_t_ru_alloc(PE_4_25_io_t_ru_alloc),
    .io_t_out(PE_4_25_io_t_out)
  );
  PE_4 PE_4_26 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_26_io_a),
    .io_b(PE_4_26_io_b),
    .io_g(PE_4_26_io_g),
    .io_t_lu(PE_4_26_io_t_lu),
    .io_t_ru(PE_4_26_io_t_ru),
    .io_t_ru_alloc(PE_4_26_io_t_ru_alloc),
    .io_t_out(PE_4_26_io_t_out)
  );
  PE_4 PE_4_27 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_27_io_a),
    .io_b(PE_4_27_io_b),
    .io_g(PE_4_27_io_g),
    .io_t_lu(PE_4_27_io_t_lu),
    .io_t_ru(PE_4_27_io_t_ru),
    .io_t_ru_alloc(PE_4_27_io_t_ru_alloc),
    .io_t_out(PE_4_27_io_t_out)
  );
  PE_4 PE_4_28 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_28_io_a),
    .io_b(PE_4_28_io_b),
    .io_g(PE_4_28_io_g),
    .io_t_lu(PE_4_28_io_t_lu),
    .io_t_ru(PE_4_28_io_t_ru),
    .io_t_ru_alloc(PE_4_28_io_t_ru_alloc),
    .io_t_out(PE_4_28_io_t_out)
  );
  PE_4 PE_4_29 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_29_io_a),
    .io_b(PE_4_29_io_b),
    .io_g(PE_4_29_io_g),
    .io_t_lu(PE_4_29_io_t_lu),
    .io_t_ru(PE_4_29_io_t_ru),
    .io_t_ru_alloc(PE_4_29_io_t_ru_alloc),
    .io_t_out(PE_4_29_io_t_out)
  );
  PE_4 PE_4_30 ( // @[PE_combile_module.scala 22:46]
    .io_a(PE_4_30_io_a),
    .io_b(PE_4_30_io_b),
    .io_g(PE_4_30_io_g),
    .io_t_lu(PE_4_30_io_t_lu),
    .io_t_ru(PE_4_30_io_t_ru),
    .io_t_ru_alloc(PE_4_30_io_t_ru_alloc),
    .io_t_out(PE_4_30_io_t_out)
  );
  PE_3 PE_3_single ( // @[PE_combile_module.scala 23:29]
    .io_a(PE_3_single_io_a),
    .io_b(PE_3_single_io_b),
    .io_g(PE_3_single_io_g),
    .io_t_ru(PE_3_single_io_t_ru),
    .io_t_lu(PE_3_single_io_t_lu),
    .io_t_out(PE_3_single_io_t_out)
  );
  assign io_t_out = {_T_188,_T_173}; // @[PE_combile_module.scala 46:14]
  assign PE_4_io_a = io_a_n[1]; // @[PE_combile_module.scala 29:27]
  assign PE_4_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_io_g = io_g_n[1]; // @[PE_combile_module.scala 31:27]
  assign PE_4_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_io_t_ru = io_t_ru[1]; // @[PE_combile_module.scala 33:30]
  assign PE_4_io_t_ru_alloc = io_t_ru_alloc[0]; // @[PE_combile_module.scala 34:36]
  assign PE_4_1_io_a = io_a_n[2]; // @[PE_combile_module.scala 29:27]
  assign PE_4_1_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_1_io_g = io_g_n[2]; // @[PE_combile_module.scala 31:27]
  assign PE_4_1_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_1_io_t_ru = io_t_ru[2]; // @[PE_combile_module.scala 33:30]
  assign PE_4_1_io_t_ru_alloc = io_t_ru_alloc[1]; // @[PE_combile_module.scala 34:36]
  assign PE_4_2_io_a = io_a_n[3]; // @[PE_combile_module.scala 29:27]
  assign PE_4_2_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_2_io_g = io_g_n[3]; // @[PE_combile_module.scala 31:27]
  assign PE_4_2_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_2_io_t_ru = io_t_ru[3]; // @[PE_combile_module.scala 33:30]
  assign PE_4_2_io_t_ru_alloc = io_t_ru_alloc[2]; // @[PE_combile_module.scala 34:36]
  assign PE_4_3_io_a = io_a_n[4]; // @[PE_combile_module.scala 29:27]
  assign PE_4_3_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_3_io_g = io_g_n[4]; // @[PE_combile_module.scala 31:27]
  assign PE_4_3_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_3_io_t_ru = io_t_ru[4]; // @[PE_combile_module.scala 33:30]
  assign PE_4_3_io_t_ru_alloc = io_t_ru_alloc[3]; // @[PE_combile_module.scala 34:36]
  assign PE_4_4_io_a = io_a_n[5]; // @[PE_combile_module.scala 29:27]
  assign PE_4_4_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_4_io_g = io_g_n[5]; // @[PE_combile_module.scala 31:27]
  assign PE_4_4_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_4_io_t_ru = io_t_ru[5]; // @[PE_combile_module.scala 33:30]
  assign PE_4_4_io_t_ru_alloc = io_t_ru_alloc[4]; // @[PE_combile_module.scala 34:36]
  assign PE_4_5_io_a = io_a_n[6]; // @[PE_combile_module.scala 29:27]
  assign PE_4_5_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_5_io_g = io_g_n[6]; // @[PE_combile_module.scala 31:27]
  assign PE_4_5_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_5_io_t_ru = io_t_ru[6]; // @[PE_combile_module.scala 33:30]
  assign PE_4_5_io_t_ru_alloc = io_t_ru_alloc[5]; // @[PE_combile_module.scala 34:36]
  assign PE_4_6_io_a = io_a_n[7]; // @[PE_combile_module.scala 29:27]
  assign PE_4_6_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_6_io_g = io_g_n[7]; // @[PE_combile_module.scala 31:27]
  assign PE_4_6_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_6_io_t_ru = io_t_ru[7]; // @[PE_combile_module.scala 33:30]
  assign PE_4_6_io_t_ru_alloc = io_t_ru_alloc[6]; // @[PE_combile_module.scala 34:36]
  assign PE_4_7_io_a = io_a_n[8]; // @[PE_combile_module.scala 29:27]
  assign PE_4_7_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_7_io_g = io_g_n[8]; // @[PE_combile_module.scala 31:27]
  assign PE_4_7_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_7_io_t_ru = io_t_ru[8]; // @[PE_combile_module.scala 33:30]
  assign PE_4_7_io_t_ru_alloc = io_t_ru_alloc[7]; // @[PE_combile_module.scala 34:36]
  assign PE_4_8_io_a = io_a_n[9]; // @[PE_combile_module.scala 29:27]
  assign PE_4_8_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_8_io_g = io_g_n[9]; // @[PE_combile_module.scala 31:27]
  assign PE_4_8_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_8_io_t_ru = io_t_ru[9]; // @[PE_combile_module.scala 33:30]
  assign PE_4_8_io_t_ru_alloc = io_t_ru_alloc[8]; // @[PE_combile_module.scala 34:36]
  assign PE_4_9_io_a = io_a_n[10]; // @[PE_combile_module.scala 29:27]
  assign PE_4_9_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_9_io_g = io_g_n[10]; // @[PE_combile_module.scala 31:27]
  assign PE_4_9_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_9_io_t_ru = io_t_ru[10]; // @[PE_combile_module.scala 33:30]
  assign PE_4_9_io_t_ru_alloc = io_t_ru_alloc[9]; // @[PE_combile_module.scala 34:36]
  assign PE_4_10_io_a = io_a_n[11]; // @[PE_combile_module.scala 29:27]
  assign PE_4_10_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_10_io_g = io_g_n[11]; // @[PE_combile_module.scala 31:27]
  assign PE_4_10_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_10_io_t_ru = io_t_ru[11]; // @[PE_combile_module.scala 33:30]
  assign PE_4_10_io_t_ru_alloc = io_t_ru_alloc[10]; // @[PE_combile_module.scala 34:36]
  assign PE_4_11_io_a = io_a_n[12]; // @[PE_combile_module.scala 29:27]
  assign PE_4_11_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_11_io_g = io_g_n[12]; // @[PE_combile_module.scala 31:27]
  assign PE_4_11_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_11_io_t_ru = io_t_ru[12]; // @[PE_combile_module.scala 33:30]
  assign PE_4_11_io_t_ru_alloc = io_t_ru_alloc[11]; // @[PE_combile_module.scala 34:36]
  assign PE_4_12_io_a = io_a_n[13]; // @[PE_combile_module.scala 29:27]
  assign PE_4_12_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_12_io_g = io_g_n[13]; // @[PE_combile_module.scala 31:27]
  assign PE_4_12_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_12_io_t_ru = io_t_ru[13]; // @[PE_combile_module.scala 33:30]
  assign PE_4_12_io_t_ru_alloc = io_t_ru_alloc[12]; // @[PE_combile_module.scala 34:36]
  assign PE_4_13_io_a = io_a_n[14]; // @[PE_combile_module.scala 29:27]
  assign PE_4_13_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_13_io_g = io_g_n[14]; // @[PE_combile_module.scala 31:27]
  assign PE_4_13_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_13_io_t_ru = io_t_ru[14]; // @[PE_combile_module.scala 33:30]
  assign PE_4_13_io_t_ru_alloc = io_t_ru_alloc[13]; // @[PE_combile_module.scala 34:36]
  assign PE_4_14_io_a = io_a_n[15]; // @[PE_combile_module.scala 29:27]
  assign PE_4_14_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_14_io_g = io_g_n[15]; // @[PE_combile_module.scala 31:27]
  assign PE_4_14_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_14_io_t_ru = io_t_ru[15]; // @[PE_combile_module.scala 33:30]
  assign PE_4_14_io_t_ru_alloc = io_t_ru_alloc[14]; // @[PE_combile_module.scala 34:36]
  assign PE_4_15_io_a = io_a_n[16]; // @[PE_combile_module.scala 29:27]
  assign PE_4_15_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_15_io_g = io_g_n[16]; // @[PE_combile_module.scala 31:27]
  assign PE_4_15_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_15_io_t_ru = io_t_ru[16]; // @[PE_combile_module.scala 33:30]
  assign PE_4_15_io_t_ru_alloc = io_t_ru_alloc[15]; // @[PE_combile_module.scala 34:36]
  assign PE_4_16_io_a = io_a_n[17]; // @[PE_combile_module.scala 29:27]
  assign PE_4_16_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_16_io_g = io_g_n[17]; // @[PE_combile_module.scala 31:27]
  assign PE_4_16_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_16_io_t_ru = io_t_ru[17]; // @[PE_combile_module.scala 33:30]
  assign PE_4_16_io_t_ru_alloc = io_t_ru_alloc[16]; // @[PE_combile_module.scala 34:36]
  assign PE_4_17_io_a = io_a_n[18]; // @[PE_combile_module.scala 29:27]
  assign PE_4_17_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_17_io_g = io_g_n[18]; // @[PE_combile_module.scala 31:27]
  assign PE_4_17_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_17_io_t_ru = io_t_ru[18]; // @[PE_combile_module.scala 33:30]
  assign PE_4_17_io_t_ru_alloc = io_t_ru_alloc[17]; // @[PE_combile_module.scala 34:36]
  assign PE_4_18_io_a = io_a_n[19]; // @[PE_combile_module.scala 29:27]
  assign PE_4_18_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_18_io_g = io_g_n[19]; // @[PE_combile_module.scala 31:27]
  assign PE_4_18_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_18_io_t_ru = io_t_ru[19]; // @[PE_combile_module.scala 33:30]
  assign PE_4_18_io_t_ru_alloc = io_t_ru_alloc[18]; // @[PE_combile_module.scala 34:36]
  assign PE_4_19_io_a = io_a_n[20]; // @[PE_combile_module.scala 29:27]
  assign PE_4_19_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_19_io_g = io_g_n[20]; // @[PE_combile_module.scala 31:27]
  assign PE_4_19_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_19_io_t_ru = io_t_ru[20]; // @[PE_combile_module.scala 33:30]
  assign PE_4_19_io_t_ru_alloc = io_t_ru_alloc[19]; // @[PE_combile_module.scala 34:36]
  assign PE_4_20_io_a = io_a_n[21]; // @[PE_combile_module.scala 29:27]
  assign PE_4_20_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_20_io_g = io_g_n[21]; // @[PE_combile_module.scala 31:27]
  assign PE_4_20_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_20_io_t_ru = io_t_ru[21]; // @[PE_combile_module.scala 33:30]
  assign PE_4_20_io_t_ru_alloc = io_t_ru_alloc[20]; // @[PE_combile_module.scala 34:36]
  assign PE_4_21_io_a = io_a_n[22]; // @[PE_combile_module.scala 29:27]
  assign PE_4_21_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_21_io_g = io_g_n[22]; // @[PE_combile_module.scala 31:27]
  assign PE_4_21_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_21_io_t_ru = io_t_ru[22]; // @[PE_combile_module.scala 33:30]
  assign PE_4_21_io_t_ru_alloc = io_t_ru_alloc[21]; // @[PE_combile_module.scala 34:36]
  assign PE_4_22_io_a = io_a_n[23]; // @[PE_combile_module.scala 29:27]
  assign PE_4_22_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_22_io_g = io_g_n[23]; // @[PE_combile_module.scala 31:27]
  assign PE_4_22_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_22_io_t_ru = io_t_ru[23]; // @[PE_combile_module.scala 33:30]
  assign PE_4_22_io_t_ru_alloc = io_t_ru_alloc[22]; // @[PE_combile_module.scala 34:36]
  assign PE_4_23_io_a = io_a_n[24]; // @[PE_combile_module.scala 29:27]
  assign PE_4_23_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_23_io_g = io_g_n[24]; // @[PE_combile_module.scala 31:27]
  assign PE_4_23_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_23_io_t_ru = io_t_ru[24]; // @[PE_combile_module.scala 33:30]
  assign PE_4_23_io_t_ru_alloc = io_t_ru_alloc[23]; // @[PE_combile_module.scala 34:36]
  assign PE_4_24_io_a = io_a_n[25]; // @[PE_combile_module.scala 29:27]
  assign PE_4_24_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_24_io_g = io_g_n[25]; // @[PE_combile_module.scala 31:27]
  assign PE_4_24_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_24_io_t_ru = io_t_ru[25]; // @[PE_combile_module.scala 33:30]
  assign PE_4_24_io_t_ru_alloc = io_t_ru_alloc[24]; // @[PE_combile_module.scala 34:36]
  assign PE_4_25_io_a = io_a_n[26]; // @[PE_combile_module.scala 29:27]
  assign PE_4_25_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_25_io_g = io_g_n[26]; // @[PE_combile_module.scala 31:27]
  assign PE_4_25_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_25_io_t_ru = io_t_ru[26]; // @[PE_combile_module.scala 33:30]
  assign PE_4_25_io_t_ru_alloc = io_t_ru_alloc[25]; // @[PE_combile_module.scala 34:36]
  assign PE_4_26_io_a = io_a_n[27]; // @[PE_combile_module.scala 29:27]
  assign PE_4_26_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_26_io_g = io_g_n[27]; // @[PE_combile_module.scala 31:27]
  assign PE_4_26_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_26_io_t_ru = io_t_ru[27]; // @[PE_combile_module.scala 33:30]
  assign PE_4_26_io_t_ru_alloc = io_t_ru_alloc[26]; // @[PE_combile_module.scala 34:36]
  assign PE_4_27_io_a = io_a_n[28]; // @[PE_combile_module.scala 29:27]
  assign PE_4_27_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_27_io_g = io_g_n[28]; // @[PE_combile_module.scala 31:27]
  assign PE_4_27_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_27_io_t_ru = io_t_ru[28]; // @[PE_combile_module.scala 33:30]
  assign PE_4_27_io_t_ru_alloc = io_t_ru_alloc[27]; // @[PE_combile_module.scala 34:36]
  assign PE_4_28_io_a = io_a_n[29]; // @[PE_combile_module.scala 29:27]
  assign PE_4_28_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_28_io_g = io_g_n[29]; // @[PE_combile_module.scala 31:27]
  assign PE_4_28_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_28_io_t_ru = io_t_ru[29]; // @[PE_combile_module.scala 33:30]
  assign PE_4_28_io_t_ru_alloc = io_t_ru_alloc[28]; // @[PE_combile_module.scala 34:36]
  assign PE_4_29_io_a = io_a_n[30]; // @[PE_combile_module.scala 29:27]
  assign PE_4_29_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_29_io_g = io_g_n[30]; // @[PE_combile_module.scala 31:27]
  assign PE_4_29_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_29_io_t_ru = io_t_ru[30]; // @[PE_combile_module.scala 33:30]
  assign PE_4_29_io_t_ru_alloc = io_t_ru_alloc[29]; // @[PE_combile_module.scala 34:36]
  assign PE_4_30_io_a = io_a_n[31]; // @[PE_combile_module.scala 29:27]
  assign PE_4_30_io_b = io_b_1; // @[PE_combile_module.scala 30:27]
  assign PE_4_30_io_g = io_g_n[31]; // @[PE_combile_module.scala 31:27]
  assign PE_4_30_io_t_lu = io_t_lu; // @[PE_combile_module.scala 32:30]
  assign PE_4_30_io_t_ru = io_t_ru[31]; // @[PE_combile_module.scala 33:30]
  assign PE_4_30_io_t_ru_alloc = io_t_ru_alloc[30]; // @[PE_combile_module.scala 34:36]
  assign PE_3_single_io_a = io_a_n[0]; // @[PE_combile_module.scala 39:22]
  assign PE_3_single_io_b = io_b_1; // @[PE_combile_module.scala 40:22]
  assign PE_3_single_io_g = io_g_n[0]; // @[PE_combile_module.scala 41:22]
  assign PE_3_single_io_t_ru = io_t_ru[0]; // @[PE_combile_module.scala 43:25]
  assign PE_3_single_io_t_lu = io_t_lu; // @[PE_combile_module.scala 42:25]
endmodule
module PE_2(
  input   io_a,
  input   io_b,
  input   io_g,
  input   io_t_lu,
  output  io_t_out
);
  wire  _T = io_t_lu & io_g; // @[PE.scala 32:26]
  wire  _T_1 = io_a & io_b; // @[PE.scala 32:42]
  assign io_t_out = _T ^ _T_1; // @[PE.scala 32:14]
endmodule
module PE_down_line(
  input  [31:0] io_a_n,
  input  [31:0] io_g_n,
  input         io_b_1,
  input  [30:0] io_t_ru,
  input         io_t_lu,
  output [31:0] io_t_out
);
  wire  PE_3_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_1_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_1_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_1_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_1_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_1_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_1_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_2_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_2_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_2_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_2_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_2_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_2_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_3_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_3_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_3_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_3_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_3_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_3_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_4_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_4_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_4_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_4_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_4_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_4_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_5_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_5_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_5_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_5_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_5_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_5_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_6_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_6_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_6_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_6_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_6_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_6_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_7_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_7_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_7_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_7_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_7_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_7_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_8_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_8_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_8_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_8_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_8_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_8_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_9_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_9_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_9_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_9_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_9_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_9_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_10_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_10_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_10_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_10_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_10_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_10_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_11_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_11_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_11_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_11_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_11_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_11_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_12_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_12_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_12_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_12_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_12_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_12_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_13_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_13_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_13_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_13_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_13_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_13_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_14_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_14_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_14_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_14_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_14_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_14_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_15_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_15_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_15_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_15_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_15_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_15_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_16_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_16_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_16_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_16_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_16_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_16_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_17_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_17_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_17_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_17_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_17_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_17_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_18_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_18_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_18_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_18_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_18_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_18_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_19_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_19_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_19_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_19_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_19_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_19_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_20_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_20_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_20_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_20_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_20_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_20_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_21_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_21_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_21_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_21_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_21_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_21_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_22_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_22_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_22_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_22_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_22_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_22_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_23_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_23_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_23_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_23_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_23_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_23_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_24_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_24_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_24_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_24_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_24_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_24_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_25_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_25_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_25_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_25_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_25_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_25_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_26_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_26_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_26_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_26_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_26_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_26_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_27_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_27_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_27_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_27_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_27_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_27_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_28_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_28_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_28_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_28_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_28_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_28_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_29_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_29_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_29_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_29_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_29_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_29_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_3_30_io_a; // @[PE_combile_module.scala 60:46]
  wire  PE_3_30_io_b; // @[PE_combile_module.scala 60:46]
  wire  PE_3_30_io_g; // @[PE_combile_module.scala 60:46]
  wire  PE_3_30_io_t_ru; // @[PE_combile_module.scala 60:46]
  wire  PE_3_30_io_t_lu; // @[PE_combile_module.scala 60:46]
  wire  PE_3_30_io_t_out; // @[PE_combile_module.scala 60:46]
  wire  PE_2_single_io_a; // @[PE_combile_module.scala 61:29]
  wire  PE_2_single_io_b; // @[PE_combile_module.scala 61:29]
  wire  PE_2_single_io_g; // @[PE_combile_module.scala 61:29]
  wire  PE_2_single_io_t_lu; // @[PE_combile_module.scala 61:29]
  wire  PE_2_single_io_t_out; // @[PE_combile_module.scala 61:29]
  wire  t_out_temp_bool_1 = PE_3_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_2 = PE_3_1_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_3 = PE_3_2_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_4 = PE_3_3_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_5 = PE_3_4_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_6 = PE_3_5_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_7 = PE_3_6_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_8 = PE_3_7_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_9 = PE_3_8_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_10 = PE_3_9_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_11 = PE_3_10_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_12 = PE_3_11_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_13 = PE_3_12_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_14 = PE_3_13_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_15 = PE_3_14_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_16 = PE_3_15_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_17 = PE_3_16_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_18 = PE_3_17_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_19 = PE_3_18_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_20 = PE_3_19_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_21 = PE_3_20_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_22 = PE_3_21_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_23 = PE_3_22_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_24 = PE_3_23_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_25 = PE_3_24_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_26 = PE_3_25_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_27 = PE_3_26_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_28 = PE_3_27_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_29 = PE_3_28_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_30 = PE_3_29_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_31 = PE_3_30_io_t_out; // @[PE_combile_module.scala 72:61]
  wire  t_out_temp_bool_0 = PE_2_single_io_t_out; // @[PE_combile_module.scala 80:54]
  wire [7:0] _T_133 = {t_out_temp_bool_7,t_out_temp_bool_6,t_out_temp_bool_5,t_out_temp_bool_4,t_out_temp_bool_3,t_out_temp_bool_2,t_out_temp_bool_1,t_out_temp_bool_0}; // @[PE_combile_module.scala 82:33]
  wire [15:0] _T_141 = {t_out_temp_bool_15,t_out_temp_bool_14,t_out_temp_bool_13,t_out_temp_bool_12,t_out_temp_bool_11,t_out_temp_bool_10,t_out_temp_bool_9,t_out_temp_bool_8,_T_133}; // @[PE_combile_module.scala 82:33]
  wire [7:0] _T_148 = {t_out_temp_bool_23,t_out_temp_bool_22,t_out_temp_bool_21,t_out_temp_bool_20,t_out_temp_bool_19,t_out_temp_bool_18,t_out_temp_bool_17,t_out_temp_bool_16}; // @[PE_combile_module.scala 82:33]
  wire [15:0] _T_156 = {t_out_temp_bool_31,t_out_temp_bool_30,t_out_temp_bool_29,t_out_temp_bool_28,t_out_temp_bool_27,t_out_temp_bool_26,t_out_temp_bool_25,t_out_temp_bool_24,_T_148}; // @[PE_combile_module.scala 82:33]
  PE_3 PE_3 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_io_a),
    .io_b(PE_3_io_b),
    .io_g(PE_3_io_g),
    .io_t_ru(PE_3_io_t_ru),
    .io_t_lu(PE_3_io_t_lu),
    .io_t_out(PE_3_io_t_out)
  );
  PE_3 PE_3_1 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_1_io_a),
    .io_b(PE_3_1_io_b),
    .io_g(PE_3_1_io_g),
    .io_t_ru(PE_3_1_io_t_ru),
    .io_t_lu(PE_3_1_io_t_lu),
    .io_t_out(PE_3_1_io_t_out)
  );
  PE_3 PE_3_2 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_2_io_a),
    .io_b(PE_3_2_io_b),
    .io_g(PE_3_2_io_g),
    .io_t_ru(PE_3_2_io_t_ru),
    .io_t_lu(PE_3_2_io_t_lu),
    .io_t_out(PE_3_2_io_t_out)
  );
  PE_3 PE_3_3 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_3_io_a),
    .io_b(PE_3_3_io_b),
    .io_g(PE_3_3_io_g),
    .io_t_ru(PE_3_3_io_t_ru),
    .io_t_lu(PE_3_3_io_t_lu),
    .io_t_out(PE_3_3_io_t_out)
  );
  PE_3 PE_3_4 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_4_io_a),
    .io_b(PE_3_4_io_b),
    .io_g(PE_3_4_io_g),
    .io_t_ru(PE_3_4_io_t_ru),
    .io_t_lu(PE_3_4_io_t_lu),
    .io_t_out(PE_3_4_io_t_out)
  );
  PE_3 PE_3_5 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_5_io_a),
    .io_b(PE_3_5_io_b),
    .io_g(PE_3_5_io_g),
    .io_t_ru(PE_3_5_io_t_ru),
    .io_t_lu(PE_3_5_io_t_lu),
    .io_t_out(PE_3_5_io_t_out)
  );
  PE_3 PE_3_6 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_6_io_a),
    .io_b(PE_3_6_io_b),
    .io_g(PE_3_6_io_g),
    .io_t_ru(PE_3_6_io_t_ru),
    .io_t_lu(PE_3_6_io_t_lu),
    .io_t_out(PE_3_6_io_t_out)
  );
  PE_3 PE_3_7 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_7_io_a),
    .io_b(PE_3_7_io_b),
    .io_g(PE_3_7_io_g),
    .io_t_ru(PE_3_7_io_t_ru),
    .io_t_lu(PE_3_7_io_t_lu),
    .io_t_out(PE_3_7_io_t_out)
  );
  PE_3 PE_3_8 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_8_io_a),
    .io_b(PE_3_8_io_b),
    .io_g(PE_3_8_io_g),
    .io_t_ru(PE_3_8_io_t_ru),
    .io_t_lu(PE_3_8_io_t_lu),
    .io_t_out(PE_3_8_io_t_out)
  );
  PE_3 PE_3_9 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_9_io_a),
    .io_b(PE_3_9_io_b),
    .io_g(PE_3_9_io_g),
    .io_t_ru(PE_3_9_io_t_ru),
    .io_t_lu(PE_3_9_io_t_lu),
    .io_t_out(PE_3_9_io_t_out)
  );
  PE_3 PE_3_10 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_10_io_a),
    .io_b(PE_3_10_io_b),
    .io_g(PE_3_10_io_g),
    .io_t_ru(PE_3_10_io_t_ru),
    .io_t_lu(PE_3_10_io_t_lu),
    .io_t_out(PE_3_10_io_t_out)
  );
  PE_3 PE_3_11 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_11_io_a),
    .io_b(PE_3_11_io_b),
    .io_g(PE_3_11_io_g),
    .io_t_ru(PE_3_11_io_t_ru),
    .io_t_lu(PE_3_11_io_t_lu),
    .io_t_out(PE_3_11_io_t_out)
  );
  PE_3 PE_3_12 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_12_io_a),
    .io_b(PE_3_12_io_b),
    .io_g(PE_3_12_io_g),
    .io_t_ru(PE_3_12_io_t_ru),
    .io_t_lu(PE_3_12_io_t_lu),
    .io_t_out(PE_3_12_io_t_out)
  );
  PE_3 PE_3_13 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_13_io_a),
    .io_b(PE_3_13_io_b),
    .io_g(PE_3_13_io_g),
    .io_t_ru(PE_3_13_io_t_ru),
    .io_t_lu(PE_3_13_io_t_lu),
    .io_t_out(PE_3_13_io_t_out)
  );
  PE_3 PE_3_14 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_14_io_a),
    .io_b(PE_3_14_io_b),
    .io_g(PE_3_14_io_g),
    .io_t_ru(PE_3_14_io_t_ru),
    .io_t_lu(PE_3_14_io_t_lu),
    .io_t_out(PE_3_14_io_t_out)
  );
  PE_3 PE_3_15 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_15_io_a),
    .io_b(PE_3_15_io_b),
    .io_g(PE_3_15_io_g),
    .io_t_ru(PE_3_15_io_t_ru),
    .io_t_lu(PE_3_15_io_t_lu),
    .io_t_out(PE_3_15_io_t_out)
  );
  PE_3 PE_3_16 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_16_io_a),
    .io_b(PE_3_16_io_b),
    .io_g(PE_3_16_io_g),
    .io_t_ru(PE_3_16_io_t_ru),
    .io_t_lu(PE_3_16_io_t_lu),
    .io_t_out(PE_3_16_io_t_out)
  );
  PE_3 PE_3_17 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_17_io_a),
    .io_b(PE_3_17_io_b),
    .io_g(PE_3_17_io_g),
    .io_t_ru(PE_3_17_io_t_ru),
    .io_t_lu(PE_3_17_io_t_lu),
    .io_t_out(PE_3_17_io_t_out)
  );
  PE_3 PE_3_18 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_18_io_a),
    .io_b(PE_3_18_io_b),
    .io_g(PE_3_18_io_g),
    .io_t_ru(PE_3_18_io_t_ru),
    .io_t_lu(PE_3_18_io_t_lu),
    .io_t_out(PE_3_18_io_t_out)
  );
  PE_3 PE_3_19 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_19_io_a),
    .io_b(PE_3_19_io_b),
    .io_g(PE_3_19_io_g),
    .io_t_ru(PE_3_19_io_t_ru),
    .io_t_lu(PE_3_19_io_t_lu),
    .io_t_out(PE_3_19_io_t_out)
  );
  PE_3 PE_3_20 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_20_io_a),
    .io_b(PE_3_20_io_b),
    .io_g(PE_3_20_io_g),
    .io_t_ru(PE_3_20_io_t_ru),
    .io_t_lu(PE_3_20_io_t_lu),
    .io_t_out(PE_3_20_io_t_out)
  );
  PE_3 PE_3_21 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_21_io_a),
    .io_b(PE_3_21_io_b),
    .io_g(PE_3_21_io_g),
    .io_t_ru(PE_3_21_io_t_ru),
    .io_t_lu(PE_3_21_io_t_lu),
    .io_t_out(PE_3_21_io_t_out)
  );
  PE_3 PE_3_22 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_22_io_a),
    .io_b(PE_3_22_io_b),
    .io_g(PE_3_22_io_g),
    .io_t_ru(PE_3_22_io_t_ru),
    .io_t_lu(PE_3_22_io_t_lu),
    .io_t_out(PE_3_22_io_t_out)
  );
  PE_3 PE_3_23 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_23_io_a),
    .io_b(PE_3_23_io_b),
    .io_g(PE_3_23_io_g),
    .io_t_ru(PE_3_23_io_t_ru),
    .io_t_lu(PE_3_23_io_t_lu),
    .io_t_out(PE_3_23_io_t_out)
  );
  PE_3 PE_3_24 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_24_io_a),
    .io_b(PE_3_24_io_b),
    .io_g(PE_3_24_io_g),
    .io_t_ru(PE_3_24_io_t_ru),
    .io_t_lu(PE_3_24_io_t_lu),
    .io_t_out(PE_3_24_io_t_out)
  );
  PE_3 PE_3_25 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_25_io_a),
    .io_b(PE_3_25_io_b),
    .io_g(PE_3_25_io_g),
    .io_t_ru(PE_3_25_io_t_ru),
    .io_t_lu(PE_3_25_io_t_lu),
    .io_t_out(PE_3_25_io_t_out)
  );
  PE_3 PE_3_26 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_26_io_a),
    .io_b(PE_3_26_io_b),
    .io_g(PE_3_26_io_g),
    .io_t_ru(PE_3_26_io_t_ru),
    .io_t_lu(PE_3_26_io_t_lu),
    .io_t_out(PE_3_26_io_t_out)
  );
  PE_3 PE_3_27 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_27_io_a),
    .io_b(PE_3_27_io_b),
    .io_g(PE_3_27_io_g),
    .io_t_ru(PE_3_27_io_t_ru),
    .io_t_lu(PE_3_27_io_t_lu),
    .io_t_out(PE_3_27_io_t_out)
  );
  PE_3 PE_3_28 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_28_io_a),
    .io_b(PE_3_28_io_b),
    .io_g(PE_3_28_io_g),
    .io_t_ru(PE_3_28_io_t_ru),
    .io_t_lu(PE_3_28_io_t_lu),
    .io_t_out(PE_3_28_io_t_out)
  );
  PE_3 PE_3_29 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_29_io_a),
    .io_b(PE_3_29_io_b),
    .io_g(PE_3_29_io_g),
    .io_t_ru(PE_3_29_io_t_ru),
    .io_t_lu(PE_3_29_io_t_lu),
    .io_t_out(PE_3_29_io_t_out)
  );
  PE_3 PE_3_30 ( // @[PE_combile_module.scala 60:46]
    .io_a(PE_3_30_io_a),
    .io_b(PE_3_30_io_b),
    .io_g(PE_3_30_io_g),
    .io_t_ru(PE_3_30_io_t_ru),
    .io_t_lu(PE_3_30_io_t_lu),
    .io_t_out(PE_3_30_io_t_out)
  );
  PE_2 PE_2_single ( // @[PE_combile_module.scala 61:29]
    .io_a(PE_2_single_io_a),
    .io_b(PE_2_single_io_b),
    .io_g(PE_2_single_io_g),
    .io_t_lu(PE_2_single_io_t_lu),
    .io_t_out(PE_2_single_io_t_out)
  );
  assign io_t_out = {_T_156,_T_141}; // @[PE_combile_module.scala 82:14]
  assign PE_3_io_a = io_a_n[1]; // @[PE_combile_module.scala 67:27]
  assign PE_3_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_io_g = io_g_n[1]; // @[PE_combile_module.scala 69:27]
  assign PE_3_io_t_ru = io_t_ru[0]; // @[PE_combile_module.scala 70:30]
  assign PE_3_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_1_io_a = io_a_n[2]; // @[PE_combile_module.scala 67:27]
  assign PE_3_1_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_1_io_g = io_g_n[2]; // @[PE_combile_module.scala 69:27]
  assign PE_3_1_io_t_ru = io_t_ru[1]; // @[PE_combile_module.scala 70:30]
  assign PE_3_1_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_2_io_a = io_a_n[3]; // @[PE_combile_module.scala 67:27]
  assign PE_3_2_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_2_io_g = io_g_n[3]; // @[PE_combile_module.scala 69:27]
  assign PE_3_2_io_t_ru = io_t_ru[2]; // @[PE_combile_module.scala 70:30]
  assign PE_3_2_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_3_io_a = io_a_n[4]; // @[PE_combile_module.scala 67:27]
  assign PE_3_3_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_3_io_g = io_g_n[4]; // @[PE_combile_module.scala 69:27]
  assign PE_3_3_io_t_ru = io_t_ru[3]; // @[PE_combile_module.scala 70:30]
  assign PE_3_3_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_4_io_a = io_a_n[5]; // @[PE_combile_module.scala 67:27]
  assign PE_3_4_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_4_io_g = io_g_n[5]; // @[PE_combile_module.scala 69:27]
  assign PE_3_4_io_t_ru = io_t_ru[4]; // @[PE_combile_module.scala 70:30]
  assign PE_3_4_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_5_io_a = io_a_n[6]; // @[PE_combile_module.scala 67:27]
  assign PE_3_5_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_5_io_g = io_g_n[6]; // @[PE_combile_module.scala 69:27]
  assign PE_3_5_io_t_ru = io_t_ru[5]; // @[PE_combile_module.scala 70:30]
  assign PE_3_5_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_6_io_a = io_a_n[7]; // @[PE_combile_module.scala 67:27]
  assign PE_3_6_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_6_io_g = io_g_n[7]; // @[PE_combile_module.scala 69:27]
  assign PE_3_6_io_t_ru = io_t_ru[6]; // @[PE_combile_module.scala 70:30]
  assign PE_3_6_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_7_io_a = io_a_n[8]; // @[PE_combile_module.scala 67:27]
  assign PE_3_7_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_7_io_g = io_g_n[8]; // @[PE_combile_module.scala 69:27]
  assign PE_3_7_io_t_ru = io_t_ru[7]; // @[PE_combile_module.scala 70:30]
  assign PE_3_7_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_8_io_a = io_a_n[9]; // @[PE_combile_module.scala 67:27]
  assign PE_3_8_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_8_io_g = io_g_n[9]; // @[PE_combile_module.scala 69:27]
  assign PE_3_8_io_t_ru = io_t_ru[8]; // @[PE_combile_module.scala 70:30]
  assign PE_3_8_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_9_io_a = io_a_n[10]; // @[PE_combile_module.scala 67:27]
  assign PE_3_9_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_9_io_g = io_g_n[10]; // @[PE_combile_module.scala 69:27]
  assign PE_3_9_io_t_ru = io_t_ru[9]; // @[PE_combile_module.scala 70:30]
  assign PE_3_9_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_10_io_a = io_a_n[11]; // @[PE_combile_module.scala 67:27]
  assign PE_3_10_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_10_io_g = io_g_n[11]; // @[PE_combile_module.scala 69:27]
  assign PE_3_10_io_t_ru = io_t_ru[10]; // @[PE_combile_module.scala 70:30]
  assign PE_3_10_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_11_io_a = io_a_n[12]; // @[PE_combile_module.scala 67:27]
  assign PE_3_11_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_11_io_g = io_g_n[12]; // @[PE_combile_module.scala 69:27]
  assign PE_3_11_io_t_ru = io_t_ru[11]; // @[PE_combile_module.scala 70:30]
  assign PE_3_11_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_12_io_a = io_a_n[13]; // @[PE_combile_module.scala 67:27]
  assign PE_3_12_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_12_io_g = io_g_n[13]; // @[PE_combile_module.scala 69:27]
  assign PE_3_12_io_t_ru = io_t_ru[12]; // @[PE_combile_module.scala 70:30]
  assign PE_3_12_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_13_io_a = io_a_n[14]; // @[PE_combile_module.scala 67:27]
  assign PE_3_13_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_13_io_g = io_g_n[14]; // @[PE_combile_module.scala 69:27]
  assign PE_3_13_io_t_ru = io_t_ru[13]; // @[PE_combile_module.scala 70:30]
  assign PE_3_13_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_14_io_a = io_a_n[15]; // @[PE_combile_module.scala 67:27]
  assign PE_3_14_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_14_io_g = io_g_n[15]; // @[PE_combile_module.scala 69:27]
  assign PE_3_14_io_t_ru = io_t_ru[14]; // @[PE_combile_module.scala 70:30]
  assign PE_3_14_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_15_io_a = io_a_n[16]; // @[PE_combile_module.scala 67:27]
  assign PE_3_15_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_15_io_g = io_g_n[16]; // @[PE_combile_module.scala 69:27]
  assign PE_3_15_io_t_ru = io_t_ru[15]; // @[PE_combile_module.scala 70:30]
  assign PE_3_15_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_16_io_a = io_a_n[17]; // @[PE_combile_module.scala 67:27]
  assign PE_3_16_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_16_io_g = io_g_n[17]; // @[PE_combile_module.scala 69:27]
  assign PE_3_16_io_t_ru = io_t_ru[16]; // @[PE_combile_module.scala 70:30]
  assign PE_3_16_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_17_io_a = io_a_n[18]; // @[PE_combile_module.scala 67:27]
  assign PE_3_17_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_17_io_g = io_g_n[18]; // @[PE_combile_module.scala 69:27]
  assign PE_3_17_io_t_ru = io_t_ru[17]; // @[PE_combile_module.scala 70:30]
  assign PE_3_17_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_18_io_a = io_a_n[19]; // @[PE_combile_module.scala 67:27]
  assign PE_3_18_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_18_io_g = io_g_n[19]; // @[PE_combile_module.scala 69:27]
  assign PE_3_18_io_t_ru = io_t_ru[18]; // @[PE_combile_module.scala 70:30]
  assign PE_3_18_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_19_io_a = io_a_n[20]; // @[PE_combile_module.scala 67:27]
  assign PE_3_19_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_19_io_g = io_g_n[20]; // @[PE_combile_module.scala 69:27]
  assign PE_3_19_io_t_ru = io_t_ru[19]; // @[PE_combile_module.scala 70:30]
  assign PE_3_19_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_20_io_a = io_a_n[21]; // @[PE_combile_module.scala 67:27]
  assign PE_3_20_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_20_io_g = io_g_n[21]; // @[PE_combile_module.scala 69:27]
  assign PE_3_20_io_t_ru = io_t_ru[20]; // @[PE_combile_module.scala 70:30]
  assign PE_3_20_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_21_io_a = io_a_n[22]; // @[PE_combile_module.scala 67:27]
  assign PE_3_21_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_21_io_g = io_g_n[22]; // @[PE_combile_module.scala 69:27]
  assign PE_3_21_io_t_ru = io_t_ru[21]; // @[PE_combile_module.scala 70:30]
  assign PE_3_21_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_22_io_a = io_a_n[23]; // @[PE_combile_module.scala 67:27]
  assign PE_3_22_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_22_io_g = io_g_n[23]; // @[PE_combile_module.scala 69:27]
  assign PE_3_22_io_t_ru = io_t_ru[22]; // @[PE_combile_module.scala 70:30]
  assign PE_3_22_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_23_io_a = io_a_n[24]; // @[PE_combile_module.scala 67:27]
  assign PE_3_23_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_23_io_g = io_g_n[24]; // @[PE_combile_module.scala 69:27]
  assign PE_3_23_io_t_ru = io_t_ru[23]; // @[PE_combile_module.scala 70:30]
  assign PE_3_23_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_24_io_a = io_a_n[25]; // @[PE_combile_module.scala 67:27]
  assign PE_3_24_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_24_io_g = io_g_n[25]; // @[PE_combile_module.scala 69:27]
  assign PE_3_24_io_t_ru = io_t_ru[24]; // @[PE_combile_module.scala 70:30]
  assign PE_3_24_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_25_io_a = io_a_n[26]; // @[PE_combile_module.scala 67:27]
  assign PE_3_25_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_25_io_g = io_g_n[26]; // @[PE_combile_module.scala 69:27]
  assign PE_3_25_io_t_ru = io_t_ru[25]; // @[PE_combile_module.scala 70:30]
  assign PE_3_25_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_26_io_a = io_a_n[27]; // @[PE_combile_module.scala 67:27]
  assign PE_3_26_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_26_io_g = io_g_n[27]; // @[PE_combile_module.scala 69:27]
  assign PE_3_26_io_t_ru = io_t_ru[26]; // @[PE_combile_module.scala 70:30]
  assign PE_3_26_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_27_io_a = io_a_n[28]; // @[PE_combile_module.scala 67:27]
  assign PE_3_27_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_27_io_g = io_g_n[28]; // @[PE_combile_module.scala 69:27]
  assign PE_3_27_io_t_ru = io_t_ru[27]; // @[PE_combile_module.scala 70:30]
  assign PE_3_27_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_28_io_a = io_a_n[29]; // @[PE_combile_module.scala 67:27]
  assign PE_3_28_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_28_io_g = io_g_n[29]; // @[PE_combile_module.scala 69:27]
  assign PE_3_28_io_t_ru = io_t_ru[28]; // @[PE_combile_module.scala 70:30]
  assign PE_3_28_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_29_io_a = io_a_n[30]; // @[PE_combile_module.scala 67:27]
  assign PE_3_29_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_29_io_g = io_g_n[30]; // @[PE_combile_module.scala 69:27]
  assign PE_3_29_io_t_ru = io_t_ru[29]; // @[PE_combile_module.scala 70:30]
  assign PE_3_29_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_3_30_io_a = io_a_n[31]; // @[PE_combile_module.scala 67:27]
  assign PE_3_30_io_b = io_b_1; // @[PE_combile_module.scala 68:27]
  assign PE_3_30_io_g = io_g_n[31]; // @[PE_combile_module.scala 69:27]
  assign PE_3_30_io_t_ru = io_t_ru[30]; // @[PE_combile_module.scala 70:30]
  assign PE_3_30_io_t_lu = io_t_lu; // @[PE_combile_module.scala 71:30]
  assign PE_2_single_io_a = io_a_n[0]; // @[PE_combile_module.scala 76:22]
  assign PE_2_single_io_b = io_b_1; // @[PE_combile_module.scala 77:22]
  assign PE_2_single_io_g = io_g_n[0]; // @[PE_combile_module.scala 78:22]
  assign PE_2_single_io_t_lu = io_t_lu; // @[PE_combile_module.scala 79:25]
endmodule
module PE_nxn(
  input         clock,
  input         reset,
  input  [31:0] io_a_n,
  input  [31:0] io_b_n,
  input  [31:0] io_g_n,
  input  [31:0] io_t_ru,
  input  [30:0] io_t_ru_alloc,
  input         io_control_in,
  output        io_control_out,
  output [30:0] io_t_out_alloc,
  output [31:0] io_t_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] PE_up_line_io_a_n; // @[PE_n_n.scala 27:28]
  wire [31:0] PE_up_line_io_g_n; // @[PE_n_n.scala 27:28]
  wire  PE_up_line_io_b_1; // @[PE_n_n.scala 27:28]
  wire [31:0] PE_up_line_io_t_ru; // @[PE_n_n.scala 27:28]
  wire [30:0] PE_up_line_io_t_ru_alloc; // @[PE_n_n.scala 27:28]
  wire  PE_up_line_io_t_lu; // @[PE_n_n.scala 27:28]
  wire [31:0] PE_up_line_io_t_out; // @[PE_n_n.scala 27:28]
  wire [31:0] PE_down_line_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_1_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_1_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_1_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_1_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_1_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_1_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_2_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_2_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_2_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_2_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_2_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_2_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_3_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_3_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_3_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_3_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_3_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_3_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_4_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_4_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_4_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_4_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_4_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_4_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_5_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_5_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_5_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_5_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_5_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_5_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_6_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_6_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_6_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_6_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_6_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_6_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_7_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_7_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_7_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_7_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_7_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_7_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_8_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_8_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_8_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_8_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_8_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_8_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_9_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_9_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_9_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_9_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_9_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_9_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_10_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_10_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_10_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_10_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_10_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_10_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_11_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_11_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_11_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_11_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_11_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_11_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_12_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_12_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_12_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_12_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_12_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_12_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_13_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_13_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_13_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_13_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_13_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_13_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_14_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_14_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_14_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_14_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_14_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_14_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_15_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_15_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_15_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_15_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_15_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_15_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_16_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_16_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_16_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_16_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_16_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_16_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_17_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_17_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_17_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_17_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_17_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_17_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_18_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_18_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_18_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_18_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_18_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_18_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_19_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_19_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_19_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_19_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_19_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_19_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_20_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_20_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_20_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_20_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_20_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_20_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_21_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_21_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_21_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_21_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_21_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_21_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_22_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_22_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_22_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_22_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_22_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_22_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_23_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_23_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_23_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_23_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_23_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_23_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_24_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_24_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_24_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_24_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_24_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_24_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_25_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_25_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_25_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_25_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_25_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_25_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_26_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_26_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_26_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_26_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_26_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_26_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_27_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_27_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_27_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_27_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_27_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_27_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_28_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_28_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_28_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_28_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_28_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_28_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_29_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_29_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_29_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_29_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_29_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_29_io_t_out; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_30_io_a_n; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_30_io_g_n; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_30_io_b_1; // @[PE_n_n.scala 28:47]
  wire [30:0] PE_down_line_30_io_t_ru; // @[PE_n_n.scala 28:47]
  wire  PE_down_line_30_io_t_lu; // @[PE_n_n.scala 28:47]
  wire [31:0] PE_down_line_30_io_t_out; // @[PE_n_n.scala 28:47]
  reg  control_reg; // @[PE_n_n.scala 37:30]
  wire [31:0] control_n = io_control_in ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _GEN_0 = {{1'd0}, io_t_ru_alloc}; // @[PE_n_n.scala 43:42]
  wire [31:0] t_ru_alloc_valid = _GEN_0 & control_n; // @[PE_n_n.scala 43:42]
  reg  t_lu_upline_reg; // @[PE_n_n.scala 49:34]
  reg  t_lu_downlines_reg_0; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_1; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_2; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_3; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_4; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_5; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_6; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_7; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_8; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_9; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_10; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_11; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_12; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_13; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_14; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_15; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_16; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_17; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_18; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_19; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_20; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_21; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_22; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_23; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_24; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_25; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_26; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_27; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_28; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_29; // @[PE_n_n.scala 53:37]
  reg  t_lu_downlines_reg_30; // @[PE_n_n.scala 53:37]
  wire [31:0] _T_102 = PE_up_line_io_t_out; // @[PE_n_n.scala 73:49]
  wire [31:0] _T_104 = PE_down_line_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_106 = PE_down_line_1_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_108 = PE_down_line_2_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_110 = PE_down_line_3_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_112 = PE_down_line_4_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_114 = PE_down_line_5_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_116 = PE_down_line_6_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_118 = PE_down_line_7_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_120 = PE_down_line_8_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_122 = PE_down_line_9_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_124 = PE_down_line_10_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_126 = PE_down_line_11_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_128 = PE_down_line_12_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_130 = PE_down_line_13_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_132 = PE_down_line_14_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_134 = PE_down_line_15_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_136 = PE_down_line_16_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_138 = PE_down_line_17_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_140 = PE_down_line_18_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_142 = PE_down_line_19_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_144 = PE_down_line_20_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_146 = PE_down_line_21_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_148 = PE_down_line_22_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_150 = PE_down_line_23_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_152 = PE_down_line_24_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_154 = PE_down_line_25_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_156 = PE_down_line_26_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_158 = PE_down_line_27_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_160 = PE_down_line_28_io_t_out; // @[PE_n_n.scala 81:58]
  wire [31:0] _T_162 = PE_down_line_29_io_t_out; // @[PE_n_n.scala 81:58]
  wire  t_out_alloc_temp_bool_0 = PE_down_line_30_io_t_out[31]; // @[PE_n_n.scala 86:63]
  wire [6:0] _T_230 = {PE_down_line_24_io_t_out[31],PE_down_line_25_io_t_out[31],PE_down_line_26_io_t_out[31],PE_down_line_27_io_t_out[31],PE_down_line_28_io_t_out[31],PE_down_line_29_io_t_out[31],t_out_alloc_temp_bool_0}; // @[PE_n_n.scala 89:51]
  wire [14:0] _T_238 = {PE_down_line_16_io_t_out[31],PE_down_line_17_io_t_out[31],PE_down_line_18_io_t_out[31],PE_down_line_19_io_t_out[31],PE_down_line_20_io_t_out[31],PE_down_line_21_io_t_out[31],PE_down_line_22_io_t_out[31],PE_down_line_23_io_t_out[31],_T_230}; // @[PE_n_n.scala 89:51]
  wire [7:0] _T_245 = {PE_down_line_8_io_t_out[31],PE_down_line_9_io_t_out[31],PE_down_line_10_io_t_out[31],PE_down_line_11_io_t_out[31],PE_down_line_12_io_t_out[31],PE_down_line_13_io_t_out[31],PE_down_line_14_io_t_out[31],PE_down_line_15_io_t_out[31]}; // @[PE_n_n.scala 89:51]
  wire [15:0] _T_253 = {PE_down_line_io_t_out[31],PE_down_line_1_io_t_out[31],PE_down_line_2_io_t_out[31],PE_down_line_3_io_t_out[31],PE_down_line_4_io_t_out[31],PE_down_line_5_io_t_out[31],PE_down_line_6_io_t_out[31],PE_down_line_7_io_t_out[31],_T_245}; // @[PE_n_n.scala 89:51]
  PE_up_line PE_up_line ( // @[PE_n_n.scala 27:28]
    .io_a_n(PE_up_line_io_a_n),
    .io_g_n(PE_up_line_io_g_n),
    .io_b_1(PE_up_line_io_b_1),
    .io_t_ru(PE_up_line_io_t_ru),
    .io_t_ru_alloc(PE_up_line_io_t_ru_alloc),
    .io_t_lu(PE_up_line_io_t_lu),
    .io_t_out(PE_up_line_io_t_out)
  );
  PE_down_line PE_down_line ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_io_a_n),
    .io_g_n(PE_down_line_io_g_n),
    .io_b_1(PE_down_line_io_b_1),
    .io_t_ru(PE_down_line_io_t_ru),
    .io_t_lu(PE_down_line_io_t_lu),
    .io_t_out(PE_down_line_io_t_out)
  );
  PE_down_line PE_down_line_1 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_1_io_a_n),
    .io_g_n(PE_down_line_1_io_g_n),
    .io_b_1(PE_down_line_1_io_b_1),
    .io_t_ru(PE_down_line_1_io_t_ru),
    .io_t_lu(PE_down_line_1_io_t_lu),
    .io_t_out(PE_down_line_1_io_t_out)
  );
  PE_down_line PE_down_line_2 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_2_io_a_n),
    .io_g_n(PE_down_line_2_io_g_n),
    .io_b_1(PE_down_line_2_io_b_1),
    .io_t_ru(PE_down_line_2_io_t_ru),
    .io_t_lu(PE_down_line_2_io_t_lu),
    .io_t_out(PE_down_line_2_io_t_out)
  );
  PE_down_line PE_down_line_3 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_3_io_a_n),
    .io_g_n(PE_down_line_3_io_g_n),
    .io_b_1(PE_down_line_3_io_b_1),
    .io_t_ru(PE_down_line_3_io_t_ru),
    .io_t_lu(PE_down_line_3_io_t_lu),
    .io_t_out(PE_down_line_3_io_t_out)
  );
  PE_down_line PE_down_line_4 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_4_io_a_n),
    .io_g_n(PE_down_line_4_io_g_n),
    .io_b_1(PE_down_line_4_io_b_1),
    .io_t_ru(PE_down_line_4_io_t_ru),
    .io_t_lu(PE_down_line_4_io_t_lu),
    .io_t_out(PE_down_line_4_io_t_out)
  );
  PE_down_line PE_down_line_5 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_5_io_a_n),
    .io_g_n(PE_down_line_5_io_g_n),
    .io_b_1(PE_down_line_5_io_b_1),
    .io_t_ru(PE_down_line_5_io_t_ru),
    .io_t_lu(PE_down_line_5_io_t_lu),
    .io_t_out(PE_down_line_5_io_t_out)
  );
  PE_down_line PE_down_line_6 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_6_io_a_n),
    .io_g_n(PE_down_line_6_io_g_n),
    .io_b_1(PE_down_line_6_io_b_1),
    .io_t_ru(PE_down_line_6_io_t_ru),
    .io_t_lu(PE_down_line_6_io_t_lu),
    .io_t_out(PE_down_line_6_io_t_out)
  );
  PE_down_line PE_down_line_7 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_7_io_a_n),
    .io_g_n(PE_down_line_7_io_g_n),
    .io_b_1(PE_down_line_7_io_b_1),
    .io_t_ru(PE_down_line_7_io_t_ru),
    .io_t_lu(PE_down_line_7_io_t_lu),
    .io_t_out(PE_down_line_7_io_t_out)
  );
  PE_down_line PE_down_line_8 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_8_io_a_n),
    .io_g_n(PE_down_line_8_io_g_n),
    .io_b_1(PE_down_line_8_io_b_1),
    .io_t_ru(PE_down_line_8_io_t_ru),
    .io_t_lu(PE_down_line_8_io_t_lu),
    .io_t_out(PE_down_line_8_io_t_out)
  );
  PE_down_line PE_down_line_9 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_9_io_a_n),
    .io_g_n(PE_down_line_9_io_g_n),
    .io_b_1(PE_down_line_9_io_b_1),
    .io_t_ru(PE_down_line_9_io_t_ru),
    .io_t_lu(PE_down_line_9_io_t_lu),
    .io_t_out(PE_down_line_9_io_t_out)
  );
  PE_down_line PE_down_line_10 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_10_io_a_n),
    .io_g_n(PE_down_line_10_io_g_n),
    .io_b_1(PE_down_line_10_io_b_1),
    .io_t_ru(PE_down_line_10_io_t_ru),
    .io_t_lu(PE_down_line_10_io_t_lu),
    .io_t_out(PE_down_line_10_io_t_out)
  );
  PE_down_line PE_down_line_11 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_11_io_a_n),
    .io_g_n(PE_down_line_11_io_g_n),
    .io_b_1(PE_down_line_11_io_b_1),
    .io_t_ru(PE_down_line_11_io_t_ru),
    .io_t_lu(PE_down_line_11_io_t_lu),
    .io_t_out(PE_down_line_11_io_t_out)
  );
  PE_down_line PE_down_line_12 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_12_io_a_n),
    .io_g_n(PE_down_line_12_io_g_n),
    .io_b_1(PE_down_line_12_io_b_1),
    .io_t_ru(PE_down_line_12_io_t_ru),
    .io_t_lu(PE_down_line_12_io_t_lu),
    .io_t_out(PE_down_line_12_io_t_out)
  );
  PE_down_line PE_down_line_13 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_13_io_a_n),
    .io_g_n(PE_down_line_13_io_g_n),
    .io_b_1(PE_down_line_13_io_b_1),
    .io_t_ru(PE_down_line_13_io_t_ru),
    .io_t_lu(PE_down_line_13_io_t_lu),
    .io_t_out(PE_down_line_13_io_t_out)
  );
  PE_down_line PE_down_line_14 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_14_io_a_n),
    .io_g_n(PE_down_line_14_io_g_n),
    .io_b_1(PE_down_line_14_io_b_1),
    .io_t_ru(PE_down_line_14_io_t_ru),
    .io_t_lu(PE_down_line_14_io_t_lu),
    .io_t_out(PE_down_line_14_io_t_out)
  );
  PE_down_line PE_down_line_15 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_15_io_a_n),
    .io_g_n(PE_down_line_15_io_g_n),
    .io_b_1(PE_down_line_15_io_b_1),
    .io_t_ru(PE_down_line_15_io_t_ru),
    .io_t_lu(PE_down_line_15_io_t_lu),
    .io_t_out(PE_down_line_15_io_t_out)
  );
  PE_down_line PE_down_line_16 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_16_io_a_n),
    .io_g_n(PE_down_line_16_io_g_n),
    .io_b_1(PE_down_line_16_io_b_1),
    .io_t_ru(PE_down_line_16_io_t_ru),
    .io_t_lu(PE_down_line_16_io_t_lu),
    .io_t_out(PE_down_line_16_io_t_out)
  );
  PE_down_line PE_down_line_17 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_17_io_a_n),
    .io_g_n(PE_down_line_17_io_g_n),
    .io_b_1(PE_down_line_17_io_b_1),
    .io_t_ru(PE_down_line_17_io_t_ru),
    .io_t_lu(PE_down_line_17_io_t_lu),
    .io_t_out(PE_down_line_17_io_t_out)
  );
  PE_down_line PE_down_line_18 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_18_io_a_n),
    .io_g_n(PE_down_line_18_io_g_n),
    .io_b_1(PE_down_line_18_io_b_1),
    .io_t_ru(PE_down_line_18_io_t_ru),
    .io_t_lu(PE_down_line_18_io_t_lu),
    .io_t_out(PE_down_line_18_io_t_out)
  );
  PE_down_line PE_down_line_19 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_19_io_a_n),
    .io_g_n(PE_down_line_19_io_g_n),
    .io_b_1(PE_down_line_19_io_b_1),
    .io_t_ru(PE_down_line_19_io_t_ru),
    .io_t_lu(PE_down_line_19_io_t_lu),
    .io_t_out(PE_down_line_19_io_t_out)
  );
  PE_down_line PE_down_line_20 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_20_io_a_n),
    .io_g_n(PE_down_line_20_io_g_n),
    .io_b_1(PE_down_line_20_io_b_1),
    .io_t_ru(PE_down_line_20_io_t_ru),
    .io_t_lu(PE_down_line_20_io_t_lu),
    .io_t_out(PE_down_line_20_io_t_out)
  );
  PE_down_line PE_down_line_21 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_21_io_a_n),
    .io_g_n(PE_down_line_21_io_g_n),
    .io_b_1(PE_down_line_21_io_b_1),
    .io_t_ru(PE_down_line_21_io_t_ru),
    .io_t_lu(PE_down_line_21_io_t_lu),
    .io_t_out(PE_down_line_21_io_t_out)
  );
  PE_down_line PE_down_line_22 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_22_io_a_n),
    .io_g_n(PE_down_line_22_io_g_n),
    .io_b_1(PE_down_line_22_io_b_1),
    .io_t_ru(PE_down_line_22_io_t_ru),
    .io_t_lu(PE_down_line_22_io_t_lu),
    .io_t_out(PE_down_line_22_io_t_out)
  );
  PE_down_line PE_down_line_23 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_23_io_a_n),
    .io_g_n(PE_down_line_23_io_g_n),
    .io_b_1(PE_down_line_23_io_b_1),
    .io_t_ru(PE_down_line_23_io_t_ru),
    .io_t_lu(PE_down_line_23_io_t_lu),
    .io_t_out(PE_down_line_23_io_t_out)
  );
  PE_down_line PE_down_line_24 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_24_io_a_n),
    .io_g_n(PE_down_line_24_io_g_n),
    .io_b_1(PE_down_line_24_io_b_1),
    .io_t_ru(PE_down_line_24_io_t_ru),
    .io_t_lu(PE_down_line_24_io_t_lu),
    .io_t_out(PE_down_line_24_io_t_out)
  );
  PE_down_line PE_down_line_25 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_25_io_a_n),
    .io_g_n(PE_down_line_25_io_g_n),
    .io_b_1(PE_down_line_25_io_b_1),
    .io_t_ru(PE_down_line_25_io_t_ru),
    .io_t_lu(PE_down_line_25_io_t_lu),
    .io_t_out(PE_down_line_25_io_t_out)
  );
  PE_down_line PE_down_line_26 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_26_io_a_n),
    .io_g_n(PE_down_line_26_io_g_n),
    .io_b_1(PE_down_line_26_io_b_1),
    .io_t_ru(PE_down_line_26_io_t_ru),
    .io_t_lu(PE_down_line_26_io_t_lu),
    .io_t_out(PE_down_line_26_io_t_out)
  );
  PE_down_line PE_down_line_27 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_27_io_a_n),
    .io_g_n(PE_down_line_27_io_g_n),
    .io_b_1(PE_down_line_27_io_b_1),
    .io_t_ru(PE_down_line_27_io_t_ru),
    .io_t_lu(PE_down_line_27_io_t_lu),
    .io_t_out(PE_down_line_27_io_t_out)
  );
  PE_down_line PE_down_line_28 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_28_io_a_n),
    .io_g_n(PE_down_line_28_io_g_n),
    .io_b_1(PE_down_line_28_io_b_1),
    .io_t_ru(PE_down_line_28_io_t_ru),
    .io_t_lu(PE_down_line_28_io_t_lu),
    .io_t_out(PE_down_line_28_io_t_out)
  );
  PE_down_line PE_down_line_29 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_29_io_a_n),
    .io_g_n(PE_down_line_29_io_g_n),
    .io_b_1(PE_down_line_29_io_b_1),
    .io_t_ru(PE_down_line_29_io_t_ru),
    .io_t_lu(PE_down_line_29_io_t_lu),
    .io_t_out(PE_down_line_29_io_t_out)
  );
  PE_down_line PE_down_line_30 ( // @[PE_n_n.scala 28:47]
    .io_a_n(PE_down_line_30_io_a_n),
    .io_g_n(PE_down_line_30_io_g_n),
    .io_b_1(PE_down_line_30_io_b_1),
    .io_t_ru(PE_down_line_30_io_t_ru),
    .io_t_lu(PE_down_line_30_io_t_lu),
    .io_t_out(PE_down_line_30_io_t_out)
  );
  assign io_control_out = control_reg; // @[PE_n_n.scala 39:20]
  assign io_t_out_alloc = {_T_253,_T_238}; // @[PE_n_n.scala 89:20]
  assign io_t_out = PE_down_line_30_io_t_out; // @[PE_n_n.scala 90:14]
  assign PE_up_line_io_a_n = io_a_n; // @[PE_n_n.scala 60:23]
  assign PE_up_line_io_g_n = io_g_n; // @[PE_n_n.scala 61:23]
  assign PE_up_line_io_b_1 = io_b_n[31]; // @[PE_n_n.scala 62:23]
  assign PE_up_line_io_t_ru = io_t_ru; // @[PE_n_n.scala 63:24]
  assign PE_up_line_io_t_ru_alloc = t_ru_alloc_valid[30:0]; // @[PE_n_n.scala 64:30]
  assign PE_up_line_io_t_lu = t_lu_upline_reg; // @[PE_n_n.scala 65:24]
  assign PE_down_line_io_a_n = io_a_n; // @[PE_n_n.scala 70:26]
  assign PE_down_line_io_g_n = io_g_n; // @[PE_n_n.scala 71:26]
  assign PE_down_line_io_b_1 = io_b_n[30]; // @[PE_n_n.scala 72:26]
  assign PE_down_line_io_t_ru = _T_102[30:0]; // @[PE_n_n.scala 73:27]
  assign PE_down_line_io_t_lu = t_lu_downlines_reg_0; // @[PE_n_n.scala 74:27]
  assign PE_down_line_1_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_1_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_1_io_b_1 = io_b_n[30]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_1_io_t_ru = _T_104[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_1_io_t_lu = t_lu_downlines_reg_1; // @[PE_n_n.scala 82:31]
  assign PE_down_line_2_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_2_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_2_io_b_1 = io_b_n[29]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_2_io_t_ru = _T_106[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_2_io_t_lu = t_lu_downlines_reg_2; // @[PE_n_n.scala 82:31]
  assign PE_down_line_3_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_3_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_3_io_b_1 = io_b_n[28]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_3_io_t_ru = _T_108[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_3_io_t_lu = t_lu_downlines_reg_3; // @[PE_n_n.scala 82:31]
  assign PE_down_line_4_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_4_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_4_io_b_1 = io_b_n[27]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_4_io_t_ru = _T_110[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_4_io_t_lu = t_lu_downlines_reg_4; // @[PE_n_n.scala 82:31]
  assign PE_down_line_5_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_5_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_5_io_b_1 = io_b_n[26]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_5_io_t_ru = _T_112[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_5_io_t_lu = t_lu_downlines_reg_5; // @[PE_n_n.scala 82:31]
  assign PE_down_line_6_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_6_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_6_io_b_1 = io_b_n[25]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_6_io_t_ru = _T_114[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_6_io_t_lu = t_lu_downlines_reg_6; // @[PE_n_n.scala 82:31]
  assign PE_down_line_7_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_7_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_7_io_b_1 = io_b_n[24]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_7_io_t_ru = _T_116[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_7_io_t_lu = t_lu_downlines_reg_7; // @[PE_n_n.scala 82:31]
  assign PE_down_line_8_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_8_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_8_io_b_1 = io_b_n[23]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_8_io_t_ru = _T_118[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_8_io_t_lu = t_lu_downlines_reg_8; // @[PE_n_n.scala 82:31]
  assign PE_down_line_9_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_9_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_9_io_b_1 = io_b_n[22]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_9_io_t_ru = _T_120[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_9_io_t_lu = t_lu_downlines_reg_9; // @[PE_n_n.scala 82:31]
  assign PE_down_line_10_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_10_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_10_io_b_1 = io_b_n[21]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_10_io_t_ru = _T_122[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_10_io_t_lu = t_lu_downlines_reg_10; // @[PE_n_n.scala 82:31]
  assign PE_down_line_11_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_11_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_11_io_b_1 = io_b_n[20]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_11_io_t_ru = _T_124[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_11_io_t_lu = t_lu_downlines_reg_11; // @[PE_n_n.scala 82:31]
  assign PE_down_line_12_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_12_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_12_io_b_1 = io_b_n[19]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_12_io_t_ru = _T_126[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_12_io_t_lu = t_lu_downlines_reg_12; // @[PE_n_n.scala 82:31]
  assign PE_down_line_13_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_13_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_13_io_b_1 = io_b_n[18]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_13_io_t_ru = _T_128[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_13_io_t_lu = t_lu_downlines_reg_13; // @[PE_n_n.scala 82:31]
  assign PE_down_line_14_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_14_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_14_io_b_1 = io_b_n[17]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_14_io_t_ru = _T_130[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_14_io_t_lu = t_lu_downlines_reg_14; // @[PE_n_n.scala 82:31]
  assign PE_down_line_15_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_15_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_15_io_b_1 = io_b_n[16]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_15_io_t_ru = _T_132[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_15_io_t_lu = t_lu_downlines_reg_15; // @[PE_n_n.scala 82:31]
  assign PE_down_line_16_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_16_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_16_io_b_1 = io_b_n[15]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_16_io_t_ru = _T_134[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_16_io_t_lu = t_lu_downlines_reg_16; // @[PE_n_n.scala 82:31]
  assign PE_down_line_17_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_17_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_17_io_b_1 = io_b_n[14]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_17_io_t_ru = _T_136[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_17_io_t_lu = t_lu_downlines_reg_17; // @[PE_n_n.scala 82:31]
  assign PE_down_line_18_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_18_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_18_io_b_1 = io_b_n[13]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_18_io_t_ru = _T_138[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_18_io_t_lu = t_lu_downlines_reg_18; // @[PE_n_n.scala 82:31]
  assign PE_down_line_19_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_19_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_19_io_b_1 = io_b_n[12]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_19_io_t_ru = _T_140[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_19_io_t_lu = t_lu_downlines_reg_19; // @[PE_n_n.scala 82:31]
  assign PE_down_line_20_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_20_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_20_io_b_1 = io_b_n[11]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_20_io_t_ru = _T_142[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_20_io_t_lu = t_lu_downlines_reg_20; // @[PE_n_n.scala 82:31]
  assign PE_down_line_21_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_21_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_21_io_b_1 = io_b_n[10]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_21_io_t_ru = _T_144[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_21_io_t_lu = t_lu_downlines_reg_21; // @[PE_n_n.scala 82:31]
  assign PE_down_line_22_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_22_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_22_io_b_1 = io_b_n[9]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_22_io_t_ru = _T_146[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_22_io_t_lu = t_lu_downlines_reg_22; // @[PE_n_n.scala 82:31]
  assign PE_down_line_23_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_23_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_23_io_b_1 = io_b_n[8]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_23_io_t_ru = _T_148[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_23_io_t_lu = t_lu_downlines_reg_23; // @[PE_n_n.scala 82:31]
  assign PE_down_line_24_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_24_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_24_io_b_1 = io_b_n[7]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_24_io_t_ru = _T_150[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_24_io_t_lu = t_lu_downlines_reg_24; // @[PE_n_n.scala 82:31]
  assign PE_down_line_25_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_25_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_25_io_b_1 = io_b_n[6]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_25_io_t_ru = _T_152[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_25_io_t_lu = t_lu_downlines_reg_25; // @[PE_n_n.scala 82:31]
  assign PE_down_line_26_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_26_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_26_io_b_1 = io_b_n[5]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_26_io_t_ru = _T_154[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_26_io_t_lu = t_lu_downlines_reg_26; // @[PE_n_n.scala 82:31]
  assign PE_down_line_27_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_27_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_27_io_b_1 = io_b_n[4]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_27_io_t_ru = _T_156[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_27_io_t_lu = t_lu_downlines_reg_27; // @[PE_n_n.scala 82:31]
  assign PE_down_line_28_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_28_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_28_io_b_1 = io_b_n[3]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_28_io_t_ru = _T_158[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_28_io_t_lu = t_lu_downlines_reg_28; // @[PE_n_n.scala 82:31]
  assign PE_down_line_29_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_29_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_29_io_b_1 = io_b_n[2]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_29_io_t_ru = _T_160[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_29_io_t_lu = t_lu_downlines_reg_29; // @[PE_n_n.scala 82:31]
  assign PE_down_line_30_io_a_n = io_a_n; // @[PE_n_n.scala 78:30]
  assign PE_down_line_30_io_g_n = io_g_n; // @[PE_n_n.scala 79:30]
  assign PE_down_line_30_io_b_1 = io_b_n[1]; // @[PE_n_n.scala 80:30]
  assign PE_down_line_30_io_t_ru = _T_162[30:0]; // @[PE_n_n.scala 81:31]
  assign PE_down_line_30_io_t_lu = t_lu_downlines_reg_30; // @[PE_n_n.scala 82:31]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  control_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  t_lu_upline_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  t_lu_downlines_reg_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  t_lu_downlines_reg_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  t_lu_downlines_reg_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  t_lu_downlines_reg_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  t_lu_downlines_reg_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  t_lu_downlines_reg_5 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  t_lu_downlines_reg_6 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  t_lu_downlines_reg_7 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  t_lu_downlines_reg_8 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  t_lu_downlines_reg_9 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  t_lu_downlines_reg_10 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  t_lu_downlines_reg_11 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  t_lu_downlines_reg_12 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  t_lu_downlines_reg_13 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  t_lu_downlines_reg_14 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  t_lu_downlines_reg_15 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  t_lu_downlines_reg_16 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  t_lu_downlines_reg_17 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  t_lu_downlines_reg_18 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  t_lu_downlines_reg_19 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  t_lu_downlines_reg_20 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  t_lu_downlines_reg_21 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  t_lu_downlines_reg_22 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  t_lu_downlines_reg_23 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  t_lu_downlines_reg_24 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  t_lu_downlines_reg_25 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  t_lu_downlines_reg_26 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  t_lu_downlines_reg_27 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  t_lu_downlines_reg_28 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  t_lu_downlines_reg_29 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  t_lu_downlines_reg_30 = _RAND_32[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      control_reg <= 1'h0;
    end else begin
      control_reg <= io_control_in;
    end
    if (reset) begin
      t_lu_upline_reg <= 1'h0;
    end else if (!(io_control_in)) begin
      t_lu_upline_reg <= io_t_ru[31];
    end
    if (reset) begin
      t_lu_downlines_reg_0 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_0 <= PE_up_line_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_1 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_1 <= PE_down_line_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_2 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_2 <= PE_down_line_1_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_3 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_3 <= PE_down_line_2_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_4 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_4 <= PE_down_line_3_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_5 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_5 <= PE_down_line_4_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_6 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_6 <= PE_down_line_5_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_7 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_7 <= PE_down_line_6_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_8 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_8 <= PE_down_line_7_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_9 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_9 <= PE_down_line_8_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_10 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_10 <= PE_down_line_9_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_11 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_11 <= PE_down_line_10_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_12 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_12 <= PE_down_line_11_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_13 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_13 <= PE_down_line_12_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_14 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_14 <= PE_down_line_13_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_15 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_15 <= PE_down_line_14_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_16 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_16 <= PE_down_line_15_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_17 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_17 <= PE_down_line_16_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_18 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_18 <= PE_down_line_17_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_19 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_19 <= PE_down_line_18_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_20 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_20 <= PE_down_line_19_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_21 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_21 <= PE_down_line_20_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_22 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_22 <= PE_down_line_21_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_23 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_23 <= PE_down_line_22_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_24 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_24 <= PE_down_line_23_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_25 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_25 <= PE_down_line_24_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_26 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_26 <= PE_down_line_25_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_27 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_27 <= PE_down_line_26_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_28 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_28 <= PE_down_line_27_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_29 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_29 <= PE_down_line_28_io_t_out[31];
    end
    if (reset) begin
      t_lu_downlines_reg_30 <= 1'h0;
    end else if (!(control_reg)) begin
      t_lu_downlines_reg_30 <= PE_down_line_29_io_t_out[31];
    end
  end
endmodule
