`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2021 10:28:18 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(fa_sum, fa_carry, a, b, c);
    input a, b, c;
    output fa_sum, fa_carry;

    wire ha_sum1, ha_carry1, ha_carry2;
    half_adder HA1(ha_sum1, ha_carry1, a, b);
    half_adder HA2(fa_sum, ha_carry2, ha_sum1, c);
    or or1(fa_carry, ha_carry2, ha_carry1);
endmodule
