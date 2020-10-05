module qss013_top
(
	input clk,
	input txe_n,
    input rxf_n,
	output wr_n,
    output rd_n,
	inout [7:0] DBUS,
	
	// /*** spi_1***/
	output sdo0,
	input sdi0,
	output sck0,
	output scs0,
    // /*** spi_2***/
	output sdo1,
	input sdi1,
	output sck1,
	output scs1,
    
	// output tx_dv,
	// output rx_dv,
    output adc1_sck,
    output adc1_cs,
    output adc2_sck,
    output adc2_cs,
    /***integrator ***/
    output sw1,
    output sw2,
    output sw3,
    output sw4,
    output cp,
    output cp_check,
    /*** check if program success ***/
    output [3:0] LED
    
    /***debug ***/
    // ,output [7:0] cmd_out
    // ,output read_done
    // ,output [4:0] read_SM
    
);

localparam PATTERN1 = 8'd53; 
localparam PATTERN2 = 8'd54; 
localparam PATTERN3 = 8'd55; 
localparam PATTERN4 = 8'd56; 
localparam WRITE_ADC1_ch0_START = 8'd48; 
localparam WRITE_ADC1_ch0_STOP = 8'd49; 
localparam WRITE_ADC1_ch1_START = 8'd50; 
localparam WRITE_ADC1_ch1_STOP = 8'd51; 
localparam WRITE_ADC2_ch0_START = 8'd57; 
localparam WRITE_ADC2_ch0_STOP = 8'd58; 
localparam WRITE_ADC2_ch1_START = 8'd59; 
localparam WRITE_ADC2_ch1_STOP = 8'd60; 
localparam INTEGRATOR_1_START = 8'd61; 
localparam INTEGRATOR_1_STOP = 8'd62; 
localparam INTEGRATOR_2_START = 8'd63; 
localparam INTEGRATOR_2_STOP = 8'd64; 
localparam INTEGRATOR_3_START = 8'd65; 
localparam INTEGRATOR_3_STOP = 8'd66; 
localparam INTEGRATOR_4_START = 8'd67; 
localparam INTEGRATOR_4_STOP = 8'd68; 
localparam MODE1 = 8'd1;
localparam MODE2 = 8'd2;
localparam MODE3 = 8'd3;
localparam SET_T1 = 8'd4;
localparam SET_T2 = 8'd5;
localparam SET_T3 = 8'd6;
localparam SET_T4 = 8'd7;


wire [15:0] adc_data, adc_data_1, adc_data_2;
wire rst_n;
wire [7:0] r_data_out;
wire [7:0] cmd;
wire [31:0] value;
reg ch;
reg [3:0] led_out = 4'd0;
reg LTC1865_en, LTC1865_2_en;
reg integrator_1_en, integrator_2_en, integrator_3_en, integrator_4_en;
reg [1:0] r_mode;
reg [31:0] r_t1, r_t2, r_t3, r_t4;
wire tx_dv_1, tx_dv_2;
wire rx_dv_1, rx_dv_2;
wire cmd_ready;
wire cp1, cp2, cp3, cp4;
// wire read_done;
// wire [7:0] byte_cmd;

