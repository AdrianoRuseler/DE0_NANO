-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "01/21/2015 21:17:45"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE0_NANO_PWM IS
    PORT (
	CLOCK_50 : IN std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	RESET_FA : OUT std_logic_vector(2 DOWNTO 0);
	PWM1L_FA : OUT std_logic_vector(2 DOWNTO 0);
	PWM1H_FA : OUT std_logic_vector(2 DOWNTO 0);
	PWM2L_FA : OUT std_logic_vector(2 DOWNTO 0);
	PWM2H_FA : OUT std_logic_vector(2 DOWNTO 0);
	INT0_FA : IN std_logic_vector(2 DOWNTO 0);
	RESET_FB : OUT std_logic_vector(2 DOWNTO 0);
	PWM1L_FB : OUT std_logic_vector(2 DOWNTO 0);
	PWM1H_FB : OUT std_logic_vector(2 DOWNTO 0);
	PWM2L_FB : OUT std_logic_vector(2 DOWNTO 0);
	PWM2H_FB : OUT std_logic_vector(2 DOWNTO 0);
	INT0_FB : IN std_logic_vector(2 DOWNTO 0);
	RESET_FC : OUT std_logic_vector(2 DOWNTO 0);
	PWM1L_FC : OUT std_logic_vector(2 DOWNTO 0);
	PWM1H_FC : OUT std_logic_vector(2 DOWNTO 0);
	PWM2L_FC : OUT std_logic_vector(2 DOWNTO 0);
	PWM2H_FC : OUT std_logic_vector(2 DOWNTO 0);
	INT0_FC : IN std_logic_vector(2 DOWNTO 0)
	);
