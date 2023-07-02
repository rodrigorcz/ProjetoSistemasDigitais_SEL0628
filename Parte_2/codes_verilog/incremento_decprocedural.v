module async_count #(parameter width = 4) (
  input clk,
  input reset,
  output reg [width-1:0] count
);

  always @(posedge clk or posedge reset) begin
    if (reset)
      count <= 0;
    else
      count <= count + 1;
  end

endmodule