assign cmd_out = cmd;
assign LED = led_out;
assign DBUS = (!rxf_n) ? 8'bz : r_data_out;
assign tx_dv = (LTC1865_en) ? tx_dv_1 :tx_dv_2;
assign rx_dv = (LTC1865_en) ? rx_dv_1 :rx_dv_2;
assign adc_data = (LTC1865_en) ? adc_data_1 :adc_data_2;
assign cp = (integrator_1_en)? cp1 : ((integrator_2_en)? cp2: ((integrator_3_en)? cp3: ((integrator_4_en)? cp4: 1'b0)));
assign cp_check = cp;
assign adc1_sck = sck0;
assign adc1_cs = scs0;
assign adc2_sck = sck1;
assign adc2_cs = scs1;

always@(posedge clk) begin
    if(!rst_n) begin
        led_out <= {1'b0,1'b0,1'b0,1'b0};
        LTC1865_en <= 1'b0;
        LTC1865_2_en <= 1'b0;
        integrator_1_en <= 1'b0;
        integrator_2_en <= 1'b0;
        integrator_3_en <= 1'b0;
        integrator_4_en <= 1'b0;
        r_mode <= 2'd0;
        r_t1 <= 32'd500;
        r_t2 <= 32'd2500;
        r_t3 <= 32'd400;
        r_t4 <= 32'd200;
    end
    if(cmd_ready) begin
        case(cmd)
            PATTERN1: led_out <= {1'b0,1'b0,1'b1,1'b1};
            
            PATTERN2: led_out <= {1'b1,1'b1,1'b0,1'b0};
            
            PATTERN3: led_out <= {1'b1,1'b0,1'b1,1'b0};
            
            PATTERN4: led_out <= {1'b0,1'b0,1'b1,1'b0};
            
            WRITE_ADC1_ch0_START: begin
                led_out <= {1'b1,1'b1,1'b1,1'b1};
                LTC1865_en <= 1'b1;
                ch = 0;
            end
            
            WRITE_ADC1_ch0_STOP: begin
                led_out <= {1'b0,1'b0,1'b0,1'b0};
                LTC1865_en <= 1'b0;
            end
            
            WRITE_ADC1_ch1_START: begin
                led_out <= {1'b1,1'b1,1'b1,1'b1};
                LTC1865_en <= 1'b1;
                ch = 1;
            end
                
            WRITE_ADC1_ch1_STOP: begin
                led_out <= {1'b0,1'b0,1'b0,1'b0};
                LTC1865_en <= 1'b0;
            end
            
            WRITE_ADC2_ch0_START: begin
                led_out <= {1'b1,1'b1,1'b1,1'b1};
                LTC1865_2_en <= 1'b1;
                ch = 0;
            end
            
            WRITE_ADC2_ch0_STOP: begin
                led_out <= {1'b0,1'b0,1'b0,1'b0};
                LTC1865_2_en <= 1'b0;
            end
            
            WRITE_ADC2_ch1_START: begin
                led_out <= {1'b1,1'b1,1'b1,1'b1};
                LTC1865_2_en <= 1'b1;
                ch = 1;
            end
            
            WRITE_ADC2_ch1_STOP: begin
                led_out <= {1'b0,1'b0,1'b0,1'b0};
                LTC1865_2_en <= 1'b0;
            end
            
            INTEGRATOR_1_START: begin
                integrator_1_en <= 1'b1;
                led_out <= {1'b1,1'b1,1'b1,1'b1};
            end
            
            INTEGRATOR_1_STOP: begin
                integrator_1_en <= 1'b0;
                led_out <= {1'b0,1'b0,1'b0,1'b0};
            end
            
            INTEGRATOR_2_START: begin
                integrator_2_en <= 1'b1;
                led_out <= {1'b1,1'b1,1'b1,1'b1};
            end
            
            INTEGRATOR_2_STOP: begin
                integrator_2_en <= 1'b0;
                led_out <= {1'b0,1'b0,1'b0,1'b0};
            end
            
            INTEGRATOR_3_START: begin
                integrator_3_en <= 1'b1;
                led_out <= {1'b1,1'b1,1'b1,1'b1};
            end
            
            INTEGRATOR_3_STOP: begin
                integrator_3_en <= 1'b0;
                led_out <= {1'b0,1'b0,1'b0,1'b0};
            end
            
            INTEGRATOR_4_START: begin
                integrator_4_en <= 1'b1;
                led_out <= {1'b1,1'b1,1'b1,1'b1};
            end
            
            INTEGRATOR_4_STOP: begin
                integrator_4_en <= 1'b0;
                led_out <= {1'b0,1'b0,1'b0,1'b0};
            end
            
            MODE1: r_mode <= 2'd0;
            
            MODE2: r_mode <= 2'd1;
            
            MODE3: r_mode <= 2'd2;
            
            SET_T1: r_t1 <= value;
            
            SET_T2: r_t2 <= value;
            
            SET_T3: r_t3 <= value;
            
            SET_T4: r_t4 <= value;
          
        endcase
    end
end

rstn_gen
#(
.RST_CNT(50000000) //rst_n = L 1s@50_000_000
) rst
(
	.i_clk(clk),
	.o_reset_n(rst_n)
);

ltc1865_controller
#(
.SPI_NEXT_VALID_NUM(250), //12.5M@250, 100K@8165: 3.3us/20ns + HALF_PERIOD_CLK*2*16
.SCK_HALF_PERIOD_CLK(2) //12.5M@2, 100K@250
) adc1
(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_en(LTC1865_en),
	.i_txe_n(txe_n),

	/*** spi***/
	.o_sdo(sdo0),
	.i_sdi(sdi0),
	.o_sck(sck0),
	.o_scs(scs0),

	/*** ch ***/
	.i_ch(ch), 
	.o_adc_data(adc_data_1),
	.o_tx_dv(tx_dv_1),
	.o_rx_dv(rx_dv_1)	
);

ltc1865_controller
#(
.SPI_NEXT_VALID_NUM(250), //12.5M@250, 100K@8165
.SCK_HALF_PERIOD_CLK(2) //12.5M@2, 100K@250
) adc2
(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_en(LTC1865_2_en),
	.i_txe_n(txe_n),

	/*** spi***/
	.o_sdo(sdo1),
	.i_sdi(sdi1),
	.o_sck(sck1),
	.o_scs(scs1),

	/*** ch ***/
	.i_ch(ch), 
	.o_adc_data(adc_data_2),
	.o_tx_dv(tx_dv_2),
	.o_rx_dv(rx_dv_2)	
);

