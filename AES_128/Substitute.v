
// Substitution of the state matrix using S-box

module Substitute(
	input [7:0] i_plainArray_00,
	input [7:0] i_plainArray_01,
	input [7:0] i_plainArray_02,
	input [7:0] i_plainArray_03,

	input [7:0] i_plainArray_10,
	input [7:0] i_plainArray_11,
	input [7:0] i_plainArray_12,
	input [7:0] i_plainArray_13,

	input [7:0] i_plainArray_20,
	input [7:0] i_plainArray_21,
	input [7:0] i_plainArray_22,
	input [7:0] i_plainArray_23,

	input [7:0] i_plainArray_30,
	input [7:0] i_plainArray_31,
	input [7:0] i_plainArray_32,
	input [7:0] i_plainArray_33,

	output [7:0] o_substitutedArray_00,
	output [7:0] o_substitutedArray_01,
	output [7:0] o_substitutedArray_02,
	output [7:0] o_substitutedArray_03,

	output [7:0] o_substitutedArray_10,
	output [7:0] o_substitutedArray_11,
	output [7:0] o_substitutedArray_12,
	output [7:0] o_substitutedArray_13,

	output [7:0] o_substitutedArray_20,
	output [7:0] o_substitutedArray_21,
	output [7:0] o_substitutedArray_22,
	output [7:0] o_substitutedArray_23,

	output [7:0] o_substitutedArray_30,
	output [7:0] o_substitutedArray_31,
	output [7:0] o_substitutedArray_32,
	output [7:0] o_substitutedArray_33
	);
	
	
	// 1st row of the matrix
	S_Box S_Box_inst00
	(
		.i_vector(i_plainArray_00) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_00) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst01
	(
		.i_vector(i_plainArray_01) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_01) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst02
	(
		.i_vector(i_plainArray_02) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_02) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst03
	(
		.i_vector(i_plainArray_03) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_03) 	// output [7:0] o_vector_sig
	);

	
	// 2nd row of the matrix
	S_Box S_Box_inst10
	(
		.i_vector(i_plainArray_10) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_10) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst11
	(
		.i_vector(i_plainArray_11) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_11) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst12
	(
		.i_vector(i_plainArray_12) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_12) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst13
	(
		.i_vector(i_plainArray_13) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_13) 	// output [7:0] o_vector_sig
	);

	
	// 3rd row of the matrix
	S_Box S_Box_inst20
	(
		.i_vector(i_plainArray_20) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_20) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst21
	(
		.i_vector(i_plainArray_21) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_21) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst22
	(
		.i_vector(i_plainArray_22) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_22) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst23
	(
		.i_vector(i_plainArray_23) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_23) 	// output [7:0] o_vector_sig
	);

	
	// 4th row of the matrix
	S_Box S_Box_inst30
	(
		.i_vector(i_plainArray_30) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_30) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst31
	(
		.i_vector(i_plainArray_31) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_31) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst32
	(
		.i_vector(i_plainArray_32) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_32) 	// output [7:0] o_vector_sig
	);

	S_Box S_Box_inst33
	(
		.i_vector(i_plainArray_33) ,	// input [7:0] i_vector_sig
		.o_vector(o_substitutedArray_33) 	// output [7:0] o_vector_sig
	);
	
endmodule