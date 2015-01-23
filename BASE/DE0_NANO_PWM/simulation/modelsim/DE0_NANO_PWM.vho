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

-- DATE "01/23/2015 09:41:58"

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
	INT0_FC : IN std_logic_vector(2 DOWNTO 0);
	GPIO_0 : OUT std_logic_vector(3 DOWNTO 0)
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
-- GPIO_0[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_GPIO_0 : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
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
SIGNAL \u1|count[11]~39\ : std_logic;
SIGNAL \u1|count[12]~40_combout\ : std_logic;
SIGNAL \u1|count[12]~41\ : std_logic;
SIGNAL \u1|count[13]~42_combout\ : std_logic;
SIGNAL \u1|count[13]~43\ : std_logic;
SIGNAL \u1|count[14]~44_combout\ : std_logic;
SIGNAL \u1|count[14]~45\ : std_logic;
SIGNAL \u1|count[15]~46_combout\ : std_logic;
SIGNAL \u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|LessThan0~2_combout\ : std_logic;
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
SIGNAL \uled|LessThan0~0_combout\ : std_logic;
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
SIGNAL \uled|count[11]~39\ : std_logic;
SIGNAL \uled|count[12]~40_combout\ : std_logic;
SIGNAL \uled|count[12]~41\ : std_logic;
SIGNAL \uled|count[13]~42_combout\ : std_logic;
SIGNAL \uled|count[13]~43\ : std_logic;
SIGNAL \uled|count[14]~44_combout\ : std_logic;
SIGNAL \uled|count[14]~45\ : std_logic;
SIGNAL \uled|count[15]~46_combout\ : std_logic;
SIGNAL \uled|LessThan0~3_combout\ : std_logic;
SIGNAL \uled|LessThan0~2_combout\ : std_logic;
SIGNAL \uled|LessThan0~1_combout\ : std_logic;
SIGNAL \uled|LessThan0~4_combout\ : std_logic;
SIGNAL \uled|clk_out_bi~0_combout\ : std_logic;
SIGNAL \uled|clk_out_bi~q\ : std_logic;
SIGNAL \uc2|c_int[0]~16_combout\ : std_logic;
SIGNAL \uc2|c_int[0]~16_wirecell_combout\ : std_logic;
SIGNAL \uc1|c_int[1]~16_cout\ : std_logic;
SIGNAL \uc1|c_int[1]~17_combout\ : std_logic;
SIGNAL \uc1|Add1~0_combout\ : std_logic;
SIGNAL \uc1|c_int[15]~39_combout\ : std_logic;
SIGNAL \uc1|c_int[15]~40_combout\ : std_logic;
SIGNAL \uc1|dir_int~q\ : std_logic;
SIGNAL \ucomp|LessThan0~3_combout\ : std_logic;
SIGNAL \uc1|c_int[15]~41_combout\ : std_logic;
SIGNAL \uc1|c_int[15]~42_combout\ : std_logic;
SIGNAL \uc1|c_int[15]~43_combout\ : std_logic;
SIGNAL \uc1|c_int[15]~44_combout\ : std_logic;
SIGNAL \uc1|c_int[15]~45_combout\ : std_logic;
SIGNAL \uc1|c_int[1]~18\ : std_logic;
SIGNAL \uc1|c_int[2]~19_combout\ : std_logic;
SIGNAL \uc1|Add1~1\ : std_logic;
SIGNAL \uc1|Add1~2_combout\ : std_logic;
SIGNAL \uc1|c_int[2]~20\ : std_logic;
SIGNAL \uc1|c_int[3]~21_combout\ : std_logic;
SIGNAL \uc1|Add1~3\ : std_logic;
SIGNAL \uc1|Add1~4_combout\ : std_logic;
SIGNAL \uc1|c_int[3]~22\ : std_logic;
SIGNAL \uc1|c_int[4]~23_combout\ : std_logic;
SIGNAL \uc1|Add1~5\ : std_logic;
SIGNAL \uc1|Add1~6_combout\ : std_logic;
SIGNAL \uc1|c_int[4]~24\ : std_logic;
SIGNAL \uc1|c_int[5]~25_combout\ : std_logic;
SIGNAL \uc1|Add1~7\ : std_logic;
SIGNAL \uc1|Add1~8_combout\ : std_logic;
SIGNAL \uc1|c_int[5]~26\ : std_logic;
SIGNAL \uc1|c_int[6]~27_combout\ : std_logic;
SIGNAL \uc1|Add1~9\ : std_logic;
SIGNAL \uc1|Add1~10_combout\ : std_logic;
SIGNAL \uc1|c_int[6]~28\ : std_logic;
SIGNAL \uc1|c_int[7]~29_combout\ : std_logic;
SIGNAL \uc1|Add1~11\ : std_logic;
SIGNAL \uc1|Add1~12_combout\ : std_logic;
SIGNAL \uc1|c_int[7]~30\ : std_logic;
SIGNAL \uc1|c_int[8]~31_combout\ : std_logic;
SIGNAL \uc1|Add1~13\ : std_logic;
SIGNAL \uc1|Add1~14_combout\ : std_logic;
SIGNAL \uc1|c_int[8]~32\ : std_logic;
SIGNAL \uc1|c_int[9]~33_combout\ : std_logic;
SIGNAL \uc1|Add1~15\ : std_logic;
SIGNAL \uc1|Add1~16_combout\ : std_logic;
SIGNAL \uc1|c_int[9]~34\ : std_logic;
SIGNAL \uc1|c_int[10]~35_combout\ : std_logic;
SIGNAL \uc1|Add1~17\ : std_logic;
SIGNAL \uc1|Add1~18_combout\ : std_logic;
SIGNAL \uc1|c_int[10]~36\ : std_logic;
SIGNAL \uc1|c_int[11]~37_combout\ : std_logic;
SIGNAL \uc1|Add1~19\ : std_logic;
SIGNAL \uc1|Add1~20_combout\ : std_logic;
SIGNAL \uc1|c_int[11]~38\ : std_logic;
SIGNAL \uc1|c_int[12]~46_combout\ : std_logic;
SIGNAL \uc1|Add1~21\ : std_logic;
SIGNAL \uc1|Add1~22_combout\ : std_logic;
SIGNAL \uc1|c_int[12]~47\ : std_logic;
SIGNAL \uc1|c_int[13]~48_combout\ : std_logic;
SIGNAL \uc1|Add1~23\ : std_logic;
SIGNAL \uc1|Add1~24_combout\ : std_logic;
SIGNAL \uc1|c_int[13]~49\ : std_logic;
SIGNAL \uc1|c_int[14]~50_combout\ : std_logic;
SIGNAL \uc1|Add1~25\ : std_logic;
SIGNAL \uc1|Add1~26_combout\ : std_logic;
SIGNAL \ucomp|LessThan0~0_combout\ : std_logic;
SIGNAL \uc1|c_int[14]~51\ : std_logic;
SIGNAL \uc1|c_int[15]~52_combout\ : std_logic;
SIGNAL \uc1|Add1~27\ : std_logic;
SIGNAL \uc1|Add1~28_combout\ : std_logic;
SIGNAL \ucomp|LessThan0~1_combout\ : std_logic;
SIGNAL \ucomp|LessThan0~2_combout\ : std_logic;
SIGNAL \ucomp|LessThan0~4_combout\ : std_logic;
SIGNAL \ucomp|LessThan0~5_combout\ : std_logic;
SIGNAL \ucomp|comp_out~q\ : std_logic;
SIGNAL \uc2|c_int[0]~17\ : std_logic;
SIGNAL \uc2|c_int[1]~26_combout\ : std_logic;
SIGNAL \uc2|c_int[1]~26_wirecell_combout\ : std_logic;
SIGNAL \uc2|c_int[1]~27\ : std_logic;
SIGNAL \uc2|c_int[2]~28_combout\ : std_logic;
SIGNAL \uc2|c_int[2]~29\ : std_logic;
SIGNAL \uc2|c_int[3]~30_combout\ : std_logic;
SIGNAL \uc2|c_int[3]~30_wirecell_combout\ : std_logic;
SIGNAL \uc2|c_int[3]~31\ : std_logic;
SIGNAL \uc2|c_int[4]~32_combout\ : std_logic;
SIGNAL \uc2|c_int[4]~32_wirecell_combout\ : std_logic;
SIGNAL \uc2|c_int[4]~33\ : std_logic;
SIGNAL \uc2|c_int[5]~34_combout\ : std_logic;
SIGNAL \uc2|c_int[5]~35\ : std_logic;
SIGNAL \uc2|c_int[6]~36_combout\ : std_logic;
SIGNAL \uc2|c_int[6]~37\ : std_logic;
SIGNAL \uc2|c_int[7]~38_combout\ : std_logic;
SIGNAL \uc2|c_int[7]~38_wirecell_combout\ : std_logic;
SIGNAL \uc2|c_int[7]~39\ : std_logic;
SIGNAL \uc2|c_int[8]~40_combout\ : std_logic;
SIGNAL \uc2|c_int[12]~22_combout\ : std_logic;
SIGNAL \uc2|c_int[12]~23_combout\ : std_logic;
SIGNAL \uc2|dir_int~q\ : std_logic;
SIGNAL \uc2|c_int[8]~41\ : std_logic;
SIGNAL \uc2|c_int[9]~43\ : std_logic;
SIGNAL \uc2|c_int[10]~44_combout\ : std_logic;
SIGNAL \uc2|c_int[12]~24_combout\ : std_logic;
SIGNAL \uc2|c_int[12]~20_combout\ : std_logic;
SIGNAL \uc2|c_int[12]~18_combout\ : std_logic;
SIGNAL \uc2|c_int[12]~21_combout\ : std_logic;
SIGNAL \uc2|c_int[12]~19_combout\ : std_logic;
SIGNAL \uc2|c_int[10]~45\ : std_logic;
SIGNAL \uc2|c_int[11]~46_combout\ : std_logic;
SIGNAL \uc2|c_int[11]~47\ : std_logic;
SIGNAL \uc2|c_int[12]~48_combout\ : std_logic;
SIGNAL \uc2|c_int[12]~49\ : std_logic;
SIGNAL \uc2|c_int[13]~50_combout\ : std_logic;
SIGNAL \uc2|c_int[13]~51\ : std_logic;
SIGNAL \uc2|c_int[14]~52_combout\ : std_logic;
SIGNAL \uc2|c_int[14]~53\ : std_logic;
SIGNAL \uc2|c_int[15]~54_combout\ : std_logic;
SIGNAL \u2comp|LessThan0~0_combout\ : std_logic;
SIGNAL \u2comp|LessThan0~1_combout\ : std_logic;
SIGNAL \uc2|c_int[12]~25_combout\ : std_logic;
SIGNAL \uc2|c_int[9]~42_combout\ : std_logic;
SIGNAL \uc2|c_int[9]~42_wirecell_combout\ : std_logic;
SIGNAL \u2comp|LessThan0~2_combout\ : std_logic;
SIGNAL \u2comp|LessThan0~3_combout\ : std_logic;
SIGNAL \u2comp|LessThan0~4_combout\ : std_logic;
SIGNAL \u2comp|LessThan0~5_combout\ : std_logic;
SIGNAL \u2comp|comp_out~q\ : std_logic;
SIGNAL \uled|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \upll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uc1|c_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \uc2|c_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|out_int\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \u1|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|ALT_INV_out_int\ : std_logic_vector(29 DOWNTO 29);
SIGNAL \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \uc1|ALT_INV_c_int[15]~45_combout\ : std_logic;

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
GPIO_0 <= ww_GPIO_0;
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
\upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\uc1|ALT_INV_c_int[15]~45_combout\ <= NOT \uc1|c_int[15]~45_combout\;

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

-- Location: IOOBUF_X1_Y34_N9
\GPIO_0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucomp|comp_out~q\,
	devoe => ww_devoe,
	o => ww_GPIO_0(0));

