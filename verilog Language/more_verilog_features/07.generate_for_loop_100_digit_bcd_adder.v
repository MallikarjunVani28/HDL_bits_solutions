module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [100:0]w;
    assign w[0]=cin;
    
    genvar i;
   
    generate 
       
            for(i=0;i<100;i=i+1)
                begin:bcd_adder
                    bcd_fadd in1(a[4*i+3:4*i],b[4*i+3:4*i],w[i],w[i+1],sum[4*i+3:4*i]);
               
        end
        endgenerate
    assign cout = w[100];
    

endmodule
