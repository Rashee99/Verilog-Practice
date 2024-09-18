module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire and_ab, and_cd, or_andab_andcd;
    
    and (and_ab,a,b);
    and (and_cd,c,d);
    or (or_andab_andcd,and_ab, and_cd);
    
	assign out = or_andab_andcd;
    assign out_n = ~or_andab_andcd;

endmodule
