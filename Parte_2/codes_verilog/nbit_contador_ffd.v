module modN_ctr # (parameter N = 10, parameter WIDTH = 8) ( input enb, clk, input rstn, output reg[WIDTH-1:0] out, cnt_max); 
  always @ (posedge clk) begin
    if (!rstn) begin
      cnt_max <= 0;
      out <= 0;
    end
    else begin
      if (out == N-1)
        out <= 0;
      else
        if (enb)
          out <= out + 1; 
      if (out == N-1)
        cnt_max <= 1;
      else 
        cnt_max <= 0; 
    end
  end 
endmodule