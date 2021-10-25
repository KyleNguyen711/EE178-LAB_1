
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2021 01:17:58 PM
// Design Name: 
// Module Name: full_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_tb;

wire t_out_sum, t_out_carry; 
reg t_a, t_b, t_c; 

//instantiate the unit under test(uut)
full_adder uut(.a(t_a), .b(t_b), .c(t_c), .fa_sum(t_out_sum), .fa_carry(t_out_carry)); 

//test vector generated    
initial 
begin
    // 1 
    t_a = 1'b0; 
    t_b = 1'b0; 
    t_c = 1'b0;
    #5 //2 
    t_a = 1'b0; 
    t_b = 1'b0; 
    t_c = 1'b1;
    #5 
    //3 
    t_a = 1'b0; 
    t_b = 1'b1; 
    t_c = 1'b0;
    #5 
    //4 
    t_a = 1'b0; 
    t_b = 1'b1; 
    t_c = 1'b1;
    #5 
    //5 
    t_a = 1'b1; 
    t_b = 1'b0; 
    t_c = 1'b0;
    #5 
    //6 
    t_a = 1'b1; 
    t_b = 1'b0; 
    t_c = 1'b1;
    #5 
    //7 
    t_a = 1'b1; 
    t_b = 1'b1; 
    t_c = 1'b0;
    #5 
    //8
    t_a = 1'b1; 
    t_b = 1'b1; 
    t_c = 1'b1;
end 
endmodule