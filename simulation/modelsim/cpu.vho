-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "07/02/2018 16:03:11"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu IS
    PORT (
	rst : IN std_logic;
	start : IN std_logic;
	clk : IN std_logic;
	display_hex0 : OUT std_logic_vector(6 DOWNTO 0);
	display_hex1 : OUT std_logic_vector(6 DOWNTO 0);
	display_hex2 : OUT std_logic_vector(6 DOWNTO 0);
	display_hex3 : OUT std_logic_vector(6 DOWNTO 0);
	conversor_hex4 : OUT std_logic_vector(6 DOWNTO 0);
	conversor_hex5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- display_hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conversor_hex5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_display_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_conversor_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_conversor_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|state.s3~0_combout\ : std_logic;
SIGNAL \controller|Mux4~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux19~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux19~1_combout\ : std_logic;
SIGNAL \controller|enable_RF~regout\ : std_logic;
SIGNAL \datapath|rf1|Mux18~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux18~1_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux17~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux17~1_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux16~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux16~1_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux4~0_combout\ : std_logic;
SIGNAL \controller|state.done~2_combout\ : std_logic;
SIGNAL \controller|select_RF[0]~4_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux4~1_combout\ : std_logic;
SIGNAL \datapath|rf1|out0[3]~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux4~2_combout\ : std_logic;
SIGNAL \controller|enable_RF~0_combout\ : std_logic;
SIGNAL \controller|enable_RF~1_combout\ : std_logic;
SIGNAL \datapath|Mux12~0_combout\ : std_logic;
SIGNAL \controller|select_RF[0]~5_combout\ : std_logic;
SIGNAL \datapath|entrada_rf[0]~feeder_combout\ : std_logic;
SIGNAL \controller|select_RF[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|acc1|output[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out1[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out3[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out1[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out3[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out1[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out3[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out1[3]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \controller|Add0~0_combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \controller|state.s0~0_combout\ : std_logic;
SIGNAL \controller|state.s0~regout\ : std_logic;
SIGNAL \controller|state.s3~1_combout\ : std_logic;
SIGNAL \controller|state.s3~regout\ : std_logic;
SIGNAL \controller|Add0~1\ : std_logic;
SIGNAL \controller|Add0~2_combout\ : std_logic;
SIGNAL \controller|Add0~4_combout\ : std_logic;
SIGNAL \controller|Mux1~0_combout\ : std_logic;
SIGNAL \controller|OPCODE[3]~0_combout\ : std_logic;
SIGNAL \controller|state.done~0_combout\ : std_logic;
SIGNAL \controller|state.done~1_combout\ : std_logic;
SIGNAL \controller|state.done~regout\ : std_logic;
SIGNAL \controller|PC[2]~0_combout\ : std_logic;
SIGNAL \controller|Add0~3\ : std_logic;
SIGNAL \controller|Add0~6_combout\ : std_logic;
SIGNAL \controller|Add0~8_combout\ : std_logic;
SIGNAL \controller|Mux0~0_combout\ : std_logic;
SIGNAL \controller|Selector37~0_combout\ : std_logic;
SIGNAL \controller|Selector37~1_combout\ : std_logic;
SIGNAL \controller|state.s1~regout\ : std_logic;
SIGNAL \controller|state.s2~feeder_combout\ : std_logic;
SIGNAL \controller|state.s2~regout\ : std_logic;
SIGNAL \controller|Add0~5_combout\ : std_logic;
SIGNAL \controller|Mux2~0_combout\ : std_logic;
SIGNAL \controller|select_OP[0]~1_combout\ : std_logic;
SIGNAL \controller|Mux8~0_combout\ : std_logic;
SIGNAL \controller|select_OP[0]~0_combout\ : std_logic;
SIGNAL \d1|Mux19~0_combout\ : std_logic;
SIGNAL \display_hex0[0]~reg0_regout\ : std_logic;
SIGNAL \d1|Mux19~1_combout\ : std_logic;
SIGNAL \display_hex0[1]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex0[1]~reg0_regout\ : std_logic;
SIGNAL \display_hex0[2]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex0[2]~reg0_regout\ : std_logic;
SIGNAL \display_hex0[3]~reg0_regout\ : std_logic;
SIGNAL \display_hex0[4]~reg0_regout\ : std_logic;
SIGNAL \display_hex0[5]~reg0_regout\ : std_logic;
SIGNAL \display_hex1[0]~reg0_regout\ : std_logic;
SIGNAL \display_hex1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex1[1]~reg0_regout\ : std_logic;
SIGNAL \display_hex1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex1[2]~reg0_regout\ : std_logic;
SIGNAL \display_hex1[3]~reg0_regout\ : std_logic;
SIGNAL \display_hex1[4]~reg0_regout\ : std_logic;
SIGNAL \display_hex1[5]~reg0_regout\ : std_logic;
SIGNAL \display_hex2[0]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex2[0]~reg0_regout\ : std_logic;
SIGNAL \display_hex2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex2[1]~reg0_regout\ : std_logic;
SIGNAL \display_hex2[2]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex2[2]~reg0_regout\ : std_logic;
SIGNAL \display_hex2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex2[3]~reg0_regout\ : std_logic;
SIGNAL \display_hex2[4]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex2[4]~reg0_regout\ : std_logic;
SIGNAL \display_hex2[5]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex2[5]~reg0_regout\ : std_logic;
SIGNAL \display_hex3[0]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex3[0]~reg0_regout\ : std_logic;
SIGNAL \display_hex3[1]~reg0feeder_combout\ : std_logic;
SIGNAL \display_hex3[1]~reg0_regout\ : std_logic;
SIGNAL \display_hex3[2]~reg0_regout\ : std_logic;
SIGNAL \display_hex3[3]~reg0_regout\ : std_logic;
SIGNAL \display_hex3[4]~reg0_regout\ : std_logic;
SIGNAL \display_hex3[5]~reg0_regout\ : std_logic;
SIGNAL \datapath|entrada_acc[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|entrada_acc[3]~0_combout\ : std_logic;
SIGNAL \datapath|acc1|output[2]~feeder_combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \datapath|Mux5~0_combout\ : std_logic;
SIGNAL \datapath|alu1|output[3]~0_combout\ : std_logic;
SIGNAL \datapath|entrada1_alu[3]~0_combout\ : std_logic;
SIGNAL \controller|Selector35~0_combout\ : std_logic;
SIGNAL \controller|Selector32~0_combout\ : std_logic;
SIGNAL \controller|Selector32~1_combout\ : std_logic;
SIGNAL \datapath|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux1~0_combout\ : std_logic;
SIGNAL \controller|Mux5~0_combout\ : std_logic;
SIGNAL \controller|Selector34~0_combout\ : std_logic;
SIGNAL \datapath|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|Mux3~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~1\ : std_logic;
SIGNAL \datapath|alu1|Add0~3\ : std_logic;
SIGNAL \datapath|alu1|Add0~4_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux1~1_combout\ : std_logic;
SIGNAL \datapath|alu1|output[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|entrada2_alu[2]~_wirecell_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~1_combout\ : std_logic;
SIGNAL \datapath|alu1|output[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|Mux7~0_combout\ : std_logic;
SIGNAL \datapath|entrada2_alu[0]~_wirecell_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~2_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux2~1_combout\ : std_logic;
SIGNAL \datapath|alu1|output[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|entrada_acc[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|Mux6~0_combout\ : std_logic;
SIGNAL \datapath|entrada2_alu[1]~_wirecell_combout\ : std_logic;
SIGNAL \c1|Mux10~0_combout\ : std_logic;
SIGNAL \conversor_hex4[0]~reg0_regout\ : std_logic;
SIGNAL \datapath|acc1|output[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|Mux4~0_combout\ : std_logic;
SIGNAL \controller|Mux3~0_combout\ : std_logic;
SIGNAL \controller|Selector32~2_combout\ : std_logic;
SIGNAL \datapath|Mux0~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~5\ : std_logic;
SIGNAL \datapath|alu1|Add0~6_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~1_combout\ : std_logic;
SIGNAL \datapath|alu1|output[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|entrada2_alu[3]~_wirecell_combout\ : std_logic;
SIGNAL \c1|Mux9~0_combout\ : std_logic;
SIGNAL \conversor_hex4[1]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux8~0_combout\ : std_logic;
SIGNAL \conversor_hex4[2]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux7~0_combout\ : std_logic;
SIGNAL \conversor_hex4[3]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux6~0_combout\ : std_logic;
SIGNAL \conversor_hex4[4]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux5~0_combout\ : std_logic;
SIGNAL \conversor_hex4[5]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux4~0_combout\ : std_logic;
SIGNAL \conversor_hex4[6]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux3~0_combout\ : std_logic;
SIGNAL \conversor_hex5[0]~reg0feeder_combout\ : std_logic;
SIGNAL \conversor_hex5[0]~reg0_regout\ : std_logic;
SIGNAL \conversor_hex5[3]~reg0feeder_combout\ : std_logic;
SIGNAL \conversor_hex5[3]~reg0_regout\ : std_logic;
SIGNAL \conversor_hex5[4]~reg0feeder_combout\ : std_logic;
SIGNAL \conversor_hex5[4]~reg0_regout\ : std_logic;
SIGNAL \conversor_hex5[5]~reg0_regout\ : std_logic;
SIGNAL \datapath|entrada_acc\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|entrada2_alu\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|entrada1_alu\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|alu1|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|rf1|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|rf1|out3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|rf1|out2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|rf1|out1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|rf1|out0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|acc1|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \controller|select_OP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|imm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|OPCODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|select_RF\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \controller|ADDRESS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|entrada_rf\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_conversor_hex4[6]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_start <= start;
ww_clk <= clk;
display_hex0 <= ww_display_hex0;
display_hex1 <= ww_display_hex1;
display_hex2 <= ww_display_hex2;
display_hex3 <= ww_display_hex3;
conversor_hex4 <= ww_conversor_hex4;
conversor_hex5 <= ww_conversor_hex5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_conversor_hex4[6]~reg0_regout\ <= NOT \conversor_hex4[6]~reg0_regout\;
\ALT_INV_rst~combout\ <= NOT \rst~combout\;

-- Location: LCCOMB_X63_Y25_N30
\controller|state.s3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s3~0_combout\ = (\controller|state.s3~regout\ & ((\rst~combout\) # ((\controller|OPCODE\(1) & \controller|OPCODE\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(1),
	datab => \rst~combout\,
	datac => \controller|OPCODE\(3),
	datad => \controller|state.s3~regout\,
	combout => \controller|state.s3~0_combout\);

-- Location: LCFF_X64_Y28_N9
\datapath|acc1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|acc1|output[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(0));

-- Location: LCFF_X62_Y25_N25
\controller|ADDRESS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Mux4~0_combout\,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(0));

-- Location: LCFF_X63_Y27_N9
\datapath|rf1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|rf1|Mux19~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|enable_RF~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(0));

-- Location: LCFF_X63_Y27_N27
\datapath|rf1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|rf1|Mux18~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|enable_RF~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(1));

-- Location: LCFF_X63_Y27_N29
\datapath|rf1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|rf1|Mux17~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|enable_RF~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(2));

-- Location: LCFF_X63_Y27_N19
\datapath|rf1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|rf1|Mux16~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|enable_RF~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(3));

-- Location: LCFF_X64_Y26_N5
\datapath|entrada_acc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|alu1|output\(0),
	sload => VCC,
	ena => \datapath|entrada_acc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_acc\(0));

-- Location: LCCOMB_X62_Y25_N24
\controller|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux4~0_combout\ = (!\controller|PC\(1) & (\controller|PC\(0) $ (\controller|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datac => \controller|PC\(1),
	datad => \controller|PC\(2),
	combout => \controller|Mux4~0_combout\);

-- Location: LCFF_X62_Y27_N31
\datapath|rf1|out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|rf1|out1[0]~feeder_combout\,
	ena => \datapath|rf1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(0));

-- Location: LCFF_X64_Y25_N5
\controller|select_RF[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|select_RF[0]~feeder_combout\,
	ena => \controller|select_RF[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|select_RF\(0));

-- Location: LCFF_X64_Y27_N13
\datapath|rf1|out2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|entrada_rf\(0),
	sload => VCC,
	ena => \datapath|rf1|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(0));

-- Location: LCFF_X64_Y25_N27
\controller|select_RF[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \controller|ADDRESS\(3),
	sload => VCC,
	ena => \controller|select_RF[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|select_RF\(1));

-- Location: LCFF_X64_Y27_N3
\datapath|rf1|out0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|entrada_rf\(0),
	sload => VCC,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(0));

-- Location: LCCOMB_X64_Y27_N2
\datapath|rf1|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux19~0_combout\ = (\controller|select_RF\(0) & (((\controller|select_RF\(1))))) # (!\controller|select_RF\(0) & ((\controller|select_RF\(1) & (\datapath|rf1|out2\(0))) # (!\controller|select_RF\(1) & ((\datapath|rf1|out0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out2\(0),
	datab => \controller|select_RF\(0),
	datac => \datapath|rf1|out0\(0),
	datad => \controller|select_RF\(1),
	combout => \datapath|rf1|Mux19~0_combout\);

-- Location: LCFF_X64_Y28_N7
\datapath|rf1|out3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|rf1|out3[0]~feeder_combout\,
	ena => \datapath|rf1|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(0));

-- Location: LCCOMB_X63_Y27_N8
\datapath|rf1|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux19~1_combout\ = (\controller|select_RF\(0) & ((\datapath|rf1|Mux19~0_combout\ & ((\datapath|rf1|out3\(0)))) # (!\datapath|rf1|Mux19~0_combout\ & (\datapath|rf1|out1\(0))))) # (!\controller|select_RF\(0) & 
-- (((\datapath|rf1|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out1\(0),
	datab => \datapath|rf1|out3\(0),
	datac => \controller|select_RF\(0),
	datad => \datapath|rf1|Mux19~0_combout\,
	combout => \datapath|rf1|Mux19~1_combout\);

-- Location: LCFF_X63_Y25_N23
\controller|enable_RF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|enable_RF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|enable_RF~regout\);

-- Location: LCFF_X64_Y27_N5
\datapath|rf1|out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|entrada_rf\(1),
	sload => VCC,
	ena => \datapath|rf1|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(1));

-- Location: LCFF_X62_Y27_N17
\datapath|rf1|out1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|rf1|out1[1]~feeder_combout\,
	ena => \datapath|rf1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(1));

-- Location: LCFF_X64_Y27_N23
\datapath|rf1|out0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|entrada_rf\(1),
	sload => VCC,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(1));

-- Location: LCCOMB_X64_Y27_N22
\datapath|rf1|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux18~0_combout\ = (\controller|select_RF\(0) & ((\datapath|rf1|out1\(1)) # ((\controller|select_RF\(1))))) # (!\controller|select_RF\(0) & (((\datapath|rf1|out0\(1) & !\controller|select_RF\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out1\(1),
	datab => \controller|select_RF\(0),
	datac => \datapath|rf1|out0\(1),
	datad => \controller|select_RF\(1),
	combout => \datapath|rf1|Mux18~0_combout\);

-- Location: LCFF_X64_Y28_N29
\datapath|rf1|out3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|rf1|out3[1]~feeder_combout\,
	ena => \datapath|rf1|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(1));

-- Location: LCCOMB_X63_Y27_N26
\datapath|rf1|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux18~1_combout\ = (\controller|select_RF\(1) & ((\datapath|rf1|Mux18~0_combout\ & ((\datapath|rf1|out3\(1)))) # (!\datapath|rf1|Mux18~0_combout\ & (\datapath|rf1|out2\(1))))) # (!\controller|select_RF\(1) & 
-- (((\datapath|rf1|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out2\(1),
	datab => \controller|select_RF\(1),
	datac => \datapath|rf1|out3\(1),
	datad => \datapath|rf1|Mux18~0_combout\,
	combout => \datapath|rf1|Mux18~1_combout\);

-- Location: LCFF_X62_Y27_N11
\datapath|rf1|out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|rf1|out1[2]~feeder_combout\,
	ena => \datapath|rf1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(2));

-- Location: LCFF_X64_Y27_N21
\datapath|rf1|out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|entrada_rf\(2),
	sload => VCC,
	ena => \datapath|rf1|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(2));

-- Location: LCFF_X64_Y27_N27
\datapath|rf1|out0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|entrada_rf\(2),
	sload => VCC,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(2));

-- Location: LCCOMB_X64_Y27_N26
\datapath|rf1|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux17~0_combout\ = (\controller|select_RF\(0) & (((\controller|select_RF\(1))))) # (!\controller|select_RF\(0) & ((\controller|select_RF\(1) & (\datapath|rf1|out2\(2))) # (!\controller|select_RF\(1) & ((\datapath|rf1|out0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out2\(2),
	datab => \controller|select_RF\(0),
	datac => \datapath|rf1|out0\(2),
	datad => \controller|select_RF\(1),
	combout => \datapath|rf1|Mux17~0_combout\);

-- Location: LCFF_X64_Y28_N27
\datapath|rf1|out3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|rf1|out3[2]~feeder_combout\,
	ena => \datapath|rf1|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(2));

-- Location: LCCOMB_X63_Y27_N28
\datapath|rf1|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux17~1_combout\ = (\controller|select_RF\(0) & ((\datapath|rf1|Mux17~0_combout\ & ((\datapath|rf1|out3\(2)))) # (!\datapath|rf1|Mux17~0_combout\ & (\datapath|rf1|out1\(2))))) # (!\controller|select_RF\(0) & 
-- (((\datapath|rf1|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out1\(2),
	datab => \controller|select_RF\(0),
	datac => \datapath|rf1|Mux17~0_combout\,
	datad => \datapath|rf1|out3\(2),
	combout => \datapath|rf1|Mux17~1_combout\);

-- Location: LCFF_X64_Y27_N25
\datapath|rf1|out2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|entrada_rf\(3),
	sload => VCC,
	ena => \datapath|rf1|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(3));

-- Location: LCFF_X62_Y27_N29
\datapath|rf1|out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|rf1|out1[3]~feeder_combout\,
	ena => \datapath|rf1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(3));

-- Location: LCFF_X64_Y27_N7
\datapath|rf1|out0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|entrada_rf\(3),
	sload => VCC,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(3));

-- Location: LCCOMB_X64_Y27_N6
\datapath|rf1|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux16~0_combout\ = (\controller|select_RF\(0) & ((\datapath|rf1|out1\(3)) # ((\controller|select_RF\(1))))) # (!\controller|select_RF\(0) & (((\datapath|rf1|out0\(3) & !\controller|select_RF\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out1\(3),
	datab => \controller|select_RF\(0),
	datac => \datapath|rf1|out0\(3),
	datad => \controller|select_RF\(1),
	combout => \datapath|rf1|Mux16~0_combout\);

-- Location: LCFF_X64_Y28_N5
\datapath|rf1|out3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|entrada_rf\(3),
	sload => VCC,
	ena => \datapath|rf1|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(3));

-- Location: LCCOMB_X63_Y27_N18
\datapath|rf1|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux16~1_combout\ = (\controller|select_RF\(1) & ((\datapath|rf1|Mux16~0_combout\ & (\datapath|rf1|out3\(3))) # (!\datapath|rf1|Mux16~0_combout\ & ((\datapath|rf1|out2\(3)))))) # (!\controller|select_RF\(1) & 
-- (((\datapath|rf1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out3\(3),
	datab => \controller|select_RF\(1),
	datac => \datapath|rf1|out2\(3),
	datad => \datapath|rf1|Mux16~0_combout\,
	combout => \datapath|rf1|Mux16~1_combout\);

-- Location: LCFF_X63_Y27_N5
\datapath|entrada_rf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|entrada_rf[0]~feeder_combout\,
	ena => \datapath|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_rf\(0));

-- Location: LCCOMB_X63_Y27_N14
\datapath|rf1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux4~0_combout\ = (!\rst~combout\ & (!\controller|select_RF\(1) & (\controller|select_RF\(0) & !\controller|enable_RF~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|select_RF\(1),
	datac => \controller|select_RF\(0),
	datad => \controller|enable_RF~regout\,
	combout => \datapath|rf1|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y25_N14
\controller|state.done~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.done~2_combout\ = (!\rst~combout\ & \controller|state.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \controller|state.s3~regout\,
	combout => \controller|state.done~2_combout\);

-- Location: LCCOMB_X63_Y25_N28
\controller|select_RF[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|select_RF[0]~4_combout\ = (!\controller|OPCODE\(3) & ((\controller|OPCODE\(0)) # (!\controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datac => \controller|OPCODE\(3),
	datad => \controller|OPCODE\(1),
	combout => \controller|select_RF[0]~4_combout\);

-- Location: LCCOMB_X64_Y27_N0
\datapath|rf1|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux4~1_combout\ = (!\rst~combout\ & (\controller|select_RF\(1) & (!\controller|select_RF\(0) & !\controller|enable_RF~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|select_RF\(1),
	datac => \controller|select_RF\(0),
	datad => \controller|enable_RF~regout\,
	combout => \datapath|rf1|Mux4~1_combout\);

-- Location: LCCOMB_X64_Y27_N30
\datapath|rf1|out0[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out0[3]~0_combout\ = (!\rst~combout\ & (!\controller|select_RF\(0) & (!\controller|select_RF\(1) & !\controller|enable_RF~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|select_RF\(0),
	datac => \controller|select_RF\(1),
	datad => \controller|enable_RF~regout\,
	combout => \datapath|rf1|out0[3]~0_combout\);

-- Location: LCCOMB_X64_Y25_N24
\datapath|rf1|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux4~2_combout\ = (!\rst~combout\ & (\controller|select_RF\(1) & (\controller|select_RF\(0) & !\controller|enable_RF~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|select_RF\(1),
	datac => \controller|select_RF\(0),
	datad => \controller|enable_RF~regout\,
	combout => \datapath|rf1|Mux4~2_combout\);

-- Location: LCCOMB_X63_Y25_N26
\controller|enable_RF~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|enable_RF~0_combout\ = ((!\controller|OPCODE\(1) & !\controller|OPCODE\(0))) # (!\controller|OPCODE\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|OPCODE\(1),
	datac => \controller|OPCODE\(3),
	datad => \controller|OPCODE\(0),
	combout => \controller|enable_RF~0_combout\);

-- Location: LCCOMB_X63_Y25_N22
\controller|enable_RF~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|enable_RF~1_combout\ = (\controller|state.done~2_combout\ & ((\controller|enable_RF~0_combout\ & ((\controller|select_RF[0]~4_combout\))) # (!\controller|enable_RF~0_combout\ & (\controller|enable_RF~regout\)))) # 
-- (!\controller|state.done~2_combout\ & (((\controller|enable_RF~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.done~2_combout\,
	datab => \controller|enable_RF~0_combout\,
	datac => \controller|enable_RF~regout\,
	datad => \controller|select_RF[0]~4_combout\,
	combout => \controller|enable_RF~1_combout\);

-- Location: LCFF_X63_Y27_N21
\datapath|entrada_rf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|alu1|output\(1),
	sload => VCC,
	ena => \datapath|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_rf\(1));

-- Location: LCFF_X63_Y27_N31
\datapath|entrada_rf[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|alu1|output\(2),
	sload => VCC,
	ena => \datapath|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_rf\(2));

-- Location: LCFF_X63_Y27_N25
\datapath|entrada_rf[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|alu1|output\(3),
	sload => VCC,
	ena => \datapath|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_rf\(3));

-- Location: LCCOMB_X63_Y27_N24
\datapath|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux12~0_combout\ = (!\controller|select_OP\(3) & (!\controller|select_OP\(1) & \controller|select_OP\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|select_OP\(3),
	datab => \controller|select_OP\(1),
	datad => \controller|select_OP\(0),
	combout => \datapath|Mux12~0_combout\);

-- Location: LCCOMB_X64_Y25_N14
\controller|select_RF[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|select_RF[0]~5_combout\ = (\controller|state.s3~regout\ & (!\rst~combout\ & \controller|select_RF[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s3~regout\,
	datac => \rst~combout\,
	datad => \controller|select_RF[0]~4_combout\,
	combout => \controller|select_RF[0]~5_combout\);

-- Location: LCCOMB_X63_Y27_N4
\datapath|entrada_rf[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada_rf[0]~feeder_combout\ = \datapath|alu1|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(0),
	combout => \datapath|entrada_rf[0]~feeder_combout\);

-- Location: LCCOMB_X64_Y25_N4
\controller|select_RF[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|select_RF[0]~feeder_combout\ = \controller|ADDRESS\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|ADDRESS\(0),
	combout => \controller|select_RF[0]~feeder_combout\);

-- Location: LCCOMB_X64_Y28_N8
\datapath|acc1|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output[0]~feeder_combout\ = \datapath|entrada_acc\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_acc\(0),
	combout => \datapath|acc1|output[0]~feeder_combout\);

-- Location: LCCOMB_X62_Y27_N30
\datapath|rf1|out1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out1[0]~feeder_combout\ = \datapath|entrada_rf\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(0),
	combout => \datapath|rf1|out1[0]~feeder_combout\);

-- Location: LCCOMB_X64_Y28_N6
\datapath|rf1|out3[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out3[0]~feeder_combout\ = \datapath|entrada_rf\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(0),
	combout => \datapath|rf1|out3[0]~feeder_combout\);

-- Location: LCCOMB_X62_Y27_N16
\datapath|rf1|out1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out1[1]~feeder_combout\ = \datapath|entrada_rf\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(1),
	combout => \datapath|rf1|out1[1]~feeder_combout\);

-- Location: LCCOMB_X64_Y28_N28
\datapath|rf1|out3[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out3[1]~feeder_combout\ = \datapath|entrada_rf\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(1),
	combout => \datapath|rf1|out3[1]~feeder_combout\);

-- Location: LCCOMB_X62_Y27_N10
\datapath|rf1|out1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out1[2]~feeder_combout\ = \datapath|entrada_rf\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(2),
	combout => \datapath|rf1|out1[2]~feeder_combout\);

-- Location: LCCOMB_X64_Y28_N26
\datapath|rf1|out3[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out3[2]~feeder_combout\ = \datapath|entrada_rf\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(2),
	combout => \datapath|rf1|out3[2]~feeder_combout\);

-- Location: LCCOMB_X62_Y27_N28
\datapath|rf1|out1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out1[3]~feeder_combout\ = \datapath|entrada_rf\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(3),
	combout => \datapath|rf1|out1[3]~feeder_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LCCOMB_X62_Y25_N18
\controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~0_combout\ = \controller|PC\(0) $ (GND)
-- \controller|Add0~1\ = CARRY(!\controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datad => VCC,
	combout => \controller|Add0~0_combout\,
	cout => \controller|Add0~1\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCCOMB_X64_Y23_N2
\controller|state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s0~0_combout\ = (\controller|state.s0~regout\) # ((\start~combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~combout\,
	datac => \controller|state.s0~regout\,
	datad => \rst~combout\,
	combout => \controller|state.s0~0_combout\);

-- Location: LCFF_X64_Y23_N3
\controller|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|state.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s0~regout\);

-- Location: LCCOMB_X63_Y25_N2
\controller|state.s3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s3~1_combout\ = (\controller|state.s3~0_combout\) # ((\controller|state.s2~regout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s3~0_combout\,
	datab => \controller|state.s2~regout\,
	datac => \rst~combout\,
	combout => \controller|state.s3~1_combout\);

-- Location: LCFF_X63_Y25_N3
\controller|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|state.s3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s3~regout\);

-- Location: LCCOMB_X62_Y25_N20
\controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~2_combout\ = (\controller|PC\(1) & (!\controller|Add0~1\)) # (!\controller|PC\(1) & ((\controller|Add0~1\) # (GND)))
-- \controller|Add0~3\ = CARRY((!\controller|Add0~1\) # (!\controller|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(1),
	datad => VCC,
	cin => \controller|Add0~1\,
	combout => \controller|Add0~2_combout\,
	cout => \controller|Add0~3\);

-- Location: LCCOMB_X62_Y25_N14
\controller|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~4_combout\ = (\controller|Add0~2_combout\ & \controller|state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Add0~2_combout\,
	datad => \controller|state.s2~regout\,
	combout => \controller|Add0~4_combout\);

-- Location: LCCOMB_X62_Y25_N8
\controller|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux1~0_combout\ = \controller|PC\(1) $ (\controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|PC\(1),
	datad => \controller|PC\(0),
	combout => \controller|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y25_N10
\controller|OPCODE[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|OPCODE[3]~0_combout\ = (!\rst~combout\ & \controller|state.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|OPCODE[3]~0_combout\);

-- Location: LCFF_X62_Y25_N9
\controller|OPCODE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Mux1~0_combout\,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(1));

-- Location: LCCOMB_X63_Y25_N0
\controller|state.done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.done~0_combout\ = (\controller|OPCODE\(3) & (!\rst~combout\ & (\controller|state.s3~regout\ & !\controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(3),
	datab => \rst~combout\,
	datac => \controller|state.s3~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|state.done~0_combout\);

-- Location: LCCOMB_X63_Y25_N4
\controller|state.done~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.done~1_combout\ = (\controller|state.done~regout\) # ((\controller|OPCODE\(0) & \controller|state.done~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datac => \controller|state.done~regout\,
	datad => \controller|state.done~0_combout\,
	combout => \controller|state.done~1_combout\);

-- Location: LCFF_X63_Y25_N5
\controller|state.done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|state.done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.done~regout\);

-- Location: LCCOMB_X63_Y25_N6
\controller|PC[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|PC[2]~0_combout\ = (!\rst~combout\ & (!\controller|state.s3~regout\ & (!\controller|state.done~regout\ & !\controller|state.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|state.s3~regout\,
	datac => \controller|state.done~regout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|PC[2]~0_combout\);

-- Location: LCFF_X62_Y25_N15
\controller|PC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Add0~4_combout\,
	ena => \controller|PC[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(1));

-- Location: LCCOMB_X62_Y25_N22
\controller|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~6_combout\ = \controller|Add0~3\ $ (!\controller|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controller|PC\(2),
	cin => \controller|Add0~3\,
	combout => \controller|Add0~6_combout\);

-- Location: LCCOMB_X62_Y25_N2
\controller|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~8_combout\ = (\controller|state.s2~regout\ & \controller|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datad => \controller|Add0~6_combout\,
	combout => \controller|Add0~8_combout\);

-- Location: LCFF_X62_Y25_N3
\controller|PC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Add0~8_combout\,
	ena => \controller|PC[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(2));

-- Location: LCCOMB_X62_Y25_N30
\controller|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux0~0_combout\ = (\controller|PC\(0) & (\controller|PC\(1) & !\controller|PC\(2))) # (!\controller|PC\(0) & (!\controller|PC\(1) & \controller|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datac => \controller|PC\(1),
	datad => \controller|PC\(2),
	combout => \controller|Mux0~0_combout\);

-- Location: LCFF_X62_Y25_N31
\controller|OPCODE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Mux0~0_combout\,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(3));

-- Location: LCCOMB_X63_Y25_N20
\controller|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~0_combout\ = (\controller|state.s3~regout\ & (((!\controller|OPCODE\(0) & !\controller|OPCODE\(1))) # (!\controller|OPCODE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datab => \controller|state.s3~regout\,
	datac => \controller|OPCODE\(3),
	datad => \controller|OPCODE\(1),
	combout => \controller|Selector37~0_combout\);

-- Location: LCCOMB_X64_Y23_N6
\controller|Selector37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~1_combout\ = (\controller|Selector37~0_combout\) # ((!\controller|state.s0~regout\ & \start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s0~regout\,
	datac => \controller|Selector37~0_combout\,
	datad => \start~combout\,
	combout => \controller|Selector37~1_combout\);

-- Location: LCFF_X64_Y23_N7
\controller|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector37~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s1~regout\);

-- Location: LCCOMB_X64_Y23_N24
\controller|state.s2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s2~feeder_combout\ = \controller|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|state.s1~regout\,
	combout => \controller|state.s2~feeder_combout\);

-- Location: LCFF_X64_Y23_N25
\controller|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|state.s2~feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s2~regout\);

-- Location: LCCOMB_X62_Y25_N28
\controller|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~5_combout\ = (!\controller|state.s2~regout\) # (!\controller|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Add0~0_combout\,
	datad => \controller|state.s2~regout\,
	combout => \controller|Add0~5_combout\);

-- Location: LCFF_X62_Y25_N29
\controller|PC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Add0~5_combout\,
	ena => \controller|PC[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(0));

-- Location: LCCOMB_X62_Y25_N0
\controller|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux2~0_combout\ = (!\controller|PC\(1) & ((\controller|PC\(2)) # (!\controller|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datac => \controller|PC\(1),
	datad => \controller|PC\(2),
	combout => \controller|Mux2~0_combout\);

-- Location: LCFF_X62_Y25_N1
\controller|OPCODE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Mux2~0_combout\,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(0));

-- Location: LCCOMB_X63_Y25_N8
\controller|select_OP[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|select_OP[0]~1_combout\ = (\controller|select_OP[0]~0_combout\ & ((\controller|OPCODE\(0)))) # (!\controller|select_OP[0]~0_combout\ & (\controller|select_OP\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|select_OP[0]~0_combout\,
	datac => \controller|select_OP\(0),
	datad => \controller|OPCODE\(0),
	combout => \controller|select_OP[0]~1_combout\);

-- Location: LCFF_X63_Y25_N9
\controller|select_OP[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|select_OP[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|select_OP\(0));

-- Location: LCCOMB_X63_Y25_N16
\controller|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux8~0_combout\ = (!\controller|OPCODE\(3) & \controller|OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|OPCODE\(3),
	datad => \controller|OPCODE\(1),
	combout => \controller|Mux8~0_combout\);

-- Location: LCCOMB_X63_Y25_N24
\controller|select_OP[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|select_OP[0]~0_combout\ = (!\rst~combout\ & (\controller|state.s3~regout\ & ((!\controller|OPCODE\(1)) # (!\controller|OPCODE\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(3),
	datab => \rst~combout\,
	datac => \controller|state.s3~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|select_OP[0]~0_combout\);

-- Location: LCFF_X63_Y25_N17
\controller|select_OP[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Mux8~0_combout\,
	ena => \controller|select_OP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|select_OP\(1));

-- Location: LCFF_X63_Y25_N31
\controller|select_OP[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \controller|OPCODE\(3),
	sload => VCC,
	ena => \controller|select_OP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|select_OP\(3));

-- Location: LCCOMB_X64_Y24_N14
\d1|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|Mux19~0_combout\ = (\controller|select_OP\(0)) # ((\controller|select_OP\(1) & \controller|select_OP\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|select_OP\(0),
	datac => \controller|select_OP\(1),
	datad => \controller|select_OP\(3),
	combout => \d1|Mux19~0_combout\);

-- Location: LCFF_X64_Y24_N29
\display_hex0[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \d1|Mux19~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex0[0]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N26
\d1|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|Mux19~1_combout\ = (\controller|select_OP\(1) & \controller|select_OP\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|select_OP\(1),
	datad => \controller|select_OP\(3),
	combout => \d1|Mux19~1_combout\);

-- Location: LCCOMB_X64_Y26_N24
\display_hex0[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex0[1]~reg0feeder_combout\ = \d1|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~1_combout\,
	combout => \display_hex0[1]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N25
\display_hex0[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex0[1]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex0[1]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N6
\display_hex0[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex0[2]~reg0feeder_combout\ = \d1|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~1_combout\,
	combout => \display_hex0[2]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N7
\display_hex0[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex0[2]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex0[2]~reg0_regout\);

-- Location: LCFF_X64_Y24_N15
\display_hex0[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \d1|Mux19~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex0[3]~reg0_regout\);

-- Location: LCFF_X64_Y24_N13
\display_hex0[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \d1|Mux19~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex0[4]~reg0_regout\);

-- Location: LCFF_X64_Y24_N19
\display_hex0[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \d1|Mux19~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex0[5]~reg0_regout\);

-- Location: LCFF_X64_Y24_N25
\display_hex1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \controller|select_OP\(1),
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex1[0]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N8
\display_hex1[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex1[1]~reg0feeder_combout\ = \d1|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~1_combout\,
	combout => \display_hex1[1]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N9
\display_hex1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex1[1]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex1[1]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N30
\display_hex1[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex1[2]~reg0feeder_combout\ = \d1|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~1_combout\,
	combout => \display_hex1[2]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N31
\display_hex1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex1[2]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex1[2]~reg0_regout\);

-- Location: LCFF_X64_Y24_N31
\display_hex1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \controller|select_OP\(1),
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex1[3]~reg0_regout\);

-- Location: LCFF_X64_Y24_N9
\display_hex1[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \controller|select_OP\(1),
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex1[4]~reg0_regout\);

-- Location: LCFF_X64_Y24_N3
\display_hex1[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \controller|select_OP\(1),
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex1[5]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N20
\display_hex2[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex2[0]~reg0feeder_combout\ = \d1|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~1_combout\,
	combout => \display_hex2[0]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N21
\display_hex2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex2[0]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex2[0]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N22
\display_hex2[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex2[1]~reg0feeder_combout\ = \d1|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~1_combout\,
	combout => \display_hex2[1]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N23
\display_hex2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex2[1]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex2[1]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N16
\display_hex2[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex2[2]~reg0feeder_combout\ = \d1|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~1_combout\,
	combout => \display_hex2[2]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N17
\display_hex2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex2[2]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex2[2]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N2
\display_hex2[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex2[3]~reg0feeder_combout\ = \d1|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~1_combout\,
	combout => \display_hex2[3]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N3
\display_hex2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex2[3]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex2[3]~reg0_regout\);

-- Location: LCCOMB_X64_Y23_N0
\display_hex2[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex2[4]~reg0feeder_combout\ = \d1|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~1_combout\,
	combout => \display_hex2[4]~reg0feeder_combout\);

-- Location: LCFF_X64_Y23_N1
\display_hex2[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex2[4]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex2[4]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N12
\display_hex2[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex2[5]~reg0feeder_combout\ = \d1|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~1_combout\,
	combout => \display_hex2[5]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N13
\display_hex2[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex2[5]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex2[5]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N14
\display_hex3[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex3[0]~reg0feeder_combout\ = \controller|select_OP\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|select_OP\(3),
	combout => \display_hex3[0]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N15
\display_hex3[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex3[0]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex3[0]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N28
\display_hex3[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_hex3[1]~reg0feeder_combout\ = \d1|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~1_combout\,
	combout => \display_hex3[1]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N29
\display_hex3[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \display_hex3[1]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex3[1]~reg0_regout\);

-- Location: LCFF_X64_Y26_N27
\display_hex3[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \d1|Mux19~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex3[2]~reg0_regout\);

-- Location: LCFF_X64_Y24_N17
\display_hex3[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \controller|select_OP\(3),
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex3[3]~reg0_regout\);

-- Location: LCFF_X64_Y24_N11
\display_hex3[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \controller|select_OP\(3),
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex3[4]~reg0_regout\);

-- Location: LCFF_X64_Y23_N23
\display_hex3[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \controller|select_OP\(3),
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_hex3[5]~reg0_regout\);

-- Location: LCCOMB_X64_Y26_N0
\datapath|entrada_acc[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada_acc[2]~feeder_combout\ = \datapath|alu1|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(2),
	combout => \datapath|entrada_acc[2]~feeder_combout\);

-- Location: LCCOMB_X64_Y26_N10
\datapath|entrada_acc[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada_acc[3]~0_combout\ = (\controller|select_OP\(1) & ((!\controller|select_OP\(3)))) # (!\controller|select_OP\(1) & (!\controller|select_OP\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|select_OP\(0),
	datab => \controller|select_OP\(1),
	datad => \controller|select_OP\(3),
	combout => \datapath|entrada_acc[3]~0_combout\);

-- Location: LCFF_X64_Y26_N1
\datapath|entrada_acc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|entrada_acc[2]~feeder_combout\,
	ena => \datapath|entrada_acc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_acc\(2));

-- Location: LCCOMB_X62_Y27_N12
\datapath|acc1|output[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output[2]~feeder_combout\ = \datapath|entrada_acc\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_acc\(2),
	combout => \datapath|acc1|output[2]~feeder_combout\);

-- Location: CLKCTRL_G6
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X62_Y27_N13
\datapath|acc1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|acc1|output[2]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(2));

-- Location: LCCOMB_X64_Y24_N0
\datapath|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux5~0_combout\ = (\datapath|acc1|output\(2) & ((\controller|select_OP\(0)) # (\controller|select_OP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|select_OP\(0),
	datac => \controller|select_OP\(3),
	datad => \datapath|acc1|output\(2),
	combout => \datapath|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y24_N10
\datapath|alu1|output[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[3]~0_combout\ = ((!\controller|select_OP\(1) & !\controller|select_OP\(0))) # (!\controller|select_OP\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|select_OP\(1),
	datac => \controller|select_OP\(3),
	datad => \controller|select_OP\(0),
	combout => \datapath|alu1|output[3]~0_combout\);

-- Location: LCFF_X64_Y24_N1
\datapath|entrada2_alu[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|Mux5~0_combout\,
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(2));

-- Location: LCCOMB_X64_Y24_N2
\datapath|entrada1_alu[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada1_alu[3]~0_combout\ = \controller|select_OP\(1) $ (\controller|select_OP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|select_OP\(1),
	datad => \controller|select_OP\(0),
	combout => \datapath|entrada1_alu[3]~0_combout\);

-- Location: LCCOMB_X64_Y25_N16
\controller|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector35~0_combout\ = (\controller|ADDRESS\(0) & \controller|state.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS\(0),
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector35~0_combout\);

-- Location: LCCOMB_X63_Y25_N12
\controller|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector32~0_combout\ = (!\controller|OPCODE\(0) & (\controller|state.s3~regout\ & (!\controller|OPCODE\(3) & \controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datab => \controller|state.s3~regout\,
	datac => \controller|OPCODE\(3),
	datad => \controller|OPCODE\(1),
	combout => \controller|Selector32~0_combout\);

-- Location: LCCOMB_X64_Y25_N30
\controller|Selector32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector32~1_combout\ = (\controller|Selector32~0_combout\) # ((!\controller|state.s3~regout\ & !\controller|state.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s3~regout\,
	datac => \controller|state.s0~regout\,
	datad => \controller|Selector32~0_combout\,
	combout => \controller|Selector32~1_combout\);

-- Location: LCFF_X64_Y25_N17
\controller|imm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector35~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|Selector32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(0));

-- Location: LCCOMB_X63_Y25_N18
\datapath|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux3~0_combout\ = (!\controller|select_OP\(3) & ((\controller|select_OP\(1)) # (!\controller|select_OP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|select_OP\(0),
	datac => \controller|select_OP\(1),
	datad => \controller|select_OP\(3),
	combout => \datapath|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y24_N26
\datapath|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux1~0_combout\ = (\datapath|Mux3~0_combout\ & ((\datapath|entrada1_alu[3]~0_combout\ & ((\controller|imm\(0)))) # (!\datapath|entrada1_alu[3]~0_combout\ & (\datapath|rf1|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|output\(2),
	datab => \datapath|entrada1_alu[3]~0_combout\,
	datac => \controller|imm\(0),
	datad => \datapath|Mux3~0_combout\,
	combout => \datapath|Mux1~0_combout\);

-- Location: LCFF_X64_Y24_N27
\datapath|entrada1_alu[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|Mux1~0_combout\,
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(2));

-- Location: LCCOMB_X64_Y24_N8
\datapath|alu1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux1~0_combout\ = (\controller|select_OP\(1) & ((\controller|imm\(0)) # ((\controller|select_OP\(0))))) # (!\controller|select_OP\(1) & (((\datapath|entrada1_alu\(2) & !\controller|select_OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|imm\(0),
	datab => \datapath|entrada1_alu\(2),
	datac => \controller|select_OP\(1),
	datad => \controller|select_OP\(0),
	combout => \datapath|alu1|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y25_N26
\controller|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux5~0_combout\ = (!\controller|PC\(0) & (\controller|PC\(1) $ (\controller|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datac => \controller|PC\(1),
	datad => \controller|PC\(2),
	combout => \controller|Mux5~0_combout\);

-- Location: LCFF_X62_Y25_N27
\controller|ADDRESS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Mux5~0_combout\,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(1));

-- Location: LCCOMB_X64_Y25_N22
\controller|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector34~0_combout\ = (\controller|ADDRESS\(1) & \controller|state.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|ADDRESS\(1),
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector34~0_combout\);

-- Location: LCFF_X64_Y25_N23
\controller|imm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector34~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|Selector32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(1));

-- Location: LCCOMB_X64_Y24_N22
\datapath|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux2~0_combout\ = (\datapath|Mux3~0_combout\ & ((\datapath|entrada1_alu[3]~0_combout\ & ((\controller|imm\(1)))) # (!\datapath|entrada1_alu[3]~0_combout\ & (\datapath|rf1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|output\(1),
	datab => \datapath|entrada1_alu[3]~0_combout\,
	datac => \controller|imm\(1),
	datad => \datapath|Mux3~0_combout\,
	combout => \datapath|Mux2~0_combout\);

-- Location: LCFF_X64_Y24_N23
\datapath|entrada1_alu[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|Mux2~0_combout\,
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(1));

-- Location: LCCOMB_X63_Y24_N18
\datapath|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux3~1_combout\ = (\datapath|Mux3~0_combout\ & ((\datapath|entrada1_alu[3]~0_combout\ & ((\controller|imm\(0)))) # (!\datapath|entrada1_alu[3]~0_combout\ & (\datapath|rf1|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|output\(0),
	datab => \controller|imm\(0),
	datac => \datapath|Mux3~0_combout\,
	datad => \datapath|entrada1_alu[3]~0_combout\,
	combout => \datapath|Mux3~1_combout\);

-- Location: LCFF_X63_Y24_N19
\datapath|entrada1_alu[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|Mux3~1_combout\,
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(0));

-- Location: LCCOMB_X63_Y24_N8
\datapath|alu1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~0_combout\ = (\datapath|entrada2_alu\(0) & (\datapath|entrada1_alu\(0) $ (VCC))) # (!\datapath|entrada2_alu\(0) & (\datapath|entrada1_alu\(0) & VCC))
-- \datapath|alu1|Add0~1\ = CARRY((\datapath|entrada2_alu\(0) & \datapath|entrada1_alu\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(0),
	datab => \datapath|entrada1_alu\(0),
	datad => VCC,
	combout => \datapath|alu1|Add0~0_combout\,
	cout => \datapath|alu1|Add0~1\);

-- Location: LCCOMB_X63_Y24_N10
\datapath|alu1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~2_combout\ = (\datapath|entrada2_alu\(1) & ((\datapath|entrada1_alu\(1) & (\datapath|alu1|Add0~1\ & VCC)) # (!\datapath|entrada1_alu\(1) & (!\datapath|alu1|Add0~1\)))) # (!\datapath|entrada2_alu\(1) & ((\datapath|entrada1_alu\(1) & 
-- (!\datapath|alu1|Add0~1\)) # (!\datapath|entrada1_alu\(1) & ((\datapath|alu1|Add0~1\) # (GND)))))
-- \datapath|alu1|Add0~3\ = CARRY((\datapath|entrada2_alu\(1) & (!\datapath|entrada1_alu\(1) & !\datapath|alu1|Add0~1\)) # (!\datapath|entrada2_alu\(1) & ((!\datapath|alu1|Add0~1\) # (!\datapath|entrada1_alu\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(1),
	datab => \datapath|entrada1_alu\(1),
	datad => VCC,
	cin => \datapath|alu1|Add0~1\,
	combout => \datapath|alu1|Add0~2_combout\,
	cout => \datapath|alu1|Add0~3\);

-- Location: LCCOMB_X63_Y24_N12
\datapath|alu1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~4_combout\ = ((\datapath|entrada1_alu\(2) $ (\datapath|entrada2_alu\(2) $ (!\datapath|alu1|Add0~3\)))) # (GND)
-- \datapath|alu1|Add0~5\ = CARRY((\datapath|entrada1_alu\(2) & ((\datapath|entrada2_alu\(2)) # (!\datapath|alu1|Add0~3\))) # (!\datapath|entrada1_alu\(2) & (\datapath|entrada2_alu\(2) & !\datapath|alu1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(2),
	datab => \datapath|entrada2_alu\(2),
	datad => VCC,
	cin => \datapath|alu1|Add0~3\,
	combout => \datapath|alu1|Add0~4_combout\,
	cout => \datapath|alu1|Add0~5\);

-- Location: LCCOMB_X63_Y24_N0
\datapath|alu1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux1~1_combout\ = (\controller|select_OP\(0) & ((\datapath|alu1|Mux1~0_combout\ & ((\datapath|alu1|Add0~4_combout\))) # (!\datapath|alu1|Mux1~0_combout\ & (\datapath|entrada2_alu\(2))))) # (!\controller|select_OP\(0) & 
-- (((\datapath|alu1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|select_OP\(0),
	datab => \datapath|entrada2_alu\(2),
	datac => \datapath|alu1|Mux1~0_combout\,
	datad => \datapath|alu1|Add0~4_combout\,
	combout => \datapath|alu1|Mux1~1_combout\);

-- Location: LCCOMB_X63_Y24_N20
\datapath|alu1|output[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[2]~feeder_combout\ = \datapath|alu1|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|Mux1~1_combout\,
	combout => \datapath|alu1|output[2]~feeder_combout\);

-- Location: LCCOMB_X64_Y24_N30
\datapath|entrada2_alu[2]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada2_alu[2]~_wirecell_combout\ = !\datapath|entrada2_alu\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada2_alu\(2),
	combout => \datapath|entrada2_alu[2]~_wirecell_combout\);

-- Location: LCFF_X63_Y24_N21
\datapath|alu1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|alu1|output[2]~feeder_combout\,
	sdata => \datapath|entrada2_alu[2]~_wirecell_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \controller|select_OP\(3),
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(2));

-- Location: LCCOMB_X63_Y24_N16
\datapath|alu1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~0_combout\ = (\controller|select_OP\(1) & (((\controller|imm\(0)) # (\controller|select_OP\(0))))) # (!\controller|select_OP\(1) & (\datapath|entrada1_alu\(0) & ((!\controller|select_OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(0),
	datab => \controller|imm\(0),
	datac => \controller|select_OP\(1),
	datad => \controller|select_OP\(0),
	combout => \datapath|alu1|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y24_N30
\datapath|alu1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~1_combout\ = (\datapath|alu1|Mux3~0_combout\ & (((\datapath|alu1|Add0~0_combout\) # (!\controller|select_OP\(0))))) # (!\datapath|alu1|Mux3~0_combout\ & (\datapath|entrada2_alu\(0) & ((\controller|select_OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(0),
	datab => \datapath|alu1|Add0~0_combout\,
	datac => \datapath|alu1|Mux3~0_combout\,
	datad => \controller|select_OP\(0),
	combout => \datapath|alu1|Mux3~1_combout\);

-- Location: LCCOMB_X63_Y24_N28
\datapath|alu1|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[0]~feeder_combout\ = \datapath|alu1|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|Mux3~1_combout\,
	combout => \datapath|alu1|output[0]~feeder_combout\);

-- Location: LCCOMB_X63_Y24_N24
\datapath|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux7~0_combout\ = (\datapath|acc1|output\(0) & ((\controller|select_OP\(3)) # (\controller|select_OP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acc1|output\(0),
	datac => \controller|select_OP\(3),
	datad => \controller|select_OP\(0),
	combout => \datapath|Mux7~0_combout\);

-- Location: LCFF_X63_Y24_N25
\datapath|entrada2_alu[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|Mux7~0_combout\,
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(0));

-- Location: LCCOMB_X62_Y24_N20
\datapath|entrada2_alu[0]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada2_alu[0]~_wirecell_combout\ = !\datapath|entrada2_alu\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada2_alu\(0),
	combout => \datapath|entrada2_alu[0]~_wirecell_combout\);

-- Location: LCFF_X63_Y24_N29
\datapath|alu1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|alu1|output[0]~feeder_combout\,
	sdata => \datapath|entrada2_alu[0]~_wirecell_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \controller|select_OP\(3),
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(0));

-- Location: LCCOMB_X63_Y24_N4
\datapath|alu1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux2~0_combout\ = (\controller|select_OP\(1) & (((\controller|select_OP\(0))))) # (!\controller|select_OP\(1) & ((\controller|select_OP\(0) & (\datapath|entrada2_alu\(1))) # (!\controller|select_OP\(0) & ((\datapath|entrada1_alu\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(1),
	datab => \datapath|entrada1_alu\(1),
	datac => \controller|select_OP\(1),
	datad => \controller|select_OP\(0),
	combout => \datapath|alu1|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y24_N22
\datapath|alu1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux2~1_combout\ = (\controller|select_OP\(1) & ((\datapath|alu1|Mux2~0_combout\ & ((\datapath|alu1|Add0~2_combout\))) # (!\datapath|alu1|Mux2~0_combout\ & (\controller|imm\(1))))) # (!\controller|select_OP\(1) & 
-- (((\datapath|alu1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|select_OP\(1),
	datab => \controller|imm\(1),
	datac => \datapath|alu1|Mux2~0_combout\,
	datad => \datapath|alu1|Add0~2_combout\,
	combout => \datapath|alu1|Mux2~1_combout\);

-- Location: LCCOMB_X63_Y24_N2
\datapath|alu1|output[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[1]~feeder_combout\ = \datapath|alu1|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|Mux2~1_combout\,
	combout => \datapath|alu1|output[1]~feeder_combout\);

-- Location: LCCOMB_X64_Y26_N18
\datapath|entrada_acc[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada_acc[1]~feeder_combout\ = \datapath|alu1|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(1),
	combout => \datapath|entrada_acc[1]~feeder_combout\);

-- Location: LCFF_X64_Y26_N19
\datapath|entrada_acc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|entrada_acc[1]~feeder_combout\,
	ena => \datapath|entrada_acc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_acc\(1));

-- Location: LCFF_X64_Y28_N23
\datapath|acc1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|entrada_acc\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(1));

-- Location: LCCOMB_X64_Y24_N4
\datapath|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux6~0_combout\ = (\datapath|acc1|output\(1) & ((\controller|select_OP\(3)) # (\controller|select_OP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|select_OP\(3),
	datac => \datapath|acc1|output\(1),
	datad => \controller|select_OP\(0),
	combout => \datapath|Mux6~0_combout\);

-- Location: LCFF_X64_Y24_N5
\datapath|entrada2_alu[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|Mux6~0_combout\,
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(1));

-- Location: LCCOMB_X64_Y24_N16
\datapath|entrada2_alu[1]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada2_alu[1]~_wirecell_combout\ = !\datapath|entrada2_alu\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|entrada2_alu\(1),
	combout => \datapath|entrada2_alu[1]~_wirecell_combout\);

-- Location: LCFF_X63_Y24_N3
\datapath|alu1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|alu1|output[1]~feeder_combout\,
	sdata => \datapath|entrada2_alu[1]~_wirecell_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \controller|select_OP\(3),
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(1));

-- Location: LCCOMB_X64_Y23_N4
\c1|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux10~0_combout\ = (\datapath|alu1|output\(3) & (\datapath|alu1|output\(1) & (\datapath|alu1|output\(2) $ (\datapath|alu1|output\(0))))) # (!\datapath|alu1|output\(3) & (!\datapath|alu1|output\(1) & (\datapath|alu1|output\(2) $ 
-- (\datapath|alu1|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(3),
	datab => \datapath|alu1|output\(2),
	datac => \datapath|alu1|output\(0),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux10~0_combout\);

-- Location: LCFF_X64_Y23_N5
\conversor_hex4[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \c1|Mux10~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conversor_hex4[0]~reg0_regout\);

-- Location: LCFF_X64_Y26_N11
\datapath|entrada_acc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \datapath|alu1|output\(3),
	sload => VCC,
	ena => \datapath|entrada_acc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_acc\(3));

-- Location: LCCOMB_X64_Y28_N24
\datapath|acc1|output[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output[3]~feeder_combout\ = \datapath|entrada_acc\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_acc\(3),
	combout => \datapath|acc1|output[3]~feeder_combout\);

-- Location: LCFF_X64_Y28_N25
\datapath|acc1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|acc1|output[3]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(3));

-- Location: LCCOMB_X64_Y24_N20
\datapath|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux4~0_combout\ = (\datapath|acc1|output\(3) & ((\controller|select_OP\(3)) # (\controller|select_OP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|select_OP\(3),
	datac => \datapath|acc1|output\(3),
	datad => \controller|select_OP\(0),
	combout => \datapath|Mux4~0_combout\);

-- Location: LCFF_X64_Y24_N21
\datapath|entrada2_alu[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|Mux4~0_combout\,
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(3));

-- Location: LCCOMB_X62_Y25_N12
\controller|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux3~0_combout\ = (!\controller|PC\(0) & \controller|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datad => \controller|PC\(2),
	combout => \controller|Mux3~0_combout\);

-- Location: LCFF_X62_Y25_N13
\controller|ADDRESS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Mux3~0_combout\,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(3));

-- Location: LCCOMB_X64_Y25_N12
\controller|Selector32~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector32~2_combout\ = (\controller|ADDRESS\(3) & \controller|state.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|ADDRESS\(3),
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector32~2_combout\);

-- Location: LCFF_X64_Y25_N13
\controller|imm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controller|Selector32~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|Selector32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(3));

-- Location: LCCOMB_X64_Y24_N6
\datapath|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux0~0_combout\ = (\datapath|Mux3~0_combout\ & ((\datapath|entrada1_alu[3]~0_combout\ & ((\controller|imm\(3)))) # (!\datapath|entrada1_alu[3]~0_combout\ & (\datapath|rf1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|output\(3),
	datab => \datapath|entrada1_alu[3]~0_combout\,
	datac => \controller|imm\(3),
	datad => \datapath|Mux3~0_combout\,
	combout => \datapath|Mux0~0_combout\);

-- Location: LCFF_X64_Y24_N7
\datapath|entrada1_alu[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|Mux0~0_combout\,
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(3));

-- Location: LCCOMB_X63_Y24_N14
\datapath|alu1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~6_combout\ = \datapath|entrada2_alu\(3) $ (\datapath|alu1|Add0~5\ $ (\datapath|entrada1_alu\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|entrada2_alu\(3),
	datad => \datapath|entrada1_alu\(3),
	cin => \datapath|alu1|Add0~5\,
	combout => \datapath|alu1|Add0~6_combout\);

-- Location: LCCOMB_X64_Y24_N24
\datapath|alu1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~0_combout\ = (\controller|select_OP\(1) & (((\controller|imm\(3)) # (\controller|select_OP\(0))))) # (!\controller|select_OP\(1) & (\datapath|entrada1_alu\(3) & ((!\controller|select_OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(3),
	datab => \controller|imm\(3),
	datac => \controller|select_OP\(1),
	datad => \controller|select_OP\(0),
	combout => \datapath|alu1|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y24_N26
\datapath|alu1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~1_combout\ = (\controller|select_OP\(0) & ((\datapath|alu1|Mux0~0_combout\ & ((\datapath|alu1|Add0~6_combout\))) # (!\datapath|alu1|Mux0~0_combout\ & (\datapath|entrada2_alu\(3))))) # (!\controller|select_OP\(0) & 
-- (((\datapath|alu1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|select_OP\(0),
	datab => \datapath|entrada2_alu\(3),
	datac => \datapath|alu1|Add0~6_combout\,
	datad => \datapath|alu1|Mux0~0_combout\,
	combout => \datapath|alu1|Mux0~1_combout\);

-- Location: LCCOMB_X63_Y24_N6
\datapath|alu1|output[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[3]~feeder_combout\ = \datapath|alu1|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|Mux0~1_combout\,
	combout => \datapath|alu1|output[3]~feeder_combout\);

-- Location: LCCOMB_X64_Y24_N12
\datapath|entrada2_alu[3]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada2_alu[3]~_wirecell_combout\ = !\datapath|entrada2_alu\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(3),
	combout => \datapath|entrada2_alu[3]~_wirecell_combout\);

-- Location: LCFF_X63_Y24_N7
\datapath|alu1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \datapath|alu1|output[3]~feeder_combout\,
	sdata => \datapath|entrada2_alu[3]~_wirecell_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \controller|select_OP\(3),
	ena => \datapath|alu1|output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(3));

-- Location: LCCOMB_X64_Y23_N30
\c1|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux9~0_combout\ = (\datapath|alu1|output\(2) & ((\datapath|alu1|output\(0) & (\datapath|alu1|output\(3) $ (!\datapath|alu1|output\(1)))) # (!\datapath|alu1|output\(0) & (!\datapath|alu1|output\(3) & \datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(2),
	datac => \datapath|alu1|output\(3),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux9~0_combout\);

-- Location: LCFF_X64_Y23_N31
\conversor_hex4[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \c1|Mux9~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conversor_hex4[1]~reg0_regout\);

-- Location: LCCOMB_X64_Y23_N8
\c1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux8~0_combout\ = (!\datapath|alu1|output\(0) & ((\datapath|alu1|output\(3) & (\datapath|alu1|output\(2) & !\datapath|alu1|output\(1))) # (!\datapath|alu1|output\(3) & (!\datapath|alu1|output\(2) & \datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(3),
	datab => \datapath|alu1|output\(2),
	datac => \datapath|alu1|output\(0),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux8~0_combout\);

-- Location: LCFF_X64_Y23_N9
\conversor_hex4[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \c1|Mux8~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conversor_hex4[2]~reg0_regout\);

-- Location: LCCOMB_X64_Y23_N18
\c1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux7~0_combout\ = (\datapath|alu1|output\(0) & ((\datapath|alu1|output\(2) & (!\datapath|alu1|output\(3) & \datapath|alu1|output\(1))) # (!\datapath|alu1|output\(2) & (\datapath|alu1|output\(3) $ (!\datapath|alu1|output\(1)))))) # 
-- (!\datapath|alu1|output\(0) & (\datapath|alu1|output\(2) & (\datapath|alu1|output\(3) $ (!\datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(2),
	datac => \datapath|alu1|output\(3),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux7~0_combout\);

-- Location: LCFF_X64_Y23_N19
\conversor_hex4[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \c1|Mux7~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conversor_hex4[3]~reg0_regout\);

-- Location: LCCOMB_X64_Y23_N16
\c1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux6~0_combout\ = (\datapath|alu1|output\(0)) # ((\datapath|alu1|output\(2) & (\datapath|alu1|output\(3) $ (!\datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(2),
	datac => \datapath|alu1|output\(3),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux6~0_combout\);

-- Location: LCFF_X64_Y23_N17
\conversor_hex4[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \c1|Mux6~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conversor_hex4[4]~reg0_regout\);

-- Location: LCCOMB_X64_Y23_N26
\c1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux5~0_combout\ = (\datapath|alu1|output\(2) & ((\datapath|alu1|output\(3) & ((!\datapath|alu1|output\(1)))) # (!\datapath|alu1|output\(3) & (\datapath|alu1|output\(0) & \datapath|alu1|output\(1))))) # (!\datapath|alu1|output\(2) & 
-- ((\datapath|alu1|output\(0) & ((\datapath|alu1|output\(1)) # (!\datapath|alu1|output\(3)))) # (!\datapath|alu1|output\(0) & (!\datapath|alu1|output\(3) & \datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(2),
	datac => \datapath|alu1|output\(3),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux5~0_combout\);

-- Location: LCFF_X64_Y23_N27
\conversor_hex4[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \c1|Mux5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conversor_hex4[5]~reg0_regout\);

-- Location: LCCOMB_X64_Y23_N20
\c1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux4~0_combout\ = (\datapath|alu1|output\(2) & (((\datapath|alu1|output\(3)) # (!\datapath|alu1|output\(1))) # (!\datapath|alu1|output\(0)))) # (!\datapath|alu1|output\(2) & ((\datapath|alu1|output\(3) $ (\datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(2),
	datac => \datapath|alu1|output\(3),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux4~0_combout\);

-- Location: LCFF_X64_Y23_N21
\conversor_hex4[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \c1|Mux4~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conversor_hex4[6]~reg0_regout\);

-- Location: LCCOMB_X64_Y23_N28
\c1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux3~0_combout\ = (\datapath|alu1|output\(3) & ((\datapath|alu1|output\(2)) # (\datapath|alu1|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alu1|output\(2),
	datac => \datapath|alu1|output\(3),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y23_N14
\conversor_hex5[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \conversor_hex5[0]~reg0feeder_combout\ = \c1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|Mux3~0_combout\,
	combout => \conversor_hex5[0]~reg0feeder_combout\);

-- Location: LCFF_X64_Y23_N15
\conversor_hex5[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \conversor_hex5[0]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conversor_hex5[0]~reg0_regout\);

-- Location: LCCOMB_X64_Y23_N12
\conversor_hex5[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \conversor_hex5[3]~reg0feeder_combout\ = \c1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|Mux3~0_combout\,
	combout => \conversor_hex5[3]~reg0feeder_combout\);

-- Location: LCFF_X64_Y23_N13
\conversor_hex5[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \conversor_hex5[3]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conversor_hex5[3]~reg0_regout\);

-- Location: LCCOMB_X64_Y23_N10
\conversor_hex5[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \conversor_hex5[4]~reg0feeder_combout\ = \c1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|Mux3~0_combout\,
	combout => \conversor_hex5[4]~reg0feeder_combout\);

-- Location: LCFF_X64_Y23_N11
\conversor_hex5[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \conversor_hex5[4]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conversor_hex5[4]~reg0_regout\);

-- Location: LCFF_X64_Y23_N29
\conversor_hex5[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \c1|Mux3~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conversor_hex5[5]~reg0_regout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex0[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex0[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex0[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex0[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex0[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex1[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex1[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex1[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex1[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex1[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex2[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex2[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex2[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex2[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex3[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex3[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex3[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex3[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex3[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_hex3[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_hex3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_hex3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conversor_hex4[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conversor_hex4[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conversor_hex4[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conversor_hex4[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conversor_hex4[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conversor_hex4[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_conversor_hex4[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conversor_hex5[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conversor_hex5[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conversor_hex5[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conversor_hex5[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conversor_hex5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conversor_hex5(6));
END structure;


