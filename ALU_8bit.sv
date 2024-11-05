`timescale 1ns / 1ps
/*
 Author: Harharan Sethumadhavan
*/

module ALU_8bit(input wire[7:0] a, input wire[7:0] b, input wire[2:0] op, output reg[7:0] out);
always @(*) begin
case(op)//goes through each case given by the op wire

3'b000: out = a + b;//add a and b

3'b001: out = a - b; // subtract a and b

3'b010: out = a & b; // and 

3'b011: out = a | b; // or

3'b100: out = a ^ b; // xor

3'b101: out = ~a; // not on value of a (referenced CJ and ChatGPT)

3'b110: out = a << b[2:0]; // shifts left based off b[2:0] (referenced CJ and ChatGPT)

3'b111: out = a >> b[2:0]; // shifts right based off b[2:0] (referenced CJ and ChatGPT)

default: out = 0;

endcase

end

endmodule