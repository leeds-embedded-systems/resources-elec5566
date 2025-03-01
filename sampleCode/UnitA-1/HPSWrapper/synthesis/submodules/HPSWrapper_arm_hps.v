// HPSWrapper_arm_hps.v

// This file was auto-generated from altera_hps_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 22.1 922

`timescale 1 ps / 1 ps
module HPSWrapper_arm_hps #(
		parameter F2S_Width = 0,
		parameter S2F_Width = 1
	) (
		output wire [66:0] h2f_loan_in,               //        h2f_loan_io.in
		input  wire [66:0] h2f_loan_out,              //                   .out
		input  wire [66:0] h2f_loan_oe,               //                   .oe
		output wire        h2f_rst_n,                 //          h2f_reset.reset_n
		input  wire        f2h_cold_rst_req_n,        // f2h_cold_reset_req.reset_n
		input  wire        h2f_lw_axi_clk,            //   h2f_lw_axi_clock.clk
		output wire [11:0] h2f_lw_AWID,               //  h2f_lw_axi_master.awid
		output wire [20:0] h2f_lw_AWADDR,             //                   .awaddr
		output wire [3:0]  h2f_lw_AWLEN,              //                   .awlen
		output wire [2:0]  h2f_lw_AWSIZE,             //                   .awsize
		output wire [1:0]  h2f_lw_AWBURST,            //                   .awburst
		output wire [1:0]  h2f_lw_AWLOCK,             //                   .awlock
		output wire [3:0]  h2f_lw_AWCACHE,            //                   .awcache
		output wire [2:0]  h2f_lw_AWPROT,             //                   .awprot
		output wire        h2f_lw_AWVALID,            //                   .awvalid
		input  wire        h2f_lw_AWREADY,            //                   .awready
		output wire [11:0] h2f_lw_WID,                //                   .wid
		output wire [31:0] h2f_lw_WDATA,              //                   .wdata
		output wire [3:0]  h2f_lw_WSTRB,              //                   .wstrb
		output wire        h2f_lw_WLAST,              //                   .wlast
		output wire        h2f_lw_WVALID,             //                   .wvalid
		input  wire        h2f_lw_WREADY,             //                   .wready
		input  wire [11:0] h2f_lw_BID,                //                   .bid
		input  wire [1:0]  h2f_lw_BRESP,              //                   .bresp
		input  wire        h2f_lw_BVALID,             //                   .bvalid
		output wire        h2f_lw_BREADY,             //                   .bready
		output wire [11:0] h2f_lw_ARID,               //                   .arid
		output wire [20:0] h2f_lw_ARADDR,             //                   .araddr
		output wire [3:0]  h2f_lw_ARLEN,              //                   .arlen
		output wire [2:0]  h2f_lw_ARSIZE,             //                   .arsize
		output wire [1:0]  h2f_lw_ARBURST,            //                   .arburst
		output wire [1:0]  h2f_lw_ARLOCK,             //                   .arlock
		output wire [3:0]  h2f_lw_ARCACHE,            //                   .arcache
		output wire [2:0]  h2f_lw_ARPROT,             //                   .arprot
		output wire        h2f_lw_ARVALID,            //                   .arvalid
		input  wire        h2f_lw_ARREADY,            //                   .arready
		input  wire [11:0] h2f_lw_RID,                //                   .rid
		input  wire [31:0] h2f_lw_RDATA,              //                   .rdata
		input  wire [1:0]  h2f_lw_RRESP,              //                   .rresp
		input  wire        h2f_lw_RLAST,              //                   .rlast
		input  wire        h2f_lw_RVALID,             //                   .rvalid
		output wire        h2f_lw_RREADY,             //                   .rready
		input  wire        h2f_axi_clk,               //      h2f_axi_clock.clk
		output wire [11:0] h2f_AWID,                  //     h2f_axi_master.awid
		output wire [29:0] h2f_AWADDR,                //                   .awaddr
		output wire [3:0]  h2f_AWLEN,                 //                   .awlen
		output wire [2:0]  h2f_AWSIZE,                //                   .awsize
		output wire [1:0]  h2f_AWBURST,               //                   .awburst
		output wire [1:0]  h2f_AWLOCK,                //                   .awlock
		output wire [3:0]  h2f_AWCACHE,               //                   .awcache
		output wire [2:0]  h2f_AWPROT,                //                   .awprot
		output wire        h2f_AWVALID,               //                   .awvalid
		input  wire        h2f_AWREADY,               //                   .awready
		output wire [11:0] h2f_WID,                   //                   .wid
		output wire [31:0] h2f_WDATA,                 //                   .wdata
		output wire [3:0]  h2f_WSTRB,                 //                   .wstrb
		output wire        h2f_WLAST,                 //                   .wlast
		output wire        h2f_WVALID,                //                   .wvalid
		input  wire        h2f_WREADY,                //                   .wready
		input  wire [11:0] h2f_BID,                   //                   .bid
		input  wire [1:0]  h2f_BRESP,                 //                   .bresp
		input  wire        h2f_BVALID,                //                   .bvalid
		output wire        h2f_BREADY,                //                   .bready
		output wire [11:0] h2f_ARID,                  //                   .arid
		output wire [29:0] h2f_ARADDR,                //                   .araddr
		output wire [3:0]  h2f_ARLEN,                 //                   .arlen
		output wire [2:0]  h2f_ARSIZE,                //                   .arsize
		output wire [1:0]  h2f_ARBURST,               //                   .arburst
		output wire [1:0]  h2f_ARLOCK,                //                   .arlock
		output wire [3:0]  h2f_ARCACHE,               //                   .arcache
		output wire [2:0]  h2f_ARPROT,                //                   .arprot
		output wire        h2f_ARVALID,               //                   .arvalid
		input  wire        h2f_ARREADY,               //                   .arready
		input  wire [11:0] h2f_RID,                   //                   .rid
		input  wire [31:0] h2f_RDATA,                 //                   .rdata
		input  wire [1:0]  h2f_RRESP,                 //                   .rresp
		input  wire        h2f_RLAST,                 //                   .rlast
		input  wire        h2f_RVALID,                //                   .rvalid
		output wire        h2f_RREADY,                //                   .rready
		input  wire [29:0] f2h_sdram0_ADDRESS,        //    f2h_sdram0_data.address
		input  wire [7:0]  f2h_sdram0_BURSTCOUNT,     //                   .burstcount
		output wire        f2h_sdram0_WAITREQUEST,    //                   .waitrequest
		output wire [31:0] f2h_sdram0_READDATA,       //                   .readdata
		output wire        f2h_sdram0_READDATAVALID,  //                   .readdatavalid
		input  wire        f2h_sdram0_READ,           //                   .read
		input  wire        f2h_sdram0_clk,            //   f2h_sdram0_clock.clk
		input  wire [29:0] f2h_sdram1_ADDRESS,        //    f2h_sdram1_data.address
		input  wire [7:0]  f2h_sdram1_BURSTCOUNT,     //                   .burstcount
		output wire        f2h_sdram1_WAITREQUEST,    //                   .waitrequest
		input  wire [31:0] f2h_sdram1_WRITEDATA,      //                   .writedata
		input  wire [3:0]  f2h_sdram1_BYTEENABLE,     //                   .byteenable
		input  wire        f2h_sdram1_WRITE,          //                   .write
		input  wire        f2h_sdram1_clk,            //   f2h_sdram1_clock.clk
		input  wire [31:0] f2h_irq_p0,                //           f2h_irq0.irq
		input  wire [31:0] f2h_irq_p1,                //           f2h_irq1.irq
		output wire [14:0] mem_a,                     //             memory.mem_a
		output wire [2:0]  mem_ba,                    //                   .mem_ba
		output wire        mem_ck,                    //                   .mem_ck
		output wire        mem_ck_n,                  //                   .mem_ck_n
		output wire        mem_cke,                   //                   .mem_cke
		output wire        mem_cs_n,                  //                   .mem_cs_n
		output wire        mem_ras_n,                 //                   .mem_ras_n
		output wire        mem_cas_n,                 //                   .mem_cas_n
		output wire        mem_we_n,                  //                   .mem_we_n
		output wire        mem_reset_n,               //                   .mem_reset_n
		inout  wire [31:0] mem_dq,                    //                   .mem_dq
		inout  wire [3:0]  mem_dqs,                   //                   .mem_dqs
		inout  wire [3:0]  mem_dqs_n,                 //                   .mem_dqs_n
		output wire        mem_odt,                   //                   .mem_odt
		output wire [3:0]  mem_dm,                    //                   .mem_dm
		input  wire        oct_rzqin,                 //                   .oct_rzqin
		inout  wire        hps_io_sdio_inst_CMD,      //             hps_io.hps_io_sdio_inst_CMD
		inout  wire        hps_io_sdio_inst_D0,       //                   .hps_io_sdio_inst_D0
		inout  wire        hps_io_sdio_inst_D1,       //                   .hps_io_sdio_inst_D1
		output wire        hps_io_sdio_inst_CLK,      //                   .hps_io_sdio_inst_CLK
		inout  wire        hps_io_sdio_inst_D2,       //                   .hps_io_sdio_inst_D2
		inout  wire        hps_io_sdio_inst_D3,       //                   .hps_io_sdio_inst_D3
		inout  wire        hps_io_i2c0_inst_SDA,      //                   .hps_io_i2c0_inst_SDA
		inout  wire        hps_io_i2c0_inst_SCL,      //                   .hps_io_i2c0_inst_SCL
		inout  wire        hps_io_gpio_inst_GPIO48,   //                   .hps_io_gpio_inst_GPIO48
		inout  wire        hps_io_gpio_inst_GPIO53,   //                   .hps_io_gpio_inst_GPIO53
		inout  wire        hps_io_gpio_inst_GPIO54,   //                   .hps_io_gpio_inst_GPIO54
		inout  wire        hps_io_gpio_inst_LOANIO49, //                   .hps_io_gpio_inst_LOANIO49
		inout  wire        hps_io_gpio_inst_LOANIO50  //                   .hps_io_gpio_inst_LOANIO50
	);

	wire   [8:0] fpga_interfaces_loanio_gpio_loanio2_oe; // fpga_interfaces:loanio_gpio_loanio2_oe -> hps_io:gpio_loanio_loanio2_oe
	wire   [8:0] fpga_interfaces_loanio_gpio_loanio2_o;  // fpga_interfaces:loanio_gpio_loanio2_o -> hps_io:gpio_loanio_loanio2_o
	wire  [28:0] fpga_interfaces_loanio_gpio_loanio1_oe; // fpga_interfaces:loanio_gpio_loanio1_oe -> hps_io:gpio_loanio_loanio1_oe
	wire  [28:0] fpga_interfaces_loanio_gpio_loanio1_o;  // fpga_interfaces:loanio_gpio_loanio1_o -> hps_io:gpio_loanio_loanio1_o
	wire  [28:0] fpga_interfaces_loanio_gpio_loanio0_o;  // fpga_interfaces:loanio_gpio_loanio0_o -> hps_io:gpio_loanio_loanio0_o
	wire  [28:0] hps_io_gpio_loanio_loanio1_i;           // hps_io:gpio_loanio_loanio1_i -> fpga_interfaces:loanio_gpio_loanio1_i
	wire  [28:0] hps_io_gpio_loanio_loanio0_i;           // hps_io:gpio_loanio_loanio0_i -> fpga_interfaces:loanio_gpio_loanio0_i
	wire   [8:0] hps_io_gpio_loanio_loanio2_i;           // hps_io:gpio_loanio_loanio2_i -> fpga_interfaces:loanio_gpio_loanio2_i
	wire  [28:0] fpga_interfaces_loanio_gpio_loanio0_oe; // fpga_interfaces:loanio_gpio_loanio0_oe -> hps_io:gpio_loanio_loanio0_oe

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (F2S_Width != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					f2s_width_check ( .error(1'b1) );
		end
		if (S2F_Width != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					s2f_width_check ( .error(1'b1) );
		end
	endgenerate

	HPSWrapper_arm_hps_fpga_interfaces fpga_interfaces (
		.h2f_loan_in              (h2f_loan_in),                            //        h2f_loan_io.in
		.h2f_loan_out             (h2f_loan_out),                           //                   .out
		.h2f_loan_oe              (h2f_loan_oe),                            //                   .oe
		.loanio_gpio_loanio0_i    (hps_io_gpio_loanio_loanio0_i),           //        loanio_gpio.loanio0_i
		.loanio_gpio_loanio0_oe   (fpga_interfaces_loanio_gpio_loanio0_oe), //                   .loanio0_oe
		.loanio_gpio_loanio0_o    (fpga_interfaces_loanio_gpio_loanio0_o),  //                   .loanio0_o
		.loanio_gpio_loanio1_i    (hps_io_gpio_loanio_loanio1_i),           //                   .loanio1_i
		.loanio_gpio_loanio1_oe   (fpga_interfaces_loanio_gpio_loanio1_oe), //                   .loanio1_oe
		.loanio_gpio_loanio1_o    (fpga_interfaces_loanio_gpio_loanio1_o),  //                   .loanio1_o
		.loanio_gpio_loanio2_i    (hps_io_gpio_loanio_loanio2_i),           //                   .loanio2_i
		.loanio_gpio_loanio2_oe   (fpga_interfaces_loanio_gpio_loanio2_oe), //                   .loanio2_oe
		.loanio_gpio_loanio2_o    (fpga_interfaces_loanio_gpio_loanio2_o),  //                   .loanio2_o
		.h2f_rst_n                (h2f_rst_n),                              //          h2f_reset.reset_n
		.f2h_cold_rst_req_n       (f2h_cold_rst_req_n),                     // f2h_cold_reset_req.reset_n
		.h2f_lw_axi_clk           (h2f_lw_axi_clk),                         //   h2f_lw_axi_clock.clk
		.h2f_lw_AWID              (h2f_lw_AWID),                            //  h2f_lw_axi_master.awid
		.h2f_lw_AWADDR            (h2f_lw_AWADDR),                          //                   .awaddr
		.h2f_lw_AWLEN             (h2f_lw_AWLEN),                           //                   .awlen
		.h2f_lw_AWSIZE            (h2f_lw_AWSIZE),                          //                   .awsize
		.h2f_lw_AWBURST           (h2f_lw_AWBURST),                         //                   .awburst
		.h2f_lw_AWLOCK            (h2f_lw_AWLOCK),                          //                   .awlock
		.h2f_lw_AWCACHE           (h2f_lw_AWCACHE),                         //                   .awcache
		.h2f_lw_AWPROT            (h2f_lw_AWPROT),                          //                   .awprot
		.h2f_lw_AWVALID           (h2f_lw_AWVALID),                         //                   .awvalid
		.h2f_lw_AWREADY           (h2f_lw_AWREADY),                         //                   .awready
		.h2f_lw_WID               (h2f_lw_WID),                             //                   .wid
		.h2f_lw_WDATA             (h2f_lw_WDATA),                           //                   .wdata
		.h2f_lw_WSTRB             (h2f_lw_WSTRB),                           //                   .wstrb
		.h2f_lw_WLAST             (h2f_lw_WLAST),                           //                   .wlast
		.h2f_lw_WVALID            (h2f_lw_WVALID),                          //                   .wvalid
		.h2f_lw_WREADY            (h2f_lw_WREADY),                          //                   .wready
		.h2f_lw_BID               (h2f_lw_BID),                             //                   .bid
		.h2f_lw_BRESP             (h2f_lw_BRESP),                           //                   .bresp
		.h2f_lw_BVALID            (h2f_lw_BVALID),                          //                   .bvalid
		.h2f_lw_BREADY            (h2f_lw_BREADY),                          //                   .bready
		.h2f_lw_ARID              (h2f_lw_ARID),                            //                   .arid
		.h2f_lw_ARADDR            (h2f_lw_ARADDR),                          //                   .araddr
		.h2f_lw_ARLEN             (h2f_lw_ARLEN),                           //                   .arlen
		.h2f_lw_ARSIZE            (h2f_lw_ARSIZE),                          //                   .arsize
		.h2f_lw_ARBURST           (h2f_lw_ARBURST),                         //                   .arburst
		.h2f_lw_ARLOCK            (h2f_lw_ARLOCK),                          //                   .arlock
		.h2f_lw_ARCACHE           (h2f_lw_ARCACHE),                         //                   .arcache
		.h2f_lw_ARPROT            (h2f_lw_ARPROT),                          //                   .arprot
		.h2f_lw_ARVALID           (h2f_lw_ARVALID),                         //                   .arvalid
		.h2f_lw_ARREADY           (h2f_lw_ARREADY),                         //                   .arready
		.h2f_lw_RID               (h2f_lw_RID),                             //                   .rid
		.h2f_lw_RDATA             (h2f_lw_RDATA),                           //                   .rdata
		.h2f_lw_RRESP             (h2f_lw_RRESP),                           //                   .rresp
		.h2f_lw_RLAST             (h2f_lw_RLAST),                           //                   .rlast
		.h2f_lw_RVALID            (h2f_lw_RVALID),                          //                   .rvalid
		.h2f_lw_RREADY            (h2f_lw_RREADY),                          //                   .rready
		.h2f_axi_clk              (h2f_axi_clk),                            //      h2f_axi_clock.clk
		.h2f_AWID                 (h2f_AWID),                               //     h2f_axi_master.awid
		.h2f_AWADDR               (h2f_AWADDR),                             //                   .awaddr
		.h2f_AWLEN                (h2f_AWLEN),                              //                   .awlen
		.h2f_AWSIZE               (h2f_AWSIZE),                             //                   .awsize
		.h2f_AWBURST              (h2f_AWBURST),                            //                   .awburst
		.h2f_AWLOCK               (h2f_AWLOCK),                             //                   .awlock
		.h2f_AWCACHE              (h2f_AWCACHE),                            //                   .awcache
		.h2f_AWPROT               (h2f_AWPROT),                             //                   .awprot
		.h2f_AWVALID              (h2f_AWVALID),                            //                   .awvalid
		.h2f_AWREADY              (h2f_AWREADY),                            //                   .awready
		.h2f_WID                  (h2f_WID),                                //                   .wid
		.h2f_WDATA                (h2f_WDATA),                              //                   .wdata
		.h2f_WSTRB                (h2f_WSTRB),                              //                   .wstrb
		.h2f_WLAST                (h2f_WLAST),                              //                   .wlast
		.h2f_WVALID               (h2f_WVALID),                             //                   .wvalid
		.h2f_WREADY               (h2f_WREADY),                             //                   .wready
		.h2f_BID                  (h2f_BID),                                //                   .bid
		.h2f_BRESP                (h2f_BRESP),                              //                   .bresp
		.h2f_BVALID               (h2f_BVALID),                             //                   .bvalid
		.h2f_BREADY               (h2f_BREADY),                             //                   .bready
		.h2f_ARID                 (h2f_ARID),                               //                   .arid
		.h2f_ARADDR               (h2f_ARADDR),                             //                   .araddr
		.h2f_ARLEN                (h2f_ARLEN),                              //                   .arlen
		.h2f_ARSIZE               (h2f_ARSIZE),                             //                   .arsize
		.h2f_ARBURST              (h2f_ARBURST),                            //                   .arburst
		.h2f_ARLOCK               (h2f_ARLOCK),                             //                   .arlock
		.h2f_ARCACHE              (h2f_ARCACHE),                            //                   .arcache
		.h2f_ARPROT               (h2f_ARPROT),                             //                   .arprot
		.h2f_ARVALID              (h2f_ARVALID),                            //                   .arvalid
		.h2f_ARREADY              (h2f_ARREADY),                            //                   .arready
		.h2f_RID                  (h2f_RID),                                //                   .rid
		.h2f_RDATA                (h2f_RDATA),                              //                   .rdata
		.h2f_RRESP                (h2f_RRESP),                              //                   .rresp
		.h2f_RLAST                (h2f_RLAST),                              //                   .rlast
		.h2f_RVALID               (h2f_RVALID),                             //                   .rvalid
		.h2f_RREADY               (h2f_RREADY),                             //                   .rready
		.f2h_sdram0_ADDRESS       (f2h_sdram0_ADDRESS),                     //    f2h_sdram0_data.address
		.f2h_sdram0_BURSTCOUNT    (f2h_sdram0_BURSTCOUNT),                  //                   .burstcount
		.f2h_sdram0_WAITREQUEST   (f2h_sdram0_WAITREQUEST),                 //                   .waitrequest
		.f2h_sdram0_READDATA      (f2h_sdram0_READDATA),                    //                   .readdata
		.f2h_sdram0_READDATAVALID (f2h_sdram0_READDATAVALID),               //                   .readdatavalid
		.f2h_sdram0_READ          (f2h_sdram0_READ),                        //                   .read
		.f2h_sdram0_clk           (f2h_sdram0_clk),                         //   f2h_sdram0_clock.clk
		.f2h_sdram1_ADDRESS       (f2h_sdram1_ADDRESS),                     //    f2h_sdram1_data.address
		.f2h_sdram1_BURSTCOUNT    (f2h_sdram1_BURSTCOUNT),                  //                   .burstcount
		.f2h_sdram1_WAITREQUEST   (f2h_sdram1_WAITREQUEST),                 //                   .waitrequest
		.f2h_sdram1_WRITEDATA     (f2h_sdram1_WRITEDATA),                   //                   .writedata
		.f2h_sdram1_BYTEENABLE    (f2h_sdram1_BYTEENABLE),                  //                   .byteenable
		.f2h_sdram1_WRITE         (f2h_sdram1_WRITE),                       //                   .write
		.f2h_sdram1_clk           (f2h_sdram1_clk),                         //   f2h_sdram1_clock.clk
		.f2h_irq_p0               (f2h_irq_p0),                             //           f2h_irq0.irq
		.f2h_irq_p1               (f2h_irq_p1)                              //           f2h_irq1.irq
	);

	HPSWrapper_arm_hps_hps_io hps_io (
		.gpio_loanio_loanio0_i     (hps_io_gpio_loanio_loanio0_i),           // gpio_loanio.loanio0_i
		.gpio_loanio_loanio0_oe    (fpga_interfaces_loanio_gpio_loanio0_oe), //            .loanio0_oe
		.gpio_loanio_loanio0_o     (fpga_interfaces_loanio_gpio_loanio0_o),  //            .loanio0_o
		.gpio_loanio_loanio1_i     (hps_io_gpio_loanio_loanio1_i),           //            .loanio1_i
		.gpio_loanio_loanio1_oe    (fpga_interfaces_loanio_gpio_loanio1_oe), //            .loanio1_oe
		.gpio_loanio_loanio1_o     (fpga_interfaces_loanio_gpio_loanio1_o),  //            .loanio1_o
		.gpio_loanio_loanio2_i     (hps_io_gpio_loanio_loanio2_i),           //            .loanio2_i
		.gpio_loanio_loanio2_oe    (fpga_interfaces_loanio_gpio_loanio2_oe), //            .loanio2_oe
		.gpio_loanio_loanio2_o     (fpga_interfaces_loanio_gpio_loanio2_o),  //            .loanio2_o
		.mem_a                     (mem_a),                                  //      memory.mem_a
		.mem_ba                    (mem_ba),                                 //            .mem_ba
		.mem_ck                    (mem_ck),                                 //            .mem_ck
		.mem_ck_n                  (mem_ck_n),                               //            .mem_ck_n
		.mem_cke                   (mem_cke),                                //            .mem_cke
		.mem_cs_n                  (mem_cs_n),                               //            .mem_cs_n
		.mem_ras_n                 (mem_ras_n),                              //            .mem_ras_n
		.mem_cas_n                 (mem_cas_n),                              //            .mem_cas_n
		.mem_we_n                  (mem_we_n),                               //            .mem_we_n
		.mem_reset_n               (mem_reset_n),                            //            .mem_reset_n
		.mem_dq                    (mem_dq),                                 //            .mem_dq
		.mem_dqs                   (mem_dqs),                                //            .mem_dqs
		.mem_dqs_n                 (mem_dqs_n),                              //            .mem_dqs_n
		.mem_odt                   (mem_odt),                                //            .mem_odt
		.mem_dm                    (mem_dm),                                 //            .mem_dm
		.oct_rzqin                 (oct_rzqin),                              //            .oct_rzqin
		.hps_io_sdio_inst_CMD      (hps_io_sdio_inst_CMD),                   //      hps_io.hps_io_sdio_inst_CMD
		.hps_io_sdio_inst_D0       (hps_io_sdio_inst_D0),                    //            .hps_io_sdio_inst_D0
		.hps_io_sdio_inst_D1       (hps_io_sdio_inst_D1),                    //            .hps_io_sdio_inst_D1
		.hps_io_sdio_inst_CLK      (hps_io_sdio_inst_CLK),                   //            .hps_io_sdio_inst_CLK
		.hps_io_sdio_inst_D2       (hps_io_sdio_inst_D2),                    //            .hps_io_sdio_inst_D2
		.hps_io_sdio_inst_D3       (hps_io_sdio_inst_D3),                    //            .hps_io_sdio_inst_D3
		.hps_io_i2c0_inst_SDA      (hps_io_i2c0_inst_SDA),                   //            .hps_io_i2c0_inst_SDA
		.hps_io_i2c0_inst_SCL      (hps_io_i2c0_inst_SCL),                   //            .hps_io_i2c0_inst_SCL
		.hps_io_gpio_inst_GPIO48   (hps_io_gpio_inst_GPIO48),                //            .hps_io_gpio_inst_GPIO48
		.hps_io_gpio_inst_GPIO53   (hps_io_gpio_inst_GPIO53),                //            .hps_io_gpio_inst_GPIO53
		.hps_io_gpio_inst_GPIO54   (hps_io_gpio_inst_GPIO54),                //            .hps_io_gpio_inst_GPIO54
		.hps_io_gpio_inst_LOANIO49 (hps_io_gpio_inst_LOANIO49),              //            .hps_io_gpio_inst_LOANIO49
		.hps_io_gpio_inst_LOANIO50 (hps_io_gpio_inst_LOANIO50)               //            .hps_io_gpio_inst_LOANIO50
	);

endmodule
