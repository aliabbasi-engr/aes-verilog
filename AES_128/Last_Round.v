
// Logic of the last encryption round without mixing columns

module Last_Round(
	
	// Input data
	input [7:0] i_dataArray_00,
	input [7:0] i_dataArray_01,
	input [7:0] i_dataArray_02,
	input [7:0] i_dataArray_03,
	input [7:0] i_dataArray_10,
	input [7:0] i_dataArray_11,
	input [7:0] i_dataArray_12,
	input [7:0] i_dataArray_13,
	input [7:0] i_dataArray_20,
	input [7:0] i_dataArray_21,
	input [7:0] i_dataArray_22,
	input [7:0] i_dataArray_23,
	input [7:0] i_dataArray_30,
	input [7:0] i_dataArray_31,
	input [7:0] i_dataArray_32,
	input [7:0] i_dataArray_33,
	
	// Key
	input [7:0] i_keyArray_00,
	input [7:0] i_keyArray_01,
	input [7:0] i_keyArray_02,
	input [7:0] i_keyArray_03,
	input [7:0] i_keyArray_10,
	input [7:0] i_keyArray_11,
	input [7:0] i_keyArray_12,
	input [7:0] i_keyArray_13,
	input [7:0] i_keyArray_20,
	input [7:0] i_keyArray_21,
	input [7:0] i_keyArray_22,
	input [7:0] i_keyArray_23,
	input [7:0] i_keyArray_30,
	input [7:0] i_keyArray_31,
	input [7:0] i_keyArray_32,
	input [7:0] i_keyArray_33,
	
	// Output
	output [7:0] o_cipherArray_00,
	output [7:0] o_cipherArray_01,
	output [7:0] o_cipherArray_02,
	output [7:0] o_cipherArray_03,
	output [7:0] o_cipherArray_10,
	output [7:0] o_cipherArray_11,
	output [7:0] o_cipherArray_12,
	output [7:0] o_cipherArray_13,
	output [7:0] o_cipherArray_20,
	output [7:0] o_cipherArray_21,
	output [7:0] o_cipherArray_22,
	output [7:0] o_cipherArray_23,
	output [7:0] o_cipherArray_30,
	output [7:0] o_cipherArray_31,
	output [7:0] o_cipherArray_32,
	output [7:0] o_cipherArray_33
	);
	
	wire [7:0] w_substitutedArray_00;
	wire [7:0] w_substitutedArray_01;
	wire [7:0] w_substitutedArray_02;
	wire [7:0] w_substitutedArray_03;
	wire [7:0] w_substitutedArray_10;
	wire [7:0] w_substitutedArray_11;
	wire [7:0] w_substitutedArray_12;
	wire [7:0] w_substitutedArray_13;
	wire [7:0] w_substitutedArray_20;
	wire [7:0] w_substitutedArray_21;
	wire [7:0] w_substitutedArray_22;
	wire [7:0] w_substitutedArray_23;
	wire [7:0] w_substitutedArray_30;
	wire [7:0] w_substitutedArray_31;
	wire [7:0] w_substitutedArray_32;
	wire [7:0] w_substitutedArray_33;

	wire [7:0] w_shiftedArray_00;
	wire [7:0] w_shiftedArray_01;
	wire [7:0] w_shiftedArray_02;
	wire [7:0] w_shiftedArray_03;
	wire [7:0] w_shiftedArray_10;
	wire [7:0] w_shiftedArray_11;
	wire [7:0] w_shiftedArray_12;
	wire [7:0] w_shiftedArray_13;
	wire [7:0] w_shiftedArray_20;
	wire [7:0] w_shiftedArray_21;
	wire [7:0] w_shiftedArray_22;
	wire [7:0] w_shiftedArray_23;
	wire [7:0] w_shiftedArray_30;
	wire [7:0] w_shiftedArray_31;
	wire [7:0] w_shiftedArray_32;
	wire [7:0] w_shiftedArray_33;

	Substitute Substitute_inst
	(
		.i_plainArray_00(i_dataArray_00) ,	// input [7:0] i_plainArray_00_sig
		.i_plainArray_01(i_dataArray_01) ,	// input [7:0] i_plainArray_01_sig
		.i_plainArray_02(i_dataArray_02) ,	// input [7:0] i_plainArray_02_sig
		.i_plainArray_03(i_dataArray_03) ,	// input [7:0] i_plainArray_03_sig
		.i_plainArray_10(i_dataArray_10) ,	// input [7:0] i_plainArray_10_sig
		.i_plainArray_11(i_dataArray_11) ,	// input [7:0] i_plainArray_11_sig
		.i_plainArray_12(i_dataArray_12) ,	// input [7:0] i_plainArray_12_sig
		.i_plainArray_13(i_dataArray_13) ,	// input [7:0] i_plainArray_13_sig
		.i_plainArray_20(i_dataArray_20) ,	// input [7:0] i_plainArray_20_sig
		.i_plainArray_21(i_dataArray_21) ,	// input [7:0] i_plainArray_21_sig
		.i_plainArray_22(i_dataArray_22) ,	// input [7:0] i_plainArray_22_sig
		.i_plainArray_23(i_dataArray_23) ,	// input [7:0] i_plainArray_23_sig
		.i_plainArray_30(i_dataArray_30) ,	// input [7:0] i_plainArray_30_sig
		.i_plainArray_31(i_dataArray_31) ,	// input [7:0] i_plainArray_31_sig
		.i_plainArray_32(i_dataArray_32) ,	// input [7:0] i_plainArray_32_sig
		.i_plainArray_33(i_dataArray_33) ,	// input [7:0] i_plainArray_33_sig
		
		.o_substitutedArray_00(w_substitutedArray_00) ,	// output [7:0] o_substitutedArray_00_sig
		.o_substitutedArray_01(w_substitutedArray_01) ,	// output [7:0] o_substitutedArray_01_sig
		.o_substitutedArray_02(w_substitutedArray_02) ,	// output [7:0] o_substitutedArray_02_sig
		.o_substitutedArray_03(w_substitutedArray_03) ,	// output [7:0] o_substitutedArray_03_sig
		.o_substitutedArray_10(w_substitutedArray_10) ,	// output [7:0] o_substitutedArray_10_sig
		.o_substitutedArray_11(w_substitutedArray_11) ,	// output [7:0] o_substitutedArray_11_sig
		.o_substitutedArray_12(w_substitutedArray_12) ,	// output [7:0] o_substitutedArray_12_sig
		.o_substitutedArray_13(w_substitutedArray_13) ,	// output [7:0] o_substitutedArray_13_sig
		.o_substitutedArray_20(w_substitutedArray_20) ,	// output [7:0] o_substitutedArray_20_sig
		.o_substitutedArray_21(w_substitutedArray_21) ,	// output [7:0] o_substitutedArray_21_sig
		.o_substitutedArray_22(w_substitutedArray_22) ,	// output [7:0] o_substitutedArray_22_sig
		.o_substitutedArray_23(w_substitutedArray_23) ,	// output [7:0] o_substitutedArray_23_sig
		.o_substitutedArray_30(w_substitutedArray_30) ,	// output [7:0] o_substitutedArray_30_sig
		.o_substitutedArray_31(w_substitutedArray_31) ,	// output [7:0] o_substitutedArray_31_sig
		.o_substitutedArray_32(w_substitutedArray_32) ,	// output [7:0] o_substitutedArray_32_sig
		.o_substitutedArray_33(w_substitutedArray_33) 	// output [7:0] o_substitutedArray_33_sig
	);

	Shift_Rows Shift_Rows_inst
	(
		.i_plainArray_00(w_substitutedArray_00) ,	// input [7:0] i_plainArray_00_sig
		.i_plainArray_01(w_substitutedArray_01) ,	// input [7:0] i_plainArray_01_sig
		.i_plainArray_02(w_substitutedArray_02) ,	// input [7:0] i_plainArray_02_sig
		.i_plainArray_03(w_substitutedArray_03) ,	// input [7:0] i_plainArray_03_sig
		.i_plainArray_10(w_substitutedArray_10) ,	// input [7:0] i_plainArray_10_sig
		.i_plainArray_11(w_substitutedArray_11) ,	// input [7:0] i_plainArray_11_sig
		.i_plainArray_12(w_substitutedArray_12) ,	// input [7:0] i_plainArray_12_sig
		.i_plainArray_13(w_substitutedArray_13) ,	// input [7:0] i_plainArray_13_sig
		.i_plainArray_20(w_substitutedArray_20) ,	// input [7:0] i_plainArray_20_sig
		.i_plainArray_21(w_substitutedArray_21) ,	// input [7:0] i_plainArray_21_sig
		.i_plainArray_22(w_substitutedArray_22) ,	// input [7:0] i_plainArray_22_sig
		.i_plainArray_23(w_substitutedArray_23) ,	// input [7:0] i_plainArray_23_sig
		.i_plainArray_30(w_substitutedArray_30) ,	// input [7:0] i_plainArray_30_sig
		.i_plainArray_31(w_substitutedArray_31) ,	// input [7:0] i_plainArray_31_sig
		.i_plainArray_32(w_substitutedArray_32) ,	// input [7:0] i_plainArray_32_sig
		.i_plainArray_33(w_substitutedArray_33) ,	// input [7:0] i_plainArray_33_sig
		
		.o_shiftedArray_00(w_shiftedArray_00) ,	// output [7:0] o_shiftedArray_00_sig
		.o_shiftedArray_01(w_shiftedArray_01) ,	// output [7:0] o_shiftedArray_01_sig
		.o_shiftedArray_02(w_shiftedArray_02) ,	// output [7:0] o_shiftedArray_02_sig
		.o_shiftedArray_03(w_shiftedArray_03) ,	// output [7:0] o_shiftedArray_03_sig
		.o_shiftedArray_10(w_shiftedArray_10) ,	// output [7:0] o_shiftedArray_10_sig
		.o_shiftedArray_11(w_shiftedArray_11) ,	// output [7:0] o_shiftedArray_11_sig
		.o_shiftedArray_12(w_shiftedArray_12) ,	// output [7:0] o_shiftedArray_12_sig
		.o_shiftedArray_13(w_shiftedArray_13) ,	// output [7:0] o_shiftedArray_13_sig
		.o_shiftedArray_20(w_shiftedArray_20) ,	// output [7:0] o_shiftedArray_20_sig
		.o_shiftedArray_21(w_shiftedArray_21) ,	// output [7:0] o_shiftedArray_21_sig
		.o_shiftedArray_22(w_shiftedArray_22) ,	// output [7:0] o_shiftedArray_22_sig
		.o_shiftedArray_23(w_shiftedArray_23) ,	// output [7:0] o_shiftedArray_23_sig
		.o_shiftedArray_30(w_shiftedArray_30) ,	// output [7:0] o_shiftedArray_30_sig
		.o_shiftedArray_31(w_shiftedArray_31) ,	// output [7:0] o_shiftedArray_31_sig
		.o_shiftedArray_32(w_shiftedArray_32) ,	// output [7:0] o_shiftedArray_32_sig
		.o_shiftedArray_33(w_shiftedArray_33) 	// output [7:0] o_shiftedArray_33_sig
	);


	Add_RoundKey Add_RoundKey_inst
	(
		.i_dataArray_00(w_shiftedArray_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_shiftedArray_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_shiftedArray_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_shiftedArray_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_shiftedArray_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_shiftedArray_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_shiftedArray_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_shiftedArray_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_shiftedArray_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_shiftedArray_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_shiftedArray_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_shiftedArray_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_shiftedArray_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_shiftedArray_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_shiftedArray_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_shiftedArray_33) ,	// input [7:0] i_dataArray_33_sig
		
		.i_keyArray_00(i_keyArray_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(i_keyArray_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(i_keyArray_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(i_keyArray_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(i_keyArray_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(i_keyArray_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(i_keyArray_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(i_keyArray_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(i_keyArray_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(i_keyArray_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(i_keyArray_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(i_keyArray_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(i_keyArray_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(i_keyArray_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(i_keyArray_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(i_keyArray_33) ,	// input [7:0] i_keyArray_33_sig
		
		.o_cipherArray_00(o_cipherArray_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(o_cipherArray_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(o_cipherArray_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(o_cipherArray_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(o_cipherArray_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(o_cipherArray_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(o_cipherArray_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(o_cipherArray_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(o_cipherArray_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(o_cipherArray_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(o_cipherArray_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(o_cipherArray_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(o_cipherArray_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(o_cipherArray_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(o_cipherArray_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(o_cipherArray_33) 	// output [7:0] o_cipherArray_33_sig
	);
	
endmodule