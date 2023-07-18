`timescale 1 ps/ 1 ps

module async_cnt #(parameter width = 5) (
  input clk,
  input reset, enb,
  output reg [width-1:0] count, cnt_max
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      cnt_max <= 0;
      count <= 0;
    end
    else
      if (count == 9) begin
        count <= 0;
        cnt_max <= 0;
      end
    else begin
      if (count == 8)
        cnt_max <= 1;
      else
        cnt_max <= 0;
      if(enb)
        count <= count + 1;
    end
  end
  /*always @(negedge clk) begin
    enb <=0;
  end*/

endmodule

module decoder (i, d);
  
  input [4:0] i;
  output reg[6:0] d;
  
  always @* begin
    case (i)
      5'b00000: d = 7'b1111110;
      5'b00001: d = 7'b1001111;
      5'b00010: d = 7'b1101101;
      5'b00011: d = 7'b1111001;
      5'b00100: d = 7'b0110011;
      5'b00101: d = 7'b1011011;
      5'b00110: d = 7'b1011111;
      5'b00111: d = 7'b1110000;
      5'b01000: d = 7'b1111111;
      5'b01001: d = 7'b1110011;
      default: d = 7'b1111111;
    endcase
  end
endmodule

module registrador(input clk, rst,
  
                   input [6:0] data_in,
                   output reg [6:0] data_out);
  
  always @(posedge clk) begin
      data_out <= data_in;
    if (rst)
      data_out <= 7'd0;
  end
endmodule

module block_reg(input clk, rst, input[6:0] data_in, output[6:0] data_out);
  registrador r0 (.clk(clk), .rst(rst), .data_in(data_in), .data_out(data_out));
endmodule

module bcd_999#(parameter width = 5)(
  input clk, rst, enb, 
  output[width-1:0] qx0,qx1,qx2, cnt_max1, cnt_max2, qs0, qs1, qs2,
  output [6:0] bit2,bit1,bit0);
  
  generate
    async_cnt u0 (.clk(clk), .reset(rst), .enb(enb), .count(qx0), .cnt_max(cnt_max1));
    block_reg b0 (.clk(clk), .rst(rst), .data_in(qx0), .data_out(qs0));
    decoder t0 (.i(qs0), .d(bit0));
    async_cnt u1 (.clk(clk), .reset(rst), .enb(cnt_max1), .count(qx1), .cnt_max(cnt_max2));
    block_reg b1 (.clk(clk), .rst(rst), .data_in(qx1), .data_out(qs1));
    decoder t1 (.i(qs1), .d(bit1));
    async_cnt u2 (.clk(clk), .reset(rst), .enb(cnt_max2), .count(qx2), .cnt_max());
    block_reg b2 (.clk(clk), .rst(rst), .data_in(qx2), .data_out(qs2));
    decoder t2 (.i(qs2), .d(bit2));
  
  endgenerate
endmodule