`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 16:55:15
// Design Name: 
// Module Name: csr_spmv
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


module top_csr(input ap_clk

    );
  
wire [31:0] value_r_q0,col_index_q0,row_index_q0,row_index_q1,x_q0, y_d0;
wire [2:0] value_r_address0, col_index_address0, row_index_address0, row_index_address1, x_address0;
wire [2:0] y_address0;
wire value_r_ce0, col_index_ce0, row_index_ce0, row_index_ce1, x_ce0, y_we0,y_ce0;

csr_spmv_0 your_instance_name (
  .value_r_ce0(value_r_ce0),                // output wire value_r_ce0
  .col_index_ce0(col_index_ce0),            // output wire col_index_ce0
  .row_index_ce0(row_index_ce0),            // output wire row_index_ce0
  .row_index_ce1(row_index_ce1),            // output wire row_index_ce1
  .x_ce0(x_ce0),                            // output wire x_ce0
  .y_ce0(y_ce0),                            // output wire y_ce0
  .y_we0(y_we0),                            // output wire y_we0
  .ap_clk(ap_clk),                          // input wire ap_clk
  .ap_rst(1'b0),                          // input wire ap_rst
  .ap_start(1'b1),                      // input wire ap_start
  .ap_done(ap_done),                        // output wire ap_done
  .ap_idle(ap_idle),                        // output wire ap_idle
  .ap_ready(ap_ready),                      // output wire ap_ready
  .value_r_address0(value_r_address0),      // output wire [2 : 0] value_r_address0
  .value_r_q0(value_r_q0),                  // input wire [31 : 0] value_r_q0
  .col_index_address0(col_index_address0),  // output wire [2 : 0] col_index_address0
  .col_index_q0(col_index_q0),              // input wire [31 : 0] col_index_q0
  .row_index_address0(row_index_address0),  // output wire [2 : 0] row_index_address0
  .row_index_q0(row_index_q0),              // input wire [31 : 0] row_index_q0
  .row_index_address1(row_index_address1),  // output wire [2 : 0] row_index_address1
  .row_index_q1(row_index_q1),              // input wire [31 : 0] row_index_q1
  .x_address0(x_address0),                  // output wire [2 : 0] x_address0
  .x_q0(x_q0),                              // input wire [31 : 0] x_q0
  .y_address0(y_address0),                  // output wire [2 : 0] y_address0
  .y_d0(y_d0)                              // output wire [31 : 0] y_d0
);
//csr_spmv_1 your_instance_name (
//  .value_r_ce0(value_r_ce0),                // output wire value_r_ce0
//  .col_index_ce0(col_index_ce0),            // output wire col_index_ce0
//  .row_index_ce0(row_index_ce0),            // output wire row_index_ce0
//  .row_index_ce1(row_index_ce1),            // output wire row_index_ce1
//  .x_ce0(x_ce0),                            // output wire x_ce0
//  .y_ce0(y_ce0),                            // output wire y_ce0
//  .y_we0(y_we0),                            // output wire y_we0
//  .ap_clk(ap_clk),                          // input wire ap_clk
//  .ap_rst(ap_rst),                          // input wire ap_rst
//  .ap_start(ap_start),                      // input wire ap_start
//  .ap_done(ap_done),                        // output wire ap_done
//  .ap_idle(ap_idle),                        // output wire ap_idle
//  .ap_ready(ap_ready),                      // output wire ap_ready
//  .value_r_address0(value_r_address0),      // output wire [2 : 0] value_r_address0
//  .value_r_q0(value_r_q0),                  // input wire [31 : 0] value_r_q0
//  .col_index_address0(col_index_address0),  // output wire [2 : 0] col_index_address0
//  .col_index_q0(col_index_q0),              // input wire [31 : 0] col_index_q0
//  .row_index_address0(row_index_address0),  // output wire [2 : 0] row_index_address0
//  .row_index_q0(row_index_q0),              // input wire [31 : 0] row_index_q0
//  .row_index_address1(row_index_address1),  // output wire [2 : 0] row_index_address1
//  .row_index_q1(row_index_q1),              // input wire [31 : 0] row_index_q1
//  .x_address0(x_address0),                  // output wire [2 : 0] x_address0
//  .x_q0(x_q0),                              // input wire [31 : 0] x_q0
//  .y_address0(y_address0),                  // output wire [1 : 0] y_address0
//  .y_d0(y_d0)                              // output wire [31 : 0] y_d0
//);
blk_mem_gen_0 row_index_instance (
  .clka(ap_clk),    // input wire clka
  .ena(row_index_ce0),      // input wire ena
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(row_index_address0),  // input wire [2 : 0] addra
  .dina(dina),    // input wire [31 : 0] dina
  .douta(row_index_q0),  // output wire [31 : 0] douta
  .clkb(ap_clk),    // input wire clkb
  .enb(row_index_ce1),      // input wire enb
  .web(1'b0),      // input wire [0 : 0] web
  .addrb(row_index_address1),  // input wire [2 : 0] addrb
  .dinb(dinb),    // input wire [31 : 0] dinb
  .doutb(row_index_q1)  // output wire [31 : 0] doutb
);

blk_mem_gen_1 value_instance (
  .clka(ap_clk),    // input wire clka
  .ena(value_r_ce0),      // input wire ena
  .addra(value_r_address0),  // input wire [2 : 0] addra
  .douta(value_r_q0)  // output wire [31 : 0] douta
);

blk_mem_gen_2 col_index_instance (
  .clka(ap_clk),    // input wire clka
  .ena(col_index_ce0),      // input wire ena
  .addra(col_index_address0),  // input wire [2 : 0] addra
  .douta(col_index_q0)  // output wire [31 : 0] douta
);

blk_mem_gen_3 vector_instance (
  .clka(ap_clk),    // input wire clka
  .ena(x_ce0),      // input wire ena
  .addra(x_address0),  // input wire [2 : 0] addra
  .douta(x_q0)  // output wire [31 : 0] douta
);

ila_0 ila (
	.clk(ap_clk), // input wire clk


	.probe0(value_r_address0), // input wire [2:0]  probe0  
	.probe1(value_r_ce0), // input wire [0:0]  probe1 
	.probe2(value_r_q0), // input wire [31:0]  probe2 
	.probe3(col_index_address0), // input wire [2:0]  probe3 
	.probe4(col_index_ce0), // input wire [0:0]  probe4 
	.probe5(col_index_q0), // input wire [31:0]  probe5 
	.probe6(row_index_address0), // input wire [2:0]  probe6 
	.probe7(row_index_ce0), // input wire [0:0]  probe7 
	.probe8(row_index_q0), // input wire [31:0]  probe8 
	.probe9(row_index_address1), // input wire [2:0]  probe9 
	.probe10(row_index_ce1), // input wire [0:0]  probe10 
	.probe11(row_index_q1), // input wire [31:0]  probe11 
	.probe12(x_address0), // input wire [2:0]  probe12 
	.probe13(x_ce0), // input wire [0:0]  probe13 
	.probe14(x_q0), // input wire [31:0]  probe14 
	.probe15(y_address0), // input wire [2:0]  probe15 
	.probe16(y_we0), // input wire [0:0]  probe16 
	.probe17(y_d0) // input wire [31:0]  probe17
);


endmodule
