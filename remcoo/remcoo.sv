`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2023 22:30:48
// Design Name: 
// Module Name: remcoo
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


module remcoo( input clk,
output ap_done, ap_idle, ap_ready

    );
 
wire rid_ce0,rid_ce1,value_r_ce0,value_r_ce1, xd_ce0,xd_ce1, y_we0,y_we1;
wire [31:0] rid_q0, rid_q1, value_r_q0, value_r_q1, xd_q0, xd_q1, y_d0, y_d1;  
wire [3:0] rid_address0, rid_address1, value_r_address0, value_r_address1, xd_address0, xd_address1;
wire [2:0] y_address0, y_address1;

    SpMV_0 remcoo_ip (
  .rid_ce0(rid_ce0),                    // output wire rid_ce0
  .rid_we0(rid_we0),                    // output wire rid_we0
  .rid_ce1(rid_ce1),                    // output wire rid_ce1
  .rid_we1(rid_we1),                    // output wire rid_we1
  .value_r_ce0(value_r_ce0),            // output wire value_r_ce0
  .value_r_we0(value_r_we0),            // output wire value_r_we0
  .value_r_ce1(value_r_ce1),            // output wire value_r_ce1
  .value_r_we1(value_r_we1),            // output wire value_r_we1
  .xd_ce0(xd_ce0),                      // output wire xd_ce0
  .xd_we0(xd_we0),                      // output wire xd_we0
  .xd_ce1(xd_ce1),                      // output wire xd_ce1
  .xd_we1(xd_we1),                      // output wire xd_we1
  .y_ce0(y_ce0),                        // output wire y_ce0
  .y_we0(y_we0),                        // output wire y_we0
  .y_ce1(y_ce1),                        // output wire y_ce1
  .y_we1(y_we1),                        // output wire y_we1
  .ap_clk(clk),                      // input wire ap_clk
  .ap_rst(1'b0),                      // input wire ap_rst
  .ap_start(1'b1),                  // input wire ap_start
  .ap_done(ap_done),                    // output wire ap_done
  .ap_ready(ap_ready),                  // output wire ap_ready
  .ap_idle(ap_idle),                    // output wire ap_idle
  .rid_address0(rid_address0),          // output wire [3 : 0] rid_address0
  .rid_d0(rid_d0),                      // output wire [31 : 0] rid_d0
  .rid_q0(rid_q0),                      // input wire [31 : 0] rid_q0
  .rid_address1(rid_address1),          // output wire [3 : 0] rid_address1
  .rid_d1(rid_d1),                      // output wire [31 : 0] rid_d1
  .rid_q1(rid_q1),                      // input wire [31 : 0] rid_q1
  .value_r_address0(value_r_address0),  // output wire [3 : 0] value_r_address0
  .value_r_d0(value_r_d0),              // output wire [31 : 0] value_r_d0
  .value_r_q0(value_r_q0),              // input wire [31 : 0] value_r_q0
  .value_r_address1(value_r_address1),  // output wire [3 : 0] value_r_address1
  .value_r_d1(value_r_d1),              // output wire [31 : 0] value_r_d1
  .value_r_q1(value_r_q1),              // input wire [31 : 0] value_r_q1
  .xd_address0(xd_address0),            // output wire [3 : 0] xd_address0
  .xd_d0(xd_d0),                        // output wire [31 : 0] xd_d0
  .xd_q0(xd_q0),                        // input wire [31 : 0] xd_q0
  .xd_address1(xd_address1),            // output wire [3 : 0] xd_address1
  .xd_d1(xd_d1),                        // output wire [31 : 0] xd_d1
  .xd_q1(xd_q1),                        // input wire [31 : 0] xd_q1
  .y_address0(y_address0),              // output wire [2 : 0] y_address0
  .y_d0(y_d0),                          // output wire [31 : 0] y_d0
  .y_q0(y_q0),                          // input wire [31 : 0] y_q0
  .y_address1(y_address1),              // output wire [2 : 0] y_address1
  .y_d1(y_d1),                          // output wire [31 : 0] y_d1
  .y_q1(y_q1)                          // input wire [31 : 0] y_q1
);

blk_mem_gen_0 rid (
  .clka(clk),    // input wire clka
  .ena(rid_ce0),      // input wire ena
  .wea(rid_we0),      // input wire [0 : 0] wea
  .addra(rid_address0),  // input wire [3 : 0] addra
  .dina(dina),    // input wire [31 : 0] dina
  .douta(rid_q0),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(rid_ce1),      // input wire enb
  .web(rid_we1),      // input wire [0 : 0] web
  .addrb(rid_address1),  // input wire [3 : 0] addrb
  .dinb(dinb),    // input wire [31 : 0] dinb
  .doutb(rid_q1)  // output wire [31 : 0] doutb
);

blk_mem_gen_1 value (
  .clka(clk),    // input wire clka
  .ena(value_r_ce0),      // input wire ena
  .wea(value_r_we0),      // input wire [0 : 0] wea
  .addra(value_r_address0),  // input wire [3 : 0] addra
  .dina(dina),    // input wire [31 : 0] dina
  .douta(value_r_q0),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(value_r_ce0),      // input wire enb
  .web(value_r_we0),      // input wire [0 : 0] web
  .addrb(value_r_address1),  // input wire [3 : 0] addrb
  .dinb(dinb),    // input wire [31 : 0] dinb
  .doutb(value_r_q1)  // output wire [31 : 0] doutb
);

blk_mem_gen_2 xd (
  .clka(clk),    // input wire clka
  .ena(xd_ce0),      // input wire ena
  .wea(xd_we0),      // input wire [0 : 0] wea
  .addra(xd_address0),  // input wire [3 : 0] addra
  .dina(dina),    // input wire [31 : 0] dina
  .douta(xd_q0),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(xd_ce1),      // input wire enb
  .web(xd_we1),      // input wire [0 : 0] web
  .addrb(xd_address1),  // input wire [3 : 0] addrb
  .dinb(dinb),    // input wire [31 : 0] dinb
  .doutb(xd_q1)  // output wire [31 : 0] doutb
);

ila_0 ila (
	.clk(clk), // input wire clk


	.probe0(rid_ce0), // input wire [0:0]  probe0  
	.probe1(rid_ce1), // input wire [0:0]  probe1 
	.probe2(value_r_ce0), // input wire [0:0]  probe2 
	.probe3(value_r_ce1), // input wire [0:0]  probe3 
	.probe4(xd_ce0), // input wire [0:0]  probe4 
	.probe5(xd_ce1), // input wire [0:0]  probe5 
	.probe6(y_we0), // input wire [0:0]  probe6 
	.probe7(y_we1), // input wire [0:0]  probe7 
	.probe8(rid_q0), // input wire [31:0]  probe8 
	.probe9(rid_q1), // input wire [31:0]  probe9 
	.probe10(value_r_q0), // input wire [31:0]  probe10 
	.probe11(value_r_q1), // input wire [31:0]  probe11 
	.probe12(xd_q0), // input wire [31:0]  probe12 
	.probe13(xd_q1), // input wire [31:0]  probe13 
	.probe14(y_d0), // input wire [31:0]  probe14 
	.probe15(y_d1), // input wire [31:0]  probe15 
	.probe16(y_address0), // input wire [2:0]  probe16 
	.probe17(y_address1), // input wire [2:0]  probe17 
	.probe18(rid_address0), // input wire [3:0]  probe18 
	.probe19(rid_address1), // input wire [3:0]  probe19 
	.probe20(value_r_address0), // input wire [3:0]  probe20 
	.probe21(value_r_address1), // input wire [3:0]  probe21 
	.probe22(xd_address0), // input wire [3:0]  probe22 
	.probe23(xd_address1) // input wire [3:0]  probe23
);

endmodule
