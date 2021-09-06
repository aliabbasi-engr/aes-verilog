
// Shifting the rows of the matrix

module Shift_Rows(
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

	output [7:0] o_shiftedArray_00,
	output [7:0] o_shiftedArray_01,
	output [7:0] o_shiftedArray_02,
	output [7:0] o_shiftedArray_03,

	output [7:0] o_shiftedArray_10,
	output [7:0] o_shiftedArray_11,
	output [7:0] o_shiftedArray_12,
	output [7:0] o_shiftedArray_13,

	output [7:0] o_shiftedArray_20,
	output [7:0] o_shiftedArray_21,
	output [7:0] o_shiftedArray_22,
	output [7:0] o_shiftedArray_23,

	output [7:0] o_shiftedArray_30,
	output [7:0] o_shiftedArray_31,
	output [7:0] o_shiftedArray_32,
	output [7:0] o_shiftedArray_33
	);
	
	// 1st row - Shif by 0
	assign o_shiftedArray_00 = i_plainArray_00;
	assign o_shiftedArray_01 = i_plainArray_01;
	assign o_shiftedArray_02 = i_plainArray_02;
	assign o_shiftedArray_03 = i_plainArray_03;

	// 2nd row - Shif by 1
	assign o_shiftedArray_10 = i_plainArray_11;
	assign o_shiftedArray_11 = i_plainArray_12;
	assign o_shiftedArray_12 = i_plainArray_13;
	assign o_shiftedArray_13 = i_plainArray_10;

	// 3rd row - Shif by 2
	assign o_shiftedArray_20 = i_plainArray_22;
	assign o_shiftedArray_21 = i_plainArray_23;
	assign o_shiftedArray_22 = i_plainArray_20;
	assign o_shiftedArray_23 = i_plainArray_21;
	
	// 4th row - Shif by 3
	assign o_shiftedArray_30 = i_plainArray_33;
	assign o_shiftedArray_31 = i_plainArray_30;
	assign o_shiftedArray_32 = i_plainArray_31;
	assign o_shiftedArray_33 = i_plainArray_32;

endmodule