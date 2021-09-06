
// A simple bitwise XOR for a 32-bit AES word

module XOR_Bitwise(

	input [7:0] i_firstWord_0,
	input [7:0] i_firstWord_1,
	input [7:0] i_firstWord_2,
	input [7:0] i_firstWord_3,

	input [7:0] i_secondWord_0,
	input [7:0] i_secondWord_1,
	input [7:0] i_secondWord_2,
	input [7:0] i_secondWord_3,

	output [7:0] o_xoredWord_0,
	output [7:0] o_xoredWord_1,
	output [7:0] o_xoredWord_2,
	output [7:0] o_xoredWord_3
	);

	assign o_xoredWord_0 = i_firstWord_0 ^ i_secondWord_0;
	assign o_xoredWord_1 = i_firstWord_1 ^ i_secondWord_1;
	assign o_xoredWord_2 = i_firstWord_2 ^ i_secondWord_2;
	assign o_xoredWord_3 = i_firstWord_3 ^ i_secondWord_3;
	
endmodule