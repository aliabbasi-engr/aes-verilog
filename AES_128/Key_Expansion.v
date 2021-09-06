
// Generating 44 different keywords from 4 words to be used in the rounds of encryption

module Key_Expansion(

	input [31:0] i_word_00,
	input [31:0] i_word_01,
	input [31:0] i_word_02,
	input [31:0] i_word_03,

	output [31:0] o_word_00,
	output [31:0] o_word_01,
	output [31:0] o_word_02,
	output [31:0] o_word_03,
	output [31:0] o_word_04,
	output [31:0] o_word_05,
	output [31:0] o_word_06,
	output [31:0] o_word_07,
	output [31:0] o_word_08,
	output [31:0] o_word_09,
	output [31:0] o_word_10,
	output [31:0] o_word_11,
	output [31:0] o_word_12,
	output [31:0] o_word_13,
	output [31:0] o_word_14,
	output [31:0] o_word_15,
	output [31:0] o_word_16,
	output [31:0] o_word_17,
	output [31:0] o_word_18,
	output [31:0] o_word_19,
	output [31:0] o_word_20,
	output [31:0] o_word_21,
	output [31:0] o_word_22,
	output [31:0] o_word_23,
	output [31:0] o_word_24,
	output [31:0] o_word_25,
	output [31:0] o_word_26,
	output [31:0] o_word_27,
	output [31:0] o_word_28,
	output [31:0] o_word_29,
	output [31:0] o_word_30,
	output [31:0] o_word_31,
	output [31:0] o_word_32,
	output [31:0] o_word_33,
	output [31:0] o_word_34,
	output [31:0] o_word_35,
	output [31:0] o_word_36,
	output [31:0] o_word_37,
	output [31:0] o_word_38,
	output [31:0] o_word_39,
	output [31:0] o_word_40,
	output [31:0] o_word_41,
	output [31:0] o_word_42,
	output [31:0] o_word_43
	);

	wire [31:0] w_word_04;
	wire [31:0] w_word_05;
	wire [31:0] w_word_06;
	wire [31:0] w_word_07;
	wire [31:0] w_word_08;
	wire [31:0] w_word_09;
	wire [31:0] w_word_10;
	wire [31:0] w_word_11;
	wire [31:0] w_word_12;
	wire [31:0] w_word_13;
	wire [31:0] w_word_14;
	wire [31:0] w_word_15;
	wire [31:0] w_word_16;
	wire [31:0] w_word_17;
	wire [31:0] w_word_18;
	wire [31:0] w_word_19;
	wire [31:0] w_word_20;
	wire [31:0] w_word_21;
	wire [31:0] w_word_22;
	wire [31:0] w_word_23;
	wire [31:0] w_word_24;
	wire [31:0] w_word_25;
	wire [31:0] w_word_26;
	wire [31:0] w_word_27;
	wire [31:0] w_word_28;
	wire [31:0] w_word_29;
	wire [31:0] w_word_30;
	wire [31:0] w_word_31;
	wire [31:0] w_word_32;
	wire [31:0] w_word_33;
	wire [31:0] w_word_34;
	wire [31:0] w_word_35;
	wire [31:0] w_word_36;
	wire [31:0] w_word_37;
	wire [31:0] w_word_38;
	wire [31:0] w_word_39;
	wire [31:0] w_word_40;
	wire [31:0] w_word_41;
	wire [31:0] w_word_42;
	wire [31:0] w_word_43;
	
	assign o_word_00 = i_word_00;
	assign o_word_01 = i_word_01;
	assign o_word_02 = i_word_02;
	assign o_word_03 = i_word_03;
	assign o_word_04 = w_word_04;
	assign o_word_05 = w_word_05;
	assign o_word_06 = w_word_06;
	assign o_word_07 = w_word_07;
	assign o_word_08 = w_word_08;
	assign o_word_09 = w_word_09;
	assign o_word_10 = w_word_10;
	assign o_word_11 = w_word_11;
	assign o_word_12 = w_word_12;
	assign o_word_13 = w_word_13;
	assign o_word_14 = w_word_14;
	assign o_word_15 = w_word_15;
	assign o_word_16 = w_word_16;
	assign o_word_17 = w_word_17;
	assign o_word_18 = w_word_18;
	assign o_word_19 = w_word_19;
	assign o_word_20 = w_word_20;
	assign o_word_21 = w_word_21;
	assign o_word_22 = w_word_22;
	assign o_word_23 = w_word_23;
	assign o_word_24 = w_word_24;
	assign o_word_25 = w_word_25;
	assign o_word_26 = w_word_26;
	assign o_word_27 = w_word_27;
	assign o_word_28 = w_word_28;
	assign o_word_29 = w_word_29;
	assign o_word_30 = w_word_30;
	assign o_word_31 = w_word_31;
	assign o_word_32 = w_word_32;
	assign o_word_33 = w_word_33;
	assign o_word_34 = w_word_34;
	assign o_word_35 = w_word_35;
	assign o_word_36 = w_word_36;
	assign o_word_37 = w_word_37;
	assign o_word_38 = w_word_38;
	assign o_word_39 = w_word_39;
	assign o_word_40 = w_word_40;
	assign o_word_41 = w_word_41;
	assign o_word_42 = w_word_42;
	assign o_word_43 = w_word_43;

	
	// Generating keywords 4 to 7
	Key_Generator Key_Generator_inst01
	(
		.i_roundNumber(4'h1) ,	// input [3:0] i_roundNumber_sig

		.i_word0_0(i_word_00[31:24]) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(i_word_00[23:16]) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(i_word_00[15:8] ) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(i_word_00[7:0]  ) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(i_word_01[31:24]) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(i_word_01[23:16]) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(i_word_01[15:8] ) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(i_word_01[7:0]  ) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(i_word_02[31:24]) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(i_word_02[23:16]) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(i_word_02[15:8] ) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(i_word_02[7:0]  ) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(i_word_03[31:24]) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(i_word_03[23:16]) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(i_word_03[15:8] ) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(i_word_03[7:0]  ) ,	// input [7:0] i_word3_3_sig

		.o_newWord0_0(w_word_04[31:24]) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_word_04[23:16]) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_word_04[15:8] ) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_word_04[7:0]  ) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_word_05[31:24]) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_word_05[23:16]) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_word_05[15:8] ) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_word_05[7:0]  ) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_word_06[31:24]) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_word_06[23:16]) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_word_06[15:8] ) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_word_06[7:0]  ) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_word_07[31:24]) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_word_07[23:16]) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_word_07[15:8] ) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_word_07[7:0]  ) 	// output [7:0] o_newWord3_3_sig
	);

	
	// Generating keywords 8 to 11
	Key_Generator Key_Generator_inst02
	(
		.i_roundNumber(4'h2) ,	// input [3:0] i_roundNumber_sig

		.i_word0_0(w_word_04[31:24]) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_word_04[23:16]) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_word_04[15:8] ) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_word_04[7:0]  ) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_word_05[31:24]) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_word_05[23:16]) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_word_05[15:8] ) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_word_05[7:0]  ) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_word_06[31:24]) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_word_06[23:16]) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_word_06[15:8] ) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_word_06[7:0]  ) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_word_07[31:24]) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_word_07[23:16]) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_word_07[15:8] ) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_word_07[7:0]  ) ,	// input [7:0] i_word3_3_sig

		.o_newWord0_0(w_word_08[31:24]) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_word_08[23:16]) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_word_08[15:8] ) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_word_08[7:0]  ) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_word_09[31:24]) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_word_09[23:16]) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_word_09[15:8] ) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_word_09[7:0]  ) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_word_10[31:24]) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_word_10[23:16]) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_word_10[15:8] ) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_word_10[7:0]  ) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_word_11[31:24]) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_word_11[23:16]) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_word_11[15:8] ) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_word_11[7:0]  ) 	// output [7:0] o_newWord3_3_sig
	);

	
	// Generating keywords 12 to 15
	Key_Generator Key_Generator_inst03
	(
		.i_roundNumber(4'h3) ,	// input [3:0] i_roundNumber_sig

		.i_word0_0(w_word_08[31:24]) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_word_08[23:16]) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_word_08[15:8] ) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_word_08[7:0]  ) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_word_09[31:24]) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_word_09[23:16]) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_word_09[15:8] ) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_word_09[7:0]  ) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_word_10[31:24]) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_word_10[23:16]) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_word_10[15:8] ) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_word_10[7:0]  ) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_word_11[31:24]) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_word_11[23:16]) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_word_11[15:8] ) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_word_11[7:0]  ) ,	// input [7:0] i_word3_3_sig

		.o_newWord0_0(w_word_12[31:24]) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_word_12[23:16]) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_word_12[15:8] ) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_word_12[7:0]  ) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_word_13[31:24]) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_word_13[23:16]) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_word_13[15:8] ) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_word_13[7:0]  ) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_word_14[31:24]) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_word_14[23:16]) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_word_14[15:8] ) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_word_14[7:0]  ) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_word_15[31:24]) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_word_15[23:16]) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_word_15[15:8] ) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_word_15[7:0]  ) 	// output [7:0] o_newWord3_3_sig
	);

	
	// Generating keywords 16 to 19
	Key_Generator Key_Generator_inst04
	(
		.i_roundNumber(4'h4) ,	// input [3:0] i_roundNumber_sig

		.i_word0_0(w_word_12[31:24]) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_word_12[23:16]) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_word_12[15:8] ) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_word_12[7:0]  ) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_word_13[31:24]) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_word_13[23:16]) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_word_13[15:8] ) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_word_13[7:0]  ) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_word_14[31:24]) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_word_14[23:16]) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_word_14[15:8] ) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_word_14[7:0]  ) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_word_15[31:24]) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_word_15[23:16]) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_word_15[15:8] ) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_word_15[7:0]  ) ,	// input [7:0] i_word3_3_sig

		.o_newWord0_0(w_word_16[31:24]) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_word_16[23:16]) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_word_16[15:8] ) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_word_16[7:0]  ) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_word_17[31:24]) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_word_17[23:16]) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_word_17[15:8] ) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_word_17[7:0]  ) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_word_18[31:24]) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_word_18[23:16]) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_word_18[15:8] ) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_word_18[7:0]  ) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_word_19[31:24]) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_word_19[23:16]) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_word_19[15:8] ) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_word_19[7:0]  ) 	// output [7:0] o_newWord3_3_sig
	);


	// Generating keywords 20 to 23
	Key_Generator Key_Generator_inst05
	(
		.i_roundNumber(4'h5) ,	// input [3:0] i_roundNumber_sig

		.i_word0_0(w_word_16[31:24]) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_word_16[23:16]) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_word_16[15:8] ) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_word_16[7:0]  ) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_word_17[31:24]) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_word_17[23:16]) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_word_17[15:8] ) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_word_17[7:0]  ) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_word_18[31:24]) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_word_18[23:16]) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_word_18[15:8] ) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_word_18[7:0]  ) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_word_19[31:24]) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_word_19[23:16]) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_word_19[15:8] ) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_word_19[7:0]  ) ,	// input [7:0] i_word3_3_sig

		.o_newWord0_0(w_word_20[31:24]) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_word_20[23:16]) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_word_20[15:8] ) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_word_20[7:0]  ) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_word_21[31:24]) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_word_21[23:16]) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_word_21[15:8] ) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_word_21[7:0]  ) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_word_22[31:24]) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_word_22[23:16]) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_word_22[15:8] ) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_word_22[7:0]  ) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_word_23[31:24]) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_word_23[23:16]) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_word_23[15:8] ) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_word_23[7:0]  ) 	// output [7:0] o_newWord3_3_sig
	);

	
	// Generating keywords 24 to 27
	Key_Generator Key_Generator_inst06
	(
		.i_roundNumber(4'h6) ,	// input [3:0] i_roundNumber_sig

		.i_word0_0(w_word_20[31:24]) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_word_20[23:16]) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_word_20[15:8] ) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_word_20[7:0]  ) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_word_21[31:24]) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_word_21[23:16]) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_word_21[15:8] ) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_word_21[7:0]  ) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_word_22[31:24]) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_word_22[23:16]) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_word_22[15:8] ) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_word_22[7:0]  ) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_word_23[31:24]) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_word_23[23:16]) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_word_23[15:8] ) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_word_23[7:0]  ) ,	// input [7:0] i_word3_3_sig

		.o_newWord0_0(w_word_24[31:24]) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_word_24[23:16]) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_word_24[15:8] ) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_word_24[7:0]  ) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_word_25[31:24]) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_word_25[23:16]) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_word_25[15:8] ) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_word_25[7:0]  ) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_word_26[31:24]) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_word_26[23:16]) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_word_26[15:8] ) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_word_26[7:0]  ) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_word_27[31:24]) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_word_27[23:16]) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_word_27[15:8] ) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_word_27[7:0]  ) 	// output [7:0] o_newWord3_3_sig
	);


	// Generating keywords 28 to 31
	Key_Generator Key_Generator_inst07
	(
		.i_roundNumber(4'h7) ,	// input [3:0] i_roundNumber_sig

		.i_word0_0(w_word_24[31:24]) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_word_24[23:16]) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_word_24[15:8] ) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_word_24[7:0]  ) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_word_25[31:24]) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_word_25[23:16]) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_word_25[15:8] ) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_word_25[7:0]  ) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_word_26[31:24]) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_word_26[23:16]) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_word_26[15:8] ) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_word_26[7:0]  ) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_word_27[31:24]) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_word_27[23:16]) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_word_27[15:8] ) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_word_27[7:0]  ) ,	// input [7:0] i_word3_3_sig
		
		.o_newWord0_0(w_word_28[31:24]) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_word_28[23:16]) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_word_28[15:8] ) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_word_28[7:0]  ) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_word_29[31:24]) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_word_29[23:16]) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_word_29[15:8] ) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_word_29[7:0]  ) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_word_30[31:24]) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_word_30[23:16]) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_word_30[15:8] ) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_word_30[7:0]  ) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_word_31[31:24]) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_word_31[23:16]) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_word_31[15:8] ) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_word_31[7:0]  ) 	// output [7:0] o_newWord3_3_sig
	);

	// Generating keywords 32 to 35
	Key_Generator Key_Generator_inst08
	(
		.i_roundNumber(4'h8) ,	// input [3:0] i_roundNumber_sig

		.i_word0_0(w_word_28[31:24]) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_word_28[23:16]) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_word_28[15:8] ) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_word_28[7:0]  ) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_word_29[31:24]) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_word_29[23:16]) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_word_29[15:8] ) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_word_29[7:0]  ) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_word_30[31:24]) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_word_30[23:16]) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_word_30[15:8] ) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_word_30[7:0]  ) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_word_31[31:24]) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_word_31[23:16]) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_word_31[15:8] ) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_word_31[7:0]  ) ,	// input [7:0] i_word3_3_sig
		
		.o_newWord0_0(w_word_32[31:24]) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_word_32[23:16]) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_word_32[15:8] ) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_word_32[7:0]  ) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_word_33[31:24]) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_word_33[23:16]) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_word_33[15:8] ) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_word_33[7:0]  ) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_word_34[31:24]) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_word_34[23:16]) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_word_34[15:8] ) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_word_34[7:0]  ) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_word_35[31:24]) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_word_35[23:16]) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_word_35[15:8] ) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_word_35[7:0]  ) 	// output [7:0] o_newWord3_3_sig
	);


	// Generating keywords 36 to 39
	Key_Generator Key_Generator_inst09
	(
		.i_roundNumber(4'h9) ,	// input [3:0] i_roundNumber_sig

		.i_word0_0(w_word_32[31:24]) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_word_32[23:16]) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_word_32[15:8] ) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_word_32[7:0]  ) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_word_33[31:24]) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_word_33[23:16]) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_word_33[15:8] ) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_word_33[7:0]  ) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_word_34[31:24]) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_word_34[23:16]) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_word_34[15:8] ) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_word_34[7:0]  ) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_word_35[31:24]) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_word_35[23:16]) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_word_35[15:8] ) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_word_35[7:0]  ) ,	// input [7:0] i_word3_3_sig
		
		.o_newWord0_0(w_word_36[31:24]) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_word_36[23:16]) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_word_36[15:8] ) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_word_36[7:0]  ) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_word_37[31:24]) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_word_37[23:16]) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_word_37[15:8] ) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_word_37[7:0]  ) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_word_38[31:24]) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_word_38[23:16]) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_word_38[15:8] ) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_word_38[7:0]  ) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_word_39[31:24]) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_word_39[23:16]) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_word_39[15:8] ) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_word_39[7:0]  ) 	// output [7:0] o_newWord3_3_sig
	);


	// Generating keywords 40 to 43
	Key_Generator Key_Generator_inst10
	(
		.i_roundNumber(4'hA) ,	// input [3:0] i_roundNumber_sig

		.i_word0_0(w_word_36[31:24]) ,	// input [7:0] i_word0_0_sig
		.i_word0_1(w_word_36[23:16]) ,	// input [7:0] i_word0_1_sig
		.i_word0_2(w_word_36[15:8] ) ,	// input [7:0] i_word0_2_sig
		.i_word0_3(w_word_36[7:0]  ) ,	// input [7:0] i_word0_3_sig
		.i_word1_0(w_word_37[31:24]) ,	// input [7:0] i_word1_0_sig
		.i_word1_1(w_word_37[23:16]) ,	// input [7:0] i_word1_1_sig
		.i_word1_2(w_word_37[15:8] ) ,	// input [7:0] i_word1_2_sig
		.i_word1_3(w_word_37[7:0]  ) ,	// input [7:0] i_word1_3_sig
		.i_word2_0(w_word_38[31:24]) ,	// input [7:0] i_word2_0_sig
		.i_word2_1(w_word_38[23:16]) ,	// input [7:0] i_word2_1_sig
		.i_word2_2(w_word_38[15:8] ) ,	// input [7:0] i_word2_2_sig
		.i_word2_3(w_word_38[7:0]  ) ,	// input [7:0] i_word2_3_sig
		.i_word3_0(w_word_39[31:24]) ,	// input [7:0] i_word3_0_sig
		.i_word3_1(w_word_39[23:16]) ,	// input [7:0] i_word3_1_sig
		.i_word3_2(w_word_39[15:8] ) ,	// input [7:0] i_word3_2_sig
		.i_word3_3(w_word_39[7:0]  ) ,	// input [7:0] i_word3_3_sig
		
		.o_newWord0_0(w_word_40[31:24]) ,	// output [7:0] o_newWord0_0_sig
		.o_newWord0_1(w_word_40[23:16]) ,	// output [7:0] o_newWord0_1_sig
		.o_newWord0_2(w_word_40[15:8] ) ,	// output [7:0] o_newWord0_2_sig
		.o_newWord0_3(w_word_40[7:0]  ) ,	// output [7:0] o_newWord0_3_sig
		.o_newWord1_0(w_word_41[31:24]) ,	// output [7:0] o_newWord1_0_sig
		.o_newWord1_1(w_word_41[23:16]) ,	// output [7:0] o_newWord1_1_sig
		.o_newWord1_2(w_word_41[15:8] ) ,	// output [7:0] o_newWord1_2_sig
		.o_newWord1_3(w_word_41[7:0]  ) ,	// output [7:0] o_newWord1_3_sig
		.o_newWord2_0(w_word_42[31:24]) ,	// output [7:0] o_newWord2_0_sig
		.o_newWord2_1(w_word_42[23:16]) ,	// output [7:0] o_newWord2_1_sig
		.o_newWord2_2(w_word_42[15:8] ) ,	// output [7:0] o_newWord2_2_sig
		.o_newWord2_3(w_word_42[7:0]  ) ,	// output [7:0] o_newWord2_3_sig
		.o_newWord3_0(w_word_43[31:24]) ,	// output [7:0] o_newWord3_0_sig
		.o_newWord3_1(w_word_43[23:16]) ,	// output [7:0] o_newWord3_1_sig
		.o_newWord3_2(w_word_43[15:8] ) ,	// output [7:0] o_newWord3_2_sig
		.o_newWord3_3(w_word_43[7:0]  ) 	// output [7:0] o_newWord3_3_sig
	);
endmodule