module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w1;
    wire [15:0] w2,w4;
    wire w3,w5;
    
    
    add16 in1(a[15:0],b[15:0],0,sum[15:0],w1);
    add16 in2(a[31:16],b[31:16],0,w2,w3);
    add16 in3(a[31:16],b[31:16],1,w4,w5);
   
    always @(w1,w2,w4)begin
        case(w1)
            1'b0 : sum[31:16] = w2;
            1'b1 : sum[31:16] = w4;
        endcase
    end
    
    
    

endmodule