ft232h_asynFIFO_w ft232h_w
(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_txe_n(txe_n),
	.o_wr_n(wr_n),
	.i_rx_dv(rx_dv),
	.i_adc_data(adc_data),
	.o_r_data_out(r_data_out)
);

ft232h_asynFIFO_r5bytes ft232h_r5bytes
(
    .i_clk(clk),
    .i_rst_n(rst_n),
    .i_rxf_n(rxf_n),
    .i_data_in(DBUS), 
    .o_rd_n(rd_n),
    .o_data_read(value),
    .o_cmd(cmd),
    .o_data_ready(cmd_ready)
    /*** debug ***/
    ,.read_done(read_done)
    ,.byte_cmd(byte_cmd)
    ,.read_SM(read_SM)
);

integrator_seq integrator_1
(
    .i_clk(clk),
    .i_rst_n(rst_n),
    .i_en(integrator_1_en),
    .i_mode(r_mode),
    .i_T1(r_t1),
    .i_T2(r_t2),
    .i_T3(r_t3),
    .i_T4(r_t4),
    .o_sw(sw1),
    .o_cp(cp1)
);

integrator_seq integrator_2
(
    .i_clk(clk),
    .i_rst_n(rst_n),
    .i_en(integrator_2_en),
    .i_mode(r_mode),
    .i_T1(r_t1),
    .i_T2(r_t2),
    .i_T3(r_t3),
    .i_T4(r_t4),
    .o_sw(sw2),
    .o_cp(cp2)
);

integrator_seq integrator_3
(
    .i_clk(clk),
    .i_rst_n(rst_n),
    .i_en(integrator_3_en),
    .i_mode(r_mode),
    .i_T1(r_t1),
    .i_T2(r_t2),
    .i_T3(r_t3),
    .i_T4(r_t4),
    .o_sw(sw3),
    .o_cp(cp3)
);

integrator_seq integrator_4
(
    .i_clk(clk),
    .i_rst_n(rst_n),
    .i_en(integrator_4_en),
    .i_mode(r_mode),
    .i_T1(r_t1),
    .i_T2(r_t2),
    .i_T3(r_t3),
    .i_T4(r_t4),
    .o_sw(sw4),
    .o_cp(cp4)
);
endmodule