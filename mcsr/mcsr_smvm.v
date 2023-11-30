`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 12:08:09
// Design Name: 
// Module Name: mcsr_smvm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mcsr_smvm(input clk


    );
 
// reg [2:0] m = 3'b000;
// reg [2:0] n = 3'b000;
//  reg [2:0] p = 3'b000;
//   reg [2:0] q = 3'b000;
//   reg [2:0] r = 3'b000;
  
  
// reg finishflag, finishflag1, finishflag2, finishflag3,finishflag4;
 
 wire ap_done, ap_idle, ap_ready,ap_done1, ap_idle1, ap_ready1,ap_done2, ap_idle2, ap_ready2,ap_done3, ap_idle3, ap_ready3,ap_done4, ap_idle4, ap_ready4;   
 wire matvalue_ce0, vectx_ce0, y_o_ap_vld,matvalue_ce1, vectx_ce1, y_o_ap_vld1, matvalue_ce2, vectx_ce2, y_o_ap_vld2,matvalue_ce3, vectx_ce3, y_o_ap_vld3,matvalue_ce4, vectx_ce4, y_o_ap_vld4;   
 wire  [2:0] matvalue_address0, vectx_address0,matvalue_address1, vectx_address1,matvalue_address2, vectx_address2,matvalue_address3, vectx_address3,matvalue_address4, vectx_address4;
 wire [31:0] vectx_q0, matvalue_q0, y_i, y_o,vectx_q1, matvalue_q1, y_i1, y_o1,vectx_q2, matvalue_q2, y_i2, y_o2,vectx_q3, matvalue_q3, y_i3, y_o3,vectx_q4, matvalue_q4, y_i4, y_o4;
 
   mac_0 mac0 (
  .matvalue_ce0(matvalue_ce0),            // output wire matvalue_ce0
  .vectx_ce0(vectx_ce0),                  // output wire vectx_ce0
  .y_o_ap_vld(y_o_ap_vld),                // output wire y_o_ap_vld
  .ap_clk(clk),                        // input wire ap_clk
  .ap_rst(1'b0),                        // input wire ap_rst
  .ap_start(1'b1),                    // input wire ap_start
  .ap_done(ap_done),                      // output wire ap_done
  .ap_idle(ap_idle),                      // output wire ap_idle
  .ap_ready(ap_ready),                    // output wire ap_ready
  .matvalue_address0(matvalue_address0),  // output wire [2 : 0] matvalue_address0
  .matvalue_q0(matvalue_q0),              // input wire [31 : 0] matvalue_q0
  .vectx_address0(vectx_address0),        // output wire [2 : 0] vectx_address0
  .vectx_q0(vectx_q0),                    // input wire [31 : 0] vectx_q0
  .y_i(32'd0),                              // input wire [31 : 0] y_i
  .y_o(y_o)                              // output wire [31 : 0] y_o
);

blk_mem_gen_0 row0 (
  .clka(clk),    // input wire clka
  .ena(matvalue_ce0),      // input wire ena
  .addra(matvalue_address0),  // input wire [2 : 0] addra
  .douta(matvalue_q0)  // output wire [31 : 0] douta
);

blk_mem_gen_5 vect0 (
  .clka(clk),    // input wire clka
  .ena(vectx_ce0),      // input wire ena
  .addra(vectx_address0),  // input wire [2 : 0] addra
  .douta(vectx_q0)  // output wire [31 : 0] douta
);

//always@(posedge clk) begin
//if (m<4)begin
//if(matvalue_q0[m+1] != 0) begin
//finishflag = 1'b0;
//end
//else finishflag = 1;
//end
//else finishflag =1;
//m=m+1;
//end

mac_1 mac1 (
  .matvalue_ce0(matvalue_ce1),            // output wire matvalue_ce0
  .vectx_ce0(vectx_ce1),                  // output wire vectx_ce0
  .y_o_ap_vld(y_o_ap_vld1),                // output wire y_o_ap_vld
  .ap_clk(clk),                        // input wire ap_clk
  .ap_rst(1'b0),                        // input wire ap_rst
  .ap_start(1'b1),                    // input wire ap_start
  .ap_done(ap_done1),                      // output wire ap_done
  .ap_idle(ap_idle1),                      // output wire ap_idle
  .ap_ready(ap_ready1),                    // output wire ap_ready
  .matvalue_address0(matvalue_address1),  // output wire [2 : 0] matvalue_address0
  .matvalue_q0(matvalue_q1),              // input wire [31 : 0] matvalue_q0
  .vectx_address0(vectx_address1),        // output wire [2 : 0] vectx_address0
  .vectx_q0(vectx_q1),                    // input wire [31 : 0] vectx_q0
  .y_i(32'd0),                              // input wire [31 : 0] y_i
  .y_o(y_o1)                              // output wire [31 : 0] y_o
);

blk_mem_gen_1 row1 (
  .clka(clk),    // input wire clka
  .ena(matvalue_ce1),      // input wire ena
  .addra(matvalue_address1),  // input wire [2 : 0] addra
  .douta(matvalue_q1)  // output wire [31 : 0] douta
);

blk_mem_gen_6 vect1 (
  .clka(clk),    // input wire clka
  .ena(vectx_ce1),      // input wire ena
  .addra(vectx_address1),  // input wire [2 : 0] addra
  .douta(vectx_q1)  // output wire [31 : 0] douta
);

//always@(posedge clk) begin
//if (n<4)begin
//if(matvalue_q1[n+1] != 0) begin
//finishflag1 = 1'b0;
//end
//else finishflag1 = 1;
//end
//else finishflag1 =1;
//n=n+1;
//end

mac_2 mac2 (
  .matvalue_ce0(matvalue_ce2),            // output wire matvalue_ce0
  .vectx_ce0(vectx_ce2),                  // output wire vectx_ce0
  .y_o_ap_vld(y_o_ap_vld2),                // output wire y_o_ap_vld
  .ap_clk(clk),                        // input wire ap_clk
  .ap_rst(1'b0),                        // input wire ap_rst
  .ap_start(1'b1),                    // input wire ap_start
  .ap_done(ap_done2),                      // output wire ap_done
  .ap_idle(ap_idle2),                      // output wire ap_idle
  .ap_ready(ap_ready2),                    // output wire ap_ready
  .matvalue_address0(matvalue_address2),  // output wire [2 : 0] matvalue_address0
  .matvalue_q0(matvalue_q2),              // input wire [31 : 0] matvalue_q0
  .vectx_address0(vectx_address2),        // output wire [2 : 0] vectx_address0
  .vectx_q0(vectx_q2),                    // input wire [31 : 0] vectx_q0
  .y_i(32'd0),                              // input wire [31 : 0] y_i
  .y_o(y_o2)                              // output wire [31 : 0] y_o
);

blk_mem_gen_2 row2 (
  .clka(clk),    // input wire clka
  .ena(matvalue_ce2),      // input wire ena
  .addra(matvalue_address2),  // input wire [2 : 0] addra
  .douta(matvalue_q2)  // output wire [31 : 0] douta
);

blk_mem_gen_7 vect2 (
  .clka(clk),    // input wire clka
  .ena(vectx_ce2),      // input wire ena
  .addra(vectx_address2),  // input wire [2 : 0] addra
  .douta(vectx_q2)  // output wire [31 : 0] douta
);

//always@(posedge clk) begin
//if (p<4)begin
//if(matvalue_q2[p+1] != 0) begin
//finishflag2 = 1'b0;
//end
//else finishflag2 = 1;
//end
//else finishflag2 =1;
//p=p+1;
//end

mac_3 mac3 (
  .matvalue_ce0(matvalue_ce3),            // output wire matvalue_ce0
  .vectx_ce0(vectx_ce3),                  // output wire vectx_ce0
  .y_o_ap_vld(y_o_ap_vld3),                // output wire y_o_ap_vld
  .ap_clk(clk),                        // input wire ap_clk
  .ap_rst(1'b0),                        // input wire ap_rst
  .ap_start(1'b1),                    // input wire ap_start
  .ap_done(ap_done3),                      // output wire ap_done
  .ap_idle(ap_idle3),                      // output wire ap_idle
  .ap_ready(ap_ready3),                    // output wire ap_ready
  .matvalue_address0(matvalue_address3),  // output wire [2 : 0] matvalue_address0
  .matvalue_q0(matvalue_q3),              // input wire [31 : 0] matvalue_q0
  .vectx_address0(vectx_address3),        // output wire [2 : 0] vectx_address0
  .vectx_q0(vectx_q3),                    // input wire [31 : 0] vectx_q0
  .y_i(32'd0),                              // input wire [31 : 0] y_i
  .y_o(y_o3)                              // output wire [31 : 0] y_o
);

blk_mem_gen_3 row3 (
  .clka(clk),    // input wire clka
  .ena(matvalue_ce3),      // input wire ena
  .addra(matvalue_address3),  // input wire [2 : 0] addra
  .douta(matvalue_q3)  // output wire [31 : 0] douta
);

blk_mem_gen_8 vect3 (
  .clka(clk),    // input wire clka
  .ena(vectx_ce3),      // input wire ena
  .addra(vectx_address3),  // input wire [2 : 0] addra
  .douta(vectx_q3)  // output wire [31 : 0] douta
);

//always@(posedge clk) begin
//if (q<4)begin
//if(matvalue_q3[q+1] != 0) begin
//finishflag3 = 1'b0;
//end
//else finishflag3 = 1;
//end
//else finishflag3 =1;
//q=q+1;
//end

mac_4 mac4 (
  .matvalue_ce0(matvalue_ce4),            // output wire matvalue_ce0
  .vectx_ce0(vectx_ce4),                  // output wire vectx_ce0
  .y_o_ap_vld(y_o_ap_vld4),                // output wire y_o_ap_vld
  .ap_clk(clk),                        // input wire ap_clk
  .ap_rst(1'b0),                        // input wire ap_rst
  .ap_start(1'b1),                    // input wire ap_start
  .ap_done(ap_done4),                      // output wire ap_done
  .ap_idle(ap_idle4),                      // output wire ap_idle
  .ap_ready(ap_ready4),                    // output wire ap_ready
  .matvalue_address0(matvalue_address4),  // output wire [2 : 0] matvalue_address0
  .matvalue_q0(matvalue_q4),              // input wire [31 : 0] matvalue_q0
  .vectx_address0(vectx_address4),        // output wire [2 : 0] vectx_address0
  .vectx_q0(vectx_q4),                    // input wire [31 : 0] vectx_q0
  .y_i(32'd0),                              // input wire [31 : 0] y_i
  .y_o(y_o4)                              // output wire [31 : 0] y_o
);

blk_mem_gen_4 row4 (
  .clka(clk),    // input wire clka
  .ena(matvalue_ce4),      // input wire ena
  .addra(matvalue_address4),  // input wire [2 : 0] addra
  .douta(matvalue_q4)  // output wire [31 : 0] douta
);
blk_mem_gen_9 vect4 (
  .clka(clk),    // input wire clka
  .ena(vectx_ce4),      // input wire ena
  .addra(vectx_address4),  // input wire [2 : 0] addra
  .douta(vectx_q4)  // output wire [31 : 0] douta
);

//always@(posedge clk) begin
//if (r<4)begin
//if(matvalue_q4[r+1] != 0) begin
//finishflag4 = 1'b0;
//end
//else finishflag4 = 1;
//end
//else finishflag4 =1;
//r=r+1;
//end

ila_0 your_instance_name (
	.clk(clk), // input wire clk


	.probe0(matvalue_ce0), // input wire [0:0]  probe0  
	.probe1(matvalue_ce1), // input wire [0:0]  probe1 
	.probe2(matvalue_ce2), // input wire [0:0]  probe2 
	.probe3(matvalue_ce3), // input wire [0:0]  probe3 
	.probe4(matvalue_ce4), // input wire [0:0]  probe4 
	.probe5(vectx_ce0), // input wire [0:0]  probe5 
	.probe6(vectx_ce1), // input wire [0:0]  probe6 
	.probe7(vectx_ce2), // input wire [0:0]  probe7 
	.probe8(vectx_ce3), // input wire [0:0]  probe8 
	.probe9(vectx_ce4), // input wire [0:0]  probe9 
	.probe10(y_o_ap_vld), // input wire [0:0]  probe10 
	.probe11(y_o_ap_vld1), // input wire [0:0]  probe11 
	.probe12(y_o_ap_vld2), // input wire [0:0]  probe12 
	.probe13(y_o_ap_vld3), // input wire [0:0]  probe13 
	.probe14(y_o_ap_vld4), // input wire [0:0]  probe14 
	.probe15(matvalue_address0), // input wire [2:0]  probe15 
	.probe16(matvalue_address1), // input wire [2:0]  probe16 
	.probe17(matvalue_address2), // input wire [2:0]  probe17 
	.probe18(matvalue_address3), // input wire [2:0]  probe18 
	.probe19(matvalue_address4), // input wire [2:0]  probe19 
	.probe20(vectx_address0), // input wire [2:0]  probe20 
	.probe21(vectx_address1), // input wire [2:0]  probe21 
	.probe22(vectx_address2), // input wire [2:0]  probe22 
	.probe23(vectx_address3), // input wire [2:0]  probe23 
	.probe24(vectx_address4), // input wire [2:0]  probe24 
	.probe25(matvalue_q0), // input wire [31:0]  probe25 
	.probe26(matvalue_q1), // input wire [31:0]  probe26 
	.probe27(matvalue_q2), // input wire [31:0]  probe27 
	.probe28(matvalue_q3), // input wire [31:0]  probe28 
	.probe29(matvalue_q4), // input wire [31:0]  probe29 
	.probe30(vectx_q0), // input wire [31:0]  probe30 
	.probe31(vectx_q1), // input wire [31:0]  probe31 
	.probe32(vectx_q2), // input wire [31:0]  probe32 
	.probe33(vectx_q3), // input wire [31:0]  probe33 
	.probe34(vectx_q4), // input wire [31:0]  probe34 
	.probe35(y_o), // input wire [31:0]  probe35 
	.probe36(y_o1), // input wire [31:0]  probe36 
	.probe37(y_o2), // input wire [31:0]  probe37 
	.probe38(y_o3), // input wire [31:0]  probe38 
	.probe39(y_o4) // input wire [31:0]  probe39 
);

endmodule
