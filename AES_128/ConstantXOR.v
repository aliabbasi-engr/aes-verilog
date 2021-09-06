
// XORing the keyword with the round constant

module ConstantXOR(
	
	input [3:0] i_roundNumber,
	
	input [7:0] i_word_0,
	input [7:0] i_word_1,
	input [7:0] i_word_2,
	input [7:0] i_word_3,
	
	output [7:0] o_xoredWord_0,
	output [7:0] o_xoredWord_1,
	output [7:0] o_xoredWord_2,
	output [7:0] o_xoredWord_3
	);

	reg [7:0] r_roundConstant;

	always @*
	begin
    	case (i_roundNumber)
        	4'h0 : r_roundConstant = 8'h00;
        	4'h1 : r_roundConstant = 8'h01;
        	4'h2 : r_roundConstant = 8'h02;
        	4'h3 : r_roundConstant = 8'h04;
        	4'h4 : r_roundConstant = 8'h08;
        	4'h5 : r_roundConstant = 8'h10;
        	4'h6 : r_roundConstant = 8'h20;
        	4'h7 : r_roundConstant = 8'h40;
        	4'h8 : r_roundConstant = 8'h80;
        	4'h9 : r_roundConstant = 8'h1B;
        	4'hA : r_roundConstant = 8'h36;
        	default: r_roundConstant = 8'hzz;
    	endcase
	end

	assign o_xoredWord_0 = i_word_0 ^ r_roundConstant;
	assign o_xoredWord_1 = i_word_1;
	assign o_xoredWord_2 = i_word_2;
	assign o_xoredWord_3 = i_word_3;

endmodule