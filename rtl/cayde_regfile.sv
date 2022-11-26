/*
* Register file for cayde - RISC-V processor
*/

module cayde_regfile ( input logic clk,
		       input logic rst,
		       
		       input logic [4:0] raddr_in1,
		       input logic [4:0] raddr_in2,
		       input logic [4:0] waddr_in,
		       input logic [31:0] wdata_in,
		       input logic wen_in,

		       output logic [31:0] rdata_out11,
		       output logic [31:0] rdata_out12,
		     );
	reg [31:0] x0 = 32'b0, x1, x2, x3, x4, x5, x6, x7, x8, x9;
	reg [31:0] x10, x11, x12, x13, x14, x15, x16, x17, x18, x19;
	reg [31:0] x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31;

	always @(*) begin
		case (raddr_in1)
			5'b0_0000: rdata_out11 <= x0;
			5'b0_0001: rdata_out11 <= x1;
			5'b0_0010: rdata_out11 <= x2;
			5'b0_0011: rdata_out11 <= x3;
			5'b0_0100: rdata_out11 <= x4;
			5'b0_0101: rdata_out11 <= x5;
			5'b0_0110: rdata_out1 <= x6;
			5'b0_0111: rdata_out1 <= x7;
			5'b0_1000: rdata_out1 <= x8;
			5'b0_1001: rdata_out1 <= x9;
			5'b0_1010: rdata_out1 <= x10;
			5'b0_1011: rdata_out1 <= x11;
			5'b0_1100: rdata_out1 <= x12;
			5'b0_1101: rdata_out1 <= x13;
			5'b0_1110: rdata_out1 <= x14;
			5'b0_1111: rdata_out1 <= x15;
			5'b1_0000: rdata_out1 <= x16;
			5'b1_0001: rdata_out1 <= x17;
			5'b1_0010: rdata_out1 <= x18;
			5'b1_0011: rdata_out1 <= x19;
			5'b1_0100: rdata_out1 <= x20;
			5'b1_0101: rdata_out1 <= x21;
			5'b1_0110: rdata_out1 <= x22;
			5'b1_0111: rdata_out1 <= x23;
			5'b1_1000: rdata_out1 <= x24;
			5'b1_1001: rdata_out1 <= x25;
			5'b1_1010: rdata_out1 <= x26;
			5'b1_1011: rdata_out1 <= x27;
			5'b1_1100: rdata_out1 <= x28;
			5'b1_1101: rdata_out1 <= x29;
			5'b1_1110: rdata_out1 <= x30;
			5'b1_1111: rdata_out1 <= x31;
			default: rdata_out1 <= x0;
		endcase
	end

	always @(*) begin
		case (raddr_in2)
			5'b0_0000: rdata_out2 <= x0;
			5'b0_0001: rdata_out2 <= x1;
			5'b0_0010: rdata_out2 <= x2;
			5'b0_0011: rdata_out2 <= x3;
			5'b0_0100: rdata_out2 <= x4;
			5'b0_0101: rdata_out2 <= x5;
			5'b0_0110: rdata_out2 <= x6;
			5'b0_0111: rdata_out2 <= x7;
			5'b0_1000: rdata_out2 <= x8;
			5'b0_1001: rdata_out2 <= x9;
			5'b0_1010: rdata_out2 <= x10;
			5'b0_1011: rdata_out2 <= x11;
			5'b0_1100: rdata_out2 <= x12;
			5'b0_1101: rdata_out2 <= x13;
			5'b0_1110: rdata_out2 <= x14;
			5'b0_1111: rdata_out2 <= x15;
			5'b1_0000: rdata_out2 <= x16;
			5'b1_0001: rdata_out2 <= x17;
			5'b1_0010: rdata_out2 <= x18;
			5'b1_0011: rdata_out2 <= x19;
			5'b1_0100: rdata_out2 <= x20;
			5'b1_0101: rdata_out2 <= x21;
			5'b1_0110: rdata_out2 <= x22;
			5'b1_0111: rdata_out2 <= x23;
			5'b1_1000: rdata_out2 <= x24;
			5'b1_1001: rdata_out2 <= x25;
			5'b1_1010: rdata_out2 <= x26;
			5'b1_1011: rdata_out2 <= x27;
			5'b1_1100: rdata_out2 <= x28;
			5'b1_1101: rdata_out2 <= x29;
			5'b1_1110: rdata_out2 <= x30;
			5'b1_1111: rdata_out2 <= x31;
			default: rdata_out2 <= x0;
		endcase
	end

	always @(posedge clk) begin
		if (rst == 1) begin
			x1 <= 32'b0;
			x2 <= 32'b0;
			x3 <= 32'b0;
			x4 <= 32'b0;
			x5 <= 32'b0;
			x6 <= 32'b0;
			x7 <= 32'b0;
			x8 <= 32'b0;
			x9 <= 32'b0;
			x10 <= 32'b0;
			x11 <= 32'b0;
			x12 <= 32'b0;
			x13 <= 32'b0;
			x14 <= 32'b0;
			x15 <= 32'b0;
			x16 <= 32'b0;
			x17 <= 32'b0;
			x18 <= 32'b0;
			x19 <= 32'b0;
			x20 <= 32'b0;
			x21 <= 32'b0;
			x22 <= 32'b0;
			x23 <= 32'b0;
			x24 <= 32'b0;
			x25 <= 32'b0;
			x26 <= 32'b0;
			x27 <= 32'b0;
			x28 <= 32'b0;
			x29 <= 32'b0;
			x30 <= 32'b0;
			x31 <= 32'b0;
		end
		else if (wen_in) begin
			case (waddr_in)
				5'b0_0000: wdata_out <= x0;
				5'b0_0001: wdata_out <= x1;
				5'b0_0010: wdata_out <= x2;
				5'b0_0011: wdata_out <= x3;
				5'b0_0100: wdata_out <= x4;
				5'b0_0101: wdata_out <= x5;
				5'b0_0110: wdata_out <= x6;
				5'b0_0111: wdata_out <= x7;
				5'b0_1000: wdata_out <= x8;
				5'b0_1001: wdata_out <= x9;
				5'b0_1010: wdata_out <= x10;
				5'b0_1011: wdata_out <= x11;
				5'b0_1100: wdata_out <= x12;
				5'b0_1101: wdata_out <= x13;
				5'b0_1110: wdata_out <= x14;
				5'b0_1111: wdata_out <= x15;
				5'b1_0000: wdata_out <= x16;
				5'b1_0001: wdata_out <= x17;
				5'b1_0010: wdata_out <= x18;
				5'b1_0011: wdata_out <= x19;
				5'b1_0100: wdata_out <= x20;
				5'b1_0101: wdata_out <= x21;
				5'b1_0110: wdata_out <= x22;
				5'b1_0111: wdata_out <= x23;
				5'b1_1000: wdata_out <= x24;
				5'b1_1001: wdata_out <= x25;
				5'b1_1010: wdata_out <= x26;
				5'b1_1011: wdata_out <= x27;
				5'b1_1100: wdata_out <= x28;
				5'b1_1101: wdata_out <= x29;
				5'b1_1110: wdata_out <= x30;
				5'b1_1111: wdata_out <= x31;
				default: wdata_out <= x0;
			endcase
		end
	end	
endmodule
