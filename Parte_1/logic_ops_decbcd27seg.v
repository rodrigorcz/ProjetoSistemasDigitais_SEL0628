module logisimTopLevelShell(  );
   wire s_T;
   wire s_a;
   wire s_b;
   wire s_bit0;
   wire s_bit1;
   wire s_bit2;
   wire s_bit3;
   wire s_c;
   wire s_d;
   wire s_e;
   wire s_f;
   wire s_g;

   assign s_T    = 1'b1;
   assign s_bit0 = 1'b0;
   assign s_bit1 = 1'b0;
   assign s_bit2 = 1'b0;
   assign s_bit3 = 1'b0;
endmodule

/*
 ** Component : AND_GATE                                                     **
*/

module AND_GATE( input1,
                 input2,
                 result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [64:0] BubblesMask = 1;
  
   input input1;
   input input2;

   output result;
  
   wire s_realInput1;
   wire s_realInput2;

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1&
                   s_realInput2;

endmodule

//----------------------------------------

/*                                                   **
 ** Component : AND_GATE_3_INPUTS                                            **
 **                                                                          **
*/

module AND_GATE_3_INPUTS( input1,
                          input2,
                          input3,
                          result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [64:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input2;
   input input3;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput2;
   wire s_realInput3;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1&
                   s_realInput2&
                   s_realInput3;

endmodule

//---------------------------------------------

/*
 ** Component : AND_GATE_4_INPUTS                                            **
 **                                                                          **
*/

module AND_GATE_4_INPUTS( input1,
                          input2,
                          input3,
                          input4,
                          result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [64:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input2;
   input input3;
   input input4;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput2;
   wire s_realInput3;
   wire s_realInput4;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;
   assign  s_realInput4 = (BubblesMask[3] == 1'b0) ? input4 : ~input4;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1&
                   s_realInput2&
                   s_realInput3&
                   s_realInput4;

endmodule

/*
 ** Component : OR_GATE_8_INPUTS                                             **
 **                                                                          **
*/

module OR_GATE_8_INPUTS( input1,
                         input2,
                         input3,
                         input4,
                         input5,
                         input6,
                         input7,
                         input8,
                         result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [64:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input2;
   input input3;
   input input4;
   input input5;
   input input6;
   input input7;
   input input8;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput2;
   wire s_realInput3;
   wire s_realInput4;
   wire s_realInput5;
   wire s_realInput6;
   wire s_realInput7;
   wire s_realInput8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;
   assign  s_realInput4 = (BubblesMask[3] == 1'b0) ? input4 : ~input4;
   assign  s_realInput5 = (BubblesMask[4] == 1'b0) ? input5 : ~input5;
   assign  s_realInput6 = (BubblesMask[5] == 1'b0) ? input6 : ~input6;
   assign  s_realInput7 = (BubblesMask[6] == 1'b0) ? input7 : ~input7;
   assign  s_realInput8 = (BubblesMask[7] == 1'b0) ? input8 : ~input8;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1|
                   s_realInput2|
                   s_realInput3|
                   s_realInput4|
                   s_realInput5|
                   s_realInput6|
                   s_realInput7|
                   s_realInput8;

endmodule

/*
 ** Component : OR_GATE_10_INPUTS                                            **
 **                                                                          **
*/

module OR_GATE_10_INPUTS( input1,
                          input10,
                          input2,
                          input3,
                          input4,
                          input5,
                          input6,
                          input7,
                          input8,
                          input9,
                          result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [64:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input10;
   input input2;
   input input3;
   input input4;
   input input5;
   input input6;
   input input7;
   input input8;
   input input9;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput10;
   wire s_realInput2;
   wire s_realInput3;
   wire s_realInput4;
   wire s_realInput5;
   wire s_realInput6;
   wire s_realInput7;
   wire s_realInput8;
   wire s_realInput9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;
   assign  s_realInput4 = (BubblesMask[3] == 1'b0) ? input4 : ~input4;
   assign  s_realInput5 = (BubblesMask[4] == 1'b0) ? input5 : ~input5;
   assign  s_realInput6 = (BubblesMask[5] == 1'b0) ? input6 : ~input6;
   assign  s_realInput7 = (BubblesMask[6] == 1'b0) ? input7 : ~input7;
   assign  s_realInput8 = (BubblesMask[7] == 1'b0) ? input8 : ~input8;
   assign  s_realInput9 = (BubblesMask[8] == 1'b0) ? input9 : ~input9;
   assign  s_realInput10 = (BubblesMask[9] == 1'b0) ? input10 : ~input10;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1|
                   s_realInput2|
                   s_realInput3|
                   s_realInput4|
                   s_realInput5|
                   s_realInput6|
                   s_realInput7|
                   s_realInput8|
                   s_realInput9|
                   s_realInput10;

endmodule

/*
 ** Component : OR_GATE_11_INPUTS                                            **
 **                                                                          **
*/

module OR_GATE_11_INPUTS( input1,
                          input10,
                          input11,
                          input2,
                          input3,
                          input4,
                          input5,
                          input6,
                          input7,
                          input8,
                          input9,
                          result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [64:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input10;
   input input11;
   input input2;
   input input3;
   input input4;
   input input5;
   input input6;
   input input7;
   input input8;
   input input9;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput10;
   wire s_realInput11;
   wire s_realInput2;
   wire s_realInput3;
   wire s_realInput4;
   wire s_realInput5;
   wire s_realInput6;
   wire s_realInput7;
   wire s_realInput8;
   wire s_realInput9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;
   assign  s_realInput4 = (BubblesMask[3] == 1'b0) ? input4 : ~input4;
   assign  s_realInput5 = (BubblesMask[4] == 1'b0) ? input5 : ~input5;
   assign  s_realInput6 = (BubblesMask[5] == 1'b0) ? input6 : ~input6;
   assign  s_realInput7 = (BubblesMask[6] == 1'b0) ? input7 : ~input7;
   assign  s_realInput8 = (BubblesMask[7] == 1'b0) ? input8 : ~input8;
   assign  s_realInput9 = (BubblesMask[8] == 1'b0) ? input9 : ~input9;
   assign  s_realInput10 = (BubblesMask[9] == 1'b0) ? input10 : ~input10;
   assign  s_realInput11 = (BubblesMask[10] == 1'b0) ? input11 : ~input11;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1|
                   s_realInput2|
                   s_realInput3|
                   s_realInput4|
                   s_realInput5|
                   s_realInput6|
                   s_realInput7|
                   s_realInput8|
                   s_realInput9|
                   s_realInput10|
                   s_realInput11;

endmodule

/*
 ** Component : OR_GATE_12_INPUTS                                            **
 **                                                                          **
*/

module OR_GATE_12_INPUTS( input1,
                          input10,
                          input11,
                          input12,
                          input2,
                          input3,
                          input4,
                          input5,
                          input6,
                          input7,
                          input8,
                          input9,
                          result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [64:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input10;
   input input11;
   input input12;
   input input2;
   input input3;
   input input4;
   input input5;
   input input6;
   input input7;
   input input8;
   input input9;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput10;
   wire s_realInput11;
   wire s_realInput12;
   wire s_realInput2;
   wire s_realInput3;
   wire s_realInput4;
   wire s_realInput5;
   wire s_realInput6;
   wire s_realInput7;
   wire s_realInput8;
   wire s_realInput9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;
   assign  s_realInput4 = (BubblesMask[3] == 1'b0) ? input4 : ~input4;
   assign  s_realInput5 = (BubblesMask[4] == 1'b0) ? input5 : ~input5;
   assign  s_realInput6 = (BubblesMask[5] == 1'b0) ? input6 : ~input6;
   assign  s_realInput7 = (BubblesMask[6] == 1'b0) ? input7 : ~input7;
   assign  s_realInput8 = (BubblesMask[7] == 1'b0) ? input8 : ~input8;
   assign  s_realInput9 = (BubblesMask[8] == 1'b0) ? input9 : ~input9;
   assign  s_realInput10 = (BubblesMask[9] == 1'b0) ? input10 : ~input10;
   assign  s_realInput11 = (BubblesMask[10] == 1'b0) ? input11 : ~input11;
   assign  s_realInput12 = (BubblesMask[11] == 1'b0) ? input12 : ~input12;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1|
                   s_realInput2|
                   s_realInput3|
                   s_realInput4|
                   s_realInput5|
                   s_realInput6|
                   s_realInput7|
                   s_realInput8|
                   s_realInput9|
                   s_realInput10|
                   s_realInput11|
                   s_realInput12;

endmodule

/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : OR_GATE_14_INPUTS                                            **
 **                                                                          **
 *****************************************************************************/

module OR_GATE_14_INPUTS( input1,
                          input10,
                          input11,
                          input12,
                          input13,
                          input14,
                          input2,
                          input3,
                          input4,
                          input5,
                          input6,
                          input7,
                          input8,
                          input9,
                          result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [64:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input10;
   input input11;
   input input12;
   input input13;
   input input14;
   input input2;
   input input3;
   input input4;
   input input5;
   input input6;
   input input7;
   input input8;
   input input9;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput10;
   wire s_realInput11;
   wire s_realInput12;
   wire s_realInput13;
   wire s_realInput14;
   wire s_realInput2;
   wire s_realInput3;
   wire s_realInput4;
   wire s_realInput5;
   wire s_realInput6;
   wire s_realInput7;
   wire s_realInput8;
   wire s_realInput9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;
   assign  s_realInput4 = (BubblesMask[3] == 1'b0) ? input4 : ~input4;
   assign  s_realInput5 = (BubblesMask[4] == 1'b0) ? input5 : ~input5;
   assign  s_realInput6 = (BubblesMask[5] == 1'b0) ? input6 : ~input6;
   assign  s_realInput7 = (BubblesMask[6] == 1'b0) ? input7 : ~input7;
   assign  s_realInput8 = (BubblesMask[7] == 1'b0) ? input8 : ~input8;
   assign  s_realInput9 = (BubblesMask[8] == 1'b0) ? input9 : ~input9;
   assign  s_realInput10 = (BubblesMask[9] == 1'b0) ? input10 : ~input10;
   assign  s_realInput11 = (BubblesMask[10] == 1'b0) ? input11 : ~input11;
   assign  s_realInput12 = (BubblesMask[11] == 1'b0) ? input12 : ~input12;
   assign  s_realInput13 = (BubblesMask[12] == 1'b0) ? input13 : ~input13;
   assign  s_realInput14 = (BubblesMask[13] == 1'b0) ? input14 : ~input14;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1|
                   s_realInput2|
                   s_realInput3|
                   s_realInput4|
                   s_realInput5|
                   s_realInput6|
                   s_realInput7|
                   s_realInput8|
                   s_realInput9|
                   s_realInput10|
                   s_realInput11|
                   s_realInput12|
                   s_realInput13|
                   s_realInput14;

endmodule


module main( T,
             a,
             b,
             bit0,
             bit1,
             bit2,
             bit3,
             c,
             d,
             e,
             f,
             g );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input T;
   input bit0;
   input bit1;
   input bit2;
   input bit3;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output a;
   output b;
   output c;
   output d;
   output e;
   output f;
   output g;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet10;
   wire s_logisimNet11;
   wire s_logisimNet12;
   wire s_logisimNet13;
   wire s_logisimNet14;
   wire s_logisimNet15;
   wire s_logisimNet16;
   wire s_logisimNet17;
   wire s_logisimNet18;
   wire s_logisimNet19;
   wire s_logisimNet2;
   wire s_logisimNet20;
   wire s_logisimNet21;
   wire s_logisimNet22;
   wire s_logisimNet23;
   wire s_logisimNet24;
   wire s_logisimNet25;
   wire s_logisimNet26;
   wire s_logisimNet27;
   wire s_logisimNet28;
   wire s_logisimNet29;
   wire s_logisimNet3;
   wire s_logisimNet30;
   wire s_logisimNet31;
   wire s_logisimNet32;
   wire s_logisimNet33;
   wire s_logisimNet34;
   wire s_logisimNet35;
   wire s_logisimNet36;
   wire s_logisimNet37;
   wire s_logisimNet38;
   wire s_logisimNet39;
   wire s_logisimNet4;
   wire s_logisimNet40;
   wire s_logisimNet41;
   wire s_logisimNet42;
   wire s_logisimNet43;
   wire s_logisimNet44;
   wire s_logisimNet45;
   wire s_logisimNet46;
   wire s_logisimNet47;
   wire s_logisimNet48;
   wire s_logisimNet49;
   wire s_logisimNet5;
   wire s_logisimNet50;
   wire s_logisimNet51;
   wire s_logisimNet52;
   wire s_logisimNet53;
   wire s_logisimNet54;
   wire s_logisimNet55;
   wire s_logisimNet56;
   wire s_logisimNet57;
   wire s_logisimNet58;
   wire s_logisimNet59;
   wire s_logisimNet6;
   wire s_logisimNet60;
   wire s_logisimNet61;
   wire s_logisimNet62;
   wire s_logisimNet63;
   wire s_logisimNet64;
   wire s_logisimNet65;
   wire s_logisimNet66;
   wire s_logisimNet67;
   wire s_logisimNet68;
   wire s_logisimNet69;
   wire s_logisimNet7;
   wire s_logisimNet70;
   wire s_logisimNet71;
   wire s_logisimNet72;
   wire s_logisimNet73;
   wire s_logisimNet74;
   wire s_logisimNet75;
   wire s_logisimNet76;
   wire s_logisimNet77;
   wire s_logisimNet78;
   wire s_logisimNet79;
   wire s_logisimNet8;
   wire s_logisimNet80;
   wire s_logisimNet81;
   wire s_logisimNet82;
   wire s_logisimNet83;
   wire s_logisimNet84;
   wire s_logisimNet85;
   wire s_logisimNet86;
   wire s_logisimNet87;
   wire s_logisimNet88;
   wire s_logisimNet89;
   wire s_logisimNet9;
   wire s_logisimNet90;
   wire s_logisimNet91;
   wire s_logisimNet92;
   wire s_logisimNet93;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet1  = bit0;
   assign s_logisimNet13 = bit1;
   assign s_logisimNet2  = bit3;
   assign s_logisimNet3  = T;
   assign s_logisimNet8  = bit2;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign a = s_logisimNet91;
   assign b = s_logisimNet65;
   assign c = s_logisimNet16;
   assign d = s_logisimNet44;
   assign e = s_logisimNet43;
   assign f = s_logisimNet85;
   assign g = s_logisimNet56;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Porta NOT
   assign s_logisimNet6 = ~s_logisimNet8;

   // Porta NOT
   assign s_logisimNet7 = ~s_logisimNet3;

   // Porta NOT
   assign s_logisimNet4 = ~s_logisimNet1;

   // Porta NOT
   assign s_logisimNet0 = ~s_logisimNet13;

   // Porta NOT
   assign s_logisimNet12 = ~s_logisimNet2;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_1 (.input1(s_logisimNet8),
               .input2(s_logisimNet4),
               .input3(s_logisimNet7),
               .result(s_logisimNet64));

   OR_GATE_12_INPUTS #(.BubblesMask(12'h000))
      GATES_2 (.input1(s_logisimNet14),
               .input10(s_logisimNet29),
               .input11(s_logisimNet31),
               .input12(s_logisimNet35),
               .input2(s_logisimNet89),
               .input3(s_logisimNet54),
               .input4(s_logisimNet92),
               .input5(s_logisimNet59),
               .input6(s_logisimNet41),
               .input7(s_logisimNet18),
               .input8(s_logisimNet22),
               .input9(s_logisimNet25),
               .result(s_logisimNet91));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_3 (.input1(s_logisimNet12),
               .input2(s_logisimNet13),
               .input3(s_logisimNet4),
               .input4(s_logisimNet3),
               .result(s_logisimNet49));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet12),
               .input2(s_logisimNet8),
               .result(s_logisimNet20));

   OR_GATE_14_INPUTS #(.BubblesMask({2'b00, 12'h000}))
      GATES_5 (.input1(s_logisimNet70),
               .input10(s_logisimNet50),
               .input11(s_logisimNet23),
               .input12(s_logisimNet71),
               .input13(s_logisimNet79),
               .input14(s_logisimNet83),
               .input2(s_logisimNet86),
               .input3(s_logisimNet68),
               .input4(s_logisimNet17),
               .input5(s_logisimNet53),
               .input6(s_logisimNet69),
               .input7(s_logisimNet49),
               .input8(s_logisimNet63),
               .input9(s_logisimNet67),
               .result(s_logisimNet44));

   OR_GATE_14_INPUTS #(.BubblesMask({2'b00, 12'h000}))
      GATES_6 (.input1(s_logisimNet62),
               .input10(s_logisimNet82),
               .input11(s_logisimNet66),
               .input12(s_logisimNet46),
               .input13(s_logisimNet21),
               .input14(s_logisimNet93),
               .input2(s_logisimNet42),
               .input3(s_logisimNet39),
               .input4(s_logisimNet27),
               .input5(s_logisimNet58),
               .input6(s_logisimNet11),
               .input7(s_logisimNet32),
               .input8(s_logisimNet84),
               .input9(s_logisimNet87),
               .result(s_logisimNet56));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_7 (.input1(s_logisimNet12),
               .input2(s_logisimNet13),
               .input3(s_logisimNet4),
               .result(s_logisimNet84));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_8 (.input1(s_logisimNet8),
               .input2(s_logisimNet13),
               .input3(s_logisimNet4),
               .input4(s_logisimNet3),
               .result(s_logisimNet79));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_9 (.input1(s_logisimNet6),
               .input2(s_logisimNet4),
               .input3(s_logisimNet3),
               .result(s_logisimNet30));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_10 (.input1(s_logisimNet12),
                .input2(s_logisimNet0),
                .input3(s_logisimNet7),
                .result(s_logisimNet26));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_11 (.input1(s_logisimNet12),
                .input2(s_logisimNet8),
                .input3(s_logisimNet4),
                .result(s_logisimNet78));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_12 (.input1(s_logisimNet2),
                .input2(s_logisimNet0),
                .input3(s_logisimNet1),
                .input4(s_logisimNet3),
                .result(s_logisimNet88));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_13 (.input1(s_logisimNet13),
                .input2(s_logisimNet4),
                .input3(s_logisimNet3),
                .result(s_logisimNet21));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_14 (.input1(s_logisimNet2),
                .input2(s_logisimNet4),
                .input3(s_logisimNet3),
                .result(s_logisimNet75));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_15 (.input1(s_logisimNet2),
                .input2(s_logisimNet0),
                .input3(s_logisimNet4),
                .result(s_logisimNet22));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_16 (.input1(s_logisimNet6),
                .input2(s_logisimNet13),
                .input3(s_logisimNet3),
                .result(s_logisimNet62));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_17 (.input1(s_logisimNet6),
                .input2(s_logisimNet13),
                .input3(s_logisimNet4),
                .input4(s_logisimNet7),
                .result(s_logisimNet68));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_18 (.input1(s_logisimNet8),
                .input2(s_logisimNet1),
                .input3(s_logisimNet7),
                .result(s_logisimNet31));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_19 (.input1(s_logisimNet0),
                .input2(s_logisimNet1),
                .input3(s_logisimNet7),
                .result(s_logisimNet5));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_20 (.input1(s_logisimNet12),
                .input2(s_logisimNet8),
                .input3(s_logisimNet13),
                .result(s_logisimNet89));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_21 (.input1(s_logisimNet2),
                .input2(s_logisimNet0),
                .input3(s_logisimNet4),
                .input4(s_logisimNet7),
                .result(s_logisimNet36));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_22 (.input1(s_logisimNet12),
                .input2(s_logisimNet0),
                .input3(s_logisimNet7),
                .result(s_logisimNet58));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_23 (.input1(s_logisimNet2),
                .input2(s_logisimNet0),
                .input3(s_logisimNet1),
                .input4(s_logisimNet7),
                .result(s_logisimNet71));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_24 (.input1(s_logisimNet13),
                .input2(s_logisimNet4),
                .input3(s_logisimNet3),
                .result(s_logisimNet29));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_25 (.input1(s_logisimNet2),
                .input2(s_logisimNet6),
                .input3(s_logisimNet1),
                .result(s_logisimNet66));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_26 (.input1(s_logisimNet0),
                .input2(s_logisimNet1),
                .input3(s_logisimNet3),
                .result(s_logisimNet24));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_27 (.input1(s_logisimNet1),
                .input2(s_logisimNet7),
                .result(s_logisimNet81));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_28 (.input1(s_logisimNet2),
                .input2(s_logisimNet6),
                .input3(s_logisimNet0),
                .result(s_logisimNet54));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_29 (.input1(s_logisimNet12),
                .input2(s_logisimNet6),
                .input3(s_logisimNet4),
                .input4(s_logisimNet3),
                .result(s_logisimNet53));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_30 (.input1(s_logisimNet2),
                .input2(s_logisimNet8),
                .input3(s_logisimNet3),
                .result(s_logisimNet72));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_31 (.input1(s_logisimNet2),
                .input2(s_logisimNet6),
                .input3(s_logisimNet3),
                .result(s_logisimNet57));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_32 (.input1(s_logisimNet8),
                .input2(s_logisimNet13),
                .input3(s_logisimNet1),
                .input4(s_logisimNet7),
                .result(s_logisimNet83));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_33 (.input1(s_logisimNet12),
                .input2(s_logisimNet0),
                .input3(s_logisimNet4),
                .result(s_logisimNet34));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_34 (.input1(s_logisimNet12),
                .input2(s_logisimNet8),
                .input3(s_logisimNet0),
                .result(s_logisimNet48));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_35 (.input1(s_logisimNet8),
                .input2(s_logisimNet0),
                .input3(s_logisimNet4),
                .input4(s_logisimNet7),
                .result(s_logisimNet27));

   OR_GATE_11_INPUTS #(.BubblesMask({3'b000, 8'h00}))
      GATES_36 (.input1(s_logisimNet26),
                .input10(s_logisimNet72),
                .input11(s_logisimNet60),
                .input2(s_logisimNet33),
                .input3(s_logisimNet5),
                .input4(s_logisimNet74),
                .input5(s_logisimNet10),
                .input6(s_logisimNet90),
                .input7(s_logisimNet51),
                .input8(s_logisimNet28),
                .input9(s_logisimNet75),
                .result(s_logisimNet43));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_37 (.input1(s_logisimNet12),
                .input2(s_logisimNet1),
                .input3(s_logisimNet7),
                .result(s_logisimNet41));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_38 (.input1(s_logisimNet0),
                .input2(s_logisimNet4),
                .input3(s_logisimNet3),
                .result(s_logisimNet77));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_39 (.input1(s_logisimNet12),
                .input2(s_logisimNet13),
                .input3(s_logisimNet3),
                .result(s_logisimNet18));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_40 (.input1(s_logisimNet12),
                .input2(s_logisimNet6),
                .input3(s_logisimNet3),
                .result(s_logisimNet40));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_41 (.input1(s_logisimNet12),
                .input2(s_logisimNet4),
                .input3(s_logisimNet7),
                .result(s_logisimNet11));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_42 (.input1(s_logisimNet2),
                .input2(s_logisimNet6),
                .input3(s_logisimNet13),
                .result(s_logisimNet47));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_43 (.input1(s_logisimNet6),
                .input2(s_logisimNet13),
                .input3(s_logisimNet1),
                .input4(s_logisimNet3),
                .result(s_logisimNet17));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_44 (.input1(s_logisimNet6),
                .input2(s_logisimNet4),
                .input3(s_logisimNet3),
                .result(s_logisimNet28));

   OR_GATE_8_INPUTS #(.BubblesMask(8'h00))
      GATES_45 (.input1(s_logisimNet61),
                .input2(s_logisimNet20),
                .input3(s_logisimNet19),
                .input4(s_logisimNet24),
                .input5(s_logisimNet55),
                .input6(s_logisimNet37),
                .input7(s_logisimNet64),
                .input8(s_logisimNet52),
                .result(s_logisimNet16));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_46 (.input1(s_logisimNet6),
                .input2(s_logisimNet1),
                .input3(s_logisimNet3),
                .result(s_logisimNet37));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_47 (.input1(s_logisimNet6),
                .input2(s_logisimNet13),
                .input3(s_logisimNet4),
                .result(s_logisimNet82));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_48 (.input1(s_logisimNet2),
                .input2(s_logisimNet8),
                .input3(s_logisimNet7),
                .result(s_logisimNet9));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_49 (.input1(s_logisimNet8),
                .input2(s_logisimNet0),
                .input3(s_logisimNet1),
                .input4(s_logisimNet3),
                .result(s_logisimNet86));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_50 (.input1(s_logisimNet12),
                .input2(s_logisimNet6),
                .input3(s_logisimNet7),
                .result(s_logisimNet90));

   OR_GATE_10_INPUTS #(.BubblesMask({2'b00, 8'h00}))
      GATES_51 (.input1(s_logisimNet76),
                .input10(s_logisimNet9),
                .input2(s_logisimNet45),
                .input3(s_logisimNet73),
                .input4(s_logisimNet15),
                .input5(s_logisimNet30),
                .input6(s_logisimNet88),
                .input7(s_logisimNet80),
                .input8(s_logisimNet36),
                .input9(s_logisimNet40),
                .result(s_logisimNet65));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_52 (.input1(s_logisimNet13),
                .input2(s_logisimNet4),
                .input3(s_logisimNet3),
                .result(s_logisimNet33));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_53 (.input1(s_logisimNet8),
                .input2(s_logisimNet1),
                .input3(s_logisimNet7),
                .result(s_logisimNet60));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_54 (.input1(s_logisimNet12),
                .input2(s_logisimNet8),
                .input3(s_logisimNet7),
                .result(s_logisimNet42));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_55 (.input1(s_logisimNet12),
                .input2(s_logisimNet6),
                .input3(s_logisimNet1),
                .input4(s_logisimNet7),
                .result(s_logisimNet69));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_56 (.input1(s_logisimNet2),
                .input2(s_logisimNet6),
                .input3(s_logisimNet3),
                .result(s_logisimNet39));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_57 (.input1(s_logisimNet2),
                .input2(s_logisimNet0),
                .input3(s_logisimNet7),
                .result(s_logisimNet25));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_58 (.input1(s_logisimNet12),
                .input2(s_logisimNet13),
                .input3(s_logisimNet4),
                .input4(s_logisimNet7),
                .result(s_logisimNet80));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_59 (.input1(s_logisimNet12),
                .input2(s_logisimNet0),
                .input3(s_logisimNet4),
                .input4(s_logisimNet3),
                .result(s_logisimNet76));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_60 (.input1(s_logisimNet13),
                .input2(s_logisimNet4),
                .input3(s_logisimNet7),
                .result(s_logisimNet61));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_61 (.input1(s_logisimNet12),
                .input2(s_logisimNet1),
                .input3(s_logisimNet7),
                .result(s_logisimNet51));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_62 (.input1(s_logisimNet8),
                .input2(s_logisimNet13),
                .input3(s_logisimNet7),
                .result(s_logisimNet52));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_63 (.input1(s_logisimNet8),
                .input2(s_logisimNet0),
                .input3(s_logisimNet4),
                .input4(s_logisimNet7),
                .result(s_logisimNet70));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_64 (.input1(s_logisimNet12),
                .input2(s_logisimNet6),
                .input3(s_logisimNet4),
                .result(s_logisimNet10));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_65 (.input1(s_logisimNet6),
                .input2(s_logisimNet0),
                .input3(s_logisimNet4),
                .input4(s_logisimNet3),
                .result(s_logisimNet67));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_66 (.input1(s_logisimNet6),
                .input2(s_logisimNet0),
                .input3(s_logisimNet3),
                .result(s_logisimNet55));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_67 (.input1(s_logisimNet8),
                .input2(s_logisimNet0),
                .input3(s_logisimNet1),
                .input4(s_logisimNet3),
                .result(s_logisimNet46));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_68 (.input1(s_logisimNet6),
                .input2(s_logisimNet0),
                .input3(s_logisimNet1),
                .input4(s_logisimNet7),
                .result(s_logisimNet87));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_69 (.input1(s_logisimNet8),
                .input2(s_logisimNet13),
                .input3(s_logisimNet3),
                .result(s_logisimNet35));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_70 (.input1(s_logisimNet2),
                .input2(s_logisimNet13),
                .input3(s_logisimNet3),
                .result(s_logisimNet74));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_71 (.input1(s_logisimNet2),
                .input2(s_logisimNet0),
                .input3(s_logisimNet4),
                .input4(s_logisimNet3),
                .result(s_logisimNet23));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_72 (.input1(s_logisimNet12),
                .input2(s_logisimNet13),
                .input3(s_logisimNet1),
                .input4(s_logisimNet3),
                .result(s_logisimNet15));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_73 (.input1(s_logisimNet12),
                .input2(s_logisimNet8),
                .input3(s_logisimNet1),
                .result(s_logisimNet14));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_74 (.input1(s_logisimNet2),
                .input2(s_logisimNet1),
                .input3(s_logisimNet3),
                .result(s_logisimNet93));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_75 (.input1(s_logisimNet6),
                .input2(s_logisimNet0),
                .input3(s_logisimNet4),
                .result(s_logisimNet59));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_76 (.input1(s_logisimNet2),
                .input2(s_logisimNet13),
                .input3(s_logisimNet1),
                .input4(s_logisimNet7),
                .result(s_logisimNet73));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_77 (.input1(s_logisimNet2),
                .input2(s_logisimNet13),
                .input3(s_logisimNet3),
                .result(s_logisimNet38));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_78 (.input1(s_logisimNet12),
                .input2(s_logisimNet13),
                .input3(s_logisimNet1),
                .input4(s_logisimNet7),
                .result(s_logisimNet63));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_79 (.input1(s_logisimNet6),
                .input2(s_logisimNet0),
                .input3(s_logisimNet1),
                .input4(s_logisimNet7),
                .result(s_logisimNet50));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_80 (.input1(s_logisimNet12),
                .input2(s_logisimNet8),
                .input3(s_logisimNet0),
                .result(s_logisimNet32));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_81 (.input1(s_logisimNet2),
                .input2(s_logisimNet6),
                .input3(s_logisimNet4),
                .result(s_logisimNet92));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_82 (.input1(s_logisimNet8),
                .input2(s_logisimNet1),
                .input3(s_logisimNet7),
                .result(s_logisimNet45));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_83 (.input1(s_logisimNet2),
                .input2(s_logisimNet6),
                .result(s_logisimNet19));

   OR_GATE_8_INPUTS #(.BubblesMask(8'h00))
      GATES_84 (.input1(s_logisimNet81),
                .input2(s_logisimNet48),
                .input3(s_logisimNet47),
                .input4(s_logisimNet34),
                .input5(s_logisimNet78),
                .input6(s_logisimNet57),
                .input7(s_logisimNet38),
                .input8(s_logisimNet77),
                .result(s_logisimNet85));


endmodule
