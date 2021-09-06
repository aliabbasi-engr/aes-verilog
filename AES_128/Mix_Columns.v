
// Mixing the matrix columns

module Mix_Columns(
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

	output [7:0] o_mixedArray_00,
	output [7:0] o_mixedArray_01,
	output [7:0] o_mixedArray_02,
	output [7:0] o_mixedArray_03,

	output [7:0] o_mixedArray_10,
	output [7:0] o_mixedArray_11,
	output [7:0] o_mixedArray_12,
	output [7:0] o_mixedArray_13,

	output [7:0] o_mixedArray_20,
	output [7:0] o_mixedArray_21,
	output [7:0] o_mixedArray_22,
	output [7:0] o_mixedArray_23,

	output [7:0] o_mixedArray_30,
	output [7:0] o_mixedArray_31,
	output [7:0] o_mixedArray_32,
	output [7:0] o_mixedArray_33
	);

	/* Formula
	assign o_mixedArray_0j = (8'h02 * i_plainArray_0j) ^ (8'h03 * i_plainArray_1j) ^ i_plainArray_2j ^ i_plainArray_3j;
	assign o_mixedArray_1j = i_plainArray_0j ^ (8'h02 * i_plainArray_1j) ^ (8'h03 * i_plainArray_2j) ^ i_plainArray_3j;
	assign o_mixedArray_2j = i_plainArray_0j ^ i_plainArray_1j ^ (8'h02 * i_plainArray_2j) ^ (8'h03 * i_plainArray_3j);
	assign o_mixedArray_3j = (8'h03 * i_plainArray_0j) ^ i_plainArray_1j ^ i_plainArray_2j ^ (8'h02 * i_plainArray_3j);
	*/

	// 1st column
	assign o_mixedArray_00 = (8'h02 * i_plainArray_00) + (8'h03 * i_plainArray_10) + i_plainArray_20 + i_plainArray_30;
	assign o_mixedArray_10 = i_plainArray_00 + (8'h02 * i_plainArray_10) + (8'h03 * i_plainArray_20) + i_plainArray_30;
	assign o_mixedArray_20 = i_plainArray_00 + i_plainArray_10 + (8'h02 * i_plainArray_20) + (8'h03 * i_plainArray_30);
	assign o_mixedArray_30 = (8'h03 * i_plainArray_00) + i_plainArray_10 + i_plainArray_20 + (8'h02 * i_plainArray_30);

	// 2nd column
	assign o_mixedArray_01 = (8'h02 * i_plainArray_01) ^ (8'h03 * i_plainArray_11) ^ i_plainArray_21 ^ i_plainArray_31;
	assign o_mixedArray_11 = i_plainArray_01 ^ (8'h02 * i_plainArray_11) ^ (8'h03 * i_plainArray_21) ^ i_plainArray_31;
	assign o_mixedArray_21 = i_plainArray_01 ^ i_plainArray_11 ^ (8'h02 * i_plainArray_21) ^ (8'h03 * i_plainArray_31);
	assign o_mixedArray_31 = (8'h03 * i_plainArray_01) ^ i_plainArray_11 ^ i_plainArray_21 ^ (8'h02 * i_plainArray_31);

	// 3rd column
	assign o_mixedArray_02 = (8'h02 * i_plainArray_02) ^ (8'h03 * i_plainArray_12) ^ i_plainArray_22 ^ i_plainArray_32;
	assign o_mixedArray_12 = i_plainArray_02 ^ (8'h02 * i_plainArray_12) ^ (8'h03 * i_plainArray_22) ^ i_plainArray_32;
	assign o_mixedArray_22 = i_plainArray_02 ^ i_plainArray_12 ^ (8'h02 * i_plainArray_22) ^ (8'h03 * i_plainArray_32);
	assign o_mixedArray_32 = (8'h03 * i_plainArray_02) ^ i_plainArray_12 ^ i_plainArray_22 ^ (8'h02 * i_plainArray_32);

	// 4th column
	assign o_mixedArray_03 = (8'h02 * i_plainArray_03) ^ (8'h03 * i_plainArray_13) ^ i_plainArray_23 ^ i_plainArray_33;
	assign o_mixedArray_13 = i_plainArray_03 ^ (8'h02 * i_plainArray_13) ^ (8'h03 * i_plainArray_23) ^ i_plainArray_33;
	assign o_mixedArray_23 = i_plainArray_03 ^ i_plainArray_13 ^ (8'h02 * i_plainArray_23) ^ (8'h03 * i_plainArray_33);
	assign o_mixedArray_33 = (8'h03 * i_plainArray_03) ^ i_plainArray_13 ^ i_plainArray_23 ^ (8'h02 * i_plainArray_33);

endmodule