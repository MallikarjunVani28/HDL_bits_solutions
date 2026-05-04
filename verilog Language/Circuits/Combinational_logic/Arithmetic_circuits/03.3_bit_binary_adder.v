module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
    wire w1,w2,w3;
    FA in1 (a[0],b[0],cin,w1,sum[0]);
    FA in2 (a[1],b[1],w1,w2,sum[1]);
    FA in3 (a[2],b[2],w2,w3,sum[2]);
    
    
    assign cout ={ w3,w2,w1};
    

endmodule
module FA( 
    input a, b, cin,
    output cout, sum );
    
    assign sum = a^b^cin;
    assign cout = a&b | b&cin | a&cin;

endmodule
