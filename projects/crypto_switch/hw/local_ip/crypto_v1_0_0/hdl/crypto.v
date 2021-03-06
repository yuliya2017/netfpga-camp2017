//-
// Copyright (c) 2015 University of Cambridge
// Copyright (c) 2015 Noa Zilberman
// All rights reserved.
//
// This software was developed by the University of Cambridge Computer Laboratory 
// under EPSRC INTERNET Project EP/H040536/1, National Science Foundation under Grant No. CNS-0855268,
// and Defense Advanced Research Projects Agency (DARPA) and Air Force Research Laboratory (AFRL), 
// under contract FA8750-11-C-0249.
//
// @NETFPGA_LICENSE_HEADER_START@
//
// Licensed to NetFPGA Open Systems C.I.C. (NetFPGA) under one or more contributor
// license agreements.  See the NOTICE file distributed with this work for
// additional information regarding copyright ownership.  NetFPGA licenses this
// file to you under the NetFPGA Hardware-Software License, Version 1.0 (the
// "License"); you may not use this file except in compliance with the
// License.  You may obtain a copy of the License at:
//
//   http://www.netfpga-cic.org
//
// Unless required by applicable law or agreed to in writing, Work distributed
// under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations under the License.
//
// @NETFPGA_LICENSE_HEADER_END@
//


`include "crypto_cpu_regs_defines.v"
//`include "crypto_cpu_regs_defines.v"

