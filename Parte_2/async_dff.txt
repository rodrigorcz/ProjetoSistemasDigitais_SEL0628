module d_ff(output reg q, qb, input clk, clrn, d);
  always @ (negedge clk or posedge clrn)
	if (clrn)
		q = 1'b0;
	else
		q = d;
	assign qb = ~q;
endmodule

module async_counter #(parameter width = 4, max_value = 10)
  (output [width-1:0] q, cnt_max, input enb, rst_s, ck);
  
  genvar i;
  generate
    for (i=0; i < width; i=i+1)
      if (i == 0)
        d_ff u0 (.q(q[i]), .qb(), .clk(ck && enb), .clrn(rst_s), .d(1'b1 ^ q[i]));
      else
        d_ff ui (.q(q[i]), .qb(), .clk(q[i-1]), .clrn(rst_s), .d(1'b1 ^ q[i]));
  endgenerate

  assign cnt_max = &q;

endmodule