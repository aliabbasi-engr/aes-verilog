
// XORing the data matrix with the key matrix in the initial step and each round 

module Add_RoundKey(
	
	// Input data
	input [7:0] i_dataArray_00,
	input [7:0] i_dataArray_01,
	input [7:0] i_dataArray_02,
	input [7:0] i_dataArray_03,

	input [7:0] i_dataArray_10,
	input [7:0] i_dataArray_11,
	input [7:0] i_dataArray_12,
	input [7:0] i_dataArray_13,

	input [7:0] i_dataArray_20,
	input [7:0] i_dataArray_21,
	input [7:0] i_dataArray_22,
	input [7:0] i_dataArray_23,

	input [7:0] i_dataArray_30,
	input [7:0] i_dataArray_31,
	input [7:0] i_dataArray_32,
	input [7:0] i_dataArray_33,

	// Key
	input [7:0] i_keyArray_00,
	input [7:0] i_keyArray_01,
	input [7:0] i_keyArray_02,
	input [7:0] i_keyArray_03,

	input [7:0] i_keyArray_10,
	input [7:0] i_keyArray_11,
	input [7:0] i_keyArray_12,
	input [7:0] i_keyArray_13,

	input [7:0] i_keyArray_20,
	input [7:0] i_keyArray_21,
	input [7:0] i_keyArray_22,
	input [7:0] i_keyArray_23,

	input [7:0] i_keyArray_30,
	input [7:0] i_keyArray_31,
	input [7:0] i_keyArray_32,
	input [7:0] i_keyArray_33,

	// Output
	output [7:0] o_cipherArray_00,
	output [7:0] o_cipherArray_01,
	output [7:0] o_cipherArray_02,
	output [7:0] o_cipherArray_03,

	output [7:0] o_cipherArray_10,
	output [7:0] o_cipherArray_11,
	output [7:0] o_cipherArray_12,
	output [7:0] o_cipherArray_13,

	output [7:0] o_cipherArray_20,
	output [7:0] o_cipherArray_21,
	output [7:0] o_cipherArray_22,
	output [7:0] o_cipherArray_23,

	output [7:0] o_cipherArray_30,
	output [7:0] o_cipherArray_31,
	output [7:0] o_cipherArray_32,
	output [7:0] o_cipherArray_33
	);
	
	// 1st Row
	assign o_cipherArray_00 = i_dataArray_00 ^ i_keyArray_00;
	assign o_cipherArray_01 = i_dataArray_01 ^ i_keyArray_01;
	assign o_cipherArray_02 = i_dataArray_02 ^ i_keyArray_02;
	assign o_cipherArray_03 = i_dataArray_03 ^ i_keyArray_03;

	// 2nd Row
	assign o_cipherArray_10 = i_dataArray_10 ^ i_keyArray_10;
	assign o_cipherArray_11 = i_dataArray_11 ^ i_keyArray_11;
	assign o_cipherArray_12 = i_dataArray_12 ^ i_keyArray_12;
	assign o_cipherArray_13 = i_dataArray_13 ^ i_keyArray_13;
	
	// 3rd Row
	assign o_cipherArray_20 = i_dataArray_20 ^ i_keyArray_20;
	assign o_cipherArray_21 = i_dataArray_21 ^ i_keyArray_21;
	assign o_cipherArray_22 = i_dataArray_22 ^ i_keyArray_22;
	assign o_cipherArray_23 = i_dataArray_23 ^ i_keyArray_23;

	// 4th Row
	assign o_cipherArray_30 = i_dataArray_30 ^ i_keyArray_30;
	assign o_cipherArray_31 = i_dataArray_31 ^ i_keyArray_31;
	assign o_cipherArray_32 = i_dataArray_32 ^ i_keyArray_32;
	assign o_cipherArray_33 = i_dataArray_33 ^ i_keyArray_33;

endmodule