/***************************************************
 * Module: alu
 * Project: mips_16
 * Author: fzy
 * Description: 
 *     alu implementation
 *
 * Revise history:
 *     
 ***************************************************/
`timescale 1ns/1ps
`include "mips_16_defs.v"
module alu
(
	input		[15:0]	a,		//src1
	input		[15:0]	b,		//src2
	input		[2:0]	cmd,	//function sel
	
	output	reg	[15:0]	r		//result	
);
	always @ (*) begin
		case(cmd)
			`ALU_NC	:
				r = 16'bx;
			`ALU_ADD:
				r = a + b;
			`ALU_SUB:
				r = a - b;
			`ALU_AND:
				r = a & b;
			`ALU_OR	:
				r = a | b;
			`ALU_XOR:
				r = a ^ b;
			`ALU_SL	:
				r = a << b;
			`ALU_MOD	:
				r = a % b;
			`ALU_DIV	:
				r = a / b;
			default	:
				begin
					r = 0;
`ifndef CODE_FOR_SYNTHESIS
					$display("ERROR: Unknown alu cmd: %b \n", cmd);
					//$stop;
`endif
				end
		endcase
	end
	
endmodule 