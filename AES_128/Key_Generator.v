
// Generating 4 keywords for each round from previous round keys 

module Key_Generator(
	
	input [3:0] i_roundNumber,

	input [7:0] i_word0_0,
	input [7:0] i_word0_1,
	input [7:0] i_word0_2,
	input [7:0] i_word0_3,

	input [7:0] i_word1_0,
	input [7:0] i_word1_1,
	input [7:0] i_word1_2,
	input [7:0] i_word1_3,

	input [7:0] i_word2_0,
	input [7:0] i_word2_1,
	input [7:0] i_word2_2,
	input [7:0] i_word2_3,

	input [7:0] i_word3_0,
	input [7:0] i_word3_1,
	input [7:0] i_word3_2,
	input [7:0] i_word3_3,

	output [7:0] o_newWord0_0,
	output [7:0] o_newWord0_1,
	output [7:0] o_newWord0_2,
	output [7:0] o_newWord0_3,

	output [7:0] o_newWord1_0,
	output [7:0] o_newWord1_1,
	output [7:0] o_newWord1_2,
	output [7:0] o_newWord1_3,

	output [7:0] o_newWord2_0,
	output [7:0] o_newWord2_1,
	output [7:0] o_newWord2_2,
	output [7:0] o_newWord2_3,

	output [7:0] o_newWord3_0,
	output [7:0] o_newWord3_1,
	output [7:0] o_newWord3_2,
	output [7:0] o_newWord3_3

	);

	wire [7:0] w_newWord0_0;
	wire [7:0] w_newWord0_1;
	wire [7:0] w_newWord0_2;
	wire [7:0] w_newWord0_3;

	wire [7:0] w_newWord1_0;
	wire [7:0] w_newWord1_1;
	wire [7:0] w_newWord1_2;
	wire [7:0] w_newWord1_3;

	wire [7:0] w_newWord2_0;
	wire [7:0] w_newWord2_1;
	wire [7:0] w_newWord2_2;
	wire [7:0] w_newWord2_3;

	wire [7:0] w_newWord3_0;
	wire [7:0] w_newWord3_1;
	wire [7:0] w_newWord3_2;
	wire [7:0] w_newWord3_3;
	
	wire [7:0] w_GWord_0;
	wire [7:0] w_GWord_1;
	wire [7:0] w_GWord_2;
	wire [7:0] w_GWord_3;

	assign o_newWord0_0 = w_newWord0_0;
	assign o_newWord0_1 = w_newWord0_1;
	assign o_newWord0_2 = w_newWord0_2;
	assign o_newWord0_3 = w_newWord0_3;

	assign o_newWord1_0 = w_newWord1_0;
	assign o_newWord1_1 = w_newWord1_1;
	assign o_newWord1_2 = w_newWord1_2;
	assign o_newWord1_3 = w_newWord1_3;

	assign o_newWord2_0 = w_newWord2_0;
	assign o_newWord2_1 = w_newWord2_1;
	assign o_newWord2_2 = w_newWord2_2;
	assign o_newWord2_3 = w_newWord2_3;

	assign o_newWord3_0 = w_newWord3_0;
	assign o_newWord3_1 = w_newWord3_1;
	assign o_newWord3_2 = w_newWord3_2;
	assign o_newWord3_3 = w_newWord3_3;

	
	G_Function G_Function_inst
	(
		.i_roundNumber(i_roundNumber) ,	// input [3:0] i_roundNumber_sig
		.i_word_0(i_word3_0) ,	// input [7:0] i_word_0_sig
		.i_word_1(i_word3_1) ,	// input [7:0] i_word_1_sig
		.i_word_2(i_word3_2) ,	// input [7:0] i_word_2_sig
		.i_word_3(i_word3_3) ,	// input [7:0] i_word_3_sig
		.o_GWord_0(w_GWord_0) ,	// output [7:0] o_GWord_0_sig
		.o_GWord_1(w_GWord_1) ,	// output [7:0] o_GWord_1_sig
		.o_GWord_2(w_GWord_2) ,	// output [7:0] o_GWord_2_sig
		.o_GWord_3(w_GWord_3) 	// output [7:0] o_GWord_3_sig
	);
	
	
	// Generating New Keyword 0
	XOR_Bitwise XOR_Bitwise_inst0
	(
		.i_firstWord_0(w_GWord_0) ,	// input [7:0] i_firstWord_0_sig
		.i_firstWord_1(w_GWord_1) ,	// input [7:0] i_firstWord_1_sig
		.i_firstWord_2(w_GWord_2) ,	// input [7:0] i_firstWord_2_sig
		.i_firstWord_3(w_GWord_3) ,	// input [7:0] i_firstWord_3_sig
		.i_secondWord_0(i_word0_0) ,	// input [7:0] i_secondWord_0_sig
		.i_secondWord_1(i_word0_1) ,	// input [7:0] i_secondWord_1_sig
		.i_secondWord_2(i_word0_2) ,	// input [7:0] i_secondWord_2_sig
		.i_secondWord_3(i_word0_3) ,	// input [7:0] i_secondWord_3_sig
		.o_xoredWord_0(w_newWord0_0) ,	// output [7:0] o_xoredWord_0_sig
		.o_xoredWord_1(w_newWord0_1) ,	// output [7:0] o_xoredWord_1_sig
		.o_xoredWord_2(w_newWord0_2) ,	// output [7:0] o_xoredWord_2_sig
		.o_xoredWord_3(w_newWord0_3) 	// output [7:0] o_xoredWord_3_sig
	);


	// Generating New Keyword 1
	XOR_Bitwise XOR_Bitwise_inst1
	(
		.i_firstWord_0(i_word1_0) ,	// input [7:0] i_firstWord_0_sig
		.i_firstWord_1(i_word1_1) ,	// input [7:0] i_firstWord_1_sig
		.i_firstWord_2(i_word1_2) ,	// input [7:0] i_firstWord_2_sig
		.i_firstWord_3(i_word1_3) ,	// input [7:0] i_firstWord_3_sig
		.i_secondWord_0(w_newWord0_0) ,	// input [7:0] i_secondWord_0_sig
		.i_secondWord_1(w_newWord0_1) ,	// input [7:0] i_secondWord_1_sig
		.i_secondWord_2(w_newWord0_2) ,	// input [7:0] i_secondWord_2_sig
		.i_secondWord_3(w_newWord0_3) ,	// input [7:0] i_secondWord_3_sig
		.o_xoredWord_0(w_newWord1_0) ,	// output [7:0] o_xoredWord_0_sig
		.o_xoredWord_1(w_newWord1_1) ,	// output [7:0] o_xoredWord_1_sig
		.o_xoredWord_2(w_newWord1_2) ,	// output [7:0] o_xoredWord_2_sig
		.o_xoredWord_3(w_newWord1_3) 	// output [7:0] o_xoredWord_3_sig
	);


	// Generating New Keyword 2
	XOR_Bitwise XOR_Bitwise_inst2
	(
		.i_firstWord_0(i_word2_0) ,	// input [7:0] i_firstWord_0_sig
		.i_firstWord_1(i_word2_1) ,	// input [7:0] i_firstWord_1_sig
		.i_firstWord_2(i_word2_2) ,	// input [7:0] i_firstWord_2_sig
		.i_firstWord_3(i_word2_3) ,	// input [7:0] i_firstWord_3_sig
		.i_secondWord_0(w_newWord1_0) ,	// input [7:0] i_secondWord_0_sig
		.i_secondWord_1(w_newWord1_1) ,	// input [7:0] i_secondWord_1_sig
		.i_secondWord_2(w_newWord1_2) ,	// input [7:0] i_secondWord_2_sig
		.i_secondWord_3(w_newWord1_3) ,	// input [7:0] i_secondWord_3_sig
		.o_xoredWord_0(w_newWord2_0) ,	// output [7:0] o_xoredWord_0_sig
		.o_xoredWord_1(w_newWord2_1) ,	// output [7:0] o_xoredWord_1_sig
		.o_xoredWord_2(w_newWord2_2) ,	// output [7:0] o_xoredWord_2_sig
		.o_xoredWord_3(w_newWord2_3) 	// output [7:0] o_xoredWord_3_sig
	);

	// Generating New Keyword 3
	XOR_Bitwise XOR_Bitwise_inst3
	(
		.i_firstWord_0(i_word3_0) ,	// input [7:0] i_firstWord_0_sig
		.i_firstWord_1(i_word3_1) ,	// input [7:0] i_firstWord_1_sig
		.i_firstWord_2(i_word3_2) ,	// input [7:0] i_firstWord_2_sig
		.i_firstWord_3(i_word3_3) ,	// input [7:0] i_firstWord_3_sig
		.i_secondWord_0(w_newWord2_0) ,	// input [7:0] i_secondWord_0_sig
		.i_secondWord_1(w_newWord2_1) ,	// input [7:0] i_secondWord_1_sig
		.i_secondWord_2(w_newWord2_2) ,	// input [7:0] i_secondWord_2_sig
		.i_secondWord_3(w_newWord2_3) ,	// input [7:0] i_secondWord_3_sig
		.o_xoredWord_0(w_newWord3_0) ,	// output [7:0] o_xoredWord_0_sig
		.o_xoredWord_1(w_newWord3_1) ,	// output [7:0] o_xoredWord_1_sig
		.o_xoredWord_2(w_newWord3_2) ,	// output [7:0] o_xoredWord_2_sig
		.o_xoredWord_3(w_newWord3_3) 	// output [7:0] o_xoredWord_3_sig
	);

endmodule