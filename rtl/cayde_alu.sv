/*
* ALU Module for 32-bit RISC-V processor
*/

module cayde_alu ( input cayde_pkg::alu_op op_i,
		   input logic [31:0] op_a,
		   input logic [31:0] op_b,

		   output logic [31:0] res_var
		);
	import cayde_pkg::*;

	always_comb begin
		unique case (op_i)
			ALU_ADD: res_var = op_a + op_b;
			ALU_SUB: res_var = op_a - op_b;
			ALU_XOR: res_var = op_a ^ op_b;
			ALU_AND: res_var = op_a && op_b;
			ALU_OR: res_var = op_a || op_b;
			ALU_NOT: res_var = !op_a;
			default: res_var = 32'b0;
		endcase
	end
endmodule
	