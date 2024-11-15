`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 01:47:57 PM
// Design Name: 
// Module Name: Lab_8_tb
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


module Lab_8_tb( );
    reg clk;
    wire [3:0] anode;
    wire [6:0] cathode;
    
    initial begin
        clk = 0;
    end
    always #1 clk = ~clk;
    
    Lab_8 uut(clk, anode, cathode);
endmodule

module bin2bcd_tb();
    reg clk, en;
    reg [11:0] bin_in;
    wire [15:0] bcd_out;
    wire ready;
    
    bin2bcd uut(clk, en, bin_in, bcd_out, ready);
    
    always #1 clk = ~clk;
    initial begin
        clk = 0;
        en = 0;
        bin_in = 3215;
        #10 en = 1;
        #56 bin_in = 1123;
    end
endmodule

module Counter_tb();
    wire [11:0] counter;
    reg clk, RSTN;
    always #1 clk = ~clk;
    
    initial begin
        clk = 0;
        RSTN = 0;
        #10 RSTN = 1;
    end
    
    Counter uut(clk, RSTN, counter);
endmodule