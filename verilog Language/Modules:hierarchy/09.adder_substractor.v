module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire w3,w2;
    wire [31:0] w1;
    
    assign w1 = {32{sub}}^b;
    add16 in1(a[15:0],w1[15:0],sub,sum[15:0],w2);
    add16 in2(a[31:16],w1[31:16],w2,sum[31:16],w3);
    

endmodule