module crypto
#(
    //Master AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH=256,
    parameter C_S_AXIS_DATA_WIDTH=256,
    parameter C_M_AXIS_TUSER_WIDTH=128,
    parameter C_S_AXIS_TUSER_WIDTH=128,
    parameter SRC_PORT_POS=16,
    parameter DST_PORT_POS=24,

 // AXI Registers Data Width
    //parameter C_S_AXI_DATA_WIDTH    = 32,          
    parameter C_S_AXI_ADDR_WIDTH    = 12,          
    parameter C_USE_WSTRB           = 0,	   
    parameter C_DPHASE_TIMEOUT      = 0,               
    parameter C_NUM_ADDRESS_RANGES = 1,
    parameter  C_TOTAL_NUM_CE       = 1,
    parameter  C_S_AXI_MIN_SIZE    = 32'h0000_FFFF,
    //parameter [0:32*2*C_NUM_ADDRESS_RANGES-1]   C_ARD_ADDR_RANGE_ARRAY  = 
    //                                             {2*C_NUM_ADDRESS_RANGES
    //                                              {32'h00000000}
    //                                             },
    parameter [0:8*C_NUM_ADDRESS_RANGES-1] C_ARD_NUM_CE_ARRAY  = 
                                                {
                                                 C_NUM_ADDRESS_RANGES{8'd1}
                                                 },
    parameter     C_FAMILY            = "virtex7", 
    parameter C_BASEADDR            = 32'h00000000,
    parameter C_HIGHADDR            = 32'h0000FFFF,

    parameter C_S_AXI_DATA_WIDTH    = 32
    //parameter C_S_AXI_ADDR_WIDTH    = 32


)
(
    // Global Ports
    input axis_aclk,
    input axis_resetn,

    // Master Stream Ports (interface to data path)
    output reg [C_M_AXIS_DATA_WIDTH - 1:0] m_axis_tdata,
    output reg [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] m_axis_tkeep,
    output reg [C_M_AXIS_TUSER_WIDTH-1:0] m_axis_tuser,
    output reg m_axis_tvalid,
    input   m_axis_tready,
    output reg m_axis_tlast,

    // Slave Stream Ports (interface to RX queues)
    input [C_S_AXIS_DATA_WIDTH - 1:0] s_axis_tdata,
    input [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0] s_axis_tkeep,
    input [C_S_AXIS_TUSER_WIDTH-1:0] s_axis_tuser,
    input  s_axis_tvalid,
    output s_axis_tready,
    input  s_axis_tlast,

// Slave AXI Ports
    input                                     S_AXI_ACLK,
    input                                     S_AXI_ARESETN,
    input      [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR,
    input                                     S_AXI_AWVALID,
    input      [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA,
    input      [C_S_AXI_DATA_WIDTH/8-1 : 0]   S_AXI_WSTRB,
    input                                     S_AXI_WVALID,
    input                                     S_AXI_BREADY,
    input      [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR,
    input                                     S_AXI_ARVALID,
    input                                     S_AXI_RREADY,
    output                                    S_AXI_ARREADY,
    output     [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_RDATA,
    output     [1 : 0]                        S_AXI_RRESP,
    output                                    S_AXI_RVALID,
    output                                    S_AXI_WREADY,
    output     [1 :0]                         S_AXI_BRESP,
    output                                    S_AXI_BVALID,
    output                                    S_AXI_AWREADY
);

   //TODO
   // ---------- Local Parameters ---------
   //Add your states here 
 
   localparam PKT_HDR_WORD0       = 1;
   localparam PKT_HDR_WORD1       = 2;
   localparam PKT_HDR_WORD2       = 3;
 //include your variables here
   reg  [2:0]                       state, next_state;
   wire [31:0]                      key;
   wire [255:0]                      keys;


   //assign key = 32'hFFFFFFFF;
   assign keys ={key,key,key,key,key,key,key,key};


   // ------------- Regs/ wires -----------

   wire                             fifo_nearly_full;
   wire                             fifo_empty;
   reg                              fifo_rd_en;
   wire [C_M_AXIS_TUSER_WIDTH-1:0]  fifo_out_tuser;
   wire [C_M_AXIS_DATA_WIDTH-1:0]   fifo_out_tdata;
   wire [C_M_AXIS_DATA_WIDTH/8-1:0] fifo_out_tkeep;
   wire  	                    fifo_out_tlast;
   wire                             fifo_tvalid;
   wire                             fifo_tlast;
   
   //TODO
    // define and assign default little endian
    wire                                      reg_key_default_little;
    assign  reg_key_default_little = `REG_KEY_DEFAULT;

    // define registers
    reg      [`REG_ID_BITS]    id_reg;
    reg      [`REG_VERSION_BITS]    version_reg;
    wire     [`REG_RESET_BITS]    reset_reg;
    reg      [`REG_FLIP_BITS]    ip2cpu_flip_reg;
    wire     [`REG_FLIP_BITS]    cpu2ip_flip_reg;
    reg      [`REG_DEBUG_BITS]    ip2cpu_debug_reg;
    wire     [`REG_DEBUG_BITS]    cpu2ip_debug_reg;
    reg      [`REG_PKTIN_BITS]    pktin_reg;
    wire                             pktin_reg_clear;
    reg      [`REG_PKTOUT_BITS]    pktout_reg;
    wire                             pktout_reg_clear;
    wire     [`REG_KEY_BITS]    key_reg;
    wire resetn_sync;

   // ------------ Modules -------------

 crypto_cpu_regs
 #(
     .C_BASE_ADDRESS        (C_BASEADDR ),
     .C_S_AXI_DATA_WIDTH    (C_S_AXI_DATA_WIDTH),
     .C_S_AXI_ADDR_WIDTH    (C_S_AXI_ADDR_WIDTH)
 ) crypto_cpu_regs_inst
 (
   // General ports
    .clk                    (axis_aclk),
    .resetn                 (axis_resetn),
   // AXI Lite ports
    .S_AXI_ACLK             (S_AXI_ACLK),
    .S_AXI_ARESETN          (S_AXI_ARESETN),
    .S_AXI_AWADDR           (S_AXI_AWADDR),
    .S_AXI_AWVALID          (S_AXI_AWVALID),
    .S_AXI_WDATA            (S_AXI_WDATA),
    .S_AXI_WSTRB            (S_AXI_WSTRB),
    .S_AXI_WVALID           (S_AXI_WVALID),
    .S_AXI_BREADY           (S_AXI_BREADY),
    .S_AXI_ARADDR           (S_AXI_ARADDR),
    .S_AXI_ARVALID          (S_AXI_ARVALID),
    .S_AXI_RREADY           (S_AXI_RREADY),
    .S_AXI_ARREADY          (S_AXI_ARREADY),
    .S_AXI_RDATA            (S_AXI_RDATA),
    .S_AXI_RRESP            (S_AXI_RRESP),
    .S_AXI_RVALID           (S_AXI_RVALID),
    .S_AXI_WREADY           (S_AXI_WREADY),
    .S_AXI_BRESP            (S_AXI_BRESP),
    .S_AXI_BVALID           (S_AXI_BVALID),
    .S_AXI_AWREADY          (S_AXI_AWREADY),

   // Register ports
   .id_reg          (id_reg),
   .version_reg          (version_reg),
   .reset_reg          (reset_reg),
   .ip2cpu_flip_reg          (ip2cpu_flip_reg),
   .cpu2ip_flip_reg          (cpu2ip_flip_reg),
   .ip2cpu_debug_reg          (ip2cpu_debug_reg),
   .cpu2ip_debug_reg          (cpu2ip_debug_reg),
   .pktin_reg          (pktin_reg),
   .pktin_reg_clear    (pktin_reg_clear),
   .pktout_reg          (pktout_reg),
   .pktout_reg_clear    (pktout_reg_clear),
   .key_reg          (key),
   // Global Registers - user can select if to use
   .cpu_resetn_soft(),//software reset, after cpu module
   .resetn_soft    (),//software reset to cpu module (from central reset management)
   .resetn_sync    (resetn_sync)//synchronized reset, use for better timing
);

   fallthrough_small_fifo
   #( .WIDTH(C_M_AXIS_DATA_WIDTH+C_M_AXIS_TUSER_WIDTH+C_M_AXIS_DATA_WIDTH/8+1),
      .MAX_DEPTH_BITS(2)
    )
    input_fifo
    ( // Outputs
      .dout                         ({fifo_out_tlast, fifo_out_tuser, fifo_out_tkeep, fifo_out_tdata}),
      .full                         (),
      .nearly_full                  (fifo_nearly_full),
      .prog_full                    (),
      .empty                        (fifo_empty),
      // Inputs
      .din                          ({s_axis_tlast, s_axis_tuser, s_axis_tkeep, s_axis_tdata}),
      .wr_en                        (s_axis_tvalid & s_axis_tready),
      .rd_en                        (fifo_rd_en),
      .reset                        (~axis_resetn),
      .clk                          (axis_aclk));

   // ------------- Logic ------------

   assign s_axis_tready = !fifo_nearly_full;
 
  //TODO
  /*********************************************************************
  * For every new packet, do nothing if Ethernet or IP header, "encrypt"
  * Any following payload, until end of packet  
  **********************************************************************/
   always @* begin//{
     m_axis_tuser = fifo_out_tuser;
     m_axis_tdata = fifo_out_tdata;
     m_axis_tkeep = fifo_out_tkeep;
     m_axis_tlast = fifo_out_tlast;
     m_axis_tvalid = 0;
     fifo_rd_en = 0;
     next_state = state;

	case(state)
		PKT_HDR_WORD0: begin
		//your logic goes here
			m_axis_tvalid = !fifo_empty;
				
			if( m_axis_tready  && m_axis_tvalid  ) begin
				fifo_rd_en = 1;
				//m_axis_tvalid = 1;
				next_state = PKT_HDR_WORD1;
			end
			else
				next_state = PKT_HDR_WORD0;

		end

		PKT_HDR_WORD1: begin
		// your logic goes here
			m_axis_tvalid = !fifo_empty;
			if( m_axis_tready  && m_axis_tvalid ) begin 
				m_axis_tdata = { fifo_out_tdata[255:16] ^ keys[255:16],fifo_out_tdata[15:0]};
				fifo_rd_en= 1;
				if (fifo_out_tlast == 1)
					next_state = PKT_HDR_WORD0;
				else
					next_state = PKT_HDR_WORD2;
			end
			else
				next_state = PKT_HDR_WORD1;
		end 

		PKT_HDR_WORD2: begin//{
			m_axis_tvalid = !fifo_empty;
			if( m_axis_tready  && m_axis_tvalid ) begin 

			//if( m_axis_tready  && !fifo_empty) begin//{
				m_axis_tdata = fifo_out_tdata ^ keys;
				fifo_rd_en=1;
				if (fifo_out_tlast == 1)
					next_state = PKT_HDR_WORD0;
				else
					next_state = PKT_HDR_WORD2;
			end//}
			else
				next_state = PKT_HDR_WORD2;
			//any additional states?
		end//}
	endcase 

	end//}

	always @(posedge axis_aclk) begin
		if (~axis_resetn) begin
			state <= PKT_HDR_WORD0;
		end
		else begin
			state <= next_state;
		end
	end


	always @(posedge axis_aclk)
		if (~resetn_sync) begin
		id_reg <= #1    `REG_ID_DEFAULT;
		version_reg <= #1    `REG_VERSION_DEFAULT;
		ip2cpu_flip_reg <= #1    `REG_FLIP_DEFAULT;
		ip2cpu_debug_reg <= #1    `REG_DEBUG_DEFAULT;
		pktin_reg <= #1    `REG_PKTIN_DEFAULT;
		pktout_reg <= #1    `REG_PKTOUT_DEFAULT;
		end
		else begin
		id_reg <= #1    `REG_ID_DEFAULT;
		version_reg <= #1    `REG_VERSION_DEFAULT;
			ip2cpu_flip_reg <= #1 cpu2ip_flip_reg;
			ip2cpu_debug_reg <= #1 cpu2ip_debug_reg;
		pktin_reg <= #1 pktin_reg_clear ? 'h0  : `REG_PKTIN_DEFAULT;
		pktout_reg <= #1 pktout_reg_clear ? 'h0  : `REG_PKTOUT_DEFAULT;
        end



endmodule // crypto