-- Location: IOOBUF_X1_Y34_N2
\GPIO_0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2comp|comp_out~q\,
	devoe => ww_devoe,
	o => ww_GPIO_0(1));

-- Location: IOOBUF_X7_Y34_N9
\GPIO_0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(2));

-- Location: IOOBUF_X7_Y34_N16
\GPIO_0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(3));

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
	pll_compensation_delay => 5561,
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

-- Location: LCCOMB_X26_Y33_N0
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

-- Location: FF_X26_Y33_N1
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

-- Location: LCCOMB_X26_Y33_N2
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

-- Location: FF_X26_Y33_N3
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

-- Location: LCCOMB_X26_Y33_N4
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

-- Location: FF_X26_Y33_N5
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

-- Location: LCCOMB_X26_Y33_N6
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

-- Location: FF_X26_Y33_N7
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

-- Location: LCCOMB_X25_Y33_N10
\u1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (!\u1|count\(3) & (!\u1|count\(2) & ((!\u1|count\(1)) # (!\u1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(3),
	datab => \u1|count\(2),
	datac => \u1|count\(0),
	datad => \u1|count\(1),
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y33_N8
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

-- Location: FF_X26_Y33_N9
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

-- Location: LCCOMB_X26_Y33_N10
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

-- Location: FF_X26_Y33_N11
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

-- Location: LCCOMB_X26_Y33_N12
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

-- Location: FF_X26_Y33_N13
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

-- Location: LCCOMB_X26_Y33_N14
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

-- Location: FF_X26_Y33_N15
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

-- Location: LCCOMB_X26_Y33_N16
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

-- Location: FF_X26_Y33_N17
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

-- Location: LCCOMB_X26_Y33_N18
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

-- Location: FF_X26_Y33_N19
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

-- Location: LCCOMB_X26_Y33_N20
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

-- Location: FF_X26_Y33_N21
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

-- Location: LCCOMB_X26_Y33_N22
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

-- Location: FF_X26_Y33_N23
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

-- Location: LCCOMB_X26_Y33_N24
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

-- Location: FF_X26_Y33_N25
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

-- Location: LCCOMB_X26_Y33_N26
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

-- Location: FF_X26_Y33_N27
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

-- Location: LCCOMB_X26_Y33_N28
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

-- Location: FF_X26_Y33_N29
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

-- Location: LCCOMB_X26_Y33_N30
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

-- Location: FF_X26_Y33_N31
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

-- Location: LCCOMB_X25_Y33_N18
\u1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~3_combout\ = (!\u1|count\(12) & (!\u1|count\(13) & (!\u1|count\(15) & !\u1|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(12),
	datab => \u1|count\(13),
	datac => \u1|count\(15),
	datad => \u1|count\(14),
	combout => \u1|LessThan0~3_combout\);

-- Location: LCCOMB_X25_Y33_N4
\u1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = (!\u1|count\(7) & (!\u1|count\(4) & (!\u1|count\(6) & !\u1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(7),
	datab => \u1|count\(4),
	datac => \u1|count\(6),
	datad => \u1|count\(5),
	combout => \u1|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y33_N12
\u1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~2_combout\ = (!\u1|count\(9) & (!\u1|count\(11) & (!\u1|count\(10) & !\u1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(9),
	datab => \u1|count\(11),
	datac => \u1|count\(10),
	datad => \u1|count\(8),
	combout => \u1|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y33_N6
\u1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~4_combout\ = (((!\u1|LessThan0~2_combout\) # (!\u1|LessThan0~1_combout\)) # (!\u1|LessThan0~3_combout\)) # (!\u1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~0_combout\,
	datab => \u1|LessThan0~3_combout\,
	datac => \u1|LessThan0~1_combout\,
	datad => \u1|LessThan0~2_combout\,
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

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X52_Y18_N8
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

-- Location: LCCOMB_X52_Y17_N22
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

-- Location: LCCOMB_X52_Y17_N24
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

-- Location: FF_X52_Y17_N25
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

-- Location: FF_X52_Y18_N9
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

-- Location: LCCOMB_X52_Y18_N10
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

-- Location: FF_X52_Y18_N11
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

-- Location: LCCOMB_X52_Y18_N12
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

-- Location: FF_X52_Y18_N13
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

-- Location: LCCOMB_X52_Y18_N14
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

-- Location: FF_X52_Y18_N15
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

-- Location: LCCOMB_X52_Y18_N16
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

-- Location: FF_X52_Y18_N17
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

-- Location: LCCOMB_X52_Y18_N18
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

-- Location: FF_X52_Y18_N19
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

-- Location: LCCOMB_X52_Y18_N20
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

-- Location: FF_X52_Y18_N21
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

-- Location: LCCOMB_X52_Y18_N22
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

-- Location: FF_X52_Y18_N23
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

-- Location: LCCOMB_X52_Y18_N24
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

-- Location: FF_X52_Y18_N25
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

-- Location: LCCOMB_X52_Y18_N26
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

-- Location: FF_X52_Y18_N27
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

-- Location: LCCOMB_X52_Y18_N28
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

-- Location: FF_X52_Y18_N29
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

-- Location: LCCOMB_X52_Y18_N30
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

-- Location: FF_X52_Y18_N31
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

-- Location: LCCOMB_X52_Y17_N0
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

-- Location: FF_X52_Y17_N1
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

-- Location: LCCOMB_X52_Y17_N2
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

-- Location: FF_X52_Y17_N3
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

-- Location: LCCOMB_X52_Y17_N4
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

-- Location: FF_X52_Y17_N5
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

-- Location: LCCOMB_X52_Y17_N6
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

-- Location: FF_X52_Y17_N7
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

-- Location: LCCOMB_X52_Y17_N8
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

-- Location: FF_X52_Y17_N9
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

-- Location: LCCOMB_X52_Y17_N10
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

-- Location: FF_X52_Y17_N11
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

-- Location: LCCOMB_X52_Y17_N12
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

-- Location: FF_X52_Y17_N13
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

-- Location: LCCOMB_X52_Y17_N14
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

-- Location: FF_X52_Y17_N15
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

-- Location: LCCOMB_X52_Y17_N16
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

-- Location: FF_X52_Y17_N17
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

-- Location: LCCOMB_X52_Y17_N18
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

-- Location: FF_X52_Y17_N19
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

-- Location: LCCOMB_X52_Y17_N20
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

-- Location: FF_X52_Y17_N21
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

-- Location: FF_X52_Y17_N23
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

-- Location: LCCOMB_X52_Y17_N28
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

-- Location: FF_X52_Y17_N29
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

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X24_Y28_N0
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

-- Location: FF_X24_Y28_N1
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

-- Location: LCCOMB_X24_Y28_N2
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

-- Location: FF_X24_Y28_N3
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

-- Location: LCCOMB_X24_Y28_N4
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

-- Location: FF_X24_Y28_N5
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

-- Location: LCCOMB_X24_Y28_N6
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

-- Location: FF_X24_Y28_N7
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

-- Location: LCCOMB_X25_Y28_N22
\uled|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|LessThan0~0_combout\ = (!\uled|count\(3) & (((!\uled|count\(0) & !\uled|count\(1))) # (!\uled|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(0),
	datab => \uled|count\(3),
	datac => \uled|count\(2),
	datad => \uled|count\(1),
	combout => \uled|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y28_N8
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

-- Location: FF_X24_Y28_N9
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

-- Location: LCCOMB_X24_Y28_N10
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

-- Location: FF_X24_Y28_N11
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

-- Location: LCCOMB_X24_Y28_N12
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

-- Location: FF_X24_Y28_N13
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

-- Location: LCCOMB_X24_Y28_N14
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

-- Location: FF_X24_Y28_N15
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

-- Location: LCCOMB_X24_Y28_N16
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

-- Location: FF_X24_Y28_N17
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

-- Location: LCCOMB_X24_Y28_N18
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

-- Location: FF_X24_Y28_N19
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

-- Location: LCCOMB_X24_Y28_N20
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

-- Location: FF_X24_Y28_N21
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

-- Location: LCCOMB_X24_Y28_N22
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

-- Location: FF_X24_Y28_N23
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

-- Location: LCCOMB_X24_Y28_N24
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

-- Location: FF_X24_Y28_N25
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

-- Location: LCCOMB_X24_Y28_N26
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

-- Location: FF_X24_Y28_N27
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

-- Location: LCCOMB_X24_Y28_N28
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

-- Location: FF_X24_Y28_N29
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

-- Location: LCCOMB_X24_Y28_N30
\uled|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|count[15]~46_combout\ = \uled|count\(15) $ (\uled|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(15),
	cin => \uled|count[14]~45\,
	combout => \uled|count[15]~46_combout\);

-- Location: FF_X24_Y28_N31
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

-- Location: LCCOMB_X25_Y28_N24
\uled|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|LessThan0~3_combout\ = (!\uled|count\(13) & (!\uled|count\(14) & (!\uled|count\(12) & !\uled|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(13),
	datab => \uled|count\(14),
	datac => \uled|count\(12),
	datad => \uled|count\(15),
	combout => \uled|LessThan0~3_combout\);

-- Location: LCCOMB_X25_Y28_N30
\uled|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|LessThan0~2_combout\ = (!\uled|count\(8) & (!\uled|count\(9) & (!\uled|count\(11) & !\uled|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(8),
	datab => \uled|count\(9),
	datac => \uled|count\(11),
	datad => \uled|count\(10),
	combout => \uled|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y28_N20
\uled|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|LessThan0~1_combout\ = (!\uled|count\(7) & (!\uled|count\(4) & (!\uled|count\(5) & !\uled|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uled|count\(7),
	datab => \uled|count\(4),
	datac => \uled|count\(5),
	datad => \uled|count\(6),
	combout => \uled|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y28_N26
\uled|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uled|LessThan0~4_combout\ = (((!\uled|LessThan0~1_combout\) # (!\uled|LessThan0~2_combout\)) # (!\uled|LessThan0~3_combout\)) # (!\uled|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uled|LessThan0~0_combout\,
	datab => \uled|LessThan0~3_combout\,
	datac => \uled|LessThan0~2_combout\,
	datad => \uled|LessThan0~1_combout\,
	combout => \uled|LessThan0~4_combout\);

-- Location: LCCOMB_X25_Y28_N28
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

-- Location: FF_X25_Y28_N29
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

-- Location: LCCOMB_X40_Y31_N0
\uc2|c_int[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[0]~16_combout\ = \uc2|c_int\(0) $ (GND)
-- \uc2|c_int[0]~17\ = CARRY(!\uc2|c_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(0),
	datad => VCC,
	combout => \uc2|c_int[0]~16_combout\,
	cout => \uc2|c_int[0]~17\);

-- Location: LCCOMB_X41_Y31_N28
\uc2|c_int[0]~16_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[0]~16_wirecell_combout\ = !\uc2|c_int[0]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uc2|c_int[0]~16_combout\,
	combout => \uc2|c_int[0]~16_wirecell_combout\);

-- Location: FF_X41_Y31_N29
\uc2|c_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[0]~16_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(0));

-- Location: LCCOMB_X41_Y32_N0
\uc1|c_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[1]~16_cout\ = CARRY(!\uc2|c_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(0),
	datad => VCC,
	cout => \uc1|c_int[1]~16_cout\);

-- Location: LCCOMB_X41_Y32_N2
\uc1|c_int[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[1]~17_combout\ = (\uc1|c_int\(1) & (\uc1|c_int[1]~16_cout\ & VCC)) # (!\uc1|c_int\(1) & (!\uc1|c_int[1]~16_cout\))
-- \uc1|c_int[1]~18\ = CARRY((!\uc1|c_int\(1) & !\uc1|c_int[1]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(1),
	datad => VCC,
	cin => \uc1|c_int[1]~16_cout\,
	combout => \uc1|c_int[1]~17_combout\,
	cout => \uc1|c_int[1]~18\);

-- Location: LCCOMB_X40_Y32_N0
\uc1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~0_combout\ = (\uc2|c_int\(0) & (\uc1|c_int\(1) & VCC)) # (!\uc2|c_int\(0) & (\uc1|c_int\(1) $ (VCC)))
-- \uc1|Add1~1\ = CARRY((!\uc2|c_int\(0) & \uc1|c_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(0),
	datab => \uc1|c_int\(1),
	datad => VCC,
	combout => \uc1|Add1~0_combout\,
	cout => \uc1|Add1~1\);

-- Location: LCCOMB_X39_Y32_N12
\uc1|c_int[15]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[15]~39_combout\ = (\uc1|c_int\(1)) # (((\uc1|c_int\(10)) # (\uc1|c_int\(9))) # (!\uc2|c_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(1),
	datab => \uc2|c_int\(0),
	datac => \uc1|c_int\(10),
	datad => \uc1|c_int\(9),
	combout => \uc1|c_int[15]~39_combout\);

-- Location: LCCOMB_X39_Y32_N14
\uc1|c_int[15]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[15]~40_combout\ = (\uc1|c_int\(2)) # ((\uc1|c_int\(8)) # (\uc1|c_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(2),
	datab => \uc1|c_int\(8),
	datad => \uc1|c_int\(3),
	combout => \uc1|c_int[15]~40_combout\);

-- Location: FF_X39_Y32_N27
\uc1|dir_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|dir_int~q\);

-- Location: LCCOMB_X39_Y32_N6
\ucomp|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~3_combout\ = (!\uc1|c_int\(4) & (!\uc1|c_int\(6) & (!\uc1|c_int\(5) & !\uc1|c_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(4),
	datab => \uc1|c_int\(6),
	datac => \uc1|c_int\(5),
	datad => \uc1|c_int\(7),
	combout => \ucomp|LessThan0~3_combout\);

-- Location: LCCOMB_X39_Y32_N4
\uc1|c_int[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[15]~41_combout\ = (\uc1|dir_int~q\ & ((\uc1|c_int[15]~39_combout\) # ((\uc1|c_int[15]~40_combout\) # (!\ucomp|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int[15]~39_combout\,
	datab => \uc1|c_int[15]~40_combout\,
	datac => \uc1|dir_int~q\,
	datad => \ucomp|LessThan0~3_combout\,
	combout => \uc1|c_int[15]~41_combout\);

-- Location: LCCOMB_X39_Y32_N30
\uc1|c_int[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[15]~42_combout\ = (\uc1|c_int\(3)) # ((!\uc2|c_int\(0) & (\uc1|c_int\(2) & \uc1|c_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(3),
	datab => \uc2|c_int\(0),
	datac => \uc1|c_int\(2),
	datad => \uc1|c_int\(1),
	combout => \uc1|c_int[15]~42_combout\);

-- Location: LCCOMB_X39_Y32_N16
\uc1|c_int[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[15]~43_combout\ = (\uc1|c_int\(7)) # ((\uc1|c_int\(4) & (\uc1|c_int\(5) & \uc1|c_int[15]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(4),
	datab => \uc1|c_int\(5),
	datac => \uc1|c_int[15]~42_combout\,
	datad => \uc1|c_int\(7),
	combout => \uc1|c_int[15]~43_combout\);

-- Location: LCCOMB_X39_Y32_N10
\uc1|c_int[15]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[15]~44_combout\ = (\uc1|c_int\(9)) # ((\uc1|c_int\(8) & ((\uc1|c_int\(6)) # (\uc1|c_int[15]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(6),
	datab => \uc1|c_int\(9),
	datac => \uc1|c_int\(8),
	datad => \uc1|c_int[15]~43_combout\,
	combout => \uc1|c_int[15]~44_combout\);

-- Location: LCCOMB_X39_Y32_N26
\uc1|c_int[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[15]~45_combout\ = (\uc1|c_int[15]~41_combout\) # (((\uc1|c_int\(10) & \uc1|c_int[15]~44_combout\)) # (!\ucomp|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(10),
	datab => \uc1|c_int[15]~41_combout\,
	datac => \ucomp|LessThan0~1_combout\,
	datad => \uc1|c_int[15]~44_combout\,
	combout => \uc1|c_int[15]~45_combout\);

-- Location: FF_X41_Y32_N3
\uc1|c_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[1]~17_combout\,
	asdata => \uc1|Add1~0_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(1));

-- Location: LCCOMB_X41_Y32_N4
\uc1|c_int[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[2]~19_combout\ = (\uc1|c_int\(2) & ((GND) # (!\uc1|c_int[1]~18\))) # (!\uc1|c_int\(2) & (\uc1|c_int[1]~18\ $ (GND)))
-- \uc1|c_int[2]~20\ = CARRY((\uc1|c_int\(2)) # (!\uc1|c_int[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(2),
	datad => VCC,
	cin => \uc1|c_int[1]~18\,
	combout => \uc1|c_int[2]~19_combout\,
	cout => \uc1|c_int[2]~20\);

-- Location: LCCOMB_X40_Y32_N2
\uc1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~2_combout\ = (\uc1|c_int\(2) & (!\uc1|Add1~1\)) # (!\uc1|c_int\(2) & ((\uc1|Add1~1\) # (GND)))
-- \uc1|Add1~3\ = CARRY((!\uc1|Add1~1\) # (!\uc1|c_int\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(2),
	datad => VCC,
	cin => \uc1|Add1~1\,
	combout => \uc1|Add1~2_combout\,
	cout => \uc1|Add1~3\);

-- Location: FF_X41_Y32_N5
\uc1|c_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[2]~19_combout\,
	asdata => \uc1|Add1~2_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(2));

-- Location: LCCOMB_X41_Y32_N6
\uc1|c_int[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[3]~21_combout\ = (\uc1|c_int\(3) & (\uc1|c_int[2]~20\ & VCC)) # (!\uc1|c_int\(3) & (!\uc1|c_int[2]~20\))
-- \uc1|c_int[3]~22\ = CARRY((!\uc1|c_int\(3) & !\uc1|c_int[2]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(3),
	datad => VCC,
	cin => \uc1|c_int[2]~20\,
	combout => \uc1|c_int[3]~21_combout\,
	cout => \uc1|c_int[3]~22\);

-- Location: LCCOMB_X40_Y32_N4
\uc1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~4_combout\ = (\uc1|c_int\(3) & (\uc1|Add1~3\ $ (GND))) # (!\uc1|c_int\(3) & (!\uc1|Add1~3\ & VCC))
-- \uc1|Add1~5\ = CARRY((\uc1|c_int\(3) & !\uc1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(3),
	datad => VCC,
	cin => \uc1|Add1~3\,
	combout => \uc1|Add1~4_combout\,
	cout => \uc1|Add1~5\);

-- Location: FF_X41_Y32_N7
\uc1|c_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[3]~21_combout\,
	asdata => \uc1|Add1~4_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(3));

-- Location: LCCOMB_X41_Y32_N8
\uc1|c_int[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[4]~23_combout\ = (\uc1|c_int\(4) & ((GND) # (!\uc1|c_int[3]~22\))) # (!\uc1|c_int\(4) & (\uc1|c_int[3]~22\ $ (GND)))
-- \uc1|c_int[4]~24\ = CARRY((\uc1|c_int\(4)) # (!\uc1|c_int[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(4),
	datad => VCC,
	cin => \uc1|c_int[3]~22\,
	combout => \uc1|c_int[4]~23_combout\,
	cout => \uc1|c_int[4]~24\);

-- Location: LCCOMB_X40_Y32_N6
\uc1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~6_combout\ = (\uc1|c_int\(4) & (!\uc1|Add1~5\)) # (!\uc1|c_int\(4) & ((\uc1|Add1~5\) # (GND)))
-- \uc1|Add1~7\ = CARRY((!\uc1|Add1~5\) # (!\uc1|c_int\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(4),
	datad => VCC,
	cin => \uc1|Add1~5\,
	combout => \uc1|Add1~6_combout\,
	cout => \uc1|Add1~7\);

-- Location: FF_X41_Y32_N9
\uc1|c_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[4]~23_combout\,
	asdata => \uc1|Add1~6_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(4));

-- Location: LCCOMB_X41_Y32_N10
\uc1|c_int[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[5]~25_combout\ = (\uc1|c_int\(5) & (\uc1|c_int[4]~24\ & VCC)) # (!\uc1|c_int\(5) & (!\uc1|c_int[4]~24\))
-- \uc1|c_int[5]~26\ = CARRY((!\uc1|c_int\(5) & !\uc1|c_int[4]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(5),
	datad => VCC,
	cin => \uc1|c_int[4]~24\,
	combout => \uc1|c_int[5]~25_combout\,
	cout => \uc1|c_int[5]~26\);

-- Location: LCCOMB_X40_Y32_N8
\uc1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~8_combout\ = (\uc1|c_int\(5) & (\uc1|Add1~7\ $ (GND))) # (!\uc1|c_int\(5) & (!\uc1|Add1~7\ & VCC))
-- \uc1|Add1~9\ = CARRY((\uc1|c_int\(5) & !\uc1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(5),
	datad => VCC,
	cin => \uc1|Add1~7\,
	combout => \uc1|Add1~8_combout\,
	cout => \uc1|Add1~9\);

-- Location: FF_X41_Y32_N11
\uc1|c_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[5]~25_combout\,
	asdata => \uc1|Add1~8_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(5));

-- Location: LCCOMB_X41_Y32_N12
\uc1|c_int[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[6]~27_combout\ = (\uc1|c_int\(6) & ((GND) # (!\uc1|c_int[5]~26\))) # (!\uc1|c_int\(6) & (\uc1|c_int[5]~26\ $ (GND)))
-- \uc1|c_int[6]~28\ = CARRY((\uc1|c_int\(6)) # (!\uc1|c_int[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(6),
	datad => VCC,
	cin => \uc1|c_int[5]~26\,
	combout => \uc1|c_int[6]~27_combout\,
	cout => \uc1|c_int[6]~28\);

-- Location: LCCOMB_X40_Y32_N10
\uc1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~10_combout\ = (\uc1|c_int\(6) & (!\uc1|Add1~9\)) # (!\uc1|c_int\(6) & ((\uc1|Add1~9\) # (GND)))
-- \uc1|Add1~11\ = CARRY((!\uc1|Add1~9\) # (!\uc1|c_int\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(6),
	datad => VCC,
	cin => \uc1|Add1~9\,
	combout => \uc1|Add1~10_combout\,
	cout => \uc1|Add1~11\);

-- Location: FF_X41_Y32_N13
\uc1|c_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[6]~27_combout\,
	asdata => \uc1|Add1~10_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(6));

-- Location: LCCOMB_X41_Y32_N14
\uc1|c_int[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[7]~29_combout\ = (\uc1|c_int\(7) & (\uc1|c_int[6]~28\ & VCC)) # (!\uc1|c_int\(7) & (!\uc1|c_int[6]~28\))
-- \uc1|c_int[7]~30\ = CARRY((!\uc1|c_int\(7) & !\uc1|c_int[6]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(7),
	datad => VCC,
	cin => \uc1|c_int[6]~28\,
	combout => \uc1|c_int[7]~29_combout\,
	cout => \uc1|c_int[7]~30\);

-- Location: LCCOMB_X40_Y32_N12
\uc1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~12_combout\ = (\uc1|c_int\(7) & (\uc1|Add1~11\ $ (GND))) # (!\uc1|c_int\(7) & (!\uc1|Add1~11\ & VCC))
-- \uc1|Add1~13\ = CARRY((\uc1|c_int\(7) & !\uc1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(7),
	datad => VCC,
	cin => \uc1|Add1~11\,
	combout => \uc1|Add1~12_combout\,
	cout => \uc1|Add1~13\);

-- Location: FF_X41_Y32_N15
\uc1|c_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[7]~29_combout\,
	asdata => \uc1|Add1~12_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(7));

-- Location: LCCOMB_X41_Y32_N16
\uc1|c_int[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[8]~31_combout\ = (\uc1|c_int\(8) & ((GND) # (!\uc1|c_int[7]~30\))) # (!\uc1|c_int\(8) & (\uc1|c_int[7]~30\ $ (GND)))
-- \uc1|c_int[8]~32\ = CARRY((\uc1|c_int\(8)) # (!\uc1|c_int[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(8),
	datad => VCC,
	cin => \uc1|c_int[7]~30\,
	combout => \uc1|c_int[8]~31_combout\,
	cout => \uc1|c_int[8]~32\);

-- Location: LCCOMB_X40_Y32_N14
\uc1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~14_combout\ = (\uc1|c_int\(8) & (!\uc1|Add1~13\)) # (!\uc1|c_int\(8) & ((\uc1|Add1~13\) # (GND)))
-- \uc1|Add1~15\ = CARRY((!\uc1|Add1~13\) # (!\uc1|c_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(8),
	datad => VCC,
	cin => \uc1|Add1~13\,
	combout => \uc1|Add1~14_combout\,
	cout => \uc1|Add1~15\);

-- Location: FF_X41_Y32_N17
\uc1|c_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[8]~31_combout\,
	asdata => \uc1|Add1~14_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(8));

-- Location: LCCOMB_X41_Y32_N18
\uc1|c_int[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[9]~33_combout\ = (\uc1|c_int\(9) & (\uc1|c_int[8]~32\ & VCC)) # (!\uc1|c_int\(9) & (!\uc1|c_int[8]~32\))
-- \uc1|c_int[9]~34\ = CARRY((!\uc1|c_int\(9) & !\uc1|c_int[8]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(9),
	datad => VCC,
	cin => \uc1|c_int[8]~32\,
	combout => \uc1|c_int[9]~33_combout\,
	cout => \uc1|c_int[9]~34\);

-- Location: LCCOMB_X40_Y32_N16
\uc1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~16_combout\ = (\uc1|c_int\(9) & (\uc1|Add1~15\ $ (GND))) # (!\uc1|c_int\(9) & (!\uc1|Add1~15\ & VCC))
-- \uc1|Add1~17\ = CARRY((\uc1|c_int\(9) & !\uc1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(9),
	datad => VCC,
	cin => \uc1|Add1~15\,
	combout => \uc1|Add1~16_combout\,
	cout => \uc1|Add1~17\);

-- Location: FF_X41_Y32_N19
\uc1|c_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[9]~33_combout\,
	asdata => \uc1|Add1~16_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(9));

-- Location: LCCOMB_X41_Y32_N20
\uc1|c_int[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[10]~35_combout\ = (\uc1|c_int\(10) & ((GND) # (!\uc1|c_int[9]~34\))) # (!\uc1|c_int\(10) & (\uc1|c_int[9]~34\ $ (GND)))
-- \uc1|c_int[10]~36\ = CARRY((\uc1|c_int\(10)) # (!\uc1|c_int[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(10),
	datad => VCC,
	cin => \uc1|c_int[9]~34\,
	combout => \uc1|c_int[10]~35_combout\,
	cout => \uc1|c_int[10]~36\);

-- Location: LCCOMB_X40_Y32_N18
\uc1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~18_combout\ = (\uc1|c_int\(10) & (!\uc1|Add1~17\)) # (!\uc1|c_int\(10) & ((\uc1|Add1~17\) # (GND)))
-- \uc1|Add1~19\ = CARRY((!\uc1|Add1~17\) # (!\uc1|c_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(10),
	datad => VCC,
	cin => \uc1|Add1~17\,
	combout => \uc1|Add1~18_combout\,
	cout => \uc1|Add1~19\);

-- Location: FF_X41_Y32_N21
\uc1|c_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[10]~35_combout\,
	asdata => \uc1|Add1~18_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(10));

-- Location: LCCOMB_X41_Y32_N22
\uc1|c_int[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[11]~37_combout\ = (\uc1|c_int\(11) & (\uc1|c_int[10]~36\ & VCC)) # (!\uc1|c_int\(11) & (!\uc1|c_int[10]~36\))
-- \uc1|c_int[11]~38\ = CARRY((!\uc1|c_int\(11) & !\uc1|c_int[10]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(11),
	datad => VCC,
	cin => \uc1|c_int[10]~36\,
	combout => \uc1|c_int[11]~37_combout\,
	cout => \uc1|c_int[11]~38\);

-- Location: LCCOMB_X40_Y32_N20
\uc1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~20_combout\ = (\uc1|c_int\(11) & (\uc1|Add1~19\ $ (GND))) # (!\uc1|c_int\(11) & (!\uc1|Add1~19\ & VCC))
-- \uc1|Add1~21\ = CARRY((\uc1|c_int\(11) & !\uc1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(11),
	datad => VCC,
	cin => \uc1|Add1~19\,
	combout => \uc1|Add1~20_combout\,
	cout => \uc1|Add1~21\);

-- Location: FF_X41_Y32_N23
\uc1|c_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[11]~37_combout\,
	asdata => \uc1|Add1~20_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(11));

-- Location: LCCOMB_X41_Y32_N24
\uc1|c_int[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[12]~46_combout\ = (\uc1|c_int\(12) & ((GND) # (!\uc1|c_int[11]~38\))) # (!\uc1|c_int\(12) & (\uc1|c_int[11]~38\ $ (GND)))
-- \uc1|c_int[12]~47\ = CARRY((\uc1|c_int\(12)) # (!\uc1|c_int[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(12),
	datad => VCC,
	cin => \uc1|c_int[11]~38\,
	combout => \uc1|c_int[12]~46_combout\,
	cout => \uc1|c_int[12]~47\);

-- Location: LCCOMB_X40_Y32_N22
\uc1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~22_combout\ = (\uc1|c_int\(12) & (!\uc1|Add1~21\)) # (!\uc1|c_int\(12) & ((\uc1|Add1~21\) # (GND)))
-- \uc1|Add1~23\ = CARRY((!\uc1|Add1~21\) # (!\uc1|c_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(12),
	datad => VCC,
	cin => \uc1|Add1~21\,
	combout => \uc1|Add1~22_combout\,
	cout => \uc1|Add1~23\);

-- Location: FF_X41_Y32_N25
\uc1|c_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[12]~46_combout\,
	asdata => \uc1|Add1~22_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(12));

-- Location: LCCOMB_X41_Y32_N26
\uc1|c_int[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[13]~48_combout\ = (\uc1|c_int\(13) & (\uc1|c_int[12]~47\ & VCC)) # (!\uc1|c_int\(13) & (!\uc1|c_int[12]~47\))
-- \uc1|c_int[13]~49\ = CARRY((!\uc1|c_int\(13) & !\uc1|c_int[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(13),
	datad => VCC,
	cin => \uc1|c_int[12]~47\,
	combout => \uc1|c_int[13]~48_combout\,
	cout => \uc1|c_int[13]~49\);

-- Location: LCCOMB_X40_Y32_N24
\uc1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~24_combout\ = (\uc1|c_int\(13) & (\uc1|Add1~23\ $ (GND))) # (!\uc1|c_int\(13) & (!\uc1|Add1~23\ & VCC))
-- \uc1|Add1~25\ = CARRY((\uc1|c_int\(13) & !\uc1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(13),
	datad => VCC,
	cin => \uc1|Add1~23\,
	combout => \uc1|Add1~24_combout\,
	cout => \uc1|Add1~25\);

-- Location: FF_X41_Y32_N27
\uc1|c_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[13]~48_combout\,
	asdata => \uc1|Add1~24_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(13));

-- Location: LCCOMB_X41_Y32_N28
\uc1|c_int[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[14]~50_combout\ = (\uc1|c_int\(14) & ((GND) # (!\uc1|c_int[13]~49\))) # (!\uc1|c_int\(14) & (\uc1|c_int[13]~49\ $ (GND)))
-- \uc1|c_int[14]~51\ = CARRY((\uc1|c_int\(14)) # (!\uc1|c_int[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(14),
	datad => VCC,
	cin => \uc1|c_int[13]~49\,
	combout => \uc1|c_int[14]~50_combout\,
	cout => \uc1|c_int[14]~51\);

-- Location: LCCOMB_X40_Y32_N26
\uc1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~26_combout\ = (\uc1|c_int\(14) & (!\uc1|Add1~25\)) # (!\uc1|c_int\(14) & ((\uc1|Add1~25\) # (GND)))
-- \uc1|Add1~27\ = CARRY((!\uc1|Add1~25\) # (!\uc1|c_int\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(14),
	datad => VCC,
	cin => \uc1|Add1~25\,
	combout => \uc1|Add1~26_combout\,
	cout => \uc1|Add1~27\);

-- Location: FF_X41_Y32_N29
\uc1|c_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[14]~50_combout\,
	asdata => \uc1|Add1~26_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(14));

-- Location: LCCOMB_X40_Y32_N30
\ucomp|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~0_combout\ = (!\uc1|c_int\(12) & (!\uc1|c_int\(14) & (!\uc1|c_int\(13) & !\uc1|c_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(12),
	datab => \uc1|c_int\(14),
	datac => \uc1|c_int\(13),
	datad => \uc1|c_int\(11),
	combout => \ucomp|LessThan0~0_combout\);

-- Location: LCCOMB_X41_Y32_N30
\uc1|c_int[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[15]~52_combout\ = \uc1|c_int\(15) $ (!\uc1|c_int[14]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(15),
	cin => \uc1|c_int[14]~51\,
	combout => \uc1|c_int[15]~52_combout\);

-- Location: LCCOMB_X40_Y32_N28
\uc1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|Add1~28_combout\ = \uc1|Add1~27\ $ (!\uc1|c_int\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uc1|c_int\(15),
	cin => \uc1|Add1~27\,
	combout => \uc1|Add1~28_combout\);

-- Location: FF_X41_Y32_N31
\uc1|c_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[15]~52_combout\,
	asdata => \uc1|Add1~28_combout\,
	sload => \uc1|ALT_INV_c_int[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(15));

-- Location: LCCOMB_X39_Y32_N22
\ucomp|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~1_combout\ = (\ucomp|LessThan0~0_combout\ & !\uc1|c_int\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucomp|LessThan0~0_combout\,
	datad => \uc1|c_int\(15),
	combout => \ucomp|LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y32_N20
\ucomp|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~2_combout\ = ((!\uc1|c_int\(2) & ((\uc2|c_int\(0)) # (!\uc1|c_int\(1))))) # (!\uc1|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(3),
	datab => \uc2|c_int\(0),
	datac => \uc1|c_int\(2),
	datad => \uc1|c_int\(1),
	combout => \ucomp|LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y32_N24
\ucomp|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~4_combout\ = ((\ucomp|LessThan0~3_combout\ & \ucomp|LessThan0~2_combout\)) # (!\uc1|c_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucomp|LessThan0~3_combout\,
	datab => \ucomp|LessThan0~2_combout\,
	datac => \uc1|c_int\(8),
	combout => \ucomp|LessThan0~4_combout\);

-- Location: LCCOMB_X39_Y32_N28
\ucomp|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~5_combout\ = (((\uc1|c_int\(10)) # (\uc1|c_int\(9))) # (!\ucomp|LessThan0~4_combout\)) # (!\ucomp|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucomp|LessThan0~1_combout\,
	datab => \ucomp|LessThan0~4_combout\,
	datac => \uc1|c_int\(10),
	datad => \uc1|c_int\(9),
	combout => \ucomp|LessThan0~5_combout\);

-- Location: FF_X39_Y32_N29
\ucomp|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucomp|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucomp|comp_out~q\);

-- Location: LCCOMB_X40_Y31_N2
\uc2|c_int[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[1]~26_combout\ = (\uc2|c_int\(1) & ((\uc2|c_int[12]~25_combout\ & (!\uc2|c_int[0]~17\)) # (!\uc2|c_int[12]~25_combout\ & ((\uc2|c_int[0]~17\) # (GND))))) # (!\uc2|c_int\(1) & ((\uc2|c_int[12]~25_combout\ & (\uc2|c_int[0]~17\ & VCC)) # 
-- (!\uc2|c_int[12]~25_combout\ & (!\uc2|c_int[0]~17\))))
-- \uc2|c_int[1]~27\ = CARRY((\uc2|c_int\(1) & ((!\uc2|c_int[0]~17\) # (!\uc2|c_int[12]~25_combout\))) # (!\uc2|c_int\(1) & (!\uc2|c_int[12]~25_combout\ & !\uc2|c_int[0]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(1),
	datab => \uc2|c_int[12]~25_combout\,
	datad => VCC,
	cin => \uc2|c_int[0]~17\,
	combout => \uc2|c_int[1]~26_combout\,
	cout => \uc2|c_int[1]~27\);

-- Location: LCCOMB_X41_Y31_N30
\uc2|c_int[1]~26_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[1]~26_wirecell_combout\ = !\uc2|c_int[1]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uc2|c_int[1]~26_combout\,
	combout => \uc2|c_int[1]~26_wirecell_combout\);

-- Location: FF_X41_Y31_N31
\uc2|c_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[1]~26_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(1));

-- Location: LCCOMB_X40_Y31_N4
\uc2|c_int[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[2]~28_combout\ = ((\uc2|c_int\(2) $ (\uc2|c_int[12]~25_combout\ $ (!\uc2|c_int[1]~27\)))) # (GND)
-- \uc2|c_int[2]~29\ = CARRY((\uc2|c_int\(2) & ((\uc2|c_int[12]~25_combout\) # (!\uc2|c_int[1]~27\))) # (!\uc2|c_int\(2) & (\uc2|c_int[12]~25_combout\ & !\uc2|c_int[1]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(2),
	datab => \uc2|c_int[12]~25_combout\,
	datad => VCC,
	cin => \uc2|c_int[1]~27\,
	combout => \uc2|c_int[2]~28_combout\,
	cout => \uc2|c_int[2]~29\);

-- Location: FF_X40_Y31_N5
\uc2|c_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(2));

-- Location: LCCOMB_X40_Y31_N6
\uc2|c_int[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[3]~30_combout\ = (\uc2|c_int\(3) & ((\uc2|c_int[12]~25_combout\ & (!\uc2|c_int[2]~29\)) # (!\uc2|c_int[12]~25_combout\ & ((\uc2|c_int[2]~29\) # (GND))))) # (!\uc2|c_int\(3) & ((\uc2|c_int[12]~25_combout\ & (\uc2|c_int[2]~29\ & VCC)) # 
-- (!\uc2|c_int[12]~25_combout\ & (!\uc2|c_int[2]~29\))))
-- \uc2|c_int[3]~31\ = CARRY((\uc2|c_int\(3) & ((!\uc2|c_int[2]~29\) # (!\uc2|c_int[12]~25_combout\))) # (!\uc2|c_int\(3) & (!\uc2|c_int[12]~25_combout\ & !\uc2|c_int[2]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(3),
	datab => \uc2|c_int[12]~25_combout\,
	datad => VCC,
	cin => \uc2|c_int[2]~29\,
	combout => \uc2|c_int[3]~30_combout\,
	cout => \uc2|c_int[3]~31\);

-- Location: LCCOMB_X39_Y31_N16
\uc2|c_int[3]~30_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[3]~30_wirecell_combout\ = !\uc2|c_int[3]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uc2|c_int[3]~30_combout\,
	combout => \uc2|c_int[3]~30_wirecell_combout\);

-- Location: FF_X39_Y31_N17
\uc2|c_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[3]~30_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(3));

-- Location: LCCOMB_X40_Y31_N8
\uc2|c_int[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[4]~32_combout\ = ((\uc2|c_int\(4) $ (\uc2|c_int[12]~25_combout\ $ (\uc2|c_int[3]~31\)))) # (GND)
-- \uc2|c_int[4]~33\ = CARRY((\uc2|c_int\(4) & (\uc2|c_int[12]~25_combout\ & !\uc2|c_int[3]~31\)) # (!\uc2|c_int\(4) & ((\uc2|c_int[12]~25_combout\) # (!\uc2|c_int[3]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(4),
	datab => \uc2|c_int[12]~25_combout\,
	datad => VCC,
	cin => \uc2|c_int[3]~31\,
	combout => \uc2|c_int[4]~32_combout\,
	cout => \uc2|c_int[4]~33\);

-- Location: LCCOMB_X39_Y31_N6
\uc2|c_int[4]~32_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[4]~32_wirecell_combout\ = !\uc2|c_int[4]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uc2|c_int[4]~32_combout\,
	combout => \uc2|c_int[4]~32_wirecell_combout\);

-- Location: FF_X39_Y31_N7
\uc2|c_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[4]~32_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(4));

-- Location: LCCOMB_X40_Y31_N10
\uc2|c_int[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[5]~34_combout\ = (\uc2|c_int\(5) & ((\uc2|c_int[12]~25_combout\ & (\uc2|c_int[4]~33\ & VCC)) # (!\uc2|c_int[12]~25_combout\ & (!\uc2|c_int[4]~33\)))) # (!\uc2|c_int\(5) & ((\uc2|c_int[12]~25_combout\ & (!\uc2|c_int[4]~33\)) # 
-- (!\uc2|c_int[12]~25_combout\ & ((\uc2|c_int[4]~33\) # (GND)))))
-- \uc2|c_int[5]~35\ = CARRY((\uc2|c_int\(5) & (!\uc2|c_int[12]~25_combout\ & !\uc2|c_int[4]~33\)) # (!\uc2|c_int\(5) & ((!\uc2|c_int[4]~33\) # (!\uc2|c_int[12]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(5),
	datab => \uc2|c_int[12]~25_combout\,
	datad => VCC,
	cin => \uc2|c_int[4]~33\,
	combout => \uc2|c_int[5]~34_combout\,
	cout => \uc2|c_int[5]~35\);

-- Location: FF_X40_Y31_N11
\uc2|c_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(5));

-- Location: LCCOMB_X40_Y31_N12
\uc2|c_int[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[6]~36_combout\ = ((\uc2|c_int\(6) $ (\uc2|c_int[12]~25_combout\ $ (!\uc2|c_int[5]~35\)))) # (GND)
-- \uc2|c_int[6]~37\ = CARRY((\uc2|c_int\(6) & ((\uc2|c_int[12]~25_combout\) # (!\uc2|c_int[5]~35\))) # (!\uc2|c_int\(6) & (\uc2|c_int[12]~25_combout\ & !\uc2|c_int[5]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(6),
	datab => \uc2|c_int[12]~25_combout\,
	datad => VCC,
	cin => \uc2|c_int[5]~35\,
	combout => \uc2|c_int[6]~36_combout\,
	cout => \uc2|c_int[6]~37\);

-- Location: FF_X40_Y31_N13
\uc2|c_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(6));

-- Location: LCCOMB_X40_Y31_N14
\uc2|c_int[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[7]~38_combout\ = (\uc2|c_int\(7) & ((\uc2|c_int[12]~25_combout\ & (!\uc2|c_int[6]~37\)) # (!\uc2|c_int[12]~25_combout\ & ((\uc2|c_int[6]~37\) # (GND))))) # (!\uc2|c_int\(7) & ((\uc2|c_int[12]~25_combout\ & (\uc2|c_int[6]~37\ & VCC)) # 
-- (!\uc2|c_int[12]~25_combout\ & (!\uc2|c_int[6]~37\))))
-- \uc2|c_int[7]~39\ = CARRY((\uc2|c_int\(7) & ((!\uc2|c_int[6]~37\) # (!\uc2|c_int[12]~25_combout\))) # (!\uc2|c_int\(7) & (!\uc2|c_int[12]~25_combout\ & !\uc2|c_int[6]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(7),
	datab => \uc2|c_int[12]~25_combout\,
	datad => VCC,
	cin => \uc2|c_int[6]~37\,
	combout => \uc2|c_int[7]~38_combout\,
	cout => \uc2|c_int[7]~39\);

-- Location: LCCOMB_X40_Y33_N20
\uc2|c_int[7]~38_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[7]~38_wirecell_combout\ = !\uc2|c_int[7]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uc2|c_int[7]~38_combout\,
	combout => \uc2|c_int[7]~38_wirecell_combout\);

-- Location: FF_X40_Y33_N21
\uc2|c_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[7]~38_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(7));

-- Location: LCCOMB_X40_Y31_N16
\uc2|c_int[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[8]~40_combout\ = ((\uc2|c_int[12]~25_combout\ $ (\uc2|c_int\(8) $ (!\uc2|c_int[7]~39\)))) # (GND)
-- \uc2|c_int[8]~41\ = CARRY((\uc2|c_int[12]~25_combout\ & ((\uc2|c_int\(8)) # (!\uc2|c_int[7]~39\))) # (!\uc2|c_int[12]~25_combout\ & (\uc2|c_int\(8) & !\uc2|c_int[7]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int[12]~25_combout\,
	datab => \uc2|c_int\(8),
	datad => VCC,
	cin => \uc2|c_int[7]~39\,
	combout => \uc2|c_int[8]~40_combout\,
	cout => \uc2|c_int[8]~41\);

-- Location: FF_X40_Y31_N17
\uc2|c_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(8));

-- Location: LCCOMB_X39_Y31_N22
\uc2|c_int[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[12]~22_combout\ = (\uc2|c_int\(4) & (\uc2|c_int\(3) & (!\uc2|c_int\(5) & !\uc2|c_int\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(4),
	datab => \uc2|c_int\(3),
	datac => \uc2|c_int\(5),
	datad => \uc2|c_int\(8),
	combout => \uc2|c_int[12]~22_combout\);

-- Location: LCCOMB_X39_Y31_N12
\uc2|c_int[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[12]~23_combout\ = (!\uc2|c_int\(2) & (\uc2|c_int\(1) & (\uc2|c_int[12]~22_combout\ & \uc2|c_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(2),
	datab => \uc2|c_int\(1),
	datac => \uc2|c_int[12]~22_combout\,
	datad => \uc2|c_int\(0),
	combout => \uc2|c_int[12]~23_combout\);

-- Location: FF_X39_Y31_N29
\uc2|dir_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|dir_int~q\);

-- Location: LCCOMB_X40_Y31_N18
\uc2|c_int[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[9]~42_combout\ = (\uc2|c_int[12]~25_combout\ & ((\uc2|c_int\(9) & (!\uc2|c_int[8]~41\)) # (!\uc2|c_int\(9) & (\uc2|c_int[8]~41\ & VCC)))) # (!\uc2|c_int[12]~25_combout\ & ((\uc2|c_int\(9) & ((\uc2|c_int[8]~41\) # (GND))) # (!\uc2|c_int\(9) & 
-- (!\uc2|c_int[8]~41\))))
-- \uc2|c_int[9]~43\ = CARRY((\uc2|c_int[12]~25_combout\ & (\uc2|c_int\(9) & !\uc2|c_int[8]~41\)) # (!\uc2|c_int[12]~25_combout\ & ((\uc2|c_int\(9)) # (!\uc2|c_int[8]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int[12]~25_combout\,
	datab => \uc2|c_int\(9),
	datad => VCC,
	cin => \uc2|c_int[8]~41\,
	combout => \uc2|c_int[9]~42_combout\,
	cout => \uc2|c_int[9]~43\);

-- Location: LCCOMB_X40_Y31_N20
\uc2|c_int[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[10]~44_combout\ = ((\uc2|c_int[12]~25_combout\ $ (\uc2|c_int\(10) $ (!\uc2|c_int[9]~43\)))) # (GND)
-- \uc2|c_int[10]~45\ = CARRY((\uc2|c_int[12]~25_combout\ & ((\uc2|c_int\(10)) # (!\uc2|c_int[9]~43\))) # (!\uc2|c_int[12]~25_combout\ & (\uc2|c_int\(10) & !\uc2|c_int[9]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int[12]~25_combout\,
	datab => \uc2|c_int\(10),
	datad => VCC,
	cin => \uc2|c_int[9]~43\,
	combout => \uc2|c_int[10]~44_combout\,
	cout => \uc2|c_int[10]~45\);

-- Location: FF_X40_Y31_N21
\uc2|c_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[10]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(10));

-- Location: LCCOMB_X39_Y31_N26
\uc2|c_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[12]~24_combout\ = (\uc2|dir_int~q\ & (((\uc2|c_int\(10)) # (!\uc2|c_int\(9))) # (!\uc2|c_int[12]~23_combout\))) # (!\uc2|dir_int~q\ & (((\uc2|c_int\(10) & !\uc2|c_int\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int[12]~23_combout\,
	datab => \uc2|dir_int~q\,
	datac => \uc2|c_int\(10),
	datad => \uc2|c_int\(9),
	combout => \uc2|c_int[12]~24_combout\);

-- Location: LCCOMB_X39_Y31_N10
\uc2|c_int[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[12]~20_combout\ = ((\uc2|c_int\(2) & (!\uc2|c_int\(1) & !\uc2|c_int\(0)))) # (!\uc2|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(2),
	datab => \uc2|c_int\(1),
	datac => \uc2|c_int\(0),
	datad => \uc2|c_int\(3),
	combout => \uc2|c_int[12]~20_combout\);

-- Location: LCCOMB_X39_Y31_N30
\uc2|c_int[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[12]~18_combout\ = (\uc2|c_int\(10) & \uc2|c_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uc2|c_int\(10),
	datad => \uc2|c_int\(8),
	combout => \uc2|c_int[12]~18_combout\);

-- Location: LCCOMB_X39_Y31_N24
\uc2|c_int[12]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[12]~21_combout\ = (\uc2|c_int[12]~20_combout\ & (\uc2|c_int\(5) & (\uc2|c_int[12]~18_combout\ & !\uc2|c_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int[12]~20_combout\,
	datab => \uc2|c_int\(5),
	datac => \uc2|c_int[12]~18_combout\,
	datad => \uc2|c_int\(4),
	combout => \uc2|c_int[12]~21_combout\);

-- Location: LCCOMB_X39_Y31_N8
\uc2|c_int[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[12]~19_combout\ = (\uc2|c_int[12]~18_combout\ & (((\uc2|c_int\(6)) # (!\uc2|c_int\(7))))) # (!\uc2|c_int[12]~18_combout\ & (\uc2|dir_int~q\ & ((\uc2|c_int\(6)) # (!\uc2|c_int\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int[12]~18_combout\,
	datab => \uc2|dir_int~q\,
	datac => \uc2|c_int\(6),
	datad => \uc2|c_int\(7),
	combout => \uc2|c_int[12]~19_combout\);

-- Location: LCCOMB_X40_Y31_N22
\uc2|c_int[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[11]~46_combout\ = (\uc2|c_int[12]~25_combout\ & ((\uc2|c_int\(11) & (\uc2|c_int[10]~45\ & VCC)) # (!\uc2|c_int\(11) & (!\uc2|c_int[10]~45\)))) # (!\uc2|c_int[12]~25_combout\ & ((\uc2|c_int\(11) & (!\uc2|c_int[10]~45\)) # (!\uc2|c_int\(11) & 
-- ((\uc2|c_int[10]~45\) # (GND)))))
-- \uc2|c_int[11]~47\ = CARRY((\uc2|c_int[12]~25_combout\ & (!\uc2|c_int\(11) & !\uc2|c_int[10]~45\)) # (!\uc2|c_int[12]~25_combout\ & ((!\uc2|c_int[10]~45\) # (!\uc2|c_int\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int[12]~25_combout\,
	datab => \uc2|c_int\(11),
	datad => VCC,
	cin => \uc2|c_int[10]~45\,
	combout => \uc2|c_int[11]~46_combout\,
	cout => \uc2|c_int[11]~47\);

-- Location: FF_X40_Y31_N23
\uc2|c_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[11]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(11));

-- Location: LCCOMB_X40_Y31_N24
\uc2|c_int[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[12]~48_combout\ = ((\uc2|c_int[12]~25_combout\ $ (\uc2|c_int\(12) $ (!\uc2|c_int[11]~47\)))) # (GND)
-- \uc2|c_int[12]~49\ = CARRY((\uc2|c_int[12]~25_combout\ & ((\uc2|c_int\(12)) # (!\uc2|c_int[11]~47\))) # (!\uc2|c_int[12]~25_combout\ & (\uc2|c_int\(12) & !\uc2|c_int[11]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int[12]~25_combout\,
	datab => \uc2|c_int\(12),
	datad => VCC,
	cin => \uc2|c_int[11]~47\,
	combout => \uc2|c_int[12]~48_combout\,
	cout => \uc2|c_int[12]~49\);

-- Location: FF_X40_Y31_N25
\uc2|c_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(12));

-- Location: LCCOMB_X40_Y31_N26
\uc2|c_int[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[13]~50_combout\ = (\uc2|c_int[12]~25_combout\ & ((\uc2|c_int\(13) & (\uc2|c_int[12]~49\ & VCC)) # (!\uc2|c_int\(13) & (!\uc2|c_int[12]~49\)))) # (!\uc2|c_int[12]~25_combout\ & ((\uc2|c_int\(13) & (!\uc2|c_int[12]~49\)) # (!\uc2|c_int\(13) & 
-- ((\uc2|c_int[12]~49\) # (GND)))))
-- \uc2|c_int[13]~51\ = CARRY((\uc2|c_int[12]~25_combout\ & (!\uc2|c_int\(13) & !\uc2|c_int[12]~49\)) # (!\uc2|c_int[12]~25_combout\ & ((!\uc2|c_int[12]~49\) # (!\uc2|c_int\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int[12]~25_combout\,
	datab => \uc2|c_int\(13),
	datad => VCC,
	cin => \uc2|c_int[12]~49\,
	combout => \uc2|c_int[13]~50_combout\,
	cout => \uc2|c_int[13]~51\);

-- Location: FF_X40_Y31_N27
\uc2|c_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[13]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(13));

-- Location: LCCOMB_X40_Y31_N28
\uc2|c_int[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[14]~52_combout\ = ((\uc2|c_int[12]~25_combout\ $ (\uc2|c_int\(14) $ (!\uc2|c_int[13]~51\)))) # (GND)
-- \uc2|c_int[14]~53\ = CARRY((\uc2|c_int[12]~25_combout\ & ((\uc2|c_int\(14)) # (!\uc2|c_int[13]~51\))) # (!\uc2|c_int[12]~25_combout\ & (\uc2|c_int\(14) & !\uc2|c_int[13]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int[12]~25_combout\,
	datab => \uc2|c_int\(14),
	datad => VCC,
	cin => \uc2|c_int[13]~51\,
	combout => \uc2|c_int[14]~52_combout\,
	cout => \uc2|c_int[14]~53\);

-- Location: FF_X40_Y31_N29
\uc2|c_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[14]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(14));

-- Location: LCCOMB_X40_Y31_N30
\uc2|c_int[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[15]~54_combout\ = \uc2|c_int\(15) $ (\uc2|c_int[14]~53\ $ (\uc2|c_int[12]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(15),
	datad => \uc2|c_int[12]~25_combout\,
	cin => \uc2|c_int[14]~53\,
	combout => \uc2|c_int[15]~54_combout\);

-- Location: FF_X40_Y31_N31
\uc2|c_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(15));

-- Location: LCCOMB_X39_Y31_N18
\u2comp|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2comp|LessThan0~0_combout\ = (!\uc2|c_int\(13) & (!\uc2|c_int\(12) & (!\uc2|c_int\(14) & !\uc2|c_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(13),
	datab => \uc2|c_int\(12),
	datac => \uc2|c_int\(14),
	datad => \uc2|c_int\(11),
	combout => \u2comp|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y31_N0
\u2comp|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2comp|LessThan0~1_combout\ = (!\uc2|c_int\(15) & \u2comp|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uc2|c_int\(15),
	datad => \u2comp|LessThan0~0_combout\,
	combout => \u2comp|LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y31_N28
\uc2|c_int[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[12]~25_combout\ = (\uc2|c_int[12]~24_combout\) # ((\uc2|c_int[12]~21_combout\) # ((\uc2|c_int[12]~19_combout\) # (!\u2comp|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int[12]~24_combout\,
	datab => \uc2|c_int[12]~21_combout\,
	datac => \uc2|c_int[12]~19_combout\,
	datad => \u2comp|LessThan0~1_combout\,
	combout => \uc2|c_int[12]~25_combout\);

-- Location: LCCOMB_X41_Y31_N8
\uc2|c_int[9]~42_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc2|c_int[9]~42_wirecell_combout\ = !\uc2|c_int[9]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uc2|c_int[9]~42_combout\,
	combout => \uc2|c_int[9]~42_wirecell_combout\);

-- Location: FF_X41_Y31_N9
\uc2|c_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc2|c_int[9]~42_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc2|c_int\(9));

-- Location: LCCOMB_X39_Y31_N14
\u2comp|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2comp|LessThan0~2_combout\ = (\uc2|c_int\(3)) # ((!\uc2|c_int\(2) & ((\uc2|c_int\(1)) # (\uc2|c_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(2),
	datab => \uc2|c_int\(1),
	datac => \uc2|c_int\(3),
	datad => \uc2|c_int\(0),
	combout => \u2comp|LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y31_N4
\u2comp|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2comp|LessThan0~3_combout\ = (\uc2|c_int\(4) & (!\uc2|c_int\(6) & (!\uc2|c_int\(5) & \uc2|c_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(4),
	datab => \uc2|c_int\(6),
	datac => \uc2|c_int\(5),
	datad => \uc2|c_int\(7),
	combout => \u2comp|LessThan0~3_combout\);

-- Location: LCCOMB_X39_Y31_N2
\u2comp|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2comp|LessThan0~4_combout\ = ((\u2comp|LessThan0~2_combout\ & \u2comp|LessThan0~3_combout\)) # (!\uc2|c_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2comp|LessThan0~2_combout\,
	datac => \u2comp|LessThan0~3_combout\,
	datad => \uc2|c_int\(8),
	combout => \u2comp|LessThan0~4_combout\);

-- Location: LCCOMB_X39_Y31_N20
\u2comp|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2comp|LessThan0~5_combout\ = (((\uc2|c_int\(10)) # (!\u2comp|LessThan0~1_combout\)) # (!\u2comp|LessThan0~4_combout\)) # (!\uc2|c_int\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc2|c_int\(9),
	datab => \u2comp|LessThan0~4_combout\,
	datac => \uc2|c_int\(10),
	datad => \u2comp|LessThan0~1_combout\,
	combout => \u2comp|LessThan0~5_combout\);

-- Location: FF_X39_Y31_N21
\u2comp|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u2comp|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2comp|comp_out~q\);

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


