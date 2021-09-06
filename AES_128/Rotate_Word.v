
// Word rotation in the G function

module Rotate_Word(
	input [7:0] i_word_0,
	input [7:0] i_word_1,
	input [7:0] i_word_2,
	input [7:0] i_word_3,
	
	output [7:0] o_rotatedWord_0,
	output [7:0] o_rotatedWord_1,
	output [7:0] o_rotatedWord_2,
	output [7:0] o_rotatedWord_3
	);
	
	assign o_rotatedWord_0 = i_word_1;
	assign o_rotatedWord_1 = i_word_2;
	assign o_rotatedWord_2 = i_word_3;
	assign o_rotatedWord_3 = i_word_0;

endmodule