END DE0_NANO_PWM;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_FA[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_FA[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_FA[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1L_FA[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1L_FA[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1L_FA[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1H_FA[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1H_FA[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1H_FA[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2L_FA[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2L_FA[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2L_FA[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2H_FA[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2H_FA[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2H_FA[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT0_FA[0]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT0_FA[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT0_FA[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_FB[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_FB[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_FB[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1L_FB[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1L_FB[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1L_FB[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1H_FB[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1H_FB[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1H_FB[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2L_FB[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2L_FB[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2L_FB[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2H_FB[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2H_FB[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2H_FB[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT0_FB[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT0_FB[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT0_FB[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_FC[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_FC[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_FC[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1L_FC[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1L_FC[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1L_FC[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1H_FC[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1H_FC[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1H_FC[2]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2L_FC[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2L_FC[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2L_FC[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2H_FC[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2H_FC[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM2H_FC[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT0_FC[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT0_FC[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT0_FC[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE0_NANO_PWM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RESET_FA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM1L_FA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM1H_FA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM2L_FA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM2H_FA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_INT0_FA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RESET_FB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM1L_FB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM1H_FB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM2L_FB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM2H_FB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_INT0_FB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RESET_FC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM1L_FC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM1H_FC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM2L_FC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM2H_FC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_INT0_FC : std_logic_vector(2 DOWNTO 0);
SIGNAL \upll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \upll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u5|sinc_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|clk_out_bi~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \INT0_FA[0]~input_o\ : std_logic;
SIGNAL \INT0_FA[1]~input_o\ : std_logic;
SIGNAL \INT0_FA[2]~input_o\ : std_logic;
SIGNAL \INT0_FB[0]~input_o\ : std_logic;
SIGNAL \INT0_FB[1]~input_o\ : std_logic;
SIGNAL \INT0_FB[2]~input_o\ : std_logic;
SIGNAL \INT0_FC[0]~input_o\ : std_logic;
SIGNAL \INT0_FC[1]~input_o\ : std_logic;
SIGNAL \INT0_FC[2]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \upll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \u1|count[0]~16_combout\ : std_logic;
SIGNAL \u1|count[0]~17\ : std_logic;
SIGNAL \u1|count[1]~18_combout\ : std_logic;
SIGNAL \u1|count[1]~19\ : std_logic;
SIGNAL \u1|count[2]~20_combout\ : std_logic;
SIGNAL \u1|count[2]~21\ : std_logic;
SIGNAL \u1|count[3]~22_combout\ : std_logic;
SIGNAL \u1|count[3]~23\ : std_logic;
SIGNAL \u1|count[4]~24_combout\ : std_logic;
SIGNAL \u1|count[4]~25\ : std_logic;
SIGNAL \u1|count[5]~26_combout\ : std_logic;
SIGNAL \u1|count[5]~27\ : std_logic;
SIGNAL \u1|count[6]~28_combout\ : std_logic;
SIGNAL \u1|count[6]~29\ : std_logic;
SIGNAL \u1|count[7]~30_combout\ : std_logic;
SIGNAL \u1|count[7]~31\ : std_logic;
SIGNAL \u1|count[8]~32_combout\ : std_logic;
SIGNAL \u1|count[8]~33\ : std_logic;
SIGNAL \u1|count[9]~34_combout\ : std_logic;
SIGNAL \u1|count[9]~35\ : std_logic;
SIGNAL \u1|count[10]~36_combout\ : std_logic;
SIGNAL \u1|count[10]~37\ : std_logic;
SIGNAL \u1|count[11]~38_combout\ : std_logic;
SIGNAL \u1|LessThan0~2_combout\ : std_logic;
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|count[11]~39\ : std_logic;
SIGNAL \u1|count[12]~40_combout\ : std_logic;
SIGNAL \u1|count[12]~41\ : std_logic;
SIGNAL \u1|count[13]~42_combout\ : std_logic;
SIGNAL \u1|count[13]~43\ : std_logic;
SIGNAL \u1|count[14]~44_combout\ : std_logic;
SIGNAL \u1|count[14]~45\ : std_logic;
SIGNAL \u1|count[15]~46_combout\ : std_logic;
SIGNAL \u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~4_combout\ : std_logic;
SIGNAL \u1|clk_out_bi~0_combout\ : std_logic;
SIGNAL \u1|clk_out_bi~q\ : std_logic;
SIGNAL \u1|clk_out_bi~clkctrl_outclk\ : std_logic;
SIGNAL \u5|out_int[5]~25_combout\ : std_logic;
SIGNAL \u5|out_int[28]~72\ : std_logic;
SIGNAL \u5|out_int[29]~73_combout\ : std_logic;
SIGNAL \u5|out_int[5]~26\ : std_logic;
SIGNAL \u5|out_int[6]~27_combout\ : std_logic;
SIGNAL \u5|out_int[6]~28\ : std_logic;
SIGNAL \u5|out_int[7]~29_combout\ : std_logic;
SIGNAL \u5|out_int[7]~30\ : std_logic;
SIGNAL \u5|out_int[8]~31_combout\ : std_logic;
SIGNAL \u5|out_int[8]~32\ : std_logic;
SIGNAL \u5|out_int[9]~33_combout\ : std_logic;
SIGNAL \u5|out_int[9]~34\ : std_logic;
SIGNAL \u5|out_int[10]~35_combout\ : std_logic;
SIGNAL \u5|out_int[10]~36\ : std_logic;
SIGNAL \u5|out_int[11]~37_combout\ : std_logic;
SIGNAL \u5|out_int[11]~38\ : std_logic;
SIGNAL \u5|out_int[12]~39_combout\ : std_logic;
SIGNAL \u5|out_int[12]~40\ : std_logic;
SIGNAL \u5|out_int[13]~41_combout\ : std_logic;
SIGNAL \u5|out_int[13]~42\ : std_logic;
SIGNAL \u5|out_int[14]~43_combout\ : std_logic;
SIGNAL \u5|out_int[14]~44\ : std_logic;
SIGNAL \u5|out_int[15]~45_combout\ : std_logic;
SIGNAL \u5|out_int[15]~46\ : std_logic;
SIGNAL \u5|out_int[16]~47_combout\ : std_logic;
SIGNAL \u5|out_int[16]~48\ : std_logic;
SIGNAL \u5|out_int[17]~49_combout\ : std_logic;
SIGNAL \u5|out_int[17]~50\ : std_logic;
SIGNAL \u5|out_int[18]~51_combout\ : std_logic;
SIGNAL \u5|out_int[18]~52\ : std_logic;
SIGNAL \u5|out_int[19]~53_combout\ : std_logic;
SIGNAL \u5|out_int[19]~54\ : std_logic;
SIGNAL \u5|out_int[20]~55_combout\ : std_logic;
SIGNAL \u5|out_int[20]~56\ : std_logic;
SIGNAL \u5|out_int[21]~57_combout\ : std_logic;
SIGNAL \u5|out_int[21]~58\ : std_logic;
SIGNAL \u5|out_int[22]~59_combout\ : std_logic;
SIGNAL \u5|out_int[22]~60\ : std_logic;
SIGNAL \u5|out_int[23]~61_combout\ : std_logic;
SIGNAL \u5|out_int[23]~62\ : std_logic;
SIGNAL \u5|out_int[24]~63_combout\ : std_logic;
SIGNAL \u5|out_int[24]~64\ : std_logic;
SIGNAL \u5|out_int[25]~65_combout\ : std_logic;
SIGNAL \u5|out_int[25]~66\ : std_logic;
SIGNAL \u5|out_int[26]~67_combout\ : std_logic;
SIGNAL \u5|out_int[26]~68\ : std_logic;
SIGNAL \u5|out_int[27]~69_combout\ : std_logic;
SIGNAL \u5|out_int[27]~70\ : std_logic;
SIGNAL \u5|out_int[28]~71_combout\ : std_logic;
SIGNAL \u5|sinc_int~feeder_combout\ : std_logic;
SIGNAL \u5|sinc_int~q\ : std_logic;
SIGNAL \u5|sinc_int~clkctrl_outclk\ : std_logic;
SIGNAL \uled|count[0]~16_combout\ : std_logic;
SIGNAL \uled|count[0]~17\ : std_logic;
SIGNAL \uled|count[1]~18_combout\ : std_logic;
SIGNAL \uled|count[1]~19\ : std_logic;
SIGNAL \uled|count[2]~20_combout\ : std_logic;
SIGNAL \uled|count[2]~21\ : std_logic;
SIGNAL \uled|count[3]~22_combout\ : std_logic;
SIGNAL \uled|count[3]~23\ : std_logic;
SIGNAL \uled|count[4]~24_combout\ : std_logic;
SIGNAL \uled|count[4]~25\ : std_logic;
SIGNAL \uled|count[5]~26_combout\ : std_logic;
SIGNAL \uled|count[5]~27\ : std_logic;
SIGNAL \uled|count[6]~28_combout\ : std_logic;
SIGNAL \uled|count[6]~29\ : std_logic;
SIGNAL \uled|count[7]~30_combout\ : std_logic;
SIGNAL \uled|count[7]~31\ : std_logic;
SIGNAL \uled|count[8]~32_combout\ : std_logic;
SIGNAL \uled|count[8]~33\ : std_logic;
SIGNAL \uled|count[9]~34_combout\ : std_logic;
SIGNAL \uled|count[9]~35\ : std_logic;
SIGNAL \uled|count[10]~36_combout\ : std_logic;
SIGNAL \uled|count[10]~37\ : std_logic;
SIGNAL \uled|count[11]~38_combout\ : std_logic;
SIGNAL \uled|LessThan0~2_combout\ : std_logic;
SIGNAL \uled|LessThan0~0_combout\ : std_logic;
SIGNAL \uled|LessThan0~1_combout\ : std_logic;
SIGNAL \uled|count[11]~39\ : std_logic;
SIGNAL \uled|count[12]~40_combout\ : std_logic;
SIGNAL \uled|count[12]~41\ : std_logic;
SIGNAL \uled|count[13]~42_combout\ : std_logic;
SIGNAL \uled|count[13]~43\ : std_logic;
SIGNAL \uled|count[14]~44_combout\ : std_logic;
SIGNAL \uled|count[14]~45\ : std_logic;
SIGNAL \uled|count[15]~46_combout\ : std_logic;
SIGNAL \uled|LessThan0~3_combout\ : std_logic;
SIGNAL \uled|LessThan0~4_combout\ : std_logic;
SIGNAL \uled|clk_out_bi~0_combout\ : std_logic;
SIGNAL \uled|clk_out_bi~q\ : std_logic;
SIGNAL \uled|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|out_int\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \u1|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \upll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u5|ALT_INV_out_int\ : std_logic_vector(29 DOWNTO 29);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LED <= ww_LED;
ww_SW <= SW;
ww_KEY <= KEY;
RESET_FA <= ww_RESET_FA;
PWM1L_FA <= ww_PWM1L_FA;
PWM1H_FA <= ww_PWM1H_FA;
PWM2L_FA <= ww_PWM2L_FA;
PWM2H_FA <= ww_PWM2H_FA;
ww_INT0_FA <= INT0_FA;
RESET_FB <= ww_RESET_FB;
PWM1L_FB <= ww_PWM1L_FB;
PWM1H_FB <= ww_PWM1H_FB;
PWM2L_FB <= ww_PWM2L_FB;
PWM2H_FB <= ww_PWM2H_FB;
ww_INT0_FB <= INT0_FB;
RESET_FC <= ww_RESET_FC;
PWM1L_FC <= ww_PWM1L_FC;
PWM1H_FC <= ww_PWM1H_FC;
PWM2L_FC <= ww_PWM2L_FC;
PWM2H_FC <= ww_PWM2H_FC;
ww_INT0_FC <= INT0_FC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\upll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\upll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \upll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\upll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \upll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\upll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \upll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\upll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \upll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\upll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \upll|altpll_component|auto_generated|pll1_CLK_bus\(4);

\u5|sinc_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u5|sinc_int~q\);

\u1|clk_out_bi~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|clk_out_bi~q\);

\upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \upll|altpll_component|auto_generated|wire_pll1_clk\(0));
\u5|ALT_INV_out_int\(29) <= NOT \u5|out_int\(29);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uled|clk_out_bi~q\,
	devoe => ww_devoe,
	o => ww_LED(0));

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(1));

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(2));

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(3));

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(4));

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(5));

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(6));

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(7));

-- Location: IOOBUF_X53_Y10_N16
\RESET_FA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RESET_FA(0));

-- Location: IOOBUF_X5_Y34_N16
\RESET_FA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RESET_FA(1));

-- Location: IOOBUF_X18_Y34_N23
\RESET_FA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RESET_FA(2));

-- Location: IOOBUF_X49_Y0_N9
\PWM1L_FA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1L_FA(0));

-- Location: IOOBUF_X7_Y34_N2
\PWM1L_FA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1L_FA(1));

-- Location: IOOBUF_X16_Y34_N2
\PWM1L_FA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1L_FA(2));

-- Location: IOOBUF_X53_Y9_N16
\PWM1H_FA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1H_FA(0));

-- Location: IOOBUF_X3_Y34_N2
\PWM1H_FA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1H_FA(1));

-- Location: IOOBUF_X16_Y34_N9
\PWM1H_FA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1H_FA(2));

-- Location: IOOBUF_X53_Y6_N23
\PWM2L_FA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2L_FA(0));

-- Location: IOOBUF_X11_Y34_N2
\PWM2L_FA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2L_FA(1));

-- Location: IOOBUF_X9_Y34_N9
\PWM2L_FA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2L_FA(2));

-- Location: IOOBUF_X53_Y9_N9
\PWM2H_FA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2H_FA(0));

-- Location: IOOBUF_X9_Y34_N23
\PWM2H_FA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2H_FA(1));

-- Location: IOOBUF_X18_Y34_N2
\PWM2H_FA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2H_FA(2));

-- Location: IOOBUF_X20_Y34_N16
\RESET_FB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RESET_FB(0));

-- Location: IOOBUF_X45_Y34_N16
\RESET_FB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RESET_FB(1));

-- Location: IOOBUF_X43_Y34_N23
\RESET_FB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RESET_FB(2));

-- Location: IOOBUF_X14_Y34_N16
\PWM1L_FB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1L_FB(0));

-- Location: IOOBUF_X29_Y34_N16
\PWM1L_FB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1L_FB(1));

-- Location: IOOBUF_X40_Y34_N9
\PWM1L_FB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1L_FB(2));

-- Location: IOOBUF_X23_Y34_N16
\PWM1H_FB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1H_FB(0));

-- Location: IOOBUF_X34_Y34_N2
\PWM1H_FB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1H_FB(1));

-- Location: IOOBUF_X38_Y34_N2
\PWM1H_FB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1H_FB(2));

-- Location: IOOBUF_X23_Y34_N23
\PWM2L_FB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2L_FB(0));

-- Location: IOOBUF_X31_Y34_N9
\PWM2L_FB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2L_FB(1));

-- Location: IOOBUF_X51_Y34_N16
\PWM2L_FB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2L_FB(2));

-- Location: IOOBUF_X16_Y34_N16
\PWM2H_FB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2H_FB(0));

-- Location: IOOBUF_X31_Y34_N2
\PWM2H_FB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2H_FB(1));

-- Location: IOOBUF_X43_Y34_N16
\PWM2H_FB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2H_FB(2));

-- Location: IOOBUF_X53_Y7_N9
\RESET_FC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RESET_FC(0));

-- Location: IOOBUF_X34_Y0_N2
\RESET_FC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RESET_FC(1));

-- Location: IOOBUF_X43_Y0_N16
\RESET_FC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RESET_FC(2));

-- Location: IOOBUF_X53_Y12_N2
\PWM1L_FC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1L_FC(0));

-- Location: IOOBUF_X36_Y0_N9
\PWM1L_FC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1L_FC(1));

-- Location: IOOBUF_X34_Y0_N23
\PWM1L_FC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1L_FC(2));

-- Location: IOOBUF_X53_Y11_N9
\PWM1H_FC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1H_FC(0));

-- Location: IOOBUF_X40_Y0_N23
\PWM1H_FC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1H_FC(1));

-- Location: IOOBUF_X38_Y0_N2
\PWM1H_FC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM1H_FC(2));

-- Location: IOOBUF_X53_Y11_N2
\PWM2L_FC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2L_FC(0));

-- Location: IOOBUF_X36_Y0_N23
\PWM2L_FC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2L_FC(1));

