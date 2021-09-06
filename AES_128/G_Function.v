
// Logic of the F function in the key generation

module G_Function(

	input [3:0] i_roundNumber,

	input [7:0] i_word_0,
	input [7:0] i_word_1,
	input [7:0] i_word_2,
	input [7:0] i_word_3,
	
	output [7:0] o_GWord_0,
	output [7:0] o_GWord_1,
	output [7:0] o_GWord_2,
	output [7:0] o_GWord_3
	);

	wire [7:0] w_rotatedWord_0;
	wire [7:0] w_rotatedWord_1;
	wire [7:0] w_rotatedWord_2;
	wire [7:0] w_rotatedWord_3;

	wire [7:0] w_substitutedWord_0;
	wire [7:0] w_substitutedWord_1;
	wire [7:0] w_substitutedWord_2;
	wire [7:0] w_substitutedWord_3;

	
	Rotate_Word Rotate_Word_inst
	(
		.i_word_0(i_word_0) ,	// input [7:0] i_word_0_sig
		.i_word_1(i_word_1) ,	// input [7:0] i_word_1_sig
		.i_word_2(i_word_2) ,	// input [7:0] i_word_2_sig
		.i_word_3(i_word_3) ,	// input [7:0] i_word_3_sig
		.o_rotatedWord_0(w_rotatedWord_0) ,	// output [7:0] o_rotatedWord_0_sig
		.o_rotatedWord_1(w_rotatedWord_1) ,	// output [7:0] o_rotatedWord_1_sig
		.o_rotatedWord_2(w_rotatedWord_2) ,	// output [7:0] o_rotatedWord_2_sig
		.o_rotatedWord_3(w_rotatedWord_3) 	// output [7:0] o_rotatedWord_3_sig
	);


	Substitute_Word Substitute_Word_inst
	(
		.i_word_0(w_rotatedWord_0) ,	// input [7:0] i_word_0_sig
		.i_word_1(w_rotatedWord_1) ,	// input [7:0] i_word_1_sig
		.i_word_2(w_rotatedWord_2) ,	// input [7:0] i_word_2_sig
		.i_word_3(w_rotatedWord_3) ,	// input [7:0] i_word_3_sig
		.o_substitutedWord_0(w_substitutedWord_0) ,	// output [7:0] o_substitutedWord_0_sig
		.o_substitutedWord_1(w_substitutedWord_1) ,	// output [7:0] o_substitutedWord_1_sig
		.o_substitutedWord_2(w_substitutedWord_2) ,	// output [7:0] o_substitutedWord_2_sig
		.o_substitutedWord_3(w_substitutedWord_3) 	// output [7:0] o_substitutedWord_3_sig
	);


	ConstantXOR ConstantXOR_inst
	(
		.i_roundNumber(i_roundNumber) ,	// input [3:0] i_roundNumber_sig
		.i_word_0(w_substitutedWord_0) ,	// input [7:0] i_word_0_sig
		.i_word_1(w_substitutedWord_1) ,	// input [7:0] i_word_1_sig
		.i_word_2(w_substitutedWord_2) ,	// input [7:0] i_word_2_sig
		.i_word_3(w_substitutedWord_3) ,	// input [7:0] i_word_3_sig
		.o_xoredWord_0(o_GWord_0) ,	// output [7:0] o_xoredWord_0_sig
		.o_xoredWord_1(o_GWord_1) ,	// output [7:0] o_xoredWord_1_sig
		.o_xoredWord_2(o_GWord_2) ,	// output [7:0] o_xoredWord_2_sig
		.o_xoredWord_3(o_GWord_3) 	// output [7:0] o_xoredWord_3_sig
	);

endmodule