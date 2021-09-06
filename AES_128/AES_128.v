
// Top-level module

module AES_128(
	input [127:0] i_plainText,
	input [127:0] i_key,
	output [127:0] o_cipherText
	);

	// 8*8 Key Matrix
	wire [7:0] w_keyArray_00;
	wire [7:0] w_keyArray_01;
	wire [7:0] w_keyArray_02;
	wire [7:0] w_keyArray_03;
	wire [7:0] w_keyArray_10;
	wire [7:0] w_keyArray_11;
	wire [7:0] w_keyArray_12;
	wire [7:0] w_keyArray_13;
	wire [7:0] w_keyArray_20;
	wire [7:0] w_keyArray_21;
	wire [7:0] w_keyArray_22;
	wire [7:0] w_keyArray_23;
	wire [7:0] w_keyArray_30;
	wire [7:0] w_keyArray_31;
	wire [7:0] w_keyArray_32;
	wire [7:0] w_keyArray_33;

	// Rounds Keys
	wire [7:0] w_key_round1_00;
	wire [7:0] w_key_round1_01;
	wire [7:0] w_key_round1_02;
	wire [7:0] w_key_round1_03;
	wire [7:0] w_key_round1_10;
	wire [7:0] w_key_round1_11;
	wire [7:0] w_key_round1_12;
	wire [7:0] w_key_round1_13;
	wire [7:0] w_key_round1_20;
	wire [7:0] w_key_round1_21;
	wire [7:0] w_key_round1_22;
	wire [7:0] w_key_round1_23;
	wire [7:0] w_key_round1_30;
	wire [7:0] w_key_round1_31;
	wire [7:0] w_key_round1_32;
	wire [7:0] w_key_round1_33;

	wire [7:0] w_key_round2_00;
	wire [7:0] w_key_round2_01;
	wire [7:0] w_key_round2_02;
	wire [7:0] w_key_round2_03;
	wire [7:0] w_key_round2_10;
	wire [7:0] w_key_round2_11;
	wire [7:0] w_key_round2_12;
	wire [7:0] w_key_round2_13;
	wire [7:0] w_key_round2_20;
	wire [7:0] w_key_round2_21;
	wire [7:0] w_key_round2_22;
	wire [7:0] w_key_round2_23;
	wire [7:0] w_key_round2_30;
	wire [7:0] w_key_round2_31;
	wire [7:0] w_key_round2_32;
	wire [7:0] w_key_round2_33;

	wire [7:0] w_key_round3_00;
	wire [7:0] w_key_round3_01;
	wire [7:0] w_key_round3_02;
	wire [7:0] w_key_round3_03;
	wire [7:0] w_key_round3_10;
	wire [7:0] w_key_round3_11;
	wire [7:0] w_key_round3_12;
	wire [7:0] w_key_round3_13;
	wire [7:0] w_key_round3_20;
	wire [7:0] w_key_round3_21;
	wire [7:0] w_key_round3_22;
	wire [7:0] w_key_round3_23;
	wire [7:0] w_key_round3_30;
	wire [7:0] w_key_round3_31;
	wire [7:0] w_key_round3_32;
	wire [7:0] w_key_round3_33;

	wire [7:0] w_key_round4_00;
	wire [7:0] w_key_round4_01;
	wire [7:0] w_key_round4_02;
	wire [7:0] w_key_round4_03;
	wire [7:0] w_key_round4_10;
	wire [7:0] w_key_round4_11;
	wire [7:0] w_key_round4_12;
	wire [7:0] w_key_round4_13;
	wire [7:0] w_key_round4_20;
	wire [7:0] w_key_round4_21;
	wire [7:0] w_key_round4_22;
	wire [7:0] w_key_round4_23;
	wire [7:0] w_key_round4_30;
	wire [7:0] w_key_round4_31;
	wire [7:0] w_key_round4_32;
	wire [7:0] w_key_round4_33;

	wire [7:0] w_key_round5_00;
	wire [7:0] w_key_round5_01;
	wire [7:0] w_key_round5_02;
	wire [7:0] w_key_round5_03;
	wire [7:0] w_key_round5_10;
	wire [7:0] w_key_round5_11;
	wire [7:0] w_key_round5_12;
	wire [7:0] w_key_round5_13;
	wire [7:0] w_key_round5_20;
	wire [7:0] w_key_round5_21;
	wire [7:0] w_key_round5_22;
	wire [7:0] w_key_round5_23;
	wire [7:0] w_key_round5_30;
	wire [7:0] w_key_round5_31;
	wire [7:0] w_key_round5_32;
	wire [7:0] w_key_round5_33;

	wire [7:0] w_key_round6_00;
	wire [7:0] w_key_round6_01;
	wire [7:0] w_key_round6_02;
	wire [7:0] w_key_round6_03;
	wire [7:0] w_key_round6_10;
	wire [7:0] w_key_round6_11;
	wire [7:0] w_key_round6_12;
	wire [7:0] w_key_round6_13;
	wire [7:0] w_key_round6_20;
	wire [7:0] w_key_round6_21;
	wire [7:0] w_key_round6_22;
	wire [7:0] w_key_round6_23;
	wire [7:0] w_key_round6_30;
	wire [7:0] w_key_round6_31;
	wire [7:0] w_key_round6_32;
	wire [7:0] w_key_round6_33;

	wire [7:0] w_key_round7_00;
	wire [7:0] w_key_round7_01;
	wire [7:0] w_key_round7_02;
	wire [7:0] w_key_round7_03;
	wire [7:0] w_key_round7_10;
	wire [7:0] w_key_round7_11;
	wire [7:0] w_key_round7_12;
	wire [7:0] w_key_round7_13;
	wire [7:0] w_key_round7_20;
	wire [7:0] w_key_round7_21;
	wire [7:0] w_key_round7_22;
	wire [7:0] w_key_round7_23;
	wire [7:0] w_key_round7_30;
	wire [7:0] w_key_round7_31;
	wire [7:0] w_key_round7_32;
	wire [7:0] w_key_round7_33;

	wire [7:0] w_key_round8_00;
	wire [7:0] w_key_round8_01;
	wire [7:0] w_key_round8_02;
	wire [7:0] w_key_round8_03;
	wire [7:0] w_key_round8_10;
	wire [7:0] w_key_round8_11;
	wire [7:0] w_key_round8_12;
	wire [7:0] w_key_round8_13;
	wire [7:0] w_key_round8_20;
	wire [7:0] w_key_round8_21;
	wire [7:0] w_key_round8_22;
	wire [7:0] w_key_round8_23;
	wire [7:0] w_key_round8_30;
	wire [7:0] w_key_round8_31;
	wire [7:0] w_key_round8_32;
	wire [7:0] w_key_round8_33;

	wire [7:0] w_key_round9_00;
	wire [7:0] w_key_round9_01;
	wire [7:0] w_key_round9_02;
	wire [7:0] w_key_round9_03;
	wire [7:0] w_key_round9_10;
	wire [7:0] w_key_round9_11;
	wire [7:0] w_key_round9_12;
	wire [7:0] w_key_round9_13;
	wire [7:0] w_key_round9_20;
	wire [7:0] w_key_round9_21;
	wire [7:0] w_key_round9_22;
	wire [7:0] w_key_round9_23;
	wire [7:0] w_key_round9_30;
	wire [7:0] w_key_round9_31;
	wire [7:0] w_key_round9_32;
	wire [7:0] w_key_round9_33;

	wire [7:0] w_key_round10_00;
	wire [7:0] w_key_round10_01;
	wire [7:0] w_key_round10_02;
	wire [7:0] w_key_round10_03;
	wire [7:0] w_key_round10_10;
	wire [7:0] w_key_round10_11;
	wire [7:0] w_key_round10_12;
	wire [7:0] w_key_round10_13;
	wire [7:0] w_key_round10_20;
	wire [7:0] w_key_round10_21;
	wire [7:0] w_key_round10_22;
	wire [7:0] w_key_round10_23;
	wire [7:0] w_key_round10_30;
	wire [7:0] w_key_round10_31;
	wire [7:0] w_key_round10_32;
	wire [7:0] w_key_round10_33;

	// 8*8 plaintext matrix
	wire [7:0] w_plainTextArray_00;
	wire [7:0] w_plainTextArray_01;
	wire [7:0] w_plainTextArray_02;
	wire [7:0] w_plainTextArray_03;
	wire [7:0] w_plainTextArray_10;
	wire [7:0] w_plainTextArray_11;
	wire [7:0] w_plainTextArray_12;
	wire [7:0] w_plainTextArray_13;
	wire [7:0] w_plainTextArray_20;
	wire [7:0] w_plainTextArray_21;
	wire [7:0] w_plainTextArray_22;
	wire [7:0] w_plainTextArray_23;
	wire [7:0] w_plainTextArray_30;
	wire [7:0] w_plainTextArray_31;
	wire [7:0] w_plainTextArray_32;
	wire [7:0] w_plainTextArray_33;

	// Results of each encryption round
	wire [7:0] w_cipherText_round0_00;
	wire [7:0] w_cipherText_round0_01;
	wire [7:0] w_cipherText_round0_02;
	wire [7:0] w_cipherText_round0_03;
	wire [7:0] w_cipherText_round0_10;
	wire [7:0] w_cipherText_round0_11;
	wire [7:0] w_cipherText_round0_12;
	wire [7:0] w_cipherText_round0_13;
	wire [7:0] w_cipherText_round0_20;
	wire [7:0] w_cipherText_round0_21;
	wire [7:0] w_cipherText_round0_22;
	wire [7:0] w_cipherText_round0_23;
	wire [7:0] w_cipherText_round0_30;
	wire [7:0] w_cipherText_round0_31;
	wire [7:0] w_cipherText_round0_32;
	wire [7:0] w_cipherText_round0_33;

	wire [7:0] w_cipherText_round1_00;
	wire [7:0] w_cipherText_round1_01;
	wire [7:0] w_cipherText_round1_02;
	wire [7:0] w_cipherText_round1_03;
	wire [7:0] w_cipherText_round1_10;
	wire [7:0] w_cipherText_round1_11;
	wire [7:0] w_cipherText_round1_12;
	wire [7:0] w_cipherText_round1_13;
	wire [7:0] w_cipherText_round1_20;
	wire [7:0] w_cipherText_round1_21;
	wire [7:0] w_cipherText_round1_22;
	wire [7:0] w_cipherText_round1_23;
	wire [7:0] w_cipherText_round1_30;
	wire [7:0] w_cipherText_round1_31;
	wire [7:0] w_cipherText_round1_32;
	wire [7:0] w_cipherText_round1_33;


	wire [7:0] w_cipherText_round2_00;
	wire [7:0] w_cipherText_round2_01;
	wire [7:0] w_cipherText_round2_02;
	wire [7:0] w_cipherText_round2_03;
	wire [7:0] w_cipherText_round2_10;
	wire [7:0] w_cipherText_round2_11;
	wire [7:0] w_cipherText_round2_12;
	wire [7:0] w_cipherText_round2_13;
	wire [7:0] w_cipherText_round2_20;
	wire [7:0] w_cipherText_round2_21;
	wire [7:0] w_cipherText_round2_22;
	wire [7:0] w_cipherText_round2_23;
	wire [7:0] w_cipherText_round2_30;
	wire [7:0] w_cipherText_round2_31;
	wire [7:0] w_cipherText_round2_32;
	wire [7:0] w_cipherText_round2_33;

	wire [7:0] w_cipherText_round3_00;
	wire [7:0] w_cipherText_round3_01;
	wire [7:0] w_cipherText_round3_02;
	wire [7:0] w_cipherText_round3_03;
	wire [7:0] w_cipherText_round3_10;
	wire [7:0] w_cipherText_round3_11;
	wire [7:0] w_cipherText_round3_12;
	wire [7:0] w_cipherText_round3_13;
	wire [7:0] w_cipherText_round3_20;
	wire [7:0] w_cipherText_round3_21;
	wire [7:0] w_cipherText_round3_22;
	wire [7:0] w_cipherText_round3_23;
	wire [7:0] w_cipherText_round3_30;
	wire [7:0] w_cipherText_round3_31;
	wire [7:0] w_cipherText_round3_32;
	wire [7:0] w_cipherText_round3_33;

	wire [7:0] w_cipherText_round4_00;
	wire [7:0] w_cipherText_round4_01;
	wire [7:0] w_cipherText_round4_02;
	wire [7:0] w_cipherText_round4_03;
	wire [7:0] w_cipherText_round4_10;
	wire [7:0] w_cipherText_round4_11;
	wire [7:0] w_cipherText_round4_12;
	wire [7:0] w_cipherText_round4_13;
	wire [7:0] w_cipherText_round4_20;
	wire [7:0] w_cipherText_round4_21;
	wire [7:0] w_cipherText_round4_22;
	wire [7:0] w_cipherText_round4_23;
	wire [7:0] w_cipherText_round4_30;
	wire [7:0] w_cipherText_round4_31;
	wire [7:0] w_cipherText_round4_32;
	wire [7:0] w_cipherText_round4_33;

	wire [7:0] w_cipherText_round5_00;
	wire [7:0] w_cipherText_round5_01;
	wire [7:0] w_cipherText_round5_02;
	wire [7:0] w_cipherText_round5_03;
	wire [7:0] w_cipherText_round5_10;
	wire [7:0] w_cipherText_round5_11;
	wire [7:0] w_cipherText_round5_12;
	wire [7:0] w_cipherText_round5_13;
	wire [7:0] w_cipherText_round5_20;
	wire [7:0] w_cipherText_round5_21;
	wire [7:0] w_cipherText_round5_22;
	wire [7:0] w_cipherText_round5_23;
	wire [7:0] w_cipherText_round5_30;
	wire [7:0] w_cipherText_round5_31;
	wire [7:0] w_cipherText_round5_32;
	wire [7:0] w_cipherText_round5_33;

	wire [7:0] w_cipherText_round6_00;
	wire [7:0] w_cipherText_round6_01;
	wire [7:0] w_cipherText_round6_02;
	wire [7:0] w_cipherText_round6_03;
	wire [7:0] w_cipherText_round6_10;
	wire [7:0] w_cipherText_round6_11;
	wire [7:0] w_cipherText_round6_12;
	wire [7:0] w_cipherText_round6_13;
	wire [7:0] w_cipherText_round6_20;
	wire [7:0] w_cipherText_round6_21;
	wire [7:0] w_cipherText_round6_22;
	wire [7:0] w_cipherText_round6_23;
	wire [7:0] w_cipherText_round6_30;
	wire [7:0] w_cipherText_round6_31;
	wire [7:0] w_cipherText_round6_32;
	wire [7:0] w_cipherText_round6_33;

	wire [7:0] w_cipherText_round7_00;
	wire [7:0] w_cipherText_round7_01;
	wire [7:0] w_cipherText_round7_02;
	wire [7:0] w_cipherText_round7_03;
	wire [7:0] w_cipherText_round7_10;
	wire [7:0] w_cipherText_round7_11;
	wire [7:0] w_cipherText_round7_12;
	wire [7:0] w_cipherText_round7_13;
	wire [7:0] w_cipherText_round7_20;
	wire [7:0] w_cipherText_round7_21;
	wire [7:0] w_cipherText_round7_22;
	wire [7:0] w_cipherText_round7_23;
	wire [7:0] w_cipherText_round7_30;
	wire [7:0] w_cipherText_round7_31;
	wire [7:0] w_cipherText_round7_32;
	wire [7:0] w_cipherText_round7_33;

	wire [7:0] w_cipherText_round8_00;
	wire [7:0] w_cipherText_round8_01;
	wire [7:0] w_cipherText_round8_02;
	wire [7:0] w_cipherText_round8_03;
	wire [7:0] w_cipherText_round8_10;
	wire [7:0] w_cipherText_round8_11;
	wire [7:0] w_cipherText_round8_12;
	wire [7:0] w_cipherText_round8_13;
	wire [7:0] w_cipherText_round8_20;
	wire [7:0] w_cipherText_round8_21;
	wire [7:0] w_cipherText_round8_22;
	wire [7:0] w_cipherText_round8_23;
	wire [7:0] w_cipherText_round8_30;
	wire [7:0] w_cipherText_round8_31;
	wire [7:0] w_cipherText_round8_32;
	wire [7:0] w_cipherText_round8_33;

	wire [7:0] w_cipherText_round9_00;
	wire [7:0] w_cipherText_round9_01;
	wire [7:0] w_cipherText_round9_02;
	wire [7:0] w_cipherText_round9_03;
	wire [7:0] w_cipherText_round9_10;
	wire [7:0] w_cipherText_round9_11;
	wire [7:0] w_cipherText_round9_12;
	wire [7:0] w_cipherText_round9_13;
	wire [7:0] w_cipherText_round9_20;
	wire [7:0] w_cipherText_round9_21;
	wire [7:0] w_cipherText_round9_22;
	wire [7:0] w_cipherText_round9_23;
	wire [7:0] w_cipherText_round9_30;
	wire [7:0] w_cipherText_round9_31;
	wire [7:0] w_cipherText_round9_32;
	wire [7:0] w_cipherText_round9_33;

	wire [7:0] w_cipherText_round10_00;
	wire [7:0] w_cipherText_round10_01;
	wire [7:0] w_cipherText_round10_02;
	wire [7:0] w_cipherText_round10_03;
	wire [7:0] w_cipherText_round10_10;
	wire [7:0] w_cipherText_round10_11;
	wire [7:0] w_cipherText_round10_12;
	wire [7:0] w_cipherText_round10_13;
	wire [7:0] w_cipherText_round10_20;
	wire [7:0] w_cipherText_round10_21;
	wire [7:0] w_cipherText_round10_22;
	wire [7:0] w_cipherText_round10_23;
	wire [7:0] w_cipherText_round10_30;
	wire [7:0] w_cipherText_round10_31;
	wire [7:0] w_cipherText_round10_32;
	wire [7:0] w_cipherText_round10_33;

	
	// Convert Input Key to Matrix
	Convert_to_Matrix Convert_to_Matrix_inst_key
	(
		.i_vector(i_key) ,	// input [127:0] i_vector_sig
		.o_dataArray_00(w_keyArray_00) ,	// output [7:0] o_dataArray_00_sig
		.o_dataArray_01(w_keyArray_01) ,	// output [7:0] o_dataArray_01_sig
		.o_dataArray_02(w_keyArray_02) ,	// output [7:0] o_dataArray_02_sig
		.o_dataArray_03(w_keyArray_03) ,	// output [7:0] o_dataArray_03_sig
		.o_dataArray_10(w_keyArray_10) ,	// output [7:0] o_dataArray_10_sig
		.o_dataArray_11(w_keyArray_11) ,	// output [7:0] o_dataArray_11_sig
		.o_dataArray_12(w_keyArray_12) ,	// output [7:0] o_dataArray_12_sig
		.o_dataArray_13(w_keyArray_13) ,	// output [7:0] o_dataArray_13_sig
		.o_dataArray_20(w_keyArray_20) ,	// output [7:0] o_dataArray_20_sig
		.o_dataArray_21(w_keyArray_21) ,	// output [7:0] o_dataArray_21_sig
		.o_dataArray_22(w_keyArray_22) ,	// output [7:0] o_dataArray_22_sig
		.o_dataArray_23(w_keyArray_23) ,	// output [7:0] o_dataArray_23_sig
		.o_dataArray_30(w_keyArray_30) ,	// output [7:0] o_dataArray_30_sig
		.o_dataArray_31(w_keyArray_31) ,	// output [7:0] o_dataArray_31_sig
		.o_dataArray_32(w_keyArray_32) ,	// output [7:0] o_dataArray_32_sig
		.o_dataArray_33(w_keyArray_33) 	// output [7:0] o_dataArray_33_sA
	);


	// Generating Key for Round 1
	Key_Generator Key_Generator_inst_round1
	(
		.i_roundNumber(4'h1) ,	// input [3:0] i_roundNumber_sig
		.i_word0_0(w_keyArray_00) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_keyArray_01) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_keyArray_02) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_keyArray_03) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_keyArray_10) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_keyArray_11) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_keyArray_12) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_keyArray_13) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_keyArray_20) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_keyArray_21) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_keyArray_22) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_keyArray_23) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_keyArray_30) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_keyArray_31) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_keyArray_32) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_keyArray_33) ,	// input [7:0] i_word3_3_sig
		.o_newWord0_0(w_key_round1_00) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_key_round1_01) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_key_round1_02) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_key_round1_03) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_key_round1_10) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_key_round1_11) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_key_round1_12) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_key_round1_13) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_key_round1_20) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_key_round1_21) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_key_round1_22) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_key_round1_23) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_key_round1_30) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_key_round1_31) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_key_round1_32) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_key_round1_33) 	// output [7:0] o_newWord3_3_sig
	);

	
	// Generating Key for Round 2
	Key_Generator Key_Generator_inst_round2
	(
		.i_roundNumber(4'h2) ,	// input [3:0] i_roundNumber_sig
		.i_word0_0(w_keyArray_00) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_keyArray_01) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_keyArray_02) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_keyArray_03) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_keyArray_10) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_keyArray_11) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_keyArray_12) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_keyArray_13) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_keyArray_20) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_keyArray_21) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_keyArray_22) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_keyArray_23) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_keyArray_30) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_keyArray_31) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_keyArray_32) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_keyArray_33) ,	// input [7:0] i_word3_3_sig
		.o_newWord0_0(w_key_round2_00) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_key_round2_01) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_key_round2_02) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_key_round2_03) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_key_round2_10) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_key_round2_11) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_key_round2_12) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_key_round2_13) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_key_round2_20) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_key_round2_21) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_key_round2_22) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_key_round2_23) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_key_round2_30) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_key_round2_31) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_key_round2_32) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_key_round2_33) 	// output [7:0] o_newWord3_3_sig
	);

	
	// Generating Key for Round 3
	Key_Generator Key_Generator_inst_round3
	(
		.i_roundNumber(4'h3) ,	// input [3:0] i_roundNumber_sig
		.i_word0_0(w_keyArray_00) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_keyArray_01) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_keyArray_02) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_keyArray_03) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_keyArray_10) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_keyArray_11) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_keyArray_12) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_keyArray_13) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_keyArray_20) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_keyArray_21) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_keyArray_22) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_keyArray_23) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_keyArray_30) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_keyArray_31) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_keyArray_32) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_keyArray_33) ,	// input [7:0] i_word3_3_sig
		.o_newWord0_0(w_key_round3_00) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_key_round3_01) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_key_round3_02) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_key_round3_03) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_key_round3_10) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_key_round3_11) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_key_round3_12) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_key_round3_13) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_key_round3_20) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_key_round3_21) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_key_round3_22) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_key_round3_23) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_key_round3_30) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_key_round3_31) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_key_round3_32) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_key_round3_33) 	// output [7:0] o_newWord3_3_sig
	);


	// Generating Key for Round 4	
	Key_Generator Key_Generator_inst_round4
	(
		.i_roundNumber(4'h4) ,	// input [3:0] i_roundNumber_sig
		.i_word0_0(w_keyArray_00) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_keyArray_01) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_keyArray_02) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_keyArray_03) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_keyArray_10) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_keyArray_11) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_keyArray_12) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_keyArray_13) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_keyArray_20) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_keyArray_21) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_keyArray_22) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_keyArray_23) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_keyArray_30) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_keyArray_31) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_keyArray_32) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_keyArray_33) ,	// input [7:0] i_word3_3_sig
		.o_newWord0_0(w_key_round4_00) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_key_round4_01) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_key_round4_02) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_key_round4_03) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_key_round4_10) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_key_round4_11) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_key_round4_12) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_key_round4_13) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_key_round4_20) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_key_round4_21) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_key_round4_22) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_key_round4_23) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_key_round4_30) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_key_round4_31) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_key_round4_32) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_key_round4_33) 	// output [7:0] o_newWord3_3_sig
	);


	// Generating Key for Round 5
	Key_Generator Key_Generator_inst_round5
	(
		.i_roundNumber(4'h5) ,	// input [3:0] i_roundNumber_sig
		.i_word0_0(w_keyArray_00) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_keyArray_01) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_keyArray_02) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_keyArray_03) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_keyArray_10) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_keyArray_11) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_keyArray_12) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_keyArray_13) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_keyArray_20) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_keyArray_21) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_keyArray_22) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_keyArray_23) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_keyArray_30) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_keyArray_31) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_keyArray_32) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_keyArray_33) ,	// input [7:0] i_word3_3_sig
		.o_newWord0_0(w_key_round5_00) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_key_round5_01) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_key_round5_02) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_key_round5_03) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_key_round5_10) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_key_round5_11) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_key_round5_12) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_key_round5_13) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_key_round5_20) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_key_round5_21) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_key_round5_22) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_key_round5_23) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_key_round5_30) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_key_round5_31) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_key_round5_32) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_key_round5_33) 	// output [7:0] o_newWord3_3_sig
	);


	// Generating Key for Round 6
	Key_Generator Key_Generator_inst_round6
	(
		.i_roundNumber(4'h6) ,	// input [3:0] i_roundNumber_sig
		.i_word0_0(w_keyArray_00) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_keyArray_01) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_keyArray_02) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_keyArray_03) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_keyArray_10) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_keyArray_11) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_keyArray_12) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_keyArray_13) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_keyArray_20) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_keyArray_21) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_keyArray_22) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_keyArray_23) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_keyArray_30) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_keyArray_31) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_keyArray_32) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_keyArray_33) ,	// input [7:0] i_word3_3_sig
		.o_newWord0_0(w_key_round6_00) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_key_round6_01) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_key_round6_02) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_key_round6_03) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_key_round6_10) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_key_round6_11) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_key_round6_12) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_key_round6_13) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_key_round6_20) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_key_round6_21) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_key_round6_22) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_key_round6_23) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_key_round6_30) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_key_round6_31) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_key_round6_32) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_key_round6_33) 	// output [7:0] o_newWord3_3_sig
	);


	// Generating Key for Round 7
	Key_Generator Key_Generator_inst_round7
	(
		.i_roundNumber(4'h7) ,	// input [3:0] i_roundNumber_sig
		.i_word0_0(w_keyArray_00) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_keyArray_01) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_keyArray_02) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_keyArray_03) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_keyArray_10) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_keyArray_11) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_keyArray_12) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_keyArray_13) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_keyArray_20) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_keyArray_21) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_keyArray_22) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_keyArray_23) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_keyArray_30) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_keyArray_31) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_keyArray_32) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_keyArray_33) ,	// input [7:0] i_word3_3_sig
		.o_newWord0_0(w_key_round7_00) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_key_round7_01) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_key_round7_02) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_key_round7_03) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_key_round7_10) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_key_round7_11) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_key_round7_12) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_key_round7_13) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_key_round7_20) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_key_round7_21) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_key_round7_22) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_key_round7_23) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_key_round7_30) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_key_round7_31) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_key_round7_32) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_key_round7_33) 	// output [7:0] o_newWord3_3_sig
	);


	// Generating Key for Round 8
	Key_Generator Key_Generator_inst_round8
	(
		.i_roundNumber(4'h8) ,	// input [3:0] i_roundNumber_sig
		.i_word0_0(w_keyArray_00) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_keyArray_01) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_keyArray_02) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_keyArray_03) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_keyArray_10) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_keyArray_11) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_keyArray_12) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_keyArray_13) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_keyArray_20) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_keyArray_21) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_keyArray_22) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_keyArray_23) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_keyArray_30) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_keyArray_31) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_keyArray_32) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_keyArray_33) ,	// input [7:0] i_word3_3_sig
		.o_newWord0_0(w_key_round8_00) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_key_round8_01) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_key_round8_02) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_key_round8_03) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_key_round8_10) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_key_round8_11) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_key_round8_12) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_key_round8_13) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_key_round8_20) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_key_round8_21) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_key_round8_22) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_key_round8_23) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_key_round8_30) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_key_round8_31) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_key_round8_32) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_key_round8_33) 	// output [7:0] o_newWord3_3_sig
	);


	// Generating Key for Round 9
	Key_Generator Key_Generator_inst_round9
	(
		.i_roundNumber(4'h9) ,	// input [3:0] i_roundNumber_sig
		.i_word0_0(w_keyArray_00) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_keyArray_01) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_keyArray_02) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_keyArray_03) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_keyArray_10) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_keyArray_11) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_keyArray_12) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_keyArray_13) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_keyArray_20) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_keyArray_21) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_keyArray_22) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_keyArray_23) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_keyArray_30) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_keyArray_31) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_keyArray_32) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_keyArray_33) ,	// input [7:0] i_word3_3_sig
		.o_newWord0_0(w_key_round9_00) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_key_round9_01) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_key_round9_02) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_key_round9_03) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_key_round9_10) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_key_round9_11) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_key_round9_12) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_key_round9_13) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_key_round9_20) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_key_round9_21) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_key_round9_22) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_key_round9_23) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_key_round9_30) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_key_round9_31) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_key_round9_32) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_key_round9_33) 	// output [7:0] o_newWord3_3_sig
	);


	// Generating Key for Round 10
	Key_Generator Key_Generator_inst_round10
	(
		.i_roundNumber(4'hA) ,	// input [3:0] i_roundNumber_sig
		.i_word0_0(w_keyArray_00) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_keyArray_01) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_keyArray_02) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_keyArray_03) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_keyArray_10) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_keyArray_11) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_keyArray_12) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_keyArray_13) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_keyArray_20) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_keyArray_21) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_keyArray_22) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_keyArray_23) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_keyArray_30) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_keyArray_31) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_keyArray_32) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_keyArray_33) ,	// input [7:0] i_word3_3_sig
		.o_newWord0_0(w_key_round10_00) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_key_round10_01) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_key_round10_02) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_key_round10_03) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_key_round10_10) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_key_round10_11) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_key_round10_12) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_key_round10_13) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_key_round10_20) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_key_round10_21) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_key_round10_22) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_key_round10_23) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_key_round10_30) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_key_round10_31) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_key_round10_32) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_key_round10_33) 	// output [7:0] o_newWord3_3_sig
	);

	
	// Converting Input Plaintext to Matrix
	Convert_to_Matrix Convert_to_Matrix_inst_plainText
	(
		.i_vector(i_plainText) ,	// input [127:0] i_vector_sig
		.o_dataArray_00(w_plainTextArray_00) ,	// output [7:0] o_dataArray_00_sig
		.o_dataArray_01(w_plainTextArray_01) ,	// output [7:0] o_dataArray_01_sig
		.o_dataArray_02(w_plainTextArray_02) ,	// output [7:0] o_dataArray_02_sig
		.o_dataArray_03(w_plainTextArray_03) ,	// output [7:0] o_dataArray_03_sig
		.o_dataArray_10(w_plainTextArray_10) ,	// output [7:0] o_dataArray_10_sig
		.o_dataArray_11(w_plainTextArray_11) ,	// output [7:0] o_dataArray_11_sig
		.o_dataArray_12(w_plainTextArray_12) ,	// output [7:0] o_dataArray_12_sig
		.o_dataArray_13(w_plainTextArray_13) ,	// output [7:0] o_dataArray_13_sig
		.o_dataArray_20(w_plainTextArray_20) ,	// output [7:0] o_dataArray_20_sig
		.o_dataArray_21(w_plainTextArray_21) ,	// output [7:0] o_dataArray_21_sig
		.o_dataArray_22(w_plainTextArray_22) ,	// output [7:0] o_dataArray_22_sig
		.o_dataArray_23(w_plainTextArray_23) ,	// output [7:0] o_dataArray_23_sig
		.o_dataArray_30(w_plainTextArray_30) ,	// output [7:0] o_dataArray_30_sig
		.o_dataArray_31(w_plainTextArray_31) ,	// output [7:0] o_dataArray_31_sig
		.o_dataArray_32(w_plainTextArray_32) ,	// output [7:0] o_dataArray_32_sig
		.o_dataArray_33(w_plainTextArray_33) 	// output [7:0] o_dataArray_33_sA
	);


	// Initial Round
	Add_RoundKey Add_RoundKey_inst
	(
		.i_dataArray_00(w_plainTextArray_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_plainTextArray_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_plainTextArray_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_plainTextArray_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_plainTextArray_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_plainTextArray_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_plainTextArray_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_plainTextArray_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_plainTextArray_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_plainTextArray_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_plainTextArray_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_plainTextArray_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_plainTextArray_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_plainTextArray_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_plainTextArray_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_plainTextArray_33) ,	// input [7:0] i_dataArray_33_sig
		.i_keyArray_00(w_keyArray_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(w_keyArray_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(w_keyArray_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(w_keyArray_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(w_keyArray_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(w_keyArray_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(w_keyArray_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(w_keyArray_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(w_keyArray_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(w_keyArray_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(w_keyArray_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(w_keyArray_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(w_keyArray_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(w_keyArray_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(w_keyArray_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(w_keyArray_33) ,	// input [7:0] i_keyArray_33_sig
		.o_cipherArray_00(w_cipherText_round0_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(w_cipherText_round0_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(w_cipherText_round0_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(w_cipherText_round0_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(w_cipherText_round0_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(w_cipherText_round0_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(w_cipherText_round0_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(w_cipherText_round0_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(w_cipherText_round0_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(w_cipherText_round0_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(w_cipherText_round0_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(w_cipherText_round0_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(w_cipherText_round0_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(w_cipherText_round0_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(w_cipherText_round0_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(w_cipherText_round0_33) 	// output [7:0] o_cipherArray_33_sig
	);

	// Round 1
	Encryption_Round Encryption_Round_inst_round1
	(
		.i_dataArray_00(w_cipherText_round0_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_cipherText_round0_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_cipherText_round0_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_cipherText_round0_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_cipherText_round0_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_cipherText_round0_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_cipherText_round0_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_cipherText_round0_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_cipherText_round0_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_cipherText_round0_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_cipherText_round0_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_cipherText_round0_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_cipherText_round0_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_cipherText_round0_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_cipherText_round0_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_cipherText_round0_33) ,	// input [7:0] i_dataArray_33_sig
		.i_keyArray_00(w_key_round1_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(w_key_round1_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(w_key_round1_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(w_key_round1_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(w_key_round1_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(w_key_round1_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(w_key_round1_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(w_key_round1_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(w_key_round1_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(w_key_round1_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(w_key_round1_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(w_key_round1_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(w_key_round1_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(w_key_round1_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(w_key_round1_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(w_key_round1_33) ,	// input [7:0] i_keyArray_33_sig
		.o_cipherArray_00(w_cipherText_round1_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(w_cipherText_round1_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(w_cipherText_round1_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(w_cipherText_round1_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(w_cipherText_round1_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(w_cipherText_round1_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(w_cipherText_round1_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(w_cipherText_round1_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(w_cipherText_round1_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(w_cipherText_round1_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(w_cipherText_round1_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(w_cipherText_round1_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(w_cipherText_round1_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(w_cipherText_round1_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(w_cipherText_round1_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(w_cipherText_round1_33) 	// output [7:0] o_cipherArray_33_sig
	);


	// Round 2
	Encryption_Round Encryption_Round_inst_round2
	(
		.i_dataArray_00(w_cipherText_round1_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_cipherText_round1_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_cipherText_round1_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_cipherText_round1_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_cipherText_round1_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_cipherText_round1_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_cipherText_round1_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_cipherText_round1_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_cipherText_round1_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_cipherText_round1_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_cipherText_round1_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_cipherText_round1_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_cipherText_round1_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_cipherText_round1_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_cipherText_round1_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_cipherText_round1_33) ,	// input [7:0] i_dataArray_33_sig
		.i_keyArray_00(w_key_round2_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(w_key_round2_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(w_key_round2_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(w_key_round2_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(w_key_round2_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(w_key_round2_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(w_key_round2_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(w_key_round2_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(w_key_round2_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(w_key_round2_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(w_key_round2_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(w_key_round2_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(w_key_round2_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(w_key_round2_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(w_key_round2_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(w_key_round2_33) ,	// input [7:0] i_keyArray_33_sig
		.o_cipherArray_00(w_cipherText_round2_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(w_cipherText_round2_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(w_cipherText_round2_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(w_cipherText_round2_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(w_cipherText_round2_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(w_cipherText_round2_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(w_cipherText_round2_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(w_cipherText_round2_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(w_cipherText_round2_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(w_cipherText_round2_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(w_cipherText_round2_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(w_cipherText_round2_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(w_cipherText_round2_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(w_cipherText_round2_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(w_cipherText_round2_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(w_cipherText_round2_33) 	// output [7:0] o_cipherArray_33_sig
	);


	// Round 3
	Encryption_Round Encryption_Round_inst_round3
	(
		.i_dataArray_00(w_cipherText_round2_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_cipherText_round2_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_cipherText_round2_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_cipherText_round2_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_cipherText_round2_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_cipherText_round2_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_cipherText_round2_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_cipherText_round2_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_cipherText_round2_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_cipherText_round2_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_cipherText_round2_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_cipherText_round2_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_cipherText_round2_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_cipherText_round2_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_cipherText_round2_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_cipherText_round2_33) ,	// input [7:0] i_dataArray_33_sig
		.i_keyArray_00(w_key_round3_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(w_key_round3_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(w_key_round3_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(w_key_round3_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(w_key_round3_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(w_key_round3_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(w_key_round3_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(w_key_round3_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(w_key_round3_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(w_key_round3_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(w_key_round3_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(w_key_round3_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(w_key_round3_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(w_key_round3_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(w_key_round3_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(w_key_round3_33) ,	// input [7:0] i_keyArray_33_sig
		.o_cipherArray_00(w_cipherText_round3_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(w_cipherText_round3_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(w_cipherText_round3_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(w_cipherText_round3_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(w_cipherText_round3_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(w_cipherText_round3_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(w_cipherText_round3_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(w_cipherText_round3_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(w_cipherText_round3_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(w_cipherText_round3_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(w_cipherText_round3_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(w_cipherText_round3_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(w_cipherText_round3_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(w_cipherText_round3_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(w_cipherText_round3_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(w_cipherText_round3_33) 	// output [7:0] o_cipherArray_33_sig
	);


	// Round 4
	Encryption_Round Encryption_Round_inst_round4
	(
		.i_dataArray_00(w_cipherText_round3_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_cipherText_round3_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_cipherText_round3_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_cipherText_round3_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_cipherText_round3_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_cipherText_round3_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_cipherText_round3_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_cipherText_round3_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_cipherText_round3_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_cipherText_round3_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_cipherText_round3_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_cipherText_round3_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_cipherText_round3_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_cipherText_round3_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_cipherText_round3_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_cipherText_round3_33) ,	// input [7:0] i_dataArray_33_sig
		.i_keyArray_00(w_key_round4_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(w_key_round4_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(w_key_round4_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(w_key_round4_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(w_key_round4_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(w_key_round4_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(w_key_round4_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(w_key_round4_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(w_key_round4_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(w_key_round4_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(w_key_round4_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(w_key_round4_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(w_key_round4_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(w_key_round4_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(w_key_round4_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(w_key_round4_33) ,	// input [7:0] i_keyArray_33_sig
		.o_cipherArray_00(w_cipherText_round4_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(w_cipherText_round4_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(w_cipherText_round4_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(w_cipherText_round4_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(w_cipherText_round4_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(w_cipherText_round4_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(w_cipherText_round4_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(w_cipherText_round4_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(w_cipherText_round4_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(w_cipherText_round4_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(w_cipherText_round4_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(w_cipherText_round4_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(w_cipherText_round4_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(w_cipherText_round4_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(w_cipherText_round4_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(w_cipherText_round4_33) 	// output [7:0] o_cipherArray_33_sig
	);


	// Round 5
	Encryption_Round Encryption_Round_inst_round5
	(
		.i_dataArray_00(w_cipherText_round4_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_cipherText_round4_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_cipherText_round4_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_cipherText_round4_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_cipherText_round4_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_cipherText_round4_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_cipherText_round4_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_cipherText_round4_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_cipherText_round4_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_cipherText_round4_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_cipherText_round4_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_cipherText_round4_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_cipherText_round4_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_cipherText_round4_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_cipherText_round4_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_cipherText_round4_33) ,	// input [7:0] i_dataArray_33_sig
		.i_keyArray_00(w_key_round5_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(w_key_round5_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(w_key_round5_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(w_key_round5_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(w_key_round5_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(w_key_round5_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(w_key_round5_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(w_key_round5_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(w_key_round5_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(w_key_round5_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(w_key_round5_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(w_key_round5_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(w_key_round5_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(w_key_round5_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(w_key_round5_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(w_key_round5_33) ,	// input [7:0] i_keyArray_33_sig
		.o_cipherArray_00(w_cipherText_round5_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(w_cipherText_round5_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(w_cipherText_round5_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(w_cipherText_round5_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(w_cipherText_round5_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(w_cipherText_round5_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(w_cipherText_round5_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(w_cipherText_round5_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(w_cipherText_round5_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(w_cipherText_round5_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(w_cipherText_round5_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(w_cipherText_round5_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(w_cipherText_round5_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(w_cipherText_round5_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(w_cipherText_round5_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(w_cipherText_round5_33) 	// output [7:0] o_cipherArray_33_sig
	);


	// Round 6
	Encryption_Round Encryption_Round_inst_round6
	(
		.i_dataArray_00(w_cipherText_round5_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_cipherText_round5_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_cipherText_round5_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_cipherText_round5_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_cipherText_round5_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_cipherText_round5_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_cipherText_round5_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_cipherText_round5_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_cipherText_round5_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_cipherText_round5_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_cipherText_round5_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_cipherText_round5_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_cipherText_round5_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_cipherText_round5_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_cipherText_round5_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_cipherText_round5_33) ,	// input [7:0] i_dataArray_33_sig
		.i_keyArray_00(w_key_round6_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(w_key_round6_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(w_key_round6_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(w_key_round6_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(w_key_round6_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(w_key_round6_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(w_key_round6_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(w_key_round6_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(w_key_round6_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(w_key_round6_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(w_key_round6_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(w_key_round6_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(w_key_round6_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(w_key_round6_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(w_key_round6_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(w_key_round6_33) ,	// input [7:0] i_keyArray_33_sig
		.o_cipherArray_00(w_cipherText_round6_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(w_cipherText_round6_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(w_cipherText_round6_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(w_cipherText_round6_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(w_cipherText_round6_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(w_cipherText_round6_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(w_cipherText_round6_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(w_cipherText_round6_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(w_cipherText_round6_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(w_cipherText_round6_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(w_cipherText_round6_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(w_cipherText_round6_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(w_cipherText_round6_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(w_cipherText_round6_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(w_cipherText_round6_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(w_cipherText_round6_33) 	// output [7:0] o_cipherArray_33_sig
	);

	
	// Round 7
	Encryption_Round Encryption_Round_inst_round7
	(
		.i_dataArray_00(w_cipherText_round6_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_cipherText_round6_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_cipherText_round6_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_cipherText_round6_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_cipherText_round6_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_cipherText_round6_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_cipherText_round6_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_cipherText_round6_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_cipherText_round6_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_cipherText_round6_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_cipherText_round6_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_cipherText_round6_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_cipherText_round6_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_cipherText_round6_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_cipherText_round6_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_cipherText_round6_33) ,	// input [7:0] i_dataArray_33_sig
		.i_keyArray_00(w_key_round7_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(w_key_round7_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(w_key_round7_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(w_key_round7_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(w_key_round7_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(w_key_round7_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(w_key_round7_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(w_key_round7_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(w_key_round7_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(w_key_round7_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(w_key_round7_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(w_key_round7_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(w_key_round7_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(w_key_round7_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(w_key_round7_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(w_key_round7_33) ,	// input [7:0] i_keyArray_33_sig
		.o_cipherArray_00(w_cipherText_round7_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(w_cipherText_round7_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(w_cipherText_round7_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(w_cipherText_round7_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(w_cipherText_round7_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(w_cipherText_round7_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(w_cipherText_round7_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(w_cipherText_round7_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(w_cipherText_round7_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(w_cipherText_round7_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(w_cipherText_round7_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(w_cipherText_round7_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(w_cipherText_round7_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(w_cipherText_round7_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(w_cipherText_round7_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(w_cipherText_round7_33) 	// output [7:0] o_cipherArray_33_sig
	);


	// Round 8
	Encryption_Round Encryption_Round_inst_round8
	(
		.i_dataArray_00(w_cipherText_round7_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_cipherText_round7_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_cipherText_round7_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_cipherText_round7_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_cipherText_round7_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_cipherText_round7_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_cipherText_round7_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_cipherText_round7_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_cipherText_round7_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_cipherText_round7_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_cipherText_round7_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_cipherText_round7_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_cipherText_round7_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_cipherText_round7_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_cipherText_round7_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_cipherText_round7_33) ,	// input [7:0] i_dataArray_33_sig
		.i_keyArray_00(w_key_round8_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(w_key_round8_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(w_key_round8_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(w_key_round8_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(w_key_round8_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(w_key_round8_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(w_key_round8_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(w_key_round8_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(w_key_round8_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(w_key_round8_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(w_key_round8_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(w_key_round8_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(w_key_round8_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(w_key_round8_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(w_key_round8_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(w_key_round8_33) ,	// input [7:0] i_keyArray_33_sig
		.o_cipherArray_00(w_cipherText_round8_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(w_cipherText_round8_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(w_cipherText_round8_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(w_cipherText_round8_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(w_cipherText_round8_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(w_cipherText_round8_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(w_cipherText_round8_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(w_cipherText_round8_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(w_cipherText_round8_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(w_cipherText_round8_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(w_cipherText_round8_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(w_cipherText_round8_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(w_cipherText_round8_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(w_cipherText_round8_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(w_cipherText_round8_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(w_cipherText_round8_33) 	// output [7:0] o_cipherArray_33_sig
	);


	// Round 9
	Encryption_Round Encryption_Round_inst_round9
	(
		.i_dataArray_00(w_cipherText_round8_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_cipherText_round8_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_cipherText_round8_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_cipherText_round8_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_cipherText_round8_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_cipherText_round8_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_cipherText_round8_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_cipherText_round8_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_cipherText_round8_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_cipherText_round8_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_cipherText_round8_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_cipherText_round8_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_cipherText_round8_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_cipherText_round8_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_cipherText_round8_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_cipherText_round8_33) ,	// input [7:0] i_dataArray_33_sig
		.i_keyArray_00(w_key_round9_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(w_key_round9_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(w_key_round9_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(w_key_round9_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(w_key_round9_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(w_key_round9_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(w_key_round9_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(w_key_round9_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(w_key_round9_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(w_key_round9_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(w_key_round9_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(w_key_round9_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(w_key_round9_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(w_key_round9_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(w_key_round9_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(w_key_round9_33) ,	// input [7:0] i_keyArray_33_sig
		.o_cipherArray_00(w_cipherText_round9_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(w_cipherText_round9_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(w_cipherText_round9_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(w_cipherText_round9_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(w_cipherText_round9_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(w_cipherText_round9_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(w_cipherText_round9_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(w_cipherText_round9_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(w_cipherText_round9_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(w_cipherText_round9_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(w_cipherText_round9_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(w_cipherText_round9_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(w_cipherText_round9_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(w_cipherText_round9_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(w_cipherText_round9_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(w_cipherText_round9_33) 	// output [7:0] o_cipherArray_33_sig
	);


	// Round 10
	Last_Round Last_Round_inst
	(
		.i_dataArray_00(w_cipherText_round9_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_cipherText_round9_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_cipherText_round9_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_cipherText_round9_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_cipherText_round9_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_cipherText_round9_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_cipherText_round9_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_cipherText_round9_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_cipherText_round9_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_cipherText_round9_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_cipherText_round9_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_cipherText_round9_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_cipherText_round9_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_cipherText_round9_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_cipherText_round9_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_cipherText_round9_33) ,	// input [7:0] i_dataArray_33_sig
		.i_keyArray_00(w_key_round10_00) ,	// input [7:0] i_keyArray_00_sig
		.i_keyArray_01(w_key_round10_01) ,	// input [7:0] i_keyArray_01_sig
		.i_keyArray_02(w_key_round10_02) ,	// input [7:0] i_keyArray_02_sig
		.i_keyArray_03(w_key_round10_03) ,	// input [7:0] i_keyArray_03_sig
		.i_keyArray_10(w_key_round10_10) ,	// input [7:0] i_keyArray_10_sig
		.i_keyArray_11(w_key_round10_11) ,	// input [7:0] i_keyArray_11_sig
		.i_keyArray_12(w_key_round10_12) ,	// input [7:0] i_keyArray_12_sig
		.i_keyArray_13(w_key_round10_13) ,	// input [7:0] i_keyArray_13_sig
		.i_keyArray_20(w_key_round10_20) ,	// input [7:0] i_keyArray_20_sig
		.i_keyArray_21(w_key_round10_21) ,	// input [7:0] i_keyArray_21_sig
		.i_keyArray_22(w_key_round10_22) ,	// input [7:0] i_keyArray_22_sig
		.i_keyArray_23(w_key_round10_23) ,	// input [7:0] i_keyArray_23_sig
		.i_keyArray_30(w_key_round10_30) ,	// input [7:0] i_keyArray_30_sig
		.i_keyArray_31(w_key_round10_31) ,	// input [7:0] i_keyArray_31_sig
		.i_keyArray_32(w_key_round10_32) ,	// input [7:0] i_keyArray_32_sig
		.i_keyArray_33(w_key_round10_33) ,	// input [7:0] i_keyArray_33_sig
		.o_cipherArray_00(w_cipherText_round10_00) ,	// output [7:0] o_cipherArray_00_sig
		.o_cipherArray_01(w_cipherText_round10_01) ,	// output [7:0] o_cipherArray_01_sig
		.o_cipherArray_02(w_cipherText_round10_02) ,	// output [7:0] o_cipherArray_02_sig
		.o_cipherArray_03(w_cipherText_round10_03) ,	// output [7:0] o_cipherArray_03_sig
		.o_cipherArray_10(w_cipherText_round10_10) ,	// output [7:0] o_cipherArray_10_sig
		.o_cipherArray_11(w_cipherText_round10_11) ,	// output [7:0] o_cipherArray_11_sig
		.o_cipherArray_12(w_cipherText_round10_12) ,	// output [7:0] o_cipherArray_12_sig
		.o_cipherArray_13(w_cipherText_round10_13) ,	// output [7:0] o_cipherArray_13_sig
		.o_cipherArray_20(w_cipherText_round10_20) ,	// output [7:0] o_cipherArray_20_sig
		.o_cipherArray_21(w_cipherText_round10_21) ,	// output [7:0] o_cipherArray_21_sig
		.o_cipherArray_22(w_cipherText_round10_22) ,	// output [7:0] o_cipherArray_22_sig
		.o_cipherArray_23(w_cipherText_round10_23) ,	// output [7:0] o_cipherArray_23_sig
		.o_cipherArray_30(w_cipherText_round10_30) ,	// output [7:0] o_cipherArray_30_sig
		.o_cipherArray_31(w_cipherText_round10_31) ,	// output [7:0] o_cipherArray_31_sig
		.o_cipherArray_32(w_cipherText_round10_32) ,	// output [7:0] o_cipherArray_32_sig
		.o_cipherArray_33(w_cipherText_round10_33) 	// output [7:0] o_cipherArray_33_sig
	);


	// Converting Encrypted Data to a Vector
	Convert_to_Vector Convert_to_Vector_inst
	(
		.i_dataArray_00(w_cipherText_round10_00) ,	// input [7:0] i_dataArray_00_sig
		.i_dataArray_01(w_cipherText_round10_01) ,	// input [7:0] i_dataArray_01_sig
		.i_dataArray_02(w_cipherText_round10_02) ,	// input [7:0] i_dataArray_02_sig
		.i_dataArray_03(w_cipherText_round10_03) ,	// input [7:0] i_dataArray_03_sig
		.i_dataArray_10(w_cipherText_round10_10) ,	// input [7:0] i_dataArray_10_sig
		.i_dataArray_11(w_cipherText_round10_11) ,	// input [7:0] i_dataArray_11_sig
		.i_dataArray_12(w_cipherText_round10_12) ,	// input [7:0] i_dataArray_12_sig
		.i_dataArray_13(w_cipherText_round10_13) ,	// input [7:0] i_dataArray_13_sig
		.i_dataArray_20(w_cipherText_round10_20) ,	// input [7:0] i_dataArray_20_sig
		.i_dataArray_21(w_cipherText_round10_21) ,	// input [7:0] i_dataArray_21_sig
		.i_dataArray_22(w_cipherText_round10_22) ,	// input [7:0] i_dataArray_22_sig
		.i_dataArray_23(w_cipherText_round10_23) ,	// input [7:0] i_dataArray_23_sig
		.i_dataArray_30(w_cipherText_round10_30) ,	// input [7:0] i_dataArray_30_sig
		.i_dataArray_31(w_cipherText_round10_31) ,	// input [7:0] i_dataArray_31_sig
		.i_dataArray_32(w_cipherText_round10_32) ,	// input [7:0] i_dataArray_32_sig
		.i_dataArray_33(w_cipherText_round10_33) ,	// input [7:0] i_dataArray_33_sig
		.o_vector(o_cipherText) 	// output [127:0] o_vector_sig
	);

endmodule