-- Location: IOOBUF_X38_Y0_N9
\PWM2L_FC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2L_FC(2));

-- Location: IOOBUF_X53_Y8_N23
\PWM2H_FC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2H_FC(0));

-- Location: IOOBUF_X36_Y0_N16
\PWM2H_FC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2H_FC(1));

-- Location: IOOBUF_X47_Y0_N23
\PWM2H_FC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWM2H_FC(2));

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_4
\upll|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 5,
	c0_initial => 1,
	c0_low => 5,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 15,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 16,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 32,
	m_initial => 1,
	m_ph => 0,
	n => 3,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 4891,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 234,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \upll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \upll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \upll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \upll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y30_N0
\u1|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[0]~16_combout\ = \u1|count\(0) $ (VCC)
-- \u1|count[0]~17\ = CARRY(\u1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(0),
	datad => VCC,
	combout => \u1|count[0]~16_combout\,
	cout => \u1|count[0]~17\);

-- Location: FF_X39_Y30_N1
\u1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[0]~16_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(0));

-- Location: LCCOMB_X39_Y30_N2
\u1|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[1]~18_combout\ = (\u1|count\(1) & (!\u1|count[0]~17\)) # (!\u1|count\(1) & ((\u1|count[0]~17\) # (GND)))
-- \u1|count[1]~19\ = CARRY((!\u1|count[0]~17\) # (!\u1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(1),
	datad => VCC,
	cin => \u1|count[0]~17\,
	combout => \u1|count[1]~18_combout\,
	cout => \u1|count[1]~19\);

-- Location: FF_X39_Y30_N3
\u1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[1]~18_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(1));

-- Location: LCCOMB_X39_Y30_N4
\u1|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[2]~20_combout\ = (\u1|count\(2) & (\u1|count[1]~19\ $ (GND))) # (!\u1|count\(2) & (!\u1|count[1]~19\ & VCC))
-- \u1|count[2]~21\ = CARRY((\u1|count\(2) & !\u1|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(2),
	datad => VCC,
	cin => \u1|count[1]~19\,
	combout => \u1|count[2]~20_combout\,
	cout => \u1|count[2]~21\);

-- Location: FF_X39_Y30_N5
\u1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[2]~20_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(2));

-- Location: LCCOMB_X39_Y30_N6
\u1|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[3]~22_combout\ = (\u1|count\(3) & (!\u1|count[2]~21\)) # (!\u1|count\(3) & ((\u1|count[2]~21\) # (GND)))
-- \u1|count[3]~23\ = CARRY((!\u1|count[2]~21\) # (!\u1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(3),
	datad => VCC,
	cin => \u1|count[2]~21\,
	combout => \u1|count[3]~22_combout\,
	cout => \u1|count[3]~23\);

-- Location: FF_X39_Y30_N7
\u1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[3]~22_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(3));

-- Location: LCCOMB_X39_Y30_N8
\u1|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[4]~24_combout\ = (\u1|count\(4) & (\u1|count[3]~23\ $ (GND))) # (!\u1|count\(4) & (!\u1|count[3]~23\ & VCC))
-- \u1|count[4]~25\ = CARRY((\u1|count\(4) & !\u1|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(4),
	datad => VCC,
	cin => \u1|count[3]~23\,
	combout => \u1|count[4]~24_combout\,
	cout => \u1|count[4]~25\);

-- Location: FF_X39_Y30_N9
\u1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[4]~24_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(4));

-- Location: LCCOMB_X39_Y30_N10
\u1|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[5]~26_combout\ = (\u1|count\(5) & (!\u1|count[4]~25\)) # (!\u1|count\(5) & ((\u1|count[4]~25\) # (GND)))
-- \u1|count[5]~27\ = CARRY((!\u1|count[4]~25\) # (!\u1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(5),
	datad => VCC,
	cin => \u1|count[4]~25\,
	combout => \u1|count[5]~26_combout\,
	cout => \u1|count[5]~27\);

-- Location: FF_X39_Y30_N11
\u1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[5]~26_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(5));

