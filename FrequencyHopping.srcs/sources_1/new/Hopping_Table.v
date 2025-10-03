`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/30 15:32:56
// Design Name: 
// Module Name: Hopping_Table
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


module Hopping_Table#(
    parameter W_1=32'h0000_0000,W_2=32'h02ED_D151,W_3=32'h05DB_A2A2,W_4=32'h08C9_73F3
)(
    input wire[1:0] hop_sequence,    //跳频序列
    input wire clk, //基带信号时钟 1MHz
    input wire rst_n, //复位信号
    output reg[31:0] fcontrol_word    //频率控制字
);
    localparam S_1=2'b00,S_2=2'b01,S_3=2'b10,S_4=2'b11;
    reg[31:0] fcontrol_word_next;
    //组合逻辑部分
    always @(*) begin
        case(hop_sequence)
            S_1:    fcontrol_word_next =W_1 ;
            S_2:    fcontrol_word_next =W_2 ;
            S_3:    fcontrol_word_next =W_3 ;
            S_4:    fcontrol_word_next =W_4 ;
            default:    fcontrol_word_next =32'h0000_0000;
        endcase 
    end
    
    //时序逻辑部分
    always @(posedge clk or negedge rst_n)begin
        if(!rst_n)begin 
            fcontrol_word <= 32'h0000_0000;  //异步复位
        end 
        else begin 
            fcontrol_word <=fcontrol_word_next; //同步赋值
        end 
    end 
    
endmodule
