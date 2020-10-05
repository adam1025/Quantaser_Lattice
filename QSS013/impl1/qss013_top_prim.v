// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Mon Oct 05 12:16:10 2020
//
// Verilog Description of module qss013_top
//

module qss013_top (clk, txe_n, rxf_n, wr_n, rd_n, DBUS, sdo0, 
            sdi0, sck0, scs0, sdo1, sdi1, sck1, scs1, adc1_sck, 
            adc1_cs, adc2_sck, adc2_cs, sw1, sw2, sw3, sw4, cp, 
            cp_check, LED) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(1[8:18])
    input clk;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    input txe_n;   // c:/users/user/desktop/qss013/qss013.v(4[8:13])
    input rxf_n;   // c:/users/user/desktop/qss013/qss013.v(5[11:16])
    output wr_n;   // c:/users/user/desktop/qss013/qss013.v(6[9:13])
    output rd_n;   // c:/users/user/desktop/qss013/qss013.v(7[12:16])
    inout [7:0]DBUS;   // c:/users/user/desktop/qss013/qss013.v(8[14:18])
    output sdo0;   // c:/users/user/desktop/qss013/qss013.v(11[9:13])
    input sdi0;   // c:/users/user/desktop/qss013/qss013.v(12[8:12])
    output sck0;   // c:/users/user/desktop/qss013/qss013.v(13[9:13])
    output scs0;   // c:/users/user/desktop/qss013/qss013.v(14[9:13])
    output sdo1;   // c:/users/user/desktop/qss013/qss013.v(16[9:13])
    input sdi1;   // c:/users/user/desktop/qss013/qss013.v(17[8:12])
    output sck1;   // c:/users/user/desktop/qss013/qss013.v(18[9:13])
    output scs1;   // c:/users/user/desktop/qss013/qss013.v(19[9:13])
    output adc1_sck;   // c:/users/user/desktop/qss013/qss013.v(23[12:20])
    output adc1_cs;   // c:/users/user/desktop/qss013/qss013.v(24[12:19])
    output adc2_sck;   // c:/users/user/desktop/qss013/qss013.v(25[12:20])
    output adc2_cs;   // c:/users/user/desktop/qss013/qss013.v(26[12:19])
    output sw1;   // c:/users/user/desktop/qss013/qss013.v(28[12:15])
    output sw2;   // c:/users/user/desktop/qss013/qss013.v(29[12:15])
    output sw3;   // c:/users/user/desktop/qss013/qss013.v(30[12:15])
    output sw4;   // c:/users/user/desktop/qss013/qss013.v(31[12:15])
    output cp;   // c:/users/user/desktop/qss013/qss013.v(32[12:14])
    output cp_check;   // c:/users/user/desktop/qss013/qss013.v(33[12:20])
    output [3:0]LED;   // c:/users/user/desktop/qss013/qss013.v(35[18:21])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    
    wire GND_net, VCC_net, rxf_n_c, rd_n_c, sdo0_c, sdi0_c, adc1_sck_c, 
        adc1_cs_c, sdo1_c, sdi1_c, adc2_sck_c, adc2_cs_c, sw1_c, 
        sw2_c, sw3_c, sw4_c, cp_check_c, LED_c_3, LED_c_2, LED_c_1, 
        LED_c_0;
    wire [15:0]adc_data;   // c:/users/user/desktop/qss013/qss013.v(73[13:21])
    wire [15:0]n19314;   // c:/users/user/desktop/qss013/qss013.v(73[23:33])
    wire [15:0]n19313;   // c:/users/user/desktop/qss013/qss013.v(73[35:45])
    
    wire rst_n;
    wire [7:0]r_data_out;   // c:/users/user/desktop/qss013/qss013.v(75[12:22])
    wire [7:0]cmd;   // c:/users/user/desktop/qss013/qss013.v(76[12:15])
    wire [31:0]value;   // c:/users/user/desktop/qss013/qss013.v(77[13:18])
    
    wire LTC1865_en, LTC1865_2_en, integrator_1_en, integrator_2_en, 
        integrator_3_en, integrator_4_en;
    wire [1:0]r_mode;   // c:/users/user/desktop/qss013/qss013.v(82[11:17])
    wire [31:0]r_t1;   // c:/users/user/desktop/qss013/qss013.v(83[12:16])
    wire [31:0]r_t2;   // c:/users/user/desktop/qss013/qss013.v(83[18:22])
    wire [31:0]r_t3;   // c:/users/user/desktop/qss013/qss013.v(83[24:28])
    wire [31:0]r_t4;   // c:/users/user/desktop/qss013/qss013.v(83[30:34])
    
    wire rx_dv_1, rx_dv_2, cmd_ready, cp1, cp2, cp3, cp4, cp_N_404, 
        cp_N_403;
    wire [3:0]LED_3__N_135;
    
    wire n10640, DBUS_out_0, DBUS_out_1, DBUS_out_2, DBUS_out_3, clk_c_enable_537, 
        n10344, n10578;
    wire [3:0]LED_3__N_1;
    
    wire LTC1865_en_N_439, integrator_1_en_N_453, integrator_2_en_N_457, 
        integrator_3_en_N_461, integrator_4_en_N_465;
    wire [1:0]r_mode_1__N_5;
    
    wire n14275, n18054, n17898, o_tx_dv;
    wire [2:0]spi_sm;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(38[11:17])
    
    wire n17515, o_tx_dv_adj_1834;
    wire [2:0]spi_sm_adj_1854;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(38[11:17])
    wire [7:0]channel_sel_adj_1856;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(40[12:23])
    
    wire n17530, wr_n_c_0, next_state_5__N_802_c_0, n19255, n18836, 
        n18835, n18834;
    wire [1:0]r_mode_adj_1873;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(19[11:17])
    wire [4:0]seq_SM;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(21[11:17])
    wire [31:0]T1;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(22[12:14])
    wire [31:0]T3;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(22[20:22])
    wire [31:0]o_sw_N_1360;
    
    wire n18833, clk_c_enable_268, n18918, n17532, n18917, n18916, 
        n52, n16780, n17689;
    wire [31:0]o_sw_N_1396;
    
    wire n17839, clk_c_enable_635, n6817, n6, n19038, n18912, n18910, 
        n18908, n14, clk_c_enable_763, n18907, clk_c_enable_308, n7, 
        n10315, n10, DBUS_out_4, n9388, n8676, n8, clk_c_enable_807, 
        n18904, n17457, n26, n24, clk_c_enable_461, n17842, n9196, 
        n18903, DBUS_out_5, n6206, n7_adj_1838, n18922, clk_c_enable_339, 
        n19256, n19250;
    wire [4:0]seq_SM_adj_1991;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(21[11:17])
    
    wire clk_c_enable_307, n17478, n13261, n50, clk_c_enable_798, 
        n4458, n59, n56, n62, n53, n87, n57, n13564, n6101, 
        clk_c_enable_26, n66, n68, n50_adj_1840, n61, n59_adj_1841, 
        n12, n18654, n18653, n18, n17, n55, n6852, n10338, n10317, 
        n17660, n6738, clk_c_enable_451, n17557, n2, n10609;
    wire [4:0]seq_SM_adj_2094;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(21[11:17])
    
    wire clk_c_enable_762, n49, n61_adj_1843, n58, n17_adj_1844, n18894, 
        n4354, n18890, n19252, n18888, clk_c_enable_341, n18887, 
        n18886, n18885, n18925, DBUS_out_6, n18007, n6858, n18001, 
        n6136, n17479, n17991, n19251, clk_c_enable_761, n17983, 
        clk_c_enable_754, clk_c_enable_288;
    wire [1:0]r_SM_CS;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(74[13:20])
    
    wire o_SPI_CS_n_N_675, n18875;
    wire [1:0]r_SM_CS_adj_2194;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(74[13:20])
    
    wire n17971, o_SPI_CS_n_N_675_adj_1847, n17969;
    wire [5:0]next_state_5__N_971;
    
    wire n6961, n18873, n17959, clk_c_enable_279, n17955, n17953, 
        n18924, n9201, n9194, n17_adj_1848, n18866, n18865, n7_adj_1849, 
        n18861, n18859, n18858, n18857, n18856, n8739, clk_c_enable_766, 
        n4, n19257, DBUS_out_7, n17939, n18848, n17933, n18843, 
        n19259, n18841, n19260;
    
    FD1P3IX r_t4_i21 (.D(value[21]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[21]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i21.GSR = "DISABLED";
    FD1P3IX r_t2_i27 (.D(value[27]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[27]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i27.GSR = "DISABLED";
    FD1P3IX r_t2_i28 (.D(value[28]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[28]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i28.GSR = "DISABLED";
    FD1S3AX r_mode_i0 (.D(r_mode_1__N_5[0]), .CK(clk_c), .Q(r_mode[0]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_mode_i0.GSR = "DISABLED";
    FD1P3IX r_t2_i29 (.D(value[29]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[29]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i29.GSR = "DISABLED";
    FD1P3AX LTC1865_en_139 (.D(LTC1865_en_N_439), .SP(clk_c_enable_26), 
            .CK(clk_c), .Q(LTC1865_en));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam LTC1865_en_139.GSR = "DISABLED";
    FD1S3AX led_out_i1 (.D(LED_3__N_1[0]), .CK(clk_c), .Q(LED_c_0)) /* synthesis lse_init_val=0 */ ;   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam led_out_i1.GSR = "DISABLED";
    FD1P3IX r_t4_i22 (.D(value[22]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[22]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i22.GSR = "DISABLED";
    LUT4 i3701_4_lut_then_4_lut (.A(n18857), .B(cmd[3]), .C(cmd[1]), .D(cmd[0]), 
         .Z(n19252)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3701_4_lut_then_4_lut.init = 16'h8000;
    LUT4 adc_data_2_15__I_0_i5_3_lut (.A(n19313[4]), .B(n19314[4]), .C(LTC1865_en), 
         .Z(adc_data[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(96[19:56])
    defparam adc_data_2_15__I_0_i5_3_lut.init = 16'hcaca;
    FD1P3IX r_t2_i30 (.D(value[30]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[30]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i30.GSR = "DISABLED";
    FD1P3IX r_t2_i31 (.D(value[31]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[31]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i31.GSR = "DISABLED";
    FD1P3IX r_t4_i23 (.D(value[23]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[23]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i23.GSR = "DISABLED";
    FD1P3IX r_t4_i24 (.D(value[24]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[24]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i24.GSR = "DISABLED";
    LUT4 i3701_4_lut_else_4_lut (.A(n18857), .B(cmd[3]), .C(cmd[1]), .D(cmd[0]), 
         .Z(n19251)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i3701_4_lut_else_4_lut.init = 16'ha080;
    LUT4 i1_2_lut_rep_177 (.A(n4354), .B(cmd_ready), .Z(n18835)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_2_lut_rep_177.init = 16'h8888;
    LUT4 i8428_2_lut_rep_215 (.A(r_mode[1]), .B(n19260), .Z(n18873)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(105[5] 118[8])
    defparam i8428_2_lut_rep_215.init = 16'h8888;
    FD1P3IX r_t3_i1 (.D(value[1]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[1]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(n4354), .B(cmd_ready), .C(n2), .Z(n17983)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_1869_i2_3_lut_4_lut (.A(r_mode[1]), .B(n19260), .C(n6738), 
         .D(n19250), .Z(r_mode_1__N_5[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/user/desktop/qss013/qss013.v(105[5] 118[8])
    defparam mux_1869_i2_3_lut_4_lut.init = 16'hf808;
    LUT4 LED_3__I_0_i4_4_lut (.A(LED_3__N_135[3]), .B(n12), .C(cmd_ready), 
         .D(n62), .Z(LED_3__N_1[3])) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam LED_3__I_0_i4_4_lut.init = 16'h3afa;
    LUT4 cmd_7__I_0_174_i10_2_lut_rep_217 (.A(cmd[2]), .B(cmd[3]), .Z(n18875)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/user/desktop/qss013/qss013.v(225[13:19])
    defparam cmd_7__I_0_174_i10_2_lut_rep_217.init = 16'hdddd;
    LUT4 i1_4_lut (.A(LED_3__N_135[3]), .B(cmd[7]), .C(n56), .D(n59), 
         .Z(n62)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h7350;
    FD1P3IX r_t3_i2 (.D(value[2]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[2]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i2.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut (.A(cmd[2]), .B(cmd[3]), .C(n18894), .D(cmd[1]), 
         .Z(n50_adj_1840)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/user/desktop/qss013/qss013.v(225[13:19])
    defparam i2_3_lut_4_lut.init = 16'hf0d0;
    LUT4 i2_3_lut_4_lut_adj_118 (.A(cmd[2]), .B(cmd[3]), .C(cmd[0]), .D(cmd[1]), 
         .Z(n50)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // c:/users/user/desktop/qss013/qss013.v(225[13:19])
    defparam i2_3_lut_4_lut_adj_118.init = 16'hddfd;
    LUT4 i2_2_lut_3_lut (.A(cmd[2]), .B(cmd[3]), .C(cmd[0]), .Z(n49)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/user/desktop/qss013/qss013.v(225[13:19])
    defparam i2_2_lut_3_lut.init = 16'hfdfd;
    FD1P3IX r_t4_i25 (.D(value[25]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[25]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i25.GSR = "DISABLED";
    LUT4 i77_4_lut (.A(n50), .B(n17898), .C(cmd[6]), .D(n18894), .Z(n59)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i77_4_lut.init = 16'h3a30;
    LUT4 i1_3_lut_4_lut (.A(n13564), .B(n18841), .C(n16780), .D(n8739), 
         .Z(n17959)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfff4;
    FD1P3IX r_t3_i3 (.D(value[3]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[3]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i3.GSR = "DISABLED";
    FD1P3IX r_t4_i26 (.D(value[26]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[26]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i26.GSR = "DISABLED";
    LUT4 i8429_2_lut (.A(LED_c_3), .B(n19260), .Z(LED_3__N_135[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(105[5] 118[8])
    defparam i8429_2_lut.init = 16'h8888;
    FD1P3JX r_t3_i4 (.D(value[4]), .SP(clk_c_enable_754), .PD(n10609), 
            .CK(clk_c), .Q(r_t3[4]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i4.GSR = "DISABLED";
    FD1P3IX r_t3_i5 (.D(value[5]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[5]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i5.GSR = "DISABLED";
    FD1P3IX r_t3_i6 (.D(value[6]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[6]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i6.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(cmd[1]), .B(n14), .Z(n56)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    FD1P3IX r_t4_i27 (.D(value[27]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[27]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i27.GSR = "DISABLED";
    LUT4 adc_data_2_15__I_0_i4_3_lut (.A(n19313[3]), .B(n19314[3]), .C(LTC1865_en), 
         .Z(adc_data[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(96[19:56])
    defparam adc_data_2_15__I_0_i4_3_lut.init = 16'hcaca;
    FD1P3IX r_t4_i28 (.D(value[28]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[28]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i28.GSR = "DISABLED";
    LUT4 LED_3__I_0_i3_4_lut (.A(LED_3__N_135[2]), .B(n12), .C(cmd_ready), 
         .D(n61_adj_1843), .Z(LED_3__N_1[2])) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam LED_3__I_0_i3_4_lut.init = 16'h3afa;
    FD1P3JX r_t3_i7 (.D(value[7]), .SP(clk_c_enable_754), .PD(n10609), 
            .CK(clk_c), .Q(r_t3[7]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i7.GSR = "DISABLED";
    FD1P3IX r_t4_i29 (.D(value[29]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[29]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i29.GSR = "DISABLED";
    LUT4 i9156_2_lut_rep_262 (.A(cmd[1]), .B(cmd[0]), .Z(n19250)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9156_2_lut_rep_262.init = 16'h8888;
    FD1P3IX r_t1_i0 (.D(value[0]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[0]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i0.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_119 (.A(LED_3__N_135[2]), .B(cmd[7]), .C(n56), .D(n58), 
         .Z(n61_adj_1843)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_119.init = 16'h7350;
    LUT4 i75_4_lut (.A(n49), .B(n17898), .C(cmd[6]), .D(n18894), .Z(n58)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i75_4_lut.init = 16'h3a30;
    FD1P3IX r_t4_i30 (.D(value[30]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[30]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i30.GSR = "DISABLED";
    LUT4 i8430_2_lut (.A(LED_c_2), .B(n19260), .Z(LED_3__N_135[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(105[5] 118[8])
    defparam i8430_2_lut.init = 16'h8888;
    FD1P3JX r_t3_i8 (.D(value[8]), .SP(clk_c_enable_754), .PD(n10609), 
            .CK(clk_c), .Q(r_t3[8]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i8.GSR = "DISABLED";
    LUT4 LED_3__I_0_i2_4_lut (.A(LED_3__N_135[1]), .B(n12), .C(cmd_ready), 
         .D(n68), .Z(LED_3__N_1[1])) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam LED_3__I_0_i2_4_lut.init = 16'h3afa;
    FD1P3IX r_t1_i1 (.D(value[1]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[1]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_120 (.A(LED_3__N_135[1]), .B(n66), .C(n53), .D(n14), 
         .Z(n68)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_120.init = 16'hdddc;
    LUT4 i1_4_lut_adj_121 (.A(cmd[7]), .B(n57), .C(n17898), .D(cmd[6]), 
         .Z(n66)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_121.init = 16'h0544;
    LUT4 adc_data_2_15__I_0_i3_3_lut (.A(n19313[2]), .B(n19314[2]), .C(LTC1865_en), 
         .Z(adc_data[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(96[19:56])
    defparam adc_data_2_15__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_122 (.A(cmd[2]), .B(cmd[0]), .Z(n53)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_122.init = 16'h2222;
    LUT4 i12940_then_2_lut (.A(n6206), .B(sw1_c), .Z(n19256)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12940_then_2_lut.init = 16'h8888;
    LUT4 i89_3_lut (.A(cmd[3]), .B(cmd[2]), .C(cmd[0]), .Z(n87)) /* synthesis lut_function=(A (B+(C))+!A !(B)) */ ;
    defparam i89_3_lut.init = 16'hb9b9;
    LUT4 i8508_2_lut (.A(LED_c_1), .B(n19260), .Z(LED_3__N_135[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(105[5] 118[8])
    defparam i8508_2_lut.init = 16'h8888;
    LUT4 cmd_1__bdd_4_lut_2_lut (.A(cmd[0]), .B(n14), .Z(n19038)) /* synthesis lut_function=((B)+!A) */ ;
    defparam cmd_1__bdd_4_lut_2_lut.init = 16'hdddd;
    LUT4 i4_4_lut (.A(n7), .B(n18907), .C(n18903), .D(n18888), .Z(n6738)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0020;
    FD1P3JX r_t1_i2 (.D(value[2]), .SP(clk_c_enable_537), .PD(n10344), 
            .CK(clk_c), .Q(r_t1[2]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i2.GSR = "DISABLED";
    FD1P3IX r_t3_i9 (.D(value[9]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[9]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i9.GSR = "DISABLED";
    FD1P3IX r_t1_i3 (.D(value[3]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[3]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i3.GSR = "DISABLED";
    PFUMX i12850 (.BLUT(n18654), .ALUT(n18653), .C0(cmd[1]), .Z(n52));
    LUT4 adc_data_2_15__I_0_i2_3_lut (.A(n19313[1]), .B(n19314[1]), .C(LTC1865_en), 
         .Z(adc_data[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(96[19:56])
    defparam adc_data_2_15__I_0_i2_3_lut.init = 16'hcaca;
    FD1P3IX r_t3_i10 (.D(value[10]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[10]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i10.GSR = "DISABLED";
    FD1P3JX r_t1_i4 (.D(value[4]), .SP(clk_c_enable_537), .PD(n10344), 
            .CK(clk_c), .Q(r_t1[4]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i4.GSR = "DISABLED";
    LUT4 i12940_else_2_lut (.A(n6136), .B(n6101), .C(seq_SM[0]), .Z(n19255)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i12940_else_2_lut.init = 16'h0707;
    FD1P3IX r_t4_i31 (.D(value[31]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[31]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i31.GSR = "DISABLED";
    LUT4 n18857_bdd_4_lut_13008 (.A(n18857), .B(cmd[3]), .C(cmd[1]), .D(cmd[2]), 
         .Z(n18922)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))) */ ;
    defparam n18857_bdd_4_lut_13008.init = 16'h80a0;
    FD1P3JX r_t1_i5 (.D(value[5]), .SP(clk_c_enable_537), .PD(n10344), 
            .CK(clk_c), .Q(r_t1[5]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i5.GSR = "DISABLED";
    FD1P3IX r_t3_i11 (.D(value[11]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[11]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i11.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(n18857), .B(n8676), .C(cmd[3]), .D(n18890), 
         .Z(n17478)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_3_lut_4_lut_4_lut.init = 16'ha888;
    BB DBUS_pad_2 (.I(r_data_out[2]), .T(next_state_5__N_971[0]), .B(DBUS[2]), 
       .O(DBUS_out_2));   // c:/users/user/desktop/qss013/qss013.v(93[8:12])
    BB DBUS_pad_3 (.I(r_data_out[3]), .T(next_state_5__N_971[0]), .B(DBUS[3]), 
       .O(DBUS_out_3));   // c:/users/user/desktop/qss013/qss013.v(93[8:12])
    BB DBUS_pad_4 (.I(r_data_out[4]), .T(next_state_5__N_971[0]), .B(DBUS[4]), 
       .O(DBUS_out_4));   // c:/users/user/desktop/qss013/qss013.v(93[8:12])
    FD1P3JX r_t1_i6 (.D(value[6]), .SP(clk_c_enable_537), .PD(n10344), 
            .CK(clk_c), .Q(r_t1[6]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i6.GSR = "DISABLED";
    FD1P3IX r_t3_i12 (.D(value[12]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[12]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i12.GSR = "DISABLED";
    FD1P3IX r_t3_i13 (.D(value[13]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[13]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i13.GSR = "DISABLED";
    FD1P3JX r_t1_i7 (.D(value[7]), .SP(clk_c_enable_537), .PD(n10344), 
            .CK(clk_c), .Q(r_t1[7]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i7.GSR = "DISABLED";
    BB DBUS_pad_1 (.I(r_data_out[1]), .T(next_state_5__N_971[0]), .B(DBUS[1]), 
       .O(DBUS_out_1));   // c:/users/user/desktop/qss013/qss013.v(93[8:12])
    FD1P3IX r_t3_i14 (.D(value[14]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[14]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i14.GSR = "DISABLED";
    LUT4 adc_data_2_15__I_0_i7_3_lut (.A(n19313[6]), .B(n19314[6]), .C(LTC1865_en), 
         .Z(adc_data[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(96[19:56])
    defparam adc_data_2_15__I_0_i7_3_lut.init = 16'hcaca;
    BB DBUS_pad_5 (.I(r_data_out[5]), .T(next_state_5__N_971[0]), .B(DBUS[5]), 
       .O(DBUS_out_5));   // c:/users/user/desktop/qss013/qss013.v(93[8:12])
    BB DBUS_pad_6 (.I(r_data_out[6]), .T(next_state_5__N_971[0]), .B(DBUS[6]), 
       .O(DBUS_out_6));   // c:/users/user/desktop/qss013/qss013.v(93[8:12])
    BB DBUS_pad_7 (.I(r_data_out[7]), .T(next_state_5__N_971[0]), .B(DBUS[7]), 
       .O(DBUS_out_7));   // c:/users/user/desktop/qss013/qss013.v(93[8:12])
    FD1P3JX r_t1_i8 (.D(value[8]), .SP(clk_c_enable_537), .PD(n10344), 
            .CK(clk_c), .Q(r_t1[8]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i8.GSR = "DISABLED";
    FD1P3IX r_t3_i15 (.D(value[15]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[15]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i15.GSR = "DISABLED";
    FD1P3IX r_t3_i16 (.D(value[16]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[16]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i16.GSR = "DISABLED";
    FD1P3IX r_t1_i9 (.D(value[9]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[9]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i9.GSR = "DISABLED";
    FD1P3IX r_t1_i10 (.D(value[10]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[10]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i10.GSR = "DISABLED";
    FD1P3IX r_t1_i11 (.D(value[11]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[11]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i11.GSR = "DISABLED";
    FD1P3IX r_t3_i17 (.D(value[17]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[17]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i17.GSR = "DISABLED";
    FD1P3IX r_t3_i18 (.D(value[18]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[18]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i18.GSR = "DISABLED";
    FD1P3IX r_t1_i12 (.D(value[12]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[12]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i12.GSR = "DISABLED";
    FD1P3IX r_t3_i19 (.D(value[19]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[19]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i19.GSR = "DISABLED";
    LUT4 i12741_2_lut (.A(integrator_1_en), .B(integrator_2_en), .Z(n18054)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(97[13:120])
    defparam i12741_2_lut.init = 16'heeee;
    FD1P3IX r_t1_i13 (.D(value[13]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[13]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i13.GSR = "DISABLED";
    FD1P3IX r_t1_i14 (.D(value[14]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[14]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i14.GSR = "DISABLED";
    FD1P3IX r_t1_i15 (.D(value[15]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[15]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i15.GSR = "DISABLED";
    FD1P3IX r_t1_i16 (.D(value[16]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[16]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i16.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_123 (.A(n17953), .B(n18907), .C(n4354), .D(n19250), 
         .Z(n17955)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_4_lut_adj_123.init = 16'haeaa;
    FD1P3IX r_t3_i20 (.D(value[20]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[20]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i20.GSR = "DISABLED";
    FD1P3AX integrator_4_en_144 (.D(integrator_4_en_N_465), .SP(clk_c_enable_268), 
            .CK(clk_c), .Q(integrator_4_en));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam integrator_4_en_144.GSR = "DISABLED";
    FD1P3IX r_t3_i21 (.D(value[21]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[21]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i21.GSR = "DISABLED";
    FD1P3IX r_t3_i22 (.D(value[22]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[22]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i22.GSR = "DISABLED";
    FD1P3IX r_t1_i17 (.D(value[17]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[17]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i17.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_124 (.A(n4354), .B(n6961), .C(n9388), .D(cmd_ready), 
         .Z(n17953)) /* synthesis lut_function=(A (B+!(D))+!A (B+(C+!(D)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_4_lut_adj_124.init = 16'hdcff;
    FD1P3AX integrator_3_en_143 (.D(integrator_3_en_N_461), .SP(clk_c_enable_279), 
            .CK(clk_c), .Q(integrator_3_en));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam integrator_3_en_143.GSR = "DISABLED";
    LUT4 i2231_4_lut (.A(n52), .B(n4354), .C(n10), .D(cmd[2]), .Z(n6961)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(120[9] 227[16])
    defparam i2231_4_lut.init = 16'hccc4;
    FD1P3IX r_t3_i23 (.D(value[23]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[23]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i23.GSR = "DISABLED";
    LUT4 i8431_3_lut_rep_208 (.A(adc1_cs_c), .B(r_SM_CS[0]), .C(o_tx_dv), 
         .Z(n18866)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i8431_3_lut_rep_208.init = 16'hecec;
    LUT4 i8274_2_lut_rep_230 (.A(cmd[7]), .B(cmd[6]), .Z(n18888)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8274_2_lut_rep_230.init = 16'heeee;
    LUT4 i1_2_lut_rep_183_3_lut_4_lut (.A(cmd[7]), .B(cmd[6]), .C(n18890), 
         .D(n18894), .Z(n18841)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_183_3_lut_4_lut.init = 16'h1000;
    LUT4 i4_4_lut_adj_125 (.A(cmd[1]), .B(cmd[4]), .C(cmd[3]), .D(n18888), 
         .Z(n10)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i4_4_lut_adj_125.init = 16'hfffb;
    FD1P3AX integrator_2_en_142 (.D(integrator_2_en_N_457), .SP(clk_c_enable_288), 
            .CK(clk_c), .Q(integrator_2_en));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam integrator_2_en_142.GSR = "DISABLED";
    FD1P3IX r_t1_i18 (.D(value[18]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[18]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i18.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_126 (.A(cmd[7]), .B(cmd[6]), .C(n52), .Z(n2)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_126.init = 16'hefef;
    LUT4 i1_3_lut_4_lut_adj_127 (.A(cmd[7]), .B(cmd[6]), .C(n52), .D(n19250), 
         .Z(n7_adj_1849)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_127.init = 16'hff10;
    LUT4 i1_2_lut_rep_185_3_lut_4_lut (.A(cmd[7]), .B(cmd[6]), .C(n8676), 
         .D(n18894), .Z(n18843)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_185_3_lut_4_lut.init = 16'h1000;
    PFUMX i5082 (.BLUT(n17515), .ALUT(n17532), .C0(n4354), .Z(n10317));
    LUT4 i1_3_lut_3_lut_4_lut (.A(cmd[1]), .B(cmd[0]), .C(n2), .D(cmd[3]), 
         .Z(n17532)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'h0080;
    PFUMX i5083 (.BLUT(n17530), .ALUT(n6852), .C0(n4354), .Z(n10315));
    FD1P3IX r_t3_i24 (.D(value[24]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[24]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i24.GSR = "DISABLED";
    FD1P3IX r_t3_i25 (.D(value[25]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[25]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i25.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_178_3_lut_4_lut (.A(n18888), .B(n18894), .C(n13564), 
         .D(n18890), .Z(n18836)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_rep_178_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cmd[1]), .B(cmd[0]), .C(n19260), .D(n9196), 
         .Z(clk_c_enable_761)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8f0f;
    FD1P3IX r_t3_i26 (.D(value[26]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[26]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i26.GSR = "DISABLED";
    LUT4 i3_4_lut (.A(n8739), .B(n18836), .C(n24), .D(n16780), .Z(n17689)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    FD1P3AX integrator_1_en_141 (.D(integrator_1_en_N_453), .SP(clk_c_enable_307), 
            .CK(clk_c), .Q(integrator_1_en));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam integrator_1_en_141.GSR = "DISABLED";
    FD1P3IX LTC1865_2_en_140 (.D(n17842), .SP(clk_c_enable_308), .CD(n10338), 
            .CK(clk_c), .Q(LTC1865_2_en));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam LTC1865_2_en_140.GSR = "DISABLED";
    FD1P3IX r_t1_i19 (.D(value[19]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[19]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i19.GSR = "DISABLED";
    FD1P3IX r_t1_i20 (.D(value[20]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[20]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i20.GSR = "DISABLED";
    FD1P3IX r_t1_i21 (.D(value[21]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[21]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i21.GSR = "DISABLED";
    FD1P3IX r_t1_i22 (.D(value[22]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[22]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i22.GSR = "DISABLED";
    LUT4 cp_I_1_3_lut (.A(cp2), .B(cp1), .C(integrator_1_en), .Z(cp_N_403)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(97[38:120])
    defparam cp_I_1_3_lut.init = 16'hcaca;
    FD1P3IX r_t3_i27 (.D(value[27]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[27]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i27.GSR = "DISABLED";
    LUT4 i5_2_lut_rep_176 (.A(n24), .B(n16780), .Z(n18834)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut_rep_176.init = 16'heeee;
    FD1P3IX r_t3_i28 (.D(value[28]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[28]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i28.GSR = "DISABLED";
    LUT4 i1_rep_175_3_lut (.A(n24), .B(n16780), .C(n17478), .Z(n18833)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_rep_175_3_lut.init = 16'hfefe;
    LUT4 i12748_2_lut_3_lut_4_lut (.A(cmd[1]), .B(cmd[0]), .C(n19260), 
         .D(n9196), .Z(n10578)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;
    defparam i12748_2_lut_3_lut_4_lut.init = 16'h070f;
    LUT4 i1_2_lut_rep_200_3_lut (.A(cmd[1]), .B(cmd[0]), .C(cmd[3]), .Z(n18858)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_200_3_lut.init = 16'h0808;
    FD1P3IX r_t3_i29 (.D(value[29]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[29]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i29.GSR = "DISABLED";
    LUT4 i5079_4_lut_4_lut (.A(cmd[5]), .B(cmd[4]), .C(cmd[6]), .D(cmd[2]), 
         .Z(n26)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C+(D))))) */ ;
    defparam i5079_4_lut_4_lut.init = 16'h1118;
    LUT4 cp_I_2_4_lut (.A(cp4), .B(cp3), .C(integrator_3_en), .D(integrator_4_en), 
         .Z(cp_N_404)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(97[63:119])
    defparam cp_I_2_4_lut.init = 16'hcac0;
    LUT4 i4_2_lut_rep_232 (.A(cmd[1]), .B(cmd[0]), .Z(n18890)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4_2_lut_rep_232.init = 16'h2222;
    LUT4 i12751_2_lut_3_lut_4_lut (.A(cmd[1]), .B(cmd[0]), .C(n19260), 
         .D(n9196), .Z(n10609)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C))) */ ;
    defparam i12751_2_lut_3_lut_4_lut.init = 16'h0d0f;
    FD1P3IX r_t1_i23 (.D(value[23]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[23]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i23.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(cmd[1]), .B(cmd[0]), .C(n9196), 
         .D(n19260), .Z(clk_c_enable_754)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h20ff;
    LUT4 i2_3_lut_4_lut_adj_128 (.A(cmd[1]), .B(cmd[0]), .C(n87), .D(n18894), 
         .Z(n57)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;
    defparam i2_3_lut_4_lut_adj_128.init = 16'hf200;
    LUT4 i2_4_lut_4_lut (.A(cmd[1]), .B(cmd[0]), .C(n18907), .D(n6817), 
         .Z(n9388)) /* synthesis lut_function=(!(A (B+!(C))+!A (D))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h2075;
    FD1P3IX r_t3_i30 (.D(value[30]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[30]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i30.GSR = "DISABLED";
    LUT4 i19_3_lut_4_lut (.A(cmd[0]), .B(cmd[2]), .C(n4354), .D(cmd[1]), 
         .Z(n8)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i19_3_lut_4_lut.init = 16'hefe0;
    PFUMX i13068 (.BLUT(n19255), .ALUT(n19256), .C0(seq_SM[1]), .Z(n19257));
    LUT4 i3_3_lut_4_lut (.A(cmd[3]), .B(cmd[2]), .C(n8), .D(cmd[0]), 
         .Z(n17842)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/user/desktop/qss013/qss013.v(120[9] 227[16])
    defparam i3_3_lut_4_lut.init = 16'h2000;
    FD1P3IX r_t3_i31 (.D(value[31]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[31]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i31.GSR = "DISABLED";
    LUT4 adc_data_2_15__I_0_i6_3_lut (.A(n19313[5]), .B(n19314[5]), .C(LTC1865_en), 
         .Z(adc_data[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(96[19:56])
    defparam adc_data_2_15__I_0_i6_3_lut.init = 16'hcaca;
    FD1P3IX r_t4_i1 (.D(value[1]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[1]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_129 (.A(cmd[0]), .B(cmd[2]), .C(cmd[3]), .Z(n6852)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(120[9] 227[16])
    defparam i1_2_lut_3_lut_adj_129.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_130 (.A(cmd[2]), .B(cmd[3]), .C(cmd[0]), 
         .D(cmd[1]), .Z(n17530)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_2_lut_3_lut_4_lut_adj_130.init = 16'h0800;
    FD1P3IX r_t4_i2 (.D(value[2]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[2]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i2.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_131 (.A(cmd[2]), .B(cmd[3]), .C(cmd[0]), .Z(n17457)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_2_lut_3_lut_adj_131.init = 16'h8080;
    FD1P3AX ch_150 (.D(n17839), .SP(clk_c_enable_341), .CK(clk_c), .Q(channel_sel_adj_1856[6]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam ch_150.GSR = "DISABLED";
    FD1P3IX r_t1_i24 (.D(value[24]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[24]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i24.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_236 (.A(cmd[5]), .B(cmd[4]), .Z(n18894)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_236.init = 16'h8888;
    LUT4 i5_2_lut_rep_199_3_lut_4_lut (.A(cmd[5]), .B(cmd[4]), .C(cmd[6]), 
         .D(cmd[7]), .Z(n18857)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i5_2_lut_rep_199_3_lut_4_lut.init = 16'h0008;
    FD1P3JX r_t4_i3 (.D(value[3]), .SP(clk_c_enable_761), .PD(n10578), 
            .CK(clk_c), .Q(r_t4[3]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i3.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_132 (.A(cmd[5]), .B(cmd[4]), .C(cmd[1]), 
         .D(cmd[6]), .Z(n9194)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_132.init = 16'h0008;
    LUT4 i2_2_lut_rep_198_3_lut (.A(cmd[5]), .B(cmd[4]), .C(cmd[6]), .Z(n18856)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_2_lut_rep_198_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_adj_133 (.A(cmd[6]), .B(cmd[1]), .C(cmd[2]), .Z(n17515)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_133.init = 16'h2020;
    FD1P3IX r_t1_i25 (.D(value[25]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[25]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i25.GSR = "DISABLED";
    FD1P3IX r_t4_i4 (.D(value[4]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[4]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i4.GSR = "DISABLED";
    FD1P3IX r_t4_i5 (.D(value[5]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[5]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i5.GSR = "DISABLED";
    FD1P3IX r_t1_i26 (.D(value[26]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[26]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i26.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_134 (.A(cmd[6]), .B(cmd[1]), .C(cmd_ready), 
         .D(cmd[3]), .Z(n18001)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_134.init = 16'h0020;
    FD1P3IX r_t1_i27 (.D(value[27]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[27]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i27.GSR = "DISABLED";
    FD1P3JX r_t4_i6 (.D(value[6]), .SP(clk_c_enable_761), .PD(n10578), 
            .CK(clk_c), .Q(r_t4[6]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i6.GSR = "DISABLED";
    FD1P3JX r_t4_i7 (.D(value[7]), .SP(clk_c_enable_761), .PD(n10578), 
            .CK(clk_c), .Q(r_t4[7]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i7.GSR = "DISABLED";
    LUT4 i12583_2_lut_rep_197_4_lut (.A(adc1_cs_c), .B(r_SM_CS[0]), .C(o_tx_dv), 
         .D(r_SM_CS[1]), .Z(clk_c_enable_766)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!B))) */ ;
    defparam i12583_2_lut_rep_197_4_lut.init = 16'h00ec;
    FD1P3IX r_t4_i8 (.D(value[8]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[8]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i8.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_135 (.A(cmd[7]), .B(n18), .C(cmd[1]), .D(n6), 
         .Z(n24)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_135.init = 16'h4544;
    FD1S3AX led_out_i4 (.D(LED_3__N_1[3]), .CK(clk_c), .Q(LED_c_3)) /* synthesis lse_init_val=0 */ ;   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam led_out_i4.GSR = "DISABLED";
    FD1P3IX r_t1_i28 (.D(value[28]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[28]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i28.GSR = "DISABLED";
    FD1P3IX r_t1_i29 (.D(value[29]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[29]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i29.GSR = "DISABLED";
    FD1S3AX led_out_i3 (.D(LED_3__N_1[2]), .CK(clk_c), .Q(LED_c_2)) /* synthesis lse_init_val=0 */ ;   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam led_out_i3.GSR = "DISABLED";
    FD1S3AX led_out_i2 (.D(LED_3__N_1[1]), .CK(clk_c), .Q(LED_c_1)) /* synthesis lse_init_val=0 */ ;   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam led_out_i2.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_136 (.A(cmd[3]), .B(n17), .Z(n18)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_136.init = 16'h4444;
    LUT4 i12756_4_lut (.A(n19260), .B(n10317), .C(n17479), .D(cmd_ready), 
         .Z(clk_c_enable_268)) /* synthesis lut_function=((B (C (D)))+!A) */ ;
    defparam i12756_4_lut.init = 16'hd555;
    LUT4 i2_4_lut (.A(n18858), .B(n17983), .C(n18843), .D(n18834), .Z(integrator_4_en_N_465)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i17_4_lut (.A(cmd[0]), .B(n18856), .C(cmd[3]), .D(n26), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i17_4_lut.init = 16'hc5c0;
    LUT4 i1_3_lut (.A(n17478), .B(n24), .C(n16780), .Z(n17479)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i12508_2_lut_3_lut_4_lut (.A(adc1_cs_c), .B(r_SM_CS[0]), .C(o_tx_dv), 
         .D(r_SM_CS[1]), .Z(n13261)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i12508_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i5080_4_lut_then_3_lut (.A(cmd[0]), .B(n4354), .C(cmd[3]), .Z(n18925)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i5080_4_lut_then_3_lut.init = 16'hbfbf;
    FD1S3AX r_mode_i1 (.D(r_mode_1__N_5[1]), .CK(clk_c), .Q(r_mode[1]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_mode_i1.GSR = "DISABLED";
    FD1P3IX r_t4_i9 (.D(value[9]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[9]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i9.GSR = "DISABLED";
    FD1P3IX r_t1_i30 (.D(value[30]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[30]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i30.GSR = "DISABLED";
    FD1P3IX r_t1_i31 (.D(value[31]), .SP(clk_c_enable_537), .CD(n10344), 
            .CK(clk_c), .Q(r_t1[31]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t1_i31.GSR = "DISABLED";
    FD1P3IX r_t4_i10 (.D(value[10]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[10]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i10.GSR = "DISABLED";
    FD1P3IX r_t2_i1 (.D(value[1]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[1]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i1.GSR = "DISABLED";
    FD1P3JX r_t2_i2 (.D(value[2]), .SP(clk_c_enable_798), .PD(n10640), 
            .CK(clk_c), .Q(r_t2[2]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i2.GSR = "DISABLED";
    FD1P3IX r_t4_i11 (.D(value[11]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[11]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i11.GSR = "DISABLED";
    FD1P3IX r_t4_i12 (.D(value[12]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[12]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i12.GSR = "DISABLED";
    FD1P3IX r_t2_i3 (.D(value[3]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[3]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i3.GSR = "DISABLED";
    FD1P3IX r_t2_i4 (.D(value[4]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[4]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i4.GSR = "DISABLED";
    FD1P3IX r_t2_i5 (.D(value[5]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[5]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i5.GSR = "DISABLED";
    FD1P3JX r_t2_i6 (.D(value[6]), .SP(clk_c_enable_798), .PD(n10640), 
            .CK(clk_c), .Q(r_t2[6]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i6.GSR = "DISABLED";
    FD1P3JX r_t2_i7 (.D(value[7]), .SP(clk_c_enable_798), .PD(n10640), 
            .CK(clk_c), .Q(r_t2[7]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i7.GSR = "DISABLED";
    FD1P3IX r_t4_i13 (.D(value[13]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[13]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i13.GSR = "DISABLED";
    BB DBUS_pad_0 (.I(r_data_out[0]), .T(next_state_5__N_971[0]), .B(DBUS[0]), 
       .O(DBUS_out_0));   // c:/users/user/desktop/qss013/qss013.v(93[8:12])
    OB wr_n_pad (.I(wr_n_c_0), .O(wr_n));   // c:/users/user/desktop/qss013/qss013.v(6[9:13])
    OB rd_n_pad (.I(rd_n_c), .O(rd_n));   // c:/users/user/desktop/qss013/qss013.v(7[12:16])
    OB sdo0_pad (.I(sdo0_c), .O(sdo0));   // c:/users/user/desktop/qss013/qss013.v(11[9:13])
    OB sck0_pad (.I(adc1_sck_c), .O(sck0));   // c:/users/user/desktop/qss013/qss013.v(13[9:13])
    OB scs0_pad (.I(adc1_cs_c), .O(scs0));   // c:/users/user/desktop/qss013/qss013.v(14[9:13])
    OB sdo1_pad (.I(sdo1_c), .O(sdo1));   // c:/users/user/desktop/qss013/qss013.v(16[9:13])
    OB sck1_pad (.I(adc2_sck_c), .O(sck1));   // c:/users/user/desktop/qss013/qss013.v(18[9:13])
    OB scs1_pad (.I(adc2_cs_c), .O(scs1));   // c:/users/user/desktop/qss013/qss013.v(19[9:13])
    OB adc1_sck_pad (.I(adc1_sck_c), .O(adc1_sck));   // c:/users/user/desktop/qss013/qss013.v(23[12:20])
    OB adc1_cs_pad (.I(adc1_cs_c), .O(adc1_cs));   // c:/users/user/desktop/qss013/qss013.v(24[12:19])
    OB adc2_sck_pad (.I(adc2_sck_c), .O(adc2_sck));   // c:/users/user/desktop/qss013/qss013.v(25[12:20])
    OB adc2_cs_pad (.I(adc2_cs_c), .O(adc2_cs));   // c:/users/user/desktop/qss013/qss013.v(26[12:19])
    OB sw1_pad (.I(sw1_c), .O(sw1));   // c:/users/user/desktop/qss013/qss013.v(28[12:15])
    OB sw2_pad (.I(sw2_c), .O(sw2));   // c:/users/user/desktop/qss013/qss013.v(29[12:15])
    OB sw3_pad (.I(sw3_c), .O(sw3));   // c:/users/user/desktop/qss013/qss013.v(30[12:15])
    OB sw4_pad (.I(sw4_c), .O(sw4));   // c:/users/user/desktop/qss013/qss013.v(31[12:15])
    OB cp_pad (.I(cp_check_c), .O(cp));   // c:/users/user/desktop/qss013/qss013.v(32[12:14])
    OB cp_check_pad (.I(cp_check_c), .O(cp_check));   // c:/users/user/desktop/qss013/qss013.v(33[12:20])
    OB LED_pad_3 (.I(LED_c_3), .O(LED[3]));   // c:/users/user/desktop/qss013/qss013.v(35[18:21])
    OB LED_pad_2 (.I(LED_c_2), .O(LED[2]));   // c:/users/user/desktop/qss013/qss013.v(35[18:21])
    OB LED_pad_1 (.I(LED_c_1), .O(LED[1]));   // c:/users/user/desktop/qss013/qss013.v(35[18:21])
    OB LED_pad_0 (.I(LED_c_0), .O(LED[0]));   // c:/users/user/desktop/qss013/qss013.v(35[18:21])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    IB next_state_5__N_802_pad_0 (.I(txe_n), .O(next_state_5__N_802_c_0));   // c:/users/user/desktop/qss013/qss013.v(4[8:13])
    IB rxf_n_pad (.I(rxf_n), .O(rxf_n_c));   // c:/users/user/desktop/qss013/qss013.v(5[11:16])
    IB sdi0_pad (.I(sdi0), .O(sdi0_c));   // c:/users/user/desktop/qss013/qss013.v(12[8:12])
    IB sdi1_pad (.I(sdi1), .O(sdi1_c));   // c:/users/user/desktop/qss013/qss013.v(17[8:12])
    PFUMX i12934 (.BLUT(n18924), .ALUT(n18925), .C0(cmd[2]), .Z(n9201));
    LUT4 i12502_4_lut (.A(n19260), .B(n17660), .C(n18833), .D(n17933), 
         .Z(clk_c_enable_279)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam i12502_4_lut.init = 16'h55d5;
    LUT4 i1_3_lut_adj_137 (.A(n7_adj_1849), .B(cmd_ready), .C(cmd[3]), 
         .Z(n17933)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_3_lut_adj_137.init = 16'hfbfb;
    LUT4 i8086_2_lut_rep_245 (.A(cmd[1]), .B(cmd[0]), .Z(n18903)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8086_2_lut_rep_245.init = 16'heeee;
    LUT4 i12687_2_lut_3_lut_4_lut (.A(cmd[1]), .B(cmd[0]), .C(n19260), 
         .D(n9196), .Z(n10344)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;
    defparam i12687_2_lut_3_lut_4_lut.init = 16'h0e0f;
    LUT4 i1_4_lut_adj_138 (.A(n17660), .B(n18833), .C(n7_adj_1849), .D(n18001), 
         .Z(integrator_3_en_N_461)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_138.init = 16'h0800;
    LUT4 i3_4_lut_adj_139 (.A(n18857), .B(cmd[2]), .C(cmd[3]), .D(cmd[1]), 
         .Z(n16780)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_139.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_140 (.A(cmd[1]), .B(cmd[0]), .C(n9196), 
         .D(n19260), .Z(clk_c_enable_537)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_140.init = 16'h10ff;
    PFUMX i13066 (.BLUT(n19251), .ALUT(n19252), .C0(cmd[2]), .Z(n8739));
    LUT4 i12062_3_lut (.A(cmd[1]), .B(n4354), .C(cmd[6]), .Z(n17660)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i12062_3_lut.init = 16'hc8c8;
    LUT4 i2112_2_lut_rep_249 (.A(cmd[3]), .B(cmd[2]), .Z(n18907)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(120[9] 227[16])
    defparam i2112_2_lut_rep_249.init = 16'heeee;
    LUT4 i6_4_lut_4_lut_4_lut (.A(cmd[3]), .B(cmd[2]), .C(cmd[0]), .D(cmd[1]), 
         .Z(n8676)) /* synthesis lut_function=(A (C (D))+!A !(B+!(D))) */ ;   // c:/users/user/desktop/qss013/qss013.v(120[9] 227[16])
    defparam i6_4_lut_4_lut_4_lut.init = 16'hb100;
    LUT4 mux_1163_i1_3_lut_4_lut_3_lut (.A(cmd[3]), .B(cmd[2]), .C(cmd[0]), 
         .Z(n4458)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(120[9] 227[16])
    defparam mux_1163_i1_3_lut_4_lut_3_lut.init = 16'h2121;
    LUT4 i8278_2_lut_rep_250 (.A(cmd[5]), .B(cmd[4]), .Z(n18908)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8278_2_lut_rep_250.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_adj_141 (.A(cmd[5]), .B(cmd[4]), .C(cmd_ready), 
         .Z(n7)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut_adj_141.init = 16'h1010;
    LUT4 i8085_2_lut_rep_252 (.A(r_mode[0]), .B(n19260), .Z(n18910)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(105[5] 118[8])
    defparam i8085_2_lut_rep_252.init = 16'h8888;
    LUT4 mux_1869_i1_3_lut_4_lut (.A(r_mode[0]), .B(n19260), .C(n6738), 
         .D(cmd[0]), .Z(r_mode_1__N_5[0])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(105[5] 118[8])
    defparam mux_1869_i1_3_lut_4_lut.init = 16'h08f8;
    LUT4 i1_4_lut_adj_142 (.A(n6858), .B(n52), .C(n18007), .D(cmd[6]), 
         .Z(n17)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_142.init = 16'h50dc;
    LUT4 i1_4_lut_adj_143 (.A(cmd[5]), .B(cmd[0]), .C(cmd[6]), .D(cmd[1]), 
         .Z(n18007)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_143.init = 16'h5044;
    LUT4 i2144_2_lut (.A(cmd[4]), .B(cmd[2]), .Z(n6858)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(120[9] 227[16])
    defparam i2144_2_lut.init = 16'heeee;
    LUT4 i12754_2_lut_3_lut_4_lut (.A(cmd[0]), .B(cmd[1]), .C(n19260), 
         .D(n9196), .Z(n10640)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(151[13:33])
    defparam i12754_2_lut_3_lut_4_lut.init = 16'h0d0f;
    LUT4 adc_data_2_15__I_0_i8_3_lut (.A(n19313[7]), .B(n19314[7]), .C(LTC1865_en), 
         .Z(adc_data[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(96[19:56])
    defparam adc_data_2_15__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_144 (.A(cmd[0]), .B(cmd[1]), .C(n19260), 
         .D(n9196), .Z(clk_c_enable_798)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(151[13:33])
    defparam i1_2_lut_3_lut_4_lut_adj_144.init = 16'h2f0f;
    LUT4 i12628_4_lut (.A(n19260), .B(n4354), .C(n18833), .D(n17939), 
         .Z(clk_c_enable_288)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam i12628_4_lut.init = 16'h5575;
    LUT4 i1_4_lut_adj_145 (.A(n6858), .B(cmd_ready), .C(n17457), .D(cmd[1]), 
         .Z(n17939)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_145.init = 16'h3fbb;
    LUT4 i1_4_lut_adj_146 (.A(n17457), .B(n17991), .C(cmd[1]), .D(n17479), 
         .Z(integrator_2_en_N_457)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_4_lut_adj_146.init = 16'h8000;
    LUT4 i1_2_lut_adj_147 (.A(n4354), .B(cmd_ready), .Z(n17991)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_147.init = 16'h4444;
    LUT4 cmd_5__bdd_2_lut_12853 (.A(cmd[5]), .B(cmd[4]), .Z(n18653)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam cmd_5__bdd_2_lut_12853.init = 16'h1111;
    LUT4 i8485_2_lut (.A(cmd[3]), .B(cmd[2]), .Z(n13564)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i8485_2_lut.init = 16'h6666;
    LUT4 i12680_4_lut (.A(n19260), .B(n10315), .C(n17479), .D(cmd_ready), 
         .Z(clk_c_enable_307)) /* synthesis lut_function=((B (C (D)))+!A) */ ;
    defparam i12680_4_lut.init = 16'hd555;
    LUT4 i2_4_lut_adj_148 (.A(n16780), .B(n18835), .C(n4), .D(n17457), 
         .Z(integrator_1_en_N_453)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i2_4_lut_adj_148.init = 16'hc800;
    LUT4 i1_4_lut_adj_149 (.A(n18857), .B(n24), .C(n18890), .D(n8676), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_4_lut_adj_149.init = 16'heeec;
    LUT4 i5_4_lut (.A(n18888), .B(n7_adj_1838), .C(n18875), .D(cmd[4]), 
         .Z(n9196)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i5_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_adj_150 (.A(cmd[5]), .B(cmd_ready), .Z(n7_adj_1838)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_150.init = 16'h4444;
    LUT4 i1_4_lut_adj_151 (.A(cmd[7]), .B(n17), .C(n9194), .D(cmd[3]), 
         .Z(n4354)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_151.init = 16'h5044;
    LUT4 cmd_5__bdd_4_lut_12854 (.A(cmd[5]), .B(cmd[2]), .C(cmd[4]), .D(cmd[0]), 
         .Z(n18654)) /* synthesis lut_function=(A (C (D))+!A !((C+!(D))+!B)) */ ;
    defparam cmd_5__bdd_4_lut_12854.init = 16'ha400;
    LUT4 LED_3__I_0_i1_4_lut (.A(LED_3__N_135[0]), .B(n12), .C(cmd_ready), 
         .D(n61), .Z(LED_3__N_1[0])) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam LED_3__I_0_i1_4_lut.init = 16'h3afa;
    LUT4 i1_4_lut_adj_152 (.A(LED_3__N_135[0]), .B(n59_adj_1841), .C(cmd[0]), 
         .D(n14), .Z(n61)) /* synthesis lut_function=(A (B)+!A (B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_152.init = 16'hddcd;
    LUT4 i1_4_lut_adj_153 (.A(cmd[7]), .B(n50_adj_1840), .C(n17898), .D(cmd[6]), 
         .Z(n59_adj_1841)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_153.init = 16'h0544;
    LUT4 i2_4_lut_adj_154 (.A(n18908), .B(cmd[3]), .C(cmd[2]), .D(n18903), 
         .Z(n17898)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_154.init = 16'hfeee;
    LUT4 i8083_2_lut (.A(LED_c_0), .B(n19260), .Z(LED_3__N_135[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/user/desktop/qss013/qss013.v(105[5] 118[8])
    defparam i8083_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_155 (.A(cmd[4]), .B(cmd[6]), .C(cmd[7]), .D(cmd[5]), 
         .Z(n14)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut_adj_155.init = 16'hfdff;
    LUT4 i12777_2_lut_4_lut (.A(n9201), .B(n18833), .C(cmd_ready), .D(n19260), 
         .Z(clk_c_enable_308)) /* synthesis lut_function=(!(A (D)+!A !(B (C+!(D))+!B !(D)))) */ ;
    defparam i12777_2_lut_4_lut.init = 16'h40ff;
    VLO i1 (.Z(GND_net));
    FD1P3JX r_t2_i8 (.D(value[8]), .SP(clk_c_enable_798), .PD(n10640), 
            .CK(clk_c), .Q(r_t2[8]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i8.GSR = "DISABLED";
    FD1P3IX r_t4_i14 (.D(value[14]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[14]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i14.GSR = "DISABLED";
    FD1P3IX r_t2_i9 (.D(value[9]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[9]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i9.GSR = "DISABLED";
    LUT4 i12738_4_lut (.A(n17971), .B(n18922), .C(n24), .D(n16780), 
         .Z(clk_c_enable_341)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam i12738_4_lut.init = 16'h5554;
    FD1P3IX r_t2_i10 (.D(value[10]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[10]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i10.GSR = "DISABLED";
    FD1P3IX r_t4_i15 (.D(value[15]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[15]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i15.GSR = "DISABLED";
    FD1P3JX r_t2_i11 (.D(value[11]), .SP(clk_c_enable_798), .PD(n10640), 
            .CK(clk_c), .Q(r_t2[11]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i11.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_156 (.A(n19250), .B(n17969), .C(n55), .D(n4354), 
         .Z(n17971)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_4_lut_adj_156.init = 16'hfcec;
    LUT4 i1_4_lut_adj_157 (.A(n9388), .B(cmd_ready), .C(cmd[0]), .D(n4354), 
         .Z(n17969)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C+!(D))))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_4_lut_adj_157.init = 16'h3fbb;
    LUT4 i1_2_lut_adj_158 (.A(cmd[3]), .B(cmd[2]), .Z(n55)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i1_2_lut_adj_158.init = 16'hdddd;
    LUT4 i2_3_lut (.A(n4354), .B(n4458), .C(cmd[1]), .Z(n17839)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(120[9] 227[16])
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i5080_4_lut_else_3_lut (.A(cmd[0]), .B(n4354), .C(cmd[3]), .D(cmd[1]), 
         .Z(n18924)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(B+!(C (D))))) */ ;   // c:/users/user/desktop/qss013/qss013.v(119[5] 228[8])
    defparam i5080_4_lut_else_3_lut.init = 16'h4f7f;
    FD1P3IX r_t2_i12 (.D(value[12]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[12]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i12.GSR = "DISABLED";
    FD1P3IX r_t4_i16 (.D(value[16]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[16]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i16.GSR = "DISABLED";
    GSR GSR_INST (.GSR(n19260));
    FD1P3IX r_t2_i13 (.D(value[13]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[13]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i13.GSR = "DISABLED";
    FD1P3IX r_t4_i0 (.D(value[0]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[0]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i0.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_159 (.A(r_SM_CS[0]), .B(r_SM_CS[1]), .C(o_tx_dv), 
         .D(adc1_cs_c), .Z(o_SPI_CS_n_N_675)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(126[7] 176[14])
    defparam i2_4_lut_adj_159.init = 16'hefee;
    FD1P3IX r_t4_i17 (.D(value[17]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[17]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i17.GSR = "DISABLED";
    FD1P3IX r_t2_i14 (.D(value[14]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[14]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i14.GSR = "DISABLED";
    FD1P3IX r_t2_i15 (.D(value[15]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[15]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i15.GSR = "DISABLED";
    FD1P3IX r_t4_i18 (.D(value[18]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[18]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i18.GSR = "DISABLED";
    FD1P3IX r_t2_i16 (.D(value[16]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[16]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i16.GSR = "DISABLED";
    FD1P3IX r_t2_i17 (.D(value[17]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[17]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i17.GSR = "DISABLED";
    PFUMX cp_I_0 (.BLUT(cp_N_404), .ALUT(cp_N_403), .C0(n18054), .Z(cp_check_c));
    FD1P3IX r_t2_i18 (.D(value[18]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[18]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i18.GSR = "DISABLED";
    FD1P3IX r_t2_i19 (.D(value[19]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[19]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i19.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_160 (.A(r_SM_CS_adj_2194[0]), .B(r_SM_CS_adj_2194[1]), 
         .C(o_tx_dv_adj_1834), .D(adc2_cs_c), .Z(o_SPI_CS_n_N_675_adj_1847)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(126[7] 176[14])
    defparam i2_4_lut_adj_160.init = 16'hefee;
    FD1P3IX r_t4_i19 (.D(value[19]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[19]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i19.GSR = "DISABLED";
    FD1P3IX r_t2_i20 (.D(value[20]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[20]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i20.GSR = "DISABLED";
    FD1P3IX r_t3_i0 (.D(value[0]), .SP(clk_c_enable_754), .CD(n10609), 
            .CK(clk_c), .Q(r_t3[0]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t3_i0.GSR = "DISABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 m1_lut (.Z(n19259)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    \ltc1865_controller(SPI_NEXT_VALID_NUM=250,SCK_HALF_PERIOD_CLK=2)  adc2 (.clk_c(clk_c), 
            .\channel_sel[6] (channel_sel_adj_1856[6]), .\spi_sm[0] (spi_sm_adj_1854[0]), 
            .n18885(n18885), .n19260(n19260), .o_tx_dv(o_tx_dv_adj_1834), 
            .n17(n17_adj_1844), .GND_net(GND_net), .r_SM_CS({r_SM_CS_adj_2194}), 
            .adc2_cs_c(adc2_cs_c), .o_SPI_CS_n_N_675(o_SPI_CS_n_N_675_adj_1847), 
            .adc_data_2({n19313}), .sdi1_c(sdi1_c), .rx_dv_2(rx_dv_2), 
            .clk_c_enable_461(clk_c_enable_461), .adc2_sck_c(adc2_sck_c), 
            .n19259(n19259), .sdo1_c(sdo1_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(268[3] 286[2])
    \ltc1865_controller(SPI_NEXT_VALID_NUM=250,SCK_HALF_PERIOD_CLK=2)_U5  adc1 (.\spi_sm[0] (spi_sm[0]), 
            .clk_c(clk_c), .n18885(n18885), .n19260(n19260), .o_tx_dv(o_tx_dv), 
            .GND_net(GND_net), .\channel_sel[6] (channel_sel_adj_1856[6]), 
            .n17(n17_adj_1848), .r_SM_CS({r_SM_CS}), .adc1_cs_c(adc1_cs_c), 
            .o_SPI_CS_n_N_675(o_SPI_CS_n_N_675), .n18866(n18866), .clk_c_enable_766(clk_c_enable_766), 
            .n13261(n13261), .adc_data_1({n19314}), .sdi0_c(sdi0_c), .adc1_sck_c(adc1_sck_c), 
            .rx_dv_1(rx_dv_1), .clk_c_enable_461(clk_c_enable_461), .n19259(n19259), 
            .sdo0_c(sdo0_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(244[3] 262[2])
    LUT4 adc_data_2_15__I_0_i1_3_lut (.A(n19313[0]), .B(n19314[0]), .C(LTC1865_en), 
         .Z(adc_data[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/desktop/qss013/qss013.v(96[19:56])
    defparam adc_data_2_15__I_0_i1_3_lut.init = 16'hcaca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    \rstn_gen(RST_CNT=50000000)  rst (.rst_n(rst_n), .clk_c(clk_c), .n19259(n19259), 
            .n19260(n19260), .n17955(n17955), .n17959(n17959), .n24(n24), 
            .clk_c_enable_26(clk_c_enable_26), .GND_net(GND_net), .clk_c_enable_451(clk_c_enable_451), 
            .clk_c_enable_461(clk_c_enable_461)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(234[3] 238[2])
    integrator_seq integrator_4 (.n18918(n18918), .n18865(n18865), .o_sw_N_1360({o_sw_N_1360}), 
            .GND_net(GND_net), .T1({T1}), .clk_c(clk_c), .n18861(n18861), 
            .\seq_SM[1] (seq_SM_adj_2094[1]), .T3({T3}), .r_mode({r_mode_adj_1873}), 
            .sw4_c(sw4_c), .clk_c_enable_635(clk_c_enable_635), .o_sw_N_1396({o_sw_N_1396}), 
            .n18917(n18917), .integrator_4_en(integrator_4_en), .n19260(n19260), 
            .cp4(cp4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(357[16] 369[2])
    FD1P3IX r_t2_i0 (.D(value[0]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[0]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i0.GSR = "DISABLED";
    FD1P3IX r_t4_i20 (.D(value[20]), .SP(clk_c_enable_761), .CD(n10578), 
            .CK(clk_c), .Q(r_t4[20]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t4_i20.GSR = "DISABLED";
    FD1P3IX r_t2_i21 (.D(value[21]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[21]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i21.GSR = "DISABLED";
    FD1P3IX r_t2_i22 (.D(value[22]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[22]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i22.GSR = "DISABLED";
    ft232h_asynFIFO_r5bytes ft232h_r5bytes (.rd_n_c(rd_n_c), .cmd({cmd}), 
            .clk_c(clk_c), .n18885(n18885), .value({value}), .n19038(n19038), 
            .n12(n12), .cmd_ready(cmd_ready), .n19260(n19260), .n18833(n18833), 
            .n9201(n9201), .n10338(n10338), .n17689(n17689), .n4354(n4354), 
            .LTC1865_en_N_439(LTC1865_en_N_439), .n9388(n9388), .n6817(n6817), 
            .n18907(n18907), .n14(n14), .rxf_n_c(rxf_n_c), .\next_state_5__N_971[0] (next_state_5__N_971[0]), 
            .DBUS_out_0(DBUS_out_0), .clk_c_enable_461(clk_c_enable_461), 
            .DBUS_out_1(DBUS_out_1), .DBUS_out_2(DBUS_out_2), .DBUS_out_3(DBUS_out_3), 
            .DBUS_out_4(DBUS_out_4), .DBUS_out_5(DBUS_out_5), .DBUS_out_6(DBUS_out_6), 
            .DBUS_out_7(DBUS_out_7)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(299[25] 313[2])
    FD1P3IX r_t2_i23 (.D(value[23]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[23]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i23.GSR = "DISABLED";
    FD1P3IX r_t2_i24 (.D(value[24]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[24]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i24.GSR = "DISABLED";
    integrator_seq_U2 integrator_3 (.clk_c(clk_c), .clk_c_enable_807(clk_c_enable_807), 
            .n18916(n18916), .n18865(n18865), .r_mode({r_mode_adj_1873}), 
            .\seq_SM[1] (seq_SM_adj_1991[1]), .n18859(n18859), .GND_net(GND_net), 
            .cp3(cp3), .T3({T3}), .sw3_c(sw3_c), .clk_c_enable_763(clk_c_enable_763), 
            .n18904(n18904), .n18912(n18912), .integrator_3_en(integrator_3_en), 
            .n19260(n19260), .o_sw_N_1360({o_sw_N_1360}), .T1({T1}), .o_sw_N_1396({o_sw_N_1396})) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(343[16] 355[2])
    ft232h_asynFIFO_w ft232h_w (.wr_n_c_0(wr_n_c_0), .r_data_out({r_data_out}), 
            .clk_c(clk_c), .next_state_5__N_802_c_0(next_state_5__N_802_c_0), 
            .rx_dv_2(rx_dv_2), .rx_dv_1(rx_dv_1), .LTC1865_en(LTC1865_en), 
            .\adc_data_2[11] (n19313[11]), .\adc_data_1[11] (n19314[11]), 
            .\adc_data_2[10] (n19313[10]), .\adc_data_1[10] (n19314[10]), 
            .\adc_data_2[14] (n19313[14]), .\adc_data_1[14] (n19314[14]), 
            .\adc_data_2[9] (n19313[9]), .\adc_data_1[9] (n19314[9]), .\adc_data_2[12] (n19313[12]), 
            .\adc_data_1[12] (n19314[12]), .\adc_data[0] (adc_data[0]), 
            .\spi_sm[0] (spi_sm[0]), .n17(n17_adj_1848), .\spi_sm[0]_adj_3 (spi_sm_adj_1854[0]), 
            .LTC1865_2_en(LTC1865_2_en), .n17_adj_4(n17_adj_1844), .\adc_data_2[15] (n19313[15]), 
            .\adc_data_1[15] (n19314[15]), .\adc_data[6] (adc_data[6]), 
            .\adc_data_2[13] (n19313[13]), .\adc_data_1[13] (n19314[13]), 
            .\adc_data[1] (adc_data[1]), .\adc_data[2] (adc_data[2]), .\adc_data[3] (adc_data[3]), 
            .\adc_data[4] (adc_data[4]), .\adc_data_2[8] (n19313[8]), .\adc_data_1[8] (n19314[8]), 
            .\adc_data[7] (adc_data[7]), .\adc_data[5] (adc_data[5])) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(288[19] 297[2])
    FD1P3IX r_t2_i25 (.D(value[25]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[25]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i25.GSR = "DISABLED";
    FD1P3IX r_t2_i26 (.D(value[26]), .SP(clk_c_enable_798), .CD(n10640), 
            .CK(clk_c), .Q(r_t2[26]));   // c:/users/user/desktop/qss013/qss013.v(104[7] 229[4])
    defparam r_t2_i26.GSR = "DISABLED";
    integrator_seq_U4 integrator_1 (.T3({T3}), .GND_net(GND_net), .clk_c(clk_c), 
            .clk_c_enable_762(clk_c_enable_762), .n6136(n6136), .n6101(n6101), 
            .T1({T1}), .clk_c_enable_461(clk_c_enable_461), .r_t1({r_t1}), 
            .r_t2({r_t2}), .o_sw_N_1396({o_sw_N_1396}), .n6206(n6206), 
            .r_mode({r_mode_adj_1873}), .n18910(n18910), .r_t3({r_t3}), 
            .r_t4({r_t4}), .\seq_SM[1] (seq_SM[1]), .\seq_SM[0] (seq_SM[0]), 
            .n18887(n18887), .n18848(n18848), .n17557(n17557), .clk_c_enable_339(clk_c_enable_339), 
            .n18886(n18886), .integrator_1_en(integrator_1_en), .n19260(n19260), 
            .n14275(n14275), .n18865(n18865), .clk_c_enable_451(clk_c_enable_451), 
            .n18873(n18873), .rst_n(rst_n), .cp1(cp1), .o_sw_N_1360({o_sw_N_1360}), 
            .sw1_c(sw1_c), .n19257(n19257)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(315[16] 327[2])
    integrator_seq_U3 integrator_2 (.clk_c(clk_c), .GND_net(GND_net), .o_sw_N_1360({o_sw_N_1360}), 
            .n18865(n18865), .T1({T1}), .r_mode({r_mode_adj_1873}), .cp2(cp2), 
            .sw2_c(sw2_c), .T3({T3}), .o_sw_N_1396({o_sw_N_1396}), .n18887(n18887), 
            .n18886(n18886), .clk_c_enable_762(clk_c_enable_762), .n18917(n18917), 
            .n18918(n18918), .clk_c_enable_635(clk_c_enable_635), .\seq_SM[1] (seq_SM[1]), 
            .n18848(n18848), .\seq_SM[1]_adj_1 (seq_SM_adj_2094[1]), .n18861(n18861), 
            .n18912(n18912), .n18916(n18916), .clk_c_enable_763(clk_c_enable_763), 
            .n18904(n18904), .clk_c_enable_807(clk_c_enable_807), .\seq_SM[1]_adj_2 (seq_SM_adj_1991[1]), 
            .n18859(n18859), .integrator_2_en(integrator_2_en), .n19260(n19260), 
            .\seq_SM[0] (seq_SM[0]), .n14275(n14275), .n17557(n17557), 
            .clk_c_enable_339(clk_c_enable_339)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(329[16] 341[2])
    VHI i13074 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \ltc1865_controller(SPI_NEXT_VALID_NUM=250,SCK_HALF_PERIOD_CLK=2) 
//

module \ltc1865_controller(SPI_NEXT_VALID_NUM=250,SCK_HALF_PERIOD_CLK=2)  (clk_c, 
            \channel_sel[6] , \spi_sm[0] , n18885, n19260, o_tx_dv, 
            n17, GND_net, r_SM_CS, adc2_cs_c, o_SPI_CS_n_N_675, adc_data_2, 
            sdi1_c, rx_dv_2, clk_c_enable_461, adc2_sck_c, n19259, 
            sdo1_c) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input \channel_sel[6] ;
    output \spi_sm[0] ;
    input n18885;
    input n19260;
    output o_tx_dv;
    input n17;
    input GND_net;
    output [1:0]r_SM_CS;
    output adc2_cs_c;
    input o_SPI_CS_n_N_675;
    output [15:0]adc_data_2;
    input sdi1_c;
    output rx_dv_2;
    input clk_c_enable_461;
    output adc2_sck_c;
    input n19259;
    output sdo1_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    wire [7:0]r_tx_byte;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(37[11:20])
    
    wire clk_c_enable_41;
    wire [2:0]n1;
    wire [31:0]r_spi_next_valid;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(39[12:28])
    
    wire clk_c_enable_493;
    wire [31:0]n5652;
    wire [2:0]spi_sm;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(38[11:17])
    
    wire clk_c_enable_136, clk_c_enable_275;
    wire [31:0]n20;
    
    wire n2;
    wire [31:0]r_spi_next_valid_31__N_588;
    
    wire n14, n12, clk_c_enable_494, n16762, n16761, n16760, n16759, 
        n16758, n16757, n16756, n16755, n16754, n16753, n16752, 
        n16751, n16750, n16749, n16748, n16747, n17_adj_1828, n30_adj_1829, 
        n26_adj_1830, n18, n62, n28_adj_1831, n22_adj_1832, n16920, 
        n17872, n17848, n7, n8, n5, n6_adj_1833;
    
    FD1P3AX r_tx_byte__i1 (.D(\channel_sel[6] ), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(r_tx_byte[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_tx_byte__i1.GSR = "DISABLED";
    FD1S3AX spi_sm_i0_i0 (.D(n1[0]), .CK(clk_c), .Q(\spi_sm[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam spi_sm_i0_i0.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i0 (.D(n5652[0]), .SP(clk_c_enable_493), .CD(n18885), 
            .CK(clk_c), .Q(r_spi_next_valid[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i0.GSR = "DISABLED";
    LUT4 i15_2_lut_rep_222 (.A(spi_sm[1]), .B(\spi_sm[0] ), .Z(clk_c_enable_136)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut_rep_222.init = 16'h6666;
    LUT4 i11261_1_lut_2_lut (.A(spi_sm[1]), .B(\spi_sm[0] ), .Z(clk_c_enable_493)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i11261_1_lut_2_lut.init = 16'h9999;
    LUT4 i12557_2_lut_3_lut (.A(spi_sm[1]), .B(\spi_sm[0] ), .C(n19260), 
         .Z(clk_c_enable_275)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C))) */ ;
    defparam i12557_2_lut_3_lut.init = 16'h9f9f;
    LUT4 i8522_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[0]), 
         .Z(n5652[0])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i8522_2_lut_3_lut.init = 16'h8080;
    FD1P3IX r_tx_dv_32 (.D(n2), .SP(clk_c_enable_136), .CD(n18885), .CK(clk_c), 
            .Q(o_tx_dv)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_tx_dv_32.GSR = "DISABLED";
    LUT4 i9121_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[31]), 
         .Z(n5652[31])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9121_2_lut_3_lut.init = 16'h8080;
    LUT4 i9120_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[30]), 
         .Z(n5652[30])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9120_2_lut_3_lut.init = 16'h8080;
    LUT4 i9119_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[29]), 
         .Z(n5652[29])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9119_2_lut_3_lut.init = 16'h8080;
    LUT4 i9118_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[28]), 
         .Z(n5652[28])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9118_2_lut_3_lut.init = 16'h8080;
    LUT4 i9117_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[27]), 
         .Z(n5652[27])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9117_2_lut_3_lut.init = 16'h8080;
    LUT4 i9116_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[26]), 
         .Z(n5652[26])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9116_2_lut_3_lut.init = 16'h8080;
    LUT4 i9115_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[25]), 
         .Z(n5652[25])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9115_2_lut_3_lut.init = 16'h8080;
    LUT4 i9114_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[24]), 
         .Z(n5652[24])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9114_2_lut_3_lut.init = 16'h8080;
    LUT4 i9113_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[23]), 
         .Z(n5652[23])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9113_2_lut_3_lut.init = 16'h8080;
    LUT4 i9112_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[22]), 
         .Z(n5652[22])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9112_2_lut_3_lut.init = 16'h8080;
    LUT4 i9111_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[21]), 
         .Z(n5652[21])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9111_2_lut_3_lut.init = 16'h8080;
    LUT4 i9110_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[20]), 
         .Z(n5652[20])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9110_2_lut_3_lut.init = 16'h8080;
    LUT4 i9109_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[19]), 
         .Z(n5652[19])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9109_2_lut_3_lut.init = 16'h8080;
    LUT4 i9108_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[18]), 
         .Z(n5652[18])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9108_2_lut_3_lut.init = 16'h8080;
    LUT4 i9107_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[17]), 
         .Z(n5652[17])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9107_2_lut_3_lut.init = 16'h8080;
    LUT4 i9106_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[16]), 
         .Z(n5652[16])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9106_2_lut_3_lut.init = 16'h8080;
    LUT4 i9105_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[15]), 
         .Z(n5652[15])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9105_2_lut_3_lut.init = 16'h8080;
    LUT4 i9104_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[14]), 
         .Z(n5652[14])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9104_2_lut_3_lut.init = 16'h8080;
    LUT4 i9103_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[13]), 
         .Z(n5652[13])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9103_2_lut_3_lut.init = 16'h8080;
    LUT4 i9102_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[12]), 
         .Z(n5652[12])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9102_2_lut_3_lut.init = 16'h8080;
    LUT4 i9101_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[11]), 
         .Z(n5652[11])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9101_2_lut_3_lut.init = 16'h8080;
    LUT4 i9100_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[10]), 
         .Z(n5652[10])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9100_2_lut_3_lut.init = 16'h8080;
    LUT4 i9099_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[9]), 
         .Z(n5652[9])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9099_2_lut_3_lut.init = 16'h8080;
    LUT4 i9098_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[8]), 
         .Z(n5652[8])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9098_2_lut_3_lut.init = 16'h8080;
    LUT4 i9097_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[2]), 
         .Z(n5652[2])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9097_2_lut_3_lut.init = 16'h8080;
    FD1P3JX r_spi_next_valid_i1 (.D(r_spi_next_valid_31__N_588[1]), .SP(clk_c_enable_275), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i1.GSR = "DISABLED";
    LUT4 i2_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n19260), .Z(clk_c_enable_41)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_3_lut.init = 16'h1010;
    FD1P3JX r_spi_next_valid_i3 (.D(r_spi_next_valid_31__N_588[3]), .SP(clk_c_enable_275), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i3.GSR = "DISABLED";
    FD1P3JX r_spi_next_valid_i4 (.D(r_spi_next_valid_31__N_588[4]), .SP(clk_c_enable_275), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i4.GSR = "DISABLED";
    FD1P3JX r_spi_next_valid_i5 (.D(r_spi_next_valid_31__N_588[5]), .SP(clk_c_enable_275), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i5.GSR = "DISABLED";
    FD1P3JX r_spi_next_valid_i6 (.D(r_spi_next_valid_31__N_588[6]), .SP(clk_c_enable_275), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i6.GSR = "DISABLED";
    PFUMX i29 (.BLUT(n17), .ALUT(n14), .C0(spi_sm[1]), .Z(n12));
    FD1P3JX r_spi_next_valid_i7 (.D(r_spi_next_valid_31__N_588[7]), .SP(clk_c_enable_275), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i7.GSR = "DISABLED";
    LUT4 i5003_2_lut_3_lut (.A(\spi_sm[0] ), .B(n19260), .C(n12), .Z(n1[0])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam i5003_2_lut_3_lut.init = 16'h6a6a;
    LUT4 i4947_3_lut (.A(\spi_sm[0] ), .B(n20[1]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[1])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4947_3_lut.init = 16'h8585;
    LUT4 i4949_3_lut (.A(\spi_sm[0] ), .B(n20[3]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[3])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4949_3_lut.init = 16'h8585;
    LUT4 i1_2_lut (.A(n19260), .B(n12), .Z(clk_c_enable_494)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i4951_3_lut (.A(\spi_sm[0] ), .B(n20[4]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[4])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4951_3_lut.init = 16'h8585;
    CCU2D sub_10_add_2_33 (.A0(r_spi_next_valid[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16762), .S0(n20[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_33.INIT0 = 16'h5555;
    defparam sub_10_add_2_33.INIT1 = 16'h0000;
    defparam sub_10_add_2_33.INJECT1_0 = "NO";
    defparam sub_10_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_31 (.A0(r_spi_next_valid[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16761), .COUT(n16762), .S0(n20[29]), .S1(n20[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_31.INIT0 = 16'h5555;
    defparam sub_10_add_2_31.INIT1 = 16'h5555;
    defparam sub_10_add_2_31.INJECT1_0 = "NO";
    defparam sub_10_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_29 (.A0(r_spi_next_valid[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16760), .COUT(n16761), .S0(n20[27]), .S1(n20[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_29.INIT0 = 16'h5555;
    defparam sub_10_add_2_29.INIT1 = 16'h5555;
    defparam sub_10_add_2_29.INJECT1_0 = "NO";
    defparam sub_10_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_27 (.A0(r_spi_next_valid[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16759), .COUT(n16760), .S0(n20[25]), .S1(n20[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_27.INIT0 = 16'h5555;
    defparam sub_10_add_2_27.INIT1 = 16'h5555;
    defparam sub_10_add_2_27.INJECT1_0 = "NO";
    defparam sub_10_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_25 (.A0(r_spi_next_valid[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16758), .COUT(n16759), .S0(n20[23]), .S1(n20[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_25.INIT0 = 16'h5555;
    defparam sub_10_add_2_25.INIT1 = 16'h5555;
    defparam sub_10_add_2_25.INJECT1_0 = "NO";
    defparam sub_10_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_23 (.A0(r_spi_next_valid[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16757), .COUT(n16758), .S0(n20[21]), .S1(n20[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_23.INIT0 = 16'h5555;
    defparam sub_10_add_2_23.INIT1 = 16'h5555;
    defparam sub_10_add_2_23.INJECT1_0 = "NO";
    defparam sub_10_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_21 (.A0(r_spi_next_valid[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16756), .COUT(n16757), .S0(n20[19]), .S1(n20[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_21.INIT0 = 16'h5555;
    defparam sub_10_add_2_21.INIT1 = 16'h5555;
    defparam sub_10_add_2_21.INJECT1_0 = "NO";
    defparam sub_10_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_19 (.A0(r_spi_next_valid[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16755), .COUT(n16756), .S0(n20[17]), .S1(n20[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_19.INIT0 = 16'h5555;
    defparam sub_10_add_2_19.INIT1 = 16'h5555;
    defparam sub_10_add_2_19.INJECT1_0 = "NO";
    defparam sub_10_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_17 (.A0(r_spi_next_valid[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16754), .COUT(n16755), .S0(n20[15]), .S1(n20[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_17.INIT0 = 16'h5555;
    defparam sub_10_add_2_17.INIT1 = 16'h5555;
    defparam sub_10_add_2_17.INJECT1_0 = "NO";
    defparam sub_10_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_15 (.A0(r_spi_next_valid[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16753), .COUT(n16754), .S0(n20[13]), .S1(n20[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_15.INIT0 = 16'h5555;
    defparam sub_10_add_2_15.INIT1 = 16'h5555;
    defparam sub_10_add_2_15.INJECT1_0 = "NO";
    defparam sub_10_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_13 (.A0(r_spi_next_valid[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16752), .COUT(n16753), .S0(n20[11]), .S1(n20[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_13.INIT0 = 16'h5555;
    defparam sub_10_add_2_13.INIT1 = 16'h5555;
    defparam sub_10_add_2_13.INJECT1_0 = "NO";
    defparam sub_10_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_11 (.A0(r_spi_next_valid[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16751), .COUT(n16752), .S0(n20[9]), .S1(n20[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_11.INIT0 = 16'h5555;
    defparam sub_10_add_2_11.INIT1 = 16'h5555;
    defparam sub_10_add_2_11.INJECT1_0 = "NO";
    defparam sub_10_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_9 (.A0(r_spi_next_valid[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16750), .COUT(n16751), .S0(n20[7]), .S1(n20[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_9.INIT0 = 16'h5555;
    defparam sub_10_add_2_9.INIT1 = 16'h5555;
    defparam sub_10_add_2_9.INJECT1_0 = "NO";
    defparam sub_10_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_7 (.A0(r_spi_next_valid[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16749), .COUT(n16750), .S0(n20[5]), .S1(n20[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_7.INIT0 = 16'h5555;
    defparam sub_10_add_2_7.INIT1 = 16'h5555;
    defparam sub_10_add_2_7.INJECT1_0 = "NO";
    defparam sub_10_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_5 (.A0(r_spi_next_valid[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16748), .COUT(n16749), .S0(n20[3]), .S1(n20[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_5.INIT0 = 16'h5555;
    defparam sub_10_add_2_5.INIT1 = 16'h5555;
    defparam sub_10_add_2_5.INJECT1_0 = "NO";
    defparam sub_10_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_3 (.A0(r_spi_next_valid[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16747), .COUT(n16748), .S0(n20[1]), .S1(n20[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_3.INIT0 = 16'h5555;
    defparam sub_10_add_2_3.INIT1 = 16'h5555;
    defparam sub_10_add_2_3.INJECT1_0 = "NO";
    defparam sub_10_add_2_3.INJECT1_1 = "NO";
    FD1P3IX r_spi_next_valid_i31 (.D(n5652[31]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i31.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i30 (.D(n5652[30]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i30.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i29 (.D(n5652[29]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i29.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i28 (.D(n5652[28]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i28.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i27 (.D(n5652[27]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i27.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i26 (.D(n5652[26]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i26.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i25 (.D(n5652[25]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i25.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i24 (.D(n5652[24]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i24.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i23 (.D(n5652[23]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i23.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i22 (.D(n5652[22]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i22.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i21 (.D(n5652[21]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i21.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i20 (.D(n5652[20]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i20.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i19 (.D(n5652[19]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i19.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i18 (.D(n5652[18]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i18.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i17 (.D(n5652[17]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i17.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i16 (.D(n5652[16]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i16.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i15 (.D(n5652[15]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i15.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i14 (.D(n5652[14]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i14.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i13 (.D(n5652[13]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i13.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i12 (.D(n5652[12]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i12.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i11 (.D(n5652[11]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i11.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i10 (.D(n5652[10]), .SP(clk_c_enable_493), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i10.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i9 (.D(n5652[9]), .SP(clk_c_enable_493), .CD(n18885), 
            .CK(clk_c), .Q(r_spi_next_valid[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i9.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i8 (.D(n5652[8]), .SP(clk_c_enable_493), .CD(n18885), 
            .CK(clk_c), .Q(r_spi_next_valid[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i8.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i2 (.D(n5652[2]), .SP(clk_c_enable_493), .CD(n18885), 
            .CK(clk_c), .Q(r_spi_next_valid[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i2.GSR = "DISABLED";
    FD1P3AX spi_sm_i0_i1 (.D(clk_c_enable_136), .SP(clk_c_enable_494), .CK(clk_c), 
            .Q(spi_sm[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=268, LSE_RLINE=286 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam spi_sm_i0_i1.GSR = "DISABLED";
    LUT4 i4953_3_lut (.A(\spi_sm[0] ), .B(n20[5]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[5])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4953_3_lut.init = 16'h8585;
    LUT4 i4955_3_lut (.A(\spi_sm[0] ), .B(n20[6]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[6])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4955_3_lut.init = 16'h8585;
    LUT4 i15_4_lut (.A(n17_adj_1828), .B(n30_adj_1829), .C(n26_adj_1830), 
         .D(n18), .Z(n62)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_112 (.A(r_spi_next_valid[28]), .B(r_spi_next_valid[14]), 
         .Z(n17_adj_1828)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_112.init = 16'heeee;
    LUT4 i14_4_lut (.A(r_spi_next_valid[11]), .B(n28_adj_1831), .C(n22_adj_1832), 
         .D(r_spi_next_valid[23]), .Z(n30_adj_1829)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(r_spi_next_valid[21]), .B(r_spi_next_valid[27]), 
         .C(r_spi_next_valid[7]), .D(r_spi_next_valid[25]), .Z(n26_adj_1830)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(r_spi_next_valid[26]), .B(r_spi_next_valid[30]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    CCU2D sub_10_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16920), .B1(n62), .C1(r_spi_next_valid[0]), .D1(GND_net), 
          .COUT(n16747), .S1(n20[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_1.INIT0 = 16'h0000;
    defparam sub_10_add_2_1.INIT1 = 16'he1e1;
    defparam sub_10_add_2_1.INJECT1_0 = "NO";
    defparam sub_10_add_2_1.INJECT1_1 = "NO";
    LUT4 i12_4_lut (.A(r_spi_next_valid[31]), .B(r_spi_next_valid[15]), 
         .C(r_spi_next_valid[29]), .D(r_spi_next_valid[19]), .Z(n28_adj_1831)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(r_spi_next_valid[13]), .B(r_spi_next_valid[22]), .Z(n22_adj_1832)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(n17872), .B(n17848), .C(n7), .D(n8), .Z(n16920)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut (.A(r_spi_next_valid[16]), .B(r_spi_next_valid[4]), .C(r_spi_next_valid[1]), 
         .D(r_spi_next_valid[24]), .Z(n17872)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_113 (.A(r_spi_next_valid[0]), .B(r_spi_next_valid[18]), 
         .C(r_spi_next_valid[2]), .D(r_spi_next_valid[8]), .Z(n17848)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_113.init = 16'hfffe;
    LUT4 i2_2_lut_adj_114 (.A(r_spi_next_valid[10]), .B(r_spi_next_valid[6]), 
         .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_114.init = 16'heeee;
    LUT4 i3_4_lut_adj_115 (.A(r_spi_next_valid[3]), .B(n5), .C(r_spi_next_valid[5]), 
         .D(n6_adj_1833), .Z(n8)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_115.init = 16'hfffe;
    LUT4 i1_2_lut_adj_116 (.A(r_spi_next_valid[20]), .B(r_spi_next_valid[12]), 
         .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_116.init = 16'heeee;
    LUT4 i2_2_lut_adj_117 (.A(r_spi_next_valid[9]), .B(r_spi_next_valid[17]), 
         .Z(n6_adj_1833)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_117.init = 16'heeee;
    LUT4 i4957_3_lut (.A(\spi_sm[0] ), .B(n20[7]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[7])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4957_3_lut.init = 16'h8585;
    LUT4 i9521_3_lut (.A(n62), .B(\spi_sm[0] ), .C(n16920), .Z(n14)) /* synthesis lut_function=(!(A (B)+!A (B (C)))) */ ;
    defparam i9521_3_lut.init = 16'h3737;
    LUT4 i2_1_lut (.A(spi_sm[1]), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2_1_lut.init = 16'h5555;
    \SPI_Master_With_Single_CS(SPI_MODE=3)  SPI_module (.clk_c(clk_c), .r_SM_CS({r_SM_CS}), 
            .adc2_cs_c(adc2_cs_c), .o_SPI_CS_n_N_675(o_SPI_CS_n_N_675), 
            .o_tx_dv(o_tx_dv), .adc_data_2({adc_data_2}), .sdi1_c(sdi1_c), 
            .rx_dv_2(rx_dv_2), .clk_c_enable_461(clk_c_enable_461), .\r_tx_byte[6] (r_tx_byte[6]), 
            .adc2_sck_c(adc2_sck_c), .n19259(n19259), .sdo1_c(sdo1_c), 
            .n19260(n19260)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(82[2] 106[2])
    
endmodule
//
// Verilog Description of module \SPI_Master_With_Single_CS(SPI_MODE=3) 
//

module \SPI_Master_With_Single_CS(SPI_MODE=3)  (clk_c, r_SM_CS, adc2_cs_c, 
            o_SPI_CS_n_N_675, o_tx_dv, adc_data_2, sdi1_c, rx_dv_2, 
            clk_c_enable_461, \r_tx_byte[6] , adc2_sck_c, n19259, sdo1_c, 
            n19260) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    output [1:0]r_SM_CS;
    output adc2_cs_c;
    input o_SPI_CS_n_N_675;
    input o_tx_dv;
    output [15:0]adc_data_2;
    input sdi1_c;
    output rx_dv_2;
    input clk_c_enable_461;
    input \r_tx_byte[6] ;
    output adc2_sck_c;
    input n19259;
    output sdo1_c;
    input n19260;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    wire [-1:0]r_CS_Inactive_Count;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(76[38:57])
    
    wire n18048;
    wire [1:0]r_SM_CS_1__N_647;
    
    wire clk_c_enable_129, n18864, w_Master_Ready, n8496, n18863;
    wire [1:0]tx_count;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(65[18:26])
    
    wire clk_c_enable_681, n13267;
    wire [1:0]tx_count_1__N_661;
    
    wire n8212;
    
    FD1P3AY r_CS_Inactive_Count_i0 (.D(n18048), .SP(r_SM_CS[0]), .CK(clk_c), 
            .Q(r_CS_Inactive_Count[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_CS_Inactive_Count_i0.GSR = "ENABLED";
    FD1S3AX r_SM_CS_i0 (.D(r_SM_CS_1__N_647[0]), .CK(clk_c), .Q(r_SM_CS[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_SM_CS_i0.GSR = "ENABLED";
    FD1P3AY r_CS_n_50 (.D(o_SPI_CS_n_N_675), .SP(clk_c_enable_129), .CK(clk_c), 
            .Q(adc2_cs_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_CS_n_50.GSR = "ENABLED";
    LUT4 i12439_3_lut_4_lut (.A(n18864), .B(w_Master_Ready), .C(r_SM_CS[1]), 
         .D(r_CS_Inactive_Count[0]), .Z(n18048)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(151[13] 155[16])
    defparam i12439_3_lut_4_lut.init = 16'h0f04;
    LUT4 i3477_3_lut_4_lut (.A(n18864), .B(w_Master_Ready), .C(r_SM_CS[1]), 
         .D(r_CS_Inactive_Count[0]), .Z(n8496)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(151[13] 155[16])
    defparam i3477_3_lut_4_lut.init = 16'hf404;
    LUT4 r_SM_CS_1__I_0_54_Mux_0_i3_4_lut (.A(n18863), .B(r_CS_Inactive_Count[0]), 
         .C(r_SM_CS[1]), .D(r_SM_CS[0]), .Z(r_SM_CS_1__N_647[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(126[7] 176[14])
    defparam r_SM_CS_1__I_0_54_Mux_0_i3_4_lut.init = 16'hca0a;
    FD1P3IX r_TX_Count_i1 (.D(tx_count_1__N_661[1]), .SP(clk_c_enable_681), 
            .CD(n13267), .CK(clk_c), .Q(tx_count[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_TX_Count_i1.GSR = "ENABLED";
    FD1S3IX r_SM_CS_i1 (.D(n8496), .CK(clk_c), .CD(n8212), .Q(r_SM_CS[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_SM_CS_i1.GSR = "ENABLED";
    LUT4 i3238_1_lut (.A(r_SM_CS[0]), .Z(n8212)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam i3238_1_lut.init = 16'h5555;
    LUT4 i1_4_lut (.A(r_SM_CS[0]), .B(w_Master_Ready), .C(r_SM_CS[1]), 
         .D(n18864), .Z(clk_c_enable_129)) /* synthesis lut_function=(!(A ((C+(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h555d;
    LUT4 i8190_3_lut_rep_205 (.A(adc2_cs_c), .B(r_SM_CS[0]), .C(o_tx_dv), 
         .Z(n18863)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(126[7] 176[14])
    defparam i8190_3_lut_rep_205.init = 16'hecec;
    LUT4 i12759_2_lut_rep_195_4_lut (.A(adc2_cs_c), .B(r_SM_CS[0]), .C(o_tx_dv), 
         .D(r_SM_CS[1]), .Z(clk_c_enable_681)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(126[7] 176[14])
    defparam i12759_2_lut_rep_195_4_lut.init = 16'h00ec;
    LUT4 i12517_2_lut_3_lut_4_lut (.A(adc2_cs_c), .B(r_SM_CS[0]), .C(o_tx_dv), 
         .D(r_SM_CS[1]), .Z(n13267)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(126[7] 176[14])
    defparam i12517_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i2570_2_lut_rep_206 (.A(tx_count[0]), .B(tx_count[1]), .Z(n18864)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2570_2_lut_rep_206.init = 16'heeee;
    LUT4 i2664_2_lut_4_lut_4_lut (.A(tx_count[0]), .B(tx_count[1]), .C(w_Master_Ready), 
         .D(o_tx_dv), .Z(tx_count_1__N_661[0])) /* synthesis lut_function=(A ((D)+!C)+!A !(((D)+!C)+!B)) */ ;
    defparam i2664_2_lut_4_lut_4_lut.init = 16'haa4a;
    LUT4 i2672_3_lut_4_lut (.A(tx_count[0]), .B(tx_count[1]), .C(w_Master_Ready), 
         .D(o_tx_dv), .Z(tx_count_1__N_661[1])) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;
    defparam i2672_3_lut_4_lut.init = 16'hcc8c;
    FD1P3IX r_TX_Count_i0 (.D(tx_count_1__N_661[0]), .SP(clk_c_enable_681), 
            .CD(n13267), .CK(clk_c), .Q(tx_count[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_TX_Count_i0.GSR = "ENABLED";
    \SPI_Master(SPI_MODE=3)  SPI_Master_Inst (.adc_data_2({adc_data_2}), .clk_c(clk_c), 
            .sdi1_c(sdi1_c), .rx_dv_2(rx_dv_2), .clk_c_enable_461(clk_c_enable_461), 
            .o_tx_dv(o_tx_dv), .w_Master_Ready(w_Master_Ready), .\r_tx_byte[6] (\r_tx_byte[6] ), 
            .adc2_sck_c(adc2_sck_c), .n19259(n19259), .sdo1_c(sdo1_c), 
            .n19260(n19260)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(87[9] 110[5])
    
endmodule
//
// Verilog Description of module \SPI_Master(SPI_MODE=3) 
//

module \SPI_Master(SPI_MODE=3)  (adc_data_2, clk_c, sdi1_c, rx_dv_2, 
            clk_c_enable_461, o_tx_dv, w_Master_Ready, \r_tx_byte[6] , 
            adc2_sck_c, n19259, sdo1_c, n19260) /* synthesis syn_module_defined=1 */ ;
    output [15:0]adc_data_2;
    input clk_c;
    input sdi1_c;
    output rx_dv_2;
    input clk_c_enable_461;
    input o_tx_dv;
    output w_Master_Ready;
    input \r_tx_byte[6] ;
    output adc2_sck_c;
    input n19259;
    output sdo1_c;
    input n19260;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    
    wire clk_c_enable_11, clk_c_enable_13, clk_c_enable_19, clk_c_enable_20, 
        clk_c_enable_23, clk_c_enable_42;
    wire [3:0]r_RX_Bit_Count;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(77[13:27])
    
    wire n18914, n18899, clk_c_enable_119, clk_c_enable_53, n18897, 
        clk_c_enable_105, n18898, clk_c_enable_78, n18049, clk_c_enable_77, 
        n7458, r_TX_Ready_N_760;
    wire [1:0]r_SPI_Clk_Count;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(68[41:56])
    
    wire n7453;
    wire [1:0]n9;
    wire [6:0]r_SPI_Clk_Edges;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(70[13:28])
    
    wire n18844;
    wire [6:0]r_SPI_Clk_Edges_6__N_700;
    
    wire clk_c_enable_106, n9128, trailing_edge, n8355, clk_c_enable_132, 
        n6, clk_c_enable_146, n9136;
    wire [2:0]r_TX_Bit_Count;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(78[13:27])
    
    wire n8365, o_TX_Ready_N_756, clk_c_enable_345, n9124;
    wire [7:0]r_TX_Byte;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(74[13:22])
    
    wire n10559, n9134;
    wire [6:0]r_SPI_Clk_Edges_6__N_722;
    
    wire r_TX_Ready, r_SPI_Clk, leading_edge_N_767, leading_edge, n17796, 
        clk_c_enable_207, clk_c_enable_202, n9080, n9082, n9086, n9084, 
        clk_c_enable_747, clk_c_enable_756, n18913, clk_c_enable_757, 
        n18871, n6_adj_1826, r_SPI_Clk_N_773, clk_c_enable_340, o_SPI_MOSI_N_763, 
        n17439, clk_c_enable_353, n9122, n9126, n18901, n5_adj_1827, 
        n12;
    
    FD1P3AX o_RX_Byte_i0_i4 (.D(sdi1_c), .SP(clk_c_enable_11), .CK(clk_c), 
            .Q(adc_data_2[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i5 (.D(sdi1_c), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(adc_data_2[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i6 (.D(sdi1_c), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(adc_data_2[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i6.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i7 (.D(sdi1_c), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(adc_data_2[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i7.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i8 (.D(sdi1_c), .SP(clk_c_enable_23), .CK(clk_c), 
            .Q(adc_data_2[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i8.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i9 (.D(sdi1_c), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(adc_data_2[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i9.GSR = "ENABLED";
    LUT4 i12562_2_lut_3_lut_4_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .C(n18914), .D(n18899), .Z(clk_c_enable_119)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i12562_2_lut_3_lut_4_lut.init = 16'h0800;
    FD1P3AX o_RX_Byte_i0_i10 (.D(sdi1_c), .SP(clk_c_enable_53), .CK(clk_c), 
            .Q(adc_data_2[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i10.GSR = "ENABLED";
    LUT4 i12564_2_lut_3_lut_4_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .C(n18897), .D(n18899), .Z(clk_c_enable_105)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i12564_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i12567_2_lut_3_lut_4_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .C(n18898), .D(n18899), .Z(clk_c_enable_78)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i12567_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i12440_3_lut_4_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .C(sdi1_c), .D(adc_data_2[15]), .Z(n18049)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i12440_3_lut_4_lut.init = 16'hf780;
    FD1P3AX o_RX_Byte_i0_i11 (.D(sdi1_c), .SP(clk_c_enable_77), .CK(clk_c), 
            .Q(adc_data_2[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i11.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i12 (.D(sdi1_c), .SP(clk_c_enable_78), .CK(clk_c), 
            .Q(adc_data_2[12])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i12.GSR = "ENABLED";
    FD1P3IX o_RX_DV_114 (.D(r_TX_Ready_N_760), .SP(clk_c_enable_461), .CD(n7458), 
            .CK(clk_c), .Q(rx_dv_2)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam o_RX_DV_114.GSR = "DISABLED";
    FD1S3IX r_SPI_Clk_Count__i0 (.D(n9[0]), .CK(clk_c), .CD(n7453), .Q(r_SPI_Clk_Count[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Count__i0.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i13 (.D(sdi1_c), .SP(clk_c_enable_105), .CK(clk_c), 
            .Q(adc_data_2[13])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i13.GSR = "ENABLED";
    LUT4 i8437_3_lut_4_lut (.A(r_SPI_Clk_Edges[4]), .B(n18844), .C(o_tx_dv), 
         .D(r_SPI_Clk_Edges[5]), .Z(r_SPI_Clk_Edges_6__N_700[5])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i8437_3_lut_4_lut.init = 16'hfef1;
    FD1P3AX o_RX_Byte_i0_i0 (.D(sdi1_c), .SP(clk_c_enable_106), .CK(clk_c), 
            .Q(adc_data_2[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(r_SPI_Clk_Edges[4]), .B(n18844), .C(r_SPI_Clk_Edges[5]), 
         .D(r_SPI_Clk_Edges[6]), .Z(n9128)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i1_3_lut_4_lut.init = 16'hfe01;
    LUT4 i3598_2_lut (.A(r_RX_Bit_Count[0]), .B(trailing_edge), .Z(n8355)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam i3598_2_lut.init = 16'h6666;
    FD1P3AX o_RX_Byte_i0_i14 (.D(sdi1_c), .SP(clk_c_enable_119), .CK(clk_c), 
            .Q(adc_data_2[14])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i14.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i15 (.D(n18049), .SP(clk_c_enable_132), .CK(clk_c), 
            .Q(adc_data_2[15])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i15.GSR = "ENABLED";
    LUT4 equal_228_i6_2_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .Z(n6)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(220[9:34])
    defparam equal_228_i6_2_lut.init = 16'hbbbb;
    FD1P3JX r_RX_Bit_Count_i0_i1 (.D(n9136), .SP(clk_c_enable_146), .PD(w_Master_Ready), 
            .CK(clk_c), .Q(r_RX_Bit_Count[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam r_RX_Bit_Count_i0_i1.GSR = "ENABLED";
    FD1S3JX r_TX_Bit_Count_i0_i0 (.D(n8365), .CK(clk_c), .PD(w_Master_Ready), 
            .Q(r_TX_Bit_Count[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam r_TX_Bit_Count_i0_i0.GSR = "ENABLED";
    LUT4 i466_2_lut_rep_181 (.A(o_TX_Ready_N_756), .B(o_tx_dv), .Z(clk_c_enable_345)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(118[12] 139[10])
    defparam i466_2_lut_rep_181.init = 16'h1111;
    FD1P3JX r_RX_Bit_Count_i0_i2 (.D(n9124), .SP(clk_c_enable_146), .PD(w_Master_Ready), 
            .CK(clk_c), .Q(r_RX_Bit_Count[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam r_RX_Bit_Count_i0_i2.GSR = "ENABLED";
    FD1P3AX r_TX_Byte__i1 (.D(\r_tx_byte[6] ), .SP(o_tx_dv), .CK(clk_c), 
            .Q(r_TX_Byte[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(155[7] 161[10])
    defparam r_TX_Byte__i1.GSR = "ENABLED";
    LUT4 i5467_1_lut_2_lut (.A(o_TX_Ready_N_756), .B(o_tx_dv), .Z(n10559)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(118[12] 139[10])
    defparam i5467_1_lut_2_lut.init = 16'heeee;
    FD1P3JX r_RX_Bit_Count_i0_i3 (.D(n9134), .SP(clk_c_enable_146), .PD(w_Master_Ready), 
            .CK(clk_c), .Q(r_RX_Bit_Count[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam r_RX_Bit_Count_i0_i3.GSR = "ENABLED";
    FD1S3IX r_SPI_Clk_Edges_i0 (.D(r_SPI_Clk_Edges_6__N_722[0]), .CK(clk_c), 
            .CD(o_tx_dv), .Q(r_SPI_Clk_Edges[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i0.GSR = "ENABLED";
    FD1S3AX r_TX_Ready_107 (.D(w_Master_Ready), .CK(clk_c), .Q(r_TX_Ready)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_TX_Ready_107.GSR = "ENABLED";
    FD1S3JX r_RX_Bit_Count_i0_i0 (.D(n8355), .CK(clk_c), .PD(w_Master_Ready), 
            .Q(r_RX_Bit_Count[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam r_RX_Bit_Count_i0_i0.GSR = "ENABLED";
    LUT4 i3696_2_lut_3_lut (.A(o_TX_Ready_N_756), .B(o_tx_dv), .C(r_SPI_Clk_Count[0]), 
         .Z(n9[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(118[12] 139[10])
    defparam i3696_2_lut_3_lut.init = 16'he1e1;
    FD1S3AY o_SPI_Clk_124 (.D(r_SPI_Clk), .CK(clk_c), .Q(adc2_sck_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(240[7] 242[10])
    defparam o_SPI_Clk_124.GSR = "ENABLED";
    LUT4 i12682_2_lut (.A(r_SPI_Clk_Count[0]), .B(r_SPI_Clk_Count[1]), .Z(leading_edge_N_767)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(127[18:56])
    defparam i12682_2_lut.init = 16'h2222;
    FD1S3IX r_Leading_Edge_109 (.D(leading_edge_N_767), .CK(clk_c), .CD(n17796), 
            .Q(leading_edge)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_Leading_Edge_109.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i6 (.D(n9128), .SP(clk_c_enable_207), .CD(o_tx_dv), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i6.GSR = "ENABLED";
    FD1P3AX r_SPI_Clk_Edges_i5 (.D(r_SPI_Clk_Edges_6__N_700[5]), .SP(clk_c_enable_202), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i5.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i4 (.D(n9080), .SP(clk_c_enable_207), .CD(o_tx_dv), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i4.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i3 (.D(n9082), .SP(clk_c_enable_207), .CD(o_tx_dv), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i3.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i2 (.D(n9086), .SP(clk_c_enable_207), .CD(o_tx_dv), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i2.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i1 (.D(n9084), .SP(clk_c_enable_207), .CD(o_tx_dv), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i1.GSR = "ENABLED";
    FD1P3AX r_TX_Byte__i2 (.D(n19259), .SP(o_tx_dv), .CK(clk_c), .Q(r_TX_Byte[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(155[7] 161[10])
    defparam r_TX_Byte__i2.GSR = "ENABLED";
    LUT4 i464_2_lut_rep_187 (.A(r_SPI_Clk_Count[0]), .B(o_TX_Ready_N_756), 
         .Z(clk_c_enable_207)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(137[12] 139[10])
    defparam i464_2_lut_rep_187.init = 16'h2222;
    LUT4 i3162_2_lut_3_lut (.A(r_SPI_Clk_Count[0]), .B(o_TX_Ready_N_756), 
         .C(r_SPI_Clk_Edges[0]), .Z(r_SPI_Clk_Edges_6__N_722[0])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(137[12] 139[10])
    defparam i3162_2_lut_3_lut.init = 16'hd2d2;
    FD1S3IX o_TX_Ready_106 (.D(o_TX_Ready_N_756), .CK(clk_c), .CD(o_tx_dv), 
            .Q(w_Master_Ready)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam o_TX_Ready_106.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(r_SPI_Clk_Count[0]), .B(o_TX_Ready_N_756), .C(o_tx_dv), 
         .Z(clk_c_enable_202)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(137[12] 139[10])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i1_2_lut (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), .Z(n9084)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    LUT4 i12600_2_lut_4_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .C(n18899), .D(n18897), .Z(clk_c_enable_747)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam i12600_2_lut_4_lut.init = 16'h0010;
    LUT4 i12526_2_lut_4_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .C(n18899), .D(n18898), .Z(clk_c_enable_106)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam i12526_2_lut_4_lut.init = 16'h0010;
    LUT4 i12597_2_lut_4_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .C(n18899), .D(n18914), .Z(clk_c_enable_756)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam i12597_2_lut_4_lut.init = 16'h0010;
    LUT4 i12594_2_lut_4_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .C(n18899), .D(n18913), .Z(clk_c_enable_757)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam i12594_2_lut_4_lut.init = 16'h1000;
    LUT4 i8460_2_lut_rep_213 (.A(r_SPI_Clk_Count[0]), .B(r_SPI_Clk_Count[1]), 
         .Z(n18871)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8460_2_lut_rep_213.init = 16'h8888;
    LUT4 i2545_2_lut_3_lut_4_lut (.A(r_SPI_Clk_Count[0]), .B(r_SPI_Clk_Count[1]), 
         .C(o_tx_dv), .D(o_TX_Ready_N_756), .Z(n7453)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2545_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i2_3_lut_4_lut (.A(r_SPI_Clk_Count[0]), .B(r_SPI_Clk_Count[1]), 
         .C(o_tx_dv), .D(o_TX_Ready_N_756), .Z(n17796)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfff8;
    LUT4 equal_232_i6_2_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .Z(n6_adj_1826)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(220[9:34])
    defparam equal_232_i6_2_lut.init = 16'hdddd;
    FD1P3AY r_SPI_Clk_112 (.D(r_SPI_Clk_N_773), .SP(clk_c_enable_345), .CK(clk_c), 
            .Q(r_SPI_Clk)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_112.GSR = "ENABLED";
    LUT4 i3600_2_lut (.A(r_TX_Bit_Count[0]), .B(leading_edge), .Z(n8365)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam i3600_2_lut.init = 16'h6666;
    FD1S3IX r_Trailing_Edge_110 (.D(n18871), .CK(clk_c), .CD(n10559), 
            .Q(trailing_edge)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_Trailing_Edge_110.GSR = "ENABLED";
    FD1P3AX o_SPI_MOSI_117 (.D(o_SPI_MOSI_N_763), .SP(clk_c_enable_340), 
            .CK(clk_c), .Q(sdo1_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam o_SPI_MOSI_117.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Count__i1 (.D(n17439), .SP(clk_c_enable_345), .CD(n7453), 
            .CK(clk_c), .Q(r_SPI_Clk_Count[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Count__i1.GSR = "ENABLED";
    FD1P3JX r_TX_Bit_Count_i0_i1 (.D(n9122), .SP(clk_c_enable_353), .PD(w_Master_Ready), 
            .CK(clk_c), .Q(r_TX_Bit_Count[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam r_TX_Bit_Count_i0_i1.GSR = "ENABLED";
    FD1P3JX r_TX_Bit_Count_i0_i2 (.D(n9126), .SP(clk_c_enable_353), .PD(w_Master_Ready), 
            .CK(clk_c), .Q(r_TX_Bit_Count[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam r_TX_Bit_Count_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(r_SPI_Clk_Edges[2]), .B(n18901), .C(r_SPI_Clk_Edges[4]), 
         .D(r_SPI_Clk_Edges[3]), .Z(n9080)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e1;
    LUT4 i1_2_lut_rep_239 (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .Z(n18897)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(220[9:34])
    defparam i1_2_lut_rep_239.init = 16'hbbbb;
    LUT4 i12575_2_lut_3_lut_4_lut (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(n6), .D(n18899), .Z(clk_c_enable_42)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(220[9:34])
    defparam i12575_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i12589_2_lut_3_lut_4_lut (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(n6_adj_1826), .D(n18899), .Z(clk_c_enable_13)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(220[9:34])
    defparam i12589_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i2962_2_lut_rep_240 (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .Z(n18898)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(221[38:56])
    defparam i2962_2_lut_rep_240.init = 16'heeee;
    LUT4 i12592_2_lut_3_lut_4_lut (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(n6_adj_1826), .D(n18899), .Z(clk_c_enable_11)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(221[38:56])
    defparam i12592_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i12578_2_lut_3_lut_4_lut (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(n6), .D(n18899), .Z(clk_c_enable_23)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(221[38:56])
    defparam i12578_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_104 (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(r_RX_Bit_Count[2]), .Z(n9124)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(221[38:56])
    defparam i1_2_lut_3_lut_adj_104.init = 16'he1e1;
    LUT4 i1_3_lut_4_lut_adj_105 (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(r_RX_Bit_Count[2]), .D(r_RX_Bit_Count[3]), .Z(n9134)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(221[38:56])
    defparam i1_3_lut_4_lut_adj_105.init = 16'hfe01;
    LUT4 i470_2_lut_rep_241 (.A(trailing_edge), .B(w_Master_Ready), .Z(n18899)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i470_2_lut_rep_241.init = 16'h2222;
    LUT4 i12580_2_lut_3_lut_4_lut (.A(trailing_edge), .B(w_Master_Ready), 
         .C(n6_adj_1826), .D(n18913), .Z(clk_c_enable_20)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i12580_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i12569_2_lut_3_lut_4_lut (.A(trailing_edge), .B(w_Master_Ready), 
         .C(n6), .D(n18913), .Z(clk_c_enable_77)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i12569_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i12586_2_lut_3_lut_4_lut (.A(trailing_edge), .B(w_Master_Ready), 
         .C(n6_adj_1826), .D(n18914), .Z(clk_c_enable_19)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i12586_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i12572_2_lut_3_lut_4_lut (.A(trailing_edge), .B(w_Master_Ready), 
         .C(n6), .D(n18914), .Z(clk_c_enable_53)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i12572_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i3266_2_lut (.A(leading_edge), .B(w_Master_Ready), .Z(clk_c_enable_340)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam i3266_2_lut.init = 16'h2222;
    LUT4 i2882_2_lut_rep_243 (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
         .Z(n18901)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i2882_2_lut_rep_243.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_106 (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
         .C(r_SPI_Clk_Edges[2]), .Z(n9086)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i1_2_lut_3_lut_adj_106.init = 16'he1e1;
    LUT4 i1_2_lut_3_lut_4_lut_adj_107 (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
         .C(r_SPI_Clk_Edges[3]), .D(r_SPI_Clk_Edges[2]), .Z(n9082)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i1_2_lut_3_lut_4_lut_adj_107.init = 16'hf0e1;
    LUT4 i2898_2_lut_rep_186_3_lut_4_lut (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
         .C(r_SPI_Clk_Edges[3]), .D(r_SPI_Clk_Edges[2]), .Z(n18844)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i2898_2_lut_rep_186_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(r_TX_Bit_Count[1]), .B(r_TX_Bit_Count[2]), .C(n5_adj_1827), 
         .Z(o_SPI_MOSI_N_763)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i8477_2_lut_rep_255 (.A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), 
         .Z(n18913)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8477_2_lut_rep_255.init = 16'h8888;
    LUT4 i9220_2_lut_rep_204_3_lut_4_lut (.A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), 
         .C(w_Master_Ready), .D(trailing_edge), .Z(clk_c_enable_132)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i9220_2_lut_rep_204_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_256 (.A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), 
         .Z(n18914)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(220[9:34])
    defparam i1_2_lut_rep_256.init = 16'hbbbb;
    LUT4 r_TX_Bit_Count_2__I_0_i5_3_lut (.A(r_TX_Byte[6]), .B(r_TX_Byte[7]), 
         .C(r_TX_Bit_Count[0]), .Z(n5_adj_1827)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(184[37:51])
    defparam r_TX_Bit_Count_2__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 i12474_2_lut (.A(r_SPI_Clk), .B(r_SPI_Clk_Count[0]), .Z(r_SPI_Clk_N_773)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(127[14] 135[12])
    defparam i12474_2_lut.init = 16'h6666;
    LUT4 i15_2_lut (.A(r_SPI_Clk_Count[0]), .B(r_SPI_Clk_Count[1]), .Z(n17439)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(133[14] 135[12])
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_108 (.A(leading_edge), .B(w_Master_Ready), .Z(clk_c_enable_353)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_108.init = 16'heeee;
    LUT4 i1_2_lut_adj_109 (.A(r_TX_Bit_Count[1]), .B(r_TX_Bit_Count[0]), 
         .Z(n9122)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_109.init = 16'h9999;
    LUT4 i1_3_lut (.A(r_TX_Bit_Count[2]), .B(r_TX_Bit_Count[1]), .C(r_TX_Bit_Count[0]), 
         .Z(n9126)) /* synthesis lut_function=(A (B+(C))+!A !(B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha9a9;
    FD1P3AX o_RX_Byte_i0_i1 (.D(sdi1_c), .SP(clk_c_enable_747), .CK(clk_c), 
            .Q(adc_data_2[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i1.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i2 (.D(sdi1_c), .SP(clk_c_enable_756), .CK(clk_c), 
            .Q(adc_data_2[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i2.GSR = "ENABLED";
    LUT4 i2552_2_lut (.A(w_Master_Ready), .B(n19260), .Z(n7458)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam i2552_2_lut.init = 16'h4444;
    LUT4 r_TX_Ready_I_0_1_lut (.A(r_TX_Ready), .Z(r_TX_Ready_N_760)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(113[15:28])
    defparam r_TX_Ready_I_0_1_lut.init = 16'h5555;
    LUT4 i12661_4_lut (.A(r_SPI_Clk_Edges[3]), .B(n12), .C(r_SPI_Clk_Edges[2]), 
         .D(r_SPI_Clk_Edges[0]), .Z(o_TX_Ready_N_756)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i12661_4_lut.init = 16'h0001;
    LUT4 i5_4_lut (.A(r_SPI_Clk_Edges[5]), .B(r_SPI_Clk_Edges[4]), .C(r_SPI_Clk_Edges[6]), 
         .D(r_SPI_Clk_Edges[1]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    FD1P3AX o_RX_Byte_i0_i3 (.D(sdi1_c), .SP(clk_c_enable_757), .CK(clk_c), 
            .Q(adc_data_2[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_110 (.A(trailing_edge), .B(w_Master_Ready), .Z(clk_c_enable_146)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_110.init = 16'heeee;
    LUT4 i1_2_lut_adj_111 (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .Z(n9136)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_111.init = 16'h9999;
    
endmodule
//
// Verilog Description of module \ltc1865_controller(SPI_NEXT_VALID_NUM=250,SCK_HALF_PERIOD_CLK=2)_U5 
//

module \ltc1865_controller(SPI_NEXT_VALID_NUM=250,SCK_HALF_PERIOD_CLK=2)_U5  (\spi_sm[0] , 
            clk_c, n18885, n19260, o_tx_dv, GND_net, \channel_sel[6] , 
            n17, r_SM_CS, adc1_cs_c, o_SPI_CS_n_N_675, n18866, clk_c_enable_766, 
            n13261, adc_data_1, sdi0_c, adc1_sck_c, rx_dv_1, clk_c_enable_461, 
            n19259, sdo0_c) /* synthesis syn_module_defined=1 */ ;
    output \spi_sm[0] ;
    input clk_c;
    input n18885;
    input n19260;
    output o_tx_dv;
    input GND_net;
    input \channel_sel[6] ;
    input n17;
    output [1:0]r_SM_CS;
    output adc1_cs_c;
    input o_SPI_CS_n_N_675;
    input n18866;
    input clk_c_enable_766;
    input n13261;
    output [15:0]adc_data_1;
    input sdi0_c;
    output adc1_sck_c;
    output rx_dv_1;
    input clk_c_enable_461;
    input n19259;
    output sdo0_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    wire [2:0]n8;
    wire [31:0]r_spi_next_valid;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(39[12:28])
    
    wire clk_c_enable_528;
    wire [31:0]n5918;
    
    wire n12, clk_c_enable_533, clk_c_enable_133, n18872, n16265;
    wire [31:0]n20;
    
    wire n16266, n16264;
    wire [7:0]r_tx_byte;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(37[11:20])
    
    wire clk_c_enable_171, clk_c_enable_227;
    wire [31:0]r_spi_next_valid_31__N_588;
    
    wire n16263;
    wire [2:0]spi_sm;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(38[11:17])
    
    wire n16262, n16261, n16260, n14, n62, n16903, n16259, n16258, 
        n16257, n16256, n16255, n16254, n16253, n16252, n16251, 
        n17_adj_1815, n30_adj_1816, n26_adj_1817, n18, n28_adj_1818, 
        n22_adj_1819, n17_adj_1820, n30_adj_1821, n26_adj_1822, n18_adj_1823, 
        n28_adj_1824, n22_adj_1825;
    
    FD1S3AX spi_sm_i0_i0 (.D(n8[0]), .CK(clk_c), .Q(\spi_sm[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam spi_sm_i0_i0.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i0 (.D(n5918[0]), .SP(clk_c_enable_528), .CD(n18885), 
            .CK(clk_c), .Q(r_spi_next_valid[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i0.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(n19260), .B(n12), .Z(clk_c_enable_533)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1P3IX r_tx_dv_32 (.D(n18872), .SP(clk_c_enable_133), .CD(n18885), 
            .CK(clk_c), .Q(o_tx_dv)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_tx_dv_32.GSR = "DISABLED";
    CCU2D sub_10_add_2_31 (.A0(r_spi_next_valid[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16265), .COUT(n16266), .S0(n20[29]), .S1(n20[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_31.INIT0 = 16'h5555;
    defparam sub_10_add_2_31.INIT1 = 16'h5555;
    defparam sub_10_add_2_31.INJECT1_0 = "NO";
    defparam sub_10_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_29 (.A0(r_spi_next_valid[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16264), .COUT(n16265), .S0(n20[27]), .S1(n20[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_29.INIT0 = 16'h5555;
    defparam sub_10_add_2_29.INIT1 = 16'h5555;
    defparam sub_10_add_2_29.INJECT1_0 = "NO";
    defparam sub_10_add_2_29.INJECT1_1 = "NO";
    FD1P3AX r_tx_byte__i1 (.D(\channel_sel[6] ), .SP(clk_c_enable_171), 
            .CK(clk_c), .Q(r_tx_byte[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_tx_byte__i1.GSR = "DISABLED";
    FD1P3JX r_spi_next_valid_i1 (.D(r_spi_next_valid_31__N_588[1]), .SP(clk_c_enable_227), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i1.GSR = "DISABLED";
    CCU2D sub_10_add_2_27 (.A0(r_spi_next_valid[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16263), .COUT(n16264), .S0(n20[25]), .S1(n20[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_27.INIT0 = 16'h5555;
    defparam sub_10_add_2_27.INIT1 = 16'h5555;
    defparam sub_10_add_2_27.INJECT1_0 = "NO";
    defparam sub_10_add_2_27.INJECT1_1 = "NO";
    LUT4 i5009_2_lut_rep_226 (.A(\spi_sm[0] ), .B(spi_sm[1]), .Z(clk_c_enable_133)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(53[3] 73[10])
    defparam i5009_2_lut_rep_226.init = 16'h6666;
    FD1P3JX r_spi_next_valid_i3 (.D(r_spi_next_valid_31__N_588[3]), .SP(clk_c_enable_227), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i3.GSR = "DISABLED";
    LUT4 i11259_1_lut_2_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .Z(clk_c_enable_528)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(53[3] 73[10])
    defparam i11259_1_lut_2_lut.init = 16'h9999;
    LUT4 i12492_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n19260), 
         .Z(clk_c_enable_227)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(53[3] 73[10])
    defparam i12492_2_lut_3_lut.init = 16'h9f9f;
    FD1P3JX r_spi_next_valid_i4 (.D(r_spi_next_valid_31__N_588[4]), .SP(clk_c_enable_227), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i4.GSR = "DISABLED";
    LUT4 i8524_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[0]), 
         .Z(n5918[0])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i8524_2_lut_3_lut.init = 16'h8080;
    LUT4 i9155_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[31]), 
         .Z(n5918[31])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9155_2_lut_3_lut.init = 16'h8080;
    LUT4 i9154_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[30]), 
         .Z(n5918[30])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9154_2_lut_3_lut.init = 16'h8080;
    LUT4 i9153_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[29]), 
         .Z(n5918[29])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9153_2_lut_3_lut.init = 16'h8080;
    LUT4 i9152_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[28]), 
         .Z(n5918[28])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9152_2_lut_3_lut.init = 16'h8080;
    LUT4 i9151_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[27]), 
         .Z(n5918[27])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9151_2_lut_3_lut.init = 16'h8080;
    LUT4 i9150_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[26]), 
         .Z(n5918[26])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9150_2_lut_3_lut.init = 16'h8080;
    LUT4 i9149_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[25]), 
         .Z(n5918[25])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9149_2_lut_3_lut.init = 16'h8080;
    LUT4 i9148_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[24]), 
         .Z(n5918[24])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9148_2_lut_3_lut.init = 16'h8080;
    LUT4 i9147_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[23]), 
         .Z(n5918[23])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9147_2_lut_3_lut.init = 16'h8080;
    LUT4 i9146_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[22]), 
         .Z(n5918[22])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9146_2_lut_3_lut.init = 16'h8080;
    LUT4 i9145_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[21]), 
         .Z(n5918[21])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9145_2_lut_3_lut.init = 16'h8080;
    LUT4 i4959_3_lut (.A(\spi_sm[0] ), .B(n20[1]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[1])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4959_3_lut.init = 16'h8585;
    LUT4 i9144_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[20]), 
         .Z(n5918[20])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9144_2_lut_3_lut.init = 16'h8080;
    LUT4 i9143_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[19]), 
         .Z(n5918[19])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9143_2_lut_3_lut.init = 16'h8080;
    LUT4 i9142_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[18]), 
         .Z(n5918[18])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9142_2_lut_3_lut.init = 16'h8080;
    LUT4 i9141_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[17]), 
         .Z(n5918[17])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9141_2_lut_3_lut.init = 16'h8080;
    LUT4 i4961_3_lut (.A(\spi_sm[0] ), .B(n20[3]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[3])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4961_3_lut.init = 16'h8585;
    LUT4 i9140_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[16]), 
         .Z(n5918[16])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9140_2_lut_3_lut.init = 16'h8080;
    LUT4 i4963_3_lut (.A(\spi_sm[0] ), .B(n20[4]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[4])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4963_3_lut.init = 16'h8585;
    FD1P3JX r_spi_next_valid_i5 (.D(r_spi_next_valid_31__N_588[5]), .SP(clk_c_enable_227), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i5.GSR = "DISABLED";
    LUT4 i9139_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[15]), 
         .Z(n5918[15])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9139_2_lut_3_lut.init = 16'h8080;
    LUT4 i9138_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[14]), 
         .Z(n5918[14])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9138_2_lut_3_lut.init = 16'h8080;
    LUT4 i9137_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[13]), 
         .Z(n5918[13])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9137_2_lut_3_lut.init = 16'h8080;
    LUT4 i9136_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[12]), 
         .Z(n5918[12])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9136_2_lut_3_lut.init = 16'h8080;
    FD1P3JX r_spi_next_valid_i6 (.D(r_spi_next_valid_31__N_588[6]), .SP(clk_c_enable_227), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i6.GSR = "DISABLED";
    FD1P3JX r_spi_next_valid_i7 (.D(r_spi_next_valid_31__N_588[7]), .SP(clk_c_enable_227), 
            .PD(n18885), .CK(clk_c), .Q(r_spi_next_valid[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i7.GSR = "DISABLED";
    LUT4 i9135_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[11]), 
         .Z(n5918[11])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9135_2_lut_3_lut.init = 16'h8080;
    LUT4 i9134_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[10]), 
         .Z(n5918[10])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9134_2_lut_3_lut.init = 16'h8080;
    LUT4 i9133_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[9]), 
         .Z(n5918[9])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9133_2_lut_3_lut.init = 16'h8080;
    LUT4 i4965_3_lut (.A(\spi_sm[0] ), .B(n20[5]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[5])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4965_3_lut.init = 16'h8585;
    LUT4 i9132_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[8]), 
         .Z(n5918[8])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9132_2_lut_3_lut.init = 16'h8080;
    LUT4 i9131_2_lut_3_lut (.A(\spi_sm[0] ), .B(spi_sm[1]), .C(n20[2]), 
         .Z(n5918[2])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9131_2_lut_3_lut.init = 16'h8080;
    LUT4 i4967_3_lut (.A(\spi_sm[0] ), .B(n20[6]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[6])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4967_3_lut.init = 16'h8585;
    LUT4 i4969_3_lut (.A(\spi_sm[0] ), .B(n20[7]), .C(spi_sm[1]), .Z(r_spi_next_valid_31__N_588[7])) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;
    defparam i4969_3_lut.init = 16'h8585;
    LUT4 i2_1_lut_rep_214 (.A(spi_sm[1]), .Z(n18872)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2_1_lut_rep_214.init = 16'h5555;
    LUT4 i2_3_lut_3_lut (.A(spi_sm[1]), .B(n19260), .C(\spi_sm[0] ), .Z(clk_c_enable_171)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_3_lut.init = 16'h0404;
    LUT4 i4999_2_lut_3_lut (.A(\spi_sm[0] ), .B(n19260), .C(n12), .Z(n8[0])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam i4999_2_lut_3_lut.init = 16'h6a6a;
    CCU2D sub_10_add_2_25 (.A0(r_spi_next_valid[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16262), .COUT(n16263), .S0(n20[23]), .S1(n20[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_25.INIT0 = 16'h5555;
    defparam sub_10_add_2_25.INIT1 = 16'h5555;
    defparam sub_10_add_2_25.INJECT1_0 = "NO";
    defparam sub_10_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_23 (.A0(r_spi_next_valid[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16261), .COUT(n16262), .S0(n20[21]), .S1(n20[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_23.INIT0 = 16'h5555;
    defparam sub_10_add_2_23.INIT1 = 16'h5555;
    defparam sub_10_add_2_23.INJECT1_0 = "NO";
    defparam sub_10_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_21 (.A0(r_spi_next_valid[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16260), .COUT(n16261), .S0(n20[19]), .S1(n20[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_21.INIT0 = 16'h5555;
    defparam sub_10_add_2_21.INIT1 = 16'h5555;
    defparam sub_10_add_2_21.INJECT1_0 = "NO";
    defparam sub_10_add_2_21.INJECT1_1 = "NO";
    PFUMX i29 (.BLUT(n17), .ALUT(n14), .C0(spi_sm[1]), .Z(n12));
    FD1P3IX r_spi_next_valid_i31 (.D(n5918[31]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i31.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i30 (.D(n5918[30]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i30.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i29 (.D(n5918[29]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i29.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i28 (.D(n5918[28]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i28.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i27 (.D(n5918[27]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i27.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i26 (.D(n5918[26]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i26.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i25 (.D(n5918[25]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i25.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i24 (.D(n5918[24]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i24.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i23 (.D(n5918[23]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i23.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i22 (.D(n5918[22]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i22.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i21 (.D(n5918[21]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i21.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i20 (.D(n5918[20]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i20.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i19 (.D(n5918[19]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i19.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i18 (.D(n5918[18]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i18.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i17 (.D(n5918[17]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i17.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i16 (.D(n5918[16]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i16.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i15 (.D(n5918[15]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i15.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i14 (.D(n5918[14]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i14.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i13 (.D(n5918[13]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i13.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i12 (.D(n5918[12]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i12.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i11 (.D(n5918[11]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i11.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i10 (.D(n5918[10]), .SP(clk_c_enable_528), 
            .CD(n18885), .CK(clk_c), .Q(r_spi_next_valid[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i10.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i9 (.D(n5918[9]), .SP(clk_c_enable_528), .CD(n18885), 
            .CK(clk_c), .Q(r_spi_next_valid[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i9.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i8 (.D(n5918[8]), .SP(clk_c_enable_528), .CD(n18885), 
            .CK(clk_c), .Q(r_spi_next_valid[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i8.GSR = "DISABLED";
    FD1P3IX r_spi_next_valid_i2 (.D(n5918[2]), .SP(clk_c_enable_528), .CD(n18885), 
            .CK(clk_c), .Q(r_spi_next_valid[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam r_spi_next_valid_i2.GSR = "DISABLED";
    LUT4 i9515_3_lut (.A(n62), .B(\spi_sm[0] ), .C(n16903), .Z(n14)) /* synthesis lut_function=(!(A (B)+!A (B (C)))) */ ;
    defparam i9515_3_lut.init = 16'h3737;
    FD1P3AX spi_sm_i0_i1 (.D(clk_c_enable_133), .SP(clk_c_enable_533), .CK(clk_c), 
            .Q(spi_sm[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=244, LSE_RLINE=262 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(47[7] 75[4])
    defparam spi_sm_i0_i1.GSR = "DISABLED";
    CCU2D sub_10_add_2_19 (.A0(r_spi_next_valid[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16259), .COUT(n16260), .S0(n20[17]), .S1(n20[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_19.INIT0 = 16'h5555;
    defparam sub_10_add_2_19.INIT1 = 16'h5555;
    defparam sub_10_add_2_19.INJECT1_0 = "NO";
    defparam sub_10_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_17 (.A0(r_spi_next_valid[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16258), .COUT(n16259), .S0(n20[15]), .S1(n20[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_17.INIT0 = 16'h5555;
    defparam sub_10_add_2_17.INIT1 = 16'h5555;
    defparam sub_10_add_2_17.INJECT1_0 = "NO";
    defparam sub_10_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_15 (.A0(r_spi_next_valid[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16257), .COUT(n16258), .S0(n20[13]), .S1(n20[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_15.INIT0 = 16'h5555;
    defparam sub_10_add_2_15.INIT1 = 16'h5555;
    defparam sub_10_add_2_15.INJECT1_0 = "NO";
    defparam sub_10_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_13 (.A0(r_spi_next_valid[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16256), .COUT(n16257), .S0(n20[11]), .S1(n20[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_13.INIT0 = 16'h5555;
    defparam sub_10_add_2_13.INIT1 = 16'h5555;
    defparam sub_10_add_2_13.INJECT1_0 = "NO";
    defparam sub_10_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_11 (.A0(r_spi_next_valid[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16255), .COUT(n16256), .S0(n20[9]), .S1(n20[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_11.INIT0 = 16'h5555;
    defparam sub_10_add_2_11.INIT1 = 16'h5555;
    defparam sub_10_add_2_11.INJECT1_0 = "NO";
    defparam sub_10_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_9 (.A0(r_spi_next_valid[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16254), .COUT(n16255), .S0(n20[7]), .S1(n20[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_9.INIT0 = 16'h5555;
    defparam sub_10_add_2_9.INIT1 = 16'h5555;
    defparam sub_10_add_2_9.INJECT1_0 = "NO";
    defparam sub_10_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_7 (.A0(r_spi_next_valid[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16253), .COUT(n16254), .S0(n20[5]), .S1(n20[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_7.INIT0 = 16'h5555;
    defparam sub_10_add_2_7.INIT1 = 16'h5555;
    defparam sub_10_add_2_7.INJECT1_0 = "NO";
    defparam sub_10_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_5 (.A0(r_spi_next_valid[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16252), .COUT(n16253), .S0(n20[3]), .S1(n20[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_5.INIT0 = 16'h5555;
    defparam sub_10_add_2_5.INIT1 = 16'h5555;
    defparam sub_10_add_2_5.INJECT1_0 = "NO";
    defparam sub_10_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_3 (.A0(r_spi_next_valid[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_spi_next_valid[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16251), .COUT(n16252), .S0(n20[1]), .S1(n20[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_3.INIT0 = 16'h5555;
    defparam sub_10_add_2_3.INIT1 = 16'h5555;
    defparam sub_10_add_2_3.INJECT1_0 = "NO";
    defparam sub_10_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16903), .B1(n62), .C1(r_spi_next_valid[0]), .D1(GND_net), 
          .COUT(n16251), .S1(n20[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_1.INIT0 = 16'h0000;
    defparam sub_10_add_2_1.INIT1 = 16'he1e1;
    defparam sub_10_add_2_1.INJECT1_0 = "NO";
    defparam sub_10_add_2_1.INJECT1_1 = "NO";
    LUT4 i15_4_lut (.A(n17_adj_1815), .B(n30_adj_1816), .C(n26_adj_1817), 
         .D(n18), .Z(n62)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_96 (.A(r_spi_next_valid[28]), .B(r_spi_next_valid[14]), 
         .Z(n17_adj_1815)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_96.init = 16'heeee;
    LUT4 i14_4_lut (.A(r_spi_next_valid[31]), .B(n28_adj_1818), .C(n22_adj_1819), 
         .D(r_spi_next_valid[29]), .Z(n30_adj_1816)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(r_spi_next_valid[13]), .B(r_spi_next_valid[30]), 
         .C(r_spi_next_valid[22]), .D(r_spi_next_valid[21]), .Z(n26_adj_1817)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(r_spi_next_valid[23]), .B(r_spi_next_valid[26]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i12_4_lut (.A(r_spi_next_valid[7]), .B(r_spi_next_valid[25]), .C(r_spi_next_valid[27]), 
         .D(r_spi_next_valid[11]), .Z(n28_adj_1818)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(r_spi_next_valid[15]), .B(r_spi_next_valid[19]), .Z(n22_adj_1819)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    CCU2D sub_10_add_2_33 (.A0(r_spi_next_valid[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16266), .S0(n20[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(70[50:73])
    defparam sub_10_add_2_33.INIT0 = 16'h5555;
    defparam sub_10_add_2_33.INIT1 = 16'h0000;
    defparam sub_10_add_2_33.INJECT1_0 = "NO";
    defparam sub_10_add_2_33.INJECT1_1 = "NO";
    LUT4 i15_4_lut_adj_97 (.A(n17_adj_1820), .B(n30_adj_1821), .C(n26_adj_1822), 
         .D(n18_adj_1823), .Z(n16903)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut_adj_97.init = 16'hfffe;
    LUT4 i1_2_lut_adj_98 (.A(r_spi_next_valid[0]), .B(r_spi_next_valid[3]), 
         .Z(n17_adj_1820)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_98.init = 16'heeee;
    LUT4 i14_4_lut_adj_99 (.A(r_spi_next_valid[4]), .B(n28_adj_1824), .C(n22_adj_1825), 
         .D(r_spi_next_valid[1]), .Z(n30_adj_1821)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14_4_lut_adj_99.init = 16'hfffe;
    LUT4 i10_4_lut_adj_100 (.A(r_spi_next_valid[24]), .B(r_spi_next_valid[9]), 
         .C(r_spi_next_valid[8]), .D(r_spi_next_valid[5]), .Z(n26_adj_1822)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut_adj_100.init = 16'hfffe;
    LUT4 i2_2_lut_adj_101 (.A(r_spi_next_valid[17]), .B(r_spi_next_valid[6]), 
         .Z(n18_adj_1823)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_101.init = 16'heeee;
    LUT4 i12_4_lut_adj_102 (.A(r_spi_next_valid[16]), .B(r_spi_next_valid[18]), 
         .C(r_spi_next_valid[2]), .D(r_spi_next_valid[10]), .Z(n28_adj_1824)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut_adj_102.init = 16'hfffe;
    LUT4 i6_2_lut_adj_103 (.A(r_spi_next_valid[12]), .B(r_spi_next_valid[20]), 
         .Z(n22_adj_1825)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut_adj_103.init = 16'heeee;
    \SPI_Master_With_Single_CS(SPI_MODE=3)_U1  SPI_module (.clk_c(clk_c), 
            .r_SM_CS({r_SM_CS}), .adc1_cs_c(adc1_cs_c), .o_SPI_CS_n_N_675(o_SPI_CS_n_N_675), 
            .n18866(n18866), .clk_c_enable_766(clk_c_enable_766), .n13261(n13261), 
            .o_tx_dv(o_tx_dv), .adc_data_1({adc_data_1}), .sdi0_c(sdi0_c), 
            .\r_tx_byte[6] (r_tx_byte[6]), .adc1_sck_c(adc1_sck_c), .rx_dv_1(rx_dv_1), 
            .clk_c_enable_461(clk_c_enable_461), .n19260(n19260), .n19259(n19259), 
            .sdo0_c(sdo0_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(82[2] 106[2])
    
endmodule
//
// Verilog Description of module \SPI_Master_With_Single_CS(SPI_MODE=3)_U1 
//

module \SPI_Master_With_Single_CS(SPI_MODE=3)_U1  (clk_c, r_SM_CS, adc1_cs_c, 
            o_SPI_CS_n_N_675, n18866, clk_c_enable_766, n13261, o_tx_dv, 
            adc_data_1, sdi0_c, \r_tx_byte[6] , adc1_sck_c, rx_dv_1, 
            clk_c_enable_461, n19260, n19259, sdo0_c) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    output [1:0]r_SM_CS;
    output adc1_cs_c;
    input o_SPI_CS_n_N_675;
    input n18866;
    input clk_c_enable_766;
    input n13261;
    input o_tx_dv;
    output [15:0]adc_data_1;
    input sdi0_c;
    input \r_tx_byte[6] ;
    output adc1_sck_c;
    output rx_dv_1;
    input clk_c_enable_461;
    input n19260;
    input n19259;
    output sdo0_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    wire [-1:0]r_CS_Inactive_Count;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(76[38:57])
    
    wire n18047;
    wire [1:0]r_SM_CS_1__N_647;
    
    wire clk_c_enable_124, w_Master_Ready, n18868, n8456;
    wire [1:0]tx_count;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(65[18:26])
    wire [1:0]tx_count_1__N_661;
    
    wire n8203;
    
    FD1P3AY r_CS_Inactive_Count_i0 (.D(n18047), .SP(r_SM_CS[0]), .CK(clk_c), 
            .Q(r_CS_Inactive_Count[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_CS_Inactive_Count_i0.GSR = "ENABLED";
    FD1S3AX r_SM_CS_i0 (.D(r_SM_CS_1__N_647[0]), .CK(clk_c), .Q(r_SM_CS[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_SM_CS_i0.GSR = "ENABLED";
    FD1P3AY r_CS_n_50 (.D(o_SPI_CS_n_N_675), .SP(clk_c_enable_124), .CK(clk_c), 
            .Q(adc1_cs_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_CS_n_50.GSR = "ENABLED";
    LUT4 r_SM_CS_1__I_0_54_Mux_0_i3_4_lut (.A(n18866), .B(r_CS_Inactive_Count[0]), 
         .C(r_SM_CS[1]), .D(r_SM_CS[0]), .Z(r_SM_CS_1__N_647[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(126[7] 176[14])
    defparam r_SM_CS_1__I_0_54_Mux_0_i3_4_lut.init = 16'hca0a;
    LUT4 i12438_3_lut_4_lut (.A(w_Master_Ready), .B(n18868), .C(r_SM_CS[1]), 
         .D(r_CS_Inactive_Count[0]), .Z(n18047)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C+!(D)))) */ ;
    defparam i12438_3_lut_4_lut.init = 16'h0f02;
    LUT4 i3437_3_lut_4_lut (.A(w_Master_Ready), .B(n18868), .C(r_SM_CS[1]), 
         .D(r_CS_Inactive_Count[0]), .Z(n8456)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i3437_3_lut_4_lut.init = 16'hf202;
    FD1P3IX r_TX_Count_i1 (.D(tx_count_1__N_661[1]), .SP(clk_c_enable_766), 
            .CD(n13261), .CK(clk_c), .Q(tx_count[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_TX_Count_i1.GSR = "ENABLED";
    FD1S3IX r_SM_CS_i1 (.D(n8456), .CK(clk_c), .CD(n8203), .Q(r_SM_CS[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_SM_CS_i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(r_SM_CS[0]), .B(w_Master_Ready), .C(r_SM_CS[1]), 
         .D(n18868), .Z(clk_c_enable_124)) /* synthesis lut_function=(!(A ((C+(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h555d;
    LUT4 i3229_1_lut (.A(r_SM_CS[0]), .Z(n8203)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam i3229_1_lut.init = 16'h5555;
    LUT4 i2564_2_lut_rep_210 (.A(tx_count[0]), .B(tx_count[1]), .Z(n18868)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2564_2_lut_rep_210.init = 16'heeee;
    LUT4 i2678_2_lut_4_lut_4_lut (.A(tx_count[0]), .B(tx_count[1]), .C(w_Master_Ready), 
         .D(o_tx_dv), .Z(tx_count_1__N_661[0])) /* synthesis lut_function=(A ((D)+!C)+!A !(((D)+!C)+!B)) */ ;
    defparam i2678_2_lut_4_lut_4_lut.init = 16'haa4a;
    LUT4 i2686_3_lut_4_lut (.A(tx_count[0]), .B(tx_count[1]), .C(w_Master_Ready), 
         .D(o_tx_dv), .Z(tx_count_1__N_661[1])) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;
    defparam i2686_3_lut_4_lut.init = 16'hcc8c;
    FD1P3IX r_TX_Count_i0 (.D(tx_count_1__N_661[0]), .SP(clk_c_enable_766), 
            .CD(n13261), .CK(clk_c), .Q(tx_count[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=2, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=106 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(124[5] 177[8])
    defparam r_TX_Count_i0.GSR = "ENABLED";
    \SPI_Master(SPI_MODE=3)_U0  SPI_Master_Inst (.clk_c(clk_c), .o_tx_dv(o_tx_dv), 
            .adc_data_1({adc_data_1}), .sdi0_c(sdi0_c), .\r_tx_byte[6] (\r_tx_byte[6] ), 
            .w_Master_Ready(w_Master_Ready), .adc1_sck_c(adc1_sck_c), .rx_dv_1(rx_dv_1), 
            .clk_c_enable_461(clk_c_enable_461), .n19260(n19260), .n19259(n19259), 
            .sdo0_c(sdo0_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master_with_single_cs.v(87[9] 110[5])
    
endmodule
//
// Verilog Description of module \SPI_Master(SPI_MODE=3)_U0 
//

module \SPI_Master(SPI_MODE=3)_U0  (clk_c, o_tx_dv, adc_data_1, sdi0_c, 
            \r_tx_byte[6] , w_Master_Ready, adc1_sck_c, rx_dv_1, clk_c_enable_461, 
            n19260, n19259, sdo0_c) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input o_tx_dv;
    output [15:0]adc_data_1;
    input sdi0_c;
    input \r_tx_byte[6] ;
    output w_Master_Ready;
    output adc1_sck_c;
    output rx_dv_1;
    input clk_c_enable_461;
    input n19260;
    input n19259;
    output sdo0_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    
    wire leading_edge, n17874, leading_edge_N_767;
    wire [6:0]r_SPI_Clk_Edges;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(70[13:28])
    
    wire n18842;
    wire [6:0]r_SPI_Clk_Edges_6__N_700;
    
    wire n9104, clk_c_enable_107, o_TX_Ready_N_756, clk_c_enable_333, 
        n10337;
    wire [1:0]r_SPI_Clk_Count;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(68[41:56])
    wire [1:0]n9;
    
    wire clk_c_enable_309;
    wire [6:0]r_SPI_Clk_Edges_6__N_722;
    
    wire clk_c_enable_300;
    wire [7:0]r_TX_Byte;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(74[13:22])
    
    wire r_TX_Ready;
    wire [2:0]r_TX_Bit_Count;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(78[13:27])
    
    wire n8353;
    wire [3:0]r_RX_Bit_Count;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(77[13:27])
    
    wire n8360, n7447, r_SPI_Clk, clk_c_enable_161, n9100, n9102, 
        n5_adj_1814, n6, n17435, n7451, r_TX_Ready_N_760, trailing_edge, 
        clk_c_enable_695, n9092, n18893, n9108, n9110, n9116, n18895, 
        n9112, n18909, n18870, clk_c_enable_541, n18906, clk_c_enable_546, 
        r_SPI_Clk_N_773, clk_c_enable_338, o_SPI_MOSI_N_763, clk_c_enable_542, 
        clk_c_enable_547, clk_c_enable_551, clk_c_enable_552, clk_c_enable_554, 
        clk_c_enable_555, clk_c_enable_565, clk_c_enable_570, clk_c_enable_571, 
        clk_c_enable_573, n12, clk_c_enable_579, n18869, n18902, n18905, 
        n18050, clk_c_enable_598, clk_c_enable_621, n9094, n9090;
    
    FD1S3IX r_Leading_Edge_109 (.D(leading_edge_N_767), .CK(clk_c), .CD(n17874), 
            .Q(leading_edge)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_Leading_Edge_109.GSR = "ENABLED";
    LUT4 i8529_3_lut_4_lut (.A(r_SPI_Clk_Edges[4]), .B(n18842), .C(o_tx_dv), 
         .D(r_SPI_Clk_Edges[5]), .Z(r_SPI_Clk_Edges_6__N_700[5])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i8529_3_lut_4_lut.init = 16'hfef1;
    LUT4 i1_3_lut_4_lut (.A(r_SPI_Clk_Edges[4]), .B(n18842), .C(r_SPI_Clk_Edges[5]), 
         .D(r_SPI_Clk_Edges[6]), .Z(n9104)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i1_3_lut_4_lut.init = 16'hfe01;
    FD1P3AX o_RX_Byte_i0_i0 (.D(sdi0_c), .SP(clk_c_enable_107), .CK(clk_c), 
            .Q(adc_data_1[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i0.GSR = "ENABLED";
    LUT4 i3260_2_lut_rep_179 (.A(o_TX_Ready_N_756), .B(o_tx_dv), .Z(clk_c_enable_333)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam i3260_2_lut_rep_179.init = 16'h1111;
    LUT4 i5245_1_lut_2_lut (.A(o_TX_Ready_N_756), .B(o_tx_dv), .Z(n10337)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam i5245_1_lut_2_lut.init = 16'heeee;
    LUT4 i3677_2_lut_3_lut (.A(o_TX_Ready_N_756), .B(o_tx_dv), .C(r_SPI_Clk_Count[0]), 
         .Z(n9[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam i3677_2_lut_3_lut.init = 16'he1e1;
    LUT4 i452_2_lut_rep_180 (.A(r_SPI_Clk_Count[0]), .B(o_TX_Ready_N_756), 
         .Z(clk_c_enable_309)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(137[12] 139[10])
    defparam i452_2_lut_rep_180.init = 16'h2222;
    LUT4 i3161_2_lut_3_lut (.A(r_SPI_Clk_Count[0]), .B(o_TX_Ready_N_756), 
         .C(r_SPI_Clk_Edges[0]), .Z(r_SPI_Clk_Edges_6__N_722[0])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(137[12] 139[10])
    defparam i3161_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i1_2_lut_3_lut (.A(r_SPI_Clk_Count[0]), .B(o_TX_Ready_N_756), .C(o_tx_dv), 
         .Z(clk_c_enable_300)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(137[12] 139[10])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    FD1P3AX r_TX_Byte__i1 (.D(\r_tx_byte[6] ), .SP(o_tx_dv), .CK(clk_c), 
            .Q(r_TX_Byte[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(155[7] 161[10])
    defparam r_TX_Byte__i1.GSR = "ENABLED";
    FD1S3IX r_SPI_Clk_Edges_i0 (.D(r_SPI_Clk_Edges_6__N_722[0]), .CK(clk_c), 
            .CD(o_tx_dv), .Q(r_SPI_Clk_Edges[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i0.GSR = "ENABLED";
    FD1S3AX r_TX_Ready_107 (.D(w_Master_Ready), .CK(clk_c), .Q(r_TX_Ready)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_TX_Ready_107.GSR = "ENABLED";
    LUT4 i3597_2_lut (.A(r_TX_Bit_Count[0]), .B(leading_edge), .Z(n8353)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam i3597_2_lut.init = 16'h6666;
    FD1S3JX r_RX_Bit_Count_i0_i0 (.D(n8360), .CK(clk_c), .PD(w_Master_Ready), 
            .Q(r_RX_Bit_Count[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam r_RX_Bit_Count_i0_i0.GSR = "ENABLED";
    FD1S3IX r_SPI_Clk_Count__i0 (.D(n9[0]), .CK(clk_c), .CD(n7447), .Q(r_SPI_Clk_Count[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Count__i0.GSR = "ENABLED";
    FD1S3AY o_SPI_Clk_124 (.D(r_SPI_Clk), .CK(clk_c), .Q(adc1_sck_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(240[7] 242[10])
    defparam o_SPI_Clk_124.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(leading_edge), .B(w_Master_Ready), .Z(clk_c_enable_161)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_88 (.A(r_TX_Bit_Count[1]), .B(r_TX_Bit_Count[0]), 
         .Z(n9100)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_88.init = 16'h9999;
    FD1S3JX r_TX_Bit_Count_i0_i0 (.D(n8353), .CK(clk_c), .PD(w_Master_Ready), 
            .Q(r_TX_Bit_Count[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam r_TX_Bit_Count_i0_i0.GSR = "ENABLED";
    FD1P3JX r_TX_Bit_Count_i0_i1 (.D(n9100), .SP(clk_c_enable_161), .PD(w_Master_Ready), 
            .CK(clk_c), .Q(r_TX_Bit_Count[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam r_TX_Bit_Count_i0_i1.GSR = "ENABLED";
    FD1P3JX r_TX_Bit_Count_i0_i2 (.D(n9102), .SP(clk_c_enable_161), .PD(w_Master_Ready), 
            .CK(clk_c), .Q(r_TX_Bit_Count[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam r_TX_Bit_Count_i0_i2.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(r_TX_Bit_Count[2]), .B(r_TX_Bit_Count[1]), .C(r_TX_Bit_Count[0]), 
         .Z(n9102)) /* synthesis lut_function=(A (B+(C))+!A !(B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha9a9;
    LUT4 r_TX_Bit_Count_2__I_0_i5_3_lut (.A(r_TX_Byte[6]), .B(r_TX_Byte[7]), 
         .C(r_TX_Bit_Count[0]), .Z(n5_adj_1814)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(184[37:51])
    defparam r_TX_Bit_Count_2__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 equal_212_i6_2_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .Z(n6)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(220[9:34])
    defparam equal_212_i6_2_lut.init = 16'hbbbb;
    FD1S3IX o_TX_Ready_106 (.D(o_TX_Ready_N_756), .CK(clk_c), .CD(o_tx_dv), 
            .Q(w_Master_Ready)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam o_TX_Ready_106.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Count__i1 (.D(n17435), .SP(clk_c_enable_333), .CD(n7447), 
            .CK(clk_c), .Q(r_SPI_Clk_Count[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Count__i1.GSR = "ENABLED";
    FD1P3IX o_RX_DV_114 (.D(r_TX_Ready_N_760), .SP(clk_c_enable_461), .CD(n7451), 
            .CK(clk_c), .Q(rx_dv_1)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam o_RX_DV_114.GSR = "DISABLED";
    LUT4 i15_2_lut (.A(r_SPI_Clk_Count[0]), .B(r_SPI_Clk_Count[1]), .Z(n17435)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(133[14] 135[12])
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_89 (.A(trailing_edge), .B(w_Master_Ready), .Z(clk_c_enable_695)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_89.init = 16'heeee;
    LUT4 i1_2_lut_adj_90 (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .Z(n9092)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_90.init = 16'h9999;
    LUT4 i1_2_lut_3_lut_4_lut (.A(r_SPI_Clk_Edges[2]), .B(n18893), .C(r_SPI_Clk_Edges[4]), 
         .D(r_SPI_Clk_Edges[3]), .Z(n9108)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e1;
    FD1P3IX r_SPI_Clk_Edges_i6 (.D(n9104), .SP(clk_c_enable_309), .CD(o_tx_dv), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i6.GSR = "ENABLED";
    FD1P3AX r_SPI_Clk_Edges_i5 (.D(r_SPI_Clk_Edges_6__N_700[5]), .SP(clk_c_enable_300), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i5.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i4 (.D(n9108), .SP(clk_c_enable_309), .CD(o_tx_dv), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i4.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i3 (.D(n9110), .SP(clk_c_enable_309), .CD(o_tx_dv), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i3.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i2 (.D(n9116), .SP(clk_c_enable_309), .CD(o_tx_dv), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i2.GSR = "ENABLED";
    FD1S3IX r_Trailing_Edge_110 (.D(n18895), .CK(clk_c), .CD(n10337), 
            .Q(trailing_edge)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_Trailing_Edge_110.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i1 (.D(n9112), .SP(clk_c_enable_309), .CD(o_tx_dv), 
            .CK(clk_c), .Q(r_SPI_Clk_Edges[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_Edges_i1.GSR = "ENABLED";
    LUT4 i12650_2_lut_3_lut_4_lut (.A(trailing_edge), .B(w_Master_Ready), 
         .C(n18909), .D(n18870), .Z(clk_c_enable_541)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i12650_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i12644_2_lut_3_lut_4_lut (.A(trailing_edge), .B(w_Master_Ready), 
         .C(n18906), .D(n18870), .Z(clk_c_enable_546)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i12644_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 equal_220_i6_2_lut_rep_212 (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .Z(n18870)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(220[9:34])
    defparam equal_220_i6_2_lut_rep_212.init = 16'heeee;
    LUT4 i2542_2_lut (.A(w_Master_Ready), .B(n19260), .Z(n7451)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam i2542_2_lut.init = 16'h4444;
    FD1P3AX r_TX_Byte__i2 (.D(n19259), .SP(o_tx_dv), .CK(clk_c), .Q(r_TX_Byte[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(155[7] 161[10])
    defparam r_TX_Byte__i2.GSR = "ENABLED";
    LUT4 r_TX_Ready_I_0_1_lut (.A(r_TX_Ready), .Z(r_TX_Ready_N_760)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(113[15:28])
    defparam r_TX_Ready_I_0_1_lut.init = 16'h5555;
    LUT4 i2770_2_lut_rep_235 (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
         .Z(n18893)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i2770_2_lut_rep_235.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_91 (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
         .C(r_SPI_Clk_Edges[2]), .Z(n9116)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i1_2_lut_3_lut_adj_91.init = 16'he1e1;
    LUT4 i1_2_lut_3_lut_4_lut_adj_92 (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
         .C(r_SPI_Clk_Edges[3]), .D(r_SPI_Clk_Edges[2]), .Z(n9110)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i1_2_lut_3_lut_4_lut_adj_92.init = 16'hf0e1;
    LUT4 i2786_2_lut_rep_184_3_lut_4_lut (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
         .C(r_SPI_Clk_Edges[3]), .D(r_SPI_Clk_Edges[2]), .Z(n18842)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(128[30:49])
    defparam i2786_2_lut_rep_184_3_lut_4_lut.init = 16'hfffe;
    FD1P3AY r_SPI_Clk_112 (.D(r_SPI_Clk_N_773), .SP(clk_c_enable_333), .CK(clk_c), 
            .Q(r_SPI_Clk)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(108[10] 141[8])
    defparam r_SPI_Clk_112.GSR = "ENABLED";
    FD1P3AX o_SPI_MOSI_117 (.D(o_SPI_MOSI_N_763), .SP(clk_c_enable_338), 
            .CK(clk_c), .Q(sdo0_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam o_SPI_MOSI_117.GSR = "ENABLED";
    LUT4 i8469_2_lut_rep_237 (.A(r_SPI_Clk_Count[0]), .B(r_SPI_Clk_Count[1]), 
         .Z(n18895)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8469_2_lut_rep_237.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(r_SPI_Clk_Count[0]), .B(r_SPI_Clk_Count[1]), 
         .C(o_tx_dv), .D(o_TX_Ready_N_756), .Z(n17874)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfff8;
    LUT4 i2537_2_lut_3_lut_4_lut (.A(r_SPI_Clk_Count[0]), .B(r_SPI_Clk_Count[1]), 
         .C(o_tx_dv), .D(o_TX_Ready_N_756), .Z(n7447)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2537_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i12684_2_lut (.A(r_SPI_Clk_Count[0]), .B(r_SPI_Clk_Count[1]), .Z(leading_edge_N_767)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(127[18:56])
    defparam i12684_2_lut.init = 16'h2222;
    FD1P3AX o_RX_Byte_i0_i1 (.D(sdi0_c), .SP(clk_c_enable_541), .CK(clk_c), 
            .Q(adc_data_1[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i1.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i2 (.D(sdi0_c), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(adc_data_1[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i2.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i3 (.D(sdi0_c), .SP(clk_c_enable_546), .CK(clk_c), 
            .Q(adc_data_1[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i3.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i4 (.D(sdi0_c), .SP(clk_c_enable_547), .CK(clk_c), 
            .Q(adc_data_1[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i5 (.D(sdi0_c), .SP(clk_c_enable_551), .CK(clk_c), 
            .Q(adc_data_1[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i6 (.D(sdi0_c), .SP(clk_c_enable_552), .CK(clk_c), 
            .Q(adc_data_1[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i6.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i7 (.D(sdi0_c), .SP(clk_c_enable_554), .CK(clk_c), 
            .Q(adc_data_1[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i7.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i8 (.D(sdi0_c), .SP(clk_c_enable_555), .CK(clk_c), 
            .Q(adc_data_1[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i8.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i9 (.D(sdi0_c), .SP(clk_c_enable_565), .CK(clk_c), 
            .Q(adc_data_1[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i9.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i10 (.D(sdi0_c), .SP(clk_c_enable_570), .CK(clk_c), 
            .Q(adc_data_1[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i10.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i11 (.D(sdi0_c), .SP(clk_c_enable_571), .CK(clk_c), 
            .Q(adc_data_1[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i11.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i12 (.D(sdi0_c), .SP(clk_c_enable_573), .CK(clk_c), 
            .Q(adc_data_1[12])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i12.GSR = "ENABLED";
    LUT4 i12669_4_lut (.A(r_SPI_Clk_Edges[4]), .B(n12), .C(r_SPI_Clk_Edges[2]), 
         .D(r_SPI_Clk_Edges[0]), .Z(o_TX_Ready_N_756)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i12669_4_lut.init = 16'h0001;
    FD1P3AX o_RX_Byte_i0_i13 (.D(sdi0_c), .SP(clk_c_enable_579), .CK(clk_c), 
            .Q(adc_data_1[13])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i13.GSR = "ENABLED";
    LUT4 i12615_2_lut_3_lut_4_lut (.A(trailing_edge), .B(w_Master_Ready), 
         .C(n6), .D(n18906), .Z(clk_c_enable_571)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i12615_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i5_4_lut (.A(r_SPI_Clk_Edges[6]), .B(r_SPI_Clk_Edges[5]), .C(r_SPI_Clk_Edges[1]), 
         .D(r_SPI_Clk_Edges[3]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i12647_2_lut_4_lut (.A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), 
         .C(n18869), .D(n18870), .Z(clk_c_enable_542)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam i12647_2_lut_4_lut.init = 16'h0040;
    LUT4 i8479_2_lut_rep_244 (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .Z(n18902)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8479_2_lut_rep_244.init = 16'h8888;
    LUT4 i12636_2_lut_4_lut (.A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), 
         .C(n18869), .D(n18905), .Z(clk_c_enable_552)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam i12636_2_lut_4_lut.init = 16'h0040;
    LUT4 i12441_3_lut_4_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .C(sdi0_c), .D(adc_data_1[15]), .Z(n18050)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i12441_3_lut_4_lut.init = 16'hf780;
    LUT4 i12618_2_lut_4_lut (.A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), 
         .C(n18869), .D(n6), .Z(clk_c_enable_570)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam i12618_2_lut_4_lut.init = 16'h0040;
    LUT4 i12605_2_lut_4_lut (.A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), 
         .C(n18869), .D(n18902), .Z(clk_c_enable_598)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam i12605_2_lut_4_lut.init = 16'h4000;
    LUT4 equal_216_i6_2_lut_rep_247 (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[3]), 
         .Z(n18905)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(220[9:34])
    defparam equal_216_i6_2_lut_rep_247.init = 16'hdddd;
    LUT4 i8456_2_lut_rep_248 (.A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), 
         .Z(n18906)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8456_2_lut_rep_248.init = 16'h8888;
    LUT4 i9214_2_lut_rep_202_3_lut_4_lut (.A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), 
         .C(w_Master_Ready), .D(trailing_edge), .Z(clk_c_enable_621)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i9214_2_lut_rep_202_3_lut_4_lut.init = 16'h0800;
    LUT4 equal_218_i5_2_lut_rep_251 (.A(r_RX_Bit_Count[0]), .B(r_RX_Bit_Count[1]), 
         .Z(n18909)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(220[9:34])
    defparam equal_218_i5_2_lut_rep_251.init = 16'hdddd;
    LUT4 i3599_2_lut (.A(r_RX_Bit_Count[0]), .B(trailing_edge), .Z(n8360)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam i3599_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_93 (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
         .Z(n9112)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_93.init = 16'h9999;
    LUT4 i12476_2_lut (.A(r_SPI_Clk), .B(r_SPI_Clk_Count[0]), .Z(r_SPI_Clk_N_773)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(127[14] 135[12])
    defparam i12476_2_lut.init = 16'h6666;
    FD1P3AX o_RX_Byte_i0_i14 (.D(sdi0_c), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(adc_data_1[14])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i14.GSR = "ENABLED";
    LUT4 i3256_2_lut (.A(leading_edge), .B(w_Master_Ready), .Z(clk_c_enable_338)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(172[10] 186[8])
    defparam i3256_2_lut.init = 16'h2222;
    FD1P3AX o_RX_Byte_i0_i15 (.D(n18050), .SP(clk_c_enable_621), .CK(clk_c), 
            .Q(adc_data_1[15])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam o_RX_Byte_i0_i15.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(r_TX_Bit_Count[1]), .B(r_TX_Bit_Count[2]), .C(n5_adj_1814), 
         .Z(o_SPI_MOSI_N_763)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    FD1P3JX r_RX_Bit_Count_i0_i1 (.D(n9092), .SP(clk_c_enable_695), .PD(w_Master_Ready), 
            .CK(clk_c), .Q(r_RX_Bit_Count[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam r_RX_Bit_Count_i0_i1.GSR = "ENABLED";
    FD1P3JX r_RX_Bit_Count_i0_i2 (.D(n9094), .SP(clk_c_enable_695), .PD(w_Master_Ready), 
            .CK(clk_c), .Q(r_RX_Bit_Count[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam r_RX_Bit_Count_i0_i2.GSR = "ENABLED";
    FD1P3JX r_RX_Bit_Count_i0_i3 (.D(n9090), .SP(clk_c_enable_695), .PD(w_Master_Ready), 
            .CK(clk_c), .Q(r_RX_Bit_Count[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=87, LSE_RLINE=110 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(205[5] 228[8])
    defparam r_RX_Bit_Count_i0_i3.GSR = "ENABLED";
    LUT4 i12613_2_lut_3_lut_4_lut (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(n18902), .D(n18869), .Z(clk_c_enable_573)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(221[38:56])
    defparam i12613_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_3_lut_4_lut_adj_94 (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(r_RX_Bit_Count[2]), .D(r_RX_Bit_Count[3]), .Z(n9090)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(221[38:56])
    defparam i1_3_lut_4_lut_adj_94.init = 16'hfe01;
    LUT4 i12642_2_lut_3_lut_4_lut (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(n18905), .D(n18869), .Z(clk_c_enable_547)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(221[38:56])
    defparam i12642_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_95 (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(r_RX_Bit_Count[2]), .Z(n9094)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(221[38:56])
    defparam i1_2_lut_3_lut_adj_95.init = 16'he1e1;
    LUT4 i12523_2_lut_3_lut_4_lut (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(n18870), .D(n18869), .Z(clk_c_enable_107)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(221[38:56])
    defparam i12523_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i12631_2_lut_3_lut_4_lut (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
         .C(n6), .D(n18869), .Z(clk_c_enable_555)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(221[38:56])
    defparam i12631_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i458_2_lut_rep_211 (.A(trailing_edge), .B(w_Master_Ready), .Z(n18869)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i458_2_lut_rep_211.init = 16'h2222;
    LUT4 i12639_2_lut_3_lut_4_lut (.A(trailing_edge), .B(w_Master_Ready), 
         .C(n18909), .D(n18905), .Z(clk_c_enable_551)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i12639_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i12633_2_lut_3_lut_4_lut (.A(trailing_edge), .B(w_Master_Ready), 
         .C(n18906), .D(n18905), .Z(clk_c_enable_554)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i12633_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i12607_2_lut_3_lut_4_lut (.A(trailing_edge), .B(w_Master_Ready), 
         .C(n18902), .D(n18909), .Z(clk_c_enable_579)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i12607_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i12624_2_lut_3_lut_4_lut (.A(trailing_edge), .B(w_Master_Ready), 
         .C(n6), .D(n18909), .Z(clk_c_enable_565)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/spi_master.v(218[12] 227[10])
    defparam i12624_2_lut_3_lut_4_lut.init = 16'h0002;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \rstn_gen(RST_CNT=50000000) 
//

module \rstn_gen(RST_CNT=50000000)  (rst_n, clk_c, n19259, n19260, n17955, 
            n17959, n24, clk_c_enable_26, GND_net, clk_c_enable_451, 
            clk_c_enable_461) /* synthesis syn_module_defined=1 */ ;
    output rst_n;
    input clk_c;
    input n19259;
    output n19260;
    input n17955;
    input n17959;
    input n24;
    output clk_c_enable_26;
    input GND_net;
    output clk_c_enable_451;
    output clk_c_enable_461;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    
    wire clk_c_enable_758;
    wire [31:0]rst_cnt;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(10[12:19])
    wire [31:0]rst_cnt_31__N_508;
    
    wire n16746, n16745, n16744, n16743, n16742, n16741, n16740, 
        n16739, n16738, n16737, n16736, n16735, n16734, n16733, 
        n16732, n16731, n61, n62, n17, n15, n11, n12, n6, 
        n6_adj_1811, n23, n15_adj_1812, n22, n16, n19, n6_adj_1813;
    
    FD1P3AX rst_n_18 (.D(n19259), .SP(clk_c_enable_758), .CK(clk_c), .Q(rst_n)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_n_18.GSR = "DISABLED";
    FD1S3AX rst_cnt_i0 (.D(rst_cnt_31__N_508[0]), .CK(clk_c), .Q(rst_cnt[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i0.GSR = "DISABLED";
    FD1S3AX rst_cnt_i1 (.D(rst_cnt_31__N_508[1]), .CK(clk_c), .Q(rst_cnt[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i1.GSR = "DISABLED";
    FD1S3AX rst_cnt_i2 (.D(rst_cnt_31__N_508[2]), .CK(clk_c), .Q(rst_cnt[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i2.GSR = "DISABLED";
    FD1S3AX rst_cnt_i3 (.D(rst_cnt_31__N_508[3]), .CK(clk_c), .Q(rst_cnt[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i3.GSR = "DISABLED";
    FD1S3AX rst_cnt_i4 (.D(rst_cnt_31__N_508[4]), .CK(clk_c), .Q(rst_cnt[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i4.GSR = "DISABLED";
    FD1S3AX rst_cnt_i5 (.D(rst_cnt_31__N_508[5]), .CK(clk_c), .Q(rst_cnt[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i5.GSR = "DISABLED";
    FD1S3AX rst_cnt_i6 (.D(rst_cnt_31__N_508[6]), .CK(clk_c), .Q(rst_cnt[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i6.GSR = "DISABLED";
    FD1S3AY rst_cnt_i7 (.D(rst_cnt_31__N_508[7]), .CK(clk_c), .Q(rst_cnt[7])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i7.GSR = "DISABLED";
    FD1S3AX rst_cnt_i8 (.D(rst_cnt_31__N_508[8]), .CK(clk_c), .Q(rst_cnt[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i8.GSR = "DISABLED";
    FD1S3AX rst_cnt_i9 (.D(rst_cnt_31__N_508[9]), .CK(clk_c), .Q(rst_cnt[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i9.GSR = "DISABLED";
    FD1S3AX rst_cnt_i10 (.D(rst_cnt_31__N_508[10]), .CK(clk_c), .Q(rst_cnt[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i10.GSR = "DISABLED";
    FD1S3AX rst_cnt_i11 (.D(rst_cnt_31__N_508[11]), .CK(clk_c), .Q(rst_cnt[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i11.GSR = "DISABLED";
    FD1S3AY rst_cnt_i12 (.D(rst_cnt_31__N_508[12]), .CK(clk_c), .Q(rst_cnt[12])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i12.GSR = "DISABLED";
    FD1S3AY rst_cnt_i13 (.D(rst_cnt_31__N_508[13]), .CK(clk_c), .Q(rst_cnt[13])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i13.GSR = "DISABLED";
    FD1S3AY rst_cnt_i14 (.D(rst_cnt_31__N_508[14]), .CK(clk_c), .Q(rst_cnt[14])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i14.GSR = "DISABLED";
    FD1S3AY rst_cnt_i15 (.D(rst_cnt_31__N_508[15]), .CK(clk_c), .Q(rst_cnt[15])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i15.GSR = "DISABLED";
    FD1S3AX rst_cnt_i16 (.D(rst_cnt_31__N_508[16]), .CK(clk_c), .Q(rst_cnt[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i16.GSR = "DISABLED";
    FD1S3AY rst_cnt_i17 (.D(rst_cnt_31__N_508[17]), .CK(clk_c), .Q(rst_cnt[17])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i17.GSR = "DISABLED";
    FD1S3AX rst_cnt_i18 (.D(rst_cnt_31__N_508[18]), .CK(clk_c), .Q(rst_cnt[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i18.GSR = "DISABLED";
    FD1S3AY rst_cnt_i19 (.D(rst_cnt_31__N_508[19]), .CK(clk_c), .Q(rst_cnt[19])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i19.GSR = "DISABLED";
    FD1S3AY rst_cnt_i20 (.D(rst_cnt_31__N_508[20]), .CK(clk_c), .Q(rst_cnt[20])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i20.GSR = "DISABLED";
    FD1S3AY rst_cnt_i21 (.D(rst_cnt_31__N_508[21]), .CK(clk_c), .Q(rst_cnt[21])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i21.GSR = "DISABLED";
    FD1S3AY rst_cnt_i22 (.D(rst_cnt_31__N_508[22]), .CK(clk_c), .Q(rst_cnt[22])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i22.GSR = "DISABLED";
    FD1S3AY rst_cnt_i23 (.D(rst_cnt_31__N_508[23]), .CK(clk_c), .Q(rst_cnt[23])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i23.GSR = "DISABLED";
    FD1S3AX rst_cnt_i24 (.D(rst_cnt_31__N_508[24]), .CK(clk_c), .Q(rst_cnt[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i24.GSR = "DISABLED";
    FD1S3AY rst_cnt_i25 (.D(rst_cnt_31__N_508[25]), .CK(clk_c), .Q(rst_cnt[25])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i25.GSR = "DISABLED";
    FD1S3AX rst_cnt_i26 (.D(rst_cnt_31__N_508[26]), .CK(clk_c), .Q(rst_cnt[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i26.GSR = "DISABLED";
    FD1S3AX rst_cnt_i27 (.D(rst_cnt_31__N_508[27]), .CK(clk_c), .Q(rst_cnt[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i27.GSR = "DISABLED";
    FD1S3AX rst_cnt_i28 (.D(rst_cnt_31__N_508[28]), .CK(clk_c), .Q(rst_cnt[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i28.GSR = "DISABLED";
    FD1S3AX rst_cnt_i29 (.D(rst_cnt_31__N_508[29]), .CK(clk_c), .Q(rst_cnt[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i29.GSR = "DISABLED";
    FD1S3AX rst_cnt_i30 (.D(rst_cnt_31__N_508[30]), .CK(clk_c), .Q(rst_cnt[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i30.GSR = "DISABLED";
    FD1S3AX rst_cnt_i31 (.D(rst_cnt_31__N_508[31]), .CK(clk_c), .Q(rst_cnt[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_cnt_i31.GSR = "DISABLED";
    LUT4 i12511_4_lut (.A(n19260), .B(n17955), .C(n17959), .D(n24), 
         .Z(clk_c_enable_26)) /* synthesis lut_function=(!(A (B+!(C+(D))))) */ ;
    defparam i12511_4_lut.init = 16'h7775;
    CCU2D sub_4_add_2_33 (.A0(rst_cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16746), .S0(rst_cnt_31__N_508[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_33.INIT0 = 16'h5555;
    defparam sub_4_add_2_33.INIT1 = 16'h0000;
    defparam sub_4_add_2_33.INJECT1_0 = "NO";
    defparam sub_4_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_31 (.A0(rst_cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16745), .COUT(n16746), .S0(rst_cnt_31__N_508[29]), 
          .S1(rst_cnt_31__N_508[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_31.INIT0 = 16'h5555;
    defparam sub_4_add_2_31.INIT1 = 16'h5555;
    defparam sub_4_add_2_31.INJECT1_0 = "NO";
    defparam sub_4_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_29 (.A0(rst_cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16744), .COUT(n16745), .S0(rst_cnt_31__N_508[27]), 
          .S1(rst_cnt_31__N_508[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_29.INIT0 = 16'h5555;
    defparam sub_4_add_2_29.INIT1 = 16'h5555;
    defparam sub_4_add_2_29.INJECT1_0 = "NO";
    defparam sub_4_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_27 (.A0(rst_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16743), .COUT(n16744), .S0(rst_cnt_31__N_508[25]), 
          .S1(rst_cnt_31__N_508[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_27.INIT0 = 16'h5555;
    defparam sub_4_add_2_27.INIT1 = 16'h5555;
    defparam sub_4_add_2_27.INJECT1_0 = "NO";
    defparam sub_4_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_25 (.A0(rst_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16742), .COUT(n16743), .S0(rst_cnt_31__N_508[23]), 
          .S1(rst_cnt_31__N_508[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_25.INIT0 = 16'h5555;
    defparam sub_4_add_2_25.INIT1 = 16'h5555;
    defparam sub_4_add_2_25.INJECT1_0 = "NO";
    defparam sub_4_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_23 (.A0(rst_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16741), .COUT(n16742), .S0(rst_cnt_31__N_508[21]), 
          .S1(rst_cnt_31__N_508[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_23.INIT0 = 16'h5555;
    defparam sub_4_add_2_23.INIT1 = 16'h5555;
    defparam sub_4_add_2_23.INJECT1_0 = "NO";
    defparam sub_4_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_21 (.A0(rst_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16740), .COUT(n16741), .S0(rst_cnt_31__N_508[19]), 
          .S1(rst_cnt_31__N_508[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_21.INIT0 = 16'h5555;
    defparam sub_4_add_2_21.INIT1 = 16'h5555;
    defparam sub_4_add_2_21.INJECT1_0 = "NO";
    defparam sub_4_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_19 (.A0(rst_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16739), .COUT(n16740), .S0(rst_cnt_31__N_508[17]), 
          .S1(rst_cnt_31__N_508[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_19.INIT0 = 16'h5555;
    defparam sub_4_add_2_19.INIT1 = 16'h5555;
    defparam sub_4_add_2_19.INJECT1_0 = "NO";
    defparam sub_4_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_17 (.A0(rst_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16738), .COUT(n16739), .S0(rst_cnt_31__N_508[15]), 
          .S1(rst_cnt_31__N_508[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_17.INIT0 = 16'h5555;
    defparam sub_4_add_2_17.INIT1 = 16'h5555;
    defparam sub_4_add_2_17.INJECT1_0 = "NO";
    defparam sub_4_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_15 (.A0(rst_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16737), .COUT(n16738), .S0(rst_cnt_31__N_508[13]), 
          .S1(rst_cnt_31__N_508[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_15.INIT0 = 16'h5555;
    defparam sub_4_add_2_15.INIT1 = 16'h5555;
    defparam sub_4_add_2_15.INJECT1_0 = "NO";
    defparam sub_4_add_2_15.INJECT1_1 = "NO";
    FD1P3AX rst_n_18_rep_265 (.D(n19259), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(clk_c_enable_451)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_n_18_rep_265.GSR = "DISABLED";
    CCU2D sub_4_add_2_13 (.A0(rst_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16736), .COUT(n16737), .S0(rst_cnt_31__N_508[11]), 
          .S1(rst_cnt_31__N_508[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_13.INIT0 = 16'h5555;
    defparam sub_4_add_2_13.INIT1 = 16'h5555;
    defparam sub_4_add_2_13.INJECT1_0 = "NO";
    defparam sub_4_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_11 (.A0(rst_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16735), .COUT(n16736), .S0(rst_cnt_31__N_508[9]), 
          .S1(rst_cnt_31__N_508[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_11.INIT0 = 16'h5555;
    defparam sub_4_add_2_11.INIT1 = 16'h5555;
    defparam sub_4_add_2_11.INJECT1_0 = "NO";
    defparam sub_4_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_9 (.A0(rst_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16734), .COUT(n16735), .S0(rst_cnt_31__N_508[7]), 
          .S1(rst_cnt_31__N_508[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_9.INIT0 = 16'h5555;
    defparam sub_4_add_2_9.INIT1 = 16'h5555;
    defparam sub_4_add_2_9.INJECT1_0 = "NO";
    defparam sub_4_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_7 (.A0(rst_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16733), .COUT(n16734), .S0(rst_cnt_31__N_508[5]), 
          .S1(rst_cnt_31__N_508[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_7.INIT0 = 16'h5555;
    defparam sub_4_add_2_7.INIT1 = 16'h5555;
    defparam sub_4_add_2_7.INJECT1_0 = "NO";
    defparam sub_4_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_5 (.A0(rst_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16732), .COUT(n16733), .S0(rst_cnt_31__N_508[3]), 
          .S1(rst_cnt_31__N_508[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_5.INIT0 = 16'h5555;
    defparam sub_4_add_2_5.INIT1 = 16'h5555;
    defparam sub_4_add_2_5.INJECT1_0 = "NO";
    defparam sub_4_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_3 (.A0(rst_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16731), .COUT(n16732), .S0(rst_cnt_31__N_508[1]), 
          .S1(rst_cnt_31__N_508[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_3.INIT0 = 16'h5555;
    defparam sub_4_add_2_3.INIT1 = 16'h5555;
    defparam sub_4_add_2_3.INJECT1_0 = "NO";
    defparam sub_4_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n61), .B1(n62), .C1(rst_cnt[0]), .D1(GND_net), .COUT(n16731), 
          .S1(rst_cnt_31__N_508[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(29[28:42])
    defparam sub_4_add_2_1.INIT0 = 16'h0000;
    defparam sub_4_add_2_1.INIT1 = 16'he1e1;
    defparam sub_4_add_2_1.INJECT1_0 = "NO";
    defparam sub_4_add_2_1.INJECT1_1 = "NO";
    FD1P3AX rst_n_18_rep_263 (.D(n19259), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(n19260)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_n_18_rep_263.GSR = "DISABLED";
    LUT4 i12703_2_lut (.A(n61), .B(n62), .Z(clk_c_enable_758)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i12703_2_lut.init = 16'h1111;
    LUT4 i9_4_lut (.A(n17), .B(n15), .C(n11), .D(n12), .Z(n61)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(rst_cnt[2]), .B(rst_cnt[18]), .C(rst_cnt[8]), .D(rst_cnt[20]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut (.A(rst_cnt[3]), .B(rst_cnt[10]), .Z(n15)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(rst_cnt[0]), .B(rst_cnt[24]), .C(n6), .D(rst_cnt[4]), 
         .Z(n11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(rst_cnt[6]), .B(rst_cnt[16]), .C(n6_adj_1811), .D(rst_cnt[12]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(rst_cnt[5]), .B(rst_cnt[1]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_adj_84 (.A(rst_cnt[17]), .B(rst_cnt[9]), .Z(n6_adj_1811)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i2_2_lut_adj_84.init = 16'heeee;
    LUT4 i12_4_lut (.A(n23), .B(n15_adj_1812), .C(n22), .D(n16), .Z(n62)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n19), .B(rst_cnt[19]), .C(rst_cnt[28]), .D(rst_cnt[14]), 
         .Z(n23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_85 (.A(rst_cnt[23]), .B(rst_cnt[26]), .C(n6_adj_1813), 
         .D(rst_cnt[13]), .Z(n15_adj_1812)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i2_4_lut_adj_85.init = 16'hfffe;
    LUT4 i9_4_lut_adj_86 (.A(rst_cnt[25]), .B(rst_cnt[27]), .C(rst_cnt[30]), 
         .D(rst_cnt[7]), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i9_4_lut_adj_86.init = 16'hfffe;
    LUT4 i3_2_lut (.A(rst_cnt[21]), .B(rst_cnt[11]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i6_2_lut (.A(rst_cnt[22]), .B(rst_cnt[15]), .Z(n19)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_adj_87 (.A(rst_cnt[29]), .B(rst_cnt[31]), .Z(n6_adj_1813)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(28[16:28])
    defparam i2_2_lut_adj_87.init = 16'heeee;
    FD1P3AX rst_n_18_rep_264 (.D(n19259), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(clk_c_enable_461)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/rstn_gen.v(21[7] 36[4])
    defparam rst_n_18_rep_264.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module integrator_seq
//

module integrator_seq (n18918, n18865, o_sw_N_1360, GND_net, T1, clk_c, 
            n18861, \seq_SM[1] , T3, r_mode, sw4_c, clk_c_enable_635, 
            o_sw_N_1396, n18917, integrator_4_en, n19260, cp4) /* synthesis syn_module_defined=1 */ ;
    output n18918;
    input n18865;
    input [31:0]o_sw_N_1360;
    input GND_net;
    input [31:0]T1;
    input clk_c;
    input n18861;
    output \seq_SM[1] ;
    input [31:0]T3;
    input [1:0]r_mode;
    output sw4_c;
    input clk_c_enable_635;
    input [31:0]o_sw_N_1396;
    output n18917;
    input integrator_4_en;
    input n19260;
    output cp4;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    
    wire n6947, n14293, clk_c_enable_208, n16433;
    wire [31:0]r_t1;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[12:16])
    
    wire n16434, n16432, n16539;
    wire [31:0]r_t2;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[18:22])
    wire [31:0]n133;
    
    wire n16540, n16431, n16538;
    wire [31:0]r_t3;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[24:28])
    wire [31:0]n133_adj_1809;
    
    wire n16537, n16536, n16535, n16534, n16430, n16429, n16533, 
        n16428, n16427, n16532, n16531, n6626;
    wire [4:0]seq_SM;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(21[11:17])
    
    wire n18724, n6556, n6591, n6521, n18725, n16530, n16529, 
        n16528, n16426, n16527, n9996, n16425, n16526, n16424, 
        n16525, n16423, n16422, n16524, n16421, n16523, n16522;
    wire [31:0]n133_adj_1810;
    
    wire n16521, n16420, n16520, n16419, n16418, n16417, n18831, 
        n10543, n18832, n16519, n16416, n16415, n16518, n16517, 
        n16516, n16515, n16514, n16513, n16414, n16512, n16413, 
        n16511, n16510, n16509, n16412, n16508, n16411, n16507, 
        n16410, n18726, clk_c_enable_787, n18931, n17897, n6, n18824, 
        n16409, n6_adj_1779, n50, n18932, n17921, n16408, n17923, 
        n16407, n16406, n16405, n16404, n16403, n16402, n16401, 
        n16400, n16399, n16398, n16397, clk_c_enable_354, n16396, 
        n16395, n10549, clk_c_enable_666, n10547, clk_c_enable_707, 
        n16330, n16329, n16328, n16327, n16326, n16325, n16324, 
        n16323, n16322, n16321, n13, n7, n16320, n16319, n16318, 
        n16317, n16316, n16315, n18930, n16554, n16553, n16552, 
        n16551, n16550, n16442, n16549, n16548, n16547, n16441, 
        n16546, n16440, n16545, n16544, n16439, n16543, n16438, 
        n16542, n16437, n16541, n16436, n16435;
    
    LUT4 i12499_4_lut (.A(n6947), .B(n14293), .C(n18918), .D(n18865), 
         .Z(clk_c_enable_208)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D)))) */ ;
    defparam i12499_4_lut.init = 16'hc0c4;
    CCU2D sub_1896_add_2_15 (.A0(r_t1[13]), .B0(o_sw_N_1360[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[14]), .B1(o_sw_N_1360[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16433), .COUT(n16434));
    defparam sub_1896_add_2_15.INIT0 = 16'h5999;
    defparam sub_1896_add_2_15.INIT1 = 16'h5999;
    defparam sub_1896_add_2_15.INJECT1_0 = "NO";
    defparam sub_1896_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_13 (.A0(r_t1[11]), .B0(o_sw_N_1360[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[12]), .B1(o_sw_N_1360[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16432), .COUT(n16433));
    defparam sub_1896_add_2_13.INIT0 = 16'h5999;
    defparam sub_1896_add_2_13.INIT1 = 16'h5999;
    defparam sub_1896_add_2_13.INJECT1_0 = "NO";
    defparam sub_1896_add_2_13.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_3 (.A0(r_t2[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16539), .COUT(n16540), .S0(n133[1]), .S1(n133[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_3.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_3.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n16539), .S1(n133[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_1.INIT0 = 16'hF000;
    defparam r_t2_2430_add_4_1.INIT1 = 16'h0555;
    defparam r_t2_2430_add_4_1.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_11 (.A0(r_t1[9]), .B0(o_sw_N_1360[9]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[10]), .B1(o_sw_N_1360[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16431), .COUT(n16432));
    defparam sub_1896_add_2_11.INIT0 = 16'h5999;
    defparam sub_1896_add_2_11.INIT1 = 16'h5999;
    defparam sub_1896_add_2_11.INJECT1_0 = "NO";
    defparam sub_1896_add_2_11.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_33 (.A0(r_t3[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16538), .S0(n133_adj_1809[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_33.INIT1 = 16'h0000;
    defparam r_t3_2428_add_4_33.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_33.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_31 (.A0(r_t3[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16537), .COUT(n16538), .S0(n133_adj_1809[29]), .S1(n133_adj_1809[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_31.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_31.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_29 (.A0(r_t3[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16536), .COUT(n16537), .S0(n133_adj_1809[27]), .S1(n133_adj_1809[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_29.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_29.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_27 (.A0(r_t3[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16535), .COUT(n16536), .S0(n133_adj_1809[25]), .S1(n133_adj_1809[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_27.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_27.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_25 (.A0(r_t3[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16534), .COUT(n16535), .S0(n133_adj_1809[23]), .S1(n133_adj_1809[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_25.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_25.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_9 (.A0(r_t1[7]), .B0(o_sw_N_1360[7]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[8]), .B1(o_sw_N_1360[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16430), .COUT(n16431));
    defparam sub_1896_add_2_9.INIT0 = 16'h5999;
    defparam sub_1896_add_2_9.INIT1 = 16'h5999;
    defparam sub_1896_add_2_9.INJECT1_0 = "NO";
    defparam sub_1896_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_7 (.A0(r_t1[5]), .B0(o_sw_N_1360[5]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[6]), .B1(o_sw_N_1360[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16429), .COUT(n16430));
    defparam sub_1896_add_2_7.INIT0 = 16'h5999;
    defparam sub_1896_add_2_7.INIT1 = 16'h5999;
    defparam sub_1896_add_2_7.INJECT1_0 = "NO";
    defparam sub_1896_add_2_7.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_23 (.A0(r_t3[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16533), .COUT(n16534), .S0(n133_adj_1809[21]), .S1(n133_adj_1809[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_23.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_23.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_5 (.A0(r_t1[3]), .B0(o_sw_N_1360[3]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[4]), .B1(o_sw_N_1360[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16428), .COUT(n16429));
    defparam sub_1896_add_2_5.INIT0 = 16'h5999;
    defparam sub_1896_add_2_5.INIT1 = 16'h5999;
    defparam sub_1896_add_2_5.INJECT1_0 = "NO";
    defparam sub_1896_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_3 (.A0(r_t1[1]), .B0(o_sw_N_1360[1]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[2]), .B1(o_sw_N_1360[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16427), .COUT(n16428));
    defparam sub_1896_add_2_3.INIT0 = 16'h5999;
    defparam sub_1896_add_2_3.INIT1 = 16'h5999;
    defparam sub_1896_add_2_3.INJECT1_0 = "NO";
    defparam sub_1896_add_2_3.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_21 (.A0(r_t3[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16532), .COUT(n16533), .S0(n133_adj_1809[19]), .S1(n133_adj_1809[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_21.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_21.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_19 (.A0(r_t3[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16531), .COUT(n16532), .S0(n133_adj_1809[17]), .S1(n133_adj_1809[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_19.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_19.INJECT1_1 = "NO";
    LUT4 n6556_bdd_2_lut (.A(n6626), .B(seq_SM[0]), .Z(n18724)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n6556_bdd_2_lut.init = 16'heeee;
    LUT4 n6556_bdd_4_lut (.A(n6556), .B(n6591), .C(seq_SM[0]), .D(n6521), 
         .Z(n18725)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam n6556_bdd_4_lut.init = 16'hcac0;
    CCU2D r_t3_2428_add_4_17 (.A0(r_t3[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16530), .COUT(n16531), .S0(n133_adj_1809[15]), .S1(n133_adj_1809[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_17.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_17.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[0]), .B1(o_sw_N_1360[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n16427));
    defparam sub_1896_add_2_1.INIT0 = 16'h0000;
    defparam sub_1896_add_2_1.INIT1 = 16'h5999;
    defparam sub_1896_add_2_1.INJECT1_0 = "NO";
    defparam sub_1896_add_2_1.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_15 (.A0(r_t3[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16529), .COUT(n16530), .S0(n133_adj_1809[13]), .S1(n133_adj_1809[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_15.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_15.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_13 (.A0(r_t3[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16528), .COUT(n16529), .S0(n133_adj_1809[11]), .S1(n133_adj_1809[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_13.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_13.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_33 (.A0(r_t1[31]), .B0(T1[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16426), .S1(n6556));
    defparam sub_1898_add_2_33.INIT0 = 16'h5999;
    defparam sub_1898_add_2_33.INIT1 = 16'h0000;
    defparam sub_1898_add_2_33.INJECT1_0 = "NO";
    defparam sub_1898_add_2_33.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_11 (.A0(r_t3[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16527), .COUT(n16528), .S0(n133_adj_1809[9]), .S1(n133_adj_1809[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_11.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_11.INJECT1_1 = "NO";
    FD1P3IX seq_SM__i0 (.D(n9996), .SP(clk_c_enable_208), .CD(n18918), 
            .CK(clk_c), .Q(seq_SM[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=357, LSE_RLINE=369 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam seq_SM__i0.GSR = "DISABLED";
    CCU2D sub_1898_add_2_31 (.A0(r_t1[29]), .B0(T1[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[30]), .B1(T1[30]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16425), .COUT(n16426));
    defparam sub_1898_add_2_31.INIT0 = 16'h5999;
    defparam sub_1898_add_2_31.INIT1 = 16'h5999;
    defparam sub_1898_add_2_31.INJECT1_0 = "NO";
    defparam sub_1898_add_2_31.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_9 (.A0(r_t3[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16526), .COUT(n16527), .S0(n133_adj_1809[7]), .S1(n133_adj_1809[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_9.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_9.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_29 (.A0(r_t1[27]), .B0(T1[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[28]), .B1(T1[28]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16424), .COUT(n16425));
    defparam sub_1898_add_2_29.INIT0 = 16'h5999;
    defparam sub_1898_add_2_29.INIT1 = 16'h5999;
    defparam sub_1898_add_2_29.INJECT1_0 = "NO";
    defparam sub_1898_add_2_29.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_7 (.A0(r_t3[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16525), .COUT(n16526), .S0(n133_adj_1809[5]), .S1(n133_adj_1809[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_7.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_27 (.A0(r_t1[25]), .B0(T1[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[26]), .B1(T1[26]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16423), .COUT(n16424));
    defparam sub_1898_add_2_27.INIT0 = 16'h5999;
    defparam sub_1898_add_2_27.INIT1 = 16'h5999;
    defparam sub_1898_add_2_27.INJECT1_0 = "NO";
    defparam sub_1898_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_25 (.A0(r_t1[23]), .B0(T1[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[24]), .B1(T1[24]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16422), .COUT(n16423));
    defparam sub_1898_add_2_25.INIT0 = 16'h5999;
    defparam sub_1898_add_2_25.INIT1 = 16'h5999;
    defparam sub_1898_add_2_25.INJECT1_0 = "NO";
    defparam sub_1898_add_2_25.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_5 (.A0(r_t3[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16524), .COUT(n16525), .S0(n133_adj_1809[3]), .S1(n133_adj_1809[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_5.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_23 (.A0(r_t1[21]), .B0(T1[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[22]), .B1(T1[22]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16421), .COUT(n16422));
    defparam sub_1898_add_2_23.INIT0 = 16'h5999;
    defparam sub_1898_add_2_23.INIT1 = 16'h5999;
    defparam sub_1898_add_2_23.INJECT1_0 = "NO";
    defparam sub_1898_add_2_23.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_3 (.A0(r_t3[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16523), .COUT(n16524), .S0(n133_adj_1809[1]), .S1(n133_adj_1809[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t3_2428_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t3_2428_add_4_3.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_3.INJECT1_1 = "NO";
    CCU2D r_t3_2428_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n16523), .S1(n133_adj_1809[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428_add_4_1.INIT0 = 16'hF000;
    defparam r_t3_2428_add_4_1.INIT1 = 16'h0555;
    defparam r_t3_2428_add_4_1.INJECT1_0 = "NO";
    defparam r_t3_2428_add_4_1.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_33 (.A0(r_t1[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16522), .S0(n133_adj_1810[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_33.INIT1 = 16'h0000;
    defparam r_t1_2426_add_4_33.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_33.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_31 (.A0(r_t1[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16521), .COUT(n16522), .S0(n133_adj_1810[29]), .S1(n133_adj_1810[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_31.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_31.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_21 (.A0(r_t1[19]), .B0(T1[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[20]), .B1(T1[20]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16420), .COUT(n16421));
    defparam sub_1898_add_2_21.INIT0 = 16'h5999;
    defparam sub_1898_add_2_21.INIT1 = 16'h5999;
    defparam sub_1898_add_2_21.INJECT1_0 = "NO";
    defparam sub_1898_add_2_21.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_29 (.A0(r_t1[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16520), .COUT(n16521), .S0(n133_adj_1810[27]), .S1(n133_adj_1810[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_29.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_29.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_19 (.A0(r_t1[17]), .B0(T1[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[18]), .B1(T1[18]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16419), .COUT(n16420));
    defparam sub_1898_add_2_19.INIT0 = 16'h5999;
    defparam sub_1898_add_2_19.INIT1 = 16'h5999;
    defparam sub_1898_add_2_19.INJECT1_0 = "NO";
    defparam sub_1898_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_17 (.A0(r_t1[15]), .B0(T1[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[16]), .B1(T1[16]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16418), .COUT(n16419));
    defparam sub_1898_add_2_17.INIT0 = 16'h5999;
    defparam sub_1898_add_2_17.INIT1 = 16'h5999;
    defparam sub_1898_add_2_17.INJECT1_0 = "NO";
    defparam sub_1898_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_15 (.A0(r_t1[13]), .B0(T1[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[14]), .B1(T1[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16417), .COUT(n16418));
    defparam sub_1898_add_2_15.INIT0 = 16'h5999;
    defparam sub_1898_add_2_15.INIT1 = 16'h5999;
    defparam sub_1898_add_2_15.INJECT1_0 = "NO";
    defparam sub_1898_add_2_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n18918), .B(seq_SM[0]), .C(n18861), .D(n18831), 
         .Z(n10543)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'habaa;
    LUT4 i9210_2_lut_4_lut (.A(n18831), .B(n6591), .C(seq_SM[0]), .D(n18832), 
         .Z(n14293)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam i9210_2_lut_4_lut.init = 16'hffca;
    CCU2D r_t1_2426_add_4_27 (.A0(r_t1[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16519), .COUT(n16520), .S0(n133_adj_1810[25]), .S1(n133_adj_1810[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_27.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_27.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_13 (.A0(r_t1[11]), .B0(T1[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[12]), .B1(T1[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16416), .COUT(n16417));
    defparam sub_1898_add_2_13.INIT0 = 16'h5999;
    defparam sub_1898_add_2_13.INIT1 = 16'h5999;
    defparam sub_1898_add_2_13.INJECT1_0 = "NO";
    defparam sub_1898_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_11 (.A0(r_t1[9]), .B0(T1[9]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[10]), .B1(T1[10]), .C1(GND_net), .D1(GND_net), .CIN(n16415), 
          .COUT(n16416));
    defparam sub_1898_add_2_11.INIT0 = 16'h5999;
    defparam sub_1898_add_2_11.INIT1 = 16'h5999;
    defparam sub_1898_add_2_11.INJECT1_0 = "NO";
    defparam sub_1898_add_2_11.INJECT1_1 = "NO";
    FD1P3IX seq_SM__i1 (.D(seq_SM[0]), .SP(clk_c_enable_208), .CD(n18918), 
            .CK(clk_c), .Q(\seq_SM[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=357, LSE_RLINE=369 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam seq_SM__i1.GSR = "DISABLED";
    CCU2D r_t1_2426_add_4_25 (.A0(r_t1[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16518), .COUT(n16519), .S0(n133_adj_1810[23]), .S1(n133_adj_1810[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_25.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_25.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_23 (.A0(r_t1[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16517), .COUT(n16518), .S0(n133_adj_1810[21]), .S1(n133_adj_1810[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_23.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_23.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_21 (.A0(r_t1[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16516), .COUT(n16517), .S0(n133_adj_1810[19]), .S1(n133_adj_1810[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_21.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_21.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_19 (.A0(r_t1[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16515), .COUT(n16516), .S0(n133_adj_1810[17]), .S1(n133_adj_1810[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_19.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_19.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_17 (.A0(r_t1[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16514), .COUT(n16515), .S0(n133_adj_1810[15]), .S1(n133_adj_1810[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_17.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_17.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_15 (.A0(r_t1[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16513), .COUT(n16514), .S0(n133_adj_1810[13]), .S1(n133_adj_1810[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_15.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_15.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_9 (.A0(r_t1[7]), .B0(T1[7]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[8]), .B1(T1[8]), .C1(GND_net), .D1(GND_net), .CIN(n16414), 
          .COUT(n16415));
    defparam sub_1898_add_2_9.INIT0 = 16'h5999;
    defparam sub_1898_add_2_9.INIT1 = 16'h5999;
    defparam sub_1898_add_2_9.INJECT1_0 = "NO";
    defparam sub_1898_add_2_9.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_13 (.A0(r_t1[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16512), .COUT(n16513), .S0(n133_adj_1810[11]), .S1(n133_adj_1810[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_13.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_13.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_7 (.A0(r_t1[5]), .B0(T1[5]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[6]), .B1(T1[6]), .C1(GND_net), .D1(GND_net), .CIN(n16413), 
          .COUT(n16414));
    defparam sub_1898_add_2_7.INIT0 = 16'h5999;
    defparam sub_1898_add_2_7.INIT1 = 16'h5999;
    defparam sub_1898_add_2_7.INJECT1_0 = "NO";
    defparam sub_1898_add_2_7.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_11 (.A0(r_t1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16511), .COUT(n16512), .S0(n133_adj_1810[9]), .S1(n133_adj_1810[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_11.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_11.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_9 (.A0(r_t1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16510), .COUT(n16511), .S0(n133_adj_1810[7]), .S1(n133_adj_1810[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_9.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_9.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_7 (.A0(r_t1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16509), .COUT(n16510), .S0(n133_adj_1810[5]), .S1(n133_adj_1810[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_7.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_5 (.A0(r_t1[3]), .B0(T1[3]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[4]), .B1(T1[4]), .C1(GND_net), .D1(GND_net), .CIN(n16412), 
          .COUT(n16413));
    defparam sub_1898_add_2_5.INIT0 = 16'h5999;
    defparam sub_1898_add_2_5.INIT1 = 16'h5999;
    defparam sub_1898_add_2_5.INJECT1_0 = "NO";
    defparam sub_1898_add_2_5.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_5 (.A0(r_t1[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16508), .COUT(n16509), .S0(n133_adj_1810[3]), .S1(n133_adj_1810[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_5.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_3 (.A0(r_t1[1]), .B0(T1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[2]), .B1(T1[2]), .C1(GND_net), .D1(GND_net), .CIN(n16411), 
          .COUT(n16412));
    defparam sub_1898_add_2_3.INIT0 = 16'h5999;
    defparam sub_1898_add_2_3.INIT1 = 16'h5999;
    defparam sub_1898_add_2_3.INJECT1_0 = "NO";
    defparam sub_1898_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1898_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[0]), .B1(T1[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n16411));
    defparam sub_1898_add_2_1.INIT0 = 16'h0000;
    defparam sub_1898_add_2_1.INIT1 = 16'h5999;
    defparam sub_1898_add_2_1.INJECT1_0 = "NO";
    defparam sub_1898_add_2_1.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_3 (.A0(r_t1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16507), .COUT(n16508), .S0(n133_adj_1810[1]), .S1(n133_adj_1810[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t1_2426_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t1_2426_add_4_3.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_3.INJECT1_1 = "NO";
    CCU2D r_t1_2426_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n16507), .S1(n133_adj_1810[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426_add_4_1.INIT0 = 16'hF000;
    defparam r_t1_2426_add_4_1.INIT1 = 16'h0555;
    defparam r_t1_2426_add_4_1.INJECT1_0 = "NO";
    defparam r_t1_2426_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_33 (.A0(r_t3[31]), .B0(T3[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16410), .S1(n6591));
    defparam sub_1900_add_2_33.INIT0 = 16'h5999;
    defparam sub_1900_add_2_33.INIT1 = 16'h0000;
    defparam sub_1900_add_2_33.INJECT1_0 = "NO";
    defparam sub_1900_add_2_33.INJECT1_1 = "NO";
    LUT4 i12505_4_lut (.A(n18918), .B(n18726), .C(r_mode[0]), .D(r_mode[1]), 
         .Z(clk_c_enable_787)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C (D)))) */ ;
    defparam i12505_4_lut.init = 16'hafbb;
    LUT4 i83_4_lut_then_3_lut (.A(\seq_SM[1] ), .B(n6591), .C(r_mode[0]), 
         .Z(n18931)) /* synthesis lut_function=(!(A (C)+!A (B+!(C)))) */ ;
    defparam i83_4_lut_then_3_lut.init = 16'h1a1a;
    LUT4 i8181_2_lut_rep_173 (.A(n6556), .B(n6521), .Z(n18831)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8181_2_lut_rep_173.init = 16'h8888;
    LUT4 i12537_3_lut_4_lut (.A(n6556), .B(n6521), .C(seq_SM[0]), .D(\seq_SM[1] ), 
         .Z(n17897)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i12537_3_lut_4_lut.init = 16'h0007;
    LUT4 i2_2_lut (.A(\seq_SM[1] ), .B(seq_SM[0]), .Z(n6)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    LUT4 i24_3_lut_rep_166_4_lut (.A(n6556), .B(n6521), .C(seq_SM[0]), 
         .D(n6591), .Z(n18824)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i24_3_lut_rep_166_4_lut.init = 16'hf808;
    CCU2D sub_1900_add_2_31 (.A0(r_t3[29]), .B0(T3[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[30]), .B1(T3[30]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16409), .COUT(n16410));
    defparam sub_1900_add_2_31.INIT0 = 16'h5999;
    defparam sub_1900_add_2_31.INIT1 = 16'h5999;
    defparam sub_1900_add_2_31.INJECT1_0 = "NO";
    defparam sub_1900_add_2_31.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(r_mode[1]), .B(n6_adj_1779), .C(n50), .D(n18932), 
         .Z(n17921)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i3_4_lut.init = 16'h4440;
    CCU2D sub_1900_add_2_29 (.A0(r_t3[27]), .B0(T3[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[28]), .B1(T3[28]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16408), .COUT(n16409));
    defparam sub_1900_add_2_29.INIT0 = 16'h5999;
    defparam sub_1900_add_2_29.INIT1 = 16'h5999;
    defparam sub_1900_add_2_29.INJECT1_0 = "NO";
    defparam sub_1900_add_2_29.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_81 (.A(n6521), .B(seq_SM[0]), .C(n17923), .D(r_mode[0]), 
         .Z(n50)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_81.init = 16'h5011;
    CCU2D sub_1900_add_2_27 (.A0(r_t3[25]), .B0(T3[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[26]), .B1(T3[26]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16407), .COUT(n16408));
    defparam sub_1900_add_2_27.INIT0 = 16'h5999;
    defparam sub_1900_add_2_27.INIT1 = 16'h5999;
    defparam sub_1900_add_2_27.INJECT1_0 = "NO";
    defparam sub_1900_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_25 (.A0(r_t3[23]), .B0(T3[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[24]), .B1(T3[24]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16406), .COUT(n16407));
    defparam sub_1900_add_2_25.INIT0 = 16'h5999;
    defparam sub_1900_add_2_25.INIT1 = 16'h5999;
    defparam sub_1900_add_2_25.INJECT1_0 = "NO";
    defparam sub_1900_add_2_25.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(n6591), .B(seq_SM[0]), .C(\seq_SM[1] ), .Z(n17923)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut.init = 16'h0404;
    CCU2D sub_1900_add_2_23 (.A0(r_t3[21]), .B0(T3[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[22]), .B1(T3[22]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16405), .COUT(n16406));
    defparam sub_1900_add_2_23.INIT0 = 16'h5999;
    defparam sub_1900_add_2_23.INIT1 = 16'h5999;
    defparam sub_1900_add_2_23.INJECT1_0 = "NO";
    defparam sub_1900_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_21 (.A0(r_t3[19]), .B0(T3[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[20]), .B1(T3[20]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16404), .COUT(n16405));
    defparam sub_1900_add_2_21.INIT0 = 16'h5999;
    defparam sub_1900_add_2_21.INIT1 = 16'h5999;
    defparam sub_1900_add_2_21.INJECT1_0 = "NO";
    defparam sub_1900_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_19 (.A0(r_t3[17]), .B0(T3[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[18]), .B1(T3[18]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16403), .COUT(n16404));
    defparam sub_1900_add_2_19.INIT0 = 16'h5999;
    defparam sub_1900_add_2_19.INIT1 = 16'h5999;
    defparam sub_1900_add_2_19.INJECT1_0 = "NO";
    defparam sub_1900_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_17 (.A0(r_t3[15]), .B0(T3[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[16]), .B1(T3[16]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16402), .COUT(n16403));
    defparam sub_1900_add_2_17.INIT0 = 16'h5999;
    defparam sub_1900_add_2_17.INIT1 = 16'h5999;
    defparam sub_1900_add_2_17.INJECT1_0 = "NO";
    defparam sub_1900_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_15 (.A0(r_t3[13]), .B0(T3[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[14]), .B1(T3[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16401), .COUT(n16402));
    defparam sub_1900_add_2_15.INIT0 = 16'h5999;
    defparam sub_1900_add_2_15.INIT1 = 16'h5999;
    defparam sub_1900_add_2_15.INJECT1_0 = "NO";
    defparam sub_1900_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_13 (.A0(r_t3[11]), .B0(T3[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[12]), .B1(T3[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16400), .COUT(n16401));
    defparam sub_1900_add_2_13.INIT0 = 16'h5999;
    defparam sub_1900_add_2_13.INIT1 = 16'h5999;
    defparam sub_1900_add_2_13.INJECT1_0 = "NO";
    defparam sub_1900_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_11 (.A0(r_t3[9]), .B0(T3[9]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[10]), .B1(T3[10]), .C1(GND_net), .D1(GND_net), .CIN(n16399), 
          .COUT(n16400));
    defparam sub_1900_add_2_11.INIT0 = 16'h5999;
    defparam sub_1900_add_2_11.INIT1 = 16'h5999;
    defparam sub_1900_add_2_11.INJECT1_0 = "NO";
    defparam sub_1900_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_9 (.A0(r_t3[7]), .B0(T3[7]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[8]), .B1(T3[8]), .C1(GND_net), .D1(GND_net), .CIN(n16398), 
          .COUT(n16399));
    defparam sub_1900_add_2_9.INIT0 = 16'h5999;
    defparam sub_1900_add_2_9.INIT1 = 16'h5999;
    defparam sub_1900_add_2_9.INJECT1_0 = "NO";
    defparam sub_1900_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_7 (.A0(r_t3[5]), .B0(T3[5]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[6]), .B1(T3[6]), .C1(GND_net), .D1(GND_net), .CIN(n16397), 
          .COUT(n16398));
    defparam sub_1900_add_2_7.INIT0 = 16'h5999;
    defparam sub_1900_add_2_7.INIT1 = 16'h5999;
    defparam sub_1900_add_2_7.INJECT1_0 = "NO";
    defparam sub_1900_add_2_7.INJECT1_1 = "NO";
    FD1P3IX o_sw_142 (.D(n17897), .SP(clk_c_enable_354), .CD(n18918), 
            .CK(clk_c), .Q(sw4_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=357, LSE_RLINE=369 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam o_sw_142.GSR = "DISABLED";
    CCU2D sub_1900_add_2_5 (.A0(r_t3[3]), .B0(T3[3]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[4]), .B1(T3[4]), .C1(GND_net), .D1(GND_net), .CIN(n16396), 
          .COUT(n16397));
    defparam sub_1900_add_2_5.INIT0 = 16'h5999;
    defparam sub_1900_add_2_5.INIT1 = 16'h5999;
    defparam sub_1900_add_2_5.INJECT1_0 = "NO";
    defparam sub_1900_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_3 (.A0(r_t3[1]), .B0(T3[1]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[2]), .B1(T3[2]), .C1(GND_net), .D1(GND_net), .CIN(n16395), 
          .COUT(n16396));
    defparam sub_1900_add_2_3.INIT0 = 16'h5999;
    defparam sub_1900_add_2_3.INIT1 = 16'h5999;
    defparam sub_1900_add_2_3.INJECT1_0 = "NO";
    defparam sub_1900_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1900_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[0]), .B1(T3[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n16395));
    defparam sub_1900_add_2_1.INIT0 = 16'h0000;
    defparam sub_1900_add_2_1.INIT1 = 16'h5999;
    defparam sub_1900_add_2_1.INJECT1_0 = "NO";
    defparam sub_1900_add_2_1.INJECT1_1 = "NO";
    FD1P3IX r_t2_2430__i0 (.D(n133[0]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i0.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i0 (.D(n133_adj_1809[0]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i0.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i0 (.D(n133_adj_1810[0]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i0.GSR = "DISABLED";
    CCU2D sub_1902_add_2_33 (.A0(r_t2[31]), .B0(o_sw_N_1396[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16330), .S1(n6626));
    defparam sub_1902_add_2_33.INIT0 = 16'h5999;
    defparam sub_1902_add_2_33.INIT1 = 16'h0000;
    defparam sub_1902_add_2_33.INJECT1_0 = "NO";
    defparam sub_1902_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_31 (.A0(r_t2[29]), .B0(o_sw_N_1396[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[30]), .B1(o_sw_N_1396[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16329), .COUT(n16330));
    defparam sub_1902_add_2_31.INIT0 = 16'h5999;
    defparam sub_1902_add_2_31.INIT1 = 16'h5999;
    defparam sub_1902_add_2_31.INJECT1_0 = "NO";
    defparam sub_1902_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_29 (.A0(r_t2[27]), .B0(o_sw_N_1396[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[28]), .B1(o_sw_N_1396[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16328), .COUT(n16329));
    defparam sub_1902_add_2_29.INIT0 = 16'h5999;
    defparam sub_1902_add_2_29.INIT1 = 16'h5999;
    defparam sub_1902_add_2_29.INJECT1_0 = "NO";
    defparam sub_1902_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_27 (.A0(r_t2[25]), .B0(o_sw_N_1396[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[26]), .B1(o_sw_N_1396[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16327), .COUT(n16328));
    defparam sub_1902_add_2_27.INIT0 = 16'h5999;
    defparam sub_1902_add_2_27.INIT1 = 16'h5999;
    defparam sub_1902_add_2_27.INJECT1_0 = "NO";
    defparam sub_1902_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_25 (.A0(r_t2[23]), .B0(o_sw_N_1396[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[24]), .B1(o_sw_N_1396[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16326), .COUT(n16327));
    defparam sub_1902_add_2_25.INIT0 = 16'h5999;
    defparam sub_1902_add_2_25.INIT1 = 16'h5999;
    defparam sub_1902_add_2_25.INJECT1_0 = "NO";
    defparam sub_1902_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_23 (.A0(r_t2[21]), .B0(o_sw_N_1396[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[22]), .B1(o_sw_N_1396[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16325), .COUT(n16326));
    defparam sub_1902_add_2_23.INIT0 = 16'h5999;
    defparam sub_1902_add_2_23.INIT1 = 16'h5999;
    defparam sub_1902_add_2_23.INJECT1_0 = "NO";
    defparam sub_1902_add_2_23.INJECT1_1 = "NO";
    LUT4 i12543_3_lut_4_lut (.A(n18865), .B(\seq_SM[1] ), .C(seq_SM[0]), 
         .D(n18918), .Z(clk_c_enable_666)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(135[25:26])
    defparam i12543_3_lut_4_lut.init = 16'hff10;
    LUT4 i12664_3_lut_4_lut (.A(n18865), .B(\seq_SM[1] ), .C(seq_SM[0]), 
         .D(n18918), .Z(clk_c_enable_707)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(135[25:26])
    defparam i12664_3_lut_4_lut.init = 16'hff01;
    CCU2D sub_1902_add_2_21 (.A0(r_t2[19]), .B0(o_sw_N_1396[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[20]), .B1(o_sw_N_1396[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16324), .COUT(n16325));
    defparam sub_1902_add_2_21.INIT0 = 16'h5999;
    defparam sub_1902_add_2_21.INIT1 = 16'h5999;
    defparam sub_1902_add_2_21.INJECT1_0 = "NO";
    defparam sub_1902_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_19 (.A0(r_t2[17]), .B0(o_sw_N_1396[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[18]), .B1(o_sw_N_1396[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16323), .COUT(n16324));
    defparam sub_1902_add_2_19.INIT0 = 16'h5999;
    defparam sub_1902_add_2_19.INIT1 = 16'h5999;
    defparam sub_1902_add_2_19.INJECT1_0 = "NO";
    defparam sub_1902_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_17 (.A0(r_t2[15]), .B0(o_sw_N_1396[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[16]), .B1(o_sw_N_1396[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16322), .COUT(n16323));
    defparam sub_1902_add_2_17.INIT0 = 16'h5999;
    defparam sub_1902_add_2_17.INIT1 = 16'h5999;
    defparam sub_1902_add_2_17.INJECT1_0 = "NO";
    defparam sub_1902_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_15 (.A0(r_t2[13]), .B0(o_sw_N_1396[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[14]), .B1(o_sw_N_1396[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16321), .COUT(n16322));
    defparam sub_1902_add_2_15.INIT0 = 16'h5999;
    defparam sub_1902_add_2_15.INIT1 = 16'h5999;
    defparam sub_1902_add_2_15.INJECT1_0 = "NO";
    defparam sub_1902_add_2_15.INJECT1_1 = "NO";
    LUT4 seq_SM_4__I_0_i6_2_lut_rep_259 (.A(seq_SM[0]), .B(\seq_SM[1] ), 
         .Z(n18917)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam seq_SM_4__I_0_i6_2_lut_rep_259.init = 16'hbbbb;
    LUT4 i12789_2_lut_3_lut_3_lut (.A(seq_SM[0]), .B(\seq_SM[1] ), .C(n6626), 
         .Z(n9996)) /* synthesis lut_function=(!(A+(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i12789_2_lut_3_lut_3_lut.init = 16'h1515;
    LUT4 i2213_2_lut_rep_174_3_lut (.A(seq_SM[0]), .B(\seq_SM[1] ), .C(n6626), 
         .Z(n18832)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i2213_2_lut_rep_174_3_lut.init = 16'h4040;
    LUT4 i3148_3_lut_3_lut (.A(seq_SM[0]), .B(\seq_SM[1] ), .C(n6626), 
         .Z(n6947)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i3148_3_lut_3_lut.init = 16'h8c8c;
    LUT4 i12726_2_lut_rep_260 (.A(integrator_4_en), .B(n19260), .Z(n18918)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(34[10] 185[8])
    defparam i12726_2_lut_rep_260.init = 16'h7777;
    LUT4 i2_3_lut_4_lut (.A(integrator_4_en), .B(n19260), .C(\seq_SM[1] ), 
         .D(seq_SM[0]), .Z(n6_adj_1779)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(34[10] 185[8])
    defparam i2_3_lut_4_lut.init = 16'h0888;
    LUT4 i1_3_lut_4_lut (.A(integrator_4_en), .B(n19260), .C(seq_SM[0]), 
         .D(n6626), .Z(n13)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(34[10] 185[8])
    defparam i1_3_lut_4_lut.init = 16'hff80;
    LUT4 i1_2_lut_3_lut_4_lut (.A(integrator_4_en), .B(n19260), .C(r_mode[0]), 
         .D(r_mode[1]), .Z(n7)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(34[10] 185[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    CCU2D sub_1902_add_2_13 (.A0(r_t2[11]), .B0(o_sw_N_1396[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[12]), .B1(o_sw_N_1396[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16320), .COUT(n16321));
    defparam sub_1902_add_2_13.INIT0 = 16'h5999;
    defparam sub_1902_add_2_13.INIT1 = 16'h5999;
    defparam sub_1902_add_2_13.INJECT1_0 = "NO";
    defparam sub_1902_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_11 (.A0(r_t2[9]), .B0(o_sw_N_1396[9]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[10]), .B1(o_sw_N_1396[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16319), .COUT(n16320));
    defparam sub_1902_add_2_11.INIT0 = 16'h5999;
    defparam sub_1902_add_2_11.INIT1 = 16'h5999;
    defparam sub_1902_add_2_11.INJECT1_0 = "NO";
    defparam sub_1902_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_9 (.A0(r_t2[7]), .B0(o_sw_N_1396[7]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[8]), .B1(o_sw_N_1396[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16318), .COUT(n16319));
    defparam sub_1902_add_2_9.INIT0 = 16'h5999;
    defparam sub_1902_add_2_9.INIT1 = 16'h5999;
    defparam sub_1902_add_2_9.INJECT1_0 = "NO";
    defparam sub_1902_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_7 (.A0(r_t2[5]), .B0(o_sw_N_1396[5]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[6]), .B1(o_sw_N_1396[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16317), .COUT(n16318));
    defparam sub_1902_add_2_7.INIT0 = 16'h5999;
    defparam sub_1902_add_2_7.INIT1 = 16'h5999;
    defparam sub_1902_add_2_7.INJECT1_0 = "NO";
    defparam sub_1902_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_5 (.A0(r_t2[3]), .B0(o_sw_N_1396[3]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[4]), .B1(o_sw_N_1396[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16316), .COUT(n16317));
    defparam sub_1902_add_2_5.INIT0 = 16'h5999;
    defparam sub_1902_add_2_5.INIT1 = 16'h5999;
    defparam sub_1902_add_2_5.INJECT1_0 = "NO";
    defparam sub_1902_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_3 (.A0(r_t2[1]), .B0(o_sw_N_1396[1]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[2]), .B1(o_sw_N_1396[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16315), .COUT(n16316));
    defparam sub_1902_add_2_3.INIT0 = 16'h5999;
    defparam sub_1902_add_2_3.INIT1 = 16'h5999;
    defparam sub_1902_add_2_3.INJECT1_0 = "NO";
    defparam sub_1902_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1902_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[0]), .B1(o_sw_N_1396[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n16315));
    defparam sub_1902_add_2_1.INIT0 = 16'h0000;
    defparam sub_1902_add_2_1.INIT1 = 16'h5999;
    defparam sub_1902_add_2_1.INJECT1_0 = "NO";
    defparam sub_1902_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_82 (.A(seq_SM[0]), .B(n6591), .C(n18861), 
         .D(n18918), .Z(n10547)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;
    defparam i1_3_lut_4_lut_adj_82.init = 16'hff08;
    FD1P3IX r_t2_2430__i31 (.D(n133[31]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i31.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i30 (.D(n133[30]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i30.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i29 (.D(n133[29]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i29.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i28 (.D(n133[28]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i28.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i27 (.D(n133[27]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i27.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i26 (.D(n133[26]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i26.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i25 (.D(n133[25]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i25.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i24 (.D(n133[24]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i24.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i23 (.D(n133[23]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i23.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i22 (.D(n133[22]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i22.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i21 (.D(n133[21]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i21.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i20 (.D(n133[20]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i20.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i19 (.D(n133[19]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i19.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i18 (.D(n133[18]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i18.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i17 (.D(n133[17]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i17.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i16 (.D(n133[16]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i16.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i15 (.D(n133[15]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i15.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i14 (.D(n133[14]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i14.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i13 (.D(n133[13]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i13.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i12 (.D(n133[12]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i12.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i11 (.D(n133[11]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i11.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i10 (.D(n133[10]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i10.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i9 (.D(n133[9]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i9.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i8 (.D(n133[8]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i8.GSR = "DISABLED";
    LUT4 i83_4_lut_else_3_lut (.A(\seq_SM[1] ), .B(n6521), .C(r_mode[0]), 
         .D(n6556), .Z(n18930)) /* synthesis lut_function=(!(A (C)+!A (((D)+!C)+!B))) */ ;
    defparam i83_4_lut_else_3_lut.init = 16'h0a4a;
    FD1P3IX r_t2_2430__i7 (.D(n133[7]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i7.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i6 (.D(n133[6]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i6.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i5 (.D(n133[5]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i5.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i4 (.D(n133[4]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i4.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i3 (.D(n133[3]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i3.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i2 (.D(n133[2]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i2.GSR = "DISABLED";
    FD1P3IX r_t2_2430__i1 (.D(n133[1]), .SP(clk_c_enable_635), .CD(n10549), 
            .CK(clk_c), .Q(r_t2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430__i1.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i31 (.D(n133_adj_1809[31]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i31.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i30 (.D(n133_adj_1809[30]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i30.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i29 (.D(n133_adj_1809[29]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i29.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i28 (.D(n133_adj_1809[28]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i28.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i27 (.D(n133_adj_1809[27]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i27.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i26 (.D(n133_adj_1809[26]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i26.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i25 (.D(n133_adj_1809[25]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i25.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i24 (.D(n133_adj_1809[24]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i24.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i23 (.D(n133_adj_1809[23]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i23.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i22 (.D(n133_adj_1809[22]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i22.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i21 (.D(n133_adj_1809[21]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i21.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i20 (.D(n133_adj_1809[20]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i20.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i19 (.D(n133_adj_1809[19]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i19.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i18 (.D(n133_adj_1809[18]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i18.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i17 (.D(n133_adj_1809[17]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i17.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i16 (.D(n133_adj_1809[16]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i16.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i15 (.D(n133_adj_1809[15]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i15.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i14 (.D(n133_adj_1809[14]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i14.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i13 (.D(n133_adj_1809[13]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i13.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i12 (.D(n133_adj_1809[12]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i12.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i11 (.D(n133_adj_1809[11]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i11.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i10 (.D(n133_adj_1809[10]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i10.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i9 (.D(n133_adj_1809[9]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i9.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i8 (.D(n133_adj_1809[8]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i8.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i7 (.D(n133_adj_1809[7]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i7.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i6 (.D(n133_adj_1809[6]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i6.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i5 (.D(n133_adj_1809[5]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i5.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i4 (.D(n133_adj_1809[4]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i4.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i3 (.D(n133_adj_1809[3]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i3.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i2 (.D(n133_adj_1809[2]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i2.GSR = "DISABLED";
    FD1P3IX r_t3_2428__i1 (.D(n133_adj_1809[1]), .SP(clk_c_enable_666), 
            .CD(n10547), .CK(clk_c), .Q(r_t3[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2428__i1.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i31 (.D(n133_adj_1810[31]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i31.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i30 (.D(n133_adj_1810[30]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i30.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i29 (.D(n133_adj_1810[29]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i29.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i28 (.D(n133_adj_1810[28]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i28.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i27 (.D(n133_adj_1810[27]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i27.GSR = "DISABLED";
    CCU2D r_t2_2430_add_4_33 (.A0(r_t2[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16554), .S0(n133[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_33.INIT1 = 16'h0000;
    defparam r_t2_2430_add_4_33.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_33.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_31 (.A0(r_t2[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16553), .COUT(n16554), .S0(n133[29]), .S1(n133[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_31.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_31.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_29 (.A0(r_t2[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16552), .COUT(n16553), .S0(n133[27]), .S1(n133[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_29.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_29.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_27 (.A0(r_t2[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16551), .COUT(n16552), .S0(n133[25]), .S1(n133[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_27.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_27.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_25 (.A0(r_t2[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16550), .COUT(n16551), .S0(n133[23]), .S1(n133[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_25.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_25.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_33 (.A0(r_t1[31]), .B0(o_sw_N_1360[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16442), .S1(n6521));
    defparam sub_1896_add_2_33.INIT0 = 16'h5999;
    defparam sub_1896_add_2_33.INIT1 = 16'h0000;
    defparam sub_1896_add_2_33.INJECT1_0 = "NO";
    defparam sub_1896_add_2_33.INJECT1_1 = "NO";
    FD1P3IX r_t1_2426__i26 (.D(n133_adj_1810[26]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i26.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i25 (.D(n133_adj_1810[25]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i25.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i24 (.D(n133_adj_1810[24]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i24.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i23 (.D(n133_adj_1810[23]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i23.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i22 (.D(n133_adj_1810[22]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i22.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i21 (.D(n133_adj_1810[21]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i21.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i20 (.D(n133_adj_1810[20]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i20.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i19 (.D(n133_adj_1810[19]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i19.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i18 (.D(n133_adj_1810[18]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i18.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i17 (.D(n133_adj_1810[17]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i17.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i16 (.D(n133_adj_1810[16]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i16.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i15 (.D(n133_adj_1810[15]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i15.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i14 (.D(n133_adj_1810[14]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i14.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i13 (.D(n133_adj_1810[13]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i13.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i12 (.D(n133_adj_1810[12]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i12.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i11 (.D(n133_adj_1810[11]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i11.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i10 (.D(n133_adj_1810[10]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i10.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i9 (.D(n133_adj_1810[9]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i9.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i8 (.D(n133_adj_1810[8]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i8.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i7 (.D(n133_adj_1810[7]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i7.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i6 (.D(n133_adj_1810[6]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i6.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i5 (.D(n133_adj_1810[5]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i5.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i4 (.D(n133_adj_1810[4]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i4.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i3 (.D(n133_adj_1810[3]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i3.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i2 (.D(n133_adj_1810[2]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i2.GSR = "DISABLED";
    FD1P3IX r_t1_2426__i1 (.D(n133_adj_1810[1]), .SP(clk_c_enable_707), 
            .CD(n10543), .CK(clk_c), .Q(r_t1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2426__i1.GSR = "DISABLED";
    PFUMX i12874 (.BLUT(n18725), .ALUT(n18724), .C0(\seq_SM[1] ), .Z(n18726));
    LUT4 i12768_4_lut (.A(n7), .B(n18824), .C(n13), .D(\seq_SM[1] ), 
         .Z(clk_c_enable_354)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i12768_4_lut.init = 16'h0511;
    CCU2D r_t2_2430_add_4_23 (.A0(r_t2[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16549), .COUT(n16550), .S0(n133[21]), .S1(n133[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_23.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_23.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_21 (.A0(r_t2[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16548), .COUT(n16549), .S0(n133[19]), .S1(n133[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_21.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_21.INJECT1_1 = "NO";
    PFUMX i12938 (.BLUT(n18930), .ALUT(n18931), .C0(seq_SM[0]), .Z(n18932));
    CCU2D r_t2_2430_add_4_19 (.A0(r_t2[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16547), .COUT(n16548), .S0(n133[17]), .S1(n133[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_19.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_19.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_31 (.A0(r_t1[29]), .B0(o_sw_N_1360[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[30]), .B1(o_sw_N_1360[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16441), .COUT(n16442));
    defparam sub_1896_add_2_31.INIT0 = 16'h5999;
    defparam sub_1896_add_2_31.INIT1 = 16'h5999;
    defparam sub_1896_add_2_31.INJECT1_0 = "NO";
    defparam sub_1896_add_2_31.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_17 (.A0(r_t2[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16546), .COUT(n16547), .S0(n133[15]), .S1(n133[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_17.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_17.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_29 (.A0(r_t1[27]), .B0(o_sw_N_1360[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[28]), .B1(o_sw_N_1360[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16440), .COUT(n16441));
    defparam sub_1896_add_2_29.INIT0 = 16'h5999;
    defparam sub_1896_add_2_29.INIT1 = 16'h5999;
    defparam sub_1896_add_2_29.INJECT1_0 = "NO";
    defparam sub_1896_add_2_29.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_15 (.A0(r_t2[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16545), .COUT(n16546), .S0(n133[13]), .S1(n133[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_15.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_15.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_13 (.A0(r_t2[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16544), .COUT(n16545), .S0(n133[11]), .S1(n133[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_13.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_13.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_27 (.A0(r_t1[25]), .B0(o_sw_N_1360[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[26]), .B1(o_sw_N_1360[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16439), .COUT(n16440));
    defparam sub_1896_add_2_27.INIT0 = 16'h5999;
    defparam sub_1896_add_2_27.INIT1 = 16'h5999;
    defparam sub_1896_add_2_27.INJECT1_0 = "NO";
    defparam sub_1896_add_2_27.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_11 (.A0(r_t2[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16543), .COUT(n16544), .S0(n133[9]), .S1(n133[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_11.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_11.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_25 (.A0(r_t1[23]), .B0(o_sw_N_1360[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[24]), .B1(o_sw_N_1360[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16438), .COUT(n16439));
    defparam sub_1896_add_2_25.INIT0 = 16'h5999;
    defparam sub_1896_add_2_25.INIT1 = 16'h5999;
    defparam sub_1896_add_2_25.INJECT1_0 = "NO";
    defparam sub_1896_add_2_25.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_9 (.A0(r_t2[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16542), .COUT(n16543), .S0(n133[7]), .S1(n133[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_9.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_83 (.A(n18918), .B(n6626), .C(n6), .D(n18865), 
         .Z(n10549)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_83.init = 16'haaea;
    CCU2D sub_1896_add_2_23 (.A0(r_t1[21]), .B0(o_sw_N_1360[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[22]), .B1(o_sw_N_1360[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16437), .COUT(n16438));
    defparam sub_1896_add_2_23.INIT0 = 16'h5999;
    defparam sub_1896_add_2_23.INIT1 = 16'h5999;
    defparam sub_1896_add_2_23.INJECT1_0 = "NO";
    defparam sub_1896_add_2_23.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_7 (.A0(r_t2[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16541), .COUT(n16542), .S0(n133[5]), .S1(n133[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_7.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_21 (.A0(r_t1[19]), .B0(o_sw_N_1360[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[20]), .B1(o_sw_N_1360[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16436), .COUT(n16437));
    defparam sub_1896_add_2_21.INIT0 = 16'h5999;
    defparam sub_1896_add_2_21.INIT1 = 16'h5999;
    defparam sub_1896_add_2_21.INJECT1_0 = "NO";
    defparam sub_1896_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_19 (.A0(r_t1[17]), .B0(o_sw_N_1360[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[18]), .B1(o_sw_N_1360[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16435), .COUT(n16436));
    defparam sub_1896_add_2_19.INIT0 = 16'h5999;
    defparam sub_1896_add_2_19.INIT1 = 16'h5999;
    defparam sub_1896_add_2_19.INJECT1_0 = "NO";
    defparam sub_1896_add_2_19.INJECT1_1 = "NO";
    CCU2D r_t2_2430_add_4_5 (.A0(r_t2[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16540), .COUT(n16541), .S0(n133[3]), .S1(n133[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2430_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t2_2430_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t2_2430_add_4_5.INJECT1_0 = "NO";
    defparam r_t2_2430_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_1896_add_2_17 (.A0(r_t1[15]), .B0(o_sw_N_1360[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[16]), .B1(o_sw_N_1360[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16434), .COUT(n16435));
    defparam sub_1896_add_2_17.INIT0 = 16'h5999;
    defparam sub_1896_add_2_17.INIT1 = 16'h5999;
    defparam sub_1896_add_2_17.INJECT1_0 = "NO";
    defparam sub_1896_add_2_17.INJECT1_1 = "NO";
    FD1P3AX o_cp_143 (.D(n17921), .SP(clk_c_enable_787), .CK(clk_c), .Q(cp4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=357, LSE_RLINE=369 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam o_cp_143.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module ft232h_asynFIFO_r5bytes
//

module ft232h_asynFIFO_r5bytes (rd_n_c, cmd, clk_c, n18885, value, 
            n19038, n12, cmd_ready, n19260, n18833, n9201, n10338, 
            n17689, n4354, LTC1865_en_N_439, n9388, n6817, n18907, 
            n14, rxf_n_c, \next_state_5__N_971[0] , DBUS_out_0, clk_c_enable_461, 
            DBUS_out_1, DBUS_out_2, DBUS_out_3, DBUS_out_4, DBUS_out_5, 
            DBUS_out_6, DBUS_out_7) /* synthesis syn_module_defined=1 */ ;
    output rd_n_c;
    output [7:0]cmd;
    input clk_c;
    output n18885;
    output [31:0]value;
    input n19038;
    output n12;
    output cmd_ready;
    input n19260;
    input n18833;
    input n9201;
    output n10338;
    input n17689;
    input n4354;
    output LTC1865_en_N_439;
    input n9388;
    output n6817;
    input n18907;
    input n14;
    input rxf_n_c;
    output \next_state_5__N_971[0] ;
    input DBUS_out_0;
    input clk_c_enable_461;
    input DBUS_out_1;
    input DBUS_out_2;
    input DBUS_out_3;
    input DBUS_out_4;
    input DBUS_out_5;
    input DBUS_out_6;
    input DBUS_out_7;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    
    wire read_done;
    wire [9:0]n1199;
    
    wire n8223, n1233, n8225, n1229, n44, n8150, clk_c_enable_468;
    wire [7:0]byte_cmd;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(13[19:27])
    
    wire n19039, o_data_ready_N_954, n1241;
    wire [31:0]o_data_read_31__N_906;
    
    wire n19040, n9397, n9355, n9364, n9391, n7, n38, n1225, 
        n8211, n8221, n1237;
    
    LUT4 i3248_3_lut_4_lut (.A(rd_n_c), .B(read_done), .C(n1199[5]), .D(n1199[6]), 
         .Z(n8223)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(45[20:39])
    defparam i3248_3_lut_4_lut.init = 16'hfbf0;
    LUT4 i323_2_lut_3_lut (.A(rd_n_c), .B(read_done), .C(n1199[4]), .Z(n1233)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(45[20:39])
    defparam i323_2_lut_3_lut.init = 16'h4040;
    LUT4 i3250_3_lut_4_lut (.A(rd_n_c), .B(read_done), .C(n1199[3]), .D(n1199[4]), 
         .Z(n8225)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(45[20:39])
    defparam i3250_3_lut_4_lut.init = 16'hfbf0;
    LUT4 i319_2_lut_3_lut (.A(rd_n_c), .B(read_done), .C(n1199[2]), .Z(n1229)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(45[20:39])
    defparam i319_2_lut_3_lut.init = 16'h4040;
    LUT4 i3181_3_lut_4_lut (.A(rd_n_c), .B(read_done), .C(n44), .D(n1199[2]), 
         .Z(n8150)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(45[20:39])
    defparam i3181_3_lut_4_lut.init = 16'hfbf0;
    FD1P3AX o_cmd_i0_i0 (.D(byte_cmd[0]), .SP(clk_c_enable_468), .CK(clk_c), 
            .Q(cmd[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_cmd_i0_i0.GSR = "DISABLED";
    LUT4 cmd_6__bdd_4_lut (.A(cmd[6]), .B(cmd[5]), .C(cmd[7]), .D(cmd[4]), 
         .Z(n19039)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam cmd_6__bdd_4_lut.init = 16'hfffd;
    FD1S3IX read_SM_FSM_i1 (.D(n1241), .CK(clk_c), .CD(n18885), .Q(o_data_ready_N_954));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam read_SM_FSM_i1.GSR = "DISABLED";
    FD1S3IX o_data_read__i0 (.D(o_data_read_31__N_906[0]), .CK(clk_c), .CD(n18885), 
            .Q(value[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i0.GSR = "DISABLED";
    LUT4 n19040_bdd_4_lut (.A(n19040), .B(cmd[2]), .C(n19038), .D(cmd[3]), 
         .Z(n12)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n19040_bdd_4_lut.init = 16'hf0ee;
    FD1S3IX o_data_ready_45 (.D(o_data_ready_N_954), .CK(clk_c), .CD(n18885), 
            .Q(cmd_ready)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_ready_45.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut_4_lut (.A(n1199[5]), .B(n1199[3]), .C(o_data_ready_N_954), 
         .D(n1199[7]), .Z(n9397)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_2_lut_4_lut_4_lut.init = 16'hfffb;
    FD1S3IX o_data_read__i31 (.D(o_data_read_31__N_906[31]), .CK(clk_c), 
            .CD(n18885), .Q(value[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i31.GSR = "DISABLED";
    FD1S3IX o_data_read__i30 (.D(o_data_read_31__N_906[30]), .CK(clk_c), 
            .CD(n18885), .Q(value[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i30.GSR = "DISABLED";
    FD1S3IX o_data_read__i29 (.D(o_data_read_31__N_906[29]), .CK(clk_c), 
            .CD(n18885), .Q(value[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i29.GSR = "DISABLED";
    FD1S3IX o_data_read__i28 (.D(o_data_read_31__N_906[28]), .CK(clk_c), 
            .CD(n18885), .Q(value[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i28.GSR = "DISABLED";
    FD1S3IX o_data_read__i27 (.D(o_data_read_31__N_906[27]), .CK(clk_c), 
            .CD(n18885), .Q(value[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i27.GSR = "DISABLED";
    FD1S3IX o_data_read__i26 (.D(o_data_read_31__N_906[26]), .CK(clk_c), 
            .CD(n18885), .Q(value[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i26.GSR = "DISABLED";
    FD1S3IX o_data_read__i25 (.D(o_data_read_31__N_906[25]), .CK(clk_c), 
            .CD(n18885), .Q(value[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i25.GSR = "DISABLED";
    FD1S3IX o_data_read__i24 (.D(o_data_read_31__N_906[24]), .CK(clk_c), 
            .CD(n18885), .Q(value[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i24.GSR = "DISABLED";
    FD1S3IX o_data_read__i23 (.D(o_data_read_31__N_906[23]), .CK(clk_c), 
            .CD(n18885), .Q(value[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i23.GSR = "DISABLED";
    FD1S3IX o_data_read__i22 (.D(o_data_read_31__N_906[22]), .CK(clk_c), 
            .CD(n18885), .Q(value[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i22.GSR = "DISABLED";
    FD1S3IX o_data_read__i21 (.D(o_data_read_31__N_906[21]), .CK(clk_c), 
            .CD(n18885), .Q(value[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i21.GSR = "DISABLED";
    FD1S3IX o_data_read__i20 (.D(o_data_read_31__N_906[20]), .CK(clk_c), 
            .CD(n18885), .Q(value[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i20.GSR = "DISABLED";
    FD1S3IX o_data_read__i19 (.D(o_data_read_31__N_906[19]), .CK(clk_c), 
            .CD(n18885), .Q(value[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i19.GSR = "DISABLED";
    FD1S3IX o_data_read__i18 (.D(o_data_read_31__N_906[18]), .CK(clk_c), 
            .CD(n18885), .Q(value[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i18.GSR = "DISABLED";
    FD1S3IX o_data_read__i17 (.D(o_data_read_31__N_906[17]), .CK(clk_c), 
            .CD(n18885), .Q(value[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i17.GSR = "DISABLED";
    FD1S3IX o_data_read__i16 (.D(o_data_read_31__N_906[16]), .CK(clk_c), 
            .CD(n18885), .Q(value[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i16.GSR = "DISABLED";
    FD1S3IX o_data_read__i15 (.D(o_data_read_31__N_906[15]), .CK(clk_c), 
            .CD(n18885), .Q(value[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i15.GSR = "DISABLED";
    FD1S3IX o_data_read__i14 (.D(o_data_read_31__N_906[14]), .CK(clk_c), 
            .CD(n18885), .Q(value[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i14.GSR = "DISABLED";
    FD1S3IX o_data_read__i13 (.D(o_data_read_31__N_906[13]), .CK(clk_c), 
            .CD(n18885), .Q(value[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i13.GSR = "DISABLED";
    FD1S3IX o_data_read__i12 (.D(o_data_read_31__N_906[12]), .CK(clk_c), 
            .CD(n18885), .Q(value[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i12.GSR = "DISABLED";
    FD1S3IX o_data_read__i11 (.D(o_data_read_31__N_906[11]), .CK(clk_c), 
            .CD(n18885), .Q(value[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i11.GSR = "DISABLED";
    FD1S3IX o_data_read__i10 (.D(o_data_read_31__N_906[10]), .CK(clk_c), 
            .CD(n18885), .Q(value[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i10.GSR = "DISABLED";
    FD1S3IX o_data_read__i9 (.D(o_data_read_31__N_906[9]), .CK(clk_c), .CD(n18885), 
            .Q(value[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i9.GSR = "DISABLED";
    FD1S3IX o_data_read__i8 (.D(o_data_read_31__N_906[8]), .CK(clk_c), .CD(n18885), 
            .Q(value[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i8.GSR = "DISABLED";
    FD1S3IX o_data_read__i7 (.D(o_data_read_31__N_906[7]), .CK(clk_c), .CD(n18885), 
            .Q(value[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i7.GSR = "DISABLED";
    FD1S3IX o_data_read__i6 (.D(o_data_read_31__N_906[6]), .CK(clk_c), .CD(n18885), 
            .Q(value[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i6.GSR = "DISABLED";
    FD1S3IX o_data_read__i5 (.D(o_data_read_31__N_906[5]), .CK(clk_c), .CD(n18885), 
            .Q(value[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i5.GSR = "DISABLED";
    FD1S3IX o_data_read__i4 (.D(o_data_read_31__N_906[4]), .CK(clk_c), .CD(n18885), 
            .Q(value[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i4.GSR = "DISABLED";
    FD1S3IX o_data_read__i3 (.D(o_data_read_31__N_906[3]), .CK(clk_c), .CD(n18885), 
            .Q(value[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i3.GSR = "DISABLED";
    FD1S3IX o_data_read__i2 (.D(o_data_read_31__N_906[2]), .CK(clk_c), .CD(n18885), 
            .Q(value[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i2.GSR = "DISABLED";
    FD1S3IX o_data_read__i1 (.D(o_data_read_31__N_906[1]), .CK(clk_c), .CD(n18885), 
            .Q(value[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_data_read__i1.GSR = "DISABLED";
    LUT4 i_rst_n_I_0_1_lut_rep_227 (.A(n19260), .Z(n18885)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(90[8:16])
    defparam i_rst_n_I_0_1_lut_rep_227.init = 16'h5555;
    LUT4 i1_4_lut (.A(byte_cmd[7]), .B(value[31]), .C(n1199[3]), .D(n9397), 
         .Z(o_data_read_31__N_906[31])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i5246_2_lut_4_lut_4_lut (.A(n19260), .B(cmd_ready), .C(n18833), 
         .D(n9201), .Z(n10338)) /* synthesis lut_function=(!(A+!(((D)+!C)+!B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(90[8:16])
    defparam i5246_2_lut_4_lut_4_lut.init = 16'h5515;
    LUT4 i2_3_lut_4_lut (.A(n1199[5]), .B(n1199[3]), .C(o_data_ready_N_954), 
         .D(n1199[7]), .Z(n9355)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i2_3_lut_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_4_lut_adj_48 (.A(n1199[5]), .B(n1199[3]), .C(n1199[7]), 
         .D(o_data_ready_N_954), .Z(n9364)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i2_3_lut_4_lut_adj_48.init = 16'hfeff;
    LUT4 i1_4_lut_adj_49 (.A(byte_cmd[6]), .B(value[30]), .C(n1199[3]), 
         .D(n9397), .Z(o_data_read_31__N_906[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_49.init = 16'heca0;
    LUT4 i1_2_lut_4_lut_4_lut_adj_50 (.A(n1199[5]), .B(n1199[3]), .C(o_data_ready_N_954), 
         .D(n1199[7]), .Z(n9391)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_2_lut_4_lut_4_lut_adj_50.init = 16'hfffd;
    LUT4 i1_4_lut_adj_51 (.A(byte_cmd[5]), .B(value[29]), .C(n1199[3]), 
         .D(n9397), .Z(o_data_read_31__N_906[29])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_51.init = 16'heca0;
    LUT4 i1_4_lut_adj_52 (.A(byte_cmd[4]), .B(value[28]), .C(n1199[3]), 
         .D(n9397), .Z(o_data_read_31__N_906[28])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_52.init = 16'heca0;
    LUT4 i4_4_lut (.A(n7), .B(n17689), .C(n4354), .D(n38), .Z(LTC1865_en_N_439)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/user/desktop/qss013/qss013.v(76[12:15])
    defparam i4_4_lut.init = 16'h0800;
    LUT4 i2_2_lut (.A(cmd_ready), .B(n9388), .Z(n7)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/desktop/qss013/qss013.v(76[12:15])
    defparam i2_2_lut.init = 16'h2222;
    LUT4 i71_4_lut (.A(n6817), .B(n18907), .C(cmd[1]), .D(cmd[0]), .Z(n38)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/user/desktop/qss013/qss013.v(76[12:15])
    defparam i71_4_lut.init = 16'h0a3a;
    LUT4 i315_2_lut_3_lut (.A(rd_n_c), .B(read_done), .C(n1199[0]), .Z(n1225)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(45[20:39])
    defparam i315_2_lut_3_lut.init = 16'h4040;
    LUT4 i3237_3_lut_4_lut (.A(rd_n_c), .B(read_done), .C(o_data_ready_N_954), 
         .D(n1199[0]), .Z(n8211)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(45[20:39])
    defparam i3237_3_lut_4_lut.init = 16'hfbf0;
    LUT4 i331_2_lut_3_lut (.A(rd_n_c), .B(read_done), .C(n1199[8]), .Z(n1241)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(45[20:39])
    defparam i331_2_lut_3_lut.init = 16'h4040;
    LUT4 i3246_3_lut_4_lut (.A(rd_n_c), .B(read_done), .C(n1199[7]), .D(n1199[8]), 
         .Z(n8221)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(45[20:39])
    defparam i3246_3_lut_4_lut.init = 16'hfbf0;
    LUT4 i327_2_lut_3_lut (.A(rd_n_c), .B(read_done), .C(n1199[6]), .Z(n1237)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(45[20:39])
    defparam i327_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut (.A(cmd[4]), .B(cmd[2]), .Z(n6817)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_53 (.A(byte_cmd[3]), .B(value[27]), .C(n1199[3]), 
         .D(n9397), .Z(o_data_read_31__N_906[27])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_53.init = 16'heca0;
    LUT4 i1_4_lut_adj_54 (.A(byte_cmd[2]), .B(value[26]), .C(n1199[3]), 
         .D(n9397), .Z(o_data_read_31__N_906[26])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_54.init = 16'heca0;
    LUT4 i1_4_lut_adj_55 (.A(byte_cmd[1]), .B(value[25]), .C(n1199[3]), 
         .D(n9397), .Z(o_data_read_31__N_906[25])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_55.init = 16'heca0;
    LUT4 i1_4_lut_adj_56 (.A(byte_cmd[0]), .B(value[24]), .C(n1199[3]), 
         .D(n9397), .Z(o_data_read_31__N_906[24])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_56.init = 16'heca0;
    LUT4 i1_4_lut_adj_57 (.A(byte_cmd[7]), .B(value[23]), .C(n1199[5]), 
         .D(n9391), .Z(o_data_read_31__N_906[23])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_57.init = 16'heca0;
    LUT4 i1_4_lut_adj_58 (.A(byte_cmd[0]), .B(value[0]), .C(o_data_ready_N_954), 
         .D(n9364), .Z(o_data_read_31__N_906[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_58.init = 16'heca0;
    LUT4 i1_4_lut_adj_59 (.A(byte_cmd[6]), .B(value[22]), .C(n1199[5]), 
         .D(n9391), .Z(o_data_read_31__N_906[22])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_59.init = 16'heca0;
    LUT4 i1_4_lut_adj_60 (.A(byte_cmd[5]), .B(value[21]), .C(n1199[5]), 
         .D(n9391), .Z(o_data_read_31__N_906[21])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_60.init = 16'heca0;
    LUT4 i1_4_lut_adj_61 (.A(byte_cmd[4]), .B(value[20]), .C(n1199[5]), 
         .D(n9391), .Z(o_data_read_31__N_906[20])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_61.init = 16'heca0;
    FD1S3JX read_SM_FSM_i10 (.D(n8211), .CK(clk_c), .PD(n18885), .Q(n1199[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam read_SM_FSM_i10.GSR = "DISABLED";
    LUT4 i3355_2_lut (.A(n44), .B(n19260), .Z(clk_c_enable_468)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam i3355_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_62 (.A(byte_cmd[3]), .B(value[19]), .C(n1199[5]), 
         .D(n9391), .Z(o_data_read_31__N_906[19])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_62.init = 16'heca0;
    LUT4 i1_4_lut_adj_63 (.A(byte_cmd[2]), .B(value[18]), .C(n1199[5]), 
         .D(n9391), .Z(o_data_read_31__N_906[18])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_63.init = 16'heca0;
    FD1S3IX read_SM_FSM_i9 (.D(n1225), .CK(clk_c), .CD(n18885), .Q(n44));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam read_SM_FSM_i9.GSR = "DISABLED";
    FD1S3IX read_SM_FSM_i8 (.D(n8150), .CK(clk_c), .CD(n18885), .Q(n1199[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam read_SM_FSM_i8.GSR = "DISABLED";
    FD1S3IX read_SM_FSM_i7 (.D(n1229), .CK(clk_c), .CD(n18885), .Q(n1199[3]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam read_SM_FSM_i7.GSR = "DISABLED";
    FD1S3IX read_SM_FSM_i6 (.D(n8225), .CK(clk_c), .CD(n18885), .Q(n1199[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam read_SM_FSM_i6.GSR = "DISABLED";
    FD1S3IX read_SM_FSM_i5 (.D(n1233), .CK(clk_c), .CD(n18885), .Q(n1199[5]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam read_SM_FSM_i5.GSR = "DISABLED";
    FD1S3IX read_SM_FSM_i4 (.D(n8223), .CK(clk_c), .CD(n18885), .Q(n1199[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam read_SM_FSM_i4.GSR = "DISABLED";
    FD1S3IX read_SM_FSM_i3 (.D(n1237), .CK(clk_c), .CD(n18885), .Q(n1199[7]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam read_SM_FSM_i3.GSR = "DISABLED";
    FD1S3IX read_SM_FSM_i2 (.D(n8221), .CK(clk_c), .CD(n18885), .Q(n1199[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam read_SM_FSM_i2.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_64 (.A(byte_cmd[1]), .B(value[17]), .C(n1199[5]), 
         .D(n9391), .Z(o_data_read_31__N_906[17])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_64.init = 16'heca0;
    LUT4 i1_4_lut_adj_65 (.A(byte_cmd[0]), .B(value[16]), .C(n1199[5]), 
         .D(n9391), .Z(o_data_read_31__N_906[16])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_65.init = 16'heca0;
    LUT4 i1_4_lut_adj_66 (.A(byte_cmd[7]), .B(value[15]), .C(n1199[7]), 
         .D(n9355), .Z(o_data_read_31__N_906[15])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_66.init = 16'heca0;
    LUT4 i1_4_lut_adj_67 (.A(byte_cmd[6]), .B(value[14]), .C(n1199[7]), 
         .D(n9355), .Z(o_data_read_31__N_906[14])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_67.init = 16'heca0;
    LUT4 i1_4_lut_adj_68 (.A(byte_cmd[5]), .B(value[13]), .C(n1199[7]), 
         .D(n9355), .Z(o_data_read_31__N_906[13])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_68.init = 16'heca0;
    LUT4 i1_4_lut_adj_69 (.A(byte_cmd[4]), .B(value[12]), .C(n1199[7]), 
         .D(n9355), .Z(o_data_read_31__N_906[12])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_69.init = 16'heca0;
    LUT4 i1_4_lut_adj_70 (.A(byte_cmd[3]), .B(value[11]), .C(n1199[7]), 
         .D(n9355), .Z(o_data_read_31__N_906[11])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_70.init = 16'heca0;
    FD1P3AX o_cmd_i0_i7 (.D(byte_cmd[7]), .SP(clk_c_enable_468), .CK(clk_c), 
            .Q(cmd[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_cmd_i0_i7.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_71 (.A(byte_cmd[2]), .B(value[10]), .C(n1199[7]), 
         .D(n9355), .Z(o_data_read_31__N_906[10])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_71.init = 16'heca0;
    LUT4 i1_4_lut_adj_72 (.A(byte_cmd[1]), .B(value[9]), .C(n1199[7]), 
         .D(n9355), .Z(o_data_read_31__N_906[9])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_72.init = 16'heca0;
    LUT4 i1_4_lut_adj_73 (.A(byte_cmd[0]), .B(value[8]), .C(n1199[7]), 
         .D(n9355), .Z(o_data_read_31__N_906[8])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_73.init = 16'heca0;
    FD1P3AX o_cmd_i0_i6 (.D(byte_cmd[6]), .SP(clk_c_enable_468), .CK(clk_c), 
            .Q(cmd[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_cmd_i0_i6.GSR = "DISABLED";
    FD1P3AX o_cmd_i0_i5 (.D(byte_cmd[5]), .SP(clk_c_enable_468), .CK(clk_c), 
            .Q(cmd[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_cmd_i0_i5.GSR = "DISABLED";
    FD1P3AX o_cmd_i0_i4 (.D(byte_cmd[4]), .SP(clk_c_enable_468), .CK(clk_c), 
            .Q(cmd[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_cmd_i0_i4.GSR = "DISABLED";
    FD1P3AX o_cmd_i0_i3 (.D(byte_cmd[3]), .SP(clk_c_enable_468), .CK(clk_c), 
            .Q(cmd[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_cmd_i0_i3.GSR = "DISABLED";
    FD1P3AX o_cmd_i0_i2 (.D(byte_cmd[2]), .SP(clk_c_enable_468), .CK(clk_c), 
            .Q(cmd[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_cmd_i0_i2.GSR = "DISABLED";
    FD1P3AX o_cmd_i0_i1 (.D(byte_cmd[1]), .SP(clk_c_enable_468), .CK(clk_c), 
            .Q(cmd[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=299, LSE_RLINE=313 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(35[7] 93[4])
    defparam o_cmd_i0_i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_74 (.A(byte_cmd[7]), .B(value[7]), .C(o_data_ready_N_954), 
         .D(n9364), .Z(o_data_read_31__N_906[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_74.init = 16'heca0;
    LUT4 i1_4_lut_adj_75 (.A(byte_cmd[6]), .B(value[6]), .C(o_data_ready_N_954), 
         .D(n9364), .Z(o_data_read_31__N_906[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_75.init = 16'heca0;
    LUT4 i1_4_lut_adj_76 (.A(byte_cmd[5]), .B(value[5]), .C(o_data_ready_N_954), 
         .D(n9364), .Z(o_data_read_31__N_906[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_76.init = 16'heca0;
    LUT4 i1_4_lut_adj_77 (.A(byte_cmd[4]), .B(value[4]), .C(o_data_ready_N_954), 
         .D(n9364), .Z(o_data_read_31__N_906[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_77.init = 16'heca0;
    LUT4 i1_4_lut_adj_78 (.A(byte_cmd[3]), .B(value[3]), .C(o_data_ready_N_954), 
         .D(n9364), .Z(o_data_read_31__N_906[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_78.init = 16'heca0;
    LUT4 i1_4_lut_adj_79 (.A(byte_cmd[2]), .B(value[2]), .C(o_data_ready_N_954), 
         .D(n9364), .Z(o_data_read_31__N_906[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_79.init = 16'heca0;
    LUT4 i1_4_lut_adj_80 (.A(byte_cmd[1]), .B(value[1]), .C(o_data_ready_N_954), 
         .D(n9364), .Z(o_data_read_31__N_906[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(43[9] 90[16])
    defparam i1_4_lut_adj_80.init = 16'heca0;
    PFUMX i12977 (.BLUT(n14), .ALUT(n19039), .C0(cmd[0]), .Z(n19040));
    ft232h_asynFIFO_r ft232h_r (.clk_c(clk_c), .rd_n_c(rd_n_c), .rxf_n_c(rxf_n_c), 
            .\next_state_5__N_971[0] (\next_state_5__N_971[0] ), .byte_cmd({byte_cmd}), 
            .DBUS_out_0(DBUS_out_0), .read_done(read_done), .clk_c_enable_461(clk_c_enable_461), 
            .n19260(n19260), .DBUS_out_1(DBUS_out_1), .DBUS_out_2(DBUS_out_2), 
            .DBUS_out_3(DBUS_out_3), .DBUS_out_4(DBUS_out_4), .DBUS_out_5(DBUS_out_5), 
            .DBUS_out_6(DBUS_out_6), .DBUS_out_7(DBUS_out_7)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r5bytes.v(95[19] 104[2])
    
endmodule
//
// Verilog Description of module ft232h_asynFIFO_r
//

module ft232h_asynFIFO_r (clk_c, rd_n_c, rxf_n_c, \next_state_5__N_971[0] , 
            byte_cmd, DBUS_out_0, read_done, clk_c_enable_461, n19260, 
            DBUS_out_1, DBUS_out_2, DBUS_out_3, DBUS_out_4, DBUS_out_5, 
            DBUS_out_6, DBUS_out_7) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    output rd_n_c;
    input rxf_n_c;
    output \next_state_5__N_971[0] ;
    output [7:0]byte_cmd;
    input DBUS_out_0;
    output read_done;
    input clk_c_enable_461;
    input n19260;
    input DBUS_out_1;
    input DBUS_out_2;
    input DBUS_out_3;
    input DBUS_out_4;
    input DBUS_out_5;
    input DBUS_out_6;
    input DBUS_out_7;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    wire [3:0]r_ft_wait;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(22[11:20])
    
    wire clk_c_enable_81, n18796;
    wire [5:0]curent_state;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(21[10:22])
    
    wire n8749, clk_c_enable_156, n6700, n18795;
    wire [5:0]next_state_5__N_972;
    
    wire clk_c_enable_301, n17753, clk_c_enable_610, n12633;
    wire [3:0]r_ft_wait_3__N_995;
    
    wire n18911, n18896, n18794, n43;
    
    FD1P3AY r_ft_wait_i0_i0 (.D(n18796), .SP(clk_c_enable_81), .CK(clk_c), 
            .Q(r_ft_wait[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam r_ft_wait_i0_i0.GSR = "ENABLED";
    FD1S3IX curent_state_i1 (.D(n8749), .CK(clk_c), .CD(curent_state[0]), 
            .Q(curent_state[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(33[9:36])
    defparam curent_state_i1.GSR = "ENABLED";
    FD1P3AY r_rd_n_86 (.D(n6700), .SP(clk_c_enable_156), .CK(clk_c), .Q(rd_n_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam r_rd_n_86.GSR = "ENABLED";
    LUT4 i7584_3_lut (.A(curent_state[0]), .B(curent_state[1]), .C(rxf_n_c), 
         .Z(n6700)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(21[10:22])
    defparam i7584_3_lut.init = 16'h9898;
    LUT4 n48_bdd_2_lut (.A(curent_state[0]), .B(r_ft_wait[0]), .Z(n18795)) /* synthesis lut_function=((B)+!A) */ ;
    defparam n48_bdd_2_lut.init = 16'hdddd;
    LUT4 i_rxf_n_I_0_1_lut (.A(rxf_n_c), .Z(\next_state_5__N_971[0] )) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(40[16:24])
    defparam i_rxf_n_I_0_1_lut.init = 16'h5555;
    FD1P3AX r_ftWait_done_88 (.D(n17753), .SP(clk_c_enable_301), .CK(clk_c), 
            .Q(next_state_5__N_972[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam r_ftWait_done_88.GSR = "ENABLED";
    FD1P3AX o_data_read_i0_i0 (.D(DBUS_out_0), .SP(clk_c_enable_610), .CK(clk_c), 
            .Q(byte_cmd[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam o_data_read_i0_i0.GSR = "DISABLED";
    FD1P3IX r_ft_wait_i0_i1 (.D(r_ft_wait_3__N_995[1]), .SP(clk_c_enable_301), 
            .CD(n12633), .CK(clk_c), .Q(r_ft_wait[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam r_ft_wait_i0_i1.GSR = "ENABLED";
    FD1P3IX r_ft_wait_i0_i2 (.D(r_ft_wait_3__N_995[2]), .SP(clk_c_enable_301), 
            .CD(n12633), .CK(clk_c), .Q(r_ft_wait[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam r_ft_wait_i0_i2.GSR = "ENABLED";
    FD1P3IX r_ft_wait_i0_i3 (.D(r_ft_wait_3__N_995[3]), .SP(clk_c_enable_301), 
            .CD(n12633), .CK(clk_c), .Q(r_ft_wait[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam r_ft_wait_i0_i3.GSR = "ENABLED";
    FD1S3AX curent_state_i2 (.D(n18911), .CK(clk_c), .Q(curent_state[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(33[9:36])
    defparam curent_state_i2.GSR = "ENABLED";
    FD1P3AX o_read_done_89 (.D(n18896), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(read_done)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam o_read_done_89.GSR = "DISABLED";
    LUT4 n48_bdd_3_lut_4_lut (.A(r_ft_wait[2]), .B(r_ft_wait[3]), .C(r_ft_wait[1]), 
         .D(r_ft_wait[0]), .Z(n18794)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(22[11:20])
    defparam n48_bdd_3_lut_4_lut.init = 16'h00fe;
    LUT4 i7573_3_lut_4_lut (.A(r_ft_wait[2]), .B(r_ft_wait[3]), .C(r_ft_wait[0]), 
         .D(r_ft_wait[1]), .Z(r_ft_wait_3__N_995[1])) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(22[11:20])
    defparam i7573_3_lut_4_lut.init = 16'hf00e;
    LUT4 i1_2_lut_rep_238 (.A(curent_state[1]), .B(curent_state[0]), .Z(n18896)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(33[9:36])
    defparam i1_2_lut_rep_238.init = 16'h4444;
    LUT4 i1_2_lut_3_lut (.A(curent_state[1]), .B(curent_state[0]), .C(n19260), 
         .Z(clk_c_enable_610)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(33[9:36])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_4_lut (.A(r_ft_wait[0]), .B(r_ft_wait[2]), .C(r_ft_wait[1]), 
         .D(r_ft_wait[3]), .Z(n43)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(22[11:20])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_47 (.A(r_ft_wait[0]), .B(r_ft_wait[2]), .C(r_ft_wait[1]), 
         .D(r_ft_wait[3]), .Z(r_ft_wait_3__N_995[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(22[11:20])
    defparam i1_2_lut_4_lut_adj_47.init = 16'hfe00;
    LUT4 i7555_1_lut_rep_242 (.A(curent_state[0]), .Z(clk_c_enable_301)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(33[9:36])
    defparam i7555_1_lut_rep_242.init = 16'h5555;
    LUT4 i2_4_lut_4_lut (.A(curent_state[0]), .B(next_state_5__N_972[0]), 
         .C(curent_state[1]), .D(n43), .Z(n17753)) /* synthesis lut_function=(!(A+!(B (C)+!B !((D)+!C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(33[9:36])
    defparam i2_4_lut_4_lut.init = 16'h4050;
    LUT4 i12520_2_lut (.A(curent_state[1]), .B(curent_state[0]), .Z(n12633)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12520_2_lut.init = 16'h1111;
    LUT4 i7575_4_lut (.A(r_ft_wait[2]), .B(r_ft_wait[0]), .C(r_ft_wait[1]), 
         .D(r_ft_wait[3]), .Z(r_ft_wait_3__N_995[2])) /* synthesis lut_function=(A (B+(C))+!A !(B+(C+!(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(22[11:20])
    defparam i7575_4_lut.init = 16'ha9a8;
    LUT4 i22_2_lut_rep_253 (.A(curent_state[1]), .B(curent_state[0]), .Z(n18911)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i22_2_lut_rep_253.init = 16'h6666;
    LUT4 i23_1_lut_2_lut (.A(curent_state[1]), .B(curent_state[0]), .Z(clk_c_enable_156)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i23_1_lut_2_lut.init = 16'h9999;
    PFUMX i12912 (.BLUT(n18795), .ALUT(n18794), .C0(curent_state[1]), 
          .Z(n18796));
    FD1P3AX o_data_read_i0_i1 (.D(DBUS_out_1), .SP(clk_c_enable_610), .CK(clk_c), 
            .Q(byte_cmd[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam o_data_read_i0_i1.GSR = "DISABLED";
    FD1P3AX o_data_read_i0_i2 (.D(DBUS_out_2), .SP(clk_c_enable_610), .CK(clk_c), 
            .Q(byte_cmd[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam o_data_read_i0_i2.GSR = "DISABLED";
    FD1P3AX o_data_read_i0_i3 (.D(DBUS_out_3), .SP(clk_c_enable_610), .CK(clk_c), 
            .Q(byte_cmd[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam o_data_read_i0_i3.GSR = "DISABLED";
    FD1P3AX o_data_read_i0_i4 (.D(DBUS_out_4), .SP(clk_c_enable_610), .CK(clk_c), 
            .Q(byte_cmd[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam o_data_read_i0_i4.GSR = "DISABLED";
    FD1P3AX o_data_read_i0_i5 (.D(DBUS_out_5), .SP(clk_c_enable_610), .CK(clk_c), 
            .Q(byte_cmd[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam o_data_read_i0_i5.GSR = "DISABLED";
    FD1P3AX o_data_read_i0_i6 (.D(DBUS_out_6), .SP(clk_c_enable_610), .CK(clk_c), 
            .Q(byte_cmd[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam o_data_read_i0_i6.GSR = "DISABLED";
    FD1P3AX o_data_read_i0_i7 (.D(DBUS_out_7), .SP(clk_c_enable_610), .CK(clk_c), 
            .Q(byte_cmd[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=104 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(65[10] 91[8])
    defparam o_data_read_i0_i7.GSR = "DISABLED";
    LUT4 i12529_2_lut (.A(curent_state[1]), .B(curent_state[0]), .Z(clk_c_enable_81)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(33[9:36])
    defparam i12529_2_lut.init = 16'h7777;
    LUT4 i7580_3_lut (.A(rxf_n_c), .B(next_state_5__N_972[0]), .C(curent_state[1]), 
         .Z(n8749)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_r.v(21[10:22])
    defparam i7580_3_lut.init = 16'hc5c5;
    
endmodule
//
// Verilog Description of module integrator_seq_U2
//

module integrator_seq_U2 (clk_c, clk_c_enable_807, n18916, n18865, r_mode, 
            \seq_SM[1] , n18859, GND_net, cp3, T3, sw3_c, clk_c_enable_763, 
            n18904, n18912, integrator_3_en, n19260, o_sw_N_1360, 
            T1, o_sw_N_1396) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input clk_c_enable_807;
    output n18916;
    input n18865;
    input [1:0]r_mode;
    output \seq_SM[1] ;
    input n18859;
    input GND_net;
    output cp3;
    input [31:0]T3;
    output sw3_c;
    input clk_c_enable_763;
    output n18904;
    output n18912;
    input integrator_3_en;
    input n19260;
    input [31:0]o_sw_N_1360;
    input [31:0]T1;
    input [31:0]o_sw_N_1396;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    wire [31:0]r_t1;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[12:16])
    
    wire n10764;
    wire [31:0]n133;
    
    wire n6932, n13544, clk_c_enable_186, n6381, n6416, n18539;
    wire [4:0]seq_SM;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(21[11:17])
    
    wire n9998, n6451, n18538, n18829, n18830, n7, n18823, n13, 
        clk_c_enable_560, n6486, n6, n10534, n10527, n14172, n16506;
    wire [31:0]r_t2;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[18:22])
    wire [31:0]n133_adj_1742;
    
    wire n16505, n16504, n16503, n16502, n16501, n16500, n16499, 
        n16498, n16497, clk_c_enable_425, n17888, n16496, n16495, 
        n16494, n16493, n16492, n16491, n16490;
    wire [31:0]r_t3;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[24:28])
    
    wire n16394, n16393, n16392, n16489, n16488, n17561, clk_c_enable_806;
    wire [31:0]n133_adj_1743;
    
    wire n16391, n16487, n16486, n16390, n16389, n16485, n16484, 
        n16483, n16482, n16388, n16387, n16386, n16481, n16385, 
        n16480, n16479, n16384, n16478, n16383, n16477, n16382, 
        n16381, n18540, n16476, n16475, n16380, n16379, n16474, 
        n16473, n16472, n16471, n16470, n16469, n16586, n16585, 
        n16468, n16467, n16584, n16583, n16582, n16581, n16580, 
        n16466, n16579, n16578, n16577, n16576, n16575, n16574, 
        n16465, n16573, n16464, n16463, n16462, n16572, n16461, 
        n16571, n16460, n16570, n16569, n16568, n16459, n16567, 
        n16458, n16457, n16566, n16565, n16456, n16455, n16564, 
        n16563, n16562, n16454, n16453, n16452, n16451, n16450, 
        n16449, n16561, n16448, n16560, n16447, n16559, n16446, 
        n16445, n16558, n16557, n16556, n16555, n16444, n16443, 
        n21;
    
    FD1P3IX r_t1_2420__i28 (.D(n133[28]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i28.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i27 (.D(n133[27]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i27.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i26 (.D(n133[26]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i26.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i25 (.D(n133[25]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i25.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i24 (.D(n133[24]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i24.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i23 (.D(n133[23]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i23.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i22 (.D(n133[22]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i22.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i21 (.D(n133[21]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i21.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i20 (.D(n133[20]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i20.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i19 (.D(n133[19]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i19.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i18 (.D(n133[18]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i18.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i17 (.D(n133[17]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i17.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i16 (.D(n133[16]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i16.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i15 (.D(n133[15]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i15.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i14 (.D(n133[14]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i14.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i13 (.D(n133[13]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i13.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i12 (.D(n133[12]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i12.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i11 (.D(n133[11]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i11.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i30 (.D(n133[30]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i30.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i10 (.D(n133[10]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i10.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i9 (.D(n133[9]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i9.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i8 (.D(n133[8]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i8.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i7 (.D(n133[7]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i7.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i6 (.D(n133[6]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i6.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i5 (.D(n133[5]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i5.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i4 (.D(n133[4]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i4.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i3 (.D(n133[3]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i3.GSR = "DISABLED";
    LUT4 i12675_4_lut (.A(n6932), .B(n13544), .C(n18916), .D(n18865), 
         .Z(clk_c_enable_186)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D)))) */ ;
    defparam i12675_4_lut.init = 16'hc0c4;
    FD1P3IX r_t1_2420__i2 (.D(n133[2]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i2.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i29 (.D(n133[29]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i29.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i1 (.D(n133[1]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i1.GSR = "DISABLED";
    LUT4 r_mode_0__bdd_4_lut_12954 (.A(r_mode[0]), .B(n6381), .C(n6416), 
         .D(\seq_SM[1] ), .Z(n18539)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !((D)+!B))) */ ;
    defparam r_mode_0__bdd_4_lut_12954.init = 16'h5519;
    FD1P3IX seq_SM__i0 (.D(n9998), .SP(clk_c_enable_186), .CD(n18916), 
            .CK(clk_c), .Q(seq_SM[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=343, LSE_RLINE=355 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam seq_SM__i0.GSR = "DISABLED";
    LUT4 r_mode_0__bdd_3_lut (.A(r_mode[0]), .B(\seq_SM[1] ), .C(n6451), 
         .Z(n18538)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam r_mode_0__bdd_3_lut.init = 16'h0202;
    LUT4 i8465_2_lut_4_lut (.A(n18829), .B(n6451), .C(seq_SM[0]), .D(n18830), 
         .Z(n13544)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam i8465_2_lut_4_lut.init = 16'hffca;
    LUT4 i12774_4_lut (.A(n7), .B(n18823), .C(n13), .D(\seq_SM[1] ), 
         .Z(clk_c_enable_560)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i12774_4_lut.init = 16'h0511;
    LUT4 i1_4_lut (.A(n18916), .B(n6486), .C(n6), .D(n18865), .Z(n10534)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'haaea;
    FD1P3IX seq_SM__i1 (.D(seq_SM[0]), .SP(clk_c_enable_186), .CD(n18916), 
            .CK(clk_c), .Q(\seq_SM[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=343, LSE_RLINE=355 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam seq_SM__i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_44 (.A(n18916), .B(seq_SM[0]), .C(n18859), .D(n18829), 
         .Z(n10764)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_44.init = 16'habaa;
    LUT4 i1_4_lut_adj_45 (.A(n18916), .B(seq_SM[0]), .C(n18859), .D(n6451), 
         .Z(n10527)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_45.init = 16'haeaa;
    LUT4 i8137_2_lut_rep_171 (.A(n6416), .B(n6381), .Z(n18829)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8137_2_lut_rep_171.init = 16'h8888;
    LUT4 i24_3_lut_rep_165_4_lut (.A(n6416), .B(n6381), .C(seq_SM[0]), 
         .D(n6451), .Z(n18823)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i24_3_lut_rep_165_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_4_lut_4_lut_4_lut (.A(seq_SM[0]), .B(n6451), .C(n6381), 
         .D(n6416), .Z(n14172)) /* synthesis lut_function=(A (B)+!A (C (D))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(150[25:26])
    defparam i1_2_lut_4_lut_4_lut_4_lut.init = 16'hd888;
    CCU2D r_t2_2424_add_4_33 (.A0(r_t2[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16506), .S0(n133_adj_1742[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_33.INIT1 = 16'h0000;
    defparam r_t2_2424_add_4_33.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_33.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_31 (.A0(r_t2[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16505), .COUT(n16506), .S0(n133_adj_1742[29]), .S1(n133_adj_1742[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_31.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_31.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_29 (.A0(r_t2[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16504), .COUT(n16505), .S0(n133_adj_1742[27]), .S1(n133_adj_1742[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_29.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_29.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_27 (.A0(r_t2[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16503), .COUT(n16504), .S0(n133_adj_1742[25]), .S1(n133_adj_1742[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_27.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_27.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_25 (.A0(r_t2[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16502), .COUT(n16503), .S0(n133_adj_1742[23]), .S1(n133_adj_1742[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_25.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_25.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_23 (.A0(r_t2[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16501), .COUT(n16502), .S0(n133_adj_1742[21]), .S1(n133_adj_1742[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_23.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_23.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_21 (.A0(r_t2[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16500), .COUT(n16501), .S0(n133_adj_1742[19]), .S1(n133_adj_1742[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_21.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_21.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_19 (.A0(r_t2[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16499), .COUT(n16500), .S0(n133_adj_1742[17]), .S1(n133_adj_1742[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_19.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_19.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_17 (.A0(r_t2[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16498), .COUT(n16499), .S0(n133_adj_1742[15]), .S1(n133_adj_1742[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_17.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_17.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_15 (.A0(r_t2[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16497), .COUT(n16498), .S0(n133_adj_1742[13]), .S1(n133_adj_1742[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_15.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_15.INJECT1_1 = "NO";
    FD1P3AX o_cp_143 (.D(n17888), .SP(clk_c_enable_425), .CK(clk_c), .Q(cp3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=343, LSE_RLINE=355 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam o_cp_143.GSR = "DISABLED";
    CCU2D r_t2_2424_add_4_13 (.A0(r_t2[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16496), .COUT(n16497), .S0(n133_adj_1742[11]), .S1(n133_adj_1742[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_13.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_13.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_11 (.A0(r_t2[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16495), .COUT(n16496), .S0(n133_adj_1742[9]), .S1(n133_adj_1742[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_11.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_11.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_9 (.A0(r_t2[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16494), .COUT(n16495), .S0(n133_adj_1742[7]), .S1(n133_adj_1742[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_9.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_9.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_7 (.A0(r_t2[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16493), .COUT(n16494), .S0(n133_adj_1742[5]), .S1(n133_adj_1742[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_7.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_7.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_5 (.A0(r_t2[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16492), .COUT(n16493), .S0(n133_adj_1742[3]), .S1(n133_adj_1742[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_5.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_5.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_3 (.A0(r_t2[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16491), .COUT(n16492), .S0(n133_adj_1742[1]), .S1(n133_adj_1742[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t2_2424_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t2_2424_add_4_3.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_3.INJECT1_1 = "NO";
    CCU2D r_t2_2424_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n16491), .S1(n133_adj_1742[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424_add_4_1.INIT0 = 16'hF000;
    defparam r_t2_2424_add_4_1.INIT1 = 16'h0555;
    defparam r_t2_2424_add_4_1.INJECT1_0 = "NO";
    defparam r_t2_2424_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_33 (.A0(r_t3[31]), .B0(T3[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16490), .S1(n6451));
    defparam sub_1892_add_2_33.INIT0 = 16'h5999;
    defparam sub_1892_add_2_33.INIT1 = 16'h0000;
    defparam sub_1892_add_2_33.INJECT1_0 = "NO";
    defparam sub_1892_add_2_33.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_33 (.A0(r_t1[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16394), .S0(n133[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_33.INIT1 = 16'h0000;
    defparam r_t1_2420_add_4_33.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_33.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_31 (.A0(r_t1[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16393), .COUT(n16394), .S0(n133[29]), .S1(n133[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_31.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_31.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_29 (.A0(r_t1[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16392), .COUT(n16393), .S0(n133[27]), .S1(n133[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_29.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_29.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_31 (.A0(r_t3[29]), .B0(T3[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[30]), .B1(T3[30]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16489), .COUT(n16490));
    defparam sub_1892_add_2_31.INIT0 = 16'h5999;
    defparam sub_1892_add_2_31.INIT1 = 16'h5999;
    defparam sub_1892_add_2_31.INJECT1_0 = "NO";
    defparam sub_1892_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_29 (.A0(r_t3[27]), .B0(T3[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[28]), .B1(T3[28]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16488), .COUT(n16489));
    defparam sub_1892_add_2_29.INIT0 = 16'h5999;
    defparam sub_1892_add_2_29.INIT1 = 16'h5999;
    defparam sub_1892_add_2_29.INJECT1_0 = "NO";
    defparam sub_1892_add_2_29.INJECT1_1 = "NO";
    FD1P3IX o_sw_142 (.D(n17561), .SP(clk_c_enable_560), .CD(n18916), 
            .CK(clk_c), .Q(sw3_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=343, LSE_RLINE=355 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam o_sw_142.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i0 (.D(n133_adj_1742[0]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i0.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i0 (.D(n133_adj_1743[0]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i0.GSR = "DISABLED";
    CCU2D r_t1_2420_add_4_27 (.A0(r_t1[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16391), .COUT(n16392), .S0(n133[25]), .S1(n133[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_27.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_27.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_27 (.A0(r_t3[25]), .B0(T3[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[26]), .B1(T3[26]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16487), .COUT(n16488));
    defparam sub_1892_add_2_27.INIT0 = 16'h5999;
    defparam sub_1892_add_2_27.INIT1 = 16'h5999;
    defparam sub_1892_add_2_27.INJECT1_0 = "NO";
    defparam sub_1892_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_25 (.A0(r_t3[23]), .B0(T3[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[24]), .B1(T3[24]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16486), .COUT(n16487));
    defparam sub_1892_add_2_25.INIT0 = 16'h5999;
    defparam sub_1892_add_2_25.INIT1 = 16'h5999;
    defparam sub_1892_add_2_25.INJECT1_0 = "NO";
    defparam sub_1892_add_2_25.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_25 (.A0(r_t1[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16390), .COUT(n16391), .S0(n133[23]), .S1(n133[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_25.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_25.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_23 (.A0(r_t1[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16389), .COUT(n16390), .S0(n133[21]), .S1(n133[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_23.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_23.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_23 (.A0(r_t3[21]), .B0(T3[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[22]), .B1(T3[22]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16485), .COUT(n16486));
    defparam sub_1892_add_2_23.INIT0 = 16'h5999;
    defparam sub_1892_add_2_23.INIT1 = 16'h5999;
    defparam sub_1892_add_2_23.INJECT1_0 = "NO";
    defparam sub_1892_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_21 (.A0(r_t3[19]), .B0(T3[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[20]), .B1(T3[20]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16484), .COUT(n16485));
    defparam sub_1892_add_2_21.INIT0 = 16'h5999;
    defparam sub_1892_add_2_21.INIT1 = 16'h5999;
    defparam sub_1892_add_2_21.INJECT1_0 = "NO";
    defparam sub_1892_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_19 (.A0(r_t3[17]), .B0(T3[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[18]), .B1(T3[18]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16483), .COUT(n16484));
    defparam sub_1892_add_2_19.INIT0 = 16'h5999;
    defparam sub_1892_add_2_19.INIT1 = 16'h5999;
    defparam sub_1892_add_2_19.INJECT1_0 = "NO";
    defparam sub_1892_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_17 (.A0(r_t3[15]), .B0(T3[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[16]), .B1(T3[16]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16482), .COUT(n16483));
    defparam sub_1892_add_2_17.INIT0 = 16'h5999;
    defparam sub_1892_add_2_17.INIT1 = 16'h5999;
    defparam sub_1892_add_2_17.INJECT1_0 = "NO";
    defparam sub_1892_add_2_17.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_21 (.A0(r_t1[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16388), .COUT(n16389), .S0(n133[19]), .S1(n133[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_21.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_21.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_19 (.A0(r_t1[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16387), .COUT(n16388), .S0(n133[17]), .S1(n133[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_19.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_19.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_17 (.A0(r_t1[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16386), .COUT(n16387), .S0(n133[15]), .S1(n133[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_17.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_17.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_15 (.A0(r_t3[13]), .B0(T3[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[14]), .B1(T3[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16481), .COUT(n16482));
    defparam sub_1892_add_2_15.INIT0 = 16'h5999;
    defparam sub_1892_add_2_15.INIT1 = 16'h5999;
    defparam sub_1892_add_2_15.INJECT1_0 = "NO";
    defparam sub_1892_add_2_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_246 (.A(seq_SM[0]), .B(\seq_SM[1] ), .Z(n18904)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_246.init = 16'heeee;
    LUT4 i12560_2_lut_3_lut_4_lut (.A(seq_SM[0]), .B(\seq_SM[1] ), .C(n6381), 
         .D(n6416), .Z(n17561)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i12560_2_lut_3_lut_4_lut.init = 16'h0111;
    CCU2D r_t1_2420_add_4_15 (.A0(r_t1[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16385), .COUT(n16386), .S0(n133[13]), .S1(n133[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_15.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_15.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_13 (.A0(r_t3[11]), .B0(T3[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[12]), .B1(T3[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16480), .COUT(n16481));
    defparam sub_1892_add_2_13.INIT0 = 16'h5999;
    defparam sub_1892_add_2_13.INIT1 = 16'h5999;
    defparam sub_1892_add_2_13.INJECT1_0 = "NO";
    defparam sub_1892_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_11 (.A0(r_t3[9]), .B0(T3[9]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[10]), .B1(T3[10]), .C1(GND_net), .D1(GND_net), .CIN(n16479), 
          .COUT(n16480));
    defparam sub_1892_add_2_11.INIT0 = 16'h5999;
    defparam sub_1892_add_2_11.INIT1 = 16'h5999;
    defparam sub_1892_add_2_11.INJECT1_0 = "NO";
    defparam sub_1892_add_2_11.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_13 (.A0(r_t1[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16384), .COUT(n16385), .S0(n133[11]), .S1(n133[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_13.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_13.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_9 (.A0(r_t3[7]), .B0(T3[7]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[8]), .B1(T3[8]), .C1(GND_net), .D1(GND_net), .CIN(n16478), 
          .COUT(n16479));
    defparam sub_1892_add_2_9.INIT0 = 16'h5999;
    defparam sub_1892_add_2_9.INIT1 = 16'h5999;
    defparam sub_1892_add_2_9.INJECT1_0 = "NO";
    defparam sub_1892_add_2_9.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_11 (.A0(r_t1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16383), .COUT(n16384), .S0(n133[9]), .S1(n133[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_11.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_11.INJECT1_1 = "NO";
    LUT4 i12672_3_lut_4_lut_4_lut (.A(seq_SM[0]), .B(n18916), .C(n18865), 
         .D(\seq_SM[1] ), .Z(clk_c_enable_806)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(150[25:26])
    defparam i12672_3_lut_4_lut_4_lut.init = 16'hccce;
    LUT4 i2_2_lut_2_lut (.A(seq_SM[0]), .B(\seq_SM[1] ), .Z(n6)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(150[25:26])
    defparam i2_2_lut_2_lut.init = 16'h4444;
    CCU2D sub_1892_add_2_7 (.A0(r_t3[5]), .B0(T3[5]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[6]), .B1(T3[6]), .C1(GND_net), .D1(GND_net), .CIN(n16477), 
          .COUT(n16478));
    defparam sub_1892_add_2_7.INIT0 = 16'h5999;
    defparam sub_1892_add_2_7.INIT1 = 16'h5999;
    defparam sub_1892_add_2_7.INJECT1_0 = "NO";
    defparam sub_1892_add_2_7.INJECT1_1 = "NO";
    LUT4 seq_SM_4__I_0_i6_2_lut_rep_254 (.A(seq_SM[0]), .B(\seq_SM[1] ), 
         .Z(n18912)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam seq_SM_4__I_0_i6_2_lut_rep_254.init = 16'hbbbb;
    LUT4 i12532_2_lut_3_lut_3_lut (.A(seq_SM[0]), .B(\seq_SM[1] ), .C(n6486), 
         .Z(n9998)) /* synthesis lut_function=(!(A+(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i12532_2_lut_3_lut_3_lut.init = 16'h1515;
    LUT4 i2202_2_lut_rep_172_3_lut (.A(seq_SM[0]), .B(\seq_SM[1] ), .C(n6486), 
         .Z(n18830)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i2202_2_lut_rep_172_3_lut.init = 16'h4040;
    LUT4 i3150_3_lut_3_lut (.A(seq_SM[0]), .B(\seq_SM[1] ), .C(n6486), 
         .Z(n6932)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i3150_3_lut_3_lut.init = 16'h8c8c;
    CCU2D r_t1_2420_add_4_9 (.A0(r_t1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16382), .COUT(n16383), .S0(n133[7]), .S1(n133[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_9.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_9.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_7 (.A0(r_t1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16381), .COUT(n16382), .S0(n133[5]), .S1(n133[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_7.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_7.INJECT1_1 = "NO";
    LUT4 i12698_2_lut_rep_258 (.A(integrator_3_en), .B(n19260), .Z(n18916)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam i12698_2_lut_rep_258.init = 16'h7777;
    LUT4 i1_2_lut_3_lut_4_lut (.A(integrator_3_en), .B(n19260), .C(r_mode[0]), 
         .D(r_mode[1]), .Z(n7)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut (.A(integrator_3_en), .B(n19260), .C(seq_SM[0]), 
         .D(n6486), .Z(n13)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam i1_3_lut_4_lut.init = 16'hff80;
    LUT4 i1_3_lut_4_lut_adj_46 (.A(integrator_3_en), .B(n19260), .C(n18540), 
         .D(r_mode[1]), .Z(n17888)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam i1_3_lut_4_lut_adj_46.init = 16'h0080;
    CCU2D sub_1892_add_2_5 (.A0(r_t3[3]), .B0(T3[3]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[4]), .B1(T3[4]), .C1(GND_net), .D1(GND_net), .CIN(n16476), 
          .COUT(n16477));
    defparam sub_1892_add_2_5.INIT0 = 16'h5999;
    defparam sub_1892_add_2_5.INIT1 = 16'h5999;
    defparam sub_1892_add_2_5.INJECT1_0 = "NO";
    defparam sub_1892_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_3 (.A0(r_t3[1]), .B0(T3[1]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[2]), .B1(T3[2]), .C1(GND_net), .D1(GND_net), .CIN(n16475), 
          .COUT(n16476));
    defparam sub_1892_add_2_3.INIT0 = 16'h5999;
    defparam sub_1892_add_2_3.INIT1 = 16'h5999;
    defparam sub_1892_add_2_3.INJECT1_0 = "NO";
    defparam sub_1892_add_2_3.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_5 (.A0(r_t1[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16380), .COUT(n16381), .S0(n133[3]), .S1(n133[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_5.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_5.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_3 (.A0(r_t1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16379), .COUT(n16380), .S0(n133[1]), .S1(n133[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t1_2420_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t1_2420_add_4_3.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_3.INJECT1_1 = "NO";
    CCU2D sub_1892_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[0]), .B1(T3[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n16475));
    defparam sub_1892_add_2_1.INIT0 = 16'h0000;
    defparam sub_1892_add_2_1.INIT1 = 16'h5999;
    defparam sub_1892_add_2_1.INJECT1_0 = "NO";
    defparam sub_1892_add_2_1.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_33 (.A0(r_t3[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16474), .S0(n133_adj_1743[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_33.INIT1 = 16'h0000;
    defparam r_t3_2422_add_4_33.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_33.INJECT1_1 = "NO";
    CCU2D r_t1_2420_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n16379), .S1(n133[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420_add_4_1.INIT0 = 16'hF000;
    defparam r_t1_2420_add_4_1.INIT1 = 16'h0555;
    defparam r_t1_2420_add_4_1.INJECT1_0 = "NO";
    defparam r_t1_2420_add_4_1.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_31 (.A0(r_t3[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16473), .COUT(n16474), .S0(n133_adj_1743[29]), .S1(n133_adj_1743[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_31.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_31.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_29 (.A0(r_t3[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16472), .COUT(n16473), .S0(n133_adj_1743[27]), .S1(n133_adj_1743[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_29.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_29.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_27 (.A0(r_t3[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16471), .COUT(n16472), .S0(n133_adj_1743[25]), .S1(n133_adj_1743[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_27.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_27.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_25 (.A0(r_t3[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16470), .COUT(n16471), .S0(n133_adj_1743[23]), .S1(n133_adj_1743[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_25.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_25.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_23 (.A0(r_t3[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16469), .COUT(n16470), .S0(n133_adj_1743[21]), .S1(n133_adj_1743[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_23.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_23.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_33 (.A0(r_t1[31]), .B0(o_sw_N_1360[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16586), .S1(n6381));
    defparam sub_1888_add_2_33.INIT0 = 16'h5999;
    defparam sub_1888_add_2_33.INIT1 = 16'h0000;
    defparam sub_1888_add_2_33.INJECT1_0 = "NO";
    defparam sub_1888_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_31 (.A0(r_t1[29]), .B0(o_sw_N_1360[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[30]), .B1(o_sw_N_1360[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16585), .COUT(n16586));
    defparam sub_1888_add_2_31.INIT0 = 16'h5999;
    defparam sub_1888_add_2_31.INIT1 = 16'h5999;
    defparam sub_1888_add_2_31.INJECT1_0 = "NO";
    defparam sub_1888_add_2_31.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_21 (.A0(r_t3[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16468), .COUT(n16469), .S0(n133_adj_1743[19]), .S1(n133_adj_1743[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_21.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_21.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_19 (.A0(r_t3[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16467), .COUT(n16468), .S0(n133_adj_1743[17]), .S1(n133_adj_1743[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_19.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_19.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_29 (.A0(r_t1[27]), .B0(o_sw_N_1360[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[28]), .B1(o_sw_N_1360[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16584), .COUT(n16585));
    defparam sub_1888_add_2_29.INIT0 = 16'h5999;
    defparam sub_1888_add_2_29.INIT1 = 16'h5999;
    defparam sub_1888_add_2_29.INJECT1_0 = "NO";
    defparam sub_1888_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_27 (.A0(r_t1[25]), .B0(o_sw_N_1360[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[26]), .B1(o_sw_N_1360[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16583), .COUT(n16584));
    defparam sub_1888_add_2_27.INIT0 = 16'h5999;
    defparam sub_1888_add_2_27.INIT1 = 16'h5999;
    defparam sub_1888_add_2_27.INJECT1_0 = "NO";
    defparam sub_1888_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_25 (.A0(r_t1[23]), .B0(o_sw_N_1360[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[24]), .B1(o_sw_N_1360[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16582), .COUT(n16583));
    defparam sub_1888_add_2_25.INIT0 = 16'h5999;
    defparam sub_1888_add_2_25.INIT1 = 16'h5999;
    defparam sub_1888_add_2_25.INJECT1_0 = "NO";
    defparam sub_1888_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_23 (.A0(r_t1[21]), .B0(o_sw_N_1360[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[22]), .B1(o_sw_N_1360[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16581), .COUT(n16582));
    defparam sub_1888_add_2_23.INIT0 = 16'h5999;
    defparam sub_1888_add_2_23.INIT1 = 16'h5999;
    defparam sub_1888_add_2_23.INJECT1_0 = "NO";
    defparam sub_1888_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_21 (.A0(r_t1[19]), .B0(o_sw_N_1360[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[20]), .B1(o_sw_N_1360[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16580), .COUT(n16581));
    defparam sub_1888_add_2_21.INIT0 = 16'h5999;
    defparam sub_1888_add_2_21.INIT1 = 16'h5999;
    defparam sub_1888_add_2_21.INJECT1_0 = "NO";
    defparam sub_1888_add_2_21.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_17 (.A0(r_t3[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16466), .COUT(n16467), .S0(n133_adj_1743[15]), .S1(n133_adj_1743[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_17.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_17.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_19 (.A0(r_t1[17]), .B0(o_sw_N_1360[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[18]), .B1(o_sw_N_1360[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16579), .COUT(n16580));
    defparam sub_1888_add_2_19.INIT0 = 16'h5999;
    defparam sub_1888_add_2_19.INIT1 = 16'h5999;
    defparam sub_1888_add_2_19.INJECT1_0 = "NO";
    defparam sub_1888_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_17 (.A0(r_t1[15]), .B0(o_sw_N_1360[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[16]), .B1(o_sw_N_1360[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16578), .COUT(n16579));
    defparam sub_1888_add_2_17.INIT0 = 16'h5999;
    defparam sub_1888_add_2_17.INIT1 = 16'h5999;
    defparam sub_1888_add_2_17.INJECT1_0 = "NO";
    defparam sub_1888_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_15 (.A0(r_t1[13]), .B0(o_sw_N_1360[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[14]), .B1(o_sw_N_1360[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16577), .COUT(n16578));
    defparam sub_1888_add_2_15.INIT0 = 16'h5999;
    defparam sub_1888_add_2_15.INIT1 = 16'h5999;
    defparam sub_1888_add_2_15.INJECT1_0 = "NO";
    defparam sub_1888_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_13 (.A0(r_t1[11]), .B0(o_sw_N_1360[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[12]), .B1(o_sw_N_1360[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16576), .COUT(n16577));
    defparam sub_1888_add_2_13.INIT0 = 16'h5999;
    defparam sub_1888_add_2_13.INIT1 = 16'h5999;
    defparam sub_1888_add_2_13.INJECT1_0 = "NO";
    defparam sub_1888_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_11 (.A0(r_t1[9]), .B0(o_sw_N_1360[9]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[10]), .B1(o_sw_N_1360[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16575), .COUT(n16576));
    defparam sub_1888_add_2_11.INIT0 = 16'h5999;
    defparam sub_1888_add_2_11.INIT1 = 16'h5999;
    defparam sub_1888_add_2_11.INJECT1_0 = "NO";
    defparam sub_1888_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_9 (.A0(r_t1[7]), .B0(o_sw_N_1360[7]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[8]), .B1(o_sw_N_1360[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16574), .COUT(n16575));
    defparam sub_1888_add_2_9.INIT0 = 16'h5999;
    defparam sub_1888_add_2_9.INIT1 = 16'h5999;
    defparam sub_1888_add_2_9.INJECT1_0 = "NO";
    defparam sub_1888_add_2_9.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_15 (.A0(r_t3[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16465), .COUT(n16466), .S0(n133_adj_1743[13]), .S1(n133_adj_1743[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_15.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_15.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_7 (.A0(r_t1[5]), .B0(o_sw_N_1360[5]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[6]), .B1(o_sw_N_1360[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16573), .COUT(n16574));
    defparam sub_1888_add_2_7.INIT0 = 16'h5999;
    defparam sub_1888_add_2_7.INIT1 = 16'h5999;
    defparam sub_1888_add_2_7.INJECT1_0 = "NO";
    defparam sub_1888_add_2_7.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_13 (.A0(r_t3[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16464), .COUT(n16465), .S0(n133_adj_1743[11]), .S1(n133_adj_1743[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_13.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_13.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_11 (.A0(r_t3[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16463), .COUT(n16464), .S0(n133_adj_1743[9]), .S1(n133_adj_1743[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_11.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_11.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_9 (.A0(r_t3[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16462), .COUT(n16463), .S0(n133_adj_1743[7]), .S1(n133_adj_1743[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_9.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_9.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_5 (.A0(r_t1[3]), .B0(o_sw_N_1360[3]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[4]), .B1(o_sw_N_1360[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16572), .COUT(n16573));
    defparam sub_1888_add_2_5.INIT0 = 16'h5999;
    defparam sub_1888_add_2_5.INIT1 = 16'h5999;
    defparam sub_1888_add_2_5.INJECT1_0 = "NO";
    defparam sub_1888_add_2_5.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_7 (.A0(r_t3[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16461), .COUT(n16462), .S0(n133_adj_1743[5]), .S1(n133_adj_1743[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_7.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_3 (.A0(r_t1[1]), .B0(o_sw_N_1360[1]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[2]), .B1(o_sw_N_1360[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16571), .COUT(n16572));
    defparam sub_1888_add_2_3.INIT0 = 16'h5999;
    defparam sub_1888_add_2_3.INIT1 = 16'h5999;
    defparam sub_1888_add_2_3.INJECT1_0 = "NO";
    defparam sub_1888_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1888_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[0]), .B1(o_sw_N_1360[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n16571));
    defparam sub_1888_add_2_1.INIT0 = 16'h0000;
    defparam sub_1888_add_2_1.INIT1 = 16'h5999;
    defparam sub_1888_add_2_1.INJECT1_0 = "NO";
    defparam sub_1888_add_2_1.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_5 (.A0(r_t3[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16460), .COUT(n16461), .S0(n133_adj_1743[3]), .S1(n133_adj_1743[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_5.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_33 (.A0(r_t1[31]), .B0(T1[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16570), .S1(n6416));
    defparam sub_1890_add_2_33.INIT0 = 16'h5999;
    defparam sub_1890_add_2_33.INIT1 = 16'h0000;
    defparam sub_1890_add_2_33.INJECT1_0 = "NO";
    defparam sub_1890_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_31 (.A0(r_t1[29]), .B0(T1[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[30]), .B1(T1[30]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16569), .COUT(n16570));
    defparam sub_1890_add_2_31.INIT0 = 16'h5999;
    defparam sub_1890_add_2_31.INIT1 = 16'h5999;
    defparam sub_1890_add_2_31.INJECT1_0 = "NO";
    defparam sub_1890_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_29 (.A0(r_t1[27]), .B0(T1[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[28]), .B1(T1[28]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16568), .COUT(n16569));
    defparam sub_1890_add_2_29.INIT0 = 16'h5999;
    defparam sub_1890_add_2_29.INIT1 = 16'h5999;
    defparam sub_1890_add_2_29.INJECT1_0 = "NO";
    defparam sub_1890_add_2_29.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_3 (.A0(r_t3[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16459), .COUT(n16460), .S0(n133_adj_1743[1]), .S1(n133_adj_1743[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t3_2422_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t3_2422_add_4_3.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_3.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_27 (.A0(r_t1[25]), .B0(T1[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[26]), .B1(T1[26]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16567), .COUT(n16568));
    defparam sub_1890_add_2_27.INIT0 = 16'h5999;
    defparam sub_1890_add_2_27.INIT1 = 16'h5999;
    defparam sub_1890_add_2_27.INJECT1_0 = "NO";
    defparam sub_1890_add_2_27.INJECT1_1 = "NO";
    CCU2D r_t3_2422_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n16459), .S1(n133_adj_1743[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422_add_4_1.INIT0 = 16'hF000;
    defparam r_t3_2422_add_4_1.INIT1 = 16'h0555;
    defparam r_t3_2422_add_4_1.INJECT1_0 = "NO";
    defparam r_t3_2422_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_33 (.A0(r_t2[31]), .B0(o_sw_N_1396[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16458), .S1(n6486));
    defparam sub_1894_add_2_33.INIT0 = 16'h5999;
    defparam sub_1894_add_2_33.INIT1 = 16'h0000;
    defparam sub_1894_add_2_33.INJECT1_0 = "NO";
    defparam sub_1894_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_31 (.A0(r_t2[29]), .B0(o_sw_N_1396[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[30]), .B1(o_sw_N_1396[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16457), .COUT(n16458));
    defparam sub_1894_add_2_31.INIT0 = 16'h5999;
    defparam sub_1894_add_2_31.INIT1 = 16'h5999;
    defparam sub_1894_add_2_31.INJECT1_0 = "NO";
    defparam sub_1894_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_25 (.A0(r_t1[23]), .B0(T1[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[24]), .B1(T1[24]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16566), .COUT(n16567));
    defparam sub_1890_add_2_25.INIT0 = 16'h5999;
    defparam sub_1890_add_2_25.INIT1 = 16'h5999;
    defparam sub_1890_add_2_25.INJECT1_0 = "NO";
    defparam sub_1890_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_23 (.A0(r_t1[21]), .B0(T1[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[22]), .B1(T1[22]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16565), .COUT(n16566));
    defparam sub_1890_add_2_23.INIT0 = 16'h5999;
    defparam sub_1890_add_2_23.INIT1 = 16'h5999;
    defparam sub_1890_add_2_23.INJECT1_0 = "NO";
    defparam sub_1890_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_29 (.A0(r_t2[27]), .B0(o_sw_N_1396[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[28]), .B1(o_sw_N_1396[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16456), .COUT(n16457));
    defparam sub_1894_add_2_29.INIT0 = 16'h5999;
    defparam sub_1894_add_2_29.INIT1 = 16'h5999;
    defparam sub_1894_add_2_29.INJECT1_0 = "NO";
    defparam sub_1894_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_27 (.A0(r_t2[25]), .B0(o_sw_N_1396[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[26]), .B1(o_sw_N_1396[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16455), .COUT(n16456));
    defparam sub_1894_add_2_27.INIT0 = 16'h5999;
    defparam sub_1894_add_2_27.INIT1 = 16'h5999;
    defparam sub_1894_add_2_27.INJECT1_0 = "NO";
    defparam sub_1894_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_21 (.A0(r_t1[19]), .B0(T1[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[20]), .B1(T1[20]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16564), .COUT(n16565));
    defparam sub_1890_add_2_21.INIT0 = 16'h5999;
    defparam sub_1890_add_2_21.INIT1 = 16'h5999;
    defparam sub_1890_add_2_21.INJECT1_0 = "NO";
    defparam sub_1890_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_19 (.A0(r_t1[17]), .B0(T1[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[18]), .B1(T1[18]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16563), .COUT(n16564));
    defparam sub_1890_add_2_19.INIT0 = 16'h5999;
    defparam sub_1890_add_2_19.INIT1 = 16'h5999;
    defparam sub_1890_add_2_19.INJECT1_0 = "NO";
    defparam sub_1890_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_17 (.A0(r_t1[15]), .B0(T1[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[16]), .B1(T1[16]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16562), .COUT(n16563));
    defparam sub_1890_add_2_17.INIT0 = 16'h5999;
    defparam sub_1890_add_2_17.INIT1 = 16'h5999;
    defparam sub_1890_add_2_17.INJECT1_0 = "NO";
    defparam sub_1890_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_25 (.A0(r_t2[23]), .B0(o_sw_N_1396[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[24]), .B1(o_sw_N_1396[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16454), .COUT(n16455));
    defparam sub_1894_add_2_25.INIT0 = 16'h5999;
    defparam sub_1894_add_2_25.INIT1 = 16'h5999;
    defparam sub_1894_add_2_25.INJECT1_0 = "NO";
    defparam sub_1894_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_23 (.A0(r_t2[21]), .B0(o_sw_N_1396[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[22]), .B1(o_sw_N_1396[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16453), .COUT(n16454));
    defparam sub_1894_add_2_23.INIT0 = 16'h5999;
    defparam sub_1894_add_2_23.INIT1 = 16'h5999;
    defparam sub_1894_add_2_23.INJECT1_0 = "NO";
    defparam sub_1894_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_21 (.A0(r_t2[19]), .B0(o_sw_N_1396[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[20]), .B1(o_sw_N_1396[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16452), .COUT(n16453));
    defparam sub_1894_add_2_21.INIT0 = 16'h5999;
    defparam sub_1894_add_2_21.INIT1 = 16'h5999;
    defparam sub_1894_add_2_21.INJECT1_0 = "NO";
    defparam sub_1894_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_19 (.A0(r_t2[17]), .B0(o_sw_N_1396[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[18]), .B1(o_sw_N_1396[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16451), .COUT(n16452));
    defparam sub_1894_add_2_19.INIT0 = 16'h5999;
    defparam sub_1894_add_2_19.INIT1 = 16'h5999;
    defparam sub_1894_add_2_19.INJECT1_0 = "NO";
    defparam sub_1894_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_17 (.A0(r_t2[15]), .B0(o_sw_N_1396[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[16]), .B1(o_sw_N_1396[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16450), .COUT(n16451));
    defparam sub_1894_add_2_17.INIT0 = 16'h5999;
    defparam sub_1894_add_2_17.INIT1 = 16'h5999;
    defparam sub_1894_add_2_17.INJECT1_0 = "NO";
    defparam sub_1894_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_15 (.A0(r_t2[13]), .B0(o_sw_N_1396[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[14]), .B1(o_sw_N_1396[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16449), .COUT(n16450));
    defparam sub_1894_add_2_15.INIT0 = 16'h5999;
    defparam sub_1894_add_2_15.INIT1 = 16'h5999;
    defparam sub_1894_add_2_15.INJECT1_0 = "NO";
    defparam sub_1894_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_15 (.A0(r_t1[13]), .B0(T1[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[14]), .B1(T1[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16561), .COUT(n16562));
    defparam sub_1890_add_2_15.INIT0 = 16'h5999;
    defparam sub_1890_add_2_15.INIT1 = 16'h5999;
    defparam sub_1890_add_2_15.INJECT1_0 = "NO";
    defparam sub_1890_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_13 (.A0(r_t2[11]), .B0(o_sw_N_1396[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[12]), .B1(o_sw_N_1396[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16448), .COUT(n16449));
    defparam sub_1894_add_2_13.INIT0 = 16'h5999;
    defparam sub_1894_add_2_13.INIT1 = 16'h5999;
    defparam sub_1894_add_2_13.INJECT1_0 = "NO";
    defparam sub_1894_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_13 (.A0(r_t1[11]), .B0(T1[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[12]), .B1(T1[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16560), .COUT(n16561));
    defparam sub_1890_add_2_13.INIT0 = 16'h5999;
    defparam sub_1890_add_2_13.INIT1 = 16'h5999;
    defparam sub_1890_add_2_13.INJECT1_0 = "NO";
    defparam sub_1890_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_11 (.A0(r_t2[9]), .B0(o_sw_N_1396[9]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[10]), .B1(o_sw_N_1396[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16447), .COUT(n16448));
    defparam sub_1894_add_2_11.INIT0 = 16'h5999;
    defparam sub_1894_add_2_11.INIT1 = 16'h5999;
    defparam sub_1894_add_2_11.INJECT1_0 = "NO";
    defparam sub_1894_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_11 (.A0(r_t1[9]), .B0(T1[9]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[10]), .B1(T1[10]), .C1(GND_net), .D1(GND_net), .CIN(n16559), 
          .COUT(n16560));
    defparam sub_1890_add_2_11.INIT0 = 16'h5999;
    defparam sub_1890_add_2_11.INIT1 = 16'h5999;
    defparam sub_1890_add_2_11.INJECT1_0 = "NO";
    defparam sub_1890_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_9 (.A0(r_t2[7]), .B0(o_sw_N_1396[7]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[8]), .B1(o_sw_N_1396[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16446), .COUT(n16447));
    defparam sub_1894_add_2_9.INIT0 = 16'h5999;
    defparam sub_1894_add_2_9.INIT1 = 16'h5999;
    defparam sub_1894_add_2_9.INJECT1_0 = "NO";
    defparam sub_1894_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_7 (.A0(r_t2[5]), .B0(o_sw_N_1396[5]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[6]), .B1(o_sw_N_1396[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16445), .COUT(n16446));
    defparam sub_1894_add_2_7.INIT0 = 16'h5999;
    defparam sub_1894_add_2_7.INIT1 = 16'h5999;
    defparam sub_1894_add_2_7.INJECT1_0 = "NO";
    defparam sub_1894_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_9 (.A0(r_t1[7]), .B0(T1[7]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[8]), .B1(T1[8]), .C1(GND_net), .D1(GND_net), .CIN(n16558), 
          .COUT(n16559));
    defparam sub_1890_add_2_9.INIT0 = 16'h5999;
    defparam sub_1890_add_2_9.INIT1 = 16'h5999;
    defparam sub_1890_add_2_9.INJECT1_0 = "NO";
    defparam sub_1890_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_7 (.A0(r_t1[5]), .B0(T1[5]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[6]), .B1(T1[6]), .C1(GND_net), .D1(GND_net), .CIN(n16557), 
          .COUT(n16558));
    defparam sub_1890_add_2_7.INIT0 = 16'h5999;
    defparam sub_1890_add_2_7.INIT1 = 16'h5999;
    defparam sub_1890_add_2_7.INJECT1_0 = "NO";
    defparam sub_1890_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_5 (.A0(r_t1[3]), .B0(T1[3]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[4]), .B1(T1[4]), .C1(GND_net), .D1(GND_net), .CIN(n16556), 
          .COUT(n16557));
    defparam sub_1890_add_2_5.INIT0 = 16'h5999;
    defparam sub_1890_add_2_5.INIT1 = 16'h5999;
    defparam sub_1890_add_2_5.INJECT1_0 = "NO";
    defparam sub_1890_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_3 (.A0(r_t1[1]), .B0(T1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[2]), .B1(T1[2]), .C1(GND_net), .D1(GND_net), .CIN(n16555), 
          .COUT(n16556));
    defparam sub_1890_add_2_3.INIT0 = 16'h5999;
    defparam sub_1890_add_2_3.INIT1 = 16'h5999;
    defparam sub_1890_add_2_3.INJECT1_0 = "NO";
    defparam sub_1890_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_5 (.A0(r_t2[3]), .B0(o_sw_N_1396[3]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[4]), .B1(o_sw_N_1396[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16444), .COUT(n16445));
    defparam sub_1894_add_2_5.INIT0 = 16'h5999;
    defparam sub_1894_add_2_5.INIT1 = 16'h5999;
    defparam sub_1894_add_2_5.INJECT1_0 = "NO";
    defparam sub_1894_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1890_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[0]), .B1(T1[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n16555));
    defparam sub_1890_add_2_1.INIT0 = 16'h0000;
    defparam sub_1890_add_2_1.INIT1 = 16'h5999;
    defparam sub_1890_add_2_1.INJECT1_0 = "NO";
    defparam sub_1890_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_3 (.A0(r_t2[1]), .B0(o_sw_N_1396[1]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[2]), .B1(o_sw_N_1396[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16443), .COUT(n16444));
    defparam sub_1894_add_2_3.INIT0 = 16'h5999;
    defparam sub_1894_add_2_3.INIT1 = 16'h5999;
    defparam sub_1894_add_2_3.INJECT1_0 = "NO";
    defparam sub_1894_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1894_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[0]), .B1(o_sw_N_1396[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n16443));
    defparam sub_1894_add_2_1.INIT0 = 16'h0000;
    defparam sub_1894_add_2_1.INIT1 = 16'h5999;
    defparam sub_1894_add_2_1.INJECT1_0 = "NO";
    defparam sub_1894_add_2_1.INJECT1_1 = "NO";
    PFUMX i12810 (.BLUT(n18539), .ALUT(n18538), .C0(seq_SM[0]), .Z(n18540));
    FD1P3IX r_t1_2420__i0 (.D(n133[0]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i0.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i31 (.D(n133_adj_1742[31]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i31.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i30 (.D(n133_adj_1742[30]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i30.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i29 (.D(n133_adj_1742[29]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i29.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i28 (.D(n133_adj_1742[28]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i28.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i27 (.D(n133_adj_1742[27]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i27.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i26 (.D(n133_adj_1742[26]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i26.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i25 (.D(n133_adj_1742[25]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i25.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i24 (.D(n133_adj_1742[24]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i24.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i23 (.D(n133_adj_1742[23]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i23.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i22 (.D(n133_adj_1742[22]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i22.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i21 (.D(n133_adj_1742[21]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i21.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i20 (.D(n133_adj_1742[20]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i20.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i19 (.D(n133_adj_1742[19]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i19.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i18 (.D(n133_adj_1742[18]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i18.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i17 (.D(n133_adj_1742[17]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i17.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i16 (.D(n133_adj_1742[16]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i16.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i15 (.D(n133_adj_1742[15]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i15.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i14 (.D(n133_adj_1742[14]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i14.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i13 (.D(n133_adj_1742[13]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i13.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i12 (.D(n133_adj_1742[12]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i12.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i11 (.D(n133_adj_1742[11]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i11.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i10 (.D(n133_adj_1742[10]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i10.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i9 (.D(n133_adj_1742[9]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i9.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i8 (.D(n133_adj_1742[8]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i8.GSR = "DISABLED";
    LUT4 i12656_4_lut (.A(n18916), .B(n21), .C(r_mode[0]), .D(r_mode[1]), 
         .Z(clk_c_enable_425)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C (D)))) */ ;
    defparam i12656_4_lut.init = 16'hafbb;
    FD1P3IX r_t2_2424__i7 (.D(n133_adj_1742[7]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i7.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i6 (.D(n133_adj_1742[6]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i6.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i5 (.D(n133_adj_1742[5]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i5.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i4 (.D(n133_adj_1742[4]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i4.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i3 (.D(n133_adj_1742[3]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i3.GSR = "DISABLED";
    LUT4 i37_4_lut (.A(n14172), .B(seq_SM[0]), .C(\seq_SM[1] ), .D(n6486), 
         .Z(n21)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i37_4_lut.init = 16'hfaca;
    FD1P3IX r_t2_2424__i2 (.D(n133_adj_1742[2]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i2.GSR = "DISABLED";
    FD1P3IX r_t2_2424__i1 (.D(n133_adj_1742[1]), .SP(clk_c_enable_763), 
            .CD(n10534), .CK(clk_c), .Q(r_t2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2424__i1.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i31 (.D(n133_adj_1743[31]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i31.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i30 (.D(n133_adj_1743[30]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i30.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i29 (.D(n133_adj_1743[29]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i29.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i28 (.D(n133_adj_1743[28]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i28.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i27 (.D(n133_adj_1743[27]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i27.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i26 (.D(n133_adj_1743[26]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i26.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i25 (.D(n133_adj_1743[25]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i25.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i24 (.D(n133_adj_1743[24]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i24.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i23 (.D(n133_adj_1743[23]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i23.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i22 (.D(n133_adj_1743[22]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i22.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i21 (.D(n133_adj_1743[21]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i21.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i20 (.D(n133_adj_1743[20]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i20.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i19 (.D(n133_adj_1743[19]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i19.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i18 (.D(n133_adj_1743[18]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i18.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i17 (.D(n133_adj_1743[17]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i17.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i16 (.D(n133_adj_1743[16]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i16.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i15 (.D(n133_adj_1743[15]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i15.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i14 (.D(n133_adj_1743[14]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i14.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i13 (.D(n133_adj_1743[13]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i13.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i12 (.D(n133_adj_1743[12]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i12.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i11 (.D(n133_adj_1743[11]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i11.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i10 (.D(n133_adj_1743[10]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i10.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i9 (.D(n133_adj_1743[9]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i9.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i8 (.D(n133_adj_1743[8]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i8.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i7 (.D(n133_adj_1743[7]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i7.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i6 (.D(n133_adj_1743[6]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i6.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i5 (.D(n133_adj_1743[5]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i5.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i4 (.D(n133_adj_1743[4]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i4.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i3 (.D(n133_adj_1743[3]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i3.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i2 (.D(n133_adj_1743[2]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i2.GSR = "DISABLED";
    FD1P3IX r_t3_2422__i1 (.D(n133_adj_1743[1]), .SP(clk_c_enable_806), 
            .CD(n10527), .CK(clk_c), .Q(r_t3[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2422__i1.GSR = "DISABLED";
    FD1P3IX r_t1_2420__i31 (.D(n133[31]), .SP(clk_c_enable_807), .CD(n10764), 
            .CK(clk_c), .Q(r_t1[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2420__i31.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module ft232h_asynFIFO_w
//

module ft232h_asynFIFO_w (wr_n_c_0, r_data_out, clk_c, next_state_5__N_802_c_0, 
            rx_dv_2, rx_dv_1, LTC1865_en, \adc_data_2[11] , \adc_data_1[11] , 
            \adc_data_2[10] , \adc_data_1[10] , \adc_data_2[14] , \adc_data_1[14] , 
            \adc_data_2[9] , \adc_data_1[9] , \adc_data_2[12] , \adc_data_1[12] , 
            \adc_data[0] , \spi_sm[0] , n17, \spi_sm[0]_adj_3 , LTC1865_2_en, 
            n17_adj_4, \adc_data_2[15] , \adc_data_1[15] , \adc_data[6] , 
            \adc_data_2[13] , \adc_data_1[13] , \adc_data[1] , \adc_data[2] , 
            \adc_data[3] , \adc_data[4] , \adc_data_2[8] , \adc_data_1[8] , 
            \adc_data[7] , \adc_data[5] ) /* synthesis syn_module_defined=1 */ ;
    output wr_n_c_0;
    output [7:0]r_data_out;
    input clk_c;
    input next_state_5__N_802_c_0;
    input rx_dv_2;
    input rx_dv_1;
    input LTC1865_en;
    input \adc_data_2[11] ;
    input \adc_data_1[11] ;
    input \adc_data_2[10] ;
    input \adc_data_1[10] ;
    input \adc_data_2[14] ;
    input \adc_data_1[14] ;
    input \adc_data_2[9] ;
    input \adc_data_1[9] ;
    input \adc_data_2[12] ;
    input \adc_data_1[12] ;
    input \adc_data[0] ;
    input \spi_sm[0] ;
    output n17;
    input \spi_sm[0]_adj_3 ;
    input LTC1865_2_en;
    output n17_adj_4;
    input \adc_data_2[15] ;
    input \adc_data_1[15] ;
    input \adc_data[6] ;
    input \adc_data_2[13] ;
    input \adc_data_1[13] ;
    input \adc_data[1] ;
    input \adc_data[2] ;
    input \adc_data[3] ;
    input \adc_data[4] ;
    input \adc_data_2[8] ;
    input \adc_data_1[8] ;
    input \adc_data[7] ;
    input \adc_data[5] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    wire [5:0]curent_state;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(25[10:22])
    wire [5:0]next_state_5__N_800;
    
    wire n18716, clk_c_enable_503;
    wire [7:0]n7247;
    wire [5:0]next_state;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(25[24:34])
    
    wire next_state_5__N_840, n18849, n18723;
    wire [3:0]r_ft_wait;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(26[11:20])
    wire [3:0]r_ft_wait_3__N_841;
    
    wire n18717, n18718, n18719, n18720;
    wire [3:0]n7494;
    
    wire n18721, n18722, clk_c_enable_297, n18878, n6, n18840, n18847, 
        n18755, n18756, n13, n18525, n17500, n17501, n18524, n17502;
    wire [7:0]n7272;
    
    wire n17503, n18850, n18882, n18649, clk_c_enable_312, n8392, 
        n13291, n13347, n18523, n11;
    
    LUT4 curent_state_0__bdd_3_lut_12869 (.A(curent_state[0]), .B(next_state_5__N_800[2]), 
         .C(wr_n_c_0), .Z(n18716)) /* synthesis lut_function=(!(A (C)+!A !(B))) */ ;
    defparam curent_state_0__bdd_3_lut_12869.init = 16'h4e4e;
    FD1P3AX o_r_data_out_i0_i0 (.D(n7247[0]), .SP(clk_c_enable_503), .CK(clk_c), 
            .Q(r_data_out[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam o_r_data_out_i0_i0.GSR = "ENABLED";
    FD1S1I next_state_5__I_0_i1 (.D(n18723), .CK(next_state_5__N_840), .CD(n18849), 
           .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(42[1] 85[4])
    defparam next_state_5__I_0_i1.GSR = "DISABLED";
    FD1S3AY r_ft_wait_i0 (.D(r_ft_wait_3__N_841[0]), .CK(clk_c), .Q(r_ft_wait[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam r_ft_wait_i0.GSR = "ENABLED";
    FD1S3AX curent_state_i1 (.D(next_state[0]), .CK(clk_c), .Q(curent_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(37[9:36])
    defparam curent_state_i1.GSR = "ENABLED";
    LUT4 curent_state_0__bdd_3_lut (.A(curent_state[0]), .B(next_state_5__N_800[2]), 
         .C(curent_state[2]), .Z(n18717)) /* synthesis lut_function=(!(A (B+(C)))) */ ;
    defparam curent_state_0__bdd_3_lut.init = 16'h5757;
    LUT4 curent_state_0__bdd_2_lut (.A(next_state_5__N_802_c_0), .B(curent_state[2]), 
         .Z(n18718)) /* synthesis lut_function=(A (B)) */ ;
    defparam curent_state_0__bdd_2_lut.init = 16'h8888;
    LUT4 wr_n_c_0_bdd_4_lut_12922 (.A(next_state_5__N_802_c_0), .B(rx_dv_2), 
         .C(rx_dv_1), .D(LTC1865_en), .Z(n18719)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam wr_n_c_0_bdd_4_lut_12922.init = 16'h5044;
    LUT4 n18719_bdd_3_lut_12914 (.A(n18719), .B(wr_n_c_0), .C(curent_state[2]), 
         .Z(n18720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n18719_bdd_3_lut_12914.init = 16'hcaca;
    LUT4 mux_2570_i3_3_lut_4_lut (.A(curent_state[1]), .B(curent_state[0]), 
         .C(curent_state[2]), .D(next_state_5__N_800[2]), .Z(n7494[2])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam mux_2570_i3_3_lut_4_lut.init = 16'h7870;
    LUT4 n18721_bdd_3_lut (.A(n18721), .B(n18717), .C(curent_state[1]), 
         .Z(n18722)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n18721_bdd_3_lut.init = 16'hcaca;
    LUT4 curent_state_1__bdd_4_lut (.A(curent_state[1]), .B(curent_state[3]), 
         .C(curent_state[2]), .D(curent_state[0]), .Z(clk_c_enable_297)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam curent_state_1__bdd_4_lut.init = 16'h3413;
    LUT4 i3_4_lut_rep_220 (.A(r_ft_wait[0]), .B(r_ft_wait[3]), .C(r_ft_wait[2]), 
         .D(r_ft_wait[1]), .Z(n18878)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(114[20:34])
    defparam i3_4_lut_rep_220.init = 16'hfffe;
    LUT4 i2714_2_lut_3_lut_4_lut_4_lut (.A(r_ft_wait[0]), .B(r_ft_wait[3]), 
         .C(r_ft_wait[2]), .D(r_ft_wait[1]), .Z(n6)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(114[20:34])
    defparam i2714_2_lut_3_lut_4_lut_4_lut.init = 16'hfffb;
    LUT4 i2706_2_lut_rep_182_3_lut_4_lut (.A(r_ft_wait[0]), .B(r_ft_wait[3]), 
         .C(r_ft_wait[2]), .D(r_ft_wait[1]), .Z(n18840)) /* synthesis lut_function=(A+(B (D)+!B ((D)+!C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(114[20:34])
    defparam i2706_2_lut_rep_182_3_lut_4_lut.init = 16'hffab;
    LUT4 i2698_2_lut_rep_189_4_lut (.A(r_ft_wait[0]), .B(r_ft_wait[3]), 
         .C(r_ft_wait[2]), .D(r_ft_wait[1]), .Z(n18847)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(114[20:34])
    defparam i2698_2_lut_rep_189_4_lut.init = 16'haaab;
    LUT4 i9199_2_lut_rep_191_3_lut (.A(curent_state[1]), .B(curent_state[2]), 
         .C(curent_state[3]), .Z(n18849)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i9199_2_lut_rep_191_3_lut.init = 16'he0e0;
    LUT4 i9200_1_lut_2_lut_3_lut (.A(curent_state[1]), .B(curent_state[2]), 
         .C(curent_state[3]), .Z(next_state_5__N_840)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;
    defparam i9200_1_lut_2_lut_3_lut.init = 16'h1f1f;
    LUT4 curent_state_1__bdd_3_lut (.A(curent_state[1]), .B(n18755), .C(curent_state[0]), 
         .Z(n18756)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam curent_state_1__bdd_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_4_lut_4_lut (.A(curent_state[1]), .B(curent_state[2]), 
         .C(curent_state[3]), .D(curent_state[0]), .Z(n13)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D))+!B (D))) */ ;
    defparam i2_4_lut_4_lut_4_lut.init = 16'hf9ee;
    FD1S1I next_state_5__I_0_i2 (.D(n18756), .CK(next_state_5__N_840), .CD(curent_state[3]), 
           .Q(next_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(42[1] 85[4])
    defparam next_state_5__I_0_i2.GSR = "DISABLED";
    FD1S1I next_state_5__I_0_i3 (.D(n7494[2]), .CK(next_state_5__N_840), 
           .CD(curent_state[3]), .Q(next_state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(42[1] 85[4])
    defparam next_state_5__I_0_i3.GSR = "DISABLED";
    FD1S1I next_state_5__I_0_i4 (.D(n18525), .CK(next_state_5__N_840), .CD(n18849), 
           .Q(next_state[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(42[1] 85[4])
    defparam next_state_5__I_0_i4.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(\adc_data_2[11] ), .B(n17500), .C(\adc_data_1[11] ), 
         .D(LTC1865_en), .Z(n17501)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hc088;
    LUT4 curent_state_2__bdd_3_lut (.A(curent_state[2]), .B(curent_state[0]), 
         .C(curent_state[1]), .Z(n18524)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam curent_state_2__bdd_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_38 (.A(\adc_data_2[10] ), .B(n17500), .C(\adc_data_1[10] ), 
         .D(LTC1865_en), .Z(n17502)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_38.init = 16'hc088;
    LUT4 i8526_4_lut (.A(\adc_data_2[14] ), .B(curent_state[0]), .C(\adc_data_1[14] ), 
         .D(LTC1865_en), .Z(n7272[6])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i8526_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_39 (.A(\adc_data_2[9] ), .B(n17500), .C(\adc_data_1[9] ), 
         .D(LTC1865_en), .Z(n17503)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_39.init = 16'hc088;
    LUT4 next_state_5__N_802_c_0_bdd_4_lut_12899 (.A(next_state_5__N_802_c_0), 
         .B(curent_state[2]), .C(curent_state[1]), .D(next_state_5__N_800[2]), 
         .Z(n18755)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B (C)+!B (C (D))))) */ ;
    defparam next_state_5__N_802_c_0_bdd_4_lut_12899.init = 16'h0737;
    LUT4 i2_3_lut_rep_192_4_lut (.A(curent_state[2]), .B(curent_state[3]), 
         .C(curent_state[1]), .D(curent_state[0]), .Z(n18850)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(128[13:30])
    defparam i2_3_lut_rep_192_4_lut.init = 16'hffdf;
    LUT4 equal_2573_i4_2_lut_rep_224 (.A(curent_state[2]), .B(curent_state[3]), 
         .Z(n18882)) /* synthesis lut_function=(A+(B)) */ ;
    defparam equal_2573_i4_2_lut_rep_224.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(curent_state[2]), .B(curent_state[3]), 
         .C(curent_state[0]), .D(curent_state[1]), .Z(n17500)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(curent_state[0]), .B(curent_state[1]), 
         .C(n18850), .D(n18882), .Z(clk_c_enable_503)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(118[13:26])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0f2e;
    FD1P3AY r_wr_n_106 (.D(n18649), .SP(clk_c_enable_297), .CK(clk_c), 
            .Q(wr_n_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam r_wr_n_106.GSR = "ENABLED";
    FD1P3AX r_ftWait_done_109 (.D(n8392), .SP(clk_c_enable_312), .CK(clk_c), 
            .Q(next_state_5__N_800[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam r_ftWait_done_109.GSR = "ENABLED";
    LUT4 i8215_4_lut_4_lut (.A(curent_state[2]), .B(curent_state[3]), .C(curent_state[0]), 
         .D(curent_state[1]), .Z(n13291)) /* synthesis lut_function=(A+(B (C+(D))+!B !(C (D)))) */ ;
    defparam i8215_4_lut_4_lut.init = 16'heffb;
    LUT4 i8270_3_lut_4_lut_4_lut (.A(curent_state[0]), .B(curent_state[1]), 
         .C(curent_state[2]), .D(curent_state[3]), .Z(n13347)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(98[13:20])
    defparam i8270_3_lut_4_lut_4_lut.init = 16'hffde;
    LUT4 i8528_4_lut (.A(\adc_data_2[12] ), .B(curent_state[0]), .C(\adc_data_1[12] ), 
         .D(LTC1865_en), .Z(n7272[4])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i8528_4_lut.init = 16'hc088;
    LUT4 curent_state_2__bdd_2_lut (.A(wr_n_c_0), .B(curent_state[0]), .Z(n18523)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam curent_state_2__bdd_2_lut.init = 16'h7777;
    PFUMX mux_2397_i1 (.BLUT(\adc_data[0] ), .ALUT(n7272[0]), .C0(n18850), 
          .Z(n7247[0]));
    LUT4 curent_state_3__bdd_4_lut (.A(curent_state[3]), .B(curent_state[2]), 
         .C(curent_state[0]), .D(curent_state[1]), .Z(clk_c_enable_312)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;
    defparam curent_state_3__bdd_4_lut.init = 16'h1043;
    FD1S3AX curent_state_i4 (.D(next_state[3]), .CK(clk_c), .Q(curent_state[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(37[9:36])
    defparam curent_state_i4.GSR = "ENABLED";
    FD1S3AX curent_state_i3 (.D(next_state[2]), .CK(clk_c), .Q(curent_state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(37[9:36])
    defparam curent_state_i3.GSR = "ENABLED";
    FD1S3AX curent_state_i2 (.D(next_state[1]), .CK(clk_c), .Q(curent_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(37[9:36])
    defparam curent_state_i2.GSR = "ENABLED";
    FD1S3AX r_ft_wait_i3 (.D(r_ft_wait_3__N_841[3]), .CK(clk_c), .Q(r_ft_wait[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam r_ft_wait_i3.GSR = "ENABLED";
    FD1S3AX r_ft_wait_i2 (.D(r_ft_wait_3__N_841[2]), .CK(clk_c), .Q(r_ft_wait[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam r_ft_wait_i2.GSR = "ENABLED";
    FD1S3AX r_ft_wait_i1 (.D(r_ft_wait_3__N_841[1]), .CK(clk_c), .Q(r_ft_wait[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam r_ft_wait_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_3_lut (.A(next_state_5__N_802_c_0), .B(\spi_sm[0] ), .C(LTC1865_en), 
         .Z(n17)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(57[8:16])
    defparam i1_3_lut_3_lut.init = 16'hdcdc;
    LUT4 i1_3_lut_3_lut_adj_40 (.A(next_state_5__N_802_c_0), .B(\spi_sm[0]_adj_3 ), 
         .C(LTC1865_2_en), .Z(n17_adj_4)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ltc1865_controller.v(57[8:16])
    defparam i1_3_lut_3_lut_adj_40.init = 16'hdcdc;
    FD1P3AX o_r_data_out_i0_i7 (.D(n7247[7]), .SP(clk_c_enable_503), .CK(clk_c), 
            .Q(r_data_out[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam o_r_data_out_i0_i7.GSR = "ENABLED";
    FD1P3AX o_r_data_out_i0_i6 (.D(n7247[6]), .SP(clk_c_enable_503), .CK(clk_c), 
            .Q(r_data_out[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam o_r_data_out_i0_i6.GSR = "ENABLED";
    FD1P3AX o_r_data_out_i0_i5 (.D(n7247[5]), .SP(clk_c_enable_503), .CK(clk_c), 
            .Q(r_data_out[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam o_r_data_out_i0_i5.GSR = "ENABLED";
    FD1P3AX o_r_data_out_i0_i4 (.D(n7247[4]), .SP(clk_c_enable_503), .CK(clk_c), 
            .Q(r_data_out[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam o_r_data_out_i0_i4.GSR = "ENABLED";
    FD1P3AX o_r_data_out_i0_i3 (.D(n7247[3]), .SP(clk_c_enable_503), .CK(clk_c), 
            .Q(r_data_out[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam o_r_data_out_i0_i3.GSR = "ENABLED";
    FD1P3AX o_r_data_out_i0_i2 (.D(n7247[2]), .SP(clk_c_enable_503), .CK(clk_c), 
            .Q(r_data_out[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam o_r_data_out_i0_i2.GSR = "ENABLED";
    FD1P3AX o_r_data_out_i0_i1 (.D(n7247[1]), .SP(clk_c_enable_503), .CK(clk_c), 
            .Q(r_data_out[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=288, LSE_RLINE=297 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(96[10] 146[8])
    defparam o_r_data_out_i0_i1.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n13347), .B(n11), .C(r_ft_wait[0]), .D(n13), .Z(r_ft_wait_3__N_841[0])) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hfddd;
    LUT4 i1_3_lut (.A(n13291), .B(r_ft_wait[0]), .C(n18878), .Z(n11)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut.init = 16'h1414;
    LUT4 curent_state_3__bdd_4_lut_12933 (.A(curent_state[3]), .B(curent_state[2]), 
         .C(curent_state[0]), .D(curent_state[1]), .Z(n18649)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B (C+(D))))) */ ;
    defparam curent_state_3__bdd_4_lut_12933.init = 16'h0065;
    LUT4 i8525_4_lut (.A(\adc_data_2[15] ), .B(curent_state[0]), .C(\adc_data_1[15] ), 
         .D(LTC1865_en), .Z(n7272[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i8525_4_lut.init = 16'hc088;
    PFUMX mux_2397_i7 (.BLUT(\adc_data[6] ), .ALUT(n7272[6]), .C0(n18850), 
          .Z(n7247[6]));
    LUT4 i8527_4_lut (.A(\adc_data_2[13] ), .B(curent_state[0]), .C(\adc_data_1[13] ), 
         .D(LTC1865_en), .Z(n7272[5])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i8527_4_lut.init = 16'hc088;
    LUT4 i3373_3_lut (.A(next_state_5__N_800[2]), .B(n13291), .C(n18878), 
         .Z(n8392)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/ft232h_asynfifo_w.v(97[9] 145[16])
    defparam i3373_3_lut.init = 16'h2323;
    PFUMX mux_2397_i2 (.BLUT(\adc_data[1] ), .ALUT(n17503), .C0(n18850), 
          .Z(n7247[1]));
    PFUMX mux_2397_i3 (.BLUT(\adc_data[2] ), .ALUT(n17502), .C0(n18850), 
          .Z(n7247[2]));
    PFUMX mux_2397_i4 (.BLUT(\adc_data[3] ), .ALUT(n17501), .C0(n18850), 
          .Z(n7247[3]));
    PFUMX i12872 (.BLUT(n18722), .ALUT(n18716), .C0(curent_state[3]), 
          .Z(n18723));
    PFUMX mux_2397_i5 (.BLUT(\adc_data[4] ), .ALUT(n7272[4]), .C0(n18850), 
          .Z(n7247[4]));
    PFUMX i12870 (.BLUT(n18720), .ALUT(n18718), .C0(curent_state[0]), 
          .Z(n18721));
    LUT4 i1_4_lut_adj_41 (.A(n13291), .B(r_ft_wait[3]), .C(n6), .D(n13), 
         .Z(r_ft_wait_3__N_841[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !(C))) */ ;
    defparam i1_4_lut_adj_41.init = 16'hcd41;
    LUT4 i1_4_lut_adj_42 (.A(n13291), .B(r_ft_wait[2]), .C(n18840), .D(n13), 
         .Z(r_ft_wait_3__N_841[2])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !(C))) */ ;
    defparam i1_4_lut_adj_42.init = 16'hcd41;
    LUT4 i8101_4_lut (.A(\adc_data_2[8] ), .B(curent_state[0]), .C(\adc_data_1[8] ), 
         .D(LTC1865_en), .Z(n7272[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i8101_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_43 (.A(n13291), .B(r_ft_wait[1]), .C(n18847), .D(n13), 
         .Z(r_ft_wait_3__N_841[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !(C))) */ ;
    defparam i1_4_lut_adj_43.init = 16'hcd41;
    PFUMX mux_2397_i8 (.BLUT(\adc_data[7] ), .ALUT(n7272[7]), .C0(n18850), 
          .Z(n7247[7]));
    PFUMX i12802 (.BLUT(n18524), .ALUT(n18523), .C0(curent_state[3]), 
          .Z(n18525));
    PFUMX mux_2397_i6 (.BLUT(\adc_data[5] ), .ALUT(n7272[5]), .C0(n18850), 
          .Z(n7247[5]));
    
endmodule
//
// Verilog Description of module integrator_seq_U4
//

module integrator_seq_U4 (T3, GND_net, clk_c, clk_c_enable_762, n6136, 
            n6101, T1, clk_c_enable_461, r_t1, r_t2, o_sw_N_1396, 
            n6206, r_mode, n18910, r_t3, r_t4, \seq_SM[1] , \seq_SM[0] , 
            n18887, n18848, n17557, clk_c_enable_339, n18886, integrator_1_en, 
            n19260, n14275, n18865, clk_c_enable_451, n18873, rst_n, 
            cp1, o_sw_N_1360, sw1_c, n19257) /* synthesis syn_module_defined=1 */ ;
    output [31:0]T3;
    input GND_net;
    input clk_c;
    input clk_c_enable_762;
    output n6136;
    output n6101;
    output [31:0]T1;
    input clk_c_enable_461;
    input [31:0]r_t1;
    input [31:0]r_t2;
    output [31:0]o_sw_N_1396;
    output n6206;
    output [1:0]r_mode;
    input n18910;
    input [31:0]r_t3;
    input [31:0]r_t4;
    output \seq_SM[1] ;
    output \seq_SM[0] ;
    output n18887;
    input n18848;
    output n17557;
    input clk_c_enable_339;
    output n18886;
    input integrator_1_en;
    input n19260;
    input n14275;
    input n18865;
    input clk_c_enable_451;
    input n18873;
    input rst_n;
    output cp1;
    output [31:0]o_sw_N_1360;
    output sw1_c;
    input n19257;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    
    wire n16675;
    wire [31:0]r_t3_adj_1671;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[24:28])
    
    wire n16676, n16674, n16673, n16672;
    wire [31:0]r_t2_adj_1672;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[18:22])
    
    wire n10392;
    wire [31:0]n133;
    
    wire n16671, n16670, n16669, n16668, n19249;
    wire [31:0]T2;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(22[16:18])
    
    wire n16667, clk_c_enable_679, n10427;
    wire [31:0]n133_adj_1673;
    
    wire n16666;
    wire [31:0]T4;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(22[24:26])
    
    wire n16665, n16664, n16296, n16297, n6171, n18920, n16663, 
        n16662, n16661, n16660, n16659, n16658, n18919, clk_c_enable_284, 
        n10002, n16657, n16656, n16295, n16294, n16655, n16654, 
        n16653, n16652, n16239, n16240, n10460;
    wire [31:0]r_t1_adj_1674;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[12:16])
    wire [31:0]n133_adj_1675;
    
    wire n16651, n16293, n17463, n16292, n16291, n18821, n14, 
        n16, clk_c_enable_569, n51, n16290, n16289, n18826, n13583, 
        n16288, n16287, n11, n6896, n18921, n17892, clk_c_enable_770, 
        n16238, n16248, n16249, n16286, n16247, n16285, n16284, 
        n16283, n16282, n16281, n16280, n16246, n16279, n16730, 
        n16729, n16728, n16727, n16726, n16725, n16245, n16724, 
        n16244, n16237, n16278, n16235, n16277, n16723, n16276, 
        n16243, n16242, n16236, n16722, n16275, n16721, n16720, 
        n16719, n16718, n16717, n16716, n16715, n16714, n16274, 
        n16314, n16241, n16313, n16312, n16713, n16273, n16272, 
        n16271, n16270, n16269, n16311, n16268, n16250, n16310, 
        n16267, n16712, n16309, n16308, n16711, n16710, n16709, 
        n16307, n16306, n16305, n16304, n16708, n16707, n16303, 
        n16302, n16706, n16705, n16301, n16704, n16703, n16702, 
        n16701, n16700, n16699, n16698, n16697, n16696, n16695, 
        n16694, n16693, n16692, n16691, n16690, n16300, n16299, 
        n16689, n16688, n16687, n16686, n16685, n16298, n16684, 
        n16683, n16682, n16681, n16680, n16679, n16678, n16677;
    
    CCU2D sub_1876_add_2_19 (.A0(r_t3_adj_1671[17]), .B0(T3[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[18]), .B1(T3[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16675), .COUT(n16676));
    defparam sub_1876_add_2_19.INIT0 = 16'h5999;
    defparam sub_1876_add_2_19.INIT1 = 16'h5999;
    defparam sub_1876_add_2_19.INJECT1_0 = "NO";
    defparam sub_1876_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_17 (.A0(r_t3_adj_1671[15]), .B0(T3[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[16]), .B1(T3[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16674), .COUT(n16675));
    defparam sub_1876_add_2_17.INIT0 = 16'h5999;
    defparam sub_1876_add_2_17.INIT1 = 16'h5999;
    defparam sub_1876_add_2_17.INJECT1_0 = "NO";
    defparam sub_1876_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_15 (.A0(r_t3_adj_1671[13]), .B0(T3[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[14]), .B1(T3[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16673), .COUT(n16674));
    defparam sub_1876_add_2_15.INIT0 = 16'h5999;
    defparam sub_1876_add_2_15.INIT1 = 16'h5999;
    defparam sub_1876_add_2_15.INJECT1_0 = "NO";
    defparam sub_1876_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_13 (.A0(r_t3_adj_1671[11]), .B0(T3[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[12]), .B1(T3[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16672), .COUT(n16673));
    defparam sub_1876_add_2_13.INIT0 = 16'h5999;
    defparam sub_1876_add_2_13.INIT1 = 16'h5999;
    defparam sub_1876_add_2_13.INJECT1_0 = "NO";
    defparam sub_1876_add_2_13.INJECT1_1 = "NO";
    FD1P3IX r_t2_2412__i23 (.D(n133[23]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i23.GSR = "DISABLED";
    CCU2D sub_1876_add_2_11 (.A0(r_t3_adj_1671[9]), .B0(T3[9]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[10]), .B1(T3[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16671), .COUT(n16672));
    defparam sub_1876_add_2_11.INIT0 = 16'h5999;
    defparam sub_1876_add_2_11.INIT1 = 16'h5999;
    defparam sub_1876_add_2_11.INJECT1_0 = "NO";
    defparam sub_1876_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_9 (.A0(r_t3_adj_1671[7]), .B0(T3[7]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[8]), .B1(T3[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16670), .COUT(n16671));
    defparam sub_1876_add_2_9.INIT0 = 16'h5999;
    defparam sub_1876_add_2_9.INIT1 = 16'h5999;
    defparam sub_1876_add_2_9.INJECT1_0 = "NO";
    defparam sub_1876_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_7 (.A0(r_t3_adj_1671[5]), .B0(T3[5]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[6]), .B1(T3[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16669), .COUT(n16670));
    defparam sub_1876_add_2_7.INIT0 = 16'h5999;
    defparam sub_1876_add_2_7.INIT1 = 16'h5999;
    defparam sub_1876_add_2_7.INJECT1_0 = "NO";
    defparam sub_1876_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_5 (.A0(r_t3_adj_1671[3]), .B0(T3[3]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[4]), .B1(T3[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16668), .COUT(n16669));
    defparam sub_1876_add_2_5.INIT0 = 16'h5999;
    defparam sub_1876_add_2_5.INIT1 = 16'h5999;
    defparam sub_1876_add_2_5.INJECT1_0 = "NO";
    defparam sub_1876_add_2_5.INJECT1_1 = "NO";
    LUT4 i8231_2_lut_rep_261 (.A(n6136), .B(n6101), .Z(n19249)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8231_2_lut_rep_261.init = 16'h8888;
    FD1P3AX T1_i0_i0 (.D(r_t1[0]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i0.GSR = "DISABLED";
    FD1P3AX T2_i0_i0 (.D(r_t2[0]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T2[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i0.GSR = "DISABLED";
    CCU2D sub_1876_add_2_3 (.A0(r_t3_adj_1671[1]), .B0(T3[1]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[2]), .B1(T3[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16667), .COUT(n16668));
    defparam sub_1876_add_2_3.INIT0 = 16'h5999;
    defparam sub_1876_add_2_3.INIT1 = 16'h5999;
    defparam sub_1876_add_2_3.INJECT1_0 = "NO";
    defparam sub_1876_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[0]), .B1(T3[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n16667));
    defparam sub_1876_add_2_1.INIT0 = 16'h0000;
    defparam sub_1876_add_2_1.INIT1 = 16'h5999;
    defparam sub_1876_add_2_1.INJECT1_0 = "NO";
    defparam sub_1876_add_2_1.INJECT1_1 = "NO";
    FD1P3IX r_t3_2410__i23 (.D(n133_adj_1673[23]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i23.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i24 (.D(n133_adj_1673[24]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i24.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i25 (.D(n133_adj_1673[25]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i25.GSR = "DISABLED";
    CCU2D sub_1878_add_2_33 (.A0(r_t2_adj_1672[31]), .B0(o_sw_N_1396[31]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16666), .S1(n6206));
    defparam sub_1878_add_2_33.INIT0 = 16'h5999;
    defparam sub_1878_add_2_33.INIT1 = 16'h0000;
    defparam sub_1878_add_2_33.INJECT1_0 = "NO";
    defparam sub_1878_add_2_33.INJECT1_1 = "NO";
    FD1S3AX r_mode_i0 (.D(n18910), .CK(clk_c), .Q(r_mode[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam r_mode_i0.GSR = "DISABLED";
    FD1P3AX T3_i0_i0 (.D(r_t3[0]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T3[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i0.GSR = "DISABLED";
    FD1P3AX T4_i0_i0 (.D(r_t4[0]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i0.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i26 (.D(n133_adj_1673[26]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i26.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i27 (.D(n133_adj_1673[27]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i27.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i28 (.D(n133_adj_1673[28]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i28.GSR = "DISABLED";
    CCU2D sub_1878_add_2_31 (.A0(r_t2_adj_1672[29]), .B0(o_sw_N_1396[29]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[30]), .B1(o_sw_N_1396[30]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16665), .COUT(n16666));
    defparam sub_1878_add_2_31.INIT0 = 16'h5999;
    defparam sub_1878_add_2_31.INIT1 = 16'h5999;
    defparam sub_1878_add_2_31.INJECT1_0 = "NO";
    defparam sub_1878_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1878_add_2_29 (.A0(r_t2_adj_1672[27]), .B0(o_sw_N_1396[27]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[28]), .B1(o_sw_N_1396[28]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16664), .COUT(n16665));
    defparam sub_1878_add_2_29.INIT0 = 16'h5999;
    defparam sub_1878_add_2_29.INIT1 = 16'h5999;
    defparam sub_1878_add_2_29.INJECT1_0 = "NO";
    defparam sub_1878_add_2_29.INJECT1_1 = "NO";
    CCU2D r_t3_2410_add_4_29 (.A0(r_t3_adj_1671[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16296), .COUT(n16297), .S0(n133_adj_1673[27]), 
          .S1(n133_adj_1673[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_29.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_29.INJECT1_1 = "NO";
    FD1P3IX r_t2_2412__i24 (.D(n133[24]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i24.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i29 (.D(n133_adj_1673[29]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i29.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i30 (.D(n133_adj_1673[30]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i30.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i31 (.D(n133_adj_1673[31]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i31.GSR = "DISABLED";
    LUT4 i47_then_3_lut (.A(r_mode[0]), .B(n6171), .C(\seq_SM[1] ), .Z(n18920)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i47_then_3_lut.init = 16'h0202;
    FD1P3IX r_t2_2412__i25 (.D(n133[25]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i25.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i1 (.D(n133[1]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i1.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i2 (.D(n133[2]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i2.GSR = "DISABLED";
    CCU2D sub_1878_add_2_27 (.A0(r_t2_adj_1672[25]), .B0(o_sw_N_1396[25]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[26]), .B1(o_sw_N_1396[26]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16663), .COUT(n16664));
    defparam sub_1878_add_2_27.INIT0 = 16'h5999;
    defparam sub_1878_add_2_27.INIT1 = 16'h5999;
    defparam sub_1878_add_2_27.INJECT1_0 = "NO";
    defparam sub_1878_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1878_add_2_25 (.A0(r_t2_adj_1672[23]), .B0(o_sw_N_1396[23]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[24]), .B1(o_sw_N_1396[24]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16662), .COUT(n16663));
    defparam sub_1878_add_2_25.INIT0 = 16'h5999;
    defparam sub_1878_add_2_25.INIT1 = 16'h5999;
    defparam sub_1878_add_2_25.INJECT1_0 = "NO";
    defparam sub_1878_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1878_add_2_23 (.A0(r_t2_adj_1672[21]), .B0(o_sw_N_1396[21]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[22]), .B1(o_sw_N_1396[22]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16661), .COUT(n16662));
    defparam sub_1878_add_2_23.INIT0 = 16'h5999;
    defparam sub_1878_add_2_23.INIT1 = 16'h5999;
    defparam sub_1878_add_2_23.INJECT1_0 = "NO";
    defparam sub_1878_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1878_add_2_21 (.A0(r_t2_adj_1672[19]), .B0(o_sw_N_1396[19]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[20]), .B1(o_sw_N_1396[20]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16660), .COUT(n16661));
    defparam sub_1878_add_2_21.INIT0 = 16'h5999;
    defparam sub_1878_add_2_21.INIT1 = 16'h5999;
    defparam sub_1878_add_2_21.INJECT1_0 = "NO";
    defparam sub_1878_add_2_21.INJECT1_1 = "NO";
    FD1P3IX r_t2_2412__i3 (.D(n133[3]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i3.GSR = "DISABLED";
    CCU2D sub_1878_add_2_19 (.A0(r_t2_adj_1672[17]), .B0(o_sw_N_1396[17]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[18]), .B1(o_sw_N_1396[18]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16659), .COUT(n16660));
    defparam sub_1878_add_2_19.INIT0 = 16'h5999;
    defparam sub_1878_add_2_19.INIT1 = 16'h5999;
    defparam sub_1878_add_2_19.INJECT1_0 = "NO";
    defparam sub_1878_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1878_add_2_17 (.A0(r_t2_adj_1672[15]), .B0(o_sw_N_1396[15]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[16]), .B1(o_sw_N_1396[16]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16658), .COUT(n16659));
    defparam sub_1878_add_2_17.INIT0 = 16'h5999;
    defparam sub_1878_add_2_17.INIT1 = 16'h5999;
    defparam sub_1878_add_2_17.INJECT1_0 = "NO";
    defparam sub_1878_add_2_17.INJECT1_1 = "NO";
    LUT4 i47_else_3_lut (.A(r_mode[0]), .B(n6136), .C(n6101), .D(\seq_SM[1] ), 
         .Z(n18919)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !((D)+!C))) */ ;
    defparam i47_else_3_lut.init = 16'h5525;
    FD1P3IX r_t2_2412__i0 (.D(n133[0]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i0.GSR = "DISABLED";
    FD1P3IX seq_SM__i0 (.D(n10002), .SP(clk_c_enable_284), .CD(n18887), 
            .CK(clk_c), .Q(\seq_SM[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam seq_SM__i0.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i4 (.D(n133[4]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i4.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i5 (.D(n133[5]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i5.GSR = "DISABLED";
    CCU2D sub_1878_add_2_15 (.A0(r_t2_adj_1672[13]), .B0(o_sw_N_1396[13]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[14]), .B1(o_sw_N_1396[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16657), .COUT(n16658));
    defparam sub_1878_add_2_15.INIT0 = 16'h5999;
    defparam sub_1878_add_2_15.INIT1 = 16'h5999;
    defparam sub_1878_add_2_15.INJECT1_0 = "NO";
    defparam sub_1878_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1878_add_2_13 (.A0(r_t2_adj_1672[11]), .B0(o_sw_N_1396[11]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[12]), .B1(o_sw_N_1396[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16656), .COUT(n16657));
    defparam sub_1878_add_2_13.INIT0 = 16'h5999;
    defparam sub_1878_add_2_13.INIT1 = 16'h5999;
    defparam sub_1878_add_2_13.INJECT1_0 = "NO";
    defparam sub_1878_add_2_13.INJECT1_1 = "NO";
    CCU2D r_t3_2410_add_4_27 (.A0(r_t3_adj_1671[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16295), .COUT(n16296), .S0(n133_adj_1673[25]), 
          .S1(n133_adj_1673[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_27.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_27.INJECT1_1 = "NO";
    CCU2D r_t3_2410_add_4_25 (.A0(r_t3_adj_1671[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16294), .COUT(n16295), .S0(n133_adj_1673[23]), 
          .S1(n133_adj_1673[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_25.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_25.INJECT1_1 = "NO";
    CCU2D sub_1878_add_2_11 (.A0(r_t2_adj_1672[9]), .B0(o_sw_N_1396[9]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[10]), .B1(o_sw_N_1396[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16655), .COUT(n16656));
    defparam sub_1878_add_2_11.INIT0 = 16'h5999;
    defparam sub_1878_add_2_11.INIT1 = 16'h5999;
    defparam sub_1878_add_2_11.INJECT1_0 = "NO";
    defparam sub_1878_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1878_add_2_9 (.A0(r_t2_adj_1672[7]), .B0(o_sw_N_1396[7]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[8]), .B1(o_sw_N_1396[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16654), .COUT(n16655));
    defparam sub_1878_add_2_9.INIT0 = 16'h5999;
    defparam sub_1878_add_2_9.INIT1 = 16'h5999;
    defparam sub_1878_add_2_9.INJECT1_0 = "NO";
    defparam sub_1878_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1878_add_2_7 (.A0(r_t2_adj_1672[5]), .B0(o_sw_N_1396[5]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[6]), .B1(o_sw_N_1396[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16653), .COUT(n16654));
    defparam sub_1878_add_2_7.INIT0 = 16'h5999;
    defparam sub_1878_add_2_7.INIT1 = 16'h5999;
    defparam sub_1878_add_2_7.INJECT1_0 = "NO";
    defparam sub_1878_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1878_add_2_5 (.A0(r_t2_adj_1672[3]), .B0(o_sw_N_1396[3]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[4]), .B1(o_sw_N_1396[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16652), .COUT(n16653));
    defparam sub_1878_add_2_5.INIT0 = 16'h5999;
    defparam sub_1878_add_2_5.INIT1 = 16'h5999;
    defparam sub_1878_add_2_5.INJECT1_0 = "NO";
    defparam sub_1878_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_11 (.A0(T2[9]), .B0(T3[9]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[10]), .B1(T3[10]), .C1(GND_net), .D1(GND_net), .CIN(n16239), 
          .COUT(n16240), .S0(o_sw_N_1396[9]), .S1(o_sw_N_1396[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_11.INIT0 = 16'h5999;
    defparam sub_92_add_2_11.INIT1 = 16'h5999;
    defparam sub_92_add_2_11.INJECT1_0 = "NO";
    defparam sub_92_add_2_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n18887), .B(\seq_SM[0] ), .C(n18848), .D(n19249), 
         .Z(n10460)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'habaa;
    LUT4 i1_2_lut (.A(\seq_SM[0] ), .B(\seq_SM[1] ), .Z(n17557)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX r_t1_2408__i1 (.D(n133_adj_1675[1]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i1.GSR = "DISABLED";
    CCU2D sub_1878_add_2_3 (.A0(r_t2_adj_1672[1]), .B0(o_sw_N_1396[1]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t2_adj_1672[2]), .B1(o_sw_N_1396[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16651), .COUT(n16652));
    defparam sub_1878_add_2_3.INIT0 = 16'h5999;
    defparam sub_1878_add_2_3.INIT1 = 16'h5999;
    defparam sub_1878_add_2_3.INJECT1_0 = "NO";
    defparam sub_1878_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1878_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[0]), .B1(o_sw_N_1396[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n16651));
    defparam sub_1878_add_2_1.INIT0 = 16'h0000;
    defparam sub_1878_add_2_1.INIT1 = 16'h5999;
    defparam sub_1878_add_2_1.INJECT1_0 = "NO";
    defparam sub_1878_add_2_1.INJECT1_1 = "NO";
    CCU2D r_t3_2410_add_4_23 (.A0(r_t3_adj_1671[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16293), .COUT(n16294), .S0(n133_adj_1673[21]), 
          .S1(n133_adj_1673[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_23.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_23.INJECT1_1 = "NO";
    FD1P3IX r_t1_2408__i2 (.D(n133_adj_1675[2]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i2.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i26 (.D(n133[26]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i26.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i0 (.D(n133_adj_1673[0]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i0.GSR = "DISABLED";
    LUT4 i1_3_lut (.A(n6136), .B(n6101), .C(\seq_SM[0] ), .Z(n17463)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(41[13] 174[20])
    defparam i1_3_lut.init = 16'h0808;
    CCU2D r_t3_2410_add_4_21 (.A0(r_t3_adj_1671[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16292), .COUT(n16293), .S0(n133_adj_1673[19]), 
          .S1(n133_adj_1673[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_21.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_21.INJECT1_1 = "NO";
    FD1P3IX r_t1_2408__i0 (.D(n133_adj_1675[0]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i0.GSR = "DISABLED";
    CCU2D r_t3_2410_add_4_19 (.A0(r_t3_adj_1671[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16291), .COUT(n16292), .S0(n133_adj_1673[17]), 
          .S1(n133_adj_1673[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_19.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_19.INJECT1_1 = "NO";
    FD1P3IX r_t1_2408__i3 (.D(n133_adj_1675[3]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i3.GSR = "DISABLED";
    LUT4 i24_3_lut_rep_163_4_lut (.A(n6136), .B(n6101), .C(\seq_SM[0] ), 
         .D(n6171), .Z(n18821)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i24_3_lut_rep_163_4_lut.init = 16'hf808;
    FD1P3IX r_t1_2408__i4 (.D(n133_adj_1675[4]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i4.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i5 (.D(n133_adj_1675[5]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i5.GSR = "DISABLED";
    LUT4 i12621_4_lut (.A(n18887), .B(n14), .C(r_mode[1]), .D(n16), 
         .Z(clk_c_enable_569)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i12621_4_lut.init = 16'hbabb;
    LUT4 i35_4_lut (.A(n51), .B(\seq_SM[0] ), .C(\seq_SM[1] ), .D(n6206), 
         .Z(n16)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;
    defparam i35_4_lut.init = 16'hf5c5;
    CCU2D r_t3_2410_add_4_17 (.A0(r_t3_adj_1671[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16290), .COUT(n16291), .S0(n133_adj_1673[15]), 
          .S1(n133_adj_1673[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_17.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_17.INJECT1_1 = "NO";
    FD1P3IX r_t1_2408__i6 (.D(n133_adj_1675[6]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i6.GSR = "DISABLED";
    CCU2D r_t3_2410_add_4_15 (.A0(r_t3_adj_1671[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16289), .COUT(n16290), .S0(n133_adj_1673[13]), 
          .S1(n133_adj_1673[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_15.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_15.INJECT1_1 = "NO";
    FD1P3IX r_t1_2408__i7 (.D(n133_adj_1675[7]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i7.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i8 (.D(n133_adj_1675[8]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i8.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i9 (.D(n133_adj_1675[9]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i9.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i10 (.D(n133_adj_1675[10]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i10.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i11 (.D(n133_adj_1675[11]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i11.GSR = "DISABLED";
    LUT4 i8503_2_lut_4_lut (.A(n19249), .B(n6171), .C(\seq_SM[0] ), .D(n18826), 
         .Z(n13583)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam i8503_2_lut_4_lut.init = 16'hffca;
    FD1P3IX r_t2_2412__i6 (.D(n133[6]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i6.GSR = "DISABLED";
    CCU2D r_t3_2410_add_4_13 (.A0(r_t3_adj_1671[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16288), .COUT(n16289), .S0(n133_adj_1673[11]), 
          .S1(n133_adj_1673[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_13.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_13.INJECT1_1 = "NO";
    FD1P3IX r_t1_2408__i12 (.D(n133_adj_1675[12]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i12.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i13 (.D(n133_adj_1675[13]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i13.GSR = "DISABLED";
    CCU2D r_t3_2410_add_4_11 (.A0(r_t3_adj_1671[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16287), .COUT(n16288), .S0(n133_adj_1673[9]), 
          .S1(n133_adj_1673[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_11.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_11.INJECT1_1 = "NO";
    FD1P3IX r_t1_2408__i14 (.D(n133_adj_1675[14]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i14.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i15 (.D(n133_adj_1675[15]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i15.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i7 (.D(n133[7]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i7.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i27 (.D(n133[27]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i27.GSR = "DISABLED";
    LUT4 seq_SM_4__I_0_i6_2_lut_rep_228 (.A(\seq_SM[0] ), .B(\seq_SM[1] ), 
         .Z(n18886)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam seq_SM_4__I_0_i6_2_lut_rep_228.init = 16'hbbbb;
    LUT4 i2180_2_lut_rep_168_3_lut (.A(\seq_SM[0] ), .B(\seq_SM[1] ), .C(n6206), 
         .Z(n18826)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i2180_2_lut_rep_168_3_lut.init = 16'h4040;
    FD1P3IX r_t1_2408__i16 (.D(n133_adj_1675[16]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i16.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i17 (.D(n133_adj_1675[17]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i17.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i18 (.D(n133_adj_1675[18]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i18.GSR = "DISABLED";
    LUT4 i12781_2_lut_3_lut_3_lut (.A(\seq_SM[0] ), .B(\seq_SM[1] ), .C(n6206), 
         .Z(n10002)) /* synthesis lut_function=(!(A+(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i12781_2_lut_3_lut_3_lut.init = 16'h1515;
    LUT4 i18_3_lut_3_lut (.A(\seq_SM[0] ), .B(\seq_SM[1] ), .C(n6206), 
         .Z(n11)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i18_3_lut_3_lut.init = 16'h8c8c;
    FD1P3IX r_t1_2408__i19 (.D(n133_adj_1675[19]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i19.GSR = "DISABLED";
    LUT4 i9180_2_lut_3_lut_1_lut (.A(\seq_SM[0] ), .Z(n6896)) /* synthesis lut_function=(A) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i9180_2_lut_3_lut_1_lut.init = 16'haaaa;
    LUT4 i12713_2_lut_rep_229 (.A(integrator_1_en), .B(n19260), .Z(n18887)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam i12713_2_lut_rep_229.init = 16'h7777;
    FD1P3IX r_t1_2408__i20 (.D(n133_adj_1675[20]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i20.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i8 (.D(n133[8]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i8.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i21 (.D(n133_adj_1675[21]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i21.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(integrator_1_en), .B(n19260), .C(n18921), 
         .D(r_mode[1]), .Z(n17892)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam i1_3_lut_4_lut.init = 16'h0080;
    FD1P3IX r_t1_2408__i22 (.D(n133_adj_1675[22]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i22.GSR = "DISABLED";
    FD1P3IX seq_SM__i1 (.D(n6896), .SP(clk_c_enable_284), .CD(n18887), 
            .CK(clk_c), .Q(\seq_SM[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam seq_SM__i1.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i9 (.D(n133[9]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i9.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_35 (.A(n14275), .B(\seq_SM[1] ), .C(n18887), .D(n18821), 
         .Z(clk_c_enable_770)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B+!(D))) */ ;
    defparam i1_4_lut_adj_35.init = 16'hc4f5;
    FD1P3IX r_t1_2408__i23 (.D(n133_adj_1675[23]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i23.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i28 (.D(n133[28]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i28.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i24 (.D(n133_adj_1675[24]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i24.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i25 (.D(n133_adj_1675[25]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i25.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i26 (.D(n133_adj_1675[26]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i26.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i10 (.D(n133[10]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i10.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i27 (.D(n133_adj_1675[27]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i27.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i28 (.D(n133_adj_1675[28]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i28.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i29 (.D(n133_adj_1675[29]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i29.GSR = "DISABLED";
    LUT4 i12552_3_lut_4_lut (.A(\seq_SM[1] ), .B(n18865), .C(\seq_SM[0] ), 
         .D(n18887), .Z(clk_c_enable_679)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(150[25:26])
    defparam i12552_3_lut_4_lut.init = 16'hff10;
    CCU2D sub_92_add_2_9 (.A0(T2[7]), .B0(T3[7]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[8]), .B1(T3[8]), .C1(GND_net), .D1(GND_net), .CIN(n16238), 
          .COUT(n16239), .S0(o_sw_N_1396[7]), .S1(o_sw_N_1396[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_9.INIT0 = 16'h5999;
    defparam sub_92_add_2_9.INIT1 = 16'h5999;
    defparam sub_92_add_2_9.INJECT1_0 = "NO";
    defparam sub_92_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_29 (.A0(T2[27]), .B0(T3[27]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[28]), .B1(T3[28]), .C1(GND_net), .D1(GND_net), .CIN(n16248), 
          .COUT(n16249), .S0(o_sw_N_1396[27]), .S1(o_sw_N_1396[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_29.INIT0 = 16'h5999;
    defparam sub_92_add_2_29.INIT1 = 16'h5999;
    defparam sub_92_add_2_29.INJECT1_0 = "NO";
    defparam sub_92_add_2_29.INJECT1_1 = "NO";
    FD1P3IX r_t1_2408__i30 (.D(n133_adj_1675[30]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i30.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i29 (.D(n133[29]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i29.GSR = "DISABLED";
    FD1P3IX r_t1_2408__i31 (.D(n133_adj_1675[31]), .SP(clk_c_enable_339), 
            .CD(n10460), .CK(clk_c), .Q(r_t1_adj_1674[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408__i31.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i11 (.D(n133[11]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i11.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i1 (.D(n133_adj_1673[1]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i1.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i12 (.D(n133[12]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i12.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i13 (.D(n133[13]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i13.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i2 (.D(n133_adj_1673[2]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i2.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i3 (.D(n133_adj_1673[3]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i3.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i4 (.D(n133_adj_1673[4]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i4.GSR = "DISABLED";
    FD1P3AX T4_i0_i31 (.D(r_t4[31]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i31.GSR = "DISABLED";
    FD1P3AX T4_i0_i30 (.D(r_t4[30]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i30.GSR = "DISABLED";
    FD1P3AX T4_i0_i29 (.D(r_t4[29]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i29.GSR = "DISABLED";
    FD1P3AX T4_i0_i28 (.D(r_t4[28]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i28.GSR = "DISABLED";
    FD1P3AX T4_i0_i27 (.D(r_t4[27]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i27.GSR = "DISABLED";
    FD1P3AX T4_i0_i26 (.D(r_t4[26]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i26.GSR = "DISABLED";
    FD1P3AX T4_i0_i25 (.D(r_t4[25]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i25.GSR = "DISABLED";
    FD1P3AX T4_i0_i24 (.D(r_t4[24]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i24.GSR = "DISABLED";
    FD1P3AX T4_i0_i23 (.D(r_t4[23]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i23.GSR = "DISABLED";
    FD1P3AX T4_i0_i22 (.D(r_t4[22]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i22.GSR = "DISABLED";
    FD1P3AX T4_i0_i21 (.D(r_t4[21]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i21.GSR = "DISABLED";
    FD1P3AX T4_i0_i20 (.D(r_t4[20]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i20.GSR = "DISABLED";
    FD1P3AX T4_i0_i19 (.D(r_t4[19]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i19.GSR = "DISABLED";
    FD1P3AX T4_i0_i18 (.D(r_t4[18]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i18.GSR = "DISABLED";
    FD1P3AX T4_i0_i17 (.D(r_t4[17]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i17.GSR = "DISABLED";
    FD1P3AX T4_i0_i16 (.D(r_t4[16]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i16.GSR = "DISABLED";
    FD1P3AX T4_i0_i15 (.D(r_t4[15]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i15.GSR = "DISABLED";
    FD1P3AX T4_i0_i14 (.D(r_t4[14]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i14.GSR = "DISABLED";
    FD1P3AX T4_i0_i13 (.D(r_t4[13]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i13.GSR = "DISABLED";
    FD1P3AX T4_i0_i12 (.D(r_t4[12]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i12.GSR = "DISABLED";
    FD1P3AX T4_i0_i11 (.D(r_t4[11]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i11.GSR = "DISABLED";
    FD1P3AX T4_i0_i10 (.D(r_t4[10]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i10.GSR = "DISABLED";
    FD1P3AX T4_i0_i9 (.D(r_t4[9]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i9.GSR = "DISABLED";
    FD1P3AX T4_i0_i8 (.D(r_t4[8]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i8.GSR = "DISABLED";
    FD1P3AX T4_i0_i7 (.D(r_t4[7]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i7.GSR = "DISABLED";
    FD1P3AX T4_i0_i6 (.D(r_t4[6]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i6.GSR = "DISABLED";
    FD1P3AX T4_i0_i5 (.D(r_t4[5]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i5.GSR = "DISABLED";
    FD1P3AX T4_i0_i4 (.D(r_t4[4]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i4.GSR = "DISABLED";
    FD1P3AX T4_i0_i3 (.D(r_t4[3]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i3.GSR = "DISABLED";
    FD1P3AX T4_i0_i2 (.D(r_t4[2]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i2.GSR = "DISABLED";
    FD1P3AX T4_i0_i1 (.D(r_t4[1]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T4[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T4_i0_i1.GSR = "DISABLED";
    FD1P3AX T3_i0_i31 (.D(r_t3[31]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T3[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i31.GSR = "DISABLED";
    FD1P3AX T3_i0_i30 (.D(r_t3[30]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T3[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i30.GSR = "DISABLED";
    FD1P3AX T3_i0_i29 (.D(r_t3[29]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T3[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i29.GSR = "DISABLED";
    FD1P3AX T3_i0_i28 (.D(r_t3[28]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T3[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i28.GSR = "DISABLED";
    FD1P3AX T3_i0_i27 (.D(r_t3[27]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T3[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i27.GSR = "DISABLED";
    FD1P3AX T3_i0_i26 (.D(r_t3[26]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T3[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i26.GSR = "DISABLED";
    FD1P3AX T3_i0_i25 (.D(r_t3[25]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T3[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i25.GSR = "DISABLED";
    FD1P3AX T3_i0_i24 (.D(r_t3[24]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T3[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i24.GSR = "DISABLED";
    FD1P3AX T3_i0_i23 (.D(r_t3[23]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i23.GSR = "DISABLED";
    FD1P3AX T3_i0_i22 (.D(r_t3[22]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i22.GSR = "DISABLED";
    FD1P3AX T3_i0_i21 (.D(r_t3[21]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i21.GSR = "DISABLED";
    FD1P3AX T3_i0_i20 (.D(r_t3[20]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i20.GSR = "DISABLED";
    FD1P3AX T3_i0_i19 (.D(r_t3[19]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i19.GSR = "DISABLED";
    FD1P3AX T3_i0_i18 (.D(r_t3[18]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i18.GSR = "DISABLED";
    FD1P3AX T3_i0_i17 (.D(r_t3[17]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i17.GSR = "DISABLED";
    FD1P3AX T3_i0_i16 (.D(r_t3[16]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i16.GSR = "DISABLED";
    FD1P3AX T3_i0_i15 (.D(r_t3[15]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i15.GSR = "DISABLED";
    FD1P3AX T3_i0_i14 (.D(r_t3[14]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i14.GSR = "DISABLED";
    FD1P3AX T3_i0_i13 (.D(r_t3[13]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i13.GSR = "DISABLED";
    FD1P3AX T3_i0_i12 (.D(r_t3[12]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i12.GSR = "DISABLED";
    FD1P3AX T3_i0_i11 (.D(r_t3[11]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i11.GSR = "DISABLED";
    FD1P3AX T3_i0_i10 (.D(r_t3[10]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i10.GSR = "DISABLED";
    FD1P3AX T3_i0_i9 (.D(r_t3[9]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i9.GSR = "DISABLED";
    FD1P3AX T3_i0_i8 (.D(r_t3[8]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i8.GSR = "DISABLED";
    FD1P3AX T3_i0_i7 (.D(r_t3[7]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i7.GSR = "DISABLED";
    FD1P3AX T3_i0_i6 (.D(r_t3[6]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i6.GSR = "DISABLED";
    FD1P3AX T3_i0_i5 (.D(r_t3[5]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i5.GSR = "DISABLED";
    FD1P3AX T3_i0_i4 (.D(r_t3[4]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i4.GSR = "DISABLED";
    FD1P3AX T3_i0_i3 (.D(r_t3[3]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i3.GSR = "DISABLED";
    FD1P3AX T3_i0_i2 (.D(r_t3[2]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i2.GSR = "DISABLED";
    FD1P3AX T3_i0_i1 (.D(r_t3[1]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T3[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T3_i0_i1.GSR = "DISABLED";
    FD1S3AX r_mode_i1 (.D(n18873), .CK(clk_c), .Q(r_mode[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam r_mode_i1.GSR = "DISABLED";
    FD1P3AX T2_i0_i31 (.D(r_t2[31]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i31.GSR = "DISABLED";
    FD1P3AX T2_i0_i30 (.D(r_t2[30]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i30.GSR = "DISABLED";
    FD1P3AX T2_i0_i29 (.D(r_t2[29]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i29.GSR = "DISABLED";
    FD1P3AX T2_i0_i28 (.D(r_t2[28]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i28.GSR = "DISABLED";
    FD1P3AX T2_i0_i27 (.D(r_t2[27]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i27.GSR = "DISABLED";
    FD1P3AX T2_i0_i26 (.D(r_t2[26]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i26.GSR = "DISABLED";
    FD1P3AX T2_i0_i25 (.D(r_t2[25]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i25.GSR = "DISABLED";
    FD1P3AX T2_i0_i24 (.D(r_t2[24]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i24.GSR = "DISABLED";
    FD1P3AX T2_i0_i23 (.D(r_t2[23]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i23.GSR = "DISABLED";
    FD1P3AX T2_i0_i22 (.D(r_t2[22]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i22.GSR = "DISABLED";
    FD1P3AX T2_i0_i21 (.D(r_t2[21]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i21.GSR = "DISABLED";
    FD1P3AX T2_i0_i20 (.D(r_t2[20]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i20.GSR = "DISABLED";
    FD1P3AX T2_i0_i19 (.D(r_t2[19]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i19.GSR = "DISABLED";
    FD1P3AX T2_i0_i18 (.D(r_t2[18]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i18.GSR = "DISABLED";
    FD1P3AX T2_i0_i17 (.D(r_t2[17]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i17.GSR = "DISABLED";
    FD1P3AX T2_i0_i16 (.D(r_t2[16]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i16.GSR = "DISABLED";
    FD1P3AX T2_i0_i15 (.D(r_t2[15]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i15.GSR = "DISABLED";
    FD1P3AX T2_i0_i14 (.D(r_t2[14]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i14.GSR = "DISABLED";
    FD1P3AX T2_i0_i13 (.D(r_t2[13]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i13.GSR = "DISABLED";
    FD1P3AX T2_i0_i12 (.D(r_t2[12]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i12.GSR = "DISABLED";
    FD1P3AX T2_i0_i11 (.D(r_t2[11]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i11.GSR = "DISABLED";
    FD1P3AX T2_i0_i10 (.D(r_t2[10]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i10.GSR = "DISABLED";
    FD1P3AX T2_i0_i9 (.D(r_t2[9]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i9.GSR = "DISABLED";
    FD1P3AX T2_i0_i8 (.D(r_t2[8]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i8.GSR = "DISABLED";
    FD1P3AX T2_i0_i7 (.D(r_t2[7]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i7.GSR = "DISABLED";
    FD1P3AX T2_i0_i6 (.D(r_t2[6]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i6.GSR = "DISABLED";
    FD1P3AX T2_i0_i5 (.D(r_t2[5]), .SP(clk_c_enable_451), .CK(clk_c), 
            .Q(T2[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i5.GSR = "DISABLED";
    FD1P3AX T2_i0_i4 (.D(r_t2[4]), .SP(rst_n), .CK(clk_c), .Q(T2[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i4.GSR = "DISABLED";
    FD1P3AX T2_i0_i3 (.D(r_t2[3]), .SP(rst_n), .CK(clk_c), .Q(T2[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i3.GSR = "DISABLED";
    FD1P3AX T2_i0_i2 (.D(r_t2[2]), .SP(rst_n), .CK(clk_c), .Q(T2[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i2.GSR = "DISABLED";
    FD1P3AX T2_i0_i1 (.D(r_t2[1]), .SP(rst_n), .CK(clk_c), .Q(T2[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T2_i0_i1.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i5 (.D(n133_adj_1673[5]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i5.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i6 (.D(n133_adj_1673[6]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i6.GSR = "DISABLED";
    FD1P3AX T1_i0_i31 (.D(r_t1[31]), .SP(rst_n), .CK(clk_c), .Q(T1[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i31.GSR = "DISABLED";
    FD1P3AX T1_i0_i30 (.D(r_t1[30]), .SP(rst_n), .CK(clk_c), .Q(T1[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i30.GSR = "DISABLED";
    FD1P3AX T1_i0_i29 (.D(r_t1[29]), .SP(rst_n), .CK(clk_c), .Q(T1[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i29.GSR = "DISABLED";
    FD1P3AX T1_i0_i28 (.D(r_t1[28]), .SP(rst_n), .CK(clk_c), .Q(T1[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i28.GSR = "DISABLED";
    FD1P3AX T1_i0_i27 (.D(r_t1[27]), .SP(rst_n), .CK(clk_c), .Q(T1[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i27.GSR = "DISABLED";
    FD1P3AX T1_i0_i26 (.D(r_t1[26]), .SP(rst_n), .CK(clk_c), .Q(T1[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i26.GSR = "DISABLED";
    FD1P3AX T1_i0_i25 (.D(r_t1[25]), .SP(rst_n), .CK(clk_c), .Q(T1[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i25.GSR = "DISABLED";
    FD1P3AX T1_i0_i24 (.D(r_t1[24]), .SP(rst_n), .CK(clk_c), .Q(T1[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i24.GSR = "DISABLED";
    FD1P3AX T1_i0_i23 (.D(r_t1[23]), .SP(rst_n), .CK(clk_c), .Q(T1[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i23.GSR = "DISABLED";
    FD1P3AX T1_i0_i22 (.D(r_t1[22]), .SP(rst_n), .CK(clk_c), .Q(T1[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i22.GSR = "DISABLED";
    FD1P3AX T1_i0_i21 (.D(r_t1[21]), .SP(rst_n), .CK(clk_c), .Q(T1[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i21.GSR = "DISABLED";
    FD1P3AX T1_i0_i20 (.D(r_t1[20]), .SP(rst_n), .CK(clk_c), .Q(T1[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i20.GSR = "DISABLED";
    FD1P3AX T1_i0_i19 (.D(r_t1[19]), .SP(rst_n), .CK(clk_c), .Q(T1[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i19.GSR = "DISABLED";
    FD1P3AX T1_i0_i18 (.D(r_t1[18]), .SP(rst_n), .CK(clk_c), .Q(T1[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i18.GSR = "DISABLED";
    FD1P3AX T1_i0_i17 (.D(r_t1[17]), .SP(rst_n), .CK(clk_c), .Q(T1[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i17.GSR = "DISABLED";
    FD1P3AX T1_i0_i16 (.D(r_t1[16]), .SP(rst_n), .CK(clk_c), .Q(T1[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i16.GSR = "DISABLED";
    FD1P3AX T1_i0_i15 (.D(r_t1[15]), .SP(rst_n), .CK(clk_c), .Q(T1[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i15.GSR = "DISABLED";
    FD1P3AX T1_i0_i14 (.D(r_t1[14]), .SP(rst_n), .CK(clk_c), .Q(T1[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i14.GSR = "DISABLED";
    FD1P3AX T1_i0_i13 (.D(r_t1[13]), .SP(rst_n), .CK(clk_c), .Q(T1[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i13.GSR = "DISABLED";
    FD1P3AX T1_i0_i12 (.D(r_t1[12]), .SP(rst_n), .CK(clk_c), .Q(T1[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i12.GSR = "DISABLED";
    FD1P3AX T1_i0_i11 (.D(r_t1[11]), .SP(rst_n), .CK(clk_c), .Q(T1[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i11.GSR = "DISABLED";
    FD1P3AX T1_i0_i10 (.D(r_t1[10]), .SP(rst_n), .CK(clk_c), .Q(T1[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i10.GSR = "DISABLED";
    FD1P3AX T1_i0_i9 (.D(r_t1[9]), .SP(rst_n), .CK(clk_c), .Q(T1[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i9.GSR = "DISABLED";
    FD1P3AX T1_i0_i8 (.D(r_t1[8]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T1[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i8.GSR = "DISABLED";
    FD1P3AX T1_i0_i7 (.D(r_t1[7]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T1[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i7.GSR = "DISABLED";
    FD1P3AX T1_i0_i6 (.D(r_t1[6]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T1[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i6.GSR = "DISABLED";
    FD1P3AX T1_i0_i5 (.D(r_t1[5]), .SP(clk_c_enable_461), .CK(clk_c), 
            .Q(T1[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i5.GSR = "DISABLED";
    FD1P3AX T1_i0_i4 (.D(r_t1[4]), .SP(rst_n), .CK(clk_c), .Q(T1[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i4.GSR = "DISABLED";
    FD1P3AX T1_i0_i3 (.D(r_t1[3]), .SP(rst_n), .CK(clk_c), .Q(T1[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i3.GSR = "DISABLED";
    FD1P3AX T1_i0_i2 (.D(r_t1[2]), .SP(rst_n), .CK(clk_c), .Q(T1[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i2.GSR = "DISABLED";
    FD1P3AX T1_i0_i1 (.D(r_t1[1]), .SP(rst_n), .CK(clk_c), .Q(T1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam T1_i0_i1.GSR = "DISABLED";
    CCU2D r_t3_2410_add_4_9 (.A0(r_t3_adj_1671[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16286), .COUT(n16287), .S0(n133_adj_1673[7]), 
          .S1(n133_adj_1673[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_9.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_9.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_27 (.A0(T2[25]), .B0(T3[25]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[26]), .B1(T3[26]), .C1(GND_net), .D1(GND_net), .CIN(n16247), 
          .COUT(n16248), .S0(o_sw_N_1396[25]), .S1(o_sw_N_1396[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_27.INIT0 = 16'h5999;
    defparam sub_92_add_2_27.INIT1 = 16'h5999;
    defparam sub_92_add_2_27.INJECT1_0 = "NO";
    defparam sub_92_add_2_27.INJECT1_1 = "NO";
    CCU2D r_t3_2410_add_4_7 (.A0(r_t3_adj_1671[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16285), .COUT(n16286), .S0(n133_adj_1673[5]), 
          .S1(n133_adj_1673[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_7.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_7.INJECT1_1 = "NO";
    FD1P3IX r_t2_2412__i14 (.D(n133[14]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i14.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i7 (.D(n133_adj_1673[7]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i7.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i15 (.D(n133[15]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i15.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i8 (.D(n133_adj_1673[8]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i8.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i9 (.D(n133_adj_1673[9]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i9.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i10 (.D(n133_adj_1673[10]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i10.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i11 (.D(n133_adj_1673[11]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i11.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i12 (.D(n133_adj_1673[12]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i12.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i13 (.D(n133_adj_1673[13]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i13.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i16 (.D(n133[16]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i16.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i14 (.D(n133_adj_1673[14]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i14.GSR = "DISABLED";
    FD1P3AX o_cp_143 (.D(n17892), .SP(clk_c_enable_569), .CK(clk_c), .Q(cp1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam o_cp_143.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i17 (.D(n133[17]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i17.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i30 (.D(n133[30]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i30.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i15 (.D(n133_adj_1673[15]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i15.GSR = "DISABLED";
    CCU2D r_t3_2410_add_4_5 (.A0(r_t3_adj_1671[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16284), .COUT(n16285), .S0(n133_adj_1673[3]), 
          .S1(n133_adj_1673[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_5.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_5.INJECT1_1 = "NO";
    CCU2D r_t3_2410_add_4_3 (.A0(r_t3_adj_1671[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16283), .COUT(n16284), .S0(n133_adj_1673[1]), 
          .S1(n133_adj_1673[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_3.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_3.INJECT1_1 = "NO";
    CCU2D r_t3_2410_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n16283), .S1(n133_adj_1673[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_1.INIT0 = 16'hF000;
    defparam r_t3_2410_add_4_1.INIT1 = 16'h0555;
    defparam r_t3_2410_add_4_1.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_1.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_33 (.A0(r_t1_adj_1674[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16282), .S0(n133_adj_1675[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_33.INIT1 = 16'h0000;
    defparam r_t1_2408_add_4_33.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_33.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_31 (.A0(r_t1_adj_1674[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16281), .COUT(n16282), .S0(n133_adj_1675[29]), 
          .S1(n133_adj_1675[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_31.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_31.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut (.A(\seq_SM[1] ), .B(r_mode[1]), .C(n17463), .D(r_mode[0]), 
         .Z(n14)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hdc00;
    LUT4 i12765_4_lut_4_lut (.A(r_mode[0]), .B(\seq_SM[0] ), .C(n17463), 
         .D(n6171), .Z(n51)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i12765_4_lut_4_lut.init = 16'h23af;
    CCU2D r_t1_2408_add_4_29 (.A0(r_t1_adj_1674[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16280), .COUT(n16281), .S0(n133_adj_1675[27]), 
          .S1(n133_adj_1675[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_29.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_29.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_25 (.A0(T2[23]), .B0(T3[23]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[24]), .B1(T3[24]), .C1(GND_net), .D1(GND_net), .CIN(n16246), 
          .COUT(n16247), .S0(o_sw_N_1396[23]), .S1(o_sw_N_1396[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_25.INIT0 = 16'h5999;
    defparam sub_92_add_2_25.INIT1 = 16'h5999;
    defparam sub_92_add_2_25.INJECT1_0 = "NO";
    defparam sub_92_add_2_25.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_27 (.A0(r_t1_adj_1674[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16279), .COUT(n16280), .S0(n133_adj_1675[25]), 
          .S1(n133_adj_1675[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_27.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_27.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_33 (.A0(T1[31]), .B0(T4[31]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n16730), 
          .S0(o_sw_N_1360[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_33.INIT0 = 16'h5999;
    defparam sub_76_add_2_33.INIT1 = 16'h0000;
    defparam sub_76_add_2_33.INJECT1_0 = "NO";
    defparam sub_76_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_31 (.A0(T1[29]), .B0(T4[29]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[30]), .B1(T4[30]), .C1(GND_net), .D1(GND_net), .CIN(n16729), 
          .COUT(n16730), .S0(o_sw_N_1360[29]), .S1(o_sw_N_1360[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_31.INIT0 = 16'h5999;
    defparam sub_76_add_2_31.INIT1 = 16'h5999;
    defparam sub_76_add_2_31.INJECT1_0 = "NO";
    defparam sub_76_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_29 (.A0(T1[27]), .B0(T4[27]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[28]), .B1(T4[28]), .C1(GND_net), .D1(GND_net), .CIN(n16728), 
          .COUT(n16729), .S0(o_sw_N_1360[27]), .S1(o_sw_N_1360[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_29.INIT0 = 16'h5999;
    defparam sub_76_add_2_29.INIT1 = 16'h5999;
    defparam sub_76_add_2_29.INJECT1_0 = "NO";
    defparam sub_76_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_27 (.A0(T1[25]), .B0(T4[25]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[26]), .B1(T4[26]), .C1(GND_net), .D1(GND_net), .CIN(n16727), 
          .COUT(n16728), .S0(o_sw_N_1360[25]), .S1(o_sw_N_1360[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_27.INIT0 = 16'h5999;
    defparam sub_76_add_2_27.INIT1 = 16'h5999;
    defparam sub_76_add_2_27.INJECT1_0 = "NO";
    defparam sub_76_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_25 (.A0(T1[23]), .B0(T4[23]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[24]), .B1(T4[24]), .C1(GND_net), .D1(GND_net), .CIN(n16726), 
          .COUT(n16727), .S0(o_sw_N_1360[23]), .S1(o_sw_N_1360[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_25.INIT0 = 16'h5999;
    defparam sub_76_add_2_25.INIT1 = 16'h5999;
    defparam sub_76_add_2_25.INJECT1_0 = "NO";
    defparam sub_76_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_23 (.A0(T1[21]), .B0(T4[21]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[22]), .B1(T4[22]), .C1(GND_net), .D1(GND_net), .CIN(n16725), 
          .COUT(n16726), .S0(o_sw_N_1360[21]), .S1(o_sw_N_1360[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_23.INIT0 = 16'h5999;
    defparam sub_76_add_2_23.INIT1 = 16'h5999;
    defparam sub_76_add_2_23.INJECT1_0 = "NO";
    defparam sub_76_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_23 (.A0(T2[21]), .B0(T3[21]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[22]), .B1(T3[22]), .C1(GND_net), .D1(GND_net), .CIN(n16245), 
          .COUT(n16246), .S0(o_sw_N_1396[21]), .S1(o_sw_N_1396[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_23.INIT0 = 16'h5999;
    defparam sub_92_add_2_23.INIT1 = 16'h5999;
    defparam sub_92_add_2_23.INJECT1_0 = "NO";
    defparam sub_92_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_21 (.A0(T1[19]), .B0(T4[19]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[20]), .B1(T4[20]), .C1(GND_net), .D1(GND_net), .CIN(n16724), 
          .COUT(n16725), .S0(o_sw_N_1360[19]), .S1(o_sw_N_1360[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_21.INIT0 = 16'h5999;
    defparam sub_76_add_2_21.INIT1 = 16'h5999;
    defparam sub_76_add_2_21.INJECT1_0 = "NO";
    defparam sub_76_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_21 (.A0(T2[19]), .B0(T3[19]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[20]), .B1(T3[20]), .C1(GND_net), .D1(GND_net), .CIN(n16244), 
          .COUT(n16245), .S0(o_sw_N_1396[19]), .S1(o_sw_N_1396[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_21.INIT0 = 16'h5999;
    defparam sub_92_add_2_21.INIT1 = 16'h5999;
    defparam sub_92_add_2_21.INJECT1_0 = "NO";
    defparam sub_92_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_7 (.A0(T2[5]), .B0(T3[5]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[6]), .B1(T3[6]), .C1(GND_net), .D1(GND_net), .CIN(n16237), 
          .COUT(n16238), .S0(o_sw_N_1396[5]), .S1(o_sw_N_1396[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_7.INIT0 = 16'h5999;
    defparam sub_92_add_2_7.INIT1 = 16'h5999;
    defparam sub_92_add_2_7.INJECT1_0 = "NO";
    defparam sub_92_add_2_7.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_25 (.A0(r_t1_adj_1674[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16278), .COUT(n16279), .S0(n133_adj_1675[23]), 
          .S1(n133_adj_1675[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_25.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_25.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T2[0]), .B1(T3[0]), .C1(GND_net), .D1(GND_net), .COUT(n16235), 
          .S1(o_sw_N_1396[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_1.INIT0 = 16'h0000;
    defparam sub_92_add_2_1.INIT1 = 16'h5999;
    defparam sub_92_add_2_1.INJECT1_0 = "NO";
    defparam sub_92_add_2_1.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_23 (.A0(r_t1_adj_1674[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16277), .COUT(n16278), .S0(n133_adj_1675[21]), 
          .S1(n133_adj_1675[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_23.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_23.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_19 (.A0(T1[17]), .B0(T4[17]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[18]), .B1(T4[18]), .C1(GND_net), .D1(GND_net), .CIN(n16723), 
          .COUT(n16724), .S0(o_sw_N_1360[17]), .S1(o_sw_N_1360[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_19.INIT0 = 16'h5999;
    defparam sub_76_add_2_19.INIT1 = 16'h5999;
    defparam sub_76_add_2_19.INJECT1_0 = "NO";
    defparam sub_76_add_2_19.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_21 (.A0(r_t1_adj_1674[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16276), .COUT(n16277), .S0(n133_adj_1675[19]), 
          .S1(n133_adj_1675[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_21.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_21.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_19 (.A0(T2[17]), .B0(T3[17]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[18]), .B1(T3[18]), .C1(GND_net), .D1(GND_net), .CIN(n16243), 
          .COUT(n16244), .S0(o_sw_N_1396[17]), .S1(o_sw_N_1396[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_19.INIT0 = 16'h5999;
    defparam sub_92_add_2_19.INIT1 = 16'h5999;
    defparam sub_92_add_2_19.INJECT1_0 = "NO";
    defparam sub_92_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_17 (.A0(T2[15]), .B0(T3[15]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[16]), .B1(T3[16]), .C1(GND_net), .D1(GND_net), .CIN(n16242), 
          .COUT(n16243), .S0(o_sw_N_1396[15]), .S1(o_sw_N_1396[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_17.INIT0 = 16'h5999;
    defparam sub_92_add_2_17.INIT1 = 16'h5999;
    defparam sub_92_add_2_17.INJECT1_0 = "NO";
    defparam sub_92_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_5 (.A0(T2[3]), .B0(T3[3]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[4]), .B1(T3[4]), .C1(GND_net), .D1(GND_net), .CIN(n16236), 
          .COUT(n16237), .S0(o_sw_N_1396[3]), .S1(o_sw_N_1396[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_5.INIT0 = 16'h5999;
    defparam sub_92_add_2_5.INIT1 = 16'h5999;
    defparam sub_92_add_2_5.INJECT1_0 = "NO";
    defparam sub_92_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_17 (.A0(T1[15]), .B0(T4[15]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[16]), .B1(T4[16]), .C1(GND_net), .D1(GND_net), .CIN(n16722), 
          .COUT(n16723), .S0(o_sw_N_1360[15]), .S1(o_sw_N_1360[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_17.INIT0 = 16'h5999;
    defparam sub_76_add_2_17.INIT1 = 16'h5999;
    defparam sub_76_add_2_17.INJECT1_0 = "NO";
    defparam sub_76_add_2_17.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_19 (.A0(r_t1_adj_1674[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16275), .COUT(n16276), .S0(n133_adj_1675[17]), 
          .S1(n133_adj_1675[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_19.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_19.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_15 (.A0(T1[13]), .B0(T4[13]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[14]), .B1(T4[14]), .C1(GND_net), .D1(GND_net), .CIN(n16721), 
          .COUT(n16722), .S0(o_sw_N_1360[13]), .S1(o_sw_N_1360[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_15.INIT0 = 16'h5999;
    defparam sub_76_add_2_15.INIT1 = 16'h5999;
    defparam sub_76_add_2_15.INJECT1_0 = "NO";
    defparam sub_76_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_13 (.A0(T1[11]), .B0(T4[11]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[12]), .B1(T4[12]), .C1(GND_net), .D1(GND_net), .CIN(n16720), 
          .COUT(n16721), .S0(o_sw_N_1360[11]), .S1(o_sw_N_1360[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_13.INIT0 = 16'h5999;
    defparam sub_76_add_2_13.INIT1 = 16'h5999;
    defparam sub_76_add_2_13.INJECT1_0 = "NO";
    defparam sub_76_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_11 (.A0(T1[9]), .B0(T4[9]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[10]), .B1(T4[10]), .C1(GND_net), .D1(GND_net), .CIN(n16719), 
          .COUT(n16720), .S0(o_sw_N_1360[9]), .S1(o_sw_N_1360[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_11.INIT0 = 16'h5999;
    defparam sub_76_add_2_11.INIT1 = 16'h5999;
    defparam sub_76_add_2_11.INJECT1_0 = "NO";
    defparam sub_76_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_9 (.A0(T1[7]), .B0(T4[7]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[8]), .B1(T4[8]), .C1(GND_net), .D1(GND_net), .CIN(n16718), 
          .COUT(n16719), .S0(o_sw_N_1360[7]), .S1(o_sw_N_1360[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_9.INIT0 = 16'h5999;
    defparam sub_76_add_2_9.INIT1 = 16'h5999;
    defparam sub_76_add_2_9.INJECT1_0 = "NO";
    defparam sub_76_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_7 (.A0(T1[5]), .B0(T4[5]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[6]), .B1(T4[6]), .C1(GND_net), .D1(GND_net), .CIN(n16717), 
          .COUT(n16718), .S0(o_sw_N_1360[5]), .S1(o_sw_N_1360[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_7.INIT0 = 16'h5999;
    defparam sub_76_add_2_7.INIT1 = 16'h5999;
    defparam sub_76_add_2_7.INJECT1_0 = "NO";
    defparam sub_76_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_5 (.A0(T1[3]), .B0(T4[3]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[4]), .B1(T4[4]), .C1(GND_net), .D1(GND_net), .CIN(n16716), 
          .COUT(n16717), .S0(o_sw_N_1360[3]), .S1(o_sw_N_1360[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_5.INIT0 = 16'h5999;
    defparam sub_76_add_2_5.INIT1 = 16'h5999;
    defparam sub_76_add_2_5.INJECT1_0 = "NO";
    defparam sub_76_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_3 (.A0(T1[1]), .B0(T4[1]), .C0(GND_net), .D0(GND_net), 
          .A1(T1[2]), .B1(T4[2]), .C1(GND_net), .D1(GND_net), .CIN(n16715), 
          .COUT(n16716), .S0(o_sw_N_1360[1]), .S1(o_sw_N_1360[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_3.INIT0 = 16'h5999;
    defparam sub_76_add_2_3.INIT1 = 16'h5999;
    defparam sub_76_add_2_3.INJECT1_0 = "NO";
    defparam sub_76_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_76_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T1[0]), .B1(T4[0]), .C1(GND_net), .D1(GND_net), .COUT(n16715), 
          .S1(o_sw_N_1360[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(136[39:48])
    defparam sub_76_add_2_1.INIT0 = 16'h0000;
    defparam sub_76_add_2_1.INIT1 = 16'h5999;
    defparam sub_76_add_2_1.INJECT1_0 = "NO";
    defparam sub_76_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_36 (.A(n18865), .B(n18886), .C(n6206), .D(n18887), 
         .Z(n10392)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(176[14] 183[12])
    defparam i1_3_lut_4_lut_adj_36.init = 16'hff10;
    CCU2D sub_1872_add_2_33 (.A0(r_t1_adj_1674[31]), .B0(o_sw_N_1360[31]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16714), .S1(n6101));
    defparam sub_1872_add_2_33.INIT0 = 16'h5999;
    defparam sub_1872_add_2_33.INIT1 = 16'h0000;
    defparam sub_1872_add_2_33.INJECT1_0 = "NO";
    defparam sub_1872_add_2_33.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_17 (.A0(r_t1_adj_1674[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16274), .COUT(n16275), .S0(n133_adj_1675[15]), 
          .S1(n133_adj_1675[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_17.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_17.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_33 (.A0(r_t2_adj_1672[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16314), .S0(n133[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_33.INIT1 = 16'h0000;
    defparam r_t2_2412_add_4_33.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_33.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_15 (.A0(T2[13]), .B0(T3[13]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[14]), .B1(T3[14]), .C1(GND_net), .D1(GND_net), .CIN(n16241), 
          .COUT(n16242), .S0(o_sw_N_1396[13]), .S1(o_sw_N_1396[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_15.INIT0 = 16'h5999;
    defparam sub_92_add_2_15.INIT1 = 16'h5999;
    defparam sub_92_add_2_15.INJECT1_0 = "NO";
    defparam sub_92_add_2_15.INJECT1_1 = "NO";
    PFUMX i12931 (.BLUT(n18919), .ALUT(n18920), .C0(\seq_SM[0] ), .Z(n18921));
    CCU2D r_t2_2412_add_4_31 (.A0(r_t2_adj_1672[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16313), .COUT(n16314), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_31.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_31.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_29 (.A0(r_t2_adj_1672[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16312), .COUT(n16313), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_29.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_29.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_31 (.A0(r_t1_adj_1674[29]), .B0(o_sw_N_1360[29]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[30]), .B1(o_sw_N_1360[30]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16713), .COUT(n16714));
    defparam sub_1872_add_2_31.INIT0 = 16'h5999;
    defparam sub_1872_add_2_31.INIT1 = 16'h5999;
    defparam sub_1872_add_2_31.INJECT1_0 = "NO";
    defparam sub_1872_add_2_31.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_15 (.A0(r_t1_adj_1674[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16273), .COUT(n16274), .S0(n133_adj_1675[13]), 
          .S1(n133_adj_1675[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_15.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_15.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_13 (.A0(r_t1_adj_1674[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16272), .COUT(n16273), .S0(n133_adj_1675[11]), 
          .S1(n133_adj_1675[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_13.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_13.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_3 (.A0(T2[1]), .B0(T3[1]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[2]), .B1(T3[2]), .C1(GND_net), .D1(GND_net), .CIN(n16235), 
          .COUT(n16236), .S0(o_sw_N_1396[1]), .S1(o_sw_N_1396[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_3.INIT0 = 16'h5999;
    defparam sub_92_add_2_3.INIT1 = 16'h5999;
    defparam sub_92_add_2_3.INJECT1_0 = "NO";
    defparam sub_92_add_2_3.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_11 (.A0(r_t1_adj_1674[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16271), .COUT(n16272), .S0(n133_adj_1675[9]), 
          .S1(n133_adj_1675[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_11.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_11.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_9 (.A0(r_t1_adj_1674[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16270), .COUT(n16271), .S0(n133_adj_1675[7]), 
          .S1(n133_adj_1675[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_9.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_9.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_7 (.A0(r_t1_adj_1674[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16269), .COUT(n16270), .S0(n133_adj_1675[5]), 
          .S1(n133_adj_1675[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_7.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_7.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_27 (.A0(r_t2_adj_1672[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16311), .COUT(n16312), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_27.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_27.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_5 (.A0(r_t1_adj_1674[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16268), .COUT(n16269), .S0(n133_adj_1675[3]), 
          .S1(n133_adj_1675[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_5.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_33 (.A0(T2[31]), .B0(T3[31]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n16250), 
          .S0(o_sw_N_1396[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_33.INIT0 = 16'h5999;
    defparam sub_92_add_2_33.INIT1 = 16'h0000;
    defparam sub_92_add_2_33.INJECT1_0 = "NO";
    defparam sub_92_add_2_33.INJECT1_1 = "NO";
    FD1P3IX r_t3_2410__i16 (.D(n133_adj_1673[16]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i16.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i17 (.D(n133_adj_1673[17]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i17.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i18 (.D(n133_adj_1673[18]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i18.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i19 (.D(n133_adj_1673[19]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i19.GSR = "DISABLED";
    CCU2D r_t2_2412_add_4_25 (.A0(r_t2_adj_1672[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16310), .COUT(n16311), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_25.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_25.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_3 (.A0(r_t1_adj_1674[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16267), .COUT(n16268), .S0(n133_adj_1675[1]), 
          .S1(n133_adj_1675[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t1_2408_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t1_2408_add_4_3.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_3.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_31 (.A0(T2[29]), .B0(T3[29]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[30]), .B1(T3[30]), .C1(GND_net), .D1(GND_net), .CIN(n16249), 
          .COUT(n16250), .S0(o_sw_N_1396[29]), .S1(o_sw_N_1396[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_31.INIT0 = 16'h5999;
    defparam sub_92_add_2_31.INIT1 = 16'h5999;
    defparam sub_92_add_2_31.INJECT1_0 = "NO";
    defparam sub_92_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_29 (.A0(r_t1_adj_1674[27]), .B0(o_sw_N_1360[27]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[28]), .B1(o_sw_N_1360[28]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16712), .COUT(n16713));
    defparam sub_1872_add_2_29.INIT0 = 16'h5999;
    defparam sub_1872_add_2_29.INIT1 = 16'h5999;
    defparam sub_1872_add_2_29.INJECT1_0 = "NO";
    defparam sub_1872_add_2_29.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_23 (.A0(r_t2_adj_1672[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16309), .COUT(n16310), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_23.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_23.INJECT1_1 = "NO";
    CCU2D sub_92_add_2_13 (.A0(T2[11]), .B0(T3[11]), .C0(GND_net), .D0(GND_net), 
          .A1(T2[12]), .B1(T3[12]), .C1(GND_net), .D1(GND_net), .CIN(n16240), 
          .COUT(n16241), .S0(o_sw_N_1396[11]), .S1(o_sw_N_1396[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(162[39:48])
    defparam sub_92_add_2_13.INIT0 = 16'h5999;
    defparam sub_92_add_2_13.INIT1 = 16'h5999;
    defparam sub_92_add_2_13.INJECT1_0 = "NO";
    defparam sub_92_add_2_13.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_21 (.A0(r_t2_adj_1672[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16308), .COUT(n16309), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_21.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_21.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_27 (.A0(r_t1_adj_1674[25]), .B0(o_sw_N_1360[25]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[26]), .B1(o_sw_N_1360[26]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16711), .COUT(n16712));
    defparam sub_1872_add_2_27.INIT0 = 16'h5999;
    defparam sub_1872_add_2_27.INIT1 = 16'h5999;
    defparam sub_1872_add_2_27.INJECT1_0 = "NO";
    defparam sub_1872_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_25 (.A0(r_t1_adj_1674[23]), .B0(o_sw_N_1360[23]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[24]), .B1(o_sw_N_1360[24]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16710), .COUT(n16711));
    defparam sub_1872_add_2_25.INIT0 = 16'h5999;
    defparam sub_1872_add_2_25.INIT1 = 16'h5999;
    defparam sub_1872_add_2_25.INJECT1_0 = "NO";
    defparam sub_1872_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_23 (.A0(r_t1_adj_1674[21]), .B0(o_sw_N_1360[21]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[22]), .B1(o_sw_N_1360[22]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16709), .COUT(n16710));
    defparam sub_1872_add_2_23.INIT0 = 16'h5999;
    defparam sub_1872_add_2_23.INIT1 = 16'h5999;
    defparam sub_1872_add_2_23.INJECT1_0 = "NO";
    defparam sub_1872_add_2_23.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_19 (.A0(r_t2_adj_1672[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16307), .COUT(n16308), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_19.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_19.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_17 (.A0(r_t2_adj_1672[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16306), .COUT(n16307), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_17.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_17.INJECT1_1 = "NO";
    CCU2D r_t1_2408_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n16267), .S1(n133_adj_1675[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2408_add_4_1.INIT0 = 16'hF000;
    defparam r_t1_2408_add_4_1.INIT1 = 16'h0555;
    defparam r_t1_2408_add_4_1.INJECT1_0 = "NO";
    defparam r_t1_2408_add_4_1.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_15 (.A0(r_t2_adj_1672[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16305), .COUT(n16306), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_15.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_15.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_13 (.A0(r_t2_adj_1672[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16304), .COUT(n16305), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_13.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_13.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_21 (.A0(r_t1_adj_1674[19]), .B0(o_sw_N_1360[19]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[20]), .B1(o_sw_N_1360[20]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16708), .COUT(n16709));
    defparam sub_1872_add_2_21.INIT0 = 16'h5999;
    defparam sub_1872_add_2_21.INIT1 = 16'h5999;
    defparam sub_1872_add_2_21.INJECT1_0 = "NO";
    defparam sub_1872_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_19 (.A0(r_t1_adj_1674[17]), .B0(o_sw_N_1360[17]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[18]), .B1(o_sw_N_1360[18]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16707), .COUT(n16708));
    defparam sub_1872_add_2_19.INIT0 = 16'h5999;
    defparam sub_1872_add_2_19.INIT1 = 16'h5999;
    defparam sub_1872_add_2_19.INJECT1_0 = "NO";
    defparam sub_1872_add_2_19.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_11 (.A0(r_t2_adj_1672[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16303), .COUT(n16304), .S0(n133[9]), .S1(n133[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_11.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_11.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_9 (.A0(r_t2_adj_1672[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16302), .COUT(n16303), .S0(n133[7]), .S1(n133[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_9.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_9.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_17 (.A0(r_t1_adj_1674[15]), .B0(o_sw_N_1360[15]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[16]), .B1(o_sw_N_1360[16]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16706), .COUT(n16707));
    defparam sub_1872_add_2_17.INIT0 = 16'h5999;
    defparam sub_1872_add_2_17.INIT1 = 16'h5999;
    defparam sub_1872_add_2_17.INJECT1_0 = "NO";
    defparam sub_1872_add_2_17.INJECT1_1 = "NO";
    FD1P3IX r_t3_2410__i20 (.D(n133_adj_1673[20]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i20.GSR = "DISABLED";
    FD1P3IX r_t3_2410__i21 (.D(n133_adj_1673[21]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i21.GSR = "DISABLED";
    CCU2D sub_1872_add_2_15 (.A0(r_t1_adj_1674[13]), .B0(o_sw_N_1360[13]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[14]), .B1(o_sw_N_1360[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16705), .COUT(n16706));
    defparam sub_1872_add_2_15.INIT0 = 16'h5999;
    defparam sub_1872_add_2_15.INIT1 = 16'h5999;
    defparam sub_1872_add_2_15.INJECT1_0 = "NO";
    defparam sub_1872_add_2_15.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_7 (.A0(r_t2_adj_1672[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16301), .COUT(n16302), .S0(n133[5]), .S1(n133[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_7.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_13 (.A0(r_t1_adj_1674[11]), .B0(o_sw_N_1360[11]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[12]), .B1(o_sw_N_1360[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16704), .COUT(n16705));
    defparam sub_1872_add_2_13.INIT0 = 16'h5999;
    defparam sub_1872_add_2_13.INIT1 = 16'h5999;
    defparam sub_1872_add_2_13.INJECT1_0 = "NO";
    defparam sub_1872_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_11 (.A0(r_t1_adj_1674[9]), .B0(o_sw_N_1360[9]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[10]), .B1(o_sw_N_1360[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16703), .COUT(n16704));
    defparam sub_1872_add_2_11.INIT0 = 16'h5999;
    defparam sub_1872_add_2_11.INIT1 = 16'h5999;
    defparam sub_1872_add_2_11.INJECT1_0 = "NO";
    defparam sub_1872_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_9 (.A0(r_t1_adj_1674[7]), .B0(o_sw_N_1360[7]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[8]), .B1(o_sw_N_1360[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16702), .COUT(n16703));
    defparam sub_1872_add_2_9.INIT0 = 16'h5999;
    defparam sub_1872_add_2_9.INIT1 = 16'h5999;
    defparam sub_1872_add_2_9.INJECT1_0 = "NO";
    defparam sub_1872_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_7 (.A0(r_t1_adj_1674[5]), .B0(o_sw_N_1360[5]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[6]), .B1(o_sw_N_1360[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16701), .COUT(n16702));
    defparam sub_1872_add_2_7.INIT0 = 16'h5999;
    defparam sub_1872_add_2_7.INIT1 = 16'h5999;
    defparam sub_1872_add_2_7.INJECT1_0 = "NO";
    defparam sub_1872_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_5 (.A0(r_t1_adj_1674[3]), .B0(o_sw_N_1360[3]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[4]), .B1(o_sw_N_1360[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16700), .COUT(n16701));
    defparam sub_1872_add_2_5.INIT0 = 16'h5999;
    defparam sub_1872_add_2_5.INIT1 = 16'h5999;
    defparam sub_1872_add_2_5.INJECT1_0 = "NO";
    defparam sub_1872_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_3 (.A0(r_t1_adj_1674[1]), .B0(o_sw_N_1360[1]), 
          .C0(GND_net), .D0(GND_net), .A1(r_t1_adj_1674[2]), .B1(o_sw_N_1360[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n16699), .COUT(n16700));
    defparam sub_1872_add_2_3.INIT0 = 16'h5999;
    defparam sub_1872_add_2_3.INIT1 = 16'h5999;
    defparam sub_1872_add_2_3.INJECT1_0 = "NO";
    defparam sub_1872_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1872_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[0]), .B1(o_sw_N_1360[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n16699));
    defparam sub_1872_add_2_1.INIT0 = 16'h0000;
    defparam sub_1872_add_2_1.INIT1 = 16'h5999;
    defparam sub_1872_add_2_1.INJECT1_0 = "NO";
    defparam sub_1872_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_33 (.A0(r_t1_adj_1674[31]), .B0(T1[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16698), .S1(n6136));
    defparam sub_1874_add_2_33.INIT0 = 16'h5999;
    defparam sub_1874_add_2_33.INIT1 = 16'h0000;
    defparam sub_1874_add_2_33.INJECT1_0 = "NO";
    defparam sub_1874_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_31 (.A0(r_t1_adj_1674[29]), .B0(T1[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[30]), .B1(T1[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16697), .COUT(n16698));
    defparam sub_1874_add_2_31.INIT0 = 16'h5999;
    defparam sub_1874_add_2_31.INIT1 = 16'h5999;
    defparam sub_1874_add_2_31.INJECT1_0 = "NO";
    defparam sub_1874_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_29 (.A0(r_t1_adj_1674[27]), .B0(T1[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[28]), .B1(T1[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16696), .COUT(n16697));
    defparam sub_1874_add_2_29.INIT0 = 16'h5999;
    defparam sub_1874_add_2_29.INIT1 = 16'h5999;
    defparam sub_1874_add_2_29.INJECT1_0 = "NO";
    defparam sub_1874_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_27 (.A0(r_t1_adj_1674[25]), .B0(T1[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[26]), .B1(T1[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16695), .COUT(n16696));
    defparam sub_1874_add_2_27.INIT0 = 16'h5999;
    defparam sub_1874_add_2_27.INIT1 = 16'h5999;
    defparam sub_1874_add_2_27.INJECT1_0 = "NO";
    defparam sub_1874_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_25 (.A0(r_t1_adj_1674[23]), .B0(T1[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[24]), .B1(T1[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16694), .COUT(n16695));
    defparam sub_1874_add_2_25.INIT0 = 16'h5999;
    defparam sub_1874_add_2_25.INIT1 = 16'h5999;
    defparam sub_1874_add_2_25.INJECT1_0 = "NO";
    defparam sub_1874_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_23 (.A0(r_t1_adj_1674[21]), .B0(T1[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[22]), .B1(T1[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16693), .COUT(n16694));
    defparam sub_1874_add_2_23.INIT0 = 16'h5999;
    defparam sub_1874_add_2_23.INIT1 = 16'h5999;
    defparam sub_1874_add_2_23.INJECT1_0 = "NO";
    defparam sub_1874_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_21 (.A0(r_t1_adj_1674[19]), .B0(T1[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[20]), .B1(T1[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16692), .COUT(n16693));
    defparam sub_1874_add_2_21.INIT0 = 16'h5999;
    defparam sub_1874_add_2_21.INIT1 = 16'h5999;
    defparam sub_1874_add_2_21.INJECT1_0 = "NO";
    defparam sub_1874_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_19 (.A0(r_t1_adj_1674[17]), .B0(T1[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[18]), .B1(T1[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16691), .COUT(n16692));
    defparam sub_1874_add_2_19.INIT0 = 16'h5999;
    defparam sub_1874_add_2_19.INIT1 = 16'h5999;
    defparam sub_1874_add_2_19.INJECT1_0 = "NO";
    defparam sub_1874_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_17 (.A0(r_t1_adj_1674[15]), .B0(T1[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[16]), .B1(T1[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16690), .COUT(n16691));
    defparam sub_1874_add_2_17.INIT0 = 16'h5999;
    defparam sub_1874_add_2_17.INIT1 = 16'h5999;
    defparam sub_1874_add_2_17.INJECT1_0 = "NO";
    defparam sub_1874_add_2_17.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_5 (.A0(r_t2_adj_1672[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16300), .COUT(n16301), .S0(n133[3]), .S1(n133[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_5.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_5.INJECT1_1 = "NO";
    CCU2D r_t2_2412_add_4_3 (.A0(r_t2_adj_1672[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16299), .COUT(n16300), .S0(n133[1]), .S1(n133[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t2_2412_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t2_2412_add_4_3.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_3.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_15 (.A0(r_t1_adj_1674[13]), .B0(T1[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[14]), .B1(T1[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16689), .COUT(n16690));
    defparam sub_1874_add_2_15.INIT0 = 16'h5999;
    defparam sub_1874_add_2_15.INIT1 = 16'h5999;
    defparam sub_1874_add_2_15.INJECT1_0 = "NO";
    defparam sub_1874_add_2_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_37 (.A(n18887), .B(\seq_SM[0] ), .C(n18848), .D(n6171), 
         .Z(n10427)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_37.init = 16'haeaa;
    CCU2D sub_1874_add_2_13 (.A0(r_t1_adj_1674[11]), .B0(T1[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[12]), .B1(T1[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16688), .COUT(n16689));
    defparam sub_1874_add_2_13.INIT0 = 16'h5999;
    defparam sub_1874_add_2_13.INIT1 = 16'h5999;
    defparam sub_1874_add_2_13.INJECT1_0 = "NO";
    defparam sub_1874_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_11 (.A0(r_t1_adj_1674[9]), .B0(T1[9]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[10]), .B1(T1[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16687), .COUT(n16688));
    defparam sub_1874_add_2_11.INIT0 = 16'h5999;
    defparam sub_1874_add_2_11.INIT1 = 16'h5999;
    defparam sub_1874_add_2_11.INJECT1_0 = "NO";
    defparam sub_1874_add_2_11.INJECT1_1 = "NO";
    FD1P3IX r_t3_2410__i22 (.D(n133_adj_1673[22]), .SP(clk_c_enable_679), 
            .CD(n10427), .CK(clk_c), .Q(r_t3_adj_1671[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410__i22.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i18 (.D(n133[18]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i18.GSR = "DISABLED";
    CCU2D sub_1874_add_2_9 (.A0(r_t1_adj_1674[7]), .B0(T1[7]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[8]), .B1(T1[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16686), .COUT(n16687));
    defparam sub_1874_add_2_9.INIT0 = 16'h5999;
    defparam sub_1874_add_2_9.INIT1 = 16'h5999;
    defparam sub_1874_add_2_9.INJECT1_0 = "NO";
    defparam sub_1874_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_7 (.A0(r_t1_adj_1674[5]), .B0(T1[5]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[6]), .B1(T1[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16685), .COUT(n16686));
    defparam sub_1874_add_2_7.INIT0 = 16'h5999;
    defparam sub_1874_add_2_7.INIT1 = 16'h5999;
    defparam sub_1874_add_2_7.INJECT1_0 = "NO";
    defparam sub_1874_add_2_7.INJECT1_1 = "NO";
    FD1P3IX r_t2_2412__i19 (.D(n133[19]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i19.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i20 (.D(n133[20]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i20.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i31 (.D(n133[31]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i31.GSR = "DISABLED";
    FD1P3IX r_t2_2412__i21 (.D(n133[21]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i21.GSR = "DISABLED";
    CCU2D r_t2_2412_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2_adj_1672[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n16299), .S1(n133[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412_add_4_1.INIT0 = 16'hF000;
    defparam r_t2_2412_add_4_1.INIT1 = 16'h0555;
    defparam r_t2_2412_add_4_1.INJECT1_0 = "NO";
    defparam r_t2_2412_add_4_1.INJECT1_1 = "NO";
    FD1P3IX r_t2_2412__i22 (.D(n133[22]), .SP(clk_c_enable_762), .CD(n10392), 
            .CK(clk_c), .Q(r_t2_adj_1672[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2412__i22.GSR = "DISABLED";
    LUT4 i12700_4_lut (.A(n18887), .B(n13583), .C(n18865), .D(n11), 
         .Z(clk_c_enable_284)) /* synthesis lut_function=(A (B)+!A !((C+(D))+!B)) */ ;
    defparam i12700_4_lut.init = 16'h888c;
    CCU2D r_t3_2410_add_4_33 (.A0(r_t3_adj_1671[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16298), .S0(n133_adj_1673[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_33.INIT1 = 16'h0000;
    defparam r_t3_2410_add_4_33.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_33.INJECT1_1 = "NO";
    CCU2D r_t3_2410_add_4_31 (.A0(r_t3_adj_1671[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16297), .COUT(n16298), .S0(n133_adj_1673[29]), 
          .S1(n133_adj_1673[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2410_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t3_2410_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t3_2410_add_4_31.INJECT1_0 = "NO";
    defparam r_t3_2410_add_4_31.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_5 (.A0(r_t1_adj_1674[3]), .B0(T1[3]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[4]), .B1(T1[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16684), .COUT(n16685));
    defparam sub_1874_add_2_5.INIT0 = 16'h5999;
    defparam sub_1874_add_2_5.INIT1 = 16'h5999;
    defparam sub_1874_add_2_5.INJECT1_0 = "NO";
    defparam sub_1874_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_3 (.A0(r_t1_adj_1674[1]), .B0(T1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[2]), .B1(T1[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16683), .COUT(n16684));
    defparam sub_1874_add_2_3.INIT0 = 16'h5999;
    defparam sub_1874_add_2_3.INIT1 = 16'h5999;
    defparam sub_1874_add_2_3.INJECT1_0 = "NO";
    defparam sub_1874_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1874_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1_adj_1674[0]), .B1(T1[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n16683));
    defparam sub_1874_add_2_1.INIT0 = 16'h0000;
    defparam sub_1874_add_2_1.INIT1 = 16'h5999;
    defparam sub_1874_add_2_1.INJECT1_0 = "NO";
    defparam sub_1874_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_33 (.A0(r_t3_adj_1671[31]), .B0(T3[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16682), .S1(n6171));
    defparam sub_1876_add_2_33.INIT0 = 16'h5999;
    defparam sub_1876_add_2_33.INIT1 = 16'h0000;
    defparam sub_1876_add_2_33.INJECT1_0 = "NO";
    defparam sub_1876_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_31 (.A0(r_t3_adj_1671[29]), .B0(T3[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[30]), .B1(T3[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16681), .COUT(n16682));
    defparam sub_1876_add_2_31.INIT0 = 16'h5999;
    defparam sub_1876_add_2_31.INIT1 = 16'h5999;
    defparam sub_1876_add_2_31.INJECT1_0 = "NO";
    defparam sub_1876_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_29 (.A0(r_t3_adj_1671[27]), .B0(T3[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[28]), .B1(T3[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16680), .COUT(n16681));
    defparam sub_1876_add_2_29.INIT0 = 16'h5999;
    defparam sub_1876_add_2_29.INIT1 = 16'h5999;
    defparam sub_1876_add_2_29.INJECT1_0 = "NO";
    defparam sub_1876_add_2_29.INJECT1_1 = "NO";
    FD1P3IX o_sw_142 (.D(n19257), .SP(clk_c_enable_770), .CD(n18887), 
            .CK(clk_c), .Q(sw1_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=315, LSE_RLINE=327 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam o_sw_142.GSR = "DISABLED";
    CCU2D sub_1876_add_2_27 (.A0(r_t3_adj_1671[25]), .B0(T3[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[26]), .B1(T3[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16679), .COUT(n16680));
    defparam sub_1876_add_2_27.INIT0 = 16'h5999;
    defparam sub_1876_add_2_27.INIT1 = 16'h5999;
    defparam sub_1876_add_2_27.INJECT1_0 = "NO";
    defparam sub_1876_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_25 (.A0(r_t3_adj_1671[23]), .B0(T3[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[24]), .B1(T3[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16678), .COUT(n16679));
    defparam sub_1876_add_2_25.INIT0 = 16'h5999;
    defparam sub_1876_add_2_25.INIT1 = 16'h5999;
    defparam sub_1876_add_2_25.INJECT1_0 = "NO";
    defparam sub_1876_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_23 (.A0(r_t3_adj_1671[21]), .B0(T3[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[22]), .B1(T3[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16677), .COUT(n16678));
    defparam sub_1876_add_2_23.INIT0 = 16'h5999;
    defparam sub_1876_add_2_23.INIT1 = 16'h5999;
    defparam sub_1876_add_2_23.INJECT1_0 = "NO";
    defparam sub_1876_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1876_add_2_21 (.A0(r_t3_adj_1671[19]), .B0(T3[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3_adj_1671[20]), .B1(T3[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16676), .COUT(n16677));
    defparam sub_1876_add_2_21.INIT0 = 16'h5999;
    defparam sub_1876_add_2_21.INIT1 = 16'h5999;
    defparam sub_1876_add_2_21.INJECT1_0 = "NO";
    defparam sub_1876_add_2_21.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module integrator_seq_U3
//

module integrator_seq_U3 (clk_c, GND_net, o_sw_N_1360, n18865, T1, 
            r_mode, cp2, sw2_c, T3, o_sw_N_1396, n18887, n18886, 
            clk_c_enable_762, n18917, n18918, clk_c_enable_635, \seq_SM[1] , 
            n18848, \seq_SM[1]_adj_1 , n18861, n18912, n18916, clk_c_enable_763, 
            n18904, clk_c_enable_807, \seq_SM[1]_adj_2 , n18859, integrator_2_en, 
            n19260, \seq_SM[0] , n14275, n17557, clk_c_enable_339) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input GND_net;
    input [31:0]o_sw_N_1360;
    output n18865;
    input [31:0]T1;
    input [1:0]r_mode;
    output cp2;
    output sw2_c;
    input [31:0]T3;
    input [31:0]o_sw_N_1396;
    input n18887;
    input n18886;
    output clk_c_enable_762;
    input n18917;
    input n18918;
    output clk_c_enable_635;
    input \seq_SM[1] ;
    output n18848;
    input \seq_SM[1]_adj_1 ;
    output n18861;
    input n18912;
    input n18916;
    output clk_c_enable_763;
    input n18904;
    output clk_c_enable_807;
    input \seq_SM[1]_adj_2 ;
    output n18859;
    input integrator_2_en;
    input n19260;
    input \seq_SM[0] ;
    output n14275;
    input n17557;
    output clk_c_enable_339;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/user/desktop/qss013/qss013.v(3[8:11])
    wire [31:0]r_t3;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[24:28])
    
    wire clk_c_enable_779, n10702;
    wire [31:0]n133;
    wire [31:0]r_t1;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[12:16])
    
    wire clk_c_enable_789, n10353;
    wire [31:0]n133_adj_1509;
    wire [31:0]r_t2;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(20[18:22])
    
    wire clk_c_enable_721, n10733;
    wire [31:0]n133_adj_1510;
    wire [4:0]seq_SM;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(21[11:17])
    
    wire n18874, n6346, n10000, n18827, n6917, n18828, n6311, 
        n13432, n16351, n16352, n6276, n6241, n18867, n18846, 
        clk_c_enable_327, n16350, n16349, n16650, n16649, n16648, 
        n16647, n16646, n16645, n16644, n16348, n16347, n16643, 
        n18614, n18822, n16642, n16641, n16346, n16640, n16345, 
        n16639, n16638, n17857, n16637, n16344, n16343, n16636, 
        n16342, n16635, n16341, n16634, n16633, n16632, n16631, 
        n16630, n16629, n16628, n18587, n16627, n16626, n18586, 
        n16625, clk_c_enable_329, n17889, n16340, n16624, n16623, 
        n16622, n16339, n18613, n16338, n16621, n16337, n16620, 
        n16336, n16619, n16335, clk_c_enable_424, n16618, n16617, 
        n16616, n16615, n16614, n16613, n16612, n16611, n16610, 
        n16609, n16334, n16333, n16332, n16608, n16331, n18615, 
        n16607, n16606, n16605, n16604, n16603, n16602, n16601, 
        n18588, n16600, n16599, n16598, n16597, n16596, n16595, 
        n16594, n16593, n16592, n16591, n16590, n16589, n16588, 
        n16587, n16378, n16377, n16376, n16375, n16374, n16373, 
        n16372, n5, n16371, n16370, n16369, n16368, n16367, n16366, 
        n16365, n16364, n16363, n16362, n16361, n16360, n16359, 
        n16358, n13, n16357, n7, n16356, n16355, n16354, n16353;
    
    FD1P3IX r_t3_2416__i11 (.D(n133[11]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i11.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i10 (.D(n133[10]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i10.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i8 (.D(n133_adj_1509[8]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i8.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i9 (.D(n133[9]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i9.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i8 (.D(n133[8]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i8.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i2 (.D(n133_adj_1509[2]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i2.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i9 (.D(n133_adj_1509[9]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i9.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i7 (.D(n133[7]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i7.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i6 (.D(n133[6]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i6.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i3 (.D(n133_adj_1509[3]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i3.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i31 (.D(n133_adj_1510[31]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i31.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i4 (.D(n133_adj_1509[4]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i4.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i5 (.D(n133_adj_1509[5]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i5.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i30 (.D(n133_adj_1510[30]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i30.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i29 (.D(n133_adj_1510[29]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i29.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i28 (.D(n133_adj_1510[28]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i28.GSR = "DISABLED";
    LUT4 seq_SM_4__I_0_i6_2_lut_rep_216 (.A(seq_SM[0]), .B(seq_SM[1]), .Z(n18874)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam seq_SM_4__I_0_i6_2_lut_rep_216.init = 16'hbbbb;
    LUT4 i12546_2_lut_3_lut_3_lut (.A(seq_SM[0]), .B(seq_SM[1]), .C(n6346), 
         .Z(n10000)) /* synthesis lut_function=(!(A+(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i12546_2_lut_3_lut_3_lut.init = 16'h1515;
    LUT4 i2191_2_lut_rep_169_3_lut (.A(seq_SM[0]), .B(seq_SM[1]), .C(n6346), 
         .Z(n18827)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i2191_2_lut_rep_169_3_lut.init = 16'h4040;
    LUT4 i3151_3_lut_3_lut (.A(seq_SM[0]), .B(seq_SM[1]), .C(n6346), .Z(n6917)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(161[25:26])
    defparam i3151_3_lut_3_lut.init = 16'h8c8c;
    FD1P3IX r_t2_2418__i27 (.D(n133_adj_1510[27]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i27.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i26 (.D(n133_adj_1510[26]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i26.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i25 (.D(n133_adj_1510[25]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i25.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i24 (.D(n133_adj_1510[24]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i24.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i6 (.D(n133_adj_1509[6]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i6.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i23 (.D(n133_adj_1510[23]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i23.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i5 (.D(n133[5]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i5.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i22 (.D(n133_adj_1510[22]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i22.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i4 (.D(n133[4]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i4.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i21 (.D(n133_adj_1510[21]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i21.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i20 (.D(n133_adj_1510[20]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i20.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i19 (.D(n133_adj_1510[19]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i19.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i18 (.D(n133_adj_1510[18]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i18.GSR = "DISABLED";
    LUT4 i8354_2_lut_4_lut (.A(n18828), .B(n6311), .C(seq_SM[0]), .D(n18827), 
         .Z(n13432)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam i8354_2_lut_4_lut.init = 16'hffca;
    FD1P3IX r_t2_2418__i17 (.D(n133_adj_1510[17]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i17.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i16 (.D(n133_adj_1510[16]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i16.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i15 (.D(n133_adj_1510[15]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i15.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i14 (.D(n133_adj_1510[14]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i14.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i13 (.D(n133_adj_1510[13]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i13.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i12 (.D(n133_adj_1510[12]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i12.GSR = "DISABLED";
    CCU2D r_t3_2416_add_4_11 (.A0(r_t3[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16351), .COUT(n16352), .S0(n133[9]), .S1(n133[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_11.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_11.INJECT1_1 = "NO";
    FD1P3IX r_t2_2418__i11 (.D(n133_adj_1510[11]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i11.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i10 (.D(n133_adj_1510[10]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i10.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i9 (.D(n133_adj_1510[9]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i9.GSR = "DISABLED";
    LUT4 i8151_2_lut_rep_170 (.A(n6276), .B(n6241), .Z(n18828)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8151_2_lut_rep_170.init = 16'h8888;
    FD1P3IX r_t2_2418__i8 (.D(n133_adj_1510[8]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i8.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n18867), .B(seq_SM[0]), .C(n18846), .D(n18828), 
         .Z(n10353)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'habaa;
    FD1P3IX r_t2_2418__i7 (.D(n133_adj_1510[7]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i7.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i10 (.D(n133_adj_1509[10]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i10.GSR = "DISABLED";
    FD1P3IX seq_SM__i0 (.D(n10000), .SP(clk_c_enable_327), .CD(n18867), 
            .CK(clk_c), .Q(seq_SM[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=341 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam seq_SM__i0.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i11 (.D(n133_adj_1509[11]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i11.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i3 (.D(n133[3]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i3.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i2 (.D(n133[2]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i2.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i12 (.D(n133_adj_1509[12]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i12.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i1 (.D(n133[1]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i1.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i6 (.D(n133_adj_1510[6]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i6.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i5 (.D(n133_adj_1510[5]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i5.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i4 (.D(n133_adj_1510[4]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i4.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i3 (.D(n133_adj_1510[3]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i3.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i2 (.D(n133_adj_1510[2]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i2.GSR = "DISABLED";
    FD1P3IX r_t2_2418__i1 (.D(n133_adj_1510[1]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i1.GSR = "DISABLED";
    CCU2D r_t3_2416_add_4_9 (.A0(r_t3[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16350), .COUT(n16351), .S0(n133[7]), .S1(n133[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_9.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_9.INJECT1_1 = "NO";
    FD1P3IX r_t3_2416__i31 (.D(n133[31]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i31.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i30 (.D(n133[30]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i30.GSR = "DISABLED";
    CCU2D r_t3_2416_add_4_7 (.A0(r_t3[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16349), .COUT(n16350), .S0(n133[5]), .S1(n133[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_7.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_1880_add_2_33 (.A0(r_t1[31]), .B0(o_sw_N_1360[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16650), .S1(n6241));
    defparam sub_1880_add_2_33.INIT0 = 16'h5999;
    defparam sub_1880_add_2_33.INIT1 = 16'h0000;
    defparam sub_1880_add_2_33.INJECT1_0 = "NO";
    defparam sub_1880_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1880_add_2_31 (.A0(r_t1[29]), .B0(o_sw_N_1360[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[30]), .B1(o_sw_N_1360[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16649), .COUT(n16650));
    defparam sub_1880_add_2_31.INIT0 = 16'h5999;
    defparam sub_1880_add_2_31.INIT1 = 16'h5999;
    defparam sub_1880_add_2_31.INJECT1_0 = "NO";
    defparam sub_1880_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1880_add_2_29 (.A0(r_t1[27]), .B0(o_sw_N_1360[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[28]), .B1(o_sw_N_1360[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16648), .COUT(n16649));
    defparam sub_1880_add_2_29.INIT0 = 16'h5999;
    defparam sub_1880_add_2_29.INIT1 = 16'h5999;
    defparam sub_1880_add_2_29.INJECT1_0 = "NO";
    defparam sub_1880_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_1880_add_2_27 (.A0(r_t1[25]), .B0(o_sw_N_1360[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[26]), .B1(o_sw_N_1360[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16647), .COUT(n16648));
    defparam sub_1880_add_2_27.INIT0 = 16'h5999;
    defparam sub_1880_add_2_27.INIT1 = 16'h5999;
    defparam sub_1880_add_2_27.INJECT1_0 = "NO";
    defparam sub_1880_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1880_add_2_25 (.A0(r_t1[23]), .B0(o_sw_N_1360[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[24]), .B1(o_sw_N_1360[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16646), .COUT(n16647));
    defparam sub_1880_add_2_25.INIT0 = 16'h5999;
    defparam sub_1880_add_2_25.INIT1 = 16'h5999;
    defparam sub_1880_add_2_25.INJECT1_0 = "NO";
    defparam sub_1880_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1880_add_2_23 (.A0(r_t1[21]), .B0(o_sw_N_1360[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[22]), .B1(o_sw_N_1360[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16645), .COUT(n16646));
    defparam sub_1880_add_2_23.INIT0 = 16'h5999;
    defparam sub_1880_add_2_23.INIT1 = 16'h5999;
    defparam sub_1880_add_2_23.INJECT1_0 = "NO";
    defparam sub_1880_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1880_add_2_21 (.A0(r_t1[19]), .B0(o_sw_N_1360[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[20]), .B1(o_sw_N_1360[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16644), .COUT(n16645));
    defparam sub_1880_add_2_21.INIT0 = 16'h5999;
    defparam sub_1880_add_2_21.INIT1 = 16'h5999;
    defparam sub_1880_add_2_21.INJECT1_0 = "NO";
    defparam sub_1880_add_2_21.INJECT1_1 = "NO";
    FD1P3IX r_t1_2414__i13 (.D(n133_adj_1509[13]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i13.GSR = "DISABLED";
    CCU2D r_t3_2416_add_4_5 (.A0(r_t3[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16348), .COUT(n16349), .S0(n133[3]), .S1(n133[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_5.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_5.INJECT1_1 = "NO";
    FD1P3IX r_t3_2416__i29 (.D(n133[29]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i29.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i14 (.D(n133_adj_1509[14]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i14.GSR = "DISABLED";
    CCU2D r_t3_2416_add_4_3 (.A0(r_t3[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16347), .COUT(n16348), .S0(n133[1]), .S1(n133[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_3.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_3.INJECT1_1 = "NO";
    CCU2D sub_1880_add_2_19 (.A0(r_t1[17]), .B0(o_sw_N_1360[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[18]), .B1(o_sw_N_1360[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16643), .COUT(n16644));
    defparam sub_1880_add_2_19.INIT0 = 16'h5999;
    defparam sub_1880_add_2_19.INIT1 = 16'h5999;
    defparam sub_1880_add_2_19.INJECT1_0 = "NO";
    defparam sub_1880_add_2_19.INJECT1_1 = "NO";
    FD1P3IX r_t1_2414__i15 (.D(n133_adj_1509[15]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i15.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i28 (.D(n133[28]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i28.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i16 (.D(n133_adj_1509[16]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i16.GSR = "DISABLED";
    LUT4 n13227_bdd_3_lut_12835_4_lut (.A(n6276), .B(n6241), .C(n6311), 
         .D(seq_SM[0]), .Z(n18614)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n13227_bdd_3_lut_12835_4_lut.init = 16'hf088;
    FD1P3IX r_t3_2416__i27 (.D(n133[27]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i27.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i17 (.D(n133_adj_1509[17]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i17.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i26 (.D(n133[26]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i26.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i25 (.D(n133[25]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i25.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i24 (.D(n133[24]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i24.GSR = "DISABLED";
    LUT4 i24_3_lut_rep_164_4_lut (.A(n6276), .B(n6241), .C(seq_SM[0]), 
         .D(n6311), .Z(n18822)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i24_3_lut_rep_164_4_lut.init = 16'hf808;
    CCU2D sub_1880_add_2_17 (.A0(r_t1[15]), .B0(o_sw_N_1360[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[16]), .B1(o_sw_N_1360[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16642), .COUT(n16643));
    defparam sub_1880_add_2_17.INIT0 = 16'h5999;
    defparam sub_1880_add_2_17.INIT1 = 16'h5999;
    defparam sub_1880_add_2_17.INJECT1_0 = "NO";
    defparam sub_1880_add_2_17.INJECT1_1 = "NO";
    CCU2D r_t3_2416_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n16347), .S1(n133[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_1.INIT0 = 16'hF000;
    defparam r_t3_2416_add_4_1.INIT1 = 16'h0555;
    defparam r_t3_2416_add_4_1.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_1.INJECT1_1 = "NO";
    FD1P3IX r_t3_2416__i23 (.D(n133[23]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i23.GSR = "DISABLED";
    CCU2D sub_1880_add_2_15 (.A0(r_t1[13]), .B0(o_sw_N_1360[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[14]), .B1(o_sw_N_1360[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16641), .COUT(n16642));
    defparam sub_1880_add_2_15.INIT0 = 16'h5999;
    defparam sub_1880_add_2_15.INIT1 = 16'h5999;
    defparam sub_1880_add_2_15.INJECT1_0 = "NO";
    defparam sub_1880_add_2_15.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_33 (.A0(r_t1[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16346), .S0(n133_adj_1509[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_33.INIT1 = 16'h0000;
    defparam r_t1_2414_add_4_33.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_33.INJECT1_1 = "NO";
    CCU2D sub_1880_add_2_13 (.A0(r_t1[11]), .B0(o_sw_N_1360[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[12]), .B1(o_sw_N_1360[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16640), .COUT(n16641));
    defparam sub_1880_add_2_13.INIT0 = 16'h5999;
    defparam sub_1880_add_2_13.INIT1 = 16'h5999;
    defparam sub_1880_add_2_13.INJECT1_0 = "NO";
    defparam sub_1880_add_2_13.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_31 (.A0(r_t1[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16345), .COUT(n16346), .S0(n133_adj_1509[29]), .S1(n133_adj_1509[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_31.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_31.INJECT1_1 = "NO";
    FD1P3IX r_t3_2416__i22 (.D(n133[22]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i22.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i21 (.D(n133[21]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i21.GSR = "DISABLED";
    CCU2D sub_1880_add_2_11 (.A0(r_t1[9]), .B0(o_sw_N_1360[9]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[10]), .B1(o_sw_N_1360[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16639), .COUT(n16640));
    defparam sub_1880_add_2_11.INIT0 = 16'h5999;
    defparam sub_1880_add_2_11.INIT1 = 16'h5999;
    defparam sub_1880_add_2_11.INJECT1_0 = "NO";
    defparam sub_1880_add_2_11.INJECT1_1 = "NO";
    FD1P3IX r_t3_2416__i20 (.D(n133[20]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i20.GSR = "DISABLED";
    CCU2D sub_1880_add_2_9 (.A0(r_t1[7]), .B0(o_sw_N_1360[7]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[8]), .B1(o_sw_N_1360[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16638), .COUT(n16639));
    defparam sub_1880_add_2_9.INIT0 = 16'h5999;
    defparam sub_1880_add_2_9.INIT1 = 16'h5999;
    defparam sub_1880_add_2_9.INJECT1_0 = "NO";
    defparam sub_1880_add_2_9.INJECT1_1 = "NO";
    LUT4 i12745_3_lut_4_lut (.A(n6276), .B(n6241), .C(seq_SM[1]), .D(seq_SM[0]), 
         .Z(n17857)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i12745_3_lut_4_lut.init = 16'h0007;
    CCU2D sub_1880_add_2_7 (.A0(r_t1[5]), .B0(o_sw_N_1360[5]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[6]), .B1(o_sw_N_1360[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16637), .COUT(n16638));
    defparam sub_1880_add_2_7.INIT0 = 16'h5999;
    defparam sub_1880_add_2_7.INIT1 = 16'h5999;
    defparam sub_1880_add_2_7.INJECT1_0 = "NO";
    defparam sub_1880_add_2_7.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_29 (.A0(r_t1[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16344), .COUT(n16345), .S0(n133_adj_1509[27]), .S1(n133_adj_1509[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_29.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_29.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_27 (.A0(r_t1[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16343), .COUT(n16344), .S0(n133_adj_1509[25]), .S1(n133_adj_1509[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_27.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_27.INJECT1_1 = "NO";
    CCU2D sub_1880_add_2_5 (.A0(r_t1[3]), .B0(o_sw_N_1360[3]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[4]), .B1(o_sw_N_1360[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16636), .COUT(n16637));
    defparam sub_1880_add_2_5.INIT0 = 16'h5999;
    defparam sub_1880_add_2_5.INIT1 = 16'h5999;
    defparam sub_1880_add_2_5.INJECT1_0 = "NO";
    defparam sub_1880_add_2_5.INJECT1_1 = "NO";
    FD1P3IX r_t1_2414__i18 (.D(n133_adj_1509[18]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i18.GSR = "DISABLED";
    LUT4 i12611_3_lut_4_lut (.A(n18865), .B(seq_SM[1]), .C(seq_SM[0]), 
         .D(n18867), .Z(clk_c_enable_779)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(150[25:26])
    defparam i12611_3_lut_4_lut.init = 16'hff10;
    LUT4 i12715_3_lut_4_lut (.A(n18865), .B(seq_SM[1]), .C(seq_SM[0]), 
         .D(n18867), .Z(clk_c_enable_789)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(150[25:26])
    defparam i12715_3_lut_4_lut.init = 16'hff01;
    CCU2D r_t1_2414_add_4_25 (.A0(r_t1[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16342), .COUT(n16343), .S0(n133_adj_1509[23]), .S1(n133_adj_1509[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_25.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_25.INJECT1_1 = "NO";
    CCU2D sub_1880_add_2_3 (.A0(r_t1[1]), .B0(o_sw_N_1360[1]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[2]), .B1(o_sw_N_1360[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16635), .COUT(n16636));
    defparam sub_1880_add_2_3.INIT0 = 16'h5999;
    defparam sub_1880_add_2_3.INIT1 = 16'h5999;
    defparam sub_1880_add_2_3.INJECT1_0 = "NO";
    defparam sub_1880_add_2_3.INJECT1_1 = "NO";
    FD1P3IX r_t3_2416__i19 (.D(n133[19]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i19.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i18 (.D(n133[18]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i18.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i17 (.D(n133[17]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i17.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i16 (.D(n133[16]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i16.GSR = "DISABLED";
    CCU2D r_t1_2414_add_4_23 (.A0(r_t1[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16341), .COUT(n16342), .S0(n133_adj_1509[21]), .S1(n133_adj_1509[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_23.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_23.INJECT1_1 = "NO";
    FD1P3IX r_t1_2414__i19 (.D(n133_adj_1509[19]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i19.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i15 (.D(n133[15]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i15.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i20 (.D(n133_adj_1509[20]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i20.GSR = "DISABLED";
    CCU2D sub_1880_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[0]), .B1(o_sw_N_1360[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n16635));
    defparam sub_1880_add_2_1.INIT0 = 16'h0000;
    defparam sub_1880_add_2_1.INIT1 = 16'h5999;
    defparam sub_1880_add_2_1.INJECT1_0 = "NO";
    defparam sub_1880_add_2_1.INJECT1_1 = "NO";
    FD1P3IX r_t1_2414__i21 (.D(n133_adj_1509[21]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i21.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i14 (.D(n133[14]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i14.GSR = "DISABLED";
    CCU2D sub_1882_add_2_33 (.A0(r_t1[31]), .B0(T1[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16634), .S1(n6276));
    defparam sub_1882_add_2_33.INIT0 = 16'h5999;
    defparam sub_1882_add_2_33.INIT1 = 16'h0000;
    defparam sub_1882_add_2_33.INJECT1_0 = "NO";
    defparam sub_1882_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_31 (.A0(r_t1[29]), .B0(T1[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[30]), .B1(T1[30]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16633), .COUT(n16634));
    defparam sub_1882_add_2_31.INIT0 = 16'h5999;
    defparam sub_1882_add_2_31.INIT1 = 16'h5999;
    defparam sub_1882_add_2_31.INJECT1_0 = "NO";
    defparam sub_1882_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_29 (.A0(r_t1[27]), .B0(T1[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[28]), .B1(T1[28]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16632), .COUT(n16633));
    defparam sub_1882_add_2_29.INIT0 = 16'h5999;
    defparam sub_1882_add_2_29.INIT1 = 16'h5999;
    defparam sub_1882_add_2_29.INJECT1_0 = "NO";
    defparam sub_1882_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_27 (.A0(r_t1[25]), .B0(T1[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[26]), .B1(T1[26]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16631), .COUT(n16632));
    defparam sub_1882_add_2_27.INIT0 = 16'h5999;
    defparam sub_1882_add_2_27.INIT1 = 16'h5999;
    defparam sub_1882_add_2_27.INJECT1_0 = "NO";
    defparam sub_1882_add_2_27.INJECT1_1 = "NO";
    FD1P3IX r_t1_2414__i22 (.D(n133_adj_1509[22]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i22.GSR = "DISABLED";
    CCU2D sub_1882_add_2_25 (.A0(r_t1[23]), .B0(T1[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[24]), .B1(T1[24]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16630), .COUT(n16631));
    defparam sub_1882_add_2_25.INIT0 = 16'h5999;
    defparam sub_1882_add_2_25.INIT1 = 16'h5999;
    defparam sub_1882_add_2_25.INJECT1_0 = "NO";
    defparam sub_1882_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_23 (.A0(r_t1[21]), .B0(T1[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[22]), .B1(T1[22]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16629), .COUT(n16630));
    defparam sub_1882_add_2_23.INIT0 = 16'h5999;
    defparam sub_1882_add_2_23.INIT1 = 16'h5999;
    defparam sub_1882_add_2_23.INJECT1_0 = "NO";
    defparam sub_1882_add_2_23.INJECT1_1 = "NO";
    FD1P3IX r_t3_2416__i13 (.D(n133[13]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i13.GSR = "DISABLED";
    CCU2D sub_1882_add_2_21 (.A0(r_t1[19]), .B0(T1[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[20]), .B1(T1[20]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16628), .COUT(n16629));
    defparam sub_1882_add_2_21.INIT0 = 16'h5999;
    defparam sub_1882_add_2_21.INIT1 = 16'h5999;
    defparam sub_1882_add_2_21.INJECT1_0 = "NO";
    defparam sub_1882_add_2_21.INJECT1_1 = "NO";
    FD1P3IX r_t1_2414__i23 (.D(n133_adj_1509[23]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i23.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i24 (.D(n133_adj_1509[24]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i24.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i25 (.D(n133_adj_1509[25]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i25.GSR = "DISABLED";
    LUT4 n6276_bdd_4_lut (.A(n6276), .B(n6241), .C(seq_SM[1]), .D(r_mode[0]), 
         .Z(n18587)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam n6276_bdd_4_lut.init = 16'h04f3;
    FD1P3IX r_t1_2414__i26 (.D(n133_adj_1509[26]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i26.GSR = "DISABLED";
    CCU2D sub_1882_add_2_19 (.A0(r_t1[17]), .B0(T1[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[18]), .B1(T1[18]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16627), .COUT(n16628));
    defparam sub_1882_add_2_19.INIT0 = 16'h5999;
    defparam sub_1882_add_2_19.INIT1 = 16'h5999;
    defparam sub_1882_add_2_19.INJECT1_0 = "NO";
    defparam sub_1882_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_17 (.A0(r_t1[15]), .B0(T1[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[16]), .B1(T1[16]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16626), .COUT(n16627));
    defparam sub_1882_add_2_17.INIT0 = 16'h5999;
    defparam sub_1882_add_2_17.INIT1 = 16'h5999;
    defparam sub_1882_add_2_17.INJECT1_0 = "NO";
    defparam sub_1882_add_2_17.INJECT1_1 = "NO";
    LUT4 n6276_bdd_3_lut (.A(n6311), .B(seq_SM[1]), .C(r_mode[0]), .Z(n18586)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n6276_bdd_3_lut.init = 16'h1010;
    CCU2D sub_1882_add_2_15 (.A0(r_t1[13]), .B0(T1[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[14]), .B1(T1[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16625), .COUT(n16626));
    defparam sub_1882_add_2_15.INIT0 = 16'h5999;
    defparam sub_1882_add_2_15.INIT1 = 16'h5999;
    defparam sub_1882_add_2_15.INJECT1_0 = "NO";
    defparam sub_1882_add_2_15.INJECT1_1 = "NO";
    FD1P3IX seq_SM__i1 (.D(seq_SM[0]), .SP(clk_c_enable_327), .CD(n18867), 
            .CK(clk_c), .Q(seq_SM[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=341 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam seq_SM__i1.GSR = "DISABLED";
    FD1P3AX o_cp_143 (.D(n17889), .SP(clk_c_enable_329), .CK(clk_c), .Q(cp2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=341 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam o_cp_143.GSR = "DISABLED";
    CCU2D r_t1_2414_add_4_21 (.A0(r_t1[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16340), .COUT(n16341), .S0(n133_adj_1509[19]), .S1(n133_adj_1509[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_21.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_21.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_13 (.A0(r_t1[11]), .B0(T1[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[12]), .B1(T1[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16624), .COUT(n16625));
    defparam sub_1882_add_2_13.INIT0 = 16'h5999;
    defparam sub_1882_add_2_13.INIT1 = 16'h5999;
    defparam sub_1882_add_2_13.INJECT1_0 = "NO";
    defparam sub_1882_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_11 (.A0(r_t1[9]), .B0(T1[9]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[10]), .B1(T1[10]), .C1(GND_net), .D1(GND_net), .CIN(n16623), 
          .COUT(n16624));
    defparam sub_1882_add_2_11.INIT0 = 16'h5999;
    defparam sub_1882_add_2_11.INIT1 = 16'h5999;
    defparam sub_1882_add_2_11.INJECT1_0 = "NO";
    defparam sub_1882_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_9 (.A0(r_t1[7]), .B0(T1[7]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[8]), .B1(T1[8]), .C1(GND_net), .D1(GND_net), .CIN(n16622), 
          .COUT(n16623));
    defparam sub_1882_add_2_9.INIT0 = 16'h5999;
    defparam sub_1882_add_2_9.INIT1 = 16'h5999;
    defparam sub_1882_add_2_9.INJECT1_0 = "NO";
    defparam sub_1882_add_2_9.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_19 (.A0(r_t1[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16339), .COUT(n16340), .S0(n133_adj_1509[17]), .S1(n133_adj_1509[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_19.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_19.INJECT1_1 = "NO";
    LUT4 n13227_bdd_2_lut_12834 (.A(n6346), .B(seq_SM[0]), .Z(n18613)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n13227_bdd_2_lut_12834.init = 16'heeee;
    CCU2D r_t1_2414_add_4_17 (.A0(r_t1[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16338), .COUT(n16339), .S0(n133_adj_1509[15]), .S1(n133_adj_1509[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_17.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_17.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_7 (.A0(r_t1[5]), .B0(T1[5]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[6]), .B1(T1[6]), .C1(GND_net), .D1(GND_net), .CIN(n16621), 
          .COUT(n16622));
    defparam sub_1882_add_2_7.INIT0 = 16'h5999;
    defparam sub_1882_add_2_7.INIT1 = 16'h5999;
    defparam sub_1882_add_2_7.INJECT1_0 = "NO";
    defparam sub_1882_add_2_7.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_15 (.A0(r_t1[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16337), .COUT(n16338), .S0(n133_adj_1509[13]), .S1(n133_adj_1509[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_15.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_15.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_5 (.A0(r_t1[3]), .B0(T1[3]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[4]), .B1(T1[4]), .C1(GND_net), .D1(GND_net), .CIN(n16620), 
          .COUT(n16621));
    defparam sub_1882_add_2_5.INIT0 = 16'h5999;
    defparam sub_1882_add_2_5.INIT1 = 16'h5999;
    defparam sub_1882_add_2_5.INJECT1_0 = "NO";
    defparam sub_1882_add_2_5.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_13 (.A0(r_t1[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16336), .COUT(n16337), .S0(n133_adj_1509[11]), .S1(n133_adj_1509[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_13.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_13.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_3 (.A0(r_t1[1]), .B0(T1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t1[2]), .B1(T1[2]), .C1(GND_net), .D1(GND_net), .CIN(n16619), 
          .COUT(n16620));
    defparam sub_1882_add_2_3.INIT0 = 16'h5999;
    defparam sub_1882_add_2_3.INIT1 = 16'h5999;
    defparam sub_1882_add_2_3.INJECT1_0 = "NO";
    defparam sub_1882_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1882_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[0]), .B1(T1[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n16619));
    defparam sub_1882_add_2_1.INIT0 = 16'h0000;
    defparam sub_1882_add_2_1.INIT1 = 16'h5999;
    defparam sub_1882_add_2_1.INJECT1_0 = "NO";
    defparam sub_1882_add_2_1.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_11 (.A0(r_t1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16335), .COUT(n16336), .S0(n133_adj_1509[9]), .S1(n133_adj_1509[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_11.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_11.INJECT1_1 = "NO";
    FD1P3IX o_sw_142 (.D(n17857), .SP(clk_c_enable_424), .CD(n18867), 
            .CK(clk_c), .Q(sw2_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=329, LSE_RLINE=341 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam o_sw_142.GSR = "DISABLED";
    CCU2D sub_1884_add_2_33 (.A0(r_t3[31]), .B0(T3[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16618), .S1(n6311));
    defparam sub_1884_add_2_33.INIT0 = 16'h5999;
    defparam sub_1884_add_2_33.INIT1 = 16'h0000;
    defparam sub_1884_add_2_33.INJECT1_0 = "NO";
    defparam sub_1884_add_2_33.INJECT1_1 = "NO";
    FD1P3IX r_t1_2414__i27 (.D(n133_adj_1509[27]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i27.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i28 (.D(n133_adj_1509[28]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i28.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i29 (.D(n133_adj_1509[29]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i29.GSR = "DISABLED";
    CCU2D sub_1884_add_2_31 (.A0(r_t3[29]), .B0(T3[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[30]), .B1(T3[30]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16617), .COUT(n16618));
    defparam sub_1884_add_2_31.INIT0 = 16'h5999;
    defparam sub_1884_add_2_31.INIT1 = 16'h5999;
    defparam sub_1884_add_2_31.INJECT1_0 = "NO";
    defparam sub_1884_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_29 (.A0(r_t3[27]), .B0(T3[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[28]), .B1(T3[28]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16616), .COUT(n16617));
    defparam sub_1884_add_2_29.INIT0 = 16'h5999;
    defparam sub_1884_add_2_29.INIT1 = 16'h5999;
    defparam sub_1884_add_2_29.INJECT1_0 = "NO";
    defparam sub_1884_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_27 (.A0(r_t3[25]), .B0(T3[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[26]), .B1(T3[26]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16615), .COUT(n16616));
    defparam sub_1884_add_2_27.INIT0 = 16'h5999;
    defparam sub_1884_add_2_27.INIT1 = 16'h5999;
    defparam sub_1884_add_2_27.INJECT1_0 = "NO";
    defparam sub_1884_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_25 (.A0(r_t3[23]), .B0(T3[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[24]), .B1(T3[24]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16614), .COUT(n16615));
    defparam sub_1884_add_2_25.INIT0 = 16'h5999;
    defparam sub_1884_add_2_25.INIT1 = 16'h5999;
    defparam sub_1884_add_2_25.INJECT1_0 = "NO";
    defparam sub_1884_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_23 (.A0(r_t3[21]), .B0(T3[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[22]), .B1(T3[22]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16613), .COUT(n16614));
    defparam sub_1884_add_2_23.INIT0 = 16'h5999;
    defparam sub_1884_add_2_23.INIT1 = 16'h5999;
    defparam sub_1884_add_2_23.INJECT1_0 = "NO";
    defparam sub_1884_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_21 (.A0(r_t3[19]), .B0(T3[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[20]), .B1(T3[20]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16612), .COUT(n16613));
    defparam sub_1884_add_2_21.INIT0 = 16'h5999;
    defparam sub_1884_add_2_21.INIT1 = 16'h5999;
    defparam sub_1884_add_2_21.INJECT1_0 = "NO";
    defparam sub_1884_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_19 (.A0(r_t3[17]), .B0(T3[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[18]), .B1(T3[18]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16611), .COUT(n16612));
    defparam sub_1884_add_2_19.INIT0 = 16'h5999;
    defparam sub_1884_add_2_19.INIT1 = 16'h5999;
    defparam sub_1884_add_2_19.INJECT1_0 = "NO";
    defparam sub_1884_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_17 (.A0(r_t3[15]), .B0(T3[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[16]), .B1(T3[16]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16610), .COUT(n16611));
    defparam sub_1884_add_2_17.INIT0 = 16'h5999;
    defparam sub_1884_add_2_17.INIT1 = 16'h5999;
    defparam sub_1884_add_2_17.INJECT1_0 = "NO";
    defparam sub_1884_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_15 (.A0(r_t3[13]), .B0(T3[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[14]), .B1(T3[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16609), .COUT(n16610));
    defparam sub_1884_add_2_15.INIT0 = 16'h5999;
    defparam sub_1884_add_2_15.INIT1 = 16'h5999;
    defparam sub_1884_add_2_15.INJECT1_0 = "NO";
    defparam sub_1884_add_2_15.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_9 (.A0(r_t1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16334), .COUT(n16335), .S0(n133_adj_1509[7]), .S1(n133_adj_1509[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_9.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_9.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_7 (.A0(r_t1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16333), .COUT(n16334), .S0(n133_adj_1509[5]), .S1(n133_adj_1509[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_7.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_7.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_5 (.A0(r_t1[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16332), .COUT(n16333), .S0(n133_adj_1509[3]), .S1(n133_adj_1509[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_5.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_13 (.A0(r_t3[11]), .B0(T3[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[12]), .B1(T3[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n16608), .COUT(n16609));
    defparam sub_1884_add_2_13.INIT0 = 16'h5999;
    defparam sub_1884_add_2_13.INIT1 = 16'h5999;
    defparam sub_1884_add_2_13.INJECT1_0 = "NO";
    defparam sub_1884_add_2_13.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_3 (.A0(r_t1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16331), .COUT(n16332), .S0(n133_adj_1509[1]), .S1(n133_adj_1509[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t1_2414_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t1_2414_add_4_3.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_3.INJECT1_1 = "NO";
    FD1P3IX r_t1_2414__i30 (.D(n133_adj_1509[30]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i30.GSR = "DISABLED";
    PFUMX i12832 (.BLUT(n18614), .ALUT(n18613), .C0(seq_SM[1]), .Z(n18615));
    CCU2D sub_1884_add_2_11 (.A0(r_t3[9]), .B0(T3[9]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[10]), .B1(T3[10]), .C1(GND_net), .D1(GND_net), .CIN(n16607), 
          .COUT(n16608));
    defparam sub_1884_add_2_11.INIT0 = 16'h5999;
    defparam sub_1884_add_2_11.INIT1 = 16'h5999;
    defparam sub_1884_add_2_11.INJECT1_0 = "NO";
    defparam sub_1884_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_9 (.A0(r_t3[7]), .B0(T3[7]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[8]), .B1(T3[8]), .C1(GND_net), .D1(GND_net), .CIN(n16606), 
          .COUT(n16607));
    defparam sub_1884_add_2_9.INIT0 = 16'h5999;
    defparam sub_1884_add_2_9.INIT1 = 16'h5999;
    defparam sub_1884_add_2_9.INJECT1_0 = "NO";
    defparam sub_1884_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_7 (.A0(r_t3[5]), .B0(T3[5]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[6]), .B1(T3[6]), .C1(GND_net), .D1(GND_net), .CIN(n16605), 
          .COUT(n16606));
    defparam sub_1884_add_2_7.INIT0 = 16'h5999;
    defparam sub_1884_add_2_7.INIT1 = 16'h5999;
    defparam sub_1884_add_2_7.INJECT1_0 = "NO";
    defparam sub_1884_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_5 (.A0(r_t3[3]), .B0(T3[3]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[4]), .B1(T3[4]), .C1(GND_net), .D1(GND_net), .CIN(n16604), 
          .COUT(n16605));
    defparam sub_1884_add_2_5.INIT0 = 16'h5999;
    defparam sub_1884_add_2_5.INIT1 = 16'h5999;
    defparam sub_1884_add_2_5.INJECT1_0 = "NO";
    defparam sub_1884_add_2_5.INJECT1_1 = "NO";
    CCU2D r_t1_2414_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n16331), .S1(n133_adj_1509[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414_add_4_1.INIT0 = 16'hF000;
    defparam r_t1_2414_add_4_1.INIT1 = 16'h0555;
    defparam r_t1_2414_add_4_1.INJECT1_0 = "NO";
    defparam r_t1_2414_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_3 (.A0(r_t3[1]), .B0(T3[1]), .C0(GND_net), .D0(GND_net), 
          .A1(r_t3[2]), .B1(T3[2]), .C1(GND_net), .D1(GND_net), .CIN(n16603), 
          .COUT(n16604));
    defparam sub_1884_add_2_3.INIT0 = 16'h5999;
    defparam sub_1884_add_2_3.INIT1 = 16'h5999;
    defparam sub_1884_add_2_3.INJECT1_0 = "NO";
    defparam sub_1884_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1884_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[0]), .B1(T3[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n16603));
    defparam sub_1884_add_2_1.INIT0 = 16'h0000;
    defparam sub_1884_add_2_1.INIT1 = 16'h5999;
    defparam sub_1884_add_2_1.INJECT1_0 = "NO";
    defparam sub_1884_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_33 (.A0(r_t2[31]), .B0(o_sw_N_1396[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16602), .S1(n6346));
    defparam sub_1886_add_2_33.INIT0 = 16'h5999;
    defparam sub_1886_add_2_33.INIT1 = 16'h0000;
    defparam sub_1886_add_2_33.INJECT1_0 = "NO";
    defparam sub_1886_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_31 (.A0(r_t2[29]), .B0(o_sw_N_1396[29]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[30]), .B1(o_sw_N_1396[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16601), .COUT(n16602));
    defparam sub_1886_add_2_31.INIT0 = 16'h5999;
    defparam sub_1886_add_2_31.INIT1 = 16'h5999;
    defparam sub_1886_add_2_31.INJECT1_0 = "NO";
    defparam sub_1886_add_2_31.INJECT1_1 = "NO";
    PFUMX i12821 (.BLUT(n18587), .ALUT(n18586), .C0(seq_SM[0]), .Z(n18588));
    CCU2D sub_1886_add_2_29 (.A0(r_t2[27]), .B0(o_sw_N_1396[27]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[28]), .B1(o_sw_N_1396[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16600), .COUT(n16601));
    defparam sub_1886_add_2_29.INIT0 = 16'h5999;
    defparam sub_1886_add_2_29.INIT1 = 16'h5999;
    defparam sub_1886_add_2_29.INJECT1_0 = "NO";
    defparam sub_1886_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_27 (.A0(r_t2[25]), .B0(o_sw_N_1396[25]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[26]), .B1(o_sw_N_1396[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16599), .COUT(n16600));
    defparam sub_1886_add_2_27.INIT0 = 16'h5999;
    defparam sub_1886_add_2_27.INIT1 = 16'h5999;
    defparam sub_1886_add_2_27.INJECT1_0 = "NO";
    defparam sub_1886_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_25 (.A0(r_t2[23]), .B0(o_sw_N_1396[23]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[24]), .B1(o_sw_N_1396[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16598), .COUT(n16599));
    defparam sub_1886_add_2_25.INIT0 = 16'h5999;
    defparam sub_1886_add_2_25.INIT1 = 16'h5999;
    defparam sub_1886_add_2_25.INJECT1_0 = "NO";
    defparam sub_1886_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_23 (.A0(r_t2[21]), .B0(o_sw_N_1396[21]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[22]), .B1(o_sw_N_1396[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16597), .COUT(n16598));
    defparam sub_1886_add_2_23.INIT0 = 16'h5999;
    defparam sub_1886_add_2_23.INIT1 = 16'h5999;
    defparam sub_1886_add_2_23.INJECT1_0 = "NO";
    defparam sub_1886_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_21 (.A0(r_t2[19]), .B0(o_sw_N_1396[19]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[20]), .B1(o_sw_N_1396[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16596), .COUT(n16597));
    defparam sub_1886_add_2_21.INIT0 = 16'h5999;
    defparam sub_1886_add_2_21.INIT1 = 16'h5999;
    defparam sub_1886_add_2_21.INJECT1_0 = "NO";
    defparam sub_1886_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_19 (.A0(r_t2[17]), .B0(o_sw_N_1396[17]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[18]), .B1(o_sw_N_1396[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16595), .COUT(n16596));
    defparam sub_1886_add_2_19.INIT0 = 16'h5999;
    defparam sub_1886_add_2_19.INIT1 = 16'h5999;
    defparam sub_1886_add_2_19.INJECT1_0 = "NO";
    defparam sub_1886_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_17 (.A0(r_t2[15]), .B0(o_sw_N_1396[15]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[16]), .B1(o_sw_N_1396[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16594), .COUT(n16595));
    defparam sub_1886_add_2_17.INIT0 = 16'h5999;
    defparam sub_1886_add_2_17.INIT1 = 16'h5999;
    defparam sub_1886_add_2_17.INJECT1_0 = "NO";
    defparam sub_1886_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_15 (.A0(r_t2[13]), .B0(o_sw_N_1396[13]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[14]), .B1(o_sw_N_1396[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16593), .COUT(n16594));
    defparam sub_1886_add_2_15.INIT0 = 16'h5999;
    defparam sub_1886_add_2_15.INIT1 = 16'h5999;
    defparam sub_1886_add_2_15.INJECT1_0 = "NO";
    defparam sub_1886_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_13 (.A0(r_t2[11]), .B0(o_sw_N_1396[11]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[12]), .B1(o_sw_N_1396[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16592), .COUT(n16593));
    defparam sub_1886_add_2_13.INIT0 = 16'h5999;
    defparam sub_1886_add_2_13.INIT1 = 16'h5999;
    defparam sub_1886_add_2_13.INJECT1_0 = "NO";
    defparam sub_1886_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_11 (.A0(r_t2[9]), .B0(o_sw_N_1396[9]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[10]), .B1(o_sw_N_1396[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16591), .COUT(n16592));
    defparam sub_1886_add_2_11.INIT0 = 16'h5999;
    defparam sub_1886_add_2_11.INIT1 = 16'h5999;
    defparam sub_1886_add_2_11.INJECT1_0 = "NO";
    defparam sub_1886_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_9 (.A0(r_t2[7]), .B0(o_sw_N_1396[7]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[8]), .B1(o_sw_N_1396[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16590), .COUT(n16591));
    defparam sub_1886_add_2_9.INIT0 = 16'h5999;
    defparam sub_1886_add_2_9.INIT1 = 16'h5999;
    defparam sub_1886_add_2_9.INJECT1_0 = "NO";
    defparam sub_1886_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_7 (.A0(r_t2[5]), .B0(o_sw_N_1396[5]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[6]), .B1(o_sw_N_1396[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16589), .COUT(n16590));
    defparam sub_1886_add_2_7.INIT0 = 16'h5999;
    defparam sub_1886_add_2_7.INIT1 = 16'h5999;
    defparam sub_1886_add_2_7.INJECT1_0 = "NO";
    defparam sub_1886_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_5 (.A0(r_t2[3]), .B0(o_sw_N_1396[3]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[4]), .B1(o_sw_N_1396[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16588), .COUT(n16589));
    defparam sub_1886_add_2_5.INIT0 = 16'h5999;
    defparam sub_1886_add_2_5.INIT1 = 16'h5999;
    defparam sub_1886_add_2_5.INJECT1_0 = "NO";
    defparam sub_1886_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_3 (.A0(r_t2[1]), .B0(o_sw_N_1396[1]), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[2]), .B1(o_sw_N_1396[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n16587), .COUT(n16588));
    defparam sub_1886_add_2_3.INIT0 = 16'h5999;
    defparam sub_1886_add_2_3.INIT1 = 16'h5999;
    defparam sub_1886_add_2_3.INJECT1_0 = "NO";
    defparam sub_1886_add_2_3.INJECT1_1 = "NO";
    CCU2D r_t2_2418_add_4_33 (.A0(r_t2[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16378), .S0(n133_adj_1510[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_33.INIT1 = 16'h0000;
    defparam r_t2_2418_add_4_33.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_33.INJECT1_1 = "NO";
    CCU2D sub_1886_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[0]), .B1(o_sw_N_1396[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n16587));
    defparam sub_1886_add_2_1.INIT0 = 16'h0000;
    defparam sub_1886_add_2_1.INIT1 = 16'h5999;
    defparam sub_1886_add_2_1.INJECT1_0 = "NO";
    defparam sub_1886_add_2_1.INJECT1_1 = "NO";
    CCU2D r_t2_2418_add_4_31 (.A0(r_t2[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16377), .COUT(n16378), .S0(n133_adj_1510[29]), .S1(n133_adj_1510[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_31.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_31.INJECT1_1 = "NO";
    CCU2D r_t2_2418_add_4_29 (.A0(r_t2[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16376), .COUT(n16377), .S0(n133_adj_1510[27]), .S1(n133_adj_1510[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_29.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_29.INJECT1_1 = "NO";
    CCU2D r_t2_2418_add_4_27 (.A0(r_t2[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16375), .COUT(n16376), .S0(n133_adj_1510[25]), .S1(n133_adj_1510[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_27.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_27.INJECT1_1 = "NO";
    CCU2D r_t2_2418_add_4_25 (.A0(r_t2[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16374), .COUT(n16375), .S0(n133_adj_1510[23]), .S1(n133_adj_1510[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_25.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_25.INJECT1_1 = "NO";
    LUT4 i8143_2_lut_rep_207 (.A(r_mode[1]), .B(r_mode[0]), .Z(n18865)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8143_2_lut_rep_207.init = 16'h8888;
    LUT4 i12728_2_lut_3_lut_4_lut (.A(r_mode[1]), .B(r_mode[0]), .C(n18887), 
         .D(n18886), .Z(clk_c_enable_762)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam i12728_2_lut_3_lut_4_lut.init = 16'hf0f7;
    LUT4 i12540_3_lut_4_lut (.A(r_mode[1]), .B(r_mode[0]), .C(n18917), 
         .D(n18918), .Z(clk_c_enable_635)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i12540_3_lut_4_lut.init = 16'hff07;
    LUT4 i1_2_lut_rep_190_3_lut (.A(r_mode[1]), .B(r_mode[0]), .C(\seq_SM[1] ), 
         .Z(n18848)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_190_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_rep_203_3_lut (.A(r_mode[1]), .B(r_mode[0]), .C(\seq_SM[1]_adj_1 ), 
         .Z(n18861)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_203_3_lut.init = 16'hf8f8;
    LUT4 i12678_3_lut_4_lut (.A(r_mode[1]), .B(r_mode[0]), .C(n18912), 
         .D(n18916), .Z(clk_c_enable_763)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i12678_3_lut_4_lut.init = 16'hff07;
    CCU2D r_t2_2418_add_4_23 (.A0(r_t2[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16373), .COUT(n16374), .S0(n133_adj_1510[21]), .S1(n133_adj_1510[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_23.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_23.INJECT1_1 = "NO";
    CCU2D r_t2_2418_add_4_21 (.A0(r_t2[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16372), .COUT(n16373), .S0(n133_adj_1510[19]), .S1(n133_adj_1510[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_21.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_21.INJECT1_1 = "NO";
    LUT4 i12603_3_lut_4_lut (.A(r_mode[1]), .B(r_mode[0]), .C(n18904), 
         .D(n18916), .Z(clk_c_enable_807)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i12603_3_lut_4_lut.init = 16'hff07;
    LUT4 i1_2_lut_rep_188_3_lut (.A(r_mode[1]), .B(r_mode[0]), .C(seq_SM[1]), 
         .Z(n18846)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_188_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_3_lut (.A(r_mode[1]), .B(r_mode[0]), .C(seq_SM[1]), 
         .Z(n5)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8f8f;
    LUT4 i1_2_lut_rep_201_3_lut (.A(r_mode[1]), .B(r_mode[0]), .C(\seq_SM[1]_adj_2 ), 
         .Z(n18859)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_201_3_lut.init = 16'hf8f8;
    CCU2D r_t2_2418_add_4_19 (.A0(r_t2[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16371), .COUT(n16372), .S0(n133_adj_1510[17]), .S1(n133_adj_1510[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_19.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_19.INJECT1_1 = "NO";
    LUT4 i12609_3_lut_4_lut (.A(r_mode[1]), .B(r_mode[0]), .C(n18874), 
         .D(n18867), .Z(clk_c_enable_721)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i12609_3_lut_4_lut.init = 16'hff07;
    LUT4 i12740_4_lut (.A(n18867), .B(n18615), .C(r_mode[0]), .D(r_mode[1]), 
         .Z(clk_c_enable_329)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C (D)))) */ ;
    defparam i12740_4_lut.init = 16'hafbb;
    CCU2D r_t2_2418_add_4_17 (.A0(r_t2[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16370), .COUT(n16371), .S0(n133_adj_1510[15]), .S1(n133_adj_1510[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_17.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_17.INJECT1_1 = "NO";
    LUT4 i12489_2_lut_rep_209 (.A(integrator_2_en), .B(n19260), .Z(n18867)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam i12489_2_lut_rep_209.init = 16'h7777;
    CCU2D r_t2_2418_add_4_15 (.A0(r_t2[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16369), .COUT(n16370), .S0(n133_adj_1510[13]), .S1(n133_adj_1510[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_15.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_15.INJECT1_1 = "NO";
    LUT4 i9193_3_lut_4_lut (.A(r_mode[1]), .B(r_mode[0]), .C(\seq_SM[1] ), 
         .D(\seq_SM[0] ), .Z(n14275)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;
    defparam i9193_3_lut_4_lut.init = 16'hf888;
    CCU2D r_t2_2418_add_4_13 (.A0(r_t2[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16368), .COUT(n16369), .S0(n133_adj_1510[11]), .S1(n133_adj_1510[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_13.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_13.INJECT1_1 = "NO";
    CCU2D r_t2_2418_add_4_11 (.A0(r_t2[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16367), .COUT(n16368), .S0(n133_adj_1510[9]), .S1(n133_adj_1510[10]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_11.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_11.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_11.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_11.INJECT1_1 = "NO";
    CCU2D r_t2_2418_add_4_9 (.A0(r_t2[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16366), .COUT(n16367), .S0(n133_adj_1510[7]), .S1(n133_adj_1510[8]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_9.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_9.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_9.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_9.INJECT1_1 = "NO";
    CCU2D r_t2_2418_add_4_7 (.A0(r_t2[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16365), .COUT(n16366), .S0(n133_adj_1510[5]), .S1(n133_adj_1510[6]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_7.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_7.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_7.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_7.INJECT1_1 = "NO";
    CCU2D r_t2_2418_add_4_5 (.A0(r_t2[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16364), .COUT(n16365), .S0(n133_adj_1510[3]), .S1(n133_adj_1510[4]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_5.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_5.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_5.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_5.INJECT1_1 = "NO";
    LUT4 i12549_3_lut_4_lut (.A(r_mode[1]), .B(r_mode[0]), .C(n17557), 
         .D(n18887), .Z(clk_c_enable_339)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i12549_3_lut_4_lut.init = 16'hff07;
    CCU2D r_t2_2418_add_4_3 (.A0(r_t2[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16363), .COUT(n16364), .S0(n133_adj_1510[1]), .S1(n133_adj_1510[2]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_3.INIT0 = 16'hfaaa;
    defparam r_t2_2418_add_4_3.INIT1 = 16'hfaaa;
    defparam r_t2_2418_add_4_3.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_3.INJECT1_1 = "NO";
    CCU2D r_t2_2418_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n16363), .S1(n133_adj_1510[0]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418_add_4_1.INIT0 = 16'hF000;
    defparam r_t2_2418_add_4_1.INIT1 = 16'h0555;
    defparam r_t2_2418_add_4_1.INJECT1_0 = "NO";
    defparam r_t2_2418_add_4_1.INJECT1_1 = "NO";
    CCU2D r_t3_2416_add_4_33 (.A0(r_t3[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16362), .S0(n133[31]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_33.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_33.INIT1 = 16'h0000;
    defparam r_t3_2416_add_4_33.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_33.INJECT1_1 = "NO";
    CCU2D r_t3_2416_add_4_31 (.A0(r_t3[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16361), .COUT(n16362), .S0(n133[29]), .S1(n133[30]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_31.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_31.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_31.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_31.INJECT1_1 = "NO";
    CCU2D r_t3_2416_add_4_29 (.A0(r_t3[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16360), .COUT(n16361), .S0(n133[27]), .S1(n133[28]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_29.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_29.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_29.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_29.INJECT1_1 = "NO";
    FD1P3IX r_t1_2414__i31 (.D(n133_adj_1509[31]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i31.GSR = "DISABLED";
    CCU2D r_t3_2416_add_4_27 (.A0(r_t3[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16359), .COUT(n16360), .S0(n133[25]), .S1(n133[26]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_27.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_27.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_27.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_27.INJECT1_1 = "NO";
    CCU2D r_t3_2416_add_4_25 (.A0(r_t3[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16358), .COUT(n16359), .S0(n133[23]), .S1(n133[24]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_25.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_25.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_25.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_25.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(integrator_2_en), .B(n19260), .C(seq_SM[0]), 
         .D(n6346), .Z(n13)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam i1_3_lut_4_lut.init = 16'hff80;
    LUT4 i2_3_lut_4_lut (.A(integrator_2_en), .B(n19260), .C(r_mode[1]), 
         .D(n18588), .Z(n17889)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam i2_3_lut_4_lut.init = 16'h0800;
    CCU2D r_t3_2416_add_4_23 (.A0(r_t3[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16357), .COUT(n16358), .S0(n133[21]), .S1(n133[22]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_23.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_23.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_23.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_23.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(integrator_2_en), .B(n19260), .C(r_mode[0]), 
         .D(r_mode[1]), .Z(n7)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(24[7] 186[4])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    CCU2D r_t3_2416_add_4_21 (.A0(r_t3[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16356), .COUT(n16357), .S0(n133[19]), .S1(n133[20]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_21.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_21.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_21.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_21.INJECT1_1 = "NO";
    LUT4 i12761_4_lut (.A(n18867), .B(n5), .C(n6346), .D(seq_SM[0]), 
         .Z(n10733)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam i12761_4_lut.init = 16'haaba;
    FD1P3IX r_t2_2418__i0 (.D(n133_adj_1510[0]), .SP(clk_c_enable_721), 
            .CD(n10733), .CK(clk_c), .Q(r_t2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(164[41:52])
    defparam r_t2_2418__i0.GSR = "DISABLED";
    FD1P3IX r_t3_2416__i0 (.D(n133[0]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i0.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i0 (.D(n133_adj_1509[0]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i0.GSR = "DISABLED";
    LUT4 i12771_4_lut (.A(n7), .B(n18822), .C(n13), .D(seq_SM[1]), .Z(clk_c_enable_424)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i12771_4_lut.init = 16'h0511;
    LUT4 i12534_4_lut (.A(n6917), .B(n13432), .C(n18867), .D(n18865), 
         .Z(clk_c_enable_327)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D)))) */ ;
    defparam i12534_4_lut.init = 16'hc0c4;
    CCU2D r_t3_2416_add_4_19 (.A0(r_t3[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16355), .COUT(n16356), .S0(n133[17]), .S1(n133[18]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_19.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_19.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_19.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_34 (.A(n18867), .B(seq_SM[0]), .C(n18846), .D(n6311), 
         .Z(n10702)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_34.init = 16'haeaa;
    CCU2D r_t3_2416_add_4_17 (.A0(r_t3[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16354), .COUT(n16355), .S0(n133[15]), .S1(n133[16]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_17.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_17.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_17.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_17.INJECT1_1 = "NO";
    FD1P3IX r_t1_2414__i7 (.D(n133_adj_1509[7]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i7.GSR = "DISABLED";
    CCU2D r_t3_2416_add_4_15 (.A0(r_t3[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16353), .COUT(n16354), .S0(n133[13]), .S1(n133[14]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_15.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_15.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_15.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_15.INJECT1_1 = "NO";
    FD1P3IX r_t3_2416__i12 (.D(n133[12]), .SP(clk_c_enable_779), .CD(n10702), 
            .CK(clk_c), .Q(r_t3[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416__i12.GSR = "DISABLED";
    FD1P3IX r_t1_2414__i1 (.D(n133_adj_1509[1]), .SP(clk_c_enable_789), 
            .CD(n10353), .CK(clk_c), .Q(r_t1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(142[41:52])
    defparam r_t1_2414__i1.GSR = "DISABLED";
    CCU2D r_t3_2416_add_4_13 (.A0(r_t3[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_t3[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16352), .COUT(n16353), .S0(n133[11]), .S1(n133[12]));   // c:/users/user/documents/github/quantaser_lattice/qss013_library/integrator_seq.v(153[41:52])
    defparam r_t3_2416_add_4_13.INIT0 = 16'hfaaa;
    defparam r_t3_2416_add_4_13.INIT1 = 16'hfaaa;
    defparam r_t3_2416_add_4_13.INJECT1_0 = "NO";
    defparam r_t3_2416_add_4_13.INJECT1_1 = "NO";
    
endmodule