-- Location: LCCOMB_X39_Y30_N12
\u1|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[6]~28_combout\ = (\u1|count\(6) & (\u1|count[5]~27\ $ (GND))) # (!\u1|count\(6) & (!\u1|count[5]~27\ & VCC))
-- \u1|count[6]~29\ = CARRY((\u1|count\(6) & !\u1|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(6),
	datad => VCC,
	cin => \u1|count[5]~27\,
	combout => \u1|count[6]~28_combout\,
	cout => \u1|count[6]~29\);

-- Location: FF_X39_Y30_N13
\u1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[6]~28_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(6));

-- Location: LCCOMB_X39_Y30_N14
\u1|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[7]~30_combout\ = (\u1|count\(7) & (!\u1|count[6]~29\)) # (!\u1|count\(7) & ((\u1|count[6]~29\) # (GND)))
-- \u1|count[7]~31\ = CARRY((!\u1|count[6]~29\) # (!\u1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(7),
	datad => VCC,
	cin => \u1|count[6]~29\,
	combout => \u1|count[7]~30_combout\,
	cout => \u1|count[7]~31\);

-- Location: FF_X39_Y30_N15
\u1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[7]~30_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(7));

-- Location: LCCOMB_X39_Y30_N16
\u1|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[8]~32_combout\ = (\u1|count\(8) & (\u1|count[7]~31\ $ (GND))) # (!\u1|count\(8) & (!\u1|count[7]~31\ & VCC))
-- \u1|count[8]~33\ = CARRY((\u1|count\(8) & !\u1|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(8),
	datad => VCC,
	cin => \u1|count[7]~31\,
	combout => \u1|count[8]~32_combout\,
	cout => \u1|count[8]~33\);

-- Location: FF_X39_Y30_N17
\u1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[8]~32_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(8));

-- Location: LCCOMB_X39_Y30_N18
\u1|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[9]~34_combout\ = (\u1|count\(9) & (!\u1|count[8]~33\)) # (!\u1|count\(9) & ((\u1|count[8]~33\) # (GND)))
-- \u1|count[9]~35\ = CARRY((!\u1|count[8]~33\) # (!\u1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(9),
	datad => VCC,
	cin => \u1|count[8]~33\,
	combout => \u1|count[9]~34_combout\,
	cout => \u1|count[9]~35\);

-- Location: FF_X39_Y30_N19
\u1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[9]~34_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(9));

-- Location: LCCOMB_X39_Y30_N20
\u1|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[10]~36_combout\ = (\u1|count\(10) & (\u1|count[9]~35\ $ (GND))) # (!\u1|count\(10) & (!\u1|count[9]~35\ & VCC))
-- \u1|count[10]~37\ = CARRY((\u1|count\(10) & !\u1|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(10),
	datad => VCC,
	cin => \u1|count[9]~35\,
	combout => \u1|count[10]~36_combout\,
	cout => \u1|count[10]~37\);

-- Location: FF_X39_Y30_N21
\u1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[10]~36_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(10));

-- Location: LCCOMB_X39_Y30_N22
\u1|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[11]~38_combout\ = (\u1|count\(11) & (!\u1|count[10]~37\)) # (!\u1|count\(11) & ((\u1|count[10]~37\) # (GND)))
-- \u1|count[11]~39\ = CARRY((!\u1|count[10]~37\) # (!\u1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(11),
	datad => VCC,
	cin => \u1|count[10]~37\,
	combout => \u1|count[11]~38_combout\,
	cout => \u1|count[11]~39\);

-- Location: FF_X39_Y30_N23
\u1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[11]~38_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(11));

