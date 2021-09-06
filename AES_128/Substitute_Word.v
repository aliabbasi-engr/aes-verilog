
// Word substitution in the G function

module Substitute_Word(
	input [7:0] i_word_0,
	input [7:0] i_word_1,
	input [7:0] i_word_2,
	input [7:0] i_word_3,
	
	output [7:0] o_substitutedWord_0,
	output [7:0] o_substitutedWord_1,
	output [7:0] o_substitutedWord_2,
	output [7:0] o_substitutedWord_3
	);

	S_Box S_Box_inst0
	(
		.i_vector(i_word_0) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedWord_0) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst1
	(
		.i_vector(i_word_1) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedWord_1) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst2
	(
		.i_vector(i_word_2) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedWord_2) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst3
	(
		.i_vector(i_word_3) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedWord_3) 	// output [7:0] o_vector_sig
	);

endmodule