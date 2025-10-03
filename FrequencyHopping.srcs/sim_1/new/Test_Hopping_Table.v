`timescale 100ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/03 16:51:43
// Design Name: 
// Module Name: Test_Hopping_Table
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


module Test_Hopping_Table();
    reg clk,rst_n;
    reg[1:0] hop_sequence;
    wire[31:0] fcontrol_word;
    parameter CLK_PERIOD=10;
    //≥ı ºªØ
    initial begin
        #0 clk=1'b0;
        #0 rst_n=1'b1;
        #0 hop_sequence =2'b00;
        #(CLK_PERIOD*5) rst_n=1'b0;
        #(CLK_PERIOD*7) rst_n=1'b1;
    end
    initial begin
        forever begin
            #CLK_PERIOD hop_sequence=2'b00;
            #CLK_PERIOD hop_sequence=2'b01;
            #CLK_PERIOD hop_sequence=2'b10;
            #CLK_PERIOD hop_sequence=2'b11;
        end
    end
    always #(CLK_PERIOD/2) clk =~clk;
    
    Hopping_Table H1(
        .hop_sequence(hop_sequence),
        .clk(clk),
        .rst_n(rst_n),
        .fcontrol_word(fcontrol_word)
    );
endmodule
