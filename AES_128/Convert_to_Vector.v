
// Converting the 8*8 input matrix to a 128-bit vector

module Convert_to_Vector(

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

	output [127:0] o_vector
	);

	assign  o_vector = {i_dataArray_00, i_dataArray_10, i_dataArray_20, i_dataArray_30,
						i_dataArray_01, i_dataArray_11, i_dataArray_21, i_dataArray_31,
						i_dataArray_02, i_dataArray_12, i_dataArray_22, i_dataArray_32,
						i_dataArray_03, i_dataArray_13, i_dataArray_23, i_dataArray_33};

endmodule