`timescale 1 ps/ 1 ps

// ------CONTADOR -----------------------
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

// -----DECODER BCD TO 7SEG-------
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

// ----MAQUINA DE ESTADOS FINITOS---------

module sfm(input clk, reset, enb_3, output reg ch_vm, ch_ref, ch_zr, enb_0);
  reg [2:0] currentstate;
  reg [2:0] nextstate;
  
  // Definição dos estados
  localparam A = 3'b100;
  localparam B = 3'b110;
  localparam C = 3'b111;
  
  always @(posedge clk) begin
    if (reset)
      currentstate <= A;
    else
      currentstate <= nextstate;
  end
  
  always @(currentstate or enb_3) begin
    case (currentstate)
      A: if (enb_3) nextstate = B;
         else nextstate = A;
      B: if (enb_3) nextstate = C;
         else nextstate = B;
      C: if (enb_3) nextstate = A;
         else nextstate = C;
    endcase
  end
  
  always @(currentstate) begin
    ch_vm = (currentstate == A);
    ch_ref = (currentstate == B);
    ch_zr = (currentstate == C);
    enb_0 = ~reset;
  end
endmodule

module sfm_block(input clk, rst, enb_3, output reg ch_vm, ch_ref, ch_zr, enb_0);
  sfm u0 (.clk(clk), .reset(rst), .enb_3(enb_3), .ch_vm(ch_vm), .ch_ref(ch_ref), .ch_zr(ch_zr), .enb_0(enb_0));
endmodule

// -----REGISTRADOR ----------

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


// ----GERAL -------------
module bcd_999#(parameter width = 5)(
  input clk, rst,                                    
  output[width-1:0] qx0,qx1,qx2, cnt_max1, cnt_max2, cnt_max3, qs0,qs1,qs2,
  output ch_vm, ch_ref, ch_zr, enb_0,
  output [6:0] bit2,bit1,bit0);
  
  generate
    async_cnt u0 (.clk(clk), .reset(rst), .enb(enb_0), .count(qx0), .cnt_max(cnt_max1));
    block_reg b0 (.clk(clk), .rst(rst), .data_in(qx0), .data_out(qs0));
    decoder t0 (.i(qs0), .d(bit0));
    async_cnt u1 (.clk(clk), .reset(rst), .enb(cnt_max1), .count(qx1), .cnt_max(cnt_max2));
    block_reg b1 (.clk(clk), .rst(rst), .data_in(qx1), .data_out(qs1));
    decoder t1 (.i(qs1), .d(bit1));
    async_cnt u2 (.clk(clk), .reset(rst), .enb(cnt_max2), .count(qx2), .cnt_max(cnt_max3));
    block_reg b2 (.clk(clk), .rst(rst), .data_in(qx2), .data_out(qs2));
    decoder t2 (.i(qs2), .d(bit2));
    sfm_block m0 (.clk(clk), .rst(rst), .enb_3(cnt_max3), .ch_vm(ch_vm), .ch_ref(ch_ref), .ch_zr(ch_zr), .enb_0(enb_0));
  
  endgenerate
endmodule

/*module block#(parameter width = 5)(input clk, rst, enb, output[width-1:0] cnt_max1, cnt_max2, output[6:0] bit0, bit1, bit2);
  
  bcd_999 u0 (.clk(clk), .rst(rst), .enb(enb), .cnt_max1(cnt_max1), .cnt_max2(cnt_max2), .bit2(bit2), .bit1(bit1), .bit0(bit0));
endmodule*/