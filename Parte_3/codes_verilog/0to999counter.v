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
        cnt_max <= 1;
        count <= 0;
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

module bcd_999#(parameter width = 5)(input clk, rst, enb, output[width-1:0] q0,q1,q2, cnt_max1, cnt_max2, output [6:0] bit2,bit1,bit0);
  
  generate
    async_cnt u0 (.clk(clk), .reset(rst), .enb(enb), .count(q0), .cnt_max(cnt_max1));
    decoder t0 (.i(q0), .d(bit2));
    async_cnt u1 (.clk(clk), .reset(rst), .enb(cnt_max1), .count(q1), .cnt_max(cnt_max2));
    decoder t1 (.i(q1), .d(bit1));
    async_cnt u2 (.clk(clk), .reset(rst), .enb(cnt_max2), .count(q2), .cnt_max());
    decoder t2 (.i(q2), .d(bit0));
  
  endgenerate


endmodule