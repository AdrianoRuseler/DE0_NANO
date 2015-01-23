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

-- DATE "01/23/2015 19:14:34"

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
SIGNAL \ucr2|c_int[0]~16_combout\ : std_logic;
SIGNAL \ucr2|c_int[0]~16_wirecell_combout\ : std_logic;
SIGNAL \ucr1|c_int[1]~18_cout\ : std_logic;
SIGNAL \ucr1|c_int[1]~19_combout\ : std_logic;
SIGNAL \ucr1|Add1~0_combout\ : std_logic;
SIGNAL \ucr1|c_int[9]~36\ : std_logic;
SIGNAL \ucr1|c_int[10]~37_combout\ : std_logic;
SIGNAL \ucr1|Add1~1\ : std_logic;
SIGNAL \ucr1|Add1~3\ : std_logic;
SIGNAL \ucr1|Add1~5\ : std_logic;
SIGNAL \ucr1|Add1~7\ : std_logic;
SIGNAL \ucr1|Add1~9\ : std_logic;
SIGNAL \ucr1|Add1~11\ : std_logic;
SIGNAL \ucr1|Add1~13\ : std_logic;
SIGNAL \ucr1|Add1~15\ : std_logic;
SIGNAL \ucr1|Add1~17\ : std_logic;
SIGNAL \ucr1|Add1~18_combout\ : std_logic;
SIGNAL \ucr1|c_int[10]~38\ : std_logic;
SIGNAL \ucr1|c_int[11]~39_combout\ : std_logic;
SIGNAL \ucr1|Add1~19\ : std_logic;
SIGNAL \ucr1|Add1~20_combout\ : std_logic;
SIGNAL \ucr1|c_int[11]~40\ : std_logic;
SIGNAL \ucr1|c_int[12]~48_combout\ : std_logic;
SIGNAL \ucr1|Add1~21\ : std_logic;
SIGNAL \ucr1|Add1~22_combout\ : std_logic;
SIGNAL \ucr1|c_int[12]~49\ : std_logic;
SIGNAL \ucr1|c_int[13]~50_combout\ : std_logic;
SIGNAL \ucr1|Add1~23\ : std_logic;
SIGNAL \ucr1|Add1~24_combout\ : std_logic;
SIGNAL \ucr1|c_int[13]~51\ : std_logic;
SIGNAL \ucr1|c_int[14]~52_combout\ : std_logic;
SIGNAL \ucr1|Add1~25\ : std_logic;
SIGNAL \ucr1|Add1~26_combout\ : std_logic;
SIGNAL \ucr1|c_int[14]~53\ : std_logic;
SIGNAL \ucr1|c_int[15]~54_combout\ : std_logic;
SIGNAL \ucr1|Add1~27\ : std_logic;
SIGNAL \ucr1|Add1~28_combout\ : std_logic;
SIGNAL \ucr1|c_int[6]~45_combout\ : std_logic;
SIGNAL \ucr1|c_int[6]~44_combout\ : std_logic;
SIGNAL \ucr1|c_int[6]~46_combout\ : std_logic;
SIGNAL \ucr1|c_int[6]~47_combout\ : std_logic;
SIGNAL \ucr1|c_int[6]~42_combout\ : std_logic;
SIGNAL \ucr1|dir_int~q\ : std_logic;
SIGNAL \ucr1|c_int[6]~41_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan0~2_combout\ : std_logic;
SIGNAL \ucr1|c_int[6]~43_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan0~0_combout\ : std_logic;
SIGNAL \ucr1|c_int[6]~56_combout\ : std_logic;
SIGNAL \ucr1|c_int[1]~20\ : std_logic;
SIGNAL \ucr1|c_int[2]~21_combout\ : std_logic;
SIGNAL \ucr1|Add1~2_combout\ : std_logic;
SIGNAL \ucr1|c_int[2]~22\ : std_logic;
SIGNAL \ucr1|c_int[3]~23_combout\ : std_logic;
SIGNAL \ucr1|Add1~4_combout\ : std_logic;
SIGNAL \ucr1|c_int[3]~24\ : std_logic;
SIGNAL \ucr1|c_int[4]~25_combout\ : std_logic;
SIGNAL \ucr1|Add1~6_combout\ : std_logic;
SIGNAL \ucr1|c_int[4]~26\ : std_logic;
SIGNAL \ucr1|c_int[5]~27_combout\ : std_logic;
SIGNAL \ucr1|Add1~8_combout\ : std_logic;
SIGNAL \ucr1|c_int[5]~28\ : std_logic;
SIGNAL \ucr1|c_int[6]~29_combout\ : std_logic;
SIGNAL \ucr1|Add1~10_combout\ : std_logic;
SIGNAL \ucr1|c_int[6]~30\ : std_logic;
SIGNAL \ucr1|c_int[7]~31_combout\ : std_logic;
SIGNAL \ucr1|Add1~12_combout\ : std_logic;
SIGNAL \ucr1|c_int[7]~32\ : std_logic;
SIGNAL \ucr1|c_int[8]~33_combout\ : std_logic;
SIGNAL \ucr1|Add1~14_combout\ : std_logic;
SIGNAL \ucr1|c_int[8]~34\ : std_logic;
SIGNAL \ucr1|c_int[9]~35_combout\ : std_logic;
SIGNAL \ucr1|Add1~16_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan0~4_combout\ : std_logic;
SIGNAL \PWM1_FA01|comp_out~q\ : std_logic;
SIGNAL \PWM1_FA01|Add0~10\ : std_logic;
SIGNAL \PWM1_FA01|Add0~11_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~17_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~12\ : std_logic;
SIGNAL \PWM1_FA01|Add0~13_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~15_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~18_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~1\ : std_logic;
SIGNAL \PWM1_FA01|Add0~2_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~19_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~3\ : std_logic;
SIGNAL \PWM1_FA01|Add0~4_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~20_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~5\ : std_logic;
SIGNAL \PWM1_FA01|Add0~6_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~8_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~7\ : std_logic;
SIGNAL \PWM1_FA01|Add0~9_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~16_combout\ : std_logic;
SIGNAL \PWM1_FA01|Equal0~1_combout\ : std_logic;
SIGNAL \PWM1_FA01|Equal0~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|port_PWM01~q\ : std_logic;
SIGNAL \PWM1_FA01|Add1~18_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~1\ : std_logic;
SIGNAL \PWM1_FA01|Add1~2_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~19_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~3\ : std_logic;
SIGNAL \PWM1_FA01|Add1~4_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~20_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~5\ : std_logic;
SIGNAL \PWM1_FA01|Add1~6_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~8_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~7\ : std_logic;
SIGNAL \PWM1_FA01|Add1~9_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~16_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~10\ : std_logic;
SIGNAL \PWM1_FA01|Add1~11_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~17_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~12\ : std_logic;
SIGNAL \PWM1_FA01|Add1~13_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~15_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|Equal1~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|Equal1~1_combout\ : std_logic;
SIGNAL \PWM1_FA01|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|port_PWM02~q\ : std_logic;
SIGNAL \ucr2|c_int[0]~17\ : std_logic;
SIGNAL \ucr2|c_int[1]~26_combout\ : std_logic;
SIGNAL \ucr2|c_int[1]~26_wirecell_combout\ : std_logic;
SIGNAL \ucr2|c_int[1]~27\ : std_logic;
SIGNAL \ucr2|c_int[2]~28_combout\ : std_logic;
SIGNAL \ucr2|c_int[2]~28_wirecell_combout\ : std_logic;
SIGNAL \ucr2|c_int[2]~29\ : std_logic;
SIGNAL \ucr2|c_int[3]~30_combout\ : std_logic;
SIGNAL \ucr2|c_int[3]~31\ : std_logic;
SIGNAL \ucr2|c_int[4]~32_combout\ : std_logic;
SIGNAL \ucr2|c_int[4]~32_wirecell_combout\ : std_logic;
SIGNAL \ucr2|c_int[4]~33\ : std_logic;
SIGNAL \ucr2|c_int[5]~34_combout\ : std_logic;
SIGNAL \ucr2|c_int[5]~34_wirecell_combout\ : std_logic;
SIGNAL \ucr2|c_int[5]~35\ : std_logic;
SIGNAL \ucr2|c_int[6]~36_combout\ : std_logic;
SIGNAL \ucr2|dir_int~q\ : std_logic;
SIGNAL \ucr2|c_int[6]~37\ : std_logic;
SIGNAL \ucr2|c_int[7]~38_combout\ : std_logic;
SIGNAL \ucr2|c_int[7]~39\ : std_logic;
SIGNAL \ucr2|c_int[8]~40_combout\ : std_logic;
SIGNAL \ucr2|c_int[8]~40_wirecell_combout\ : std_logic;
SIGNAL \ucr2|c_int[8]~41\ : std_logic;
SIGNAL \ucr2|c_int[9]~43\ : std_logic;
SIGNAL \ucr2|c_int[10]~44_combout\ : std_logic;
SIGNAL \ucr2|c_int[10]~44_wirecell_combout\ : std_logic;
SIGNAL \ucr2|c_int[11]~18_combout\ : std_logic;
SIGNAL \ucr2|c_int[11]~19_combout\ : std_logic;
SIGNAL \ucr2|c_int[11]~20_combout\ : std_logic;
SIGNAL \ucr2|c_int[11]~21_combout\ : std_logic;
SIGNAL \ucr2|c_int[11]~22_combout\ : std_logic;
SIGNAL \ucr2|c_int[11]~23_combout\ : std_logic;
SIGNAL \ucr2|c_int[11]~24_combout\ : std_logic;
SIGNAL \ucr2|c_int[10]~45\ : std_logic;
SIGNAL \ucr2|c_int[11]~46_combout\ : std_logic;
SIGNAL \ucr2|c_int[11]~47\ : std_logic;
SIGNAL \ucr2|c_int[12]~48_combout\ : std_logic;
SIGNAL \ucr2|c_int[12]~49\ : std_logic;
SIGNAL \ucr2|c_int[13]~50_combout\ : std_logic;
SIGNAL \ucr2|c_int[13]~51\ : std_logic;
SIGNAL \ucr2|c_int[14]~52_combout\ : std_logic;
SIGNAL \ucr2|c_int[14]~53\ : std_logic;
SIGNAL \ucr2|c_int[15]~54_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan0~1_combout\ : std_logic;
SIGNAL \ucr2|c_int[11]~25_combout\ : std_logic;
SIGNAL \ucr2|c_int[9]~42_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan0~4_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan0~5_combout\ : std_logic;
SIGNAL \PWM2_FA01|comp_out~q\ : std_logic;
SIGNAL \PWM2_FA01|Add1~19_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~3\ : std_logic;
SIGNAL \PWM2_FA01|Add1~4_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~20_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~5\ : std_logic;
SIGNAL \PWM2_FA01|Add1~6_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~8_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~7\ : std_logic;
SIGNAL \PWM2_FA01|Add1~9_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~16_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~10\ : std_logic;
SIGNAL \PWM2_FA01|Add1~11_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~17_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~12\ : std_logic;
SIGNAL \PWM2_FA01|Add1~13_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~15_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~18_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~1\ : std_logic;
SIGNAL \PWM2_FA01|Add1~2_combout\ : std_logic;
SIGNAL \PWM2_FA01|Equal1~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|Equal1~1_combout\ : std_logic;
SIGNAL \PWM2_FA01|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|port_PWM02~q\ : std_logic;
SIGNAL \PWM2_FA01|Add0~20_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~5\ : std_logic;
SIGNAL \PWM2_FA01|Add0~6_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~8_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~7\ : std_logic;
SIGNAL \PWM2_FA01|Add0~9_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~16_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~10\ : std_logic;
SIGNAL \PWM2_FA01|Add0~11_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~17_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~12\ : std_logic;
SIGNAL \PWM2_FA01|Add0~13_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~15_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~18_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~1\ : std_logic;
SIGNAL \PWM2_FA01|Add0~2_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~19_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~3\ : std_logic;
SIGNAL \PWM2_FA01|Add0~4_combout\ : std_logic;
SIGNAL \PWM2_FA01|Equal0~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|Equal0~1_combout\ : std_logic;
SIGNAL \PWM2_FA01|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|port_PWM01~q\ : std_logic;
SIGNAL \ucr2|c_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \upll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PWM2_FA01|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ucr1|c_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PWM1_FA01|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FA01|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FA01|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ucr1|ALT_INV_c_int[6]~56_combout\ : std_logic;

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

\upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \upll|altpll_component|auto_generated|wire_pll1_clk\(0));
\upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\ucr1|ALT_INV_c_int[6]~56_combout\ <= NOT \ucr1|c_int[6]~56_combout\;

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => \PWM1_FA01|port_PWM01~q\,
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
	i => \PWM1_FA01|port_PWM02~q\,
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
	i => \PWM2_FA01|port_PWM02~q\,
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
	i => \PWM2_FA01|port_PWM01~q\,
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
	i => GND,
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
	i => GND,
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

-- Location: FF_X36_Y30_N21
\PWM1_FA01|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count1\(4));

-- Location: LCCOMB_X39_Y32_N0
\ucr2|c_int[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[0]~16_combout\ = \ucr2|c_int\(0) $ (GND)
-- \ucr2|c_int[0]~17\ = CARRY(!\ucr2|c_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(0),
	datad => VCC,
	combout => \ucr2|c_int[0]~16_combout\,
	cout => \ucr2|c_int[0]~17\);

-- Location: LCCOMB_X35_Y31_N0
\ucr2|c_int[0]~16_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[0]~16_wirecell_combout\ = !\ucr2|c_int[0]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr2|c_int[0]~16_combout\,
	combout => \ucr2|c_int[0]~16_wirecell_combout\);

-- Location: FF_X35_Y31_N1
\ucr2|c_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[0]~16_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(0));

-- Location: LCCOMB_X34_Y29_N0
\ucr1|c_int[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[1]~18_cout\ = CARRY(!\ucr2|c_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(0),
	datad => VCC,
	cout => \ucr1|c_int[1]~18_cout\);

-- Location: LCCOMB_X34_Y29_N2
\ucr1|c_int[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[1]~19_combout\ = (\ucr1|c_int\(1) & (\ucr1|c_int[1]~18_cout\ & VCC)) # (!\ucr1|c_int\(1) & (!\ucr1|c_int[1]~18_cout\))
-- \ucr1|c_int[1]~20\ = CARRY((!\ucr1|c_int\(1) & !\ucr1|c_int[1]~18_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(1),
	datad => VCC,
	cin => \ucr1|c_int[1]~18_cout\,
	combout => \ucr1|c_int[1]~19_combout\,
	cout => \ucr1|c_int[1]~20\);

-- Location: LCCOMB_X35_Y29_N2
\ucr1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~0_combout\ = (\ucr2|c_int\(0) & (\ucr1|c_int\(1) & VCC)) # (!\ucr2|c_int\(0) & (\ucr1|c_int\(1) $ (VCC)))
-- \ucr1|Add1~1\ = CARRY((!\ucr2|c_int\(0) & \ucr1|c_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(0),
	datab => \ucr1|c_int\(1),
	datad => VCC,
	combout => \ucr1|Add1~0_combout\,
	cout => \ucr1|Add1~1\);

-- Location: LCCOMB_X34_Y29_N18
\ucr1|c_int[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[9]~35_combout\ = (\ucr1|c_int\(9) & (\ucr1|c_int[8]~34\ & VCC)) # (!\ucr1|c_int\(9) & (!\ucr1|c_int[8]~34\))
-- \ucr1|c_int[9]~36\ = CARRY((!\ucr1|c_int\(9) & !\ucr1|c_int[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(9),
	datad => VCC,
	cin => \ucr1|c_int[8]~34\,
	combout => \ucr1|c_int[9]~35_combout\,
	cout => \ucr1|c_int[9]~36\);

-- Location: LCCOMB_X34_Y29_N20
\ucr1|c_int[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[10]~37_combout\ = (\ucr1|c_int\(10) & ((GND) # (!\ucr1|c_int[9]~36\))) # (!\ucr1|c_int\(10) & (\ucr1|c_int[9]~36\ $ (GND)))
-- \ucr1|c_int[10]~38\ = CARRY((\ucr1|c_int\(10)) # (!\ucr1|c_int[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(10),
	datad => VCC,
	cin => \ucr1|c_int[9]~36\,
	combout => \ucr1|c_int[10]~37_combout\,
	cout => \ucr1|c_int[10]~38\);

-- Location: LCCOMB_X35_Y29_N4
\ucr1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~2_combout\ = (\ucr1|c_int\(2) & (!\ucr1|Add1~1\)) # (!\ucr1|c_int\(2) & ((\ucr1|Add1~1\) # (GND)))
-- \ucr1|Add1~3\ = CARRY((!\ucr1|Add1~1\) # (!\ucr1|c_int\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(2),
	datad => VCC,
	cin => \ucr1|Add1~1\,
	combout => \ucr1|Add1~2_combout\,
	cout => \ucr1|Add1~3\);

-- Location: LCCOMB_X35_Y29_N6
\ucr1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~4_combout\ = (\ucr1|c_int\(3) & (\ucr1|Add1~3\ $ (GND))) # (!\ucr1|c_int\(3) & (!\ucr1|Add1~3\ & VCC))
-- \ucr1|Add1~5\ = CARRY((\ucr1|c_int\(3) & !\ucr1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(3),
	datad => VCC,
	cin => \ucr1|Add1~3\,
	combout => \ucr1|Add1~4_combout\,
	cout => \ucr1|Add1~5\);

-- Location: LCCOMB_X35_Y29_N8
\ucr1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~6_combout\ = (\ucr1|c_int\(4) & (!\ucr1|Add1~5\)) # (!\ucr1|c_int\(4) & ((\ucr1|Add1~5\) # (GND)))
-- \ucr1|Add1~7\ = CARRY((!\ucr1|Add1~5\) # (!\ucr1|c_int\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(4),
	datad => VCC,
	cin => \ucr1|Add1~5\,
	combout => \ucr1|Add1~6_combout\,
	cout => \ucr1|Add1~7\);

-- Location: LCCOMB_X35_Y29_N10
\ucr1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~8_combout\ = (\ucr1|c_int\(5) & (\ucr1|Add1~7\ $ (GND))) # (!\ucr1|c_int\(5) & (!\ucr1|Add1~7\ & VCC))
-- \ucr1|Add1~9\ = CARRY((\ucr1|c_int\(5) & !\ucr1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(5),
	datad => VCC,
	cin => \ucr1|Add1~7\,
	combout => \ucr1|Add1~8_combout\,
	cout => \ucr1|Add1~9\);

-- Location: LCCOMB_X35_Y29_N12
\ucr1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~10_combout\ = (\ucr1|c_int\(6) & (!\ucr1|Add1~9\)) # (!\ucr1|c_int\(6) & ((\ucr1|Add1~9\) # (GND)))
-- \ucr1|Add1~11\ = CARRY((!\ucr1|Add1~9\) # (!\ucr1|c_int\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(6),
	datad => VCC,
	cin => \ucr1|Add1~9\,
	combout => \ucr1|Add1~10_combout\,
	cout => \ucr1|Add1~11\);

-- Location: LCCOMB_X35_Y29_N14
\ucr1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~12_combout\ = (\ucr1|c_int\(7) & (\ucr1|Add1~11\ $ (GND))) # (!\ucr1|c_int\(7) & (!\ucr1|Add1~11\ & VCC))
-- \ucr1|Add1~13\ = CARRY((\ucr1|c_int\(7) & !\ucr1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(7),
	datad => VCC,
	cin => \ucr1|Add1~11\,
	combout => \ucr1|Add1~12_combout\,
	cout => \ucr1|Add1~13\);

-- Location: LCCOMB_X35_Y29_N16
\ucr1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~14_combout\ = (\ucr1|c_int\(8) & (!\ucr1|Add1~13\)) # (!\ucr1|c_int\(8) & ((\ucr1|Add1~13\) # (GND)))
-- \ucr1|Add1~15\ = CARRY((!\ucr1|Add1~13\) # (!\ucr1|c_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(8),
	datad => VCC,
	cin => \ucr1|Add1~13\,
	combout => \ucr1|Add1~14_combout\,
	cout => \ucr1|Add1~15\);

-- Location: LCCOMB_X35_Y29_N18
\ucr1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~16_combout\ = (\ucr1|c_int\(9) & (\ucr1|Add1~15\ $ (GND))) # (!\ucr1|c_int\(9) & (!\ucr1|Add1~15\ & VCC))
-- \ucr1|Add1~17\ = CARRY((\ucr1|c_int\(9) & !\ucr1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(9),
	datad => VCC,
	cin => \ucr1|Add1~15\,
	combout => \ucr1|Add1~16_combout\,
	cout => \ucr1|Add1~17\);

-- Location: LCCOMB_X35_Y29_N20
\ucr1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~18_combout\ = (\ucr1|c_int\(10) & (!\ucr1|Add1~17\)) # (!\ucr1|c_int\(10) & ((\ucr1|Add1~17\) # (GND)))
-- \ucr1|Add1~19\ = CARRY((!\ucr1|Add1~17\) # (!\ucr1|c_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(10),
	datad => VCC,
	cin => \ucr1|Add1~17\,
	combout => \ucr1|Add1~18_combout\,
	cout => \ucr1|Add1~19\);

-- Location: FF_X34_Y29_N21
\ucr1|c_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[10]~37_combout\,
	asdata => \ucr1|Add1~18_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(10));

-- Location: LCCOMB_X34_Y29_N22
\ucr1|c_int[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[11]~39_combout\ = (\ucr1|c_int\(11) & (\ucr1|c_int[10]~38\ & VCC)) # (!\ucr1|c_int\(11) & (!\ucr1|c_int[10]~38\))
-- \ucr1|c_int[11]~40\ = CARRY((!\ucr1|c_int\(11) & !\ucr1|c_int[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(11),
	datad => VCC,
	cin => \ucr1|c_int[10]~38\,
	combout => \ucr1|c_int[11]~39_combout\,
	cout => \ucr1|c_int[11]~40\);

-- Location: LCCOMB_X35_Y29_N22
\ucr1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~20_combout\ = (\ucr1|c_int\(11) & (\ucr1|Add1~19\ $ (GND))) # (!\ucr1|c_int\(11) & (!\ucr1|Add1~19\ & VCC))
-- \ucr1|Add1~21\ = CARRY((\ucr1|c_int\(11) & !\ucr1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(11),
	datad => VCC,
	cin => \ucr1|Add1~19\,
	combout => \ucr1|Add1~20_combout\,
	cout => \ucr1|Add1~21\);

-- Location: FF_X34_Y29_N23
\ucr1|c_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[11]~39_combout\,
	asdata => \ucr1|Add1~20_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(11));

-- Location: LCCOMB_X34_Y29_N24
\ucr1|c_int[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[12]~48_combout\ = (\ucr1|c_int\(12) & ((GND) # (!\ucr1|c_int[11]~40\))) # (!\ucr1|c_int\(12) & (\ucr1|c_int[11]~40\ $ (GND)))
-- \ucr1|c_int[12]~49\ = CARRY((\ucr1|c_int\(12)) # (!\ucr1|c_int[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(12),
	datad => VCC,
	cin => \ucr1|c_int[11]~40\,
	combout => \ucr1|c_int[12]~48_combout\,
	cout => \ucr1|c_int[12]~49\);

-- Location: LCCOMB_X35_Y29_N24
\ucr1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~22_combout\ = (\ucr1|c_int\(12) & (!\ucr1|Add1~21\)) # (!\ucr1|c_int\(12) & ((\ucr1|Add1~21\) # (GND)))
-- \ucr1|Add1~23\ = CARRY((!\ucr1|Add1~21\) # (!\ucr1|c_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(12),
	datad => VCC,
	cin => \ucr1|Add1~21\,
	combout => \ucr1|Add1~22_combout\,
	cout => \ucr1|Add1~23\);

-- Location: FF_X34_Y29_N25
\ucr1|c_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[12]~48_combout\,
	asdata => \ucr1|Add1~22_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(12));

-- Location: LCCOMB_X34_Y29_N26
\ucr1|c_int[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[13]~50_combout\ = (\ucr1|c_int\(13) & (\ucr1|c_int[12]~49\ & VCC)) # (!\ucr1|c_int\(13) & (!\ucr1|c_int[12]~49\))
-- \ucr1|c_int[13]~51\ = CARRY((!\ucr1|c_int\(13) & !\ucr1|c_int[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(13),
	datad => VCC,
	cin => \ucr1|c_int[12]~49\,
	combout => \ucr1|c_int[13]~50_combout\,
	cout => \ucr1|c_int[13]~51\);

-- Location: LCCOMB_X35_Y29_N26
\ucr1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~24_combout\ = (\ucr1|c_int\(13) & (\ucr1|Add1~23\ $ (GND))) # (!\ucr1|c_int\(13) & (!\ucr1|Add1~23\ & VCC))
-- \ucr1|Add1~25\ = CARRY((\ucr1|c_int\(13) & !\ucr1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(13),
	datad => VCC,
	cin => \ucr1|Add1~23\,
	combout => \ucr1|Add1~24_combout\,
	cout => \ucr1|Add1~25\);

-- Location: FF_X34_Y29_N27
\ucr1|c_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[13]~50_combout\,
	asdata => \ucr1|Add1~24_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(13));

-- Location: LCCOMB_X34_Y29_N28
\ucr1|c_int[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[14]~52_combout\ = (\ucr1|c_int\(14) & ((GND) # (!\ucr1|c_int[13]~51\))) # (!\ucr1|c_int\(14) & (\ucr1|c_int[13]~51\ $ (GND)))
-- \ucr1|c_int[14]~53\ = CARRY((\ucr1|c_int\(14)) # (!\ucr1|c_int[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(14),
	datad => VCC,
	cin => \ucr1|c_int[13]~51\,
	combout => \ucr1|c_int[14]~52_combout\,
	cout => \ucr1|c_int[14]~53\);

-- Location: LCCOMB_X35_Y29_N28
\ucr1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~26_combout\ = (\ucr1|c_int\(14) & (!\ucr1|Add1~25\)) # (!\ucr1|c_int\(14) & ((\ucr1|Add1~25\) # (GND)))
-- \ucr1|Add1~27\ = CARRY((!\ucr1|Add1~25\) # (!\ucr1|c_int\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(14),
	datad => VCC,
	cin => \ucr1|Add1~25\,
	combout => \ucr1|Add1~26_combout\,
	cout => \ucr1|Add1~27\);

-- Location: FF_X34_Y29_N29
\ucr1|c_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[14]~52_combout\,
	asdata => \ucr1|Add1~26_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(14));

-- Location: LCCOMB_X34_Y29_N30
\ucr1|c_int[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[15]~54_combout\ = \ucr1|c_int\(15) $ (!\ucr1|c_int[14]~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(15),
	cin => \ucr1|c_int[14]~53\,
	combout => \ucr1|c_int[15]~54_combout\);

-- Location: LCCOMB_X35_Y29_N30
\ucr1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~28_combout\ = \ucr1|Add1~27\ $ (!\ucr1|c_int\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ucr1|c_int\(15),
	cin => \ucr1|Add1~27\,
	combout => \ucr1|Add1~28_combout\);

-- Location: FF_X34_Y29_N31
\ucr1|c_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[15]~54_combout\,
	asdata => \ucr1|Add1~28_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(15));

-- Location: LCCOMB_X36_Y29_N16
\ucr1|c_int[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[6]~45_combout\ = (!\ucr1|c_int\(7) & !\ucr1|c_int\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucr1|c_int\(7),
	datad => \ucr1|c_int\(6),
	combout => \ucr1|c_int[6]~45_combout\);

-- Location: LCCOMB_X36_Y29_N6
\ucr1|c_int[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[6]~44_combout\ = (\ucr1|c_int\(3)) # ((\ucr1|c_int\(2) & (\ucr1|c_int\(1) & !\ucr2|c_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(3),
	datab => \ucr1|c_int\(2),
	datac => \ucr1|c_int\(1),
	datad => \ucr2|c_int\(0),
	combout => \ucr1|c_int[6]~44_combout\);

-- Location: LCCOMB_X36_Y29_N18
\ucr1|c_int[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[6]~46_combout\ = ((\ucr1|c_int\(4) & (\ucr1|c_int\(5) & \ucr1|c_int[6]~44_combout\))) # (!\ucr1|c_int[6]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(4),
	datab => \ucr1|c_int[6]~45_combout\,
	datac => \ucr1|c_int\(5),
	datad => \ucr1|c_int[6]~44_combout\,
	combout => \ucr1|c_int[6]~46_combout\);

-- Location: LCCOMB_X36_Y29_N20
\ucr1|c_int[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[6]~47_combout\ = (\ucr1|c_int\(10) & ((\ucr1|c_int\(9)) # ((\ucr1|c_int\(8) & \ucr1|c_int[6]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(9),
	datab => \ucr1|c_int\(10),
	datac => \ucr1|c_int\(8),
	datad => \ucr1|c_int[6]~46_combout\,
	combout => \ucr1|c_int[6]~47_combout\);

-- Location: LCCOMB_X36_Y29_N26
\ucr1|c_int[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[6]~42_combout\ = (\ucr1|c_int\(3)) # ((\ucr1|c_int\(2)) # (\ucr1|c_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(3),
	datab => \ucr1|c_int\(2),
	datac => \ucr1|c_int\(8),
	combout => \ucr1|c_int[6]~42_combout\);

-- Location: FF_X36_Y29_N15
\ucr1|dir_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|dir_int~q\);

-- Location: LCCOMB_X36_Y29_N8
\ucr1|c_int[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[6]~41_combout\ = (\ucr1|c_int\(9)) # ((\ucr1|c_int\(10)) # ((\ucr1|c_int\(1)) # (!\ucr2|c_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(9),
	datab => \ucr1|c_int\(10),
	datac => \ucr1|c_int\(1),
	datad => \ucr2|c_int\(0),
	combout => \ucr1|c_int[6]~41_combout\);

-- Location: LCCOMB_X36_Y29_N28
\PWM1_FA01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan0~2_combout\ = (!\ucr1|c_int\(4) & (!\ucr1|c_int\(7) & (!\ucr1|c_int\(5) & !\ucr1|c_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(4),
	datab => \ucr1|c_int\(7),
	datac => \ucr1|c_int\(5),
	datad => \ucr1|c_int\(6),
	combout => \PWM1_FA01|LessThan0~2_combout\);

-- Location: LCCOMB_X36_Y29_N4
\ucr1|c_int[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[6]~43_combout\ = (\ucr1|dir_int~q\ & ((\ucr1|c_int[6]~42_combout\) # ((\ucr1|c_int[6]~41_combout\) # (!\PWM1_FA01|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int[6]~42_combout\,
	datab => \ucr1|dir_int~q\,
	datac => \ucr1|c_int[6]~41_combout\,
	datad => \PWM1_FA01|LessThan0~2_combout\,
	combout => \ucr1|c_int[6]~43_combout\);

-- Location: LCCOMB_X36_Y29_N0
\PWM1_FA01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan0~0_combout\ = (!\ucr1|c_int\(14) & (!\ucr1|c_int\(13) & (!\ucr1|c_int\(12) & !\ucr1|c_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(14),
	datab => \ucr1|c_int\(13),
	datac => \ucr1|c_int\(12),
	datad => \ucr1|c_int\(11),
	combout => \PWM1_FA01|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y29_N14
\ucr1|c_int[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[6]~56_combout\ = (\ucr1|c_int\(15)) # ((\ucr1|c_int[6]~47_combout\) # ((\ucr1|c_int[6]~43_combout\) # (!\PWM1_FA01|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(15),
	datab => \ucr1|c_int[6]~47_combout\,
	datac => \ucr1|c_int[6]~43_combout\,
	datad => \PWM1_FA01|LessThan0~0_combout\,
	combout => \ucr1|c_int[6]~56_combout\);

-- Location: FF_X34_Y29_N3
\ucr1|c_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[1]~19_combout\,
	asdata => \ucr1|Add1~0_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(1));

-- Location: LCCOMB_X34_Y29_N4
\ucr1|c_int[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[2]~21_combout\ = (\ucr1|c_int\(2) & ((GND) # (!\ucr1|c_int[1]~20\))) # (!\ucr1|c_int\(2) & (\ucr1|c_int[1]~20\ $ (GND)))
-- \ucr1|c_int[2]~22\ = CARRY((\ucr1|c_int\(2)) # (!\ucr1|c_int[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(2),
	datad => VCC,
	cin => \ucr1|c_int[1]~20\,
	combout => \ucr1|c_int[2]~21_combout\,
	cout => \ucr1|c_int[2]~22\);

-- Location: FF_X34_Y29_N5
\ucr1|c_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[2]~21_combout\,
	asdata => \ucr1|Add1~2_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(2));

-- Location: LCCOMB_X34_Y29_N6
\ucr1|c_int[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[3]~23_combout\ = (\ucr1|c_int\(3) & (\ucr1|c_int[2]~22\ & VCC)) # (!\ucr1|c_int\(3) & (!\ucr1|c_int[2]~22\))
-- \ucr1|c_int[3]~24\ = CARRY((!\ucr1|c_int\(3) & !\ucr1|c_int[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(3),
	datad => VCC,
	cin => \ucr1|c_int[2]~22\,
	combout => \ucr1|c_int[3]~23_combout\,
	cout => \ucr1|c_int[3]~24\);

-- Location: FF_X34_Y29_N7
\ucr1|c_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[3]~23_combout\,
	asdata => \ucr1|Add1~4_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(3));

-- Location: LCCOMB_X34_Y29_N8
\ucr1|c_int[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[4]~25_combout\ = (\ucr1|c_int\(4) & ((GND) # (!\ucr1|c_int[3]~24\))) # (!\ucr1|c_int\(4) & (\ucr1|c_int[3]~24\ $ (GND)))
-- \ucr1|c_int[4]~26\ = CARRY((\ucr1|c_int\(4)) # (!\ucr1|c_int[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(4),
	datad => VCC,
	cin => \ucr1|c_int[3]~24\,
	combout => \ucr1|c_int[4]~25_combout\,
	cout => \ucr1|c_int[4]~26\);

-- Location: FF_X34_Y29_N9
\ucr1|c_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[4]~25_combout\,
	asdata => \ucr1|Add1~6_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(4));

-- Location: LCCOMB_X34_Y29_N10
\ucr1|c_int[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[5]~27_combout\ = (\ucr1|c_int\(5) & (\ucr1|c_int[4]~26\ & VCC)) # (!\ucr1|c_int\(5) & (!\ucr1|c_int[4]~26\))
-- \ucr1|c_int[5]~28\ = CARRY((!\ucr1|c_int\(5) & !\ucr1|c_int[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(5),
	datad => VCC,
	cin => \ucr1|c_int[4]~26\,
	combout => \ucr1|c_int[5]~27_combout\,
	cout => \ucr1|c_int[5]~28\);

-- Location: FF_X34_Y29_N11
\ucr1|c_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[5]~27_combout\,
	asdata => \ucr1|Add1~8_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(5));

-- Location: LCCOMB_X34_Y29_N12
\ucr1|c_int[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[6]~29_combout\ = (\ucr1|c_int\(6) & ((GND) # (!\ucr1|c_int[5]~28\))) # (!\ucr1|c_int\(6) & (\ucr1|c_int[5]~28\ $ (GND)))
-- \ucr1|c_int[6]~30\ = CARRY((\ucr1|c_int\(6)) # (!\ucr1|c_int[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(6),
	datad => VCC,
	cin => \ucr1|c_int[5]~28\,
	combout => \ucr1|c_int[6]~29_combout\,
	cout => \ucr1|c_int[6]~30\);

-- Location: FF_X34_Y29_N13
\ucr1|c_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[6]~29_combout\,
	asdata => \ucr1|Add1~10_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(6));

-- Location: LCCOMB_X34_Y29_N14
\ucr1|c_int[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[7]~31_combout\ = (\ucr1|c_int\(7) & (\ucr1|c_int[6]~30\ & VCC)) # (!\ucr1|c_int\(7) & (!\ucr1|c_int[6]~30\))
-- \ucr1|c_int[7]~32\ = CARRY((!\ucr1|c_int\(7) & !\ucr1|c_int[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(7),
	datad => VCC,
	cin => \ucr1|c_int[6]~30\,
	combout => \ucr1|c_int[7]~31_combout\,
	cout => \ucr1|c_int[7]~32\);

-- Location: FF_X34_Y29_N15
\ucr1|c_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[7]~31_combout\,
	asdata => \ucr1|Add1~12_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(7));

-- Location: LCCOMB_X34_Y29_N16
\ucr1|c_int[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[8]~33_combout\ = (\ucr1|c_int\(8) & ((GND) # (!\ucr1|c_int[7]~32\))) # (!\ucr1|c_int\(8) & (\ucr1|c_int[7]~32\ $ (GND)))
-- \ucr1|c_int[8]~34\ = CARRY((\ucr1|c_int\(8)) # (!\ucr1|c_int[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(8),
	datad => VCC,
	cin => \ucr1|c_int[7]~32\,
	combout => \ucr1|c_int[8]~33_combout\,
	cout => \ucr1|c_int[8]~34\);

-- Location: FF_X34_Y29_N17
\ucr1|c_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[8]~33_combout\,
	asdata => \ucr1|Add1~14_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(8));

-- Location: FF_X34_Y29_N19
\ucr1|c_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[9]~35_combout\,
	asdata => \ucr1|Add1~16_combout\,
	sload => \ucr1|ALT_INV_c_int[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(9));

-- Location: LCCOMB_X36_Y29_N30
\PWM1_FA01|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan0~3_combout\ = (!\ucr1|c_int\(9) & (!\ucr1|c_int\(10) & (!\ucr1|c_int\(15) & \PWM1_FA01|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(9),
	datab => \ucr1|c_int\(10),
	datac => \ucr1|c_int\(15),
	datad => \PWM1_FA01|LessThan0~0_combout\,
	combout => \PWM1_FA01|LessThan0~3_combout\);

-- Location: LCCOMB_X36_Y29_N10
\PWM1_FA01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan0~1_combout\ = ((!\ucr1|c_int\(2) & ((\ucr2|c_int\(0)) # (!\ucr1|c_int\(1))))) # (!\ucr1|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(3),
	datab => \ucr1|c_int\(2),
	datac => \ucr1|c_int\(1),
	datad => \ucr2|c_int\(0),
	combout => \PWM1_FA01|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y29_N24
\PWM1_FA01|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan0~4_combout\ = ((\ucr1|c_int\(8) & ((!\PWM1_FA01|LessThan0~1_combout\) # (!\PWM1_FA01|LessThan0~2_combout\)))) # (!\PWM1_FA01|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|LessThan0~3_combout\,
	datab => \PWM1_FA01|LessThan0~2_combout\,
	datac => \ucr1|c_int\(8),
	datad => \PWM1_FA01|LessThan0~1_combout\,
	combout => \PWM1_FA01|LessThan0~4_combout\);

-- Location: FF_X36_Y29_N25
\PWM1_FA01|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|comp_out~q\);

-- Location: LCCOMB_X36_Y30_N14
\PWM1_FA01|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~9_combout\ = (\PWM1_FA01|var_Dead_Count1\(4) & (\PWM1_FA01|Add0~7\ $ (GND))) # (!\PWM1_FA01|var_Dead_Count1\(4) & (!\PWM1_FA01|Add0~7\ & VCC))
-- \PWM1_FA01|Add0~10\ = CARRY((\PWM1_FA01|var_Dead_Count1\(4) & !\PWM1_FA01|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM1_FA01|Add0~7\,
	combout => \PWM1_FA01|Add0~9_combout\,
	cout => \PWM1_FA01|Add0~10\);

-- Location: LCCOMB_X36_Y30_N16
\PWM1_FA01|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~11_combout\ = (\PWM1_FA01|var_Dead_Count1\(5) & (!\PWM1_FA01|Add0~10\)) # (!\PWM1_FA01|var_Dead_Count1\(5) & ((\PWM1_FA01|Add0~10\) # (GND)))
-- \PWM1_FA01|Add0~12\ = CARRY((!\PWM1_FA01|Add0~10\) # (!\PWM1_FA01|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM1_FA01|Add0~10\,
	combout => \PWM1_FA01|Add0~11_combout\,
	cout => \PWM1_FA01|Add0~12\);

-- Location: LCCOMB_X36_Y30_N30
\PWM1_FA01|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~17_combout\ = (\PWM1_FA01|comp_out~q\ & \PWM1_FA01|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|comp_out~q\,
	datad => \PWM1_FA01|Add0~11_combout\,
	combout => \PWM1_FA01|Add0~17_combout\);

-- Location: FF_X36_Y30_N31
\PWM1_FA01|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count1\(5));

-- Location: LCCOMB_X36_Y30_N18
\PWM1_FA01|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~13_combout\ = \PWM1_FA01|Add0~12\ $ (!\PWM1_FA01|var_Dead_Count1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM1_FA01|var_Dead_Count1\(6),
	cin => \PWM1_FA01|Add0~12\,
	combout => \PWM1_FA01|Add0~13_combout\);

-- Location: LCCOMB_X36_Y30_N24
\PWM1_FA01|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~15_combout\ = (\PWM1_FA01|comp_out~q\ & \PWM1_FA01|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|comp_out~q\,
	datad => \PWM1_FA01|Add0~13_combout\,
	combout => \PWM1_FA01|Add0~15_combout\);

-- Location: FF_X36_Y30_N25
\PWM1_FA01|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count1\(6));

-- Location: LCCOMB_X36_Y30_N6
\PWM1_FA01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~0_combout\ = (\PWM1_FA01|LessThan1~1_combout\ & (\PWM1_FA01|var_Dead_Count1\(0) $ (VCC))) # (!\PWM1_FA01|LessThan1~1_combout\ & (\PWM1_FA01|var_Dead_Count1\(0) & VCC))
-- \PWM1_FA01|Add0~1\ = CARRY((\PWM1_FA01|LessThan1~1_combout\ & \PWM1_FA01|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|LessThan1~1_combout\,
	datab => \PWM1_FA01|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM1_FA01|Add0~0_combout\,
	cout => \PWM1_FA01|Add0~1\);

-- Location: LCCOMB_X36_Y29_N2
\PWM1_FA01|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~18_combout\ = (\PWM1_FA01|comp_out~q\ & \PWM1_FA01|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|comp_out~q\,
	datad => \PWM1_FA01|Add0~0_combout\,
	combout => \PWM1_FA01|Add0~18_combout\);

-- Location: FF_X36_Y29_N3
\PWM1_FA01|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count1\(0));

-- Location: LCCOMB_X36_Y30_N4
\PWM1_FA01|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan1~0_combout\ = (((!\PWM1_FA01|var_Dead_Count1\(3)) # (!\PWM1_FA01|var_Dead_Count1\(1))) # (!\PWM1_FA01|var_Dead_Count1\(0))) # (!\PWM1_FA01|var_Dead_Count1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count1\(2),
	datab => \PWM1_FA01|var_Dead_Count1\(0),
	datac => \PWM1_FA01|var_Dead_Count1\(1),
	datad => \PWM1_FA01|var_Dead_Count1\(3),
	combout => \PWM1_FA01|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y30_N26
\PWM1_FA01|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan1~1_combout\ = (!\PWM1_FA01|var_Dead_Count1\(5) & (!\PWM1_FA01|var_Dead_Count1\(6) & (\PWM1_FA01|LessThan1~0_combout\ & !\PWM1_FA01|var_Dead_Count1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count1\(5),
	datab => \PWM1_FA01|var_Dead_Count1\(6),
	datac => \PWM1_FA01|LessThan1~0_combout\,
	datad => \PWM1_FA01|var_Dead_Count1\(4),
	combout => \PWM1_FA01|LessThan1~1_combout\);

-- Location: LCCOMB_X36_Y30_N8
\PWM1_FA01|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~2_combout\ = (\PWM1_FA01|var_Dead_Count1\(1) & (!\PWM1_FA01|Add0~1\)) # (!\PWM1_FA01|var_Dead_Count1\(1) & ((\PWM1_FA01|Add0~1\) # (GND)))
-- \PWM1_FA01|Add0~3\ = CARRY((!\PWM1_FA01|Add0~1\) # (!\PWM1_FA01|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM1_FA01|Add0~1\,
	combout => \PWM1_FA01|Add0~2_combout\,
	cout => \PWM1_FA01|Add0~3\);

-- Location: LCCOMB_X32_Y30_N16
\PWM1_FA01|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~19_combout\ = (\PWM1_FA01|comp_out~q\ & \PWM1_FA01|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|comp_out~q\,
	datad => \PWM1_FA01|Add0~2_combout\,
	combout => \PWM1_FA01|Add0~19_combout\);

-- Location: FF_X32_Y30_N17
\PWM1_FA01|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count1\(1));

-- Location: LCCOMB_X36_Y30_N10
\PWM1_FA01|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~4_combout\ = (\PWM1_FA01|var_Dead_Count1\(2) & (\PWM1_FA01|Add0~3\ $ (GND))) # (!\PWM1_FA01|var_Dead_Count1\(2) & (!\PWM1_FA01|Add0~3\ & VCC))
-- \PWM1_FA01|Add0~5\ = CARRY((\PWM1_FA01|var_Dead_Count1\(2) & !\PWM1_FA01|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM1_FA01|Add0~3\,
	combout => \PWM1_FA01|Add0~4_combout\,
	cout => \PWM1_FA01|Add0~5\);

-- Location: LCCOMB_X36_Y29_N12
\PWM1_FA01|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~20_combout\ = (\PWM1_FA01|comp_out~q\ & \PWM1_FA01|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|comp_out~q\,
	datad => \PWM1_FA01|Add0~4_combout\,
	combout => \PWM1_FA01|Add0~20_combout\);

-- Location: FF_X36_Y29_N13
\PWM1_FA01|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count1\(2));

-- Location: LCCOMB_X36_Y30_N12
\PWM1_FA01|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~6_combout\ = (\PWM1_FA01|var_Dead_Count1\(3) & (!\PWM1_FA01|Add0~5\)) # (!\PWM1_FA01|var_Dead_Count1\(3) & ((\PWM1_FA01|Add0~5\) # (GND)))
-- \PWM1_FA01|Add0~7\ = CARRY((!\PWM1_FA01|Add0~5\) # (!\PWM1_FA01|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM1_FA01|Add0~5\,
	combout => \PWM1_FA01|Add0~6_combout\,
	cout => \PWM1_FA01|Add0~7\);

-- Location: LCCOMB_X36_Y30_N2
\PWM1_FA01|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~8_combout\ = (\PWM1_FA01|comp_out~q\ & \PWM1_FA01|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|comp_out~q\,
	datad => \PWM1_FA01|Add0~6_combout\,
	combout => \PWM1_FA01|Add0~8_combout\);

-- Location: FF_X36_Y30_N3
\PWM1_FA01|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count1\(3));

-- Location: LCCOMB_X36_Y30_N20
\PWM1_FA01|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~16_combout\ = (\PWM1_FA01|Add0~9_combout\ & \PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA01|Add0~9_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add0~16_combout\);

-- Location: LCCOMB_X36_Y30_N22
\PWM1_FA01|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Equal0~1_combout\ = (!\PWM1_FA01|Add0~16_combout\ & (!\PWM1_FA01|Add0~15_combout\ & (\PWM1_FA01|Add0~8_combout\ & !\PWM1_FA01|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Add0~16_combout\,
	datab => \PWM1_FA01|Add0~15_combout\,
	datac => \PWM1_FA01|Add0~8_combout\,
	datad => \PWM1_FA01|Add0~17_combout\,
	combout => \PWM1_FA01|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y30_N28
\PWM1_FA01|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Equal0~0_combout\ = (\PWM1_FA01|Add0~4_combout\ & (\PWM1_FA01|comp_out~q\ & (\PWM1_FA01|Add0~2_combout\ & \PWM1_FA01|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Add0~4_combout\,
	datab => \PWM1_FA01|comp_out~q\,
	datac => \PWM1_FA01|Add0~2_combout\,
	datad => \PWM1_FA01|Add0~0_combout\,
	combout => \PWM1_FA01|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y30_N0
\PWM1_FA01|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|port_PWM01~0_combout\ = (\PWM1_FA01|Equal0~1_combout\ & ((\PWM1_FA01|Equal0~0_combout\) # ((\PWM1_FA01|comp_out~q\ & \PWM1_FA01|port_PWM01~q\)))) # (!\PWM1_FA01|Equal0~1_combout\ & (\PWM1_FA01|comp_out~q\ & (\PWM1_FA01|port_PWM01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Equal0~1_combout\,
	datab => \PWM1_FA01|comp_out~q\,
	datac => \PWM1_FA01|port_PWM01~q\,
	datad => \PWM1_FA01|Equal0~0_combout\,
	combout => \PWM1_FA01|port_PWM01~0_combout\);

-- Location: FF_X36_Y30_N1
\PWM1_FA01|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|port_PWM01~q\);

-- Location: LCCOMB_X32_Y30_N26
\PWM1_FA01|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~18_combout\ = (\PWM1_FA01|Add1~0_combout\ & !\PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Add1~0_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add1~18_combout\);

-- Location: FF_X32_Y30_N27
\PWM1_FA01|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count2\(0));

-- Location: LCCOMB_X34_Y30_N6
\PWM1_FA01|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~0_combout\ = (\PWM1_FA01|var_Dead_Count2\(0) & (\PWM1_FA01|LessThan2~1_combout\ $ (VCC))) # (!\PWM1_FA01|var_Dead_Count2\(0) & (\PWM1_FA01|LessThan2~1_combout\ & VCC))
-- \PWM1_FA01|Add1~1\ = CARRY((\PWM1_FA01|var_Dead_Count2\(0) & \PWM1_FA01|LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count2\(0),
	datab => \PWM1_FA01|LessThan2~1_combout\,
	datad => VCC,
	combout => \PWM1_FA01|Add1~0_combout\,
	cout => \PWM1_FA01|Add1~1\);

-- Location: LCCOMB_X34_Y30_N8
\PWM1_FA01|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~2_combout\ = (\PWM1_FA01|var_Dead_Count2\(1) & (!\PWM1_FA01|Add1~1\)) # (!\PWM1_FA01|var_Dead_Count2\(1) & ((\PWM1_FA01|Add1~1\) # (GND)))
-- \PWM1_FA01|Add1~3\ = CARRY((!\PWM1_FA01|Add1~1\) # (!\PWM1_FA01|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM1_FA01|Add1~1\,
	combout => \PWM1_FA01|Add1~2_combout\,
	cout => \PWM1_FA01|Add1~3\);

-- Location: LCCOMB_X35_Y29_N0
\PWM1_FA01|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~19_combout\ = (\PWM1_FA01|Add1~2_combout\ & !\PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA01|Add1~2_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add1~19_combout\);

-- Location: FF_X35_Y29_N1
\PWM1_FA01|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count2\(1));

-- Location: LCCOMB_X34_Y30_N10
\PWM1_FA01|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~4_combout\ = (\PWM1_FA01|var_Dead_Count2\(2) & (\PWM1_FA01|Add1~3\ $ (GND))) # (!\PWM1_FA01|var_Dead_Count2\(2) & (!\PWM1_FA01|Add1~3\ & VCC))
-- \PWM1_FA01|Add1~5\ = CARRY((\PWM1_FA01|var_Dead_Count2\(2) & !\PWM1_FA01|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM1_FA01|Add1~3\,
	combout => \PWM1_FA01|Add1~4_combout\,
	cout => \PWM1_FA01|Add1~5\);

-- Location: LCCOMB_X34_Y30_N26
\PWM1_FA01|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~20_combout\ = (!\PWM1_FA01|comp_out~q\ & \PWM1_FA01|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|comp_out~q\,
	datac => \PWM1_FA01|Add1~4_combout\,
	combout => \PWM1_FA01|Add1~20_combout\);

-- Location: FF_X34_Y30_N27
\PWM1_FA01|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count2\(2));

-- Location: LCCOMB_X34_Y30_N12
\PWM1_FA01|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~6_combout\ = (\PWM1_FA01|var_Dead_Count2\(3) & (!\PWM1_FA01|Add1~5\)) # (!\PWM1_FA01|var_Dead_Count2\(3) & ((\PWM1_FA01|Add1~5\) # (GND)))
-- \PWM1_FA01|Add1~7\ = CARRY((!\PWM1_FA01|Add1~5\) # (!\PWM1_FA01|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM1_FA01|Add1~5\,
	combout => \PWM1_FA01|Add1~6_combout\,
	cout => \PWM1_FA01|Add1~7\);

-- Location: LCCOMB_X34_Y30_N4
\PWM1_FA01|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~8_combout\ = (!\PWM1_FA01|comp_out~q\ & \PWM1_FA01|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|comp_out~q\,
	datad => \PWM1_FA01|Add1~6_combout\,
	combout => \PWM1_FA01|Add1~8_combout\);

-- Location: FF_X34_Y30_N5
\PWM1_FA01|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count2\(3));

-- Location: LCCOMB_X34_Y30_N28
\PWM1_FA01|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan2~0_combout\ = (((!\PWM1_FA01|var_Dead_Count2\(1)) # (!\PWM1_FA01|var_Dead_Count2\(0))) # (!\PWM1_FA01|var_Dead_Count2\(3))) # (!\PWM1_FA01|var_Dead_Count2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count2\(2),
	datab => \PWM1_FA01|var_Dead_Count2\(3),
	datac => \PWM1_FA01|var_Dead_Count2\(0),
	datad => \PWM1_FA01|var_Dead_Count2\(1),
	combout => \PWM1_FA01|LessThan2~0_combout\);

-- Location: LCCOMB_X34_Y30_N14
\PWM1_FA01|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~9_combout\ = (\PWM1_FA01|var_Dead_Count2\(4) & (\PWM1_FA01|Add1~7\ $ (GND))) # (!\PWM1_FA01|var_Dead_Count2\(4) & (!\PWM1_FA01|Add1~7\ & VCC))
-- \PWM1_FA01|Add1~10\ = CARRY((\PWM1_FA01|var_Dead_Count2\(4) & !\PWM1_FA01|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM1_FA01|Add1~7\,
	combout => \PWM1_FA01|Add1~9_combout\,
	cout => \PWM1_FA01|Add1~10\);

-- Location: LCCOMB_X36_Y29_N22
\PWM1_FA01|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~16_combout\ = (\PWM1_FA01|Add1~9_combout\ & !\PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|Add1~9_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add1~16_combout\);

-- Location: FF_X36_Y29_N23
\PWM1_FA01|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count2\(4));

-- Location: LCCOMB_X34_Y30_N16
\PWM1_FA01|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~11_combout\ = (\PWM1_FA01|var_Dead_Count2\(5) & (!\PWM1_FA01|Add1~10\)) # (!\PWM1_FA01|var_Dead_Count2\(5) & ((\PWM1_FA01|Add1~10\) # (GND)))
-- \PWM1_FA01|Add1~12\ = CARRY((!\PWM1_FA01|Add1~10\) # (!\PWM1_FA01|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM1_FA01|Add1~10\,
	combout => \PWM1_FA01|Add1~11_combout\,
	cout => \PWM1_FA01|Add1~12\);

-- Location: LCCOMB_X34_Y30_N22
\PWM1_FA01|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~17_combout\ = (\PWM1_FA01|Add1~11_combout\ & !\PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|Add1~11_combout\,
	datac => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add1~17_combout\);

-- Location: FF_X34_Y30_N23
\PWM1_FA01|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count2\(5));

-- Location: LCCOMB_X34_Y30_N18
\PWM1_FA01|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~13_combout\ = \PWM1_FA01|Add1~12\ $ (!\PWM1_FA01|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM1_FA01|var_Dead_Count2\(6),
	cin => \PWM1_FA01|Add1~12\,
	combout => \PWM1_FA01|Add1~13_combout\);

-- Location: LCCOMB_X34_Y30_N0
\PWM1_FA01|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~15_combout\ = (\PWM1_FA01|Add1~13_combout\ & !\PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|Add1~13_combout\,
	datac => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add1~15_combout\);

-- Location: FF_X34_Y30_N1
\PWM1_FA01|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|var_Dead_Count2\(6));

-- Location: LCCOMB_X34_Y30_N2
\PWM1_FA01|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan2~1_combout\ = (\PWM1_FA01|LessThan2~0_combout\ & (!\PWM1_FA01|var_Dead_Count2\(6) & (!\PWM1_FA01|var_Dead_Count2\(5) & !\PWM1_FA01|var_Dead_Count2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|LessThan2~0_combout\,
	datab => \PWM1_FA01|var_Dead_Count2\(6),
	datac => \PWM1_FA01|var_Dead_Count2\(5),
	datad => \PWM1_FA01|var_Dead_Count2\(4),
	combout => \PWM1_FA01|LessThan2~1_combout\);

-- Location: LCCOMB_X34_Y30_N20
\PWM1_FA01|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Equal1~0_combout\ = (\PWM1_FA01|Add1~0_combout\ & (\PWM1_FA01|Add1~4_combout\ & (!\PWM1_FA01|comp_out~q\ & \PWM1_FA01|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Add1~0_combout\,
	datab => \PWM1_FA01|Add1~4_combout\,
	datac => \PWM1_FA01|comp_out~q\,
	datad => \PWM1_FA01|Add1~2_combout\,
	combout => \PWM1_FA01|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y30_N30
\PWM1_FA01|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Equal1~1_combout\ = (!\PWM1_FA01|Add1~15_combout\ & (\PWM1_FA01|Add1~8_combout\ & (!\PWM1_FA01|Add1~17_combout\ & !\PWM1_FA01|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Add1~15_combout\,
	datab => \PWM1_FA01|Add1~8_combout\,
	datac => \PWM1_FA01|Add1~17_combout\,
	datad => \PWM1_FA01|Add1~16_combout\,
	combout => \PWM1_FA01|Equal1~1_combout\);

-- Location: LCCOMB_X34_Y30_N24
\PWM1_FA01|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|port_PWM02~0_combout\ = (\PWM1_FA01|comp_out~q\ & (\PWM1_FA01|Equal1~0_combout\ & ((\PWM1_FA01|Equal1~1_combout\)))) # (!\PWM1_FA01|comp_out~q\ & ((\PWM1_FA01|port_PWM02~q\) # ((\PWM1_FA01|Equal1~0_combout\ & \PWM1_FA01|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|comp_out~q\,
	datab => \PWM1_FA01|Equal1~0_combout\,
	datac => \PWM1_FA01|port_PWM02~q\,
	datad => \PWM1_FA01|Equal1~1_combout\,
	combout => \PWM1_FA01|port_PWM02~0_combout\);

-- Location: FF_X34_Y30_N25
\PWM1_FA01|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA01|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA01|port_PWM02~q\);

-- Location: LCCOMB_X39_Y32_N2
\ucr2|c_int[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[1]~26_combout\ = (\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int\(1) & (!\ucr2|c_int[0]~17\)) # (!\ucr2|c_int\(1) & (\ucr2|c_int[0]~17\ & VCC)))) # (!\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int\(1) & ((\ucr2|c_int[0]~17\) # (GND))) # 
-- (!\ucr2|c_int\(1) & (!\ucr2|c_int[0]~17\))))
-- \ucr2|c_int[1]~27\ = CARRY((\ucr2|c_int[11]~25_combout\ & (\ucr2|c_int\(1) & !\ucr2|c_int[0]~17\)) # (!\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int\(1)) # (!\ucr2|c_int[0]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[11]~25_combout\,
	datab => \ucr2|c_int\(1),
	datad => VCC,
	cin => \ucr2|c_int[0]~17\,
	combout => \ucr2|c_int[1]~26_combout\,
	cout => \ucr2|c_int[1]~27\);

-- Location: LCCOMB_X40_Y32_N0
\ucr2|c_int[1]~26_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[1]~26_wirecell_combout\ = !\ucr2|c_int[1]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr2|c_int[1]~26_combout\,
	combout => \ucr2|c_int[1]~26_wirecell_combout\);

-- Location: FF_X40_Y32_N1
\ucr2|c_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[1]~26_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(1));

-- Location: LCCOMB_X39_Y32_N4
\ucr2|c_int[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[2]~28_combout\ = ((\ucr2|c_int[11]~25_combout\ $ (\ucr2|c_int\(2) $ (\ucr2|c_int[1]~27\)))) # (GND)
-- \ucr2|c_int[2]~29\ = CARRY((\ucr2|c_int[11]~25_combout\ & ((!\ucr2|c_int[1]~27\) # (!\ucr2|c_int\(2)))) # (!\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int\(2) & !\ucr2|c_int[1]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[11]~25_combout\,
	datab => \ucr2|c_int\(2),
	datad => VCC,
	cin => \ucr2|c_int[1]~27\,
	combout => \ucr2|c_int[2]~28_combout\,
	cout => \ucr2|c_int[2]~29\);

-- Location: LCCOMB_X39_Y33_N8
\ucr2|c_int[2]~28_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[2]~28_wirecell_combout\ = !\ucr2|c_int[2]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr2|c_int[2]~28_combout\,
	combout => \ucr2|c_int[2]~28_wirecell_combout\);

-- Location: FF_X39_Y33_N9
\ucr2|c_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[2]~28_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(2));

-- Location: LCCOMB_X39_Y32_N6
\ucr2|c_int[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[3]~30_combout\ = (\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int\(3) & (\ucr2|c_int[2]~29\ & VCC)) # (!\ucr2|c_int\(3) & (!\ucr2|c_int[2]~29\)))) # (!\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int\(3) & (!\ucr2|c_int[2]~29\)) # (!\ucr2|c_int\(3) & 
-- ((\ucr2|c_int[2]~29\) # (GND)))))
-- \ucr2|c_int[3]~31\ = CARRY((\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int\(3) & !\ucr2|c_int[2]~29\)) # (!\ucr2|c_int[11]~25_combout\ & ((!\ucr2|c_int[2]~29\) # (!\ucr2|c_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[11]~25_combout\,
	datab => \ucr2|c_int\(3),
	datad => VCC,
	cin => \ucr2|c_int[2]~29\,
	combout => \ucr2|c_int[3]~30_combout\,
	cout => \ucr2|c_int[3]~31\);

-- Location: FF_X39_Y32_N7
\ucr2|c_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[3]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(3));

-- Location: LCCOMB_X39_Y32_N8
\ucr2|c_int[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[4]~32_combout\ = ((\ucr2|c_int\(4) $ (\ucr2|c_int[11]~25_combout\ $ (\ucr2|c_int[3]~31\)))) # (GND)
-- \ucr2|c_int[4]~33\ = CARRY((\ucr2|c_int\(4) & (\ucr2|c_int[11]~25_combout\ & !\ucr2|c_int[3]~31\)) # (!\ucr2|c_int\(4) & ((\ucr2|c_int[11]~25_combout\) # (!\ucr2|c_int[3]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(4),
	datab => \ucr2|c_int[11]~25_combout\,
	datad => VCC,
	cin => \ucr2|c_int[3]~31\,
	combout => \ucr2|c_int[4]~32_combout\,
	cout => \ucr2|c_int[4]~33\);

-- Location: LCCOMB_X40_Y32_N2
\ucr2|c_int[4]~32_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[4]~32_wirecell_combout\ = !\ucr2|c_int[4]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr2|c_int[4]~32_combout\,
	combout => \ucr2|c_int[4]~32_wirecell_combout\);

-- Location: FF_X40_Y32_N3
\ucr2|c_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[4]~32_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(4));

-- Location: LCCOMB_X39_Y32_N10
\ucr2|c_int[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[5]~34_combout\ = (\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int\(5) & (!\ucr2|c_int[4]~33\)) # (!\ucr2|c_int\(5) & (\ucr2|c_int[4]~33\ & VCC)))) # (!\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int\(5) & ((\ucr2|c_int[4]~33\) # (GND))) # 
-- (!\ucr2|c_int\(5) & (!\ucr2|c_int[4]~33\))))
-- \ucr2|c_int[5]~35\ = CARRY((\ucr2|c_int[11]~25_combout\ & (\ucr2|c_int\(5) & !\ucr2|c_int[4]~33\)) # (!\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int\(5)) # (!\ucr2|c_int[4]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[11]~25_combout\,
	datab => \ucr2|c_int\(5),
	datad => VCC,
	cin => \ucr2|c_int[4]~33\,
	combout => \ucr2|c_int[5]~34_combout\,
	cout => \ucr2|c_int[5]~35\);

-- Location: LCCOMB_X40_Y33_N0
\ucr2|c_int[5]~34_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[5]~34_wirecell_combout\ = !\ucr2|c_int[5]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr2|c_int[5]~34_combout\,
	combout => \ucr2|c_int[5]~34_wirecell_combout\);

-- Location: FF_X40_Y33_N1
\ucr2|c_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[5]~34_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(5));

-- Location: LCCOMB_X39_Y32_N12
\ucr2|c_int[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[6]~36_combout\ = ((\ucr2|c_int[11]~25_combout\ $ (\ucr2|c_int\(6) $ (!\ucr2|c_int[5]~35\)))) # (GND)
-- \ucr2|c_int[6]~37\ = CARRY((\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int\(6)) # (!\ucr2|c_int[5]~35\))) # (!\ucr2|c_int[11]~25_combout\ & (\ucr2|c_int\(6) & !\ucr2|c_int[5]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[11]~25_combout\,
	datab => \ucr2|c_int\(6),
	datad => VCC,
	cin => \ucr2|c_int[5]~35\,
	combout => \ucr2|c_int[6]~36_combout\,
	cout => \ucr2|c_int[6]~37\);

-- Location: FF_X39_Y32_N13
\ucr2|c_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(6));

-- Location: FF_X40_Y32_N17
\ucr2|dir_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|dir_int~q\);

-- Location: LCCOMB_X39_Y32_N14
\ucr2|c_int[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[7]~38_combout\ = (\ucr2|c_int\(7) & ((\ucr2|c_int[11]~25_combout\ & (\ucr2|c_int[6]~37\ & VCC)) # (!\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int[6]~37\)))) # (!\ucr2|c_int\(7) & ((\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int[6]~37\)) # 
-- (!\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int[6]~37\) # (GND)))))
-- \ucr2|c_int[7]~39\ = CARRY((\ucr2|c_int\(7) & (!\ucr2|c_int[11]~25_combout\ & !\ucr2|c_int[6]~37\)) # (!\ucr2|c_int\(7) & ((!\ucr2|c_int[6]~37\) # (!\ucr2|c_int[11]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(7),
	datab => \ucr2|c_int[11]~25_combout\,
	datad => VCC,
	cin => \ucr2|c_int[6]~37\,
	combout => \ucr2|c_int[7]~38_combout\,
	cout => \ucr2|c_int[7]~39\);

-- Location: FF_X39_Y32_N15
\ucr2|c_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(7));

-- Location: LCCOMB_X39_Y32_N16
\ucr2|c_int[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[8]~40_combout\ = ((\ucr2|c_int[11]~25_combout\ $ (\ucr2|c_int\(8) $ (\ucr2|c_int[7]~39\)))) # (GND)
-- \ucr2|c_int[8]~41\ = CARRY((\ucr2|c_int[11]~25_combout\ & ((!\ucr2|c_int[7]~39\) # (!\ucr2|c_int\(8)))) # (!\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int\(8) & !\ucr2|c_int[7]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[11]~25_combout\,
	datab => \ucr2|c_int\(8),
	datad => VCC,
	cin => \ucr2|c_int[7]~39\,
	combout => \ucr2|c_int[8]~40_combout\,
	cout => \ucr2|c_int[8]~41\);

-- Location: LCCOMB_X39_Y30_N0
\ucr2|c_int[8]~40_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[8]~40_wirecell_combout\ = !\ucr2|c_int[8]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr2|c_int[8]~40_combout\,
	combout => \ucr2|c_int[8]~40_wirecell_combout\);

-- Location: FF_X39_Y30_N1
\ucr2|c_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[8]~40_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(8));

-- Location: LCCOMB_X39_Y32_N18
\ucr2|c_int[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[9]~42_combout\ = (\ucr2|c_int\(9) & ((\ucr2|c_int[11]~25_combout\ & (\ucr2|c_int[8]~41\ & VCC)) # (!\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int[8]~41\)))) # (!\ucr2|c_int\(9) & ((\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int[8]~41\)) # 
-- (!\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int[8]~41\) # (GND)))))
-- \ucr2|c_int[9]~43\ = CARRY((\ucr2|c_int\(9) & (!\ucr2|c_int[11]~25_combout\ & !\ucr2|c_int[8]~41\)) # (!\ucr2|c_int\(9) & ((!\ucr2|c_int[8]~41\) # (!\ucr2|c_int[11]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(9),
	datab => \ucr2|c_int[11]~25_combout\,
	datad => VCC,
	cin => \ucr2|c_int[8]~41\,
	combout => \ucr2|c_int[9]~42_combout\,
	cout => \ucr2|c_int[9]~43\);

-- Location: LCCOMB_X39_Y32_N20
\ucr2|c_int[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[10]~44_combout\ = ((\ucr2|c_int[11]~25_combout\ $ (\ucr2|c_int\(10) $ (\ucr2|c_int[9]~43\)))) # (GND)
-- \ucr2|c_int[10]~45\ = CARRY((\ucr2|c_int[11]~25_combout\ & ((!\ucr2|c_int[9]~43\) # (!\ucr2|c_int\(10)))) # (!\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int\(10) & !\ucr2|c_int[9]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[11]~25_combout\,
	datab => \ucr2|c_int\(10),
	datad => VCC,
	cin => \ucr2|c_int[9]~43\,
	combout => \ucr2|c_int[10]~44_combout\,
	cout => \ucr2|c_int[10]~45\);

-- Location: LCCOMB_X41_Y32_N8
\ucr2|c_int[10]~44_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[10]~44_wirecell_combout\ = !\ucr2|c_int[10]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr2|c_int[10]~44_combout\,
	combout => \ucr2|c_int[10]~44_wirecell_combout\);

-- Location: FF_X41_Y32_N9
\ucr2|c_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[10]~44_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(10));

-- Location: LCCOMB_X40_Y32_N10
\ucr2|c_int[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[11]~18_combout\ = (!\ucr2|c_int\(10) & !\ucr2|c_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(10),
	datac => \ucr2|c_int\(8),
	combout => \ucr2|c_int[11]~18_combout\);

-- Location: LCCOMB_X40_Y32_N12
\ucr2|c_int[11]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[11]~19_combout\ = (\ucr2|c_int\(6) & ((\ucr2|dir_int~q\) # ((\ucr2|c_int[11]~18_combout\)))) # (!\ucr2|c_int\(6) & (\ucr2|c_int\(7) & ((\ucr2|dir_int~q\) # (\ucr2|c_int[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(6),
	datab => \ucr2|dir_int~q\,
	datac => \ucr2|c_int\(7),
	datad => \ucr2|c_int[11]~18_combout\,
	combout => \ucr2|c_int[11]~19_combout\);

-- Location: LCCOMB_X40_Y32_N22
\ucr2|c_int[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[11]~20_combout\ = (\ucr2|c_int\(3)) # ((!\ucr2|c_int\(0) & (!\ucr2|c_int\(2) & !\ucr2|c_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(0),
	datab => \ucr2|c_int\(3),
	datac => \ucr2|c_int\(2),
	datad => \ucr2|c_int\(1),
	combout => \ucr2|c_int[11]~20_combout\);

-- Location: LCCOMB_X40_Y32_N8
\ucr2|c_int[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[11]~21_combout\ = (\ucr2|c_int[11]~18_combout\ & (!\ucr2|c_int\(4) & (\ucr2|c_int[11]~20_combout\ & !\ucr2|c_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[11]~18_combout\,
	datab => \ucr2|c_int\(4),
	datac => \ucr2|c_int[11]~20_combout\,
	datad => \ucr2|c_int\(5),
	combout => \ucr2|c_int[11]~21_combout\);

-- Location: LCCOMB_X40_Y32_N26
\ucr2|c_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[11]~22_combout\ = (\ucr2|c_int\(0) & (!\ucr2|c_int\(3) & (\ucr2|c_int\(2) & \ucr2|c_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(0),
	datab => \ucr2|c_int\(3),
	datac => \ucr2|c_int\(2),
	datad => \ucr2|c_int\(5),
	combout => \ucr2|c_int[11]~22_combout\);

-- Location: LCCOMB_X40_Y32_N4
\ucr2|c_int[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[11]~23_combout\ = (\ucr2|c_int[11]~22_combout\ & (\ucr2|c_int\(1) & (\ucr2|c_int\(8) & \ucr2|c_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[11]~22_combout\,
	datab => \ucr2|c_int\(1),
	datac => \ucr2|c_int\(8),
	datad => \ucr2|c_int\(4),
	combout => \ucr2|c_int[11]~23_combout\);

-- Location: LCCOMB_X40_Y32_N30
\ucr2|c_int[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[11]~24_combout\ = (\ucr2|c_int\(9) & (((\ucr2|dir_int~q\) # (!\ucr2|c_int\(10))))) # (!\ucr2|c_int\(9) & (\ucr2|dir_int~q\ & ((!\ucr2|c_int\(10)) # (!\ucr2|c_int[11]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(9),
	datab => \ucr2|c_int[11]~23_combout\,
	datac => \ucr2|c_int\(10),
	datad => \ucr2|dir_int~q\,
	combout => \ucr2|c_int[11]~24_combout\);

-- Location: LCCOMB_X39_Y32_N22
\ucr2|c_int[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[11]~46_combout\ = (\ucr2|c_int\(11) & ((\ucr2|c_int[11]~25_combout\ & (\ucr2|c_int[10]~45\ & VCC)) # (!\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int[10]~45\)))) # (!\ucr2|c_int\(11) & ((\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int[10]~45\)) # 
-- (!\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int[10]~45\) # (GND)))))
-- \ucr2|c_int[11]~47\ = CARRY((\ucr2|c_int\(11) & (!\ucr2|c_int[11]~25_combout\ & !\ucr2|c_int[10]~45\)) # (!\ucr2|c_int\(11) & ((!\ucr2|c_int[10]~45\) # (!\ucr2|c_int[11]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(11),
	datab => \ucr2|c_int[11]~25_combout\,
	datad => VCC,
	cin => \ucr2|c_int[10]~45\,
	combout => \ucr2|c_int[11]~46_combout\,
	cout => \ucr2|c_int[11]~47\);

-- Location: FF_X39_Y32_N23
\ucr2|c_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[11]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(11));

-- Location: LCCOMB_X39_Y32_N24
\ucr2|c_int[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[12]~48_combout\ = ((\ucr2|c_int\(12) $ (\ucr2|c_int[11]~25_combout\ $ (!\ucr2|c_int[11]~47\)))) # (GND)
-- \ucr2|c_int[12]~49\ = CARRY((\ucr2|c_int\(12) & ((\ucr2|c_int[11]~25_combout\) # (!\ucr2|c_int[11]~47\))) # (!\ucr2|c_int\(12) & (\ucr2|c_int[11]~25_combout\ & !\ucr2|c_int[11]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(12),
	datab => \ucr2|c_int[11]~25_combout\,
	datad => VCC,
	cin => \ucr2|c_int[11]~47\,
	combout => \ucr2|c_int[12]~48_combout\,
	cout => \ucr2|c_int[12]~49\);

-- Location: FF_X39_Y32_N25
\ucr2|c_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(12));

-- Location: LCCOMB_X39_Y32_N26
\ucr2|c_int[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[13]~50_combout\ = (\ucr2|c_int\(13) & ((\ucr2|c_int[11]~25_combout\ & (\ucr2|c_int[12]~49\ & VCC)) # (!\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int[12]~49\)))) # (!\ucr2|c_int\(13) & ((\ucr2|c_int[11]~25_combout\ & (!\ucr2|c_int[12]~49\)) # 
-- (!\ucr2|c_int[11]~25_combout\ & ((\ucr2|c_int[12]~49\) # (GND)))))
-- \ucr2|c_int[13]~51\ = CARRY((\ucr2|c_int\(13) & (!\ucr2|c_int[11]~25_combout\ & !\ucr2|c_int[12]~49\)) # (!\ucr2|c_int\(13) & ((!\ucr2|c_int[12]~49\) # (!\ucr2|c_int[11]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(13),
	datab => \ucr2|c_int[11]~25_combout\,
	datad => VCC,
	cin => \ucr2|c_int[12]~49\,
	combout => \ucr2|c_int[13]~50_combout\,
	cout => \ucr2|c_int[13]~51\);

-- Location: FF_X39_Y32_N27
\ucr2|c_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[13]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(13));

-- Location: LCCOMB_X39_Y32_N28
\ucr2|c_int[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[14]~52_combout\ = ((\ucr2|c_int\(14) $ (\ucr2|c_int[11]~25_combout\ $ (!\ucr2|c_int[13]~51\)))) # (GND)
-- \ucr2|c_int[14]~53\ = CARRY((\ucr2|c_int\(14) & ((\ucr2|c_int[11]~25_combout\) # (!\ucr2|c_int[13]~51\))) # (!\ucr2|c_int\(14) & (\ucr2|c_int[11]~25_combout\ & !\ucr2|c_int[13]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(14),
	datab => \ucr2|c_int[11]~25_combout\,
	datad => VCC,
	cin => \ucr2|c_int[13]~51\,
	combout => \ucr2|c_int[14]~52_combout\,
	cout => \ucr2|c_int[14]~53\);

-- Location: FF_X39_Y32_N29
\ucr2|c_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[14]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(14));

-- Location: LCCOMB_X39_Y32_N30
\ucr2|c_int[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[15]~54_combout\ = \ucr2|c_int\(15) $ (\ucr2|c_int[14]~53\ $ (\ucr2|c_int[11]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(15),
	datad => \ucr2|c_int[11]~25_combout\,
	cin => \ucr2|c_int[14]~53\,
	combout => \ucr2|c_int[15]~54_combout\);

-- Location: FF_X39_Y32_N31
\ucr2|c_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(15));

-- Location: LCCOMB_X40_Y32_N6
\PWM2_FA01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan0~0_combout\ = (!\ucr2|c_int\(12) & (!\ucr2|c_int\(14) & (!\ucr2|c_int\(13) & !\ucr2|c_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(12),
	datab => \ucr2|c_int\(14),
	datac => \ucr2|c_int\(13),
	datad => \ucr2|c_int\(11),
	combout => \PWM2_FA01|LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y32_N24
\PWM2_FA01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan0~1_combout\ = (!\ucr2|c_int\(15) & \PWM2_FA01|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(15),
	datad => \PWM2_FA01|LessThan0~0_combout\,
	combout => \PWM2_FA01|LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y32_N16
\ucr2|c_int[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[11]~25_combout\ = (\ucr2|c_int[11]~19_combout\) # ((\ucr2|c_int[11]~21_combout\) # ((\ucr2|c_int[11]~24_combout\) # (!\PWM2_FA01|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[11]~19_combout\,
	datab => \ucr2|c_int[11]~21_combout\,
	datac => \ucr2|c_int[11]~24_combout\,
	datad => \PWM2_FA01|LessThan0~1_combout\,
	combout => \ucr2|c_int[11]~25_combout\);

-- Location: FF_X39_Y32_N19
\ucr2|c_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(9));

-- Location: LCCOMB_X40_Y32_N28
\PWM2_FA01|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan0~3_combout\ = (!\ucr2|c_int\(6) & (\ucr2|c_int\(4) & (!\ucr2|c_int\(7) & \ucr2|c_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(6),
	datab => \ucr2|c_int\(4),
	datac => \ucr2|c_int\(7),
	datad => \ucr2|c_int\(5),
	combout => \PWM2_FA01|LessThan0~3_combout\);

-- Location: LCCOMB_X40_Y32_N18
\PWM2_FA01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan0~2_combout\ = ((\ucr2|c_int\(2) & ((\ucr2|c_int\(0)) # (\ucr2|c_int\(1))))) # (!\ucr2|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(0),
	datab => \ucr2|c_int\(3),
	datac => \ucr2|c_int\(2),
	datad => \ucr2|c_int\(1),
	combout => \PWM2_FA01|LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y32_N14
\PWM2_FA01|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan0~4_combout\ = (\ucr2|c_int\(8)) # ((\PWM2_FA01|LessThan0~3_combout\ & \PWM2_FA01|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|LessThan0~3_combout\,
	datac => \ucr2|c_int\(8),
	datad => \PWM2_FA01|LessThan0~2_combout\,
	combout => \PWM2_FA01|LessThan0~4_combout\);

-- Location: LCCOMB_X40_Y32_N20
\PWM2_FA01|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan0~5_combout\ = (\ucr2|c_int\(9)) # (((!\PWM2_FA01|LessThan0~1_combout\) # (!\ucr2|c_int\(10))) # (!\PWM2_FA01|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(9),
	datab => \PWM2_FA01|LessThan0~4_combout\,
	datac => \ucr2|c_int\(10),
	datad => \PWM2_FA01|LessThan0~1_combout\,
	combout => \PWM2_FA01|LessThan0~5_combout\);

-- Location: FF_X40_Y32_N21
\PWM2_FA01|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|comp_out~q\);

-- Location: LCCOMB_X38_Y31_N2
\PWM2_FA01|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~19_combout\ = (\PWM2_FA01|Add1~2_combout\ & !\PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|Add1~2_combout\,
	datad => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add1~19_combout\);

-- Location: FF_X38_Y31_N3
\PWM2_FA01|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count2\(1));

-- Location: LCCOMB_X38_Y31_N20
\PWM2_FA01|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~2_combout\ = (\PWM2_FA01|var_Dead_Count2\(1) & (!\PWM2_FA01|Add1~1\)) # (!\PWM2_FA01|var_Dead_Count2\(1) & ((\PWM2_FA01|Add1~1\) # (GND)))
-- \PWM2_FA01|Add1~3\ = CARRY((!\PWM2_FA01|Add1~1\) # (!\PWM2_FA01|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM2_FA01|Add1~1\,
	combout => \PWM2_FA01|Add1~2_combout\,
	cout => \PWM2_FA01|Add1~3\);

-- Location: LCCOMB_X38_Y31_N22
\PWM2_FA01|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~4_combout\ = (\PWM2_FA01|var_Dead_Count2\(2) & (\PWM2_FA01|Add1~3\ $ (GND))) # (!\PWM2_FA01|var_Dead_Count2\(2) & (!\PWM2_FA01|Add1~3\ & VCC))
-- \PWM2_FA01|Add1~5\ = CARRY((\PWM2_FA01|var_Dead_Count2\(2) & !\PWM2_FA01|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM2_FA01|Add1~3\,
	combout => \PWM2_FA01|Add1~4_combout\,
	cout => \PWM2_FA01|Add1~5\);

-- Location: LCCOMB_X39_Y31_N18
\PWM2_FA01|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~20_combout\ = (\PWM2_FA01|Add1~4_combout\ & !\PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|Add1~4_combout\,
	datac => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add1~20_combout\);

-- Location: FF_X39_Y31_N19
\PWM2_FA01|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count2\(2));

-- Location: LCCOMB_X38_Y31_N24
\PWM2_FA01|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~6_combout\ = (\PWM2_FA01|var_Dead_Count2\(3) & (!\PWM2_FA01|Add1~5\)) # (!\PWM2_FA01|var_Dead_Count2\(3) & ((\PWM2_FA01|Add1~5\) # (GND)))
-- \PWM2_FA01|Add1~7\ = CARRY((!\PWM2_FA01|Add1~5\) # (!\PWM2_FA01|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM2_FA01|Add1~5\,
	combout => \PWM2_FA01|Add1~6_combout\,
	cout => \PWM2_FA01|Add1~7\);

-- Location: LCCOMB_X38_Y31_N4
\PWM2_FA01|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~8_combout\ = (\PWM2_FA01|Add1~6_combout\ & !\PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|Add1~6_combout\,
	datad => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add1~8_combout\);

-- Location: FF_X38_Y31_N5
\PWM2_FA01|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count2\(3));

-- Location: LCCOMB_X38_Y31_N6
\PWM2_FA01|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan2~0_combout\ = (((!\PWM2_FA01|var_Dead_Count2\(2)) # (!\PWM2_FA01|var_Dead_Count2\(3))) # (!\PWM2_FA01|var_Dead_Count2\(1))) # (!\PWM2_FA01|var_Dead_Count2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count2\(0),
	datab => \PWM2_FA01|var_Dead_Count2\(1),
	datac => \PWM2_FA01|var_Dead_Count2\(3),
	datad => \PWM2_FA01|var_Dead_Count2\(2),
	combout => \PWM2_FA01|LessThan2~0_combout\);

-- Location: LCCOMB_X38_Y31_N26
\PWM2_FA01|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~9_combout\ = (\PWM2_FA01|var_Dead_Count2\(4) & (\PWM2_FA01|Add1~7\ $ (GND))) # (!\PWM2_FA01|var_Dead_Count2\(4) & (!\PWM2_FA01|Add1~7\ & VCC))
-- \PWM2_FA01|Add1~10\ = CARRY((\PWM2_FA01|var_Dead_Count2\(4) & !\PWM2_FA01|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM2_FA01|Add1~7\,
	combout => \PWM2_FA01|Add1~9_combout\,
	cout => \PWM2_FA01|Add1~10\);

-- Location: LCCOMB_X38_Y31_N16
\PWM2_FA01|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~16_combout\ = (\PWM2_FA01|Add1~9_combout\ & !\PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA01|Add1~9_combout\,
	datad => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add1~16_combout\);

-- Location: FF_X38_Y31_N17
\PWM2_FA01|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count2\(4));

-- Location: LCCOMB_X38_Y31_N28
\PWM2_FA01|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~11_combout\ = (\PWM2_FA01|var_Dead_Count2\(5) & (!\PWM2_FA01|Add1~10\)) # (!\PWM2_FA01|var_Dead_Count2\(5) & ((\PWM2_FA01|Add1~10\) # (GND)))
-- \PWM2_FA01|Add1~12\ = CARRY((!\PWM2_FA01|Add1~10\) # (!\PWM2_FA01|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM2_FA01|Add1~10\,
	combout => \PWM2_FA01|Add1~11_combout\,
	cout => \PWM2_FA01|Add1~12\);

-- Location: LCCOMB_X38_Y31_N10
\PWM2_FA01|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~17_combout\ = (\PWM2_FA01|Add1~11_combout\ & !\PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|Add1~11_combout\,
	datad => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add1~17_combout\);

-- Location: FF_X38_Y31_N11
\PWM2_FA01|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count2\(5));

-- Location: LCCOMB_X38_Y31_N30
\PWM2_FA01|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~13_combout\ = \PWM2_FA01|var_Dead_Count2\(6) $ (!\PWM2_FA01|Add1~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|var_Dead_Count2\(6),
	cin => \PWM2_FA01|Add1~12\,
	combout => \PWM2_FA01|Add1~13_combout\);

-- Location: LCCOMB_X38_Y31_N12
\PWM2_FA01|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~15_combout\ = (\PWM2_FA01|Add1~13_combout\ & !\PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA01|Add1~13_combout\,
	datad => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add1~15_combout\);

-- Location: FF_X38_Y31_N13
\PWM2_FA01|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count2\(6));

-- Location: LCCOMB_X38_Y31_N14
\PWM2_FA01|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan2~1_combout\ = (\PWM2_FA01|LessThan2~0_combout\ & (!\PWM2_FA01|var_Dead_Count2\(4) & (!\PWM2_FA01|var_Dead_Count2\(6) & !\PWM2_FA01|var_Dead_Count2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|LessThan2~0_combout\,
	datab => \PWM2_FA01|var_Dead_Count2\(4),
	datac => \PWM2_FA01|var_Dead_Count2\(6),
	datad => \PWM2_FA01|var_Dead_Count2\(5),
	combout => \PWM2_FA01|LessThan2~1_combout\);

-- Location: LCCOMB_X38_Y31_N18
\PWM2_FA01|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~0_combout\ = (\PWM2_FA01|var_Dead_Count2\(0) & (\PWM2_FA01|LessThan2~1_combout\ $ (VCC))) # (!\PWM2_FA01|var_Dead_Count2\(0) & (\PWM2_FA01|LessThan2~1_combout\ & VCC))
-- \PWM2_FA01|Add1~1\ = CARRY((\PWM2_FA01|var_Dead_Count2\(0) & \PWM2_FA01|LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count2\(0),
	datab => \PWM2_FA01|LessThan2~1_combout\,
	datad => VCC,
	combout => \PWM2_FA01|Add1~0_combout\,
	cout => \PWM2_FA01|Add1~1\);

-- Location: LCCOMB_X39_Y31_N24
\PWM2_FA01|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~18_combout\ = (!\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA01|comp_out~q\,
	datad => \PWM2_FA01|Add1~0_combout\,
	combout => \PWM2_FA01|Add1~18_combout\);

-- Location: FF_X39_Y31_N25
\PWM2_FA01|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count2\(0));

-- Location: LCCOMB_X39_Y31_N4
\PWM2_FA01|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Equal1~0_combout\ = (\PWM2_FA01|Add1~2_combout\ & (\PWM2_FA01|Add1~4_combout\ & (!\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|Add1~2_combout\,
	datab => \PWM2_FA01|Add1~4_combout\,
	datac => \PWM2_FA01|comp_out~q\,
	datad => \PWM2_FA01|Add1~0_combout\,
	combout => \PWM2_FA01|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y31_N0
\PWM2_FA01|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Equal1~1_combout\ = (!\PWM2_FA01|Add1~17_combout\ & (!\PWM2_FA01|Add1~16_combout\ & (\PWM2_FA01|Add1~8_combout\ & !\PWM2_FA01|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|Add1~17_combout\,
	datab => \PWM2_FA01|Add1~16_combout\,
	datac => \PWM2_FA01|Add1~8_combout\,
	datad => \PWM2_FA01|Add1~15_combout\,
	combout => \PWM2_FA01|Equal1~1_combout\);

-- Location: LCCOMB_X38_Y31_N8
\PWM2_FA01|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|port_PWM02~0_combout\ = (\PWM2_FA01|Equal1~0_combout\ & ((\PWM2_FA01|Equal1~1_combout\) # ((\PWM2_FA01|port_PWM02~q\ & !\PWM2_FA01|comp_out~q\)))) # (!\PWM2_FA01|Equal1~0_combout\ & (((\PWM2_FA01|port_PWM02~q\ & !\PWM2_FA01|comp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|Equal1~0_combout\,
	datab => \PWM2_FA01|Equal1~1_combout\,
	datac => \PWM2_FA01|port_PWM02~q\,
	datad => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|port_PWM02~0_combout\);

-- Location: FF_X38_Y31_N9
\PWM2_FA01|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|port_PWM02~q\);

-- Location: LCCOMB_X39_Y31_N2
\PWM2_FA01|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~20_combout\ = (\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA01|comp_out~q\,
	datad => \PWM2_FA01|Add0~4_combout\,
	combout => \PWM2_FA01|Add0~20_combout\);

-- Location: FF_X39_Y31_N3
\PWM2_FA01|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count1\(2));

-- Location: LCCOMB_X40_Y31_N18
\PWM2_FA01|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~4_combout\ = (\PWM2_FA01|var_Dead_Count1\(2) & (\PWM2_FA01|Add0~3\ $ (GND))) # (!\PWM2_FA01|var_Dead_Count1\(2) & (!\PWM2_FA01|Add0~3\ & VCC))
-- \PWM2_FA01|Add0~5\ = CARRY((\PWM2_FA01|var_Dead_Count1\(2) & !\PWM2_FA01|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM2_FA01|Add0~3\,
	combout => \PWM2_FA01|Add0~4_combout\,
	cout => \PWM2_FA01|Add0~5\);

-- Location: LCCOMB_X40_Y31_N20
\PWM2_FA01|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~6_combout\ = (\PWM2_FA01|var_Dead_Count1\(3) & (!\PWM2_FA01|Add0~5\)) # (!\PWM2_FA01|var_Dead_Count1\(3) & ((\PWM2_FA01|Add0~5\) # (GND)))
-- \PWM2_FA01|Add0~7\ = CARRY((!\PWM2_FA01|Add0~5\) # (!\PWM2_FA01|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM2_FA01|Add0~5\,
	combout => \PWM2_FA01|Add0~6_combout\,
	cout => \PWM2_FA01|Add0~7\);

-- Location: LCCOMB_X40_Y31_N2
\PWM2_FA01|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~8_combout\ = (\PWM2_FA01|Add0~6_combout\ & \PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|Add0~6_combout\,
	datac => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add0~8_combout\);

-- Location: FF_X40_Y31_N3
\PWM2_FA01|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count1\(3));

-- Location: LCCOMB_X40_Y31_N22
\PWM2_FA01|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~9_combout\ = (\PWM2_FA01|var_Dead_Count1\(4) & (\PWM2_FA01|Add0~7\ $ (GND))) # (!\PWM2_FA01|var_Dead_Count1\(4) & (!\PWM2_FA01|Add0~7\ & VCC))
-- \PWM2_FA01|Add0~10\ = CARRY((\PWM2_FA01|var_Dead_Count1\(4) & !\PWM2_FA01|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM2_FA01|Add0~7\,
	combout => \PWM2_FA01|Add0~9_combout\,
	cout => \PWM2_FA01|Add0~10\);

-- Location: LCCOMB_X40_Y31_N30
\PWM2_FA01|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~16_combout\ = (\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|comp_out~q\,
	datac => \PWM2_FA01|Add0~9_combout\,
	combout => \PWM2_FA01|Add0~16_combout\);

-- Location: FF_X40_Y31_N31
\PWM2_FA01|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count1\(4));

-- Location: LCCOMB_X40_Y31_N24
\PWM2_FA01|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~11_combout\ = (\PWM2_FA01|var_Dead_Count1\(5) & (!\PWM2_FA01|Add0~10\)) # (!\PWM2_FA01|var_Dead_Count1\(5) & ((\PWM2_FA01|Add0~10\) # (GND)))
-- \PWM2_FA01|Add0~12\ = CARRY((!\PWM2_FA01|Add0~10\) # (!\PWM2_FA01|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM2_FA01|Add0~10\,
	combout => \PWM2_FA01|Add0~11_combout\,
	cout => \PWM2_FA01|Add0~12\);

-- Location: LCCOMB_X40_Y31_N8
\PWM2_FA01|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~17_combout\ = (\PWM2_FA01|Add0~11_combout\ & \PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|Add0~11_combout\,
	datac => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add0~17_combout\);

-- Location: FF_X40_Y31_N9
\PWM2_FA01|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count1\(5));

-- Location: LCCOMB_X40_Y31_N26
\PWM2_FA01|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~13_combout\ = \PWM2_FA01|Add0~12\ $ (!\PWM2_FA01|var_Dead_Count1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FA01|var_Dead_Count1\(6),
	cin => \PWM2_FA01|Add0~12\,
	combout => \PWM2_FA01|Add0~13_combout\);

-- Location: LCCOMB_X40_Y31_N10
\PWM2_FA01|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~15_combout\ = (\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|comp_out~q\,
	datac => \PWM2_FA01|Add0~13_combout\,
	combout => \PWM2_FA01|Add0~15_combout\);

-- Location: FF_X40_Y31_N11
\PWM2_FA01|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count1\(6));

-- Location: LCCOMB_X40_Y31_N14
\PWM2_FA01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~0_combout\ = (\PWM2_FA01|LessThan1~1_combout\ & (\PWM2_FA01|var_Dead_Count1\(0) $ (VCC))) # (!\PWM2_FA01|LessThan1~1_combout\ & (\PWM2_FA01|var_Dead_Count1\(0) & VCC))
-- \PWM2_FA01|Add0~1\ = CARRY((\PWM2_FA01|LessThan1~1_combout\ & \PWM2_FA01|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|LessThan1~1_combout\,
	datab => \PWM2_FA01|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM2_FA01|Add0~0_combout\,
	cout => \PWM2_FA01|Add0~1\);

-- Location: LCCOMB_X39_Y31_N6
\PWM2_FA01|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~18_combout\ = (\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|comp_out~q\,
	datac => \PWM2_FA01|Add0~0_combout\,
	combout => \PWM2_FA01|Add0~18_combout\);

-- Location: FF_X39_Y31_N7
\PWM2_FA01|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count1\(0));

-- Location: LCCOMB_X40_Y31_N12
\PWM2_FA01|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan1~0_combout\ = (((!\PWM2_FA01|var_Dead_Count1\(2)) # (!\PWM2_FA01|var_Dead_Count1\(0))) # (!\PWM2_FA01|var_Dead_Count1\(3))) # (!\PWM2_FA01|var_Dead_Count1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count1\(1),
	datab => \PWM2_FA01|var_Dead_Count1\(3),
	datac => \PWM2_FA01|var_Dead_Count1\(0),
	datad => \PWM2_FA01|var_Dead_Count1\(2),
	combout => \PWM2_FA01|LessThan1~0_combout\);

-- Location: LCCOMB_X40_Y31_N4
\PWM2_FA01|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan1~1_combout\ = (!\PWM2_FA01|var_Dead_Count1\(6) & (!\PWM2_FA01|var_Dead_Count1\(5) & (!\PWM2_FA01|var_Dead_Count1\(4) & \PWM2_FA01|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count1\(6),
	datab => \PWM2_FA01|var_Dead_Count1\(5),
	datac => \PWM2_FA01|var_Dead_Count1\(4),
	datad => \PWM2_FA01|LessThan1~0_combout\,
	combout => \PWM2_FA01|LessThan1~1_combout\);

-- Location: LCCOMB_X40_Y31_N16
\PWM2_FA01|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~2_combout\ = (\PWM2_FA01|var_Dead_Count1\(1) & (!\PWM2_FA01|Add0~1\)) # (!\PWM2_FA01|var_Dead_Count1\(1) & ((\PWM2_FA01|Add0~1\) # (GND)))
-- \PWM2_FA01|Add0~3\ = CARRY((!\PWM2_FA01|Add0~1\) # (!\PWM2_FA01|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM2_FA01|Add0~1\,
	combout => \PWM2_FA01|Add0~2_combout\,
	cout => \PWM2_FA01|Add0~3\);

-- Location: LCCOMB_X39_Y31_N8
\PWM2_FA01|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~19_combout\ = (\PWM2_FA01|Add0~2_combout\ & \PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|Add0~2_combout\,
	datac => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add0~19_combout\);

-- Location: FF_X39_Y31_N9
\PWM2_FA01|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count1\(1));

-- Location: LCCOMB_X40_Y31_N28
\PWM2_FA01|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Equal0~0_combout\ = (\PWM2_FA01|comp_out~q\ & (\PWM2_FA01|Add0~4_combout\ & (\PWM2_FA01|Add0~0_combout\ & \PWM2_FA01|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|comp_out~q\,
	datab => \PWM2_FA01|Add0~4_combout\,
	datac => \PWM2_FA01|Add0~0_combout\,
	datad => \PWM2_FA01|Add0~2_combout\,
	combout => \PWM2_FA01|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y31_N6
\PWM2_FA01|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Equal0~1_combout\ = (\PWM2_FA01|Add0~8_combout\ & (!\PWM2_FA01|Add0~15_combout\ & (!\PWM2_FA01|Add0~17_combout\ & !\PWM2_FA01|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|Add0~8_combout\,
	datab => \PWM2_FA01|Add0~15_combout\,
	datac => \PWM2_FA01|Add0~17_combout\,
	datad => \PWM2_FA01|Add0~16_combout\,
	combout => \PWM2_FA01|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y31_N0
\PWM2_FA01|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|port_PWM01~0_combout\ = (\PWM2_FA01|comp_out~q\ & ((\PWM2_FA01|port_PWM01~q\) # ((\PWM2_FA01|Equal0~0_combout\ & \PWM2_FA01|Equal0~1_combout\)))) # (!\PWM2_FA01|comp_out~q\ & (\PWM2_FA01|Equal0~0_combout\ & ((\PWM2_FA01|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|comp_out~q\,
	datab => \PWM2_FA01|Equal0~0_combout\,
	datac => \PWM2_FA01|port_PWM01~q\,
	datad => \PWM2_FA01|Equal0~1_combout\,
	combout => \PWM2_FA01|port_PWM01~0_combout\);

-- Location: FF_X40_Y31_N1
\PWM2_FA01|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|port_PWM01~q\);

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


