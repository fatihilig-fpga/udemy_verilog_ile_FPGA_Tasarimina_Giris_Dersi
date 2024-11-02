`timescale 1ns / 1ps
module SystemX_v(
    input  wire A,
    input  wire B,
    input  wire C,
    output wire F
    );
    reg F_v;
    
    always @(A,B,C) begin : lut_design
        case ({A,B,C}) 
            3'b000 : F_v= 1'b1;
            3'b010 : F_v= 1'b1;
            3'b110 : F_v= 1'b1;
            default: F_v= 1'b0;
        endcase
    end  
    assign F = F_v;
endmodule