-- Location: LCCOMB_X38_Y30_N12
\u1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~2_combout\ = (!\u1|count\(9) & (!\u1|count\(8) & (!\u1|count\(10) & !\u1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(9),
	datab => \u1|count\(8),
	datac => \u1|count\(10),
	datad => \u1|count\(11),
	combout => \u1|LessThan0~2_combout\);

-- Location: LCCOMB_X38_Y30_N18
\u1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = (!\u1|count\(5) & (!\u1|count\(6) & (!\u1|count\(4) & !\u1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(5),
	datab => \u1|count\(6),
	datac => \u1|count\(4),
	datad => \u1|count\(7),
	combout => \u1|LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y30_N24
\u1|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[12]~40_combout\ = (\u1|count\(12) & (\u1|count[11]~39\ $ (GND))) # (!\u1|count\(12) & (!\u1|count[11]~39\ & VCC))
-- \u1|count[12]~41\ = CARRY((\u1|count\(12) & !\u1|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(12),
	datad => VCC,
	cin => \u1|count[11]~39\,
	combout => \u1|count[12]~40_combout\,
	cout => \u1|count[12]~41\);

-- Location: FF_X39_Y30_N25
\u1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[12]~40_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(12));

-- Location: LCCOMB_X39_Y30_N26
\u1|count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[13]~42_combout\ = (\u1|count\(13) & (!\u1|count[12]~41\)) # (!\u1|count\(13) & ((\u1|count[12]~41\) # (GND)))
-- \u1|count[13]~43\ = CARRY((!\u1|count[12]~41\) # (!\u1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(13),
	datad => VCC,
	cin => \u1|count[12]~41\,
	combout => \u1|count[13]~42_combout\,
	cout => \u1|count[13]~43\);

-- Location: FF_X39_Y30_N27
\u1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[13]~42_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(13));

-- Location: LCCOMB_X39_Y30_N28
\u1|count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[14]~44_combout\ = (\u1|count\(14) & (\u1|count[13]~43\ $ (GND))) # (!\u1|count\(14) & (!\u1|count[13]~43\ & VCC))
-- \u1|count[14]~45\ = CARRY((\u1|count\(14) & !\u1|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(14),
	datad => VCC,
	cin => \u1|count[13]~43\,
	combout => \u1|count[14]~44_combout\,
	cout => \u1|count[14]~45\);

-- Location: FF_X39_Y30_N29
\u1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[14]~44_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(14));

-- Location: LCCOMB_X39_Y30_N30
\u1|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[15]~46_combout\ = \u1|count\(15) $ (\u1|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(15),
	cin => \u1|count[14]~45\,
	combout => \u1|count[15]~46_combout\);

-- Location: FF_X39_Y30_N31
\u1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|count[15]~46_combout\,
	sclr => \u1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(15));

-- Location: LCCOMB_X38_Y30_N30
\u1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~3_combout\ = (!\u1|count\(13) & (!\u1|count\(14) & (!\u1|count\(15) & !\u1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(13),
	datab => \u1|count\(14),
	datac => \u1|count\(15),
	datad => \u1|count\(12),
	combout => \u1|LessThan0~3_combout\);

-- Location: LCCOMB_X38_Y30_N28
\u1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (!\u1|count\(2) & (!\u1|count\(3) & ((!\u1|count\(1)) # (!\u1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datab => \u1|count\(3),
	datac => \u1|count\(0),
	datad => \u1|count\(1),
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y30_N0
\u1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~4_combout\ = (((!\u1|LessThan0~0_combout\) # (!\u1|LessThan0~3_combout\)) # (!\u1|LessThan0~1_combout\)) # (!\u1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~2_combout\,
	datab => \u1|LessThan0~1_combout\,
	datac => \u1|LessThan0~3_combout\,
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|LessThan0~4_combout\);

-- Location: LCCOMB_X25_Y33_N0
\u1|clk_out_bi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|clk_out_bi~0_combout\ = \u1|clk_out_bi~q\ $ (\u1|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|clk_out_bi~q\,
	datad => \u1|LessThan0~4_combout\,
	combout => \u1|clk_out_bi~0_combout\);

-- Location: FF_X25_Y33_N1
\u1|clk_out_bi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u1|clk_out_bi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clk_out_bi~q\);

-- Location: CLKCTRL_G12
\u1|clk_out_bi~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|clk_out_bi~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|clk_out_bi~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y2_N8
\u5|out_int[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[5]~25_combout\ = \u5|out_int\(5) $ (VCC)
-- \u5|out_int[5]~26\ = CARRY(\u5|out_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(5),
	datad => VCC,
	combout => \u5|out_int[5]~25_combout\,
	cout => \u5|out_int[5]~26\);

-- Location: LCCOMB_X28_Y1_N22
\u5|out_int[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[28]~71_combout\ = (\u5|out_int\(28) & (!\u5|out_int[27]~70\)) # (!\u5|out_int\(28) & ((\u5|out_int[27]~70\) # (GND)))
-- \u5|out_int[28]~72\ = CARRY((!\u5|out_int[27]~70\) # (!\u5|out_int\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_int\(28),
	datad => VCC,
	cin => \u5|out_int[27]~70\,
	combout => \u5|out_int[28]~71_combout\,
	cout => \u5|out_int[28]~72\);

-- Location: LCCOMB_X28_Y1_N24
\u5|out_int[29]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[29]~73_combout\ = \u5|out_int[28]~72\ $ (!\u5|out_int\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u5|out_int\(29),
	cin => \u5|out_int[28]~72\,
	combout => \u5|out_int[29]~73_combout\);

-- Location: FF_X28_Y1_N25
\u5|out_int[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[29]~73_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(29));

-- Location: FF_X28_Y2_N9
\u5|out_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[5]~25_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(5));

-- Location: LCCOMB_X28_Y2_N10
\u5|out_int[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[6]~27_combout\ = (\u5|out_int\(6) & (\u5|out_int[5]~26\ & VCC)) # (!\u5|out_int\(6) & (!\u5|out_int[5]~26\))
-- \u5|out_int[6]~28\ = CARRY((!\u5|out_int\(6) & !\u5|out_int[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_int\(6),
	datad => VCC,
	cin => \u5|out_int[5]~26\,
	combout => \u5|out_int[6]~27_combout\,
	cout => \u5|out_int[6]~28\);

-- Location: FF_X28_Y2_N11
\u5|out_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[6]~27_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(6));

-- Location: LCCOMB_X28_Y2_N12
\u5|out_int[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[7]~29_combout\ = (\u5|out_int\(7) & ((GND) # (!\u5|out_int[6]~28\))) # (!\u5|out_int\(7) & (\u5|out_int[6]~28\ $ (GND)))
-- \u5|out_int[7]~30\ = CARRY((\u5|out_int\(7)) # (!\u5|out_int[6]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_int\(7),
	datad => VCC,
	cin => \u5|out_int[6]~28\,
	combout => \u5|out_int[7]~29_combout\,
	cout => \u5|out_int[7]~30\);

-- Location: FF_X28_Y2_N13
\u5|out_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[7]~29_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(7));

-- Location: LCCOMB_X28_Y2_N14
\u5|out_int[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[8]~31_combout\ = (\u5|out_int\(8) & (!\u5|out_int[7]~30\)) # (!\u5|out_int\(8) & ((\u5|out_int[7]~30\) # (GND)))
-- \u5|out_int[8]~32\ = CARRY((!\u5|out_int[7]~30\) # (!\u5|out_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(8),
	datad => VCC,
	cin => \u5|out_int[7]~30\,
	combout => \u5|out_int[8]~31_combout\,
	cout => \u5|out_int[8]~32\);

-- Location: FF_X28_Y2_N15
\u5|out_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[8]~31_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(8));

-- Location: LCCOMB_X28_Y2_N16
\u5|out_int[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[9]~33_combout\ = (\u5|out_int\(9) & ((GND) # (!\u5|out_int[8]~32\))) # (!\u5|out_int\(9) & (\u5|out_int[8]~32\ $ (GND)))
-- \u5|out_int[9]~34\ = CARRY((\u5|out_int\(9)) # (!\u5|out_int[8]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(9),
	datad => VCC,
	cin => \u5|out_int[8]~32\,
	combout => \u5|out_int[9]~33_combout\,
	cout => \u5|out_int[9]~34\);

-- Location: FF_X28_Y2_N17
\u5|out_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[9]~33_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(9));

-- Location: LCCOMB_X28_Y2_N18
\u5|out_int[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[10]~35_combout\ = (\u5|out_int\(10) & (!\u5|out_int[9]~34\)) # (!\u5|out_int\(10) & ((\u5|out_int[9]~34\) # (GND)))
-- \u5|out_int[10]~36\ = CARRY((!\u5|out_int[9]~34\) # (!\u5|out_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(10),
	datad => VCC,
	cin => \u5|out_int[9]~34\,
	combout => \u5|out_int[10]~35_combout\,
	cout => \u5|out_int[10]~36\);

-- Location: FF_X28_Y2_N19
\u5|out_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[10]~35_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(10));

-- Location: LCCOMB_X28_Y2_N20
\u5|out_int[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[11]~37_combout\ = (\u5|out_int\(11) & (\u5|out_int[10]~36\ $ (GND))) # (!\u5|out_int\(11) & (!\u5|out_int[10]~36\ & VCC))
-- \u5|out_int[11]~38\ = CARRY((\u5|out_int\(11) & !\u5|out_int[10]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(11),
	datad => VCC,
	cin => \u5|out_int[10]~36\,
	combout => \u5|out_int[11]~37_combout\,
	cout => \u5|out_int[11]~38\);

-- Location: FF_X28_Y2_N21
\u5|out_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[11]~37_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(11));

-- Location: LCCOMB_X28_Y2_N22
\u5|out_int[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[12]~39_combout\ = (\u5|out_int\(12) & (\u5|out_int[11]~38\ & VCC)) # (!\u5|out_int\(12) & (!\u5|out_int[11]~38\))
-- \u5|out_int[12]~40\ = CARRY((!\u5|out_int\(12) & !\u5|out_int[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_int\(12),
	datad => VCC,
	cin => \u5|out_int[11]~38\,
	combout => \u5|out_int[12]~39_combout\,
	cout => \u5|out_int[12]~40\);

-- Location: FF_X28_Y2_N23
\u5|out_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[12]~39_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(12));

-- Location: LCCOMB_X28_Y2_N24
\u5|out_int[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[13]~41_combout\ = (\u5|out_int\(13) & (\u5|out_int[12]~40\ $ (GND))) # (!\u5|out_int\(13) & (!\u5|out_int[12]~40\ & VCC))
-- \u5|out_int[13]~42\ = CARRY((\u5|out_int\(13) & !\u5|out_int[12]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(13),
	datad => VCC,
	cin => \u5|out_int[12]~40\,
	combout => \u5|out_int[13]~41_combout\,
	cout => \u5|out_int[13]~42\);

-- Location: FF_X28_Y2_N25
\u5|out_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[13]~41_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(13));

-- Location: LCCOMB_X28_Y2_N26
\u5|out_int[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[14]~43_combout\ = (\u5|out_int\(14) & (!\u5|out_int[13]~42\)) # (!\u5|out_int\(14) & ((\u5|out_int[13]~42\) # (GND)))
-- \u5|out_int[14]~44\ = CARRY((!\u5|out_int[13]~42\) # (!\u5|out_int\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_int\(14),
	datad => VCC,
	cin => \u5|out_int[13]~42\,
	combout => \u5|out_int[14]~43_combout\,
	cout => \u5|out_int[14]~44\);

-- Location: FF_X28_Y2_N27
\u5|out_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[14]~43_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(14));

-- Location: LCCOMB_X28_Y2_N28
\u5|out_int[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[15]~45_combout\ = (\u5|out_int\(15) & (\u5|out_int[14]~44\ $ (GND))) # (!\u5|out_int\(15) & (!\u5|out_int[14]~44\ & VCC))
-- \u5|out_int[15]~46\ = CARRY((\u5|out_int\(15) & !\u5|out_int[14]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(15),
	datad => VCC,
	cin => \u5|out_int[14]~44\,
	combout => \u5|out_int[15]~45_combout\,
	cout => \u5|out_int[15]~46\);

-- Location: FF_X28_Y2_N29
\u5|out_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[15]~45_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(15));

-- Location: LCCOMB_X28_Y2_N30
\u5|out_int[16]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[16]~47_combout\ = (\u5|out_int\(16) & (!\u5|out_int[15]~46\)) # (!\u5|out_int\(16) & ((\u5|out_int[15]~46\) # (GND)))
-- \u5|out_int[16]~48\ = CARRY((!\u5|out_int[15]~46\) # (!\u5|out_int\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_int\(16),
	datad => VCC,
	cin => \u5|out_int[15]~46\,
	combout => \u5|out_int[16]~47_combout\,
	cout => \u5|out_int[16]~48\);

-- Location: FF_X28_Y2_N31
\u5|out_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[16]~47_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(16));

-- Location: LCCOMB_X28_Y1_N0
\u5|out_int[17]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[17]~49_combout\ = (\u5|out_int\(17) & (\u5|out_int[16]~48\ $ (GND))) # (!\u5|out_int\(17) & (!\u5|out_int[16]~48\ & VCC))
-- \u5|out_int[17]~50\ = CARRY((\u5|out_int\(17) & !\u5|out_int[16]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(17),
	datad => VCC,
	cin => \u5|out_int[16]~48\,
	combout => \u5|out_int[17]~49_combout\,
	cout => \u5|out_int[17]~50\);

-- Location: FF_X28_Y1_N1
\u5|out_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[17]~49_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(17));

-- Location: LCCOMB_X28_Y1_N2
\u5|out_int[18]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[18]~51_combout\ = (\u5|out_int\(18) & (!\u5|out_int[17]~50\)) # (!\u5|out_int\(18) & ((\u5|out_int[17]~50\) # (GND)))
-- \u5|out_int[18]~52\ = CARRY((!\u5|out_int[17]~50\) # (!\u5|out_int\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(18),
	datad => VCC,
	cin => \u5|out_int[17]~50\,
	combout => \u5|out_int[18]~51_combout\,
	cout => \u5|out_int[18]~52\);

-- Location: FF_X28_Y1_N3
\u5|out_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[18]~51_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(18));

-- Location: LCCOMB_X28_Y1_N4
\u5|out_int[19]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[19]~53_combout\ = (\u5|out_int\(19) & (\u5|out_int[18]~52\ $ (GND))) # (!\u5|out_int\(19) & (!\u5|out_int[18]~52\ & VCC))
-- \u5|out_int[19]~54\ = CARRY((\u5|out_int\(19) & !\u5|out_int[18]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(19),
	datad => VCC,
	cin => \u5|out_int[18]~52\,
	combout => \u5|out_int[19]~53_combout\,
	cout => \u5|out_int[19]~54\);

-- Location: FF_X28_Y1_N5
\u5|out_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[19]~53_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(19));

-- Location: LCCOMB_X28_Y1_N6
\u5|out_int[20]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[20]~55_combout\ = (\u5|out_int\(20) & (!\u5|out_int[19]~54\)) # (!\u5|out_int\(20) & ((\u5|out_int[19]~54\) # (GND)))
-- \u5|out_int[20]~56\ = CARRY((!\u5|out_int[19]~54\) # (!\u5|out_int\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_int\(20),
	datad => VCC,
	cin => \u5|out_int[19]~54\,
	combout => \u5|out_int[20]~55_combout\,
	cout => \u5|out_int[20]~56\);

-- Location: FF_X28_Y1_N7
\u5|out_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[20]~55_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(20));

-- Location: LCCOMB_X28_Y1_N8
\u5|out_int[21]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[21]~57_combout\ = (\u5|out_int\(21) & (\u5|out_int[20]~56\ $ (GND))) # (!\u5|out_int\(21) & (!\u5|out_int[20]~56\ & VCC))
-- \u5|out_int[21]~58\ = CARRY((\u5|out_int\(21) & !\u5|out_int[20]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(21),
	datad => VCC,
	cin => \u5|out_int[20]~56\,
	combout => \u5|out_int[21]~57_combout\,
	cout => \u5|out_int[21]~58\);

-- Location: FF_X28_Y1_N9
\u5|out_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[21]~57_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(21));

-- Location: LCCOMB_X28_Y1_N10
\u5|out_int[22]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[22]~59_combout\ = (\u5|out_int\(22) & (!\u5|out_int[21]~58\)) # (!\u5|out_int\(22) & ((\u5|out_int[21]~58\) # (GND)))
-- \u5|out_int[22]~60\ = CARRY((!\u5|out_int[21]~58\) # (!\u5|out_int\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_int\(22),
	datad => VCC,
	cin => \u5|out_int[21]~58\,
	combout => \u5|out_int[22]~59_combout\,
	cout => \u5|out_int[22]~60\);

-- Location: FF_X28_Y1_N11
\u5|out_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[22]~59_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(22));

-- Location: LCCOMB_X28_Y1_N12
\u5|out_int[23]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[23]~61_combout\ = (\u5|out_int\(23) & (\u5|out_int[22]~60\ $ (GND))) # (!\u5|out_int\(23) & (!\u5|out_int[22]~60\ & VCC))
-- \u5|out_int[23]~62\ = CARRY((\u5|out_int\(23) & !\u5|out_int[22]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_int\(23),
	datad => VCC,
	cin => \u5|out_int[22]~60\,
	combout => \u5|out_int[23]~61_combout\,
	cout => \u5|out_int[23]~62\);

-- Location: FF_X28_Y1_N13
\u5|out_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[23]~61_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(23));

-- Location: LCCOMB_X28_Y1_N14
\u5|out_int[24]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[24]~63_combout\ = (\u5|out_int\(24) & (!\u5|out_int[23]~62\)) # (!\u5|out_int\(24) & ((\u5|out_int[23]~62\) # (GND)))
-- \u5|out_int[24]~64\ = CARRY((!\u5|out_int[23]~62\) # (!\u5|out_int\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(24),
	datad => VCC,
	cin => \u5|out_int[23]~62\,
	combout => \u5|out_int[24]~63_combout\,
	cout => \u5|out_int[24]~64\);

-- Location: FF_X28_Y1_N15
\u5|out_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[24]~63_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(24));

-- Location: LCCOMB_X28_Y1_N16
\u5|out_int[25]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[25]~65_combout\ = (\u5|out_int\(25) & (\u5|out_int[24]~64\ $ (GND))) # (!\u5|out_int\(25) & (!\u5|out_int[24]~64\ & VCC))
-- \u5|out_int[25]~66\ = CARRY((\u5|out_int\(25) & !\u5|out_int[24]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(25),
	datad => VCC,
	cin => \u5|out_int[24]~64\,
	combout => \u5|out_int[25]~65_combout\,
	cout => \u5|out_int[25]~66\);

-- Location: FF_X28_Y1_N17
\u5|out_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[25]~65_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(25));

-- Location: LCCOMB_X28_Y1_N18
\u5|out_int[26]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[26]~67_combout\ = (\u5|out_int\(26) & (!\u5|out_int[25]~66\)) # (!\u5|out_int\(26) & ((\u5|out_int[25]~66\) # (GND)))
-- \u5|out_int[26]~68\ = CARRY((!\u5|out_int[25]~66\) # (!\u5|out_int\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(26),
	datad => VCC,
	cin => \u5|out_int[25]~66\,
	combout => \u5|out_int[26]~67_combout\,
	cout => \u5|out_int[26]~68\);

-- Location: FF_X28_Y1_N19
\u5|out_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[26]~67_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(26));

-- Location: LCCOMB_X28_Y1_N20
\u5|out_int[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_int[27]~69_combout\ = (\u5|out_int\(27) & (\u5|out_int[26]~68\ $ (GND))) # (!\u5|out_int\(27) & (!\u5|out_int[26]~68\ & VCC))
-- \u5|out_int[27]~70\ = CARRY((\u5|out_int\(27) & !\u5|out_int[26]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|out_int\(27),
	datad => VCC,
	cin => \u5|out_int[26]~68\,
	combout => \u5|out_int[27]~69_combout\,
	cout => \u5|out_int[27]~70\);

-- Location: FF_X28_Y1_N21
\u5|out_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[27]~69_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(27));

-- Location: FF_X28_Y1_N23
\u5|out_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|out_int[28]~71_combout\,
	sclr => \u5|out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_int\(28));

-- Location: LCCOMB_X28_Y1_N28
\u5|sinc_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|sinc_int~feeder_combout\ = \u5|out_int\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|out_int\(28),
	combout => \u5|sinc_int~feeder_combout\);

-- Location: FF_X28_Y1_N29
\u5|sinc_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_out_bi~clkctrl_outclk\,
	d => \u5|sinc_int~feeder_combout\,
	ena => \u5|ALT_INV_out_int\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|sinc_int~q\);

-- Location: CLKCTRL_G17
\u5|sinc_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u5|sinc_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u5|sinc_int~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y33_N0
\uled|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[0]~16_combout\ = \uled|count\(0) $ (VCC)
-- \uled|count[0]~17\ = CARRY(\uled|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uled|count\(0),
	datad => VCC,
	combout => \uled|count[0]~16_combout\,
	cout => \uled|count[0]~17\);

-- Location: FF_X44_Y33_N1
\uled|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[0]~16_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(0));

-- Location: LCCOMB_X44_Y33_N2
\uled|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[1]~18_combout\ = (\uled|count\(1) & (!\uled|count[0]~17\)) # (!\uled|count\(1) & ((\uled|count[0]~17\) # (GND)))
-- \uled|count[1]~19\ = CARRY((!\uled|count[0]~17\) # (!\uled|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uled|count\(1),
	datad => VCC,
	cin => \uled|count[0]~17\,
	combout => \uled|count[1]~18_combout\,
	cout => \uled|count[1]~19\);

-- Location: FF_X44_Y33_N3
\uled|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[1]~18_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(1));

-- Location: LCCOMB_X44_Y33_N4
\uled|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[2]~20_combout\ = (\uled|count\(2) & (\uled|count[1]~19\ $ (GND))) # (!\uled|count\(2) & (!\uled|count[1]~19\ & VCC))
-- \uled|count[2]~21\ = CARRY((\uled|count\(2) & !\uled|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uled|count\(2),
	datad => VCC,
	cin => \uled|count[1]~19\,
	combout => \uled|count[2]~20_combout\,
	cout => \uled|count[2]~21\);

-- Location: FF_X44_Y33_N5
\uled|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[2]~20_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(2));

-- Location: LCCOMB_X44_Y33_N6
\uled|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[3]~22_combout\ = (\uled|count\(3) & (!\uled|count[2]~21\)) # (!\uled|count\(3) & ((\uled|count[2]~21\) # (GND)))
-- \uled|count[3]~23\ = CARRY((!\uled|count[2]~21\) # (!\uled|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(3),
	datad => VCC,
	cin => \uled|count[2]~21\,
	combout => \uled|count[3]~22_combout\,
	cout => \uled|count[3]~23\);

-- Location: FF_X44_Y33_N7
\uled|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[3]~22_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(3));

-- Location: LCCOMB_X44_Y33_N8
\uled|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[4]~24_combout\ = (\uled|count\(4) & (\uled|count[3]~23\ $ (GND))) # (!\uled|count\(4) & (!\uled|count[3]~23\ & VCC))
-- \uled|count[4]~25\ = CARRY((\uled|count\(4) & !\uled|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uled|count\(4),
	datad => VCC,
	cin => \uled|count[3]~23\,
	combout => \uled|count[4]~24_combout\,
	cout => \uled|count[4]~25\);

-- Location: FF_X44_Y33_N9
\uled|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[4]~24_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(4));

-- Location: LCCOMB_X44_Y33_N10
\uled|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[5]~26_combout\ = (\uled|count\(5) & (!\uled|count[4]~25\)) # (!\uled|count\(5) & ((\uled|count[4]~25\) # (GND)))
-- \uled|count[5]~27\ = CARRY((!\uled|count[4]~25\) # (!\uled|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(5),
	datad => VCC,
	cin => \uled|count[4]~25\,
	combout => \uled|count[5]~26_combout\,
	cout => \uled|count[5]~27\);

-- Location: FF_X44_Y33_N11
\uled|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[5]~26_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(5));

-- Location: LCCOMB_X44_Y33_N12
\uled|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[6]~28_combout\ = (\uled|count\(6) & (\uled|count[5]~27\ $ (GND))) # (!\uled|count\(6) & (!\uled|count[5]~27\ & VCC))
-- \uled|count[6]~29\ = CARRY((\uled|count\(6) & !\uled|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(6),
	datad => VCC,
	cin => \uled|count[5]~27\,
	combout => \uled|count[6]~28_combout\,
	cout => \uled|count[6]~29\);

-- Location: FF_X44_Y33_N13
\uled|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[6]~28_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(6));

-- Location: LCCOMB_X44_Y33_N14
\uled|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[7]~30_combout\ = (\uled|count\(7) & (!\uled|count[6]~29\)) # (!\uled|count\(7) & ((\uled|count[6]~29\) # (GND)))
-- \uled|count[7]~31\ = CARRY((!\uled|count[6]~29\) # (!\uled|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uled|count\(7),
	datad => VCC,
	cin => \uled|count[6]~29\,
	combout => \uled|count[7]~30_combout\,
	cout => \uled|count[7]~31\);

-- Location: FF_X44_Y33_N15
\uled|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[7]~30_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(7));

-- Location: LCCOMB_X44_Y33_N16
\uled|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[8]~32_combout\ = (\uled|count\(8) & (\uled|count[7]~31\ $ (GND))) # (!\uled|count\(8) & (!\uled|count[7]~31\ & VCC))
-- \uled|count[8]~33\ = CARRY((\uled|count\(8) & !\uled|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uled|count\(8),
	datad => VCC,
	cin => \uled|count[7]~31\,
	combout => \uled|count[8]~32_combout\,
	cout => \uled|count[8]~33\);

-- Location: FF_X44_Y33_N17
\uled|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[8]~32_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(8));

-- Location: LCCOMB_X44_Y33_N18
\uled|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[9]~34_combout\ = (\uled|count\(9) & (!\uled|count[8]~33\)) # (!\uled|count\(9) & ((\uled|count[8]~33\) # (GND)))
-- \uled|count[9]~35\ = CARRY((!\uled|count[8]~33\) # (!\uled|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uled|count\(9),
	datad => VCC,
	cin => \uled|count[8]~33\,
	combout => \uled|count[9]~34_combout\,
	cout => \uled|count[9]~35\);

-- Location: FF_X44_Y33_N19
\uled|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[9]~34_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(9));

-- Location: LCCOMB_X44_Y33_N20
\uled|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[10]~36_combout\ = (\uled|count\(10) & (\uled|count[9]~35\ $ (GND))) # (!\uled|count\(10) & (!\uled|count[9]~35\ & VCC))
-- \uled|count[10]~37\ = CARRY((\uled|count\(10) & !\uled|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uled|count\(10),
	datad => VCC,
	cin => \uled|count[9]~35\,
	combout => \uled|count[10]~36_combout\,
	cout => \uled|count[10]~37\);

-- Location: FF_X44_Y33_N21
\uled|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[10]~36_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(10));

-- Location: LCCOMB_X44_Y33_N22
\uled|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[11]~38_combout\ = (\uled|count\(11) & (!\uled|count[10]~37\)) # (!\uled|count\(11) & ((\uled|count[10]~37\) # (GND)))
-- \uled|count[11]~39\ = CARRY((!\uled|count[10]~37\) # (!\uled|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(11),
	datad => VCC,
	cin => \uled|count[10]~37\,
	combout => \uled|count[11]~38_combout\,
	cout => \uled|count[11]~39\);

-- Location: FF_X44_Y33_N23
\uled|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[11]~38_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(11));

-- Location: LCCOMB_X43_Y33_N30
\uled|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|LessThan0~2_combout\ = (!\uled|count\(10) & (!\uled|count\(9) & (!\uled|count\(8) & !\uled|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(10),
	datab => \uled|count\(9),
	datac => \uled|count\(8),
	datad => \uled|count\(11),
	combout => \uled|LessThan0~2_combout\);

-- Location: LCCOMB_X43_Y33_N18
\uled|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|LessThan0~0_combout\ = (!\uled|count\(3) & (((!\uled|count\(0) & !\uled|count\(1))) # (!\uled|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(2),
	datab => \uled|count\(0),
	datac => \uled|count\(1),
	datad => \uled|count\(3),
	combout => \uled|LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y33_N8
\uled|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|LessThan0~1_combout\ = (!\uled|count\(6) & (!\uled|count\(5) & (!\uled|count\(4) & !\uled|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(6),
	datab => \uled|count\(5),
	datac => \uled|count\(4),
	datad => \uled|count\(7),
	combout => \uled|LessThan0~1_combout\);

-- Location: LCCOMB_X44_Y33_N24
\uled|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[12]~40_combout\ = (\uled|count\(12) & (\uled|count[11]~39\ $ (GND))) # (!\uled|count\(12) & (!\uled|count[11]~39\ & VCC))
-- \uled|count[12]~41\ = CARRY((\uled|count\(12) & !\uled|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uled|count\(12),
	datad => VCC,
	cin => \uled|count[11]~39\,
	combout => \uled|count[12]~40_combout\,
	cout => \uled|count[12]~41\);

-- Location: FF_X44_Y33_N25
\uled|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[12]~40_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(12));

-- Location: LCCOMB_X44_Y33_N26
\uled|count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[13]~42_combout\ = (\uled|count\(13) & (!\uled|count[12]~41\)) # (!\uled|count\(13) & ((\uled|count[12]~41\) # (GND)))
-- \uled|count[13]~43\ = CARRY((!\uled|count[12]~41\) # (!\uled|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(13),
	datad => VCC,
	cin => \uled|count[12]~41\,
	combout => \uled|count[13]~42_combout\,
	cout => \uled|count[13]~43\);

-- Location: FF_X44_Y33_N27
\uled|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[13]~42_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(13));

-- Location: LCCOMB_X44_Y33_N28
\uled|count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[14]~44_combout\ = (\uled|count\(14) & (\uled|count[13]~43\ $ (GND))) # (!\uled|count\(14) & (!\uled|count[13]~43\ & VCC))
-- \uled|count[14]~45\ = CARRY((\uled|count\(14) & !\uled|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uled|count\(14),
	datad => VCC,
	cin => \uled|count[13]~43\,
	combout => \uled|count[14]~44_combout\,
	cout => \uled|count[14]~45\);

-- Location: FF_X44_Y33_N29
\uled|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[14]~44_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(14));

-- Location: LCCOMB_X44_Y33_N30
\uled|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[15]~46_combout\ = \uled|count[14]~45\ $ (\uled|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uled|count\(15),
	cin => \uled|count[14]~45\,
	combout => \uled|count[15]~46_combout\);

-- Location: FF_X44_Y33_N31
\uled|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|count[15]~46_combout\,
	sclr => \uled|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|count\(15));

-- Location: LCCOMB_X43_Y33_N12
\uled|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|LessThan0~3_combout\ = (!\uled|count\(15) & (!\uled|count\(13) & (!\uled|count\(12) & !\uled|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(15),
	datab => \uled|count\(13),
	datac => \uled|count\(12),
	datad => \uled|count\(14),
	combout => \uled|LessThan0~3_combout\);

-- Location: LCCOMB_X43_Y33_N6
\uled|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|LessThan0~4_combout\ = (((!\uled|LessThan0~3_combout\) # (!\uled|LessThan0~1_combout\)) # (!\uled|LessThan0~0_combout\)) # (!\uled|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uled|LessThan0~2_combout\,
	datab => \uled|LessThan0~0_combout\,
	datac => \uled|LessThan0~1_combout\,
	datad => \uled|LessThan0~3_combout\,
	combout => \uled|LessThan0~4_combout\);

-- Location: LCCOMB_X43_Y33_N24
\uled|clk_out_bi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|clk_out_bi~0_combout\ = \uled|clk_out_bi~q\ $ (\uled|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uled|clk_out_bi~q\,
	datad => \uled|LessThan0~4_combout\,
	combout => \uled|clk_out_bi~0_combout\);

-- Location: FF_X43_Y33_N25
\uled|clk_out_bi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|sinc_int~clkctrl_outclk\,
	d => \uled|clk_out_bi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uled|clk_out_bi~q\);

-- Location: IOIBUF_X0_Y16_N22
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\INT0_FA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT0_FA(0),
	o => \INT0_FA[0]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\INT0_FA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT0_FA(1),
	o => \INT0_FA[1]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\INT0_FA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT0_FA(2),
	o => \INT0_FA[2]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\INT0_FB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT0_FB(0),
	o => \INT0_FB[0]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\INT0_FB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT0_FB(1),
	o => \INT0_FB[1]~input_o\);

-- Location: IOIBUF_X51_Y34_N22
\INT0_FB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT0_FB(2),
	o => \INT0_FB[2]~input_o\);

-- Location: IOIBUF_X53_Y6_N15
\INT0_FC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT0_FC(0),
	o => \INT0_FC[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\INT0_FC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT0_FC(1),
	o => \INT0_FC[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\INT0_FC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT0_FC(2),
	o => \INT0_FC[2]~input_o\);
END structure;


