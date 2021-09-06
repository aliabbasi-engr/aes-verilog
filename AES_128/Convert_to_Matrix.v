
// Converting the 128-bit input vector to a 8*8 matrix

module Convert_to_Matrix(
	input [127:0] i_vector,
	
	output [7:0] o_dataArray_00,
	output [7:0] o_dataArray_01,
	output [7:0] o_dataArray_02,
	output [7:0] o_dataArray_03,

	output [7:0] o_dataArray_10,
	output [7:0] o_dataArray_11,
	output [7:0] o_dataArray_12,
	output [7:0] o_dataArray_13,

	output [7:0] o_dataArray_20,
	output [7:0] o_dataArray_21,
	output [7:0] o_dataArray_22,
	output [7:0] o_dataArray_23,

	output [7:0] o_dataArray_30,
	output [7:0] o_dataArray_31,
	output [7:0] o_dataArray_32,
	output [7:0] o_dataArray_33
	);

	// 1st row
	assign o_dataArray_00 = i_vector[127:120];
	assign o_dataArray_01 = i_vector[95:88];
	assign o_dataArray_02 = i_vector[63:56];
	assign o_dataArray_03 = i_vector[31:24];

	// 2nd row
	assign o_dataArray_10 = i_vector[119:112];
	assign o_dataArray_11 = i_vector[87:80];
	assign o_dataArray_12 = i_vector[55:48];
	assign o_dataArray_13 = i_vector[23:16];

	// 3rd row
	assign o_dataArray_20 = i_vector[111:104];
	assign o_dataArray_21 = i_vector[79:72];
	assign o_dataArray_22 = i_vector[47:40];
	assign o_dataArray_23 = i_vector[15:8];

	// 4th row
	assign o_dataArray_30 = i_vector[103:96];
	assign o_dataArray_31 = i_vector[71:64];
	assign o_dataArray_32 = i_vector[39:32];
	assign o_dataArray_33 = i_vector[7:0];

endmodule