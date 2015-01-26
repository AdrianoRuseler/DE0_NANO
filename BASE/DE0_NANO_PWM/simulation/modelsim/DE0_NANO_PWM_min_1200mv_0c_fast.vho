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

-- DATE "01/26/2015 13:29:45"

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
	LED : BUFFER std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	RESET_FA : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM1L_FA : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM1H_FA : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM2L_FA : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM2H_FA : BUFFER std_logic_vector(2 DOWNTO 0);
	INT0_FA : IN std_logic_vector(2 DOWNTO 0);
	RESET_FB : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM1L_FB : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM1H_FB : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM2L_FB : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM2H_FB : BUFFER std_logic_vector(2 DOWNTO 0);
	INT0_FB : IN std_logic_vector(2 DOWNTO 0);
	RESET_FC : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM1L_FC : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM1H_FC : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM2L_FC : BUFFER std_logic_vector(2 DOWNTO 0);
	PWM2H_FC : BUFFER std_logic_vector(2 DOWNTO 0);
	INT0_FC : IN std_logic_vector(2 DOWNTO 0);
	GPIO_0 : BUFFER std_logic_vector(3 DOWNTO 0)
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
SIGNAL \PWM1_FA01|Add0~10\ : std_logic;
SIGNAL \PWM1_FA01|Add0~11_combout\ : std_logic;
SIGNAL \ucr5|Add2~0_combout\ : std_logic;
SIGNAL \rst~feeder_combout\ : std_logic;
SIGNAL \rst~q\ : std_logic;
SIGNAL \ucr1|c_int[1]~16_cout\ : std_logic;
SIGNAL \ucr1|c_int[1]~17_combout\ : std_logic;
SIGNAL \ucr1|Add1~0_combout\ : std_logic;
SIGNAL \ucr1|c_int[4]~24\ : std_logic;
SIGNAL \ucr1|c_int[5]~25_combout\ : std_logic;
SIGNAL \ucr1|Add1~1\ : std_logic;
SIGNAL \ucr1|Add1~3\ : std_logic;
SIGNAL \ucr1|Add1~5\ : std_logic;
SIGNAL \ucr1|Add1~7\ : std_logic;
SIGNAL \ucr1|Add1~8_combout\ : std_logic;
SIGNAL \ucr1|c_int[5]~26\ : std_logic;
SIGNAL \ucr1|c_int[6]~27_combout\ : std_logic;
SIGNAL \ucr1|Add1~9\ : std_logic;
SIGNAL \ucr1|Add1~10_combout\ : std_logic;
SIGNAL \ucr1|c_int[6]~28\ : std_logic;
SIGNAL \ucr1|c_int[7]~29_combout\ : std_logic;
SIGNAL \ucr1|Add1~11\ : std_logic;
SIGNAL \ucr1|Add1~12_combout\ : std_logic;
SIGNAL \ucr1|c_int[7]~30\ : std_logic;
SIGNAL \ucr1|c_int[8]~31_combout\ : std_logic;
SIGNAL \ucr1|Add1~13\ : std_logic;
SIGNAL \ucr1|Add1~14_combout\ : std_logic;
SIGNAL \ucr1|c_int[8]~32\ : std_logic;
SIGNAL \ucr1|c_int[9]~33_combout\ : std_logic;
SIGNAL \ucr1|Add1~15\ : std_logic;
SIGNAL \ucr1|Add1~16_combout\ : std_logic;
SIGNAL \ucr1|c_int[9]~34\ : std_logic;
SIGNAL \ucr1|c_int[10]~35_combout\ : std_logic;
SIGNAL \ucr1|Add1~17\ : std_logic;
SIGNAL \ucr1|Add1~18_combout\ : std_logic;
SIGNAL \ucr1|c_int[10]~43_combout\ : std_logic;
SIGNAL \ucr1|c_int[10]~42_combout\ : std_logic;
SIGNAL \ucr1|c_int[10]~44_combout\ : std_logic;
SIGNAL \ucr1|c_int[10]~45_combout\ : std_logic;
SIGNAL \ucr1|c_int[10]~36\ : std_logic;
SIGNAL \ucr1|c_int[11]~37_combout\ : std_logic;
SIGNAL \ucr1|Add1~19\ : std_logic;
SIGNAL \ucr1|Add1~20_combout\ : std_logic;
SIGNAL \ucr1|c_int[11]~38\ : std_logic;
SIGNAL \ucr1|c_int[12]~47_combout\ : std_logic;
SIGNAL \ucr1|Add1~21\ : std_logic;
SIGNAL \ucr1|Add1~22_combout\ : std_logic;
SIGNAL \ucr1|c_int[12]~48\ : std_logic;
SIGNAL \ucr1|c_int[13]~49_combout\ : std_logic;
SIGNAL \ucr1|Add1~23\ : std_logic;
SIGNAL \ucr1|Add1~24_combout\ : std_logic;
SIGNAL \ucr1|c_int[13]~50\ : std_logic;
SIGNAL \ucr1|c_int[14]~51_combout\ : std_logic;
SIGNAL \ucr1|Add1~25\ : std_logic;
SIGNAL \ucr1|Add1~26_combout\ : std_logic;
SIGNAL \ucr1|c_int[14]~52\ : std_logic;
SIGNAL \ucr1|c_int[15]~53_combout\ : std_logic;
SIGNAL \ucr1|Add1~27\ : std_logic;
SIGNAL \ucr1|Add1~28_combout\ : std_logic;
SIGNAL \ucr1|c_int[10]~40_combout\ : std_logic;
SIGNAL \ucr1|c_int[10]~39_combout\ : std_logic;
SIGNAL \ucr1|dir_int~q\ : std_logic;
SIGNAL \ucr1|c_int[10]~41_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan0~0_combout\ : std_logic;
SIGNAL \ucr1|c_int[10]~46_combout\ : std_logic;
SIGNAL \ucr1|c_int[1]~18\ : std_logic;
SIGNAL \ucr1|c_int[2]~19_combout\ : std_logic;
SIGNAL \ucr1|Add1~2_combout\ : std_logic;
SIGNAL \ucr1|c_int[2]~20\ : std_logic;
SIGNAL \ucr1|c_int[3]~21_combout\ : std_logic;
SIGNAL \ucr1|Add1~4_combout\ : std_logic;
SIGNAL \ucr1|c_int[3]~22\ : std_logic;
SIGNAL \ucr1|c_int[4]~23_combout\ : std_logic;
SIGNAL \ucr1|Add1~6_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan0~4_combout\ : std_logic;
SIGNAL \PWM1_FA01|comp_out~q\ : std_logic;
SIGNAL \PWM1_FA01|Add0~17_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~12\ : std_logic;
SIGNAL \PWM1_FA01|Add0~13_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~15_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add0~18_combout\ : std_logic;
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
SIGNAL \ucr6|Add2~0_combout\ : std_logic;
SIGNAL \ucr6|c_int[0]~8_combout\ : std_logic;
SIGNAL \ucr3|Add2~1_cout\ : std_logic;
SIGNAL \ucr3|Add2~2_combout\ : std_logic;
SIGNAL \ucr3|Add1~0_combout\ : std_logic;
SIGNAL \ucr3|Add2~42_combout\ : std_logic;
SIGNAL \ucr3|Add2~3\ : std_logic;
SIGNAL \ucr3|Add2~4_combout\ : std_logic;
SIGNAL \ucr3|Add1~1\ : std_logic;
SIGNAL \ucr3|Add1~2_combout\ : std_logic;
SIGNAL \ucr3|Add2~41_combout\ : std_logic;
SIGNAL \ucr3|Add2~5\ : std_logic;
SIGNAL \ucr3|Add2~6_combout\ : std_logic;
SIGNAL \ucr3|Add1~3\ : std_logic;
SIGNAL \ucr3|Add1~4_combout\ : std_logic;
SIGNAL \ucr3|Add2~40_combout\ : std_logic;
SIGNAL \ucr3|Add1~5\ : std_logic;
SIGNAL \ucr3|Add1~6_combout\ : std_logic;
SIGNAL \ucr3|Add2~7\ : std_logic;
SIGNAL \ucr3|Add2~8_combout\ : std_logic;
SIGNAL \ucr3|Add2~45_combout\ : std_logic;
SIGNAL \ucr3|Add2~9\ : std_logic;
SIGNAL \ucr3|Add2~10_combout\ : std_logic;
SIGNAL \ucr3|Add1~7\ : std_logic;
SIGNAL \ucr3|Add1~8_combout\ : std_logic;
SIGNAL \ucr3|Add2~44_combout\ : std_logic;
SIGNAL \ucr3|Add2~11\ : std_logic;
SIGNAL \ucr3|Add2~12_combout\ : std_logic;
SIGNAL \ucr3|Add1~9\ : std_logic;
SIGNAL \ucr3|Add1~10_combout\ : std_logic;
SIGNAL \ucr3|Add2~46_combout\ : std_logic;
SIGNAL \ucr3|Add2~13\ : std_logic;
SIGNAL \ucr3|Add2~14_combout\ : std_logic;
SIGNAL \ucr3|Add1~11\ : std_logic;
SIGNAL \ucr3|Add1~12_combout\ : std_logic;
SIGNAL \ucr3|Add2~43_combout\ : std_logic;
SIGNAL \PWM1_FA02|LessThan0~1_combout\ : std_logic;
SIGNAL \ucr3|c_int[15]~1_combout\ : std_logic;
SIGNAL \ucr3|c_int[15]~2_combout\ : std_logic;
SIGNAL \ucr3|c_int[15]~3_combout\ : std_logic;
SIGNAL \ucr3|Add2~15\ : std_logic;
SIGNAL \ucr3|Add2~17\ : std_logic;
SIGNAL \ucr3|Add2~18_combout\ : std_logic;
SIGNAL \ucr3|Add1~13\ : std_logic;
SIGNAL \ucr3|Add1~15\ : std_logic;
SIGNAL \ucr3|Add1~16_combout\ : std_logic;
SIGNAL \ucr3|Add2~36_combout\ : std_logic;
SIGNAL \ucr3|Add2~19\ : std_logic;
SIGNAL \ucr3|Add2~20_combout\ : std_logic;
SIGNAL \ucr3|Add1~17\ : std_logic;
SIGNAL \ucr3|Add1~18_combout\ : std_logic;
SIGNAL \ucr3|Add2~37_combout\ : std_logic;
SIGNAL \ucr3|Add2~21\ : std_logic;
SIGNAL \ucr3|Add2~22_combout\ : std_logic;
SIGNAL \ucr3|Add1~19\ : std_logic;
SIGNAL \ucr3|Add1~20_combout\ : std_logic;
SIGNAL \ucr3|Add2~38_combout\ : std_logic;
SIGNAL \ucr3|Add2~23\ : std_logic;
SIGNAL \ucr3|Add2~24_combout\ : std_logic;
SIGNAL \ucr3|Add1~21\ : std_logic;
SIGNAL \ucr3|Add1~22_combout\ : std_logic;
SIGNAL \ucr3|Add2~35_combout\ : std_logic;
SIGNAL \ucr3|Add2~25\ : std_logic;
SIGNAL \ucr3|Add2~26_combout\ : std_logic;
SIGNAL \ucr3|Add1~23\ : std_logic;
SIGNAL \ucr3|Add1~24_combout\ : std_logic;
SIGNAL \ucr3|Add2~34_combout\ : std_logic;
SIGNAL \ucr3|Add2~27\ : std_logic;
SIGNAL \ucr3|Add2~28_combout\ : std_logic;
SIGNAL \ucr3|Add1~25\ : std_logic;
SIGNAL \ucr3|Add1~26_combout\ : std_logic;
SIGNAL \ucr3|Add2~33_combout\ : std_logic;
SIGNAL \ucr3|Add2~29\ : std_logic;
SIGNAL \ucr3|Add2~30_combout\ : std_logic;
SIGNAL \ucr3|Add1~27\ : std_logic;
SIGNAL \ucr3|Add1~28_combout\ : std_logic;
SIGNAL \ucr3|Add2~32_combout\ : std_logic;
SIGNAL \PWM1_FB02|LessThan0~0_combout\ : std_logic;
SIGNAL \ucr3|c_int[15]~0_combout\ : std_logic;
SIGNAL \ucr3|c_int[15]~4_combout\ : std_logic;
SIGNAL \ucr3|dir_int~q\ : std_logic;
SIGNAL \ucr3|c_int[15]~5_combout\ : std_logic;
SIGNAL \ucr3|c_int[15]~6_combout\ : std_logic;
SIGNAL \ucr3|c_int[15]~7_combout\ : std_logic;
SIGNAL \ucr3|Add1~14_combout\ : std_logic;
SIGNAL \ucr3|Add2~16_combout\ : std_logic;
SIGNAL \ucr3|Add2~39_combout\ : std_logic;
SIGNAL \PWM1_FA02|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM1_FB02|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM1_FA02|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM1_FA02|comp_out~q\ : std_logic;
SIGNAL \PWM1_FA02|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~10\ : std_logic;
SIGNAL \PWM1_FA02|Add0~11_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~17_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~12\ : std_logic;
SIGNAL \PWM1_FA02|Add0~13_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~15_combout\ : std_logic;
SIGNAL \PWM1_FA02|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~0_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~18_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~1\ : std_logic;
SIGNAL \PWM1_FA02|Add0~2_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~19_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~3\ : std_logic;
SIGNAL \PWM1_FA02|Add0~4_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~20_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~5\ : std_logic;
SIGNAL \PWM1_FA02|Add0~6_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~8_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~7\ : std_logic;
SIGNAL \PWM1_FA02|Add0~9_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add0~16_combout\ : std_logic;
SIGNAL \PWM1_FA02|Equal0~1_combout\ : std_logic;
SIGNAL \PWM1_FA02|Equal0~0_combout\ : std_logic;
SIGNAL \PWM1_FA02|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM1_FA02|port_PWM01~q\ : std_logic;
SIGNAL \PWM1_FA03|Add0~0_combout\ : std_logic;
SIGNAL \ucr5|Add2~1\ : std_logic;
SIGNAL \ucr5|Add2~2_combout\ : std_logic;
SIGNAL \ucr5|c_int[1]~12_combout\ : std_logic;
SIGNAL \ucr5|Add2~3\ : std_logic;
SIGNAL \ucr5|Add2~4_combout\ : std_logic;
SIGNAL \ucr5|Add2~5\ : std_logic;
SIGNAL \ucr5|Add2~6_combout\ : std_logic;
SIGNAL \ucr5|c_int[3]~11_combout\ : std_logic;
SIGNAL \ucr5|Add2~7\ : std_logic;
SIGNAL \ucr5|Add2~8_combout\ : std_logic;
SIGNAL \ucr5|c_int[4]~15_combout\ : std_logic;
SIGNAL \ucr5|Add2~9\ : std_logic;
SIGNAL \ucr5|Add2~10_combout\ : std_logic;
SIGNAL \ucr5|c_int[5]~14_combout\ : std_logic;
SIGNAL \ucr5|Add2~11\ : std_logic;
SIGNAL \ucr5|Add2~12_combout\ : std_logic;
SIGNAL \ucr5|c_int[6]~13_combout\ : std_logic;
SIGNAL \ucr5|Add2~13\ : std_logic;
SIGNAL \ucr5|Add2~14_combout\ : std_logic;
SIGNAL \ucr5|Add2~15\ : std_logic;
SIGNAL \ucr5|Add2~16_combout\ : std_logic;
SIGNAL \ucr5|c_int[8]~10_combout\ : std_logic;
SIGNAL \ucr5|Add2~17\ : std_logic;
SIGNAL \ucr5|Add2~19\ : std_logic;
SIGNAL \ucr5|Add2~20_combout\ : std_logic;
SIGNAL \ucr5|Add2~21\ : std_logic;
SIGNAL \ucr5|Add2~22_combout\ : std_logic;
SIGNAL \ucr5|Add2~23\ : std_logic;
SIGNAL \ucr5|Add2~24_combout\ : std_logic;
SIGNAL \ucr5|Add2~25\ : std_logic;
SIGNAL \ucr5|Add2~26_combout\ : std_logic;
SIGNAL \ucr5|Add2~27\ : std_logic;
SIGNAL \ucr5|Add2~28_combout\ : std_logic;
SIGNAL \ucr5|Add2~29\ : std_logic;
SIGNAL \ucr5|Add2~30_combout\ : std_logic;
SIGNAL \PWM1_FB03|LessThan0~5_combout\ : std_logic;
SIGNAL \PWM1_FB03|LessThan0~6_combout\ : std_logic;
SIGNAL \ucr5|dir_int~0_combout\ : std_logic;
SIGNAL \ucr5|dir_int~q\ : std_logic;
SIGNAL \ucr5|c_int[10]~5_combout\ : std_logic;
SIGNAL \ucr5|c_int[10]~6_combout\ : std_logic;
SIGNAL \ucr5|c_int[10]~7_combout\ : std_logic;
SIGNAL \ucr5|c_int[10]~0_combout\ : std_logic;
SIGNAL \ucr5|c_int[10]~1_combout\ : std_logic;
SIGNAL \ucr5|c_int[10]~3_combout\ : std_logic;
SIGNAL \ucr5|c_int[10]~2_combout\ : std_logic;
SIGNAL \ucr5|c_int[10]~4_combout\ : std_logic;
SIGNAL \ucr5|c_int[10]~8_combout\ : std_logic;
SIGNAL \ucr5|Add2~18_combout\ : std_logic;
SIGNAL \ucr5|c_int[9]~9_combout\ : std_logic;
SIGNAL \PWM1_FB03|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM1_FB03|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM1_FA03|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM1_FA03|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM1_FA03|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM1_FA03|comp_out~q\ : std_logic;
SIGNAL \PWM1_FA03|Add0~18_combout\ : std_logic;
SIGNAL \PWM1_FA03|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~12\ : std_logic;
SIGNAL \PWM1_FA03|Add0~13_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~15_combout\ : std_logic;
SIGNAL \PWM1_FA03|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~1\ : std_logic;
SIGNAL \PWM1_FA03|Add0~2_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~19_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~3\ : std_logic;
SIGNAL \PWM1_FA03|Add0~4_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~20_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~5\ : std_logic;
SIGNAL \PWM1_FA03|Add0~6_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~8_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~7\ : std_logic;
SIGNAL \PWM1_FA03|Add0~9_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~16_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~10\ : std_logic;
SIGNAL \PWM1_FA03|Add0~11_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add0~17_combout\ : std_logic;
SIGNAL \PWM1_FA03|Equal0~1_combout\ : std_logic;
SIGNAL \PWM1_FA03|Equal0~0_combout\ : std_logic;
SIGNAL \PWM1_FA03|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM1_FA03|port_PWM01~q\ : std_logic;
SIGNAL \PWM1_FA01|Add1~10\ : std_logic;
SIGNAL \PWM1_FA01|Add1~11_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~17_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~12\ : std_logic;
SIGNAL \PWM1_FA01|Add1~13_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~15_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~18_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~1\ : std_logic;
SIGNAL \PWM1_FA01|Add1~2_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~19_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~3\ : std_logic;
SIGNAL \PWM1_FA01|Add1~4_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~20_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~5\ : std_logic;
SIGNAL \PWM1_FA01|Add1~6_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~8_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~7\ : std_logic;
SIGNAL \PWM1_FA01|Add1~9_combout\ : std_logic;
SIGNAL \PWM1_FA01|Add1~16_combout\ : std_logic;
SIGNAL \PWM1_FA01|Equal1~1_combout\ : std_logic;
SIGNAL \PWM1_FA01|Equal1~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM1_FA01|port_PWM02~q\ : std_logic;
SIGNAL \PWM1_FA02|Add1~19_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~3\ : std_logic;
SIGNAL \PWM1_FA02|Add1~4_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~20_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~5\ : std_logic;
SIGNAL \PWM1_FA02|Add1~6_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~8_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~7\ : std_logic;
SIGNAL \PWM1_FA02|Add1~9_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~16_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~10\ : std_logic;
SIGNAL \PWM1_FA02|Add1~11_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~17_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~12\ : std_logic;
SIGNAL \PWM1_FA02|Add1~13_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~15_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~0_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~18_combout\ : std_logic;
SIGNAL \PWM1_FA02|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM1_FA02|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM1_FA02|Add1~1\ : std_logic;
SIGNAL \PWM1_FA02|Add1~2_combout\ : std_logic;
SIGNAL \PWM1_FA02|Equal1~0_combout\ : std_logic;
SIGNAL \PWM1_FA02|Equal1~1_combout\ : std_logic;
SIGNAL \PWM1_FA02|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM1_FA02|port_PWM02~q\ : std_logic;
SIGNAL \PWM1_FA03|Add1~18_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~1\ : std_logic;
SIGNAL \PWM1_FA03|Add1~2_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~19_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~3\ : std_logic;
SIGNAL \PWM1_FA03|Add1~4_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~20_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~5\ : std_logic;
SIGNAL \PWM1_FA03|Add1~6_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~8_combout\ : std_logic;
SIGNAL \PWM1_FA03|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~7\ : std_logic;
SIGNAL \PWM1_FA03|Add1~9_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~16_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~10\ : std_logic;
SIGNAL \PWM1_FA03|Add1~11_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~17_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~12\ : std_logic;
SIGNAL \PWM1_FA03|Add1~13_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~15_combout\ : std_logic;
SIGNAL \PWM1_FA03|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM1_FA03|Add1~0_combout\ : std_logic;
SIGNAL \PWM1_FA03|Equal1~0_combout\ : std_logic;
SIGNAL \PWM1_FA03|Equal1~1_combout\ : std_logic;
SIGNAL \PWM1_FA03|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM1_FA03|port_PWM02~q\ : std_logic;
SIGNAL \ucr2|Add2~1_cout\ : std_logic;
SIGNAL \ucr2|Add2~2_combout\ : std_logic;
SIGNAL \ucr2|Add1~0_combout\ : std_logic;
SIGNAL \ucr2|Add2~41_combout\ : std_logic;
SIGNAL \ucr2|Add2~3\ : std_logic;
SIGNAL \ucr2|Add2~4_combout\ : std_logic;
SIGNAL \ucr2|Add1~1\ : std_logic;
SIGNAL \ucr2|Add1~2_combout\ : std_logic;
SIGNAL \ucr2|Add2~40_combout\ : std_logic;
SIGNAL \ucr2|Add2~5\ : std_logic;
SIGNAL \ucr2|Add2~7\ : std_logic;
SIGNAL \ucr2|Add2~8_combout\ : std_logic;
SIGNAL \ucr2|Add1~3\ : std_logic;
SIGNAL \ucr2|Add1~5\ : std_logic;
SIGNAL \ucr2|Add1~6_combout\ : std_logic;
SIGNAL \ucr2|Add2~44_combout\ : std_logic;
SIGNAL \ucr2|Add2~9\ : std_logic;
SIGNAL \ucr2|Add2~10_combout\ : std_logic;
SIGNAL \ucr2|Add1~7\ : std_logic;
SIGNAL \ucr2|Add1~8_combout\ : std_logic;
SIGNAL \ucr2|Add2~43_combout\ : std_logic;
SIGNAL \ucr2|Add2~11\ : std_logic;
SIGNAL \ucr2|Add2~12_combout\ : std_logic;
SIGNAL \ucr2|Add1~9\ : std_logic;
SIGNAL \ucr2|Add1~10_combout\ : std_logic;
SIGNAL \ucr2|Add2~46_combout\ : std_logic;
SIGNAL \ucr2|Add2~13\ : std_logic;
SIGNAL \ucr2|Add2~14_combout\ : std_logic;
SIGNAL \ucr2|Add1~11\ : std_logic;
SIGNAL \ucr2|Add1~12_combout\ : std_logic;
SIGNAL \ucr2|Add2~45_combout\ : std_logic;
SIGNAL \ucr2|Add2~15\ : std_logic;
SIGNAL \ucr2|Add2~16_combout\ : std_logic;
SIGNAL \ucr2|Add1~13\ : std_logic;
SIGNAL \ucr2|Add1~14_combout\ : std_logic;
SIGNAL \ucr2|Add2~39_combout\ : std_logic;
SIGNAL \ucr2|Add1~15\ : std_logic;
SIGNAL \ucr2|Add1~16_combout\ : std_logic;
SIGNAL \ucr2|Add2~17\ : std_logic;
SIGNAL \ucr2|Add2~18_combout\ : std_logic;
SIGNAL \ucr2|Add2~37_combout\ : std_logic;
SIGNAL \ucr2|Add1~17\ : std_logic;
SIGNAL \ucr2|Add1~18_combout\ : std_logic;
SIGNAL \ucr2|Add2~19\ : std_logic;
SIGNAL \ucr2|Add2~20_combout\ : std_logic;
SIGNAL \ucr2|Add2~22_combout\ : std_logic;
SIGNAL \ucr2|c_int[9]~5_combout\ : std_logic;
SIGNAL \ucr2|c_int[9]~6_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan0~1_combout\ : std_logic;
SIGNAL \ucr2|dir_int~q\ : std_logic;
SIGNAL \ucr2|Add2~21\ : std_logic;
SIGNAL \ucr2|Add2~23_combout\ : std_logic;
SIGNAL \ucr2|Add1~19\ : std_logic;
SIGNAL \ucr2|Add1~20_combout\ : std_logic;
SIGNAL \ucr2|Add2~38_combout\ : std_logic;
SIGNAL \ucr2|Add2~24\ : std_logic;
SIGNAL \ucr2|Add2~25_combout\ : std_logic;
SIGNAL \ucr2|Add1~21\ : std_logic;
SIGNAL \ucr2|Add1~22_combout\ : std_logic;
SIGNAL \ucr2|Add2~36_combout\ : std_logic;
SIGNAL \ucr2|Add2~26\ : std_logic;
SIGNAL \ucr2|Add2~27_combout\ : std_logic;
SIGNAL \ucr2|Add1~23\ : std_logic;
SIGNAL \ucr2|Add1~24_combout\ : std_logic;
SIGNAL \ucr2|Add2~35_combout\ : std_logic;
SIGNAL \ucr2|Add2~28\ : std_logic;
SIGNAL \ucr2|Add2~29_combout\ : std_logic;
SIGNAL \ucr2|Add1~25\ : std_logic;
SIGNAL \ucr2|Add1~26_combout\ : std_logic;
SIGNAL \ucr2|Add2~34_combout\ : std_logic;
SIGNAL \ucr2|Add2~30\ : std_logic;
SIGNAL \ucr2|Add2~31_combout\ : std_logic;
SIGNAL \ucr2|Add1~27\ : std_logic;
SIGNAL \ucr2|Add1~28_combout\ : std_logic;
SIGNAL \ucr2|Add2~33_combout\ : std_logic;
SIGNAL \PWM2_FB01|LessThan0~0_combout\ : std_logic;
SIGNAL \ucr2|c_int[9]~0_combout\ : std_logic;
SIGNAL \ucr2|c_int[9]~1_combout\ : std_logic;
SIGNAL \ucr2|c_int[9]~2_combout\ : std_logic;
SIGNAL \ucr2|c_int[9]~3_combout\ : std_logic;
SIGNAL \ucr2|c_int[9]~4_combout\ : std_logic;
SIGNAL \ucr2|c_int[9]~7_combout\ : std_logic;
SIGNAL \ucr2|Add2~6_combout\ : std_logic;
SIGNAL \ucr2|Add1~4_combout\ : std_logic;
SIGNAL \ucr2|Add2~42_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM2_FB01|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM2_FA01|comp_out~q\ : std_logic;
SIGNAL \PWM2_FA01|Add1~18_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~9\ : std_logic;
SIGNAL \PWM2_FA01|Add1~10_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~19_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~11\ : std_logic;
SIGNAL \PWM2_FA01|Add1~12_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~20_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~14_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~1\ : std_logic;
SIGNAL \PWM2_FA01|Add1~2_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~15_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~3\ : std_logic;
SIGNAL \PWM2_FA01|Add1~4_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~16_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~5\ : std_logic;
SIGNAL \PWM2_FA01|Add1~6_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~17_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add1~7\ : std_logic;
SIGNAL \PWM2_FA01|Add1~8_combout\ : std_logic;
SIGNAL \PWM2_FA01|port_PWM02~1_combout\ : std_logic;
SIGNAL \PWM2_FA01|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|port_PWM02~2_combout\ : std_logic;
SIGNAL \PWM2_FA01|port_PWM02~q\ : std_logic;
SIGNAL \ucr4|Add1~0_combout\ : std_logic;
SIGNAL \ucr4|Add2~1_cout\ : std_logic;
SIGNAL \ucr4|Add2~2_combout\ : std_logic;
SIGNAL \ucr4|Add2~41_combout\ : std_logic;
SIGNAL \ucr4|Add1~1\ : std_logic;
SIGNAL \ucr4|Add1~2_combout\ : std_logic;
SIGNAL \ucr4|Add2~3\ : std_logic;
SIGNAL \ucr4|Add2~4_combout\ : std_logic;
SIGNAL \ucr4|Add2~42_combout\ : std_logic;
SIGNAL \ucr4|Add1~15\ : std_logic;
SIGNAL \ucr4|Add1~16_combout\ : std_logic;
SIGNAL \ucr4|Add1~3\ : std_logic;
SIGNAL \ucr4|Add1~4_combout\ : std_logic;
SIGNAL \ucr4|Add2~5\ : std_logic;
SIGNAL \ucr4|Add2~6_combout\ : std_logic;
SIGNAL \ucr4|Add2~40_combout\ : std_logic;
SIGNAL \ucr4|Add1~5\ : std_logic;
SIGNAL \ucr4|Add1~6_combout\ : std_logic;
SIGNAL \ucr4|Add2~7\ : std_logic;
SIGNAL \ucr4|Add2~8_combout\ : std_logic;
SIGNAL \ucr4|Add2~45_combout\ : std_logic;
SIGNAL \ucr4|Add1~7\ : std_logic;
SIGNAL \ucr4|Add1~8_combout\ : std_logic;
SIGNAL \ucr4|Add2~9\ : std_logic;
SIGNAL \ucr4|Add2~10_combout\ : std_logic;
SIGNAL \ucr4|Add2~44_combout\ : std_logic;
SIGNAL \ucr4|Add2~11\ : std_logic;
SIGNAL \ucr4|Add2~13\ : std_logic;
SIGNAL \ucr4|Add2~15\ : std_logic;
SIGNAL \ucr4|Add2~17\ : std_logic;
SIGNAL \ucr4|Add2~18_combout\ : std_logic;
SIGNAL \ucr4|Add2~20_combout\ : std_logic;
SIGNAL \ucr4|Add1~17\ : std_logic;
SIGNAL \ucr4|Add1~18_combout\ : std_logic;
SIGNAL \ucr4|Add2~19\ : std_logic;
SIGNAL \ucr4|Add2~21_combout\ : std_logic;
SIGNAL \ucr4|Add2~37_combout\ : std_logic;
SIGNAL \ucr4|c_int[2]~5_combout\ : std_logic;
SIGNAL \ucr4|c_int[2]~6_combout\ : std_logic;
SIGNAL \PWM2_FA02|LessThan0~1_combout\ : std_logic;
SIGNAL \ucr4|dir_int~q\ : std_logic;
SIGNAL \ucr4|c_int[2]~1_combout\ : std_logic;
SIGNAL \ucr4|c_int[2]~2_combout\ : std_logic;
SIGNAL \ucr4|c_int[2]~3_combout\ : std_logic;
SIGNAL \ucr4|Add1~19\ : std_logic;
SIGNAL \ucr4|Add1~20_combout\ : std_logic;
SIGNAL \ucr4|Add2~22\ : std_logic;
SIGNAL \ucr4|Add2~23_combout\ : std_logic;
SIGNAL \ucr4|Add2~38_combout\ : std_logic;
SIGNAL \ucr4|Add1~21\ : std_logic;
SIGNAL \ucr4|Add1~22_combout\ : std_logic;
SIGNAL \ucr4|Add2~24\ : std_logic;
SIGNAL \ucr4|Add2~25_combout\ : std_logic;
SIGNAL \ucr4|Add2~36_combout\ : std_logic;
SIGNAL \ucr4|Add1~23\ : std_logic;
SIGNAL \ucr4|Add1~24_combout\ : std_logic;
SIGNAL \ucr4|Add2~26\ : std_logic;
SIGNAL \ucr4|Add2~27_combout\ : std_logic;
SIGNAL \ucr4|Add2~35_combout\ : std_logic;
SIGNAL \ucr4|Add1~25\ : std_logic;
SIGNAL \ucr4|Add1~26_combout\ : std_logic;
SIGNAL \ucr4|Add2~28\ : std_logic;
SIGNAL \ucr4|Add2~29_combout\ : std_logic;
SIGNAL \ucr4|Add2~34_combout\ : std_logic;
SIGNAL \ucr4|Add1~27\ : std_logic;
SIGNAL \ucr4|Add1~28_combout\ : std_logic;
SIGNAL \ucr4|Add2~30\ : std_logic;
SIGNAL \ucr4|Add2~31_combout\ : std_logic;
SIGNAL \ucr4|Add2~33_combout\ : std_logic;
SIGNAL \PWM2_FB02|LessThan0~0_combout\ : std_logic;
SIGNAL \ucr4|c_int[2]~0_combout\ : std_logic;
SIGNAL \ucr4|c_int[2]~4_combout\ : std_logic;
SIGNAL \ucr4|c_int[2]~7_combout\ : std_logic;
SIGNAL \ucr4|Add1~9\ : std_logic;
SIGNAL \ucr4|Add1~10_combout\ : std_logic;
SIGNAL \ucr4|Add2~12_combout\ : std_logic;
SIGNAL \ucr4|Add2~43_combout\ : std_logic;
SIGNAL \ucr4|Add1~11\ : std_logic;
SIGNAL \ucr4|Add1~12_combout\ : std_logic;
SIGNAL \ucr4|Add2~14_combout\ : std_logic;
SIGNAL \ucr4|Add2~46_combout\ : std_logic;
SIGNAL \ucr4|Add1~13\ : std_logic;
SIGNAL \ucr4|Add1~14_combout\ : std_logic;
SIGNAL \ucr4|Add2~16_combout\ : std_logic;
SIGNAL \ucr4|Add2~39_combout\ : std_logic;
SIGNAL \PWM2_FB02|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM2_FA02|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM2_FA02|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM2_FA02|comp_out~q\ : std_logic;
SIGNAL \PWM2_FA02|Add1~0_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~18_combout\ : std_logic;
SIGNAL \PWM2_FA02|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM2_FA02|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~1\ : std_logic;
SIGNAL \PWM2_FA02|Add1~2_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~19_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~3\ : std_logic;
SIGNAL \PWM2_FA02|Add1~4_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~20_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~5\ : std_logic;
SIGNAL \PWM2_FA02|Add1~6_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~8_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~7\ : std_logic;
SIGNAL \PWM2_FA02|Add1~9_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~16_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~10\ : std_logic;
SIGNAL \PWM2_FA02|Add1~11_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~17_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~12\ : std_logic;
SIGNAL \PWM2_FA02|Add1~13_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add1~15_combout\ : std_logic;
SIGNAL \PWM2_FA02|Equal1~1_combout\ : std_logic;
SIGNAL \PWM2_FA02|Equal1~0_combout\ : std_logic;
SIGNAL \PWM2_FA02|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM2_FA02|port_PWM02~q\ : std_logic;
SIGNAL \ucr6|Add2~1\ : std_logic;
SIGNAL \ucr6|Add2~2_combout\ : std_logic;
SIGNAL \ucr6|Add2~3\ : std_logic;
SIGNAL \ucr6|Add2~4_combout\ : std_logic;
SIGNAL \ucr6|c_int[2]~11_combout\ : std_logic;
SIGNAL \ucr6|Add2~5\ : std_logic;
SIGNAL \ucr6|Add2~6_combout\ : std_logic;
SIGNAL \ucr6|c_int[3]~10_combout\ : std_logic;
SIGNAL \PWM2_FC03|LessThan0~1_combout\ : std_logic;
SIGNAL \ucr6|Add2~7\ : std_logic;
SIGNAL \ucr6|Add2~8_combout\ : std_logic;
SIGNAL \ucr6|c_int[4]~14_combout\ : std_logic;
SIGNAL \ucr6|Add2~9\ : std_logic;
SIGNAL \ucr6|Add2~10_combout\ : std_logic;
SIGNAL \ucr6|c_int[5]~13_combout\ : std_logic;
SIGNAL \ucr6|Add2~11\ : std_logic;
SIGNAL \ucr6|Add2~12_combout\ : std_logic;
SIGNAL \ucr6|Add2~13\ : std_logic;
SIGNAL \ucr6|Add2~14_combout\ : std_logic;
SIGNAL \ucr6|c_int[7]~12_combout\ : std_logic;
SIGNAL \ucr6|Add2~15\ : std_logic;
SIGNAL \ucr6|Add2~17\ : std_logic;
SIGNAL \ucr6|Add2~18_combout\ : std_logic;
SIGNAL \ucr6|Add2~19\ : std_logic;
SIGNAL \ucr6|Add2~20_combout\ : std_logic;
SIGNAL \ucr6|c_int[0]~2_combout\ : std_logic;
SIGNAL \ucr6|c_int[0]~3_combout\ : std_logic;
SIGNAL \ucr6|Add2~21\ : std_logic;
SIGNAL \ucr6|Add2~22_combout\ : std_logic;
SIGNAL \ucr6|Add2~23\ : std_logic;
SIGNAL \ucr6|Add2~24_combout\ : std_logic;
SIGNAL \ucr6|Add2~25\ : std_logic;
SIGNAL \ucr6|Add2~26_combout\ : std_logic;
SIGNAL \ucr6|Add2~27\ : std_logic;
SIGNAL \ucr6|Add2~28_combout\ : std_logic;
SIGNAL \ucr6|Add2~29\ : std_logic;
SIGNAL \ucr6|Add2~30_combout\ : std_logic;
SIGNAL \PWM2_FB03|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM2_FB03|LessThan0~5_combout\ : std_logic;
SIGNAL \ucr6|c_int[0]~4_combout\ : std_logic;
SIGNAL \ucr6|c_int[0]~5_combout\ : std_logic;
SIGNAL \ucr6|dir_int~q\ : std_logic;
SIGNAL \ucr6|c_int[0]~6_combout\ : std_logic;
SIGNAL \ucr6|c_int[0]~0_combout\ : std_logic;
SIGNAL \ucr6|c_int[0]~1_combout\ : std_logic;
SIGNAL \ucr6|c_int[0]~7_combout\ : std_logic;
SIGNAL \ucr6|Add2~16_combout\ : std_logic;
SIGNAL \ucr6|c_int[8]~9_combout\ : std_logic;
SIGNAL \PWM2_FA03|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM2_FA03|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM2_FB03|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM2_FA03|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM2_FA03|comp_out~q\ : std_logic;
SIGNAL \PWM2_FA03|Add1~20_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~5\ : std_logic;
SIGNAL \PWM2_FA03|Add1~6_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~8_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~7\ : std_logic;
SIGNAL \PWM2_FA03|Add1~9_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~16_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~10\ : std_logic;
SIGNAL \PWM2_FA03|Add1~11_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~17_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~0_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~18_combout\ : std_logic;
SIGNAL \PWM2_FA03|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~12\ : std_logic;
SIGNAL \PWM2_FA03|Add1~13_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~15_combout\ : std_logic;
SIGNAL \PWM2_FA03|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~1\ : std_logic;
SIGNAL \PWM2_FA03|Add1~2_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~19_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add1~3\ : std_logic;
SIGNAL \PWM2_FA03|Add1~4_combout\ : std_logic;
SIGNAL \PWM2_FA03|Equal1~0_combout\ : std_logic;
SIGNAL \PWM2_FA03|Equal1~1_combout\ : std_logic;
SIGNAL \PWM2_FA03|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM2_FA03|port_PWM02~q\ : std_logic;
SIGNAL \PWM2_FA01|Add0~7\ : std_logic;
SIGNAL \PWM2_FA01|Add0~9_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~16_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~10\ : std_logic;
SIGNAL \PWM2_FA01|Add0~11_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~17_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~12\ : std_logic;
SIGNAL \PWM2_FA01|Add0~13_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~15_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~18_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~1\ : std_logic;
SIGNAL \PWM2_FA01|Add0~2_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~19_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~3\ : std_logic;
SIGNAL \PWM2_FA01|Add0~4_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~20_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~5\ : std_logic;
SIGNAL \PWM2_FA01|Add0~6_combout\ : std_logic;
SIGNAL \PWM2_FA01|Add0~8_combout\ : std_logic;
SIGNAL \PWM2_FA01|Equal0~1_combout\ : std_logic;
SIGNAL \PWM2_FA01|Equal0~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM2_FA01|port_PWM01~q\ : std_logic;
SIGNAL \PWM2_FA02|Add0~0_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~18_combout\ : std_logic;
SIGNAL \PWM2_FA02|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM2_FA02|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~1\ : std_logic;
SIGNAL \PWM2_FA02|Add0~2_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~19_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~3\ : std_logic;
SIGNAL \PWM2_FA02|Add0~4_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~20_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~5\ : std_logic;
SIGNAL \PWM2_FA02|Add0~6_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~8_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~7\ : std_logic;
SIGNAL \PWM2_FA02|Add0~9_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~16_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~10\ : std_logic;
SIGNAL \PWM2_FA02|Add0~11_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~17_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~12\ : std_logic;
SIGNAL \PWM2_FA02|Add0~13_combout\ : std_logic;
SIGNAL \PWM2_FA02|Add0~15_combout\ : std_logic;
SIGNAL \PWM2_FA02|Equal0~1_combout\ : std_logic;
SIGNAL \PWM2_FA02|Equal0~0_combout\ : std_logic;
SIGNAL \PWM2_FA02|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM2_FA02|port_PWM01~q\ : std_logic;
SIGNAL \PWM2_FA03|Add0~19_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~3\ : std_logic;
SIGNAL \PWM2_FA03|Add0~4_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~20_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~5\ : std_logic;
SIGNAL \PWM2_FA03|Add0~6_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~8_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~7\ : std_logic;
SIGNAL \PWM2_FA03|Add0~9_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~16_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~10\ : std_logic;
SIGNAL \PWM2_FA03|Add0~11_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~17_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~12\ : std_logic;
SIGNAL \PWM2_FA03|Add0~13_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~15_combout\ : std_logic;
SIGNAL \PWM2_FA03|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM2_FA03|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~0_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~18_combout\ : std_logic;
SIGNAL \PWM2_FA03|Add0~1\ : std_logic;
SIGNAL \PWM2_FA03|Add0~2_combout\ : std_logic;
SIGNAL \PWM2_FA03|Equal0~0_combout\ : std_logic;
SIGNAL \PWM2_FA03|Equal0~1_combout\ : std_logic;
SIGNAL \PWM2_FA03|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM2_FA03|port_PWM01~q\ : std_logic;
SIGNAL \PWM1_FB01|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM1_FB01|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM1_FB01|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM1_FB01|comp_out~q\ : std_logic;
SIGNAL \PWM1_FB01|Add0~19_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~3\ : std_logic;
SIGNAL \PWM1_FB01|Add0~4_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~18_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~5\ : std_logic;
SIGNAL \PWM1_FB01|Add0~6_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~15_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~7\ : std_logic;
SIGNAL \PWM1_FB01|Add0~8_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~16_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~9\ : std_logic;
SIGNAL \PWM1_FB01|Add0~10_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~17_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~11\ : std_logic;
SIGNAL \PWM1_FB01|Add0~12_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~14_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~0_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~20_combout\ : std_logic;
SIGNAL \PWM1_FB01|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM1_FB01|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add0~1\ : std_logic;
SIGNAL \PWM1_FB01|Add0~2_combout\ : std_logic;
SIGNAL \PWM1_FB01|port_PWM01~1_combout\ : std_logic;
SIGNAL \PWM1_FB01|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM1_FB01|port_PWM01~2_combout\ : std_logic;
SIGNAL \PWM1_FB01|port_PWM01~q\ : std_logic;
SIGNAL \PWM1_FB02|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM1_FB02|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM1_FB02|LessThan0~4_combout\ : std_logic;
SIGNAL \PWM1_FB02|comp_out~q\ : std_logic;
SIGNAL \PWM1_FB02|Add0~16_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~1\ : std_logic;
SIGNAL \PWM1_FB02|Add0~2_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~17_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~3\ : std_logic;
SIGNAL \PWM1_FB02|Add0~4_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~18_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~5\ : std_logic;
SIGNAL \PWM1_FB02|Add0~6_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~8_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~7\ : std_logic;
SIGNAL \PWM1_FB02|Add0~9_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~13_combout\ : std_logic;
SIGNAL \PWM1_FB02|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~10\ : std_logic;
SIGNAL \PWM1_FB02|Add0~11_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~19_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~12\ : std_logic;
SIGNAL \PWM1_FB02|Add0~14_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~20_combout\ : std_logic;
SIGNAL \PWM1_FB02|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add0~0_combout\ : std_logic;
SIGNAL \PWM1_FB02|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM1_FB02|port_PWM01~1_combout\ : std_logic;
SIGNAL \PWM1_FB02|port_PWM01~2_combout\ : std_logic;
SIGNAL \PWM1_FB02|port_PWM01~q\ : std_logic;
SIGNAL \PWM1_FB03|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM1_FB03|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM1_FB03|LessThan0~4_combout\ : std_logic;
SIGNAL \PWM1_FB03|comp_out~q\ : std_logic;
SIGNAL \PWM1_FB03|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~12\ : std_logic;
SIGNAL \PWM1_FB03|Add0~13_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~15_combout\ : std_logic;
SIGNAL \PWM1_FB03|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~0_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~18_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~1\ : std_logic;
SIGNAL \PWM1_FB03|Add0~2_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~19_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~3\ : std_logic;
SIGNAL \PWM1_FB03|Add0~4_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~20_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~5\ : std_logic;
SIGNAL \PWM1_FB03|Add0~6_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~8_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~7\ : std_logic;
SIGNAL \PWM1_FB03|Add0~9_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~16_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~10\ : std_logic;
SIGNAL \PWM1_FB03|Add0~11_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add0~17_combout\ : std_logic;
SIGNAL \PWM1_FB03|Equal0~1_combout\ : std_logic;
SIGNAL \PWM1_FB03|Equal0~0_combout\ : std_logic;
SIGNAL \PWM1_FB03|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM1_FB03|port_PWM01~q\ : std_logic;
SIGNAL \PWM1_FB01|Add1~0_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~18_combout\ : std_logic;
SIGNAL \PWM1_FB01|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM1_FB01|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~1\ : std_logic;
SIGNAL \PWM1_FB01|Add1~2_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~19_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~3\ : std_logic;
SIGNAL \PWM1_FB01|Add1~4_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~20_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~5\ : std_logic;
SIGNAL \PWM1_FB01|Add1~6_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~8_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~7\ : std_logic;
SIGNAL \PWM1_FB01|Add1~9_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~16_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~10\ : std_logic;
SIGNAL \PWM1_FB01|Add1~11_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~17_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~12\ : std_logic;
SIGNAL \PWM1_FB01|Add1~13_combout\ : std_logic;
SIGNAL \PWM1_FB01|Add1~15_combout\ : std_logic;
SIGNAL \PWM1_FB01|Equal1~1_combout\ : std_logic;
SIGNAL \PWM1_FB01|Equal1~0_combout\ : std_logic;
SIGNAL \PWM1_FB01|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM1_FB01|port_PWM02~q\ : std_logic;
SIGNAL \PWM1_FB02|Add1~0_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~18_combout\ : std_logic;
SIGNAL \PWM1_FB02|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM1_FB02|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~1\ : std_logic;
SIGNAL \PWM1_FB02|Add1~2_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~19_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~3\ : std_logic;
SIGNAL \PWM1_FB02|Add1~4_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~20_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~5\ : std_logic;
SIGNAL \PWM1_FB02|Add1~6_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~8_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~7\ : std_logic;
SIGNAL \PWM1_FB02|Add1~9_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~16_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~10\ : std_logic;
SIGNAL \PWM1_FB02|Add1~11_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~17_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~12\ : std_logic;
SIGNAL \PWM1_FB02|Add1~13_combout\ : std_logic;
SIGNAL \PWM1_FB02|Add1~15_combout\ : std_logic;
SIGNAL \PWM1_FB02|Equal1~1_combout\ : std_logic;
SIGNAL \PWM1_FB02|Equal1~0_combout\ : std_logic;
SIGNAL \PWM1_FB02|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM1_FB02|port_PWM02~q\ : std_logic;
SIGNAL \PWM1_FB03|Add1~7\ : std_logic;
SIGNAL \PWM1_FB03|Add1~9_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~16_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~10\ : std_logic;
SIGNAL \PWM1_FB03|Add1~11_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~17_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~12\ : std_logic;
SIGNAL \PWM1_FB03|Add1~13_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~15_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~0_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~18_combout\ : std_logic;
SIGNAL \PWM1_FB03|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM1_FB03|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~1\ : std_logic;
SIGNAL \PWM1_FB03|Add1~2_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~19_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~3\ : std_logic;
SIGNAL \PWM1_FB03|Add1~4_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~20_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~5\ : std_logic;
SIGNAL \PWM1_FB03|Add1~6_combout\ : std_logic;
SIGNAL \PWM1_FB03|Add1~8_combout\ : std_logic;
SIGNAL \PWM1_FB03|Equal1~1_combout\ : std_logic;
SIGNAL \PWM1_FB03|Equal1~0_combout\ : std_logic;
SIGNAL \PWM1_FB03|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM1_FB03|port_PWM02~q\ : std_logic;
SIGNAL \PWM2_FB01|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM2_FB01|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM2_FB01|LessThan0~4_combout\ : std_logic;
SIGNAL \PWM2_FB01|comp_out~q\ : std_logic;
SIGNAL \PWM2_FB01|Add1~18_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~1\ : std_logic;
SIGNAL \PWM2_FB01|Add1~2_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~19_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~3\ : std_logic;
SIGNAL \PWM2_FB01|Add1~4_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~20_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~5\ : std_logic;
SIGNAL \PWM2_FB01|Add1~6_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~8_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~7\ : std_logic;
SIGNAL \PWM2_FB01|Add1~9_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~16_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~10\ : std_logic;
SIGNAL \PWM2_FB01|Add1~11_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~17_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~12\ : std_logic;
SIGNAL \PWM2_FB01|Add1~13_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~15_combout\ : std_logic;
SIGNAL \PWM2_FB01|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM2_FB01|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add1~0_combout\ : std_logic;
SIGNAL \PWM2_FB01|Equal1~0_combout\ : std_logic;
SIGNAL \PWM2_FB01|Equal1~1_combout\ : std_logic;
SIGNAL \PWM2_FB01|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM2_FB01|port_PWM02~q\ : std_logic;
SIGNAL \PWM2_FB02|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM2_FB02|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM2_FB02|LessThan0~4_combout\ : std_logic;
SIGNAL \PWM2_FB02|comp_out~q\ : std_logic;
SIGNAL \PWM2_FB02|Add1~15_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~3\ : std_logic;
SIGNAL \PWM2_FB02|Add1~4_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~16_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~5\ : std_logic;
SIGNAL \PWM2_FB02|Add1~6_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~17_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~7\ : std_logic;
SIGNAL \PWM2_FB02|Add1~8_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~18_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~9\ : std_logic;
SIGNAL \PWM2_FB02|Add1~10_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~19_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~11\ : std_logic;
SIGNAL \PWM2_FB02|Add1~12_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~20_combout\ : std_logic;
SIGNAL \PWM2_FB02|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM2_FB02|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~0_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~14_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add1~1\ : std_logic;
SIGNAL \PWM2_FB02|Add1~2_combout\ : std_logic;
SIGNAL \PWM2_FB02|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM2_FB02|port_PWM02~1_combout\ : std_logic;
SIGNAL \PWM2_FB02|port_PWM02~2_combout\ : std_logic;
SIGNAL \PWM2_FB02|port_PWM02~q\ : std_logic;
SIGNAL \PWM2_FB03|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM2_FB03|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM2_FB03|LessThan0~4_combout\ : std_logic;
SIGNAL \PWM2_FB03|comp_out~q\ : std_logic;
SIGNAL \PWM2_FB03|Add1~18_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~1\ : std_logic;
SIGNAL \PWM2_FB03|Add1~2_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~19_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~3\ : std_logic;
SIGNAL \PWM2_FB03|Add1~4_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~20_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~5\ : std_logic;
SIGNAL \PWM2_FB03|Add1~6_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~8_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~7\ : std_logic;
SIGNAL \PWM2_FB03|Add1~9_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~16_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~10\ : std_logic;
SIGNAL \PWM2_FB03|Add1~11_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~17_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~12\ : std_logic;
SIGNAL \PWM2_FB03|Add1~13_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~15_combout\ : std_logic;
SIGNAL \PWM2_FB03|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM2_FB03|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add1~0_combout\ : std_logic;
SIGNAL \PWM2_FB03|Equal1~0_combout\ : std_logic;
SIGNAL \PWM2_FB03|Equal1~1_combout\ : std_logic;
SIGNAL \PWM2_FB03|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM2_FB03|port_PWM02~q\ : std_logic;
SIGNAL \PWM2_FB01|Add0~0_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~18_combout\ : std_logic;
SIGNAL \PWM2_FB01|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM2_FB01|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~1\ : std_logic;
SIGNAL \PWM2_FB01|Add0~2_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~19_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~3\ : std_logic;
SIGNAL \PWM2_FB01|Add0~4_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~20_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~5\ : std_logic;
SIGNAL \PWM2_FB01|Add0~6_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~8_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~7\ : std_logic;
SIGNAL \PWM2_FB01|Add0~9_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~16_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~10\ : std_logic;
SIGNAL \PWM2_FB01|Add0~11_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~17_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~12\ : std_logic;
SIGNAL \PWM2_FB01|Add0~13_combout\ : std_logic;
SIGNAL \PWM2_FB01|Add0~15_combout\ : std_logic;
SIGNAL \PWM2_FB01|Equal0~1_combout\ : std_logic;
SIGNAL \PWM2_FB01|Equal0~0_combout\ : std_logic;
SIGNAL \PWM2_FB01|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM2_FB01|port_PWM01~q\ : std_logic;
SIGNAL \PWM2_FB02|Add0~18_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~1\ : std_logic;
SIGNAL \PWM2_FB02|Add0~2_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~19_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~3\ : std_logic;
SIGNAL \PWM2_FB02|Add0~4_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~20_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~5\ : std_logic;
SIGNAL \PWM2_FB02|Add0~6_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~8_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~7\ : std_logic;
SIGNAL \PWM2_FB02|Add0~9_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~16_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~10\ : std_logic;
SIGNAL \PWM2_FB02|Add0~11_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~17_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~12\ : std_logic;
SIGNAL \PWM2_FB02|Add0~13_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~15_combout\ : std_logic;
SIGNAL \PWM2_FB02|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM2_FB02|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM2_FB02|Add0~0_combout\ : std_logic;
SIGNAL \PWM2_FB02|Equal0~0_combout\ : std_logic;
SIGNAL \PWM2_FB02|Equal0~1_combout\ : std_logic;
SIGNAL \PWM2_FB02|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM2_FB02|port_PWM01~q\ : std_logic;
SIGNAL \PWM2_FB03|Add0~18_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~1\ : std_logic;
SIGNAL \PWM2_FB03|Add0~2_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~19_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~3\ : std_logic;
SIGNAL \PWM2_FB03|Add0~4_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~20_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~5\ : std_logic;
SIGNAL \PWM2_FB03|Add0~6_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~8_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~7\ : std_logic;
SIGNAL \PWM2_FB03|Add0~9_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~16_combout\ : std_logic;
SIGNAL \PWM2_FB03|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~10\ : std_logic;
SIGNAL \PWM2_FB03|Add0~11_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~17_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~12\ : std_logic;
SIGNAL \PWM2_FB03|Add0~13_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~15_combout\ : std_logic;
SIGNAL \PWM2_FB03|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM2_FB03|Add0~0_combout\ : std_logic;
SIGNAL \PWM2_FB03|Equal0~0_combout\ : std_logic;
SIGNAL \PWM2_FB03|Equal0~1_combout\ : std_logic;
SIGNAL \PWM2_FB03|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM2_FB03|port_PWM01~q\ : std_logic;
SIGNAL \PWM1_FC01|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM1_FC01|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM1_FC01|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM1_FC01|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM1_FC01|comp_out~q\ : std_logic;
SIGNAL \PWM1_FC01|Add0~0_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~18_combout\ : std_logic;
SIGNAL \PWM1_FC01|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~7\ : std_logic;
SIGNAL \PWM1_FC01|Add0~9_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~16_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~10\ : std_logic;
SIGNAL \PWM1_FC01|Add0~11_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~17_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~12\ : std_logic;
SIGNAL \PWM1_FC01|Add0~13_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~15_combout\ : std_logic;
SIGNAL \PWM1_FC01|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~1\ : std_logic;
SIGNAL \PWM1_FC01|Add0~2_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~19_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~3\ : std_logic;
SIGNAL \PWM1_FC01|Add0~4_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~20_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~5\ : std_logic;
SIGNAL \PWM1_FC01|Add0~6_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add0~8_combout\ : std_logic;
SIGNAL \PWM1_FC01|Equal0~1_combout\ : std_logic;
SIGNAL \PWM1_FC01|Equal0~0_combout\ : std_logic;
SIGNAL \PWM1_FC01|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM1_FC01|port_PWM01~q\ : std_logic;
SIGNAL \PWM1_FC02|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM1_FC02|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM1_FC02|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM1_FC02|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM1_FC02|comp_out~q\ : std_logic;
SIGNAL \PWM1_FC02|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~12\ : std_logic;
SIGNAL \PWM1_FC02|Add0~13_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~15_combout\ : std_logic;
SIGNAL \PWM1_FC02|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~0_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~18_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~1\ : std_logic;
SIGNAL \PWM1_FC02|Add0~2_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~19_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~3\ : std_logic;
SIGNAL \PWM1_FC02|Add0~4_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~20_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~5\ : std_logic;
SIGNAL \PWM1_FC02|Add0~6_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~8_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~7\ : std_logic;
SIGNAL \PWM1_FC02|Add0~9_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~16_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~10\ : std_logic;
SIGNAL \PWM1_FC02|Add0~11_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add0~17_combout\ : std_logic;
SIGNAL \PWM1_FC02|Equal0~1_combout\ : std_logic;
SIGNAL \PWM1_FC02|Equal0~0_combout\ : std_logic;
SIGNAL \PWM1_FC02|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM1_FC02|port_PWM01~q\ : std_logic;
SIGNAL \PWM1_FC03|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM1_FC03|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM1_FC03|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM1_FC03|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM1_FC03|comp_out~q\ : std_logic;
SIGNAL \PWM1_FC03|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM1_FC03|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~0_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~18_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~1\ : std_logic;
SIGNAL \PWM1_FC03|Add0~2_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~19_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~3\ : std_logic;
SIGNAL \PWM1_FC03|Add0~4_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~20_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~5\ : std_logic;
SIGNAL \PWM1_FC03|Add0~6_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~8_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~7\ : std_logic;
SIGNAL \PWM1_FC03|Add0~9_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~16_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~10\ : std_logic;
SIGNAL \PWM1_FC03|Add0~11_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~17_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~12\ : std_logic;
SIGNAL \PWM1_FC03|Add0~13_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add0~15_combout\ : std_logic;
SIGNAL \PWM1_FC03|Equal0~1_combout\ : std_logic;
SIGNAL \PWM1_FC03|Equal0~0_combout\ : std_logic;
SIGNAL \PWM1_FC03|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM1_FC03|port_PWM01~q\ : std_logic;
SIGNAL \PWM1_FC01|Add1~18_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~1\ : std_logic;
SIGNAL \PWM1_FC01|Add1~2_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~19_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~3\ : std_logic;
SIGNAL \PWM1_FC01|Add1~4_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~20_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~5\ : std_logic;
SIGNAL \PWM1_FC01|Add1~6_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~8_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~7\ : std_logic;
SIGNAL \PWM1_FC01|Add1~9_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~16_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~10\ : std_logic;
SIGNAL \PWM1_FC01|Add1~11_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~17_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~12\ : std_logic;
SIGNAL \PWM1_FC01|Add1~13_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~15_combout\ : std_logic;
SIGNAL \PWM1_FC01|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM1_FC01|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM1_FC01|Add1~0_combout\ : std_logic;
SIGNAL \PWM1_FC01|Equal1~0_combout\ : std_logic;
SIGNAL \PWM1_FC01|Equal1~1_combout\ : std_logic;
SIGNAL \PWM1_FC01|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM1_FC01|port_PWM02~q\ : std_logic;
SIGNAL \PWM1_FC02|Add1~10\ : std_logic;
SIGNAL \PWM1_FC02|Add1~11_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~17_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~12\ : std_logic;
SIGNAL \PWM1_FC02|Add1~13_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~15_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~0_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~18_combout\ : std_logic;
SIGNAL \PWM1_FC02|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM1_FC02|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~1\ : std_logic;
SIGNAL \PWM1_FC02|Add1~2_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~19_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~3\ : std_logic;
SIGNAL \PWM1_FC02|Add1~4_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~20_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~5\ : std_logic;
SIGNAL \PWM1_FC02|Add1~6_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~8_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~7\ : std_logic;
SIGNAL \PWM1_FC02|Add1~9_combout\ : std_logic;
SIGNAL \PWM1_FC02|Add1~16_combout\ : std_logic;
SIGNAL \PWM1_FC02|Equal1~1_combout\ : std_logic;
SIGNAL \PWM1_FC02|Equal1~0_combout\ : std_logic;
SIGNAL \PWM1_FC02|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM1_FC02|port_PWM02~q\ : std_logic;
SIGNAL \PWM1_FC03|Add1~19_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~3\ : std_logic;
SIGNAL \PWM1_FC03|Add1~4_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~20_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~5\ : std_logic;
SIGNAL \PWM1_FC03|Add1~6_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~8_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~7\ : std_logic;
SIGNAL \PWM1_FC03|Add1~9_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~16_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~0_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~18_combout\ : std_logic;
SIGNAL \PWM1_FC03|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~10\ : std_logic;
SIGNAL \PWM1_FC03|Add1~11_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~17_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~12\ : std_logic;
SIGNAL \PWM1_FC03|Add1~13_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~15_combout\ : std_logic;
SIGNAL \PWM1_FC03|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM1_FC03|Add1~1\ : std_logic;
SIGNAL \PWM1_FC03|Add1~2_combout\ : std_logic;
SIGNAL \PWM1_FC03|Equal1~0_combout\ : std_logic;
SIGNAL \PWM1_FC03|Equal1~1_combout\ : std_logic;
SIGNAL \PWM1_FC03|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM1_FC03|port_PWM02~q\ : std_logic;
SIGNAL \PWM2_FC01|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM2_FC01|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM2_FC01|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM2_FC01|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM2_FC01|comp_out~q\ : std_logic;
SIGNAL \PWM2_FC01|Add1~20_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~5\ : std_logic;
SIGNAL \PWM2_FC01|Add1~6_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~8_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~7\ : std_logic;
SIGNAL \PWM2_FC01|Add1~9_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~16_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~10\ : std_logic;
SIGNAL \PWM2_FC01|Add1~11_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~17_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~12\ : std_logic;
SIGNAL \PWM2_FC01|Add1~13_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~15_combout\ : std_logic;
SIGNAL \PWM2_FC01|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM2_FC01|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~0_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~18_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~1\ : std_logic;
SIGNAL \PWM2_FC01|Add1~2_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~19_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add1~3\ : std_logic;
SIGNAL \PWM2_FC01|Add1~4_combout\ : std_logic;
SIGNAL \PWM2_FC01|Equal1~0_combout\ : std_logic;
SIGNAL \PWM2_FC01|Equal1~1_combout\ : std_logic;
SIGNAL \PWM2_FC01|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM2_FC01|port_PWM02~q\ : std_logic;
SIGNAL \PWM2_FC02|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM2_FC02|LessThan0~1_combout\ : std_logic;
SIGNAL \PWM2_FC02|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM2_FC02|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM2_FC02|comp_out~q\ : std_logic;
SIGNAL \PWM2_FC02|Add1~19_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~3\ : std_logic;
SIGNAL \PWM2_FC02|Add1~4_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~20_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~5\ : std_logic;
SIGNAL \PWM2_FC02|Add1~6_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~8_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~7\ : std_logic;
SIGNAL \PWM2_FC02|Add1~9_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~16_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~10\ : std_logic;
SIGNAL \PWM2_FC02|Add1~11_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~17_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~12\ : std_logic;
SIGNAL \PWM2_FC02|Add1~13_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~15_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~0_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~18_combout\ : std_logic;
SIGNAL \PWM2_FC02|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM2_FC02|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add1~1\ : std_logic;
SIGNAL \PWM2_FC02|Add1~2_combout\ : std_logic;
SIGNAL \PWM2_FC02|Equal1~0_combout\ : std_logic;
SIGNAL \PWM2_FC02|Equal1~1_combout\ : std_logic;
SIGNAL \PWM2_FC02|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM2_FC02|port_PWM02~q\ : std_logic;
SIGNAL \PWM2_FC03|LessThan0~0_combout\ : std_logic;
SIGNAL \PWM2_FC03|LessThan0~2_combout\ : std_logic;
SIGNAL \PWM2_FC03|LessThan0~3_combout\ : std_logic;
SIGNAL \PWM2_FC03|comp_out~q\ : std_logic;
SIGNAL \PWM2_FC03|Add1~19_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~3\ : std_logic;
SIGNAL \PWM2_FC03|Add1~4_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~20_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~5\ : std_logic;
SIGNAL \PWM2_FC03|Add1~6_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~8_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~0_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~18_combout\ : std_logic;
SIGNAL \PWM2_FC03|LessThan2~0_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~7\ : std_logic;
SIGNAL \PWM2_FC03|Add1~9_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~16_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~10\ : std_logic;
SIGNAL \PWM2_FC03|Add1~11_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~17_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~12\ : std_logic;
SIGNAL \PWM2_FC03|Add1~13_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~15_combout\ : std_logic;
SIGNAL \PWM2_FC03|LessThan2~1_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add1~1\ : std_logic;
SIGNAL \PWM2_FC03|Add1~2_combout\ : std_logic;
SIGNAL \PWM2_FC03|Equal1~0_combout\ : std_logic;
SIGNAL \PWM2_FC03|Equal1~1_combout\ : std_logic;
SIGNAL \PWM2_FC03|port_PWM02~0_combout\ : std_logic;
SIGNAL \PWM2_FC03|port_PWM02~q\ : std_logic;
SIGNAL \PWM2_FC01|Add0~17_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~5\ : std_logic;
SIGNAL \PWM2_FC01|Add0~6_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~12_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~7\ : std_logic;
SIGNAL \PWM2_FC01|Add0~8_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~18_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~9\ : std_logic;
SIGNAL \PWM2_FC01|Add0~10_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~19_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~11\ : std_logic;
SIGNAL \PWM2_FC01|Add0~13_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~20_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~0_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~15_combout\ : std_logic;
SIGNAL \PWM2_FC01|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM2_FC01|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~1\ : std_logic;
SIGNAL \PWM2_FC01|Add0~2_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~16_combout\ : std_logic;
SIGNAL \PWM2_FC01|Add0~3\ : std_logic;
SIGNAL \PWM2_FC01|Add0~4_combout\ : std_logic;
SIGNAL \PWM2_FC01|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM2_FC01|port_PWM01~1_combout\ : std_logic;
SIGNAL \PWM2_FC01|port_PWM01~2_combout\ : std_logic;
SIGNAL \PWM2_FC01|port_PWM01~q\ : std_logic;
SIGNAL \PWM2_FC02|Add0~18_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~1\ : std_logic;
SIGNAL \PWM2_FC02|Add0~2_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~19_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~3\ : std_logic;
SIGNAL \PWM2_FC02|Add0~4_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~20_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~5\ : std_logic;
SIGNAL \PWM2_FC02|Add0~6_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~8_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~7\ : std_logic;
SIGNAL \PWM2_FC02|Add0~9_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~16_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~10\ : std_logic;
SIGNAL \PWM2_FC02|Add0~11_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~17_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~12\ : std_logic;
SIGNAL \PWM2_FC02|Add0~13_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~15_combout\ : std_logic;
SIGNAL \PWM2_FC02|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM2_FC02|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM2_FC02|Add0~0_combout\ : std_logic;
SIGNAL \PWM2_FC02|Equal0~0_combout\ : std_logic;
SIGNAL \PWM2_FC02|Equal0~1_combout\ : std_logic;
SIGNAL \PWM2_FC02|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM2_FC02|port_PWM01~q\ : std_logic;
SIGNAL \PWM2_FC03|Add0~19_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~3\ : std_logic;
SIGNAL \PWM2_FC03|Add0~4_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~20_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~5\ : std_logic;
SIGNAL \PWM2_FC03|Add0~6_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~8_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~7\ : std_logic;
SIGNAL \PWM2_FC03|Add0~9_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~16_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~10\ : std_logic;
SIGNAL \PWM2_FC03|Add0~11_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~17_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~0_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~18_combout\ : std_logic;
SIGNAL \PWM2_FC03|LessThan1~0_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~12\ : std_logic;
SIGNAL \PWM2_FC03|Add0~13_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~15_combout\ : std_logic;
SIGNAL \PWM2_FC03|LessThan1~1_combout\ : std_logic;
SIGNAL \PWM2_FC03|Add0~1\ : std_logic;
SIGNAL \PWM2_FC03|Add0~2_combout\ : std_logic;
SIGNAL \PWM2_FC03|Equal0~0_combout\ : std_logic;
SIGNAL \PWM2_FC03|Equal0~1_combout\ : std_logic;
SIGNAL \PWM2_FC03|port_PWM01~0_combout\ : std_logic;
SIGNAL \PWM2_FC03|port_PWM01~q\ : std_logic;
SIGNAL \upll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PWM2_FB02|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ucr1|c_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PWM1_FB03|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FA01|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FC02|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FA03|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FA01|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FA02|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FA02|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FC02|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FA03|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FA01|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ucr3|c_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PWM2_FA02|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FC02|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FA03|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FA01|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FC01|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FB02|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FA02|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FC02|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FA03|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FB03|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FB01|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FB03|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FC03|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FB01|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FC01|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FB02|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ucr5|c_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PWM1_FC01|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FB01|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FB03|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FC01|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FB01|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FB02|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM1_FC03|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FC03|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \PWM2_FC03|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ucr6|c_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ucr2|c_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ucr4|c_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ucr1|ALT_INV_c_int[10]~46_combout\ : std_logic;

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
\ucr1|ALT_INV_c_int[10]~46_combout\ <= NOT \ucr1|c_int[10]~46_combout\;

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
	i => \PWM1_FA01|port_PWM01~q\,
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
	i => \PWM1_FA02|port_PWM01~q\,
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
	i => \PWM1_FA03|port_PWM01~q\,
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
	i => \PWM1_FA01|port_PWM02~q\,
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
	i => \PWM1_FA02|port_PWM02~q\,
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
	i => \PWM1_FA03|port_PWM02~q\,
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
	i => \PWM2_FA01|port_PWM02~q\,
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
	i => \PWM2_FA02|port_PWM02~q\,
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
	i => \PWM2_FA03|port_PWM02~q\,
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
	i => \PWM2_FA01|port_PWM01~q\,
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
	i => \PWM2_FA02|port_PWM01~q\,
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
	i => \PWM2_FA03|port_PWM01~q\,
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
	i => \PWM1_FB01|port_PWM01~q\,
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
	i => \PWM1_FB02|port_PWM01~q\,
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
	i => \PWM1_FB03|port_PWM01~q\,
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
	i => \PWM1_FB01|port_PWM02~q\,
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
	i => \PWM1_FB02|port_PWM02~q\,
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
	i => \PWM1_FB03|port_PWM02~q\,
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
	i => \PWM2_FB01|port_PWM02~q\,
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
	i => \PWM2_FB02|port_PWM02~q\,
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
	i => \PWM2_FB03|port_PWM02~q\,
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
	i => \PWM2_FB01|port_PWM01~q\,
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
	i => \PWM2_FB02|port_PWM01~q\,
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
	i => \PWM2_FB03|port_PWM01~q\,
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
	i => \PWM1_FC01|port_PWM01~q\,
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
	i => \PWM1_FC02|port_PWM01~q\,
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
	i => \PWM1_FC03|port_PWM01~q\,
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
	i => \PWM1_FC01|port_PWM02~q\,
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
	i => \PWM1_FC02|port_PWM02~q\,
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
	i => \PWM1_FC03|port_PWM02~q\,
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
	i => \PWM2_FC01|port_PWM02~q\,
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
	i => \PWM2_FC02|port_PWM02~q\,
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
	i => \PWM2_FC03|port_PWM02~q\,
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
	i => \PWM2_FC01|port_PWM01~q\,
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
	i => \PWM2_FC02|port_PWM01~q\,
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
	i => \PWM2_FC03|port_PWM01~q\,
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
	pll_compensation_delay => 3290,
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

-- Location: FF_X32_Y21_N21
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

-- Location: LCCOMB_X32_Y21_N14
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

-- Location: LCCOMB_X32_Y21_N16
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

-- Location: LCCOMB_X35_Y28_N0
\ucr5|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~0_combout\ = \ucr5|c_int\(0) $ (VCC)
-- \ucr5|Add2~1\ = CARRY(\ucr5|c_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr5|c_int\(0),
	datad => VCC,
	combout => \ucr5|Add2~0_combout\,
	cout => \ucr5|Add2~1\);

-- Location: LCCOMB_X34_Y28_N16
\rst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rst~feeder_combout\);

-- Location: FF_X34_Y28_N17
rst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rst~q\);

-- Location: FF_X35_Y28_N1
\ucr5|c_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|Add2~0_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(0));

-- Location: LCCOMB_X31_Y24_N0
\ucr1|c_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[1]~16_cout\ = CARRY(\ucr5|c_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(0),
	datad => VCC,
	cout => \ucr1|c_int[1]~16_cout\);

-- Location: LCCOMB_X31_Y24_N2
\ucr1|c_int[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[1]~17_combout\ = (\ucr1|c_int\(1) & (\ucr1|c_int[1]~16_cout\ & VCC)) # (!\ucr1|c_int\(1) & (!\ucr1|c_int[1]~16_cout\))
-- \ucr1|c_int[1]~18\ = CARRY((!\ucr1|c_int\(1) & !\ucr1|c_int[1]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(1),
	datad => VCC,
	cin => \ucr1|c_int[1]~16_cout\,
	combout => \ucr1|c_int[1]~17_combout\,
	cout => \ucr1|c_int[1]~18\);

-- Location: LCCOMB_X32_Y24_N0
\ucr1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~0_combout\ = (\ucr1|c_int\(1) & (\ucr5|c_int\(0) $ (VCC))) # (!\ucr1|c_int\(1) & (\ucr5|c_int\(0) & VCC))
-- \ucr1|Add1~1\ = CARRY((\ucr1|c_int\(1) & \ucr5|c_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(1),
	datab => \ucr5|c_int\(0),
	datad => VCC,
	combout => \ucr1|Add1~0_combout\,
	cout => \ucr1|Add1~1\);

-- Location: LCCOMB_X31_Y24_N8
\ucr1|c_int[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[4]~23_combout\ = (\ucr1|c_int\(4) & ((GND) # (!\ucr1|c_int[3]~22\))) # (!\ucr1|c_int\(4) & (\ucr1|c_int[3]~22\ $ (GND)))
-- \ucr1|c_int[4]~24\ = CARRY((\ucr1|c_int\(4)) # (!\ucr1|c_int[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(4),
	datad => VCC,
	cin => \ucr1|c_int[3]~22\,
	combout => \ucr1|c_int[4]~23_combout\,
	cout => \ucr1|c_int[4]~24\);

-- Location: LCCOMB_X31_Y24_N10
\ucr1|c_int[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[5]~25_combout\ = (\ucr1|c_int\(5) & (\ucr1|c_int[4]~24\ & VCC)) # (!\ucr1|c_int\(5) & (!\ucr1|c_int[4]~24\))
-- \ucr1|c_int[5]~26\ = CARRY((!\ucr1|c_int\(5) & !\ucr1|c_int[4]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(5),
	datad => VCC,
	cin => \ucr1|c_int[4]~24\,
	combout => \ucr1|c_int[5]~25_combout\,
	cout => \ucr1|c_int[5]~26\);

-- Location: LCCOMB_X32_Y24_N2
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

-- Location: LCCOMB_X32_Y24_N4
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

-- Location: LCCOMB_X32_Y24_N6
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

-- Location: LCCOMB_X32_Y24_N8
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

-- Location: FF_X31_Y24_N11
\ucr1|c_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[5]~25_combout\,
	asdata => \ucr1|Add1~8_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(5));

-- Location: LCCOMB_X31_Y24_N12
\ucr1|c_int[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[6]~27_combout\ = (\ucr1|c_int\(6) & ((GND) # (!\ucr1|c_int[5]~26\))) # (!\ucr1|c_int\(6) & (\ucr1|c_int[5]~26\ $ (GND)))
-- \ucr1|c_int[6]~28\ = CARRY((\ucr1|c_int\(6)) # (!\ucr1|c_int[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(6),
	datad => VCC,
	cin => \ucr1|c_int[5]~26\,
	combout => \ucr1|c_int[6]~27_combout\,
	cout => \ucr1|c_int[6]~28\);

-- Location: LCCOMB_X32_Y24_N10
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

-- Location: FF_X31_Y24_N13
\ucr1|c_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[6]~27_combout\,
	asdata => \ucr1|Add1~10_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(6));

-- Location: LCCOMB_X31_Y24_N14
\ucr1|c_int[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[7]~29_combout\ = (\ucr1|c_int\(7) & (\ucr1|c_int[6]~28\ & VCC)) # (!\ucr1|c_int\(7) & (!\ucr1|c_int[6]~28\))
-- \ucr1|c_int[7]~30\ = CARRY((!\ucr1|c_int\(7) & !\ucr1|c_int[6]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(7),
	datad => VCC,
	cin => \ucr1|c_int[6]~28\,
	combout => \ucr1|c_int[7]~29_combout\,
	cout => \ucr1|c_int[7]~30\);

-- Location: LCCOMB_X32_Y24_N12
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

-- Location: FF_X31_Y24_N15
\ucr1|c_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[7]~29_combout\,
	asdata => \ucr1|Add1~12_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(7));

-- Location: LCCOMB_X31_Y24_N16
\ucr1|c_int[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[8]~31_combout\ = (\ucr1|c_int\(8) & ((GND) # (!\ucr1|c_int[7]~30\))) # (!\ucr1|c_int\(8) & (\ucr1|c_int[7]~30\ $ (GND)))
-- \ucr1|c_int[8]~32\ = CARRY((\ucr1|c_int\(8)) # (!\ucr1|c_int[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(8),
	datad => VCC,
	cin => \ucr1|c_int[7]~30\,
	combout => \ucr1|c_int[8]~31_combout\,
	cout => \ucr1|c_int[8]~32\);

-- Location: LCCOMB_X32_Y24_N14
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

-- Location: FF_X31_Y24_N17
\ucr1|c_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[8]~31_combout\,
	asdata => \ucr1|Add1~14_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(8));

-- Location: LCCOMB_X31_Y24_N18
\ucr1|c_int[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[9]~33_combout\ = (\ucr1|c_int\(9) & (\ucr1|c_int[8]~32\ & VCC)) # (!\ucr1|c_int\(9) & (!\ucr1|c_int[8]~32\))
-- \ucr1|c_int[9]~34\ = CARRY((!\ucr1|c_int\(9) & !\ucr1|c_int[8]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(9),
	datad => VCC,
	cin => \ucr1|c_int[8]~32\,
	combout => \ucr1|c_int[9]~33_combout\,
	cout => \ucr1|c_int[9]~34\);

-- Location: LCCOMB_X32_Y24_N16
\ucr1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~16_combout\ = (\ucr1|c_int\(9) & (\ucr1|Add1~15\ $ (GND))) # (!\ucr1|c_int\(9) & (!\ucr1|Add1~15\ & VCC))
-- \ucr1|Add1~17\ = CARRY((\ucr1|c_int\(9) & !\ucr1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(9),
	datad => VCC,
	cin => \ucr1|Add1~15\,
	combout => \ucr1|Add1~16_combout\,
	cout => \ucr1|Add1~17\);

-- Location: FF_X31_Y24_N19
\ucr1|c_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[9]~33_combout\,
	asdata => \ucr1|Add1~16_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(9));

-- Location: LCCOMB_X31_Y24_N20
\ucr1|c_int[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[10]~35_combout\ = (\ucr1|c_int\(10) & ((GND) # (!\ucr1|c_int[9]~34\))) # (!\ucr1|c_int\(10) & (\ucr1|c_int[9]~34\ $ (GND)))
-- \ucr1|c_int[10]~36\ = CARRY((\ucr1|c_int\(10)) # (!\ucr1|c_int[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(10),
	datad => VCC,
	cin => \ucr1|c_int[9]~34\,
	combout => \ucr1|c_int[10]~35_combout\,
	cout => \ucr1|c_int[10]~36\);

-- Location: LCCOMB_X32_Y24_N18
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

-- Location: FF_X31_Y24_N21
\ucr1|c_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[10]~35_combout\,
	asdata => \ucr1|Add1~18_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(10));

-- Location: LCCOMB_X32_Y22_N10
\ucr1|c_int[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[10]~43_combout\ = (\ucr1|c_int\(3)) # ((\ucr1|c_int\(2) & (\ucr5|c_int\(0) & \ucr1|c_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(2),
	datab => \ucr5|c_int\(0),
	datac => \ucr1|c_int\(1),
	datad => \ucr1|c_int\(3),
	combout => \ucr1|c_int[10]~43_combout\);

-- Location: LCCOMB_X32_Y22_N16
\ucr1|c_int[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[10]~42_combout\ = (\ucr1|c_int\(5) & \ucr1|c_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(5),
	datad => \ucr1|c_int\(4),
	combout => \ucr1|c_int[10]~42_combout\);

-- Location: LCCOMB_X32_Y22_N28
\ucr1|c_int[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[10]~44_combout\ = (\ucr1|c_int\(6)) # ((\ucr1|c_int\(7)) # ((\ucr1|c_int[10]~43_combout\ & \ucr1|c_int[10]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int[10]~43_combout\,
	datab => \ucr1|c_int\(6),
	datac => \ucr1|c_int\(7),
	datad => \ucr1|c_int[10]~42_combout\,
	combout => \ucr1|c_int[10]~44_combout\);

-- Location: LCCOMB_X32_Y22_N30
\ucr1|c_int[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[10]~45_combout\ = (\ucr1|c_int\(10) & ((\ucr1|c_int\(9)) # ((\ucr1|c_int\(8) & \ucr1|c_int[10]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(10),
	datab => \ucr1|c_int\(8),
	datac => \ucr1|c_int\(9),
	datad => \ucr1|c_int[10]~44_combout\,
	combout => \ucr1|c_int[10]~45_combout\);

-- Location: LCCOMB_X31_Y24_N22
\ucr1|c_int[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[11]~37_combout\ = (\ucr1|c_int\(11) & (\ucr1|c_int[10]~36\ & VCC)) # (!\ucr1|c_int\(11) & (!\ucr1|c_int[10]~36\))
-- \ucr1|c_int[11]~38\ = CARRY((!\ucr1|c_int\(11) & !\ucr1|c_int[10]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(11),
	datad => VCC,
	cin => \ucr1|c_int[10]~36\,
	combout => \ucr1|c_int[11]~37_combout\,
	cout => \ucr1|c_int[11]~38\);

-- Location: LCCOMB_X32_Y24_N20
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

-- Location: FF_X31_Y24_N23
\ucr1|c_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[11]~37_combout\,
	asdata => \ucr1|Add1~20_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(11));

-- Location: LCCOMB_X31_Y24_N24
\ucr1|c_int[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[12]~47_combout\ = (\ucr1|c_int\(12) & ((GND) # (!\ucr1|c_int[11]~38\))) # (!\ucr1|c_int\(12) & (\ucr1|c_int[11]~38\ $ (GND)))
-- \ucr1|c_int[12]~48\ = CARRY((\ucr1|c_int\(12)) # (!\ucr1|c_int[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(12),
	datad => VCC,
	cin => \ucr1|c_int[11]~38\,
	combout => \ucr1|c_int[12]~47_combout\,
	cout => \ucr1|c_int[12]~48\);

-- Location: LCCOMB_X32_Y24_N22
\ucr1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|Add1~22_combout\ = (\ucr1|c_int\(12) & (!\ucr1|Add1~21\)) # (!\ucr1|c_int\(12) & ((\ucr1|Add1~21\) # (GND)))
-- \ucr1|Add1~23\ = CARRY((!\ucr1|Add1~21\) # (!\ucr1|c_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(12),
	datad => VCC,
	cin => \ucr1|Add1~21\,
	combout => \ucr1|Add1~22_combout\,
	cout => \ucr1|Add1~23\);

-- Location: FF_X31_Y24_N25
\ucr1|c_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[12]~47_combout\,
	asdata => \ucr1|Add1~22_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(12));

-- Location: LCCOMB_X31_Y24_N26
\ucr1|c_int[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[13]~49_combout\ = (\ucr1|c_int\(13) & (\ucr1|c_int[12]~48\ & VCC)) # (!\ucr1|c_int\(13) & (!\ucr1|c_int[12]~48\))
-- \ucr1|c_int[13]~50\ = CARRY((!\ucr1|c_int\(13) & !\ucr1|c_int[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(13),
	datad => VCC,
	cin => \ucr1|c_int[12]~48\,
	combout => \ucr1|c_int[13]~49_combout\,
	cout => \ucr1|c_int[13]~50\);

-- Location: LCCOMB_X32_Y24_N24
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

-- Location: FF_X31_Y24_N27
\ucr1|c_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[13]~49_combout\,
	asdata => \ucr1|Add1~24_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(13));

-- Location: LCCOMB_X31_Y24_N28
\ucr1|c_int[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[14]~51_combout\ = (\ucr1|c_int\(14) & ((GND) # (!\ucr1|c_int[13]~50\))) # (!\ucr1|c_int\(14) & (\ucr1|c_int[13]~50\ $ (GND)))
-- \ucr1|c_int[14]~52\ = CARRY((\ucr1|c_int\(14)) # (!\ucr1|c_int[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(14),
	datad => VCC,
	cin => \ucr1|c_int[13]~50\,
	combout => \ucr1|c_int[14]~51_combout\,
	cout => \ucr1|c_int[14]~52\);

-- Location: LCCOMB_X32_Y24_N26
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

-- Location: FF_X31_Y24_N29
\ucr1|c_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[14]~51_combout\,
	asdata => \ucr1|Add1~26_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(14));

-- Location: LCCOMB_X31_Y24_N30
\ucr1|c_int[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[15]~53_combout\ = \ucr1|c_int\(15) $ (!\ucr1|c_int[14]~52\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(15),
	cin => \ucr1|c_int[14]~52\,
	combout => \ucr1|c_int[15]~53_combout\);

-- Location: LCCOMB_X32_Y24_N28
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

-- Location: FF_X31_Y24_N31
\ucr1|c_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[15]~53_combout\,
	asdata => \ucr1|Add1~28_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(15));

-- Location: LCCOMB_X32_Y22_N20
\ucr1|c_int[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[10]~40_combout\ = (\ucr1|c_int\(10)) # ((\ucr1|c_int\(8)) # (\ucr1|c_int\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(10),
	datab => \ucr1|c_int\(8),
	datac => \ucr1|c_int\(9),
	combout => \ucr1|c_int[10]~40_combout\);

-- Location: LCCOMB_X32_Y22_N26
\ucr1|c_int[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[10]~39_combout\ = (\ucr1|c_int\(2)) # ((\ucr5|c_int\(0)) # ((\ucr1|c_int\(1)) # (\ucr1|c_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(2),
	datab => \ucr5|c_int\(0),
	datac => \ucr1|c_int\(1),
	datad => \ucr1|c_int\(3),
	combout => \ucr1|c_int[10]~39_combout\);

-- Location: FF_X32_Y22_N1
\ucr1|dir_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[10]~46_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|dir_int~q\);

-- Location: LCCOMB_X32_Y22_N14
\ucr1|c_int[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[10]~41_combout\ = (\ucr1|dir_int~q\ & (((\ucr1|c_int[10]~40_combout\) # (\ucr1|c_int[10]~39_combout\)) # (!\PWM1_FA01|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|LessThan0~3_combout\,
	datab => \ucr1|c_int[10]~40_combout\,
	datac => \ucr1|c_int[10]~39_combout\,
	datad => \ucr1|dir_int~q\,
	combout => \ucr1|c_int[10]~41_combout\);

-- Location: LCCOMB_X32_Y24_N30
\PWM1_FA01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan0~0_combout\ = (!\ucr1|c_int\(14) & (!\ucr1|c_int\(12) & (!\ucr1|c_int\(13) & !\ucr1|c_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(14),
	datab => \ucr1|c_int\(12),
	datac => \ucr1|c_int\(13),
	datad => \ucr1|c_int\(11),
	combout => \PWM1_FA01|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y22_N0
\ucr1|c_int[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[10]~46_combout\ = (\ucr1|c_int[10]~45_combout\) # ((\ucr1|c_int\(15)) # ((\ucr1|c_int[10]~41_combout\) # (!\PWM1_FA01|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int[10]~45_combout\,
	datab => \ucr1|c_int\(15),
	datac => \ucr1|c_int[10]~41_combout\,
	datad => \PWM1_FA01|LessThan0~0_combout\,
	combout => \ucr1|c_int[10]~46_combout\);

-- Location: FF_X31_Y24_N3
\ucr1|c_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[1]~17_combout\,
	asdata => \ucr1|Add1~0_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(1));

-- Location: LCCOMB_X31_Y24_N4
\ucr1|c_int[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[2]~19_combout\ = (\ucr1|c_int\(2) & ((GND) # (!\ucr1|c_int[1]~18\))) # (!\ucr1|c_int\(2) & (\ucr1|c_int[1]~18\ $ (GND)))
-- \ucr1|c_int[2]~20\ = CARRY((\ucr1|c_int\(2)) # (!\ucr1|c_int[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr1|c_int\(2),
	datad => VCC,
	cin => \ucr1|c_int[1]~18\,
	combout => \ucr1|c_int[2]~19_combout\,
	cout => \ucr1|c_int[2]~20\);

-- Location: FF_X31_Y24_N5
\ucr1|c_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[2]~19_combout\,
	asdata => \ucr1|Add1~2_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(2));

-- Location: LCCOMB_X31_Y24_N6
\ucr1|c_int[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr1|c_int[3]~21_combout\ = (\ucr1|c_int\(3) & (\ucr1|c_int[2]~20\ & VCC)) # (!\ucr1|c_int\(3) & (!\ucr1|c_int[2]~20\))
-- \ucr1|c_int[3]~22\ = CARRY((!\ucr1|c_int\(3) & !\ucr1|c_int[2]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(3),
	datad => VCC,
	cin => \ucr1|c_int[2]~20\,
	combout => \ucr1|c_int[3]~21_combout\,
	cout => \ucr1|c_int[3]~22\);

-- Location: FF_X31_Y24_N7
\ucr1|c_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[3]~21_combout\,
	asdata => \ucr1|Add1~4_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(3));

-- Location: FF_X31_Y24_N9
\ucr1|c_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr1|c_int[4]~23_combout\,
	asdata => \ucr1|Add1~6_combout\,
	clrn => \rst~q\,
	sload => \ucr1|ALT_INV_c_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr1|c_int\(4));

-- Location: LCCOMB_X32_Y22_N6
\PWM1_FA01|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan0~3_combout\ = (!\ucr1|c_int\(4) & (!\ucr1|c_int\(5) & (!\ucr1|c_int\(7) & !\ucr1|c_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(4),
	datab => \ucr1|c_int\(5),
	datac => \ucr1|c_int\(7),
	datad => \ucr1|c_int\(6),
	combout => \PWM1_FA01|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y22_N4
\PWM1_FA01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan0~2_combout\ = ((!\ucr1|c_int\(2) & ((!\ucr1|c_int\(1)) # (!\ucr5|c_int\(0))))) # (!\ucr1|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(2),
	datab => \ucr5|c_int\(0),
	datac => \ucr1|c_int\(1),
	datad => \ucr1|c_int\(3),
	combout => \PWM1_FA01|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y22_N2
\PWM1_FA01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan0~1_combout\ = (!\ucr1|c_int\(9) & (!\ucr1|c_int\(15) & (!\ucr1|c_int\(10) & \PWM1_FA01|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(9),
	datab => \ucr1|c_int\(15),
	datac => \ucr1|c_int\(10),
	datad => \PWM1_FA01|LessThan0~0_combout\,
	combout => \PWM1_FA01|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y22_N18
\PWM1_FA01|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan0~4_combout\ = ((\ucr1|c_int\(8) & ((!\PWM1_FA01|LessThan0~2_combout\) # (!\PWM1_FA01|LessThan0~3_combout\)))) # (!\PWM1_FA01|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|LessThan0~3_combout\,
	datab => \PWM1_FA01|LessThan0~2_combout\,
	datac => \ucr1|c_int\(8),
	datad => \PWM1_FA01|LessThan0~1_combout\,
	combout => \PWM1_FA01|LessThan0~4_combout\);

-- Location: FF_X32_Y22_N19
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

-- Location: LCCOMB_X32_Y21_N30
\PWM1_FA01|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~17_combout\ = (\PWM1_FA01|Add0~11_combout\ & \PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|Add0~11_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add0~17_combout\);

-- Location: FF_X32_Y21_N31
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

-- Location: LCCOMB_X32_Y21_N4
\PWM1_FA01|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan1~0_combout\ = (((!\PWM1_FA01|var_Dead_Count1\(1)) # (!\PWM1_FA01|var_Dead_Count1\(0))) # (!\PWM1_FA01|var_Dead_Count1\(3))) # (!\PWM1_FA01|var_Dead_Count1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count1\(2),
	datab => \PWM1_FA01|var_Dead_Count1\(3),
	datac => \PWM1_FA01|var_Dead_Count1\(0),
	datad => \PWM1_FA01|var_Dead_Count1\(1),
	combout => \PWM1_FA01|LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y21_N18
\PWM1_FA01|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~13_combout\ = \PWM1_FA01|var_Dead_Count1\(6) $ (!\PWM1_FA01|Add0~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count1\(6),
	cin => \PWM1_FA01|Add0~12\,
	combout => \PWM1_FA01|Add0~13_combout\);

-- Location: LCCOMB_X32_Y21_N24
\PWM1_FA01|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~15_combout\ = (\PWM1_FA01|Add0~13_combout\ & \PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|Add0~13_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add0~15_combout\);

-- Location: FF_X32_Y21_N25
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

-- Location: LCCOMB_X32_Y21_N2
\PWM1_FA01|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan1~1_combout\ = (!\PWM1_FA01|var_Dead_Count1\(5) & (\PWM1_FA01|LessThan1~0_combout\ & (!\PWM1_FA01|var_Dead_Count1\(6) & !\PWM1_FA01|var_Dead_Count1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count1\(5),
	datab => \PWM1_FA01|LessThan1~0_combout\,
	datac => \PWM1_FA01|var_Dead_Count1\(6),
	datad => \PWM1_FA01|var_Dead_Count1\(4),
	combout => \PWM1_FA01|LessThan1~1_combout\);

-- Location: LCCOMB_X32_Y21_N6
\PWM1_FA01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~0_combout\ = (\PWM1_FA01|var_Dead_Count1\(0) & (\PWM1_FA01|LessThan1~1_combout\ $ (VCC))) # (!\PWM1_FA01|var_Dead_Count1\(0) & (\PWM1_FA01|LessThan1~1_combout\ & VCC))
-- \PWM1_FA01|Add0~1\ = CARRY((\PWM1_FA01|var_Dead_Count1\(0) & \PWM1_FA01|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count1\(0),
	datab => \PWM1_FA01|LessThan1~1_combout\,
	datad => VCC,
	combout => \PWM1_FA01|Add0~0_combout\,
	cout => \PWM1_FA01|Add0~1\);

-- Location: LCCOMB_X31_Y21_N16
\PWM1_FA01|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~18_combout\ = (\PWM1_FA01|Add0~0_combout\ & \PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Add0~0_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add0~18_combout\);

-- Location: FF_X31_Y21_N17
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

-- Location: LCCOMB_X32_Y21_N8
\PWM1_FA01|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~2_combout\ = (\PWM1_FA01|var_Dead_Count1\(1) & (!\PWM1_FA01|Add0~1\)) # (!\PWM1_FA01|var_Dead_Count1\(1) & ((\PWM1_FA01|Add0~1\) # (GND)))
-- \PWM1_FA01|Add0~3\ = CARRY((!\PWM1_FA01|Add0~1\) # (!\PWM1_FA01|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM1_FA01|Add0~1\,
	combout => \PWM1_FA01|Add0~2_combout\,
	cout => \PWM1_FA01|Add0~3\);

-- Location: LCCOMB_X32_Y22_N12
\PWM1_FA01|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~19_combout\ = (\PWM1_FA01|Add0~2_combout\ & \PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA01|Add0~2_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add0~19_combout\);

-- Location: FF_X32_Y22_N13
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

-- Location: LCCOMB_X32_Y21_N10
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

-- Location: LCCOMB_X31_Y21_N2
\PWM1_FA01|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~20_combout\ = (\PWM1_FA01|Add0~4_combout\ & \PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA01|Add0~4_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add0~20_combout\);

-- Location: FF_X31_Y21_N3
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

-- Location: LCCOMB_X32_Y21_N12
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

-- Location: LCCOMB_X32_Y21_N26
\PWM1_FA01|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add0~8_combout\ = (\PWM1_FA01|Add0~6_combout\ & \PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Add0~6_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add0~8_combout\);

-- Location: FF_X32_Y21_N27
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

-- Location: LCCOMB_X32_Y21_N20
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

-- Location: LCCOMB_X32_Y21_N22
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

-- Location: LCCOMB_X32_Y21_N28
\PWM1_FA01|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Equal0~0_combout\ = (\PWM1_FA01|Add0~4_combout\ & (\PWM1_FA01|Add0~0_combout\ & (\PWM1_FA01|Add0~2_combout\ & \PWM1_FA01|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Add0~4_combout\,
	datab => \PWM1_FA01|Add0~0_combout\,
	datac => \PWM1_FA01|Add0~2_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y21_N0
\PWM1_FA01|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|port_PWM01~0_combout\ = (\PWM1_FA01|Equal0~1_combout\ & ((\PWM1_FA01|Equal0~0_combout\) # ((\PWM1_FA01|port_PWM01~q\ & \PWM1_FA01|comp_out~q\)))) # (!\PWM1_FA01|Equal0~1_combout\ & (((\PWM1_FA01|port_PWM01~q\ & \PWM1_FA01|comp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Equal0~1_combout\,
	datab => \PWM1_FA01|Equal0~0_combout\,
	datac => \PWM1_FA01|port_PWM01~q\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|port_PWM01~0_combout\);

-- Location: FF_X32_Y21_N1
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

-- Location: LCCOMB_X23_Y21_N0
\ucr6|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~0_combout\ = \ucr6|c_int\(0) $ (GND)
-- \ucr6|Add2~1\ = CARRY(!\ucr6|c_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr6|c_int\(0),
	datad => VCC,
	combout => \ucr6|Add2~0_combout\,
	cout => \ucr6|Add2~1\);

-- Location: LCCOMB_X23_Y23_N0
\ucr6|c_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[0]~8_combout\ = !\ucr6|Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr6|Add2~0_combout\,
	combout => \ucr6|c_int[0]~8_combout\);

-- Location: FF_X23_Y23_N1
\ucr6|c_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|c_int[0]~8_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(0));

-- Location: LCCOMB_X26_Y19_N0
\ucr3|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~1_cout\ = CARRY(!\ucr6|c_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr6|c_int\(0),
	datad => VCC,
	cout => \ucr3|Add2~1_cout\);

-- Location: LCCOMB_X26_Y19_N2
\ucr3|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~2_combout\ = (\ucr3|c_int\(1) & (\ucr3|Add2~1_cout\ & VCC)) # (!\ucr3|c_int\(1) & (!\ucr3|Add2~1_cout\))
-- \ucr3|Add2~3\ = CARRY((!\ucr3|c_int\(1) & !\ucr3|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|c_int\(1),
	datad => VCC,
	cin => \ucr3|Add2~1_cout\,
	combout => \ucr3|Add2~2_combout\,
	cout => \ucr3|Add2~3\);

-- Location: LCCOMB_X28_Y19_N0
\ucr3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~0_combout\ = (\ucr3|c_int\(1) & (\ucr6|c_int\(0) $ (GND))) # (!\ucr3|c_int\(1) & (!\ucr6|c_int\(0) & VCC))
-- \ucr3|Add1~1\ = CARRY((\ucr3|c_int\(1) & !\ucr6|c_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(1),
	datab => \ucr6|c_int\(0),
	datad => VCC,
	combout => \ucr3|Add1~0_combout\,
	cout => \ucr3|Add1~1\);

-- Location: LCCOMB_X29_Y19_N6
\ucr3|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~42_combout\ = (\ucr3|c_int[15]~7_combout\ & ((\ucr3|Add1~0_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (\ucr3|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int[15]~7_combout\,
	datab => \ucr3|Add2~2_combout\,
	datac => \ucr3|Add1~0_combout\,
	combout => \ucr3|Add2~42_combout\);

-- Location: FF_X29_Y19_N7
\ucr3|c_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~42_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(1));

-- Location: LCCOMB_X26_Y19_N4
\ucr3|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~4_combout\ = (\ucr3|c_int\(2) & (\ucr3|Add2~3\ $ (GND))) # (!\ucr3|c_int\(2) & ((GND) # (!\ucr3|Add2~3\)))
-- \ucr3|Add2~5\ = CARRY((!\ucr3|Add2~3\) # (!\ucr3|c_int\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(2),
	datad => VCC,
	cin => \ucr3|Add2~3\,
	combout => \ucr3|Add2~4_combout\,
	cout => \ucr3|Add2~5\);

-- Location: LCCOMB_X28_Y19_N2
\ucr3|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~2_combout\ = (\ucr3|c_int\(2) & ((\ucr3|Add1~1\) # (GND))) # (!\ucr3|c_int\(2) & (!\ucr3|Add1~1\))
-- \ucr3|Add1~3\ = CARRY((\ucr3|c_int\(2)) # (!\ucr3|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(2),
	datad => VCC,
	cin => \ucr3|Add1~1\,
	combout => \ucr3|Add1~2_combout\,
	cout => \ucr3|Add1~3\);

-- Location: LCCOMB_X29_Y19_N20
\ucr3|Add2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~41_combout\ = (\ucr3|c_int[15]~7_combout\ & ((!\ucr3|Add1~2_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (!\ucr3|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int[15]~7_combout\,
	datac => \ucr3|Add2~4_combout\,
	datad => \ucr3|Add1~2_combout\,
	combout => \ucr3|Add2~41_combout\);

-- Location: FF_X29_Y19_N21
\ucr3|c_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~41_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(2));

-- Location: LCCOMB_X26_Y19_N6
\ucr3|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~6_combout\ = (\ucr3|c_int\(3) & (!\ucr3|Add2~5\)) # (!\ucr3|c_int\(3) & (\ucr3|Add2~5\ & VCC))
-- \ucr3|Add2~7\ = CARRY((\ucr3|c_int\(3) & !\ucr3|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(3),
	datad => VCC,
	cin => \ucr3|Add2~5\,
	combout => \ucr3|Add2~6_combout\,
	cout => \ucr3|Add2~7\);

-- Location: LCCOMB_X28_Y19_N4
\ucr3|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~4_combout\ = (\ucr3|c_int\(3) & (!\ucr3|Add1~3\ & VCC)) # (!\ucr3|c_int\(3) & (\ucr3|Add1~3\ $ (GND)))
-- \ucr3|Add1~5\ = CARRY((!\ucr3|c_int\(3) & !\ucr3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(3),
	datad => VCC,
	cin => \ucr3|Add1~3\,
	combout => \ucr3|Add1~4_combout\,
	cout => \ucr3|Add1~5\);

-- Location: LCCOMB_X29_Y19_N2
\ucr3|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~40_combout\ = (\ucr3|c_int[15]~7_combout\ & ((!\ucr3|Add1~4_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (!\ucr3|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|Add2~6_combout\,
	datab => \ucr3|Add1~4_combout\,
	datac => \ucr3|c_int[15]~7_combout\,
	combout => \ucr3|Add2~40_combout\);

-- Location: FF_X29_Y19_N3
\ucr3|c_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~40_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(3));

-- Location: LCCOMB_X28_Y19_N6
\ucr3|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~6_combout\ = (\ucr3|c_int\(4) & ((\ucr3|Add1~5\) # (GND))) # (!\ucr3|c_int\(4) & (!\ucr3|Add1~5\))
-- \ucr3|Add1~7\ = CARRY((\ucr3|c_int\(4)) # (!\ucr3|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(4),
	datad => VCC,
	cin => \ucr3|Add1~5\,
	combout => \ucr3|Add1~6_combout\,
	cout => \ucr3|Add1~7\);

-- Location: LCCOMB_X26_Y19_N8
\ucr3|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~8_combout\ = (\ucr3|c_int\(4) & (\ucr3|Add2~7\ $ (GND))) # (!\ucr3|c_int\(4) & ((GND) # (!\ucr3|Add2~7\)))
-- \ucr3|Add2~9\ = CARRY((!\ucr3|Add2~7\) # (!\ucr3|c_int\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(4),
	datad => VCC,
	cin => \ucr3|Add2~7\,
	combout => \ucr3|Add2~8_combout\,
	cout => \ucr3|Add2~9\);

-- Location: LCCOMB_X29_Y19_N12
\ucr3|Add2~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~45_combout\ = (\ucr3|c_int[15]~7_combout\ & (!\ucr3|Add1~6_combout\)) # (!\ucr3|c_int[15]~7_combout\ & ((!\ucr3|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|Add1~6_combout\,
	datac => \ucr3|c_int[15]~7_combout\,
	datad => \ucr3|Add2~8_combout\,
	combout => \ucr3|Add2~45_combout\);

-- Location: FF_X29_Y19_N13
\ucr3|c_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~45_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(4));

-- Location: LCCOMB_X26_Y19_N10
\ucr3|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~10_combout\ = (\ucr3|c_int\(5) & (!\ucr3|Add2~9\)) # (!\ucr3|c_int\(5) & (\ucr3|Add2~9\ & VCC))
-- \ucr3|Add2~11\ = CARRY((\ucr3|c_int\(5) & !\ucr3|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(5),
	datad => VCC,
	cin => \ucr3|Add2~9\,
	combout => \ucr3|Add2~10_combout\,
	cout => \ucr3|Add2~11\);

-- Location: LCCOMB_X28_Y19_N8
\ucr3|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~8_combout\ = (\ucr3|c_int\(5) & (!\ucr3|Add1~7\ & VCC)) # (!\ucr3|c_int\(5) & (\ucr3|Add1~7\ $ (GND)))
-- \ucr3|Add1~9\ = CARRY((!\ucr3|c_int\(5) & !\ucr3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|c_int\(5),
	datad => VCC,
	cin => \ucr3|Add1~7\,
	combout => \ucr3|Add1~8_combout\,
	cout => \ucr3|Add1~9\);

-- Location: LCCOMB_X29_Y19_N10
\ucr3|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~44_combout\ = (\ucr3|c_int[15]~7_combout\ & ((!\ucr3|Add1~8_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (!\ucr3|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|Add2~10_combout\,
	datac => \ucr3|c_int[15]~7_combout\,
	datad => \ucr3|Add1~8_combout\,
	combout => \ucr3|Add2~44_combout\);

-- Location: FF_X29_Y19_N11
\ucr3|c_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~44_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(5));

-- Location: LCCOMB_X26_Y19_N12
\ucr3|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~12_combout\ = (\ucr3|c_int\(6) & ((GND) # (!\ucr3|Add2~11\))) # (!\ucr3|c_int\(6) & (\ucr3|Add2~11\ $ (GND)))
-- \ucr3|Add2~13\ = CARRY((\ucr3|c_int\(6)) # (!\ucr3|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(6),
	datad => VCC,
	cin => \ucr3|Add2~11\,
	combout => \ucr3|Add2~12_combout\,
	cout => \ucr3|Add2~13\);

-- Location: LCCOMB_X28_Y19_N10
\ucr3|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~10_combout\ = (\ucr3|c_int\(6) & (!\ucr3|Add1~9\)) # (!\ucr3|c_int\(6) & ((\ucr3|Add1~9\) # (GND)))
-- \ucr3|Add1~11\ = CARRY((!\ucr3|Add1~9\) # (!\ucr3|c_int\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(6),
	datad => VCC,
	cin => \ucr3|Add1~9\,
	combout => \ucr3|Add1~10_combout\,
	cout => \ucr3|Add1~11\);

-- Location: LCCOMB_X29_Y19_N14
\ucr3|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~46_combout\ = (\ucr3|c_int[15]~7_combout\ & ((\ucr3|Add1~10_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (\ucr3|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int[15]~7_combout\,
	datac => \ucr3|Add2~12_combout\,
	datad => \ucr3|Add1~10_combout\,
	combout => \ucr3|Add2~46_combout\);

-- Location: FF_X29_Y19_N15
\ucr3|c_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~46_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(6));

-- Location: LCCOMB_X26_Y19_N14
\ucr3|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~14_combout\ = (\ucr3|c_int\(7) & (!\ucr3|Add2~13\)) # (!\ucr3|c_int\(7) & (\ucr3|Add2~13\ & VCC))
-- \ucr3|Add2~15\ = CARRY((\ucr3|c_int\(7) & !\ucr3|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|c_int\(7),
	datad => VCC,
	cin => \ucr3|Add2~13\,
	combout => \ucr3|Add2~14_combout\,
	cout => \ucr3|Add2~15\);

-- Location: LCCOMB_X28_Y19_N12
\ucr3|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~12_combout\ = (\ucr3|c_int\(7) & (!\ucr3|Add1~11\ & VCC)) # (!\ucr3|c_int\(7) & (\ucr3|Add1~11\ $ (GND)))
-- \ucr3|Add1~13\ = CARRY((!\ucr3|c_int\(7) & !\ucr3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(7),
	datad => VCC,
	cin => \ucr3|Add1~11\,
	combout => \ucr3|Add1~12_combout\,
	cout => \ucr3|Add1~13\);

-- Location: LCCOMB_X29_Y19_N0
\ucr3|Add2~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~43_combout\ = (\ucr3|c_int[15]~7_combout\ & ((!\ucr3|Add1~12_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (!\ucr3|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|Add2~14_combout\,
	datac => \ucr3|c_int[15]~7_combout\,
	datad => \ucr3|Add1~12_combout\,
	combout => \ucr3|Add2~43_combout\);

-- Location: FF_X29_Y19_N1
\ucr3|c_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~43_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(7));

-- Location: LCCOMB_X26_Y20_N16
\PWM1_FA02|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|LessThan0~1_combout\ = (\ucr3|c_int\(4) & (\ucr3|c_int\(5) & (!\ucr3|c_int\(6) & \ucr3|c_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(4),
	datab => \ucr3|c_int\(5),
	datac => \ucr3|c_int\(6),
	datad => \ucr3|c_int\(7),
	combout => \PWM1_FA02|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y19_N26
\ucr3|c_int[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|c_int[15]~1_combout\ = (!\ucr3|c_int\(5) & !\ucr3|c_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(5),
	datac => \ucr3|c_int\(4),
	combout => \ucr3|c_int[15]~1_combout\);

-- Location: LCCOMB_X29_Y19_N28
\ucr3|c_int[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|c_int[15]~2_combout\ = ((\ucr3|c_int\(1) & (!\ucr3|c_int\(2) & !\ucr6|c_int\(0)))) # (!\ucr3|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(1),
	datab => \ucr3|c_int\(3),
	datac => \ucr3|c_int\(2),
	datad => \ucr6|c_int\(0),
	combout => \ucr3|c_int[15]~2_combout\);

-- Location: LCCOMB_X29_Y19_N30
\ucr3|c_int[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|c_int[15]~3_combout\ = (\ucr3|c_int\(6)) # (((\ucr3|c_int[15]~1_combout\ & \ucr3|c_int[15]~2_combout\)) # (!\ucr3|c_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int[15]~1_combout\,
	datab => \ucr3|c_int[15]~2_combout\,
	datac => \ucr3|c_int\(6),
	datad => \ucr3|c_int\(7),
	combout => \ucr3|c_int[15]~3_combout\);

-- Location: LCCOMB_X26_Y19_N16
\ucr3|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~16_combout\ = (\ucr3|c_int\(8) & (\ucr3|Add2~15\ $ (GND))) # (!\ucr3|c_int\(8) & ((GND) # (!\ucr3|Add2~15\)))
-- \ucr3|Add2~17\ = CARRY((!\ucr3|Add2~15\) # (!\ucr3|c_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|c_int\(8),
	datad => VCC,
	cin => \ucr3|Add2~15\,
	combout => \ucr3|Add2~16_combout\,
	cout => \ucr3|Add2~17\);

-- Location: LCCOMB_X26_Y19_N18
\ucr3|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~18_combout\ = (\ucr3|c_int\(9) & (\ucr3|Add2~17\ & VCC)) # (!\ucr3|c_int\(9) & (!\ucr3|Add2~17\))
-- \ucr3|Add2~19\ = CARRY((!\ucr3|c_int\(9) & !\ucr3|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|c_int\(9),
	datad => VCC,
	cin => \ucr3|Add2~17\,
	combout => \ucr3|Add2~18_combout\,
	cout => \ucr3|Add2~19\);

-- Location: LCCOMB_X28_Y19_N14
\ucr3|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~14_combout\ = (\ucr3|c_int\(8) & ((\ucr3|Add1~13\) # (GND))) # (!\ucr3|c_int\(8) & (!\ucr3|Add1~13\))
-- \ucr3|Add1~15\ = CARRY((\ucr3|c_int\(8)) # (!\ucr3|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(8),
	datad => VCC,
	cin => \ucr3|Add1~13\,
	combout => \ucr3|Add1~14_combout\,
	cout => \ucr3|Add1~15\);

-- Location: LCCOMB_X28_Y19_N16
\ucr3|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~16_combout\ = (\ucr3|c_int\(9) & (\ucr3|Add1~15\ $ (GND))) # (!\ucr3|c_int\(9) & (!\ucr3|Add1~15\ & VCC))
-- \ucr3|Add1~17\ = CARRY((\ucr3|c_int\(9) & !\ucr3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(9),
	datad => VCC,
	cin => \ucr3|Add1~15\,
	combout => \ucr3|Add1~16_combout\,
	cout => \ucr3|Add1~17\);

-- Location: LCCOMB_X27_Y19_N12
\ucr3|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~36_combout\ = (\ucr3|c_int[15]~7_combout\ & ((\ucr3|Add1~16_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (\ucr3|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|Add2~18_combout\,
	datac => \ucr3|c_int[15]~7_combout\,
	datad => \ucr3|Add1~16_combout\,
	combout => \ucr3|Add2~36_combout\);

-- Location: FF_X27_Y19_N13
\ucr3|c_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~36_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(9));

-- Location: LCCOMB_X26_Y19_N20
\ucr3|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~20_combout\ = (\ucr3|c_int\(10) & ((GND) # (!\ucr3|Add2~19\))) # (!\ucr3|c_int\(10) & (\ucr3|Add2~19\ $ (GND)))
-- \ucr3|Add2~21\ = CARRY((\ucr3|c_int\(10)) # (!\ucr3|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(10),
	datad => VCC,
	cin => \ucr3|Add2~19\,
	combout => \ucr3|Add2~20_combout\,
	cout => \ucr3|Add2~21\);

-- Location: LCCOMB_X28_Y19_N18
\ucr3|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~18_combout\ = (\ucr3|c_int\(10) & (!\ucr3|Add1~17\)) # (!\ucr3|c_int\(10) & ((\ucr3|Add1~17\) # (GND)))
-- \ucr3|Add1~19\ = CARRY((!\ucr3|Add1~17\) # (!\ucr3|c_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|c_int\(10),
	datad => VCC,
	cin => \ucr3|Add1~17\,
	combout => \ucr3|Add1~18_combout\,
	cout => \ucr3|Add1~19\);

-- Location: LCCOMB_X29_Y19_N24
\ucr3|Add2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~37_combout\ = (\ucr3|c_int[15]~7_combout\ & ((\ucr3|Add1~18_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (\ucr3|Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int[15]~7_combout\,
	datac => \ucr3|Add2~20_combout\,
	datad => \ucr3|Add1~18_combout\,
	combout => \ucr3|Add2~37_combout\);

-- Location: FF_X29_Y19_N25
\ucr3|c_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~37_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(10));

-- Location: LCCOMB_X26_Y19_N22
\ucr3|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~22_combout\ = (\ucr3|c_int\(11) & (\ucr3|Add2~21\ & VCC)) # (!\ucr3|c_int\(11) & (!\ucr3|Add2~21\))
-- \ucr3|Add2~23\ = CARRY((!\ucr3|c_int\(11) & !\ucr3|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(11),
	datad => VCC,
	cin => \ucr3|Add2~21\,
	combout => \ucr3|Add2~22_combout\,
	cout => \ucr3|Add2~23\);

-- Location: LCCOMB_X28_Y19_N20
\ucr3|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~20_combout\ = (\ucr3|c_int\(11) & (\ucr3|Add1~19\ $ (GND))) # (!\ucr3|c_int\(11) & (!\ucr3|Add1~19\ & VCC))
-- \ucr3|Add1~21\ = CARRY((\ucr3|c_int\(11) & !\ucr3|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(11),
	datad => VCC,
	cin => \ucr3|Add1~19\,
	combout => \ucr3|Add1~20_combout\,
	cout => \ucr3|Add1~21\);

-- Location: LCCOMB_X28_Y19_N30
\ucr3|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~38_combout\ = (\ucr3|c_int[15]~7_combout\ & ((\ucr3|Add1~20_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (\ucr3|Add2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|Add2~22_combout\,
	datac => \ucr3|c_int[15]~7_combout\,
	datad => \ucr3|Add1~20_combout\,
	combout => \ucr3|Add2~38_combout\);

-- Location: FF_X28_Y19_N31
\ucr3|c_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~38_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(11));

-- Location: LCCOMB_X26_Y19_N24
\ucr3|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~24_combout\ = (\ucr3|c_int\(12) & ((GND) # (!\ucr3|Add2~23\))) # (!\ucr3|c_int\(12) & (\ucr3|Add2~23\ $ (GND)))
-- \ucr3|Add2~25\ = CARRY((\ucr3|c_int\(12)) # (!\ucr3|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|c_int\(12),
	datad => VCC,
	cin => \ucr3|Add2~23\,
	combout => \ucr3|Add2~24_combout\,
	cout => \ucr3|Add2~25\);

-- Location: LCCOMB_X28_Y19_N22
\ucr3|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~22_combout\ = (\ucr3|c_int\(12) & (!\ucr3|Add1~21\)) # (!\ucr3|c_int\(12) & ((\ucr3|Add1~21\) # (GND)))
-- \ucr3|Add1~23\ = CARRY((!\ucr3|Add1~21\) # (!\ucr3|c_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|c_int\(12),
	datad => VCC,
	cin => \ucr3|Add1~21\,
	combout => \ucr3|Add1~22_combout\,
	cout => \ucr3|Add1~23\);

-- Location: LCCOMB_X27_Y19_N0
\ucr3|Add2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~35_combout\ = (\ucr3|c_int[15]~7_combout\ & ((\ucr3|Add1~22_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (\ucr3|Add2~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|Add2~24_combout\,
	datac => \ucr3|c_int[15]~7_combout\,
	datad => \ucr3|Add1~22_combout\,
	combout => \ucr3|Add2~35_combout\);

-- Location: FF_X27_Y19_N1
\ucr3|c_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~35_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(12));

-- Location: LCCOMB_X26_Y19_N26
\ucr3|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~26_combout\ = (\ucr3|c_int\(13) & (\ucr3|Add2~25\ & VCC)) # (!\ucr3|c_int\(13) & (!\ucr3|Add2~25\))
-- \ucr3|Add2~27\ = CARRY((!\ucr3|c_int\(13) & !\ucr3|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(13),
	datad => VCC,
	cin => \ucr3|Add2~25\,
	combout => \ucr3|Add2~26_combout\,
	cout => \ucr3|Add2~27\);

-- Location: LCCOMB_X28_Y19_N24
\ucr3|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~24_combout\ = (\ucr3|c_int\(13) & (\ucr3|Add1~23\ $ (GND))) # (!\ucr3|c_int\(13) & (!\ucr3|Add1~23\ & VCC))
-- \ucr3|Add1~25\ = CARRY((\ucr3|c_int\(13) & !\ucr3|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|c_int\(13),
	datad => VCC,
	cin => \ucr3|Add1~23\,
	combout => \ucr3|Add1~24_combout\,
	cout => \ucr3|Add1~25\);

-- Location: LCCOMB_X27_Y19_N6
\ucr3|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~34_combout\ = (\ucr3|c_int[15]~7_combout\ & ((\ucr3|Add1~24_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (\ucr3|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int[15]~7_combout\,
	datac => \ucr3|Add2~26_combout\,
	datad => \ucr3|Add1~24_combout\,
	combout => \ucr3|Add2~34_combout\);

-- Location: FF_X27_Y19_N7
\ucr3|c_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~34_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(13));

-- Location: LCCOMB_X26_Y19_N28
\ucr3|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~28_combout\ = (\ucr3|c_int\(14) & ((GND) # (!\ucr3|Add2~27\))) # (!\ucr3|c_int\(14) & (\ucr3|Add2~27\ $ (GND)))
-- \ucr3|Add2~29\ = CARRY((\ucr3|c_int\(14)) # (!\ucr3|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|c_int\(14),
	datad => VCC,
	cin => \ucr3|Add2~27\,
	combout => \ucr3|Add2~28_combout\,
	cout => \ucr3|Add2~29\);

-- Location: LCCOMB_X28_Y19_N26
\ucr3|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~26_combout\ = (\ucr3|c_int\(14) & (!\ucr3|Add1~25\)) # (!\ucr3|c_int\(14) & ((\ucr3|Add1~25\) # (GND)))
-- \ucr3|Add1~27\ = CARRY((!\ucr3|Add1~25\) # (!\ucr3|c_int\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|c_int\(14),
	datad => VCC,
	cin => \ucr3|Add1~25\,
	combout => \ucr3|Add1~26_combout\,
	cout => \ucr3|Add1~27\);

-- Location: LCCOMB_X27_Y19_N20
\ucr3|Add2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~33_combout\ = (\ucr3|c_int[15]~7_combout\ & ((\ucr3|Add1~26_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (\ucr3|Add2~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr3|Add2~28_combout\,
	datac => \ucr3|c_int[15]~7_combout\,
	datad => \ucr3|Add1~26_combout\,
	combout => \ucr3|Add2~33_combout\);

-- Location: FF_X27_Y19_N21
\ucr3|c_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~33_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(14));

-- Location: LCCOMB_X26_Y19_N30
\ucr3|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~30_combout\ = \ucr3|Add2~29\ $ (!\ucr3|c_int\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ucr3|c_int\(15),
	cin => \ucr3|Add2~29\,
	combout => \ucr3|Add2~30_combout\);

-- Location: LCCOMB_X28_Y19_N28
\ucr3|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add1~28_combout\ = \ucr3|c_int\(15) $ (!\ucr3|Add1~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(15),
	cin => \ucr3|Add1~27\,
	combout => \ucr3|Add1~28_combout\);

-- Location: LCCOMB_X27_Y19_N26
\ucr3|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~32_combout\ = (\ucr3|c_int[15]~7_combout\ & ((\ucr3|Add1~28_combout\))) # (!\ucr3|c_int[15]~7_combout\ & (\ucr3|Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|Add2~30_combout\,
	datac => \ucr3|c_int[15]~7_combout\,
	datad => \ucr3|Add1~28_combout\,
	combout => \ucr3|Add2~32_combout\);

-- Location: FF_X27_Y19_N27
\ucr3|c_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~32_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(15));

-- Location: LCCOMB_X27_Y19_N2
\PWM1_FB02|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|LessThan0~0_combout\ = (!\ucr3|c_int\(13) & (!\ucr3|c_int\(14) & (!\ucr3|c_int\(15) & !\ucr3|c_int\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(13),
	datab => \ucr3|c_int\(14),
	datac => \ucr3|c_int\(15),
	datad => \ucr3|c_int\(12),
	combout => \PWM1_FB02|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y19_N14
\ucr3|c_int[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|c_int[15]~0_combout\ = ((\ucr3|c_int\(11)) # ((\ucr3|c_int\(9) & \ucr3|c_int\(10)))) # (!\PWM1_FB02|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(9),
	datab => \PWM1_FB02|LessThan0~0_combout\,
	datac => \ucr3|c_int\(11),
	datad => \ucr3|c_int\(10),
	combout => \ucr3|c_int[15]~0_combout\);

-- Location: LCCOMB_X27_Y19_N8
\ucr3|c_int[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|c_int[15]~4_combout\ = (\ucr3|c_int[15]~0_combout\) # ((\ucr3|c_int[15]~3_combout\ & (!\ucr3|c_int\(8) & \ucr3|c_int\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int[15]~3_combout\,
	datab => \ucr3|c_int[15]~0_combout\,
	datac => \ucr3|c_int\(8),
	datad => \ucr3|c_int\(10),
	combout => \ucr3|c_int[15]~4_combout\);

-- Location: FF_X27_Y19_N31
\ucr3|dir_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|c_int[15]~7_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|dir_int~q\);

-- Location: LCCOMB_X27_Y19_N18
\ucr3|c_int[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|c_int[15]~5_combout\ = (((\ucr3|c_int\(9)) # (\ucr3|c_int\(10))) # (!\ucr3|c_int\(8))) # (!\ucr3|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(3),
	datab => \ucr3|c_int\(8),
	datac => \ucr3|c_int\(9),
	datad => \ucr3|c_int\(10),
	combout => \ucr3|c_int[15]~5_combout\);

-- Location: LCCOMB_X27_Y19_N28
\ucr3|c_int[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|c_int[15]~6_combout\ = (\ucr3|c_int\(1)) # (((\ucr3|c_int[15]~5_combout\) # (!\ucr6|c_int\(0))) # (!\ucr3|c_int\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(1),
	datab => \ucr3|c_int\(2),
	datac => \ucr6|c_int\(0),
	datad => \ucr3|c_int[15]~5_combout\,
	combout => \ucr3|c_int[15]~6_combout\);

-- Location: LCCOMB_X27_Y19_N30
\ucr3|c_int[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|c_int[15]~7_combout\ = (!\ucr3|c_int[15]~4_combout\ & ((\ucr3|dir_int~q\) # ((\PWM1_FA02|LessThan0~1_combout\ & !\ucr3|c_int[15]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|LessThan0~1_combout\,
	datab => \ucr3|c_int[15]~4_combout\,
	datac => \ucr3|dir_int~q\,
	datad => \ucr3|c_int[15]~6_combout\,
	combout => \ucr3|c_int[15]~7_combout\);

-- Location: LCCOMB_X27_Y19_N16
\ucr3|Add2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr3|Add2~39_combout\ = (\ucr3|c_int[15]~7_combout\ & (!\ucr3|Add1~14_combout\)) # (!\ucr3|c_int[15]~7_combout\ & ((!\ucr3|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int[15]~7_combout\,
	datab => \ucr3|Add1~14_combout\,
	datac => \ucr3|Add2~16_combout\,
	combout => \ucr3|Add2~39_combout\);

-- Location: FF_X27_Y19_N17
\ucr3|c_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr3|Add2~39_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr3|c_int\(8));

-- Location: LCCOMB_X26_Y20_N14
\PWM1_FA02|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|LessThan0~0_combout\ = (\ucr3|c_int\(3)) # ((\ucr3|c_int\(2) & ((\ucr6|c_int\(0)) # (!\ucr3|c_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(2),
	datab => \ucr6|c_int\(0),
	datac => \ucr3|c_int\(1),
	datad => \ucr3|c_int\(3),
	combout => \PWM1_FA02|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y19_N22
\PWM1_FB02|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|LessThan0~1_combout\ = (!\ucr3|c_int\(9) & (\PWM1_FB02|LessThan0~0_combout\ & (!\ucr3|c_int\(11) & !\ucr3|c_int\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(9),
	datab => \PWM1_FB02|LessThan0~0_combout\,
	datac => \ucr3|c_int\(11),
	datad => \ucr3|c_int\(10),
	combout => \PWM1_FB02|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y20_N26
\PWM1_FA02|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|LessThan0~2_combout\ = ((!\ucr3|c_int\(8) & ((!\PWM1_FA02|LessThan0~0_combout\) # (!\PWM1_FA02|LessThan0~1_combout\)))) # (!\PWM1_FB02|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(8),
	datab => \PWM1_FA02|LessThan0~1_combout\,
	datac => \PWM1_FA02|LessThan0~0_combout\,
	datad => \PWM1_FB02|LessThan0~1_combout\,
	combout => \PWM1_FA02|LessThan0~2_combout\);

-- Location: FF_X26_Y20_N27
\PWM1_FA02|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|comp_out~q\);

-- Location: FF_X25_Y20_N31
\PWM1_FA02|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count1\(4));

-- Location: LCCOMB_X25_Y20_N20
\PWM1_FA02|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|LessThan1~0_combout\ = (((!\PWM1_FA02|var_Dead_Count1\(0)) # (!\PWM1_FA02|var_Dead_Count1\(2))) # (!\PWM1_FA02|var_Dead_Count1\(3))) # (!\PWM1_FA02|var_Dead_Count1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|var_Dead_Count1\(1),
	datab => \PWM1_FA02|var_Dead_Count1\(3),
	datac => \PWM1_FA02|var_Dead_Count1\(2),
	datad => \PWM1_FA02|var_Dead_Count1\(0),
	combout => \PWM1_FA02|LessThan1~0_combout\);

-- Location: LCCOMB_X25_Y20_N14
\PWM1_FA02|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~9_combout\ = (\PWM1_FA02|var_Dead_Count1\(4) & (\PWM1_FA02|Add0~7\ $ (GND))) # (!\PWM1_FA02|var_Dead_Count1\(4) & (!\PWM1_FA02|Add0~7\ & VCC))
-- \PWM1_FA02|Add0~10\ = CARRY((\PWM1_FA02|var_Dead_Count1\(4) & !\PWM1_FA02|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA02|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM1_FA02|Add0~7\,
	combout => \PWM1_FA02|Add0~9_combout\,
	cout => \PWM1_FA02|Add0~10\);

-- Location: LCCOMB_X25_Y20_N16
\PWM1_FA02|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~11_combout\ = (\PWM1_FA02|var_Dead_Count1\(5) & (!\PWM1_FA02|Add0~10\)) # (!\PWM1_FA02|var_Dead_Count1\(5) & ((\PWM1_FA02|Add0~10\) # (GND)))
-- \PWM1_FA02|Add0~12\ = CARRY((!\PWM1_FA02|Add0~10\) # (!\PWM1_FA02|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA02|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM1_FA02|Add0~10\,
	combout => \PWM1_FA02|Add0~11_combout\,
	cout => \PWM1_FA02|Add0~12\);

-- Location: LCCOMB_X25_Y20_N0
\PWM1_FA02|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~17_combout\ = (\PWM1_FA02|Add0~11_combout\ & \PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA02|Add0~11_combout\,
	datac => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add0~17_combout\);

-- Location: FF_X25_Y20_N1
\PWM1_FA02|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count1\(5));

-- Location: LCCOMB_X25_Y20_N18
\PWM1_FA02|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~13_combout\ = \PWM1_FA02|var_Dead_Count1\(6) $ (!\PWM1_FA02|Add0~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA02|var_Dead_Count1\(6),
	cin => \PWM1_FA02|Add0~12\,
	combout => \PWM1_FA02|Add0~13_combout\);

-- Location: LCCOMB_X25_Y20_N2
\PWM1_FA02|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~15_combout\ = (\PWM1_FA02|Add0~13_combout\ & \PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA02|Add0~13_combout\,
	datac => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add0~15_combout\);

-- Location: FF_X25_Y20_N3
\PWM1_FA02|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count1\(6));

-- Location: LCCOMB_X25_Y20_N28
\PWM1_FA02|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|LessThan1~1_combout\ = (\PWM1_FA02|LessThan1~0_combout\ & (!\PWM1_FA02|var_Dead_Count1\(5) & (!\PWM1_FA02|var_Dead_Count1\(6) & !\PWM1_FA02|var_Dead_Count1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|LessThan1~0_combout\,
	datab => \PWM1_FA02|var_Dead_Count1\(5),
	datac => \PWM1_FA02|var_Dead_Count1\(6),
	datad => \PWM1_FA02|var_Dead_Count1\(4),
	combout => \PWM1_FA02|LessThan1~1_combout\);

-- Location: LCCOMB_X25_Y20_N6
\PWM1_FA02|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~0_combout\ = (\PWM1_FA02|var_Dead_Count1\(0) & (\PWM1_FA02|LessThan1~1_combout\ $ (VCC))) # (!\PWM1_FA02|var_Dead_Count1\(0) & (\PWM1_FA02|LessThan1~1_combout\ & VCC))
-- \PWM1_FA02|Add0~1\ = CARRY((\PWM1_FA02|var_Dead_Count1\(0) & \PWM1_FA02|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|var_Dead_Count1\(0),
	datab => \PWM1_FA02|LessThan1~1_combout\,
	datad => VCC,
	combout => \PWM1_FA02|Add0~0_combout\,
	cout => \PWM1_FA02|Add0~1\);

-- Location: LCCOMB_X26_Y20_N4
\PWM1_FA02|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~18_combout\ = (\PWM1_FA02|Add0~0_combout\ & \PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA02|Add0~0_combout\,
	datad => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add0~18_combout\);

-- Location: FF_X26_Y20_N5
\PWM1_FA02|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count1\(0));

-- Location: LCCOMB_X25_Y20_N8
\PWM1_FA02|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~2_combout\ = (\PWM1_FA02|var_Dead_Count1\(1) & (!\PWM1_FA02|Add0~1\)) # (!\PWM1_FA02|var_Dead_Count1\(1) & ((\PWM1_FA02|Add0~1\) # (GND)))
-- \PWM1_FA02|Add0~3\ = CARRY((!\PWM1_FA02|Add0~1\) # (!\PWM1_FA02|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM1_FA02|Add0~1\,
	combout => \PWM1_FA02|Add0~2_combout\,
	cout => \PWM1_FA02|Add0~3\);

-- Location: LCCOMB_X26_Y20_N6
\PWM1_FA02|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~19_combout\ = (\PWM1_FA02|Add0~2_combout\ & \PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|Add0~2_combout\,
	datad => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add0~19_combout\);

-- Location: FF_X26_Y20_N7
\PWM1_FA02|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count1\(1));

-- Location: LCCOMB_X25_Y20_N10
\PWM1_FA02|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~4_combout\ = (\PWM1_FA02|var_Dead_Count1\(2) & (\PWM1_FA02|Add0~3\ $ (GND))) # (!\PWM1_FA02|var_Dead_Count1\(2) & (!\PWM1_FA02|Add0~3\ & VCC))
-- \PWM1_FA02|Add0~5\ = CARRY((\PWM1_FA02|var_Dead_Count1\(2) & !\PWM1_FA02|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM1_FA02|Add0~3\,
	combout => \PWM1_FA02|Add0~4_combout\,
	cout => \PWM1_FA02|Add0~5\);

-- Location: LCCOMB_X25_Y20_N26
\PWM1_FA02|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~20_combout\ = (\PWM1_FA02|Add0~4_combout\ & \PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|Add0~4_combout\,
	datac => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add0~20_combout\);

-- Location: FF_X25_Y20_N27
\PWM1_FA02|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count1\(2));

-- Location: LCCOMB_X25_Y20_N12
\PWM1_FA02|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~6_combout\ = (\PWM1_FA02|var_Dead_Count1\(3) & (!\PWM1_FA02|Add0~5\)) # (!\PWM1_FA02|var_Dead_Count1\(3) & ((\PWM1_FA02|Add0~5\) # (GND)))
-- \PWM1_FA02|Add0~7\ = CARRY((!\PWM1_FA02|Add0~5\) # (!\PWM1_FA02|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA02|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM1_FA02|Add0~5\,
	combout => \PWM1_FA02|Add0~6_combout\,
	cout => \PWM1_FA02|Add0~7\);

-- Location: LCCOMB_X25_Y20_N4
\PWM1_FA02|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~8_combout\ = (\PWM1_FA02|comp_out~q\ & \PWM1_FA02|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|comp_out~q\,
	datad => \PWM1_FA02|Add0~6_combout\,
	combout => \PWM1_FA02|Add0~8_combout\);

-- Location: FF_X25_Y20_N5
\PWM1_FA02|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count1\(3));

-- Location: LCCOMB_X25_Y20_N30
\PWM1_FA02|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add0~16_combout\ = (\PWM1_FA02|comp_out~q\ & \PWM1_FA02|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|comp_out~q\,
	datac => \PWM1_FA02|Add0~9_combout\,
	combout => \PWM1_FA02|Add0~16_combout\);

-- Location: LCCOMB_X25_Y20_N22
\PWM1_FA02|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Equal0~1_combout\ = (!\PWM1_FA02|Add0~16_combout\ & (!\PWM1_FA02|Add0~17_combout\ & (\PWM1_FA02|Add0~8_combout\ & !\PWM1_FA02|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|Add0~16_combout\,
	datab => \PWM1_FA02|Add0~17_combout\,
	datac => \PWM1_FA02|Add0~8_combout\,
	datad => \PWM1_FA02|Add0~15_combout\,
	combout => \PWM1_FA02|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y20_N24
\PWM1_FA02|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Equal0~0_combout\ = (\PWM1_FA02|Add0~2_combout\ & (\PWM1_FA02|comp_out~q\ & (\PWM1_FA02|Add0~0_combout\ & \PWM1_FA02|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|Add0~2_combout\,
	datab => \PWM1_FA02|comp_out~q\,
	datac => \PWM1_FA02|Add0~0_combout\,
	datad => \PWM1_FA02|Add0~4_combout\,
	combout => \PWM1_FA02|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y20_N24
\PWM1_FA02|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|port_PWM01~0_combout\ = (\PWM1_FA02|comp_out~q\ & ((\PWM1_FA02|port_PWM01~q\) # ((\PWM1_FA02|Equal0~1_combout\ & \PWM1_FA02|Equal0~0_combout\)))) # (!\PWM1_FA02|comp_out~q\ & (\PWM1_FA02|Equal0~1_combout\ & ((\PWM1_FA02|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|comp_out~q\,
	datab => \PWM1_FA02|Equal0~1_combout\,
	datac => \PWM1_FA02|port_PWM01~q\,
	datad => \PWM1_FA02|Equal0~0_combout\,
	combout => \PWM1_FA02|port_PWM01~0_combout\);

-- Location: FF_X25_Y20_N25
\PWM1_FA02|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|port_PWM01~q\);

-- Location: FF_X34_Y27_N11
\PWM1_FA03|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count1\(5));

-- Location: LCCOMB_X34_Y27_N18
\PWM1_FA03|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~0_combout\ = (\PWM1_FA03|LessThan1~1_combout\ & (\PWM1_FA03|var_Dead_Count1\(0) $ (VCC))) # (!\PWM1_FA03|LessThan1~1_combout\ & (\PWM1_FA03|var_Dead_Count1\(0) & VCC))
-- \PWM1_FA03|Add0~1\ = CARRY((\PWM1_FA03|LessThan1~1_combout\ & \PWM1_FA03|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|LessThan1~1_combout\,
	datab => \PWM1_FA03|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM1_FA03|Add0~0_combout\,
	cout => \PWM1_FA03|Add0~1\);

-- Location: LCCOMB_X35_Y28_N2
\ucr5|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~2_combout\ = (\ucr5|c_int\(1) & ((\ucr5|c_int[10]~8_combout\ & (!\ucr5|Add2~1\)) # (!\ucr5|c_int[10]~8_combout\ & ((\ucr5|Add2~1\) # (GND))))) # (!\ucr5|c_int\(1) & ((\ucr5|c_int[10]~8_combout\ & (\ucr5|Add2~1\ & VCC)) # 
-- (!\ucr5|c_int[10]~8_combout\ & (!\ucr5|Add2~1\))))
-- \ucr5|Add2~3\ = CARRY((\ucr5|c_int\(1) & ((!\ucr5|Add2~1\) # (!\ucr5|c_int[10]~8_combout\))) # (!\ucr5|c_int\(1) & (!\ucr5|c_int[10]~8_combout\ & !\ucr5|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(1),
	datab => \ucr5|c_int[10]~8_combout\,
	datad => VCC,
	cin => \ucr5|Add2~1\,
	combout => \ucr5|Add2~2_combout\,
	cout => \ucr5|Add2~3\);

-- Location: LCCOMB_X36_Y28_N6
\ucr5|c_int[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[1]~12_combout\ = !\ucr5|Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr5|Add2~2_combout\,
	combout => \ucr5|c_int[1]~12_combout\);

-- Location: FF_X36_Y28_N7
\ucr5|c_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|c_int[1]~12_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(1));

-- Location: LCCOMB_X35_Y28_N4
\ucr5|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~4_combout\ = ((\ucr5|c_int[10]~8_combout\ $ (\ucr5|c_int\(2) $ (!\ucr5|Add2~3\)))) # (GND)
-- \ucr5|Add2~5\ = CARRY((\ucr5|c_int[10]~8_combout\ & ((\ucr5|c_int\(2)) # (!\ucr5|Add2~3\))) # (!\ucr5|c_int[10]~8_combout\ & (\ucr5|c_int\(2) & !\ucr5|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int[10]~8_combout\,
	datab => \ucr5|c_int\(2),
	datad => VCC,
	cin => \ucr5|Add2~3\,
	combout => \ucr5|Add2~4_combout\,
	cout => \ucr5|Add2~5\);

-- Location: FF_X35_Y28_N5
\ucr5|c_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|Add2~4_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(2));

-- Location: LCCOMB_X35_Y28_N6
\ucr5|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~6_combout\ = (\ucr5|c_int\(3) & ((\ucr5|c_int[10]~8_combout\ & (!\ucr5|Add2~5\)) # (!\ucr5|c_int[10]~8_combout\ & ((\ucr5|Add2~5\) # (GND))))) # (!\ucr5|c_int\(3) & ((\ucr5|c_int[10]~8_combout\ & (\ucr5|Add2~5\ & VCC)) # 
-- (!\ucr5|c_int[10]~8_combout\ & (!\ucr5|Add2~5\))))
-- \ucr5|Add2~7\ = CARRY((\ucr5|c_int\(3) & ((!\ucr5|Add2~5\) # (!\ucr5|c_int[10]~8_combout\))) # (!\ucr5|c_int\(3) & (!\ucr5|c_int[10]~8_combout\ & !\ucr5|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(3),
	datab => \ucr5|c_int[10]~8_combout\,
	datad => VCC,
	cin => \ucr5|Add2~5\,
	combout => \ucr5|Add2~6_combout\,
	cout => \ucr5|Add2~7\);

-- Location: LCCOMB_X36_Y28_N28
\ucr5|c_int[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[3]~11_combout\ = !\ucr5|Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucr5|Add2~6_combout\,
	combout => \ucr5|c_int[3]~11_combout\);

-- Location: FF_X36_Y28_N29
\ucr5|c_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|c_int[3]~11_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(3));

-- Location: LCCOMB_X35_Y28_N8
\ucr5|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~8_combout\ = ((\ucr5|c_int\(4) $ (\ucr5|c_int[10]~8_combout\ $ (\ucr5|Add2~7\)))) # (GND)
-- \ucr5|Add2~9\ = CARRY((\ucr5|c_int\(4) & (\ucr5|c_int[10]~8_combout\ & !\ucr5|Add2~7\)) # (!\ucr5|c_int\(4) & ((\ucr5|c_int[10]~8_combout\) # (!\ucr5|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(4),
	datab => \ucr5|c_int[10]~8_combout\,
	datad => VCC,
	cin => \ucr5|Add2~7\,
	combout => \ucr5|Add2~8_combout\,
	cout => \ucr5|Add2~9\);

-- Location: LCCOMB_X36_Y28_N4
\ucr5|c_int[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[4]~15_combout\ = !\ucr5|Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr5|Add2~8_combout\,
	combout => \ucr5|c_int[4]~15_combout\);

-- Location: FF_X36_Y28_N5
\ucr5|c_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|c_int[4]~15_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(4));

-- Location: LCCOMB_X35_Y28_N10
\ucr5|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~10_combout\ = (\ucr5|c_int\(5) & ((\ucr5|c_int[10]~8_combout\ & (!\ucr5|Add2~9\)) # (!\ucr5|c_int[10]~8_combout\ & ((\ucr5|Add2~9\) # (GND))))) # (!\ucr5|c_int\(5) & ((\ucr5|c_int[10]~8_combout\ & (\ucr5|Add2~9\ & VCC)) # 
-- (!\ucr5|c_int[10]~8_combout\ & (!\ucr5|Add2~9\))))
-- \ucr5|Add2~11\ = CARRY((\ucr5|c_int\(5) & ((!\ucr5|Add2~9\) # (!\ucr5|c_int[10]~8_combout\))) # (!\ucr5|c_int\(5) & (!\ucr5|c_int[10]~8_combout\ & !\ucr5|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(5),
	datab => \ucr5|c_int[10]~8_combout\,
	datad => VCC,
	cin => \ucr5|Add2~9\,
	combout => \ucr5|Add2~10_combout\,
	cout => \ucr5|Add2~11\);

-- Location: LCCOMB_X36_Y28_N2
\ucr5|c_int[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[5]~14_combout\ = !\ucr5|Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr5|Add2~10_combout\,
	combout => \ucr5|c_int[5]~14_combout\);

-- Location: FF_X36_Y28_N3
\ucr5|c_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|c_int[5]~14_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(5));

-- Location: LCCOMB_X35_Y28_N12
\ucr5|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~12_combout\ = ((\ucr5|c_int\(6) $ (\ucr5|c_int[10]~8_combout\ $ (\ucr5|Add2~11\)))) # (GND)
-- \ucr5|Add2~13\ = CARRY((\ucr5|c_int\(6) & (\ucr5|c_int[10]~8_combout\ & !\ucr5|Add2~11\)) # (!\ucr5|c_int\(6) & ((\ucr5|c_int[10]~8_combout\) # (!\ucr5|Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(6),
	datab => \ucr5|c_int[10]~8_combout\,
	datad => VCC,
	cin => \ucr5|Add2~11\,
	combout => \ucr5|Add2~12_combout\,
	cout => \ucr5|Add2~13\);

-- Location: LCCOMB_X36_Y28_N24
\ucr5|c_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[6]~13_combout\ = !\ucr5|Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr5|Add2~12_combout\,
	combout => \ucr5|c_int[6]~13_combout\);

-- Location: FF_X36_Y28_N25
\ucr5|c_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|c_int[6]~13_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(6));

-- Location: LCCOMB_X35_Y28_N14
\ucr5|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~14_combout\ = (\ucr5|c_int\(7) & ((\ucr5|c_int[10]~8_combout\ & (\ucr5|Add2~13\ & VCC)) # (!\ucr5|c_int[10]~8_combout\ & (!\ucr5|Add2~13\)))) # (!\ucr5|c_int\(7) & ((\ucr5|c_int[10]~8_combout\ & (!\ucr5|Add2~13\)) # (!\ucr5|c_int[10]~8_combout\ 
-- & ((\ucr5|Add2~13\) # (GND)))))
-- \ucr5|Add2~15\ = CARRY((\ucr5|c_int\(7) & (!\ucr5|c_int[10]~8_combout\ & !\ucr5|Add2~13\)) # (!\ucr5|c_int\(7) & ((!\ucr5|Add2~13\) # (!\ucr5|c_int[10]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(7),
	datab => \ucr5|c_int[10]~8_combout\,
	datad => VCC,
	cin => \ucr5|Add2~13\,
	combout => \ucr5|Add2~14_combout\,
	cout => \ucr5|Add2~15\);

-- Location: FF_X35_Y28_N15
\ucr5|c_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|Add2~14_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(7));

-- Location: LCCOMB_X35_Y28_N16
\ucr5|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~16_combout\ = ((\ucr5|c_int[10]~8_combout\ $ (\ucr5|c_int\(8) $ (\ucr5|Add2~15\)))) # (GND)
-- \ucr5|Add2~17\ = CARRY((\ucr5|c_int[10]~8_combout\ & ((!\ucr5|Add2~15\) # (!\ucr5|c_int\(8)))) # (!\ucr5|c_int[10]~8_combout\ & (!\ucr5|c_int\(8) & !\ucr5|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int[10]~8_combout\,
	datab => \ucr5|c_int\(8),
	datad => VCC,
	cin => \ucr5|Add2~15\,
	combout => \ucr5|Add2~16_combout\,
	cout => \ucr5|Add2~17\);

-- Location: LCCOMB_X36_Y28_N10
\ucr5|c_int[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[8]~10_combout\ = !\ucr5|Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucr5|Add2~16_combout\,
	combout => \ucr5|c_int[8]~10_combout\);

-- Location: FF_X36_Y28_N11
\ucr5|c_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|c_int[8]~10_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(8));

-- Location: LCCOMB_X35_Y28_N18
\ucr5|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~18_combout\ = (\ucr5|c_int[10]~8_combout\ & ((\ucr5|c_int\(9) & (!\ucr5|Add2~17\)) # (!\ucr5|c_int\(9) & (\ucr5|Add2~17\ & VCC)))) # (!\ucr5|c_int[10]~8_combout\ & ((\ucr5|c_int\(9) & ((\ucr5|Add2~17\) # (GND))) # (!\ucr5|c_int\(9) & 
-- (!\ucr5|Add2~17\))))
-- \ucr5|Add2~19\ = CARRY((\ucr5|c_int[10]~8_combout\ & (\ucr5|c_int\(9) & !\ucr5|Add2~17\)) # (!\ucr5|c_int[10]~8_combout\ & ((\ucr5|c_int\(9)) # (!\ucr5|Add2~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int[10]~8_combout\,
	datab => \ucr5|c_int\(9),
	datad => VCC,
	cin => \ucr5|Add2~17\,
	combout => \ucr5|Add2~18_combout\,
	cout => \ucr5|Add2~19\);

-- Location: LCCOMB_X35_Y28_N20
\ucr5|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~20_combout\ = ((\ucr5|c_int[10]~8_combout\ $ (\ucr5|c_int\(10) $ (!\ucr5|Add2~19\)))) # (GND)
-- \ucr5|Add2~21\ = CARRY((\ucr5|c_int[10]~8_combout\ & ((\ucr5|c_int\(10)) # (!\ucr5|Add2~19\))) # (!\ucr5|c_int[10]~8_combout\ & (\ucr5|c_int\(10) & !\ucr5|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int[10]~8_combout\,
	datab => \ucr5|c_int\(10),
	datad => VCC,
	cin => \ucr5|Add2~19\,
	combout => \ucr5|Add2~20_combout\,
	cout => \ucr5|Add2~21\);

-- Location: FF_X35_Y28_N21
\ucr5|c_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|Add2~20_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(10));

-- Location: LCCOMB_X35_Y28_N22
\ucr5|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~22_combout\ = (\ucr5|c_int[10]~8_combout\ & ((\ucr5|c_int\(11) & (\ucr5|Add2~21\ & VCC)) # (!\ucr5|c_int\(11) & (!\ucr5|Add2~21\)))) # (!\ucr5|c_int[10]~8_combout\ & ((\ucr5|c_int\(11) & (!\ucr5|Add2~21\)) # (!\ucr5|c_int\(11) & 
-- ((\ucr5|Add2~21\) # (GND)))))
-- \ucr5|Add2~23\ = CARRY((\ucr5|c_int[10]~8_combout\ & (!\ucr5|c_int\(11) & !\ucr5|Add2~21\)) # (!\ucr5|c_int[10]~8_combout\ & ((!\ucr5|Add2~21\) # (!\ucr5|c_int\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int[10]~8_combout\,
	datab => \ucr5|c_int\(11),
	datad => VCC,
	cin => \ucr5|Add2~21\,
	combout => \ucr5|Add2~22_combout\,
	cout => \ucr5|Add2~23\);

-- Location: FF_X35_Y28_N23
\ucr5|c_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|Add2~22_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(11));

-- Location: LCCOMB_X35_Y28_N24
\ucr5|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~24_combout\ = ((\ucr5|c_int[10]~8_combout\ $ (\ucr5|c_int\(12) $ (!\ucr5|Add2~23\)))) # (GND)
-- \ucr5|Add2~25\ = CARRY((\ucr5|c_int[10]~8_combout\ & ((\ucr5|c_int\(12)) # (!\ucr5|Add2~23\))) # (!\ucr5|c_int[10]~8_combout\ & (\ucr5|c_int\(12) & !\ucr5|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int[10]~8_combout\,
	datab => \ucr5|c_int\(12),
	datad => VCC,
	cin => \ucr5|Add2~23\,
	combout => \ucr5|Add2~24_combout\,
	cout => \ucr5|Add2~25\);

-- Location: FF_X35_Y28_N25
\ucr5|c_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|Add2~24_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(12));

-- Location: LCCOMB_X35_Y28_N26
\ucr5|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~26_combout\ = (\ucr5|c_int[10]~8_combout\ & ((\ucr5|c_int\(13) & (\ucr5|Add2~25\ & VCC)) # (!\ucr5|c_int\(13) & (!\ucr5|Add2~25\)))) # (!\ucr5|c_int[10]~8_combout\ & ((\ucr5|c_int\(13) & (!\ucr5|Add2~25\)) # (!\ucr5|c_int\(13) & 
-- ((\ucr5|Add2~25\) # (GND)))))
-- \ucr5|Add2~27\ = CARRY((\ucr5|c_int[10]~8_combout\ & (!\ucr5|c_int\(13) & !\ucr5|Add2~25\)) # (!\ucr5|c_int[10]~8_combout\ & ((!\ucr5|Add2~25\) # (!\ucr5|c_int\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int[10]~8_combout\,
	datab => \ucr5|c_int\(13),
	datad => VCC,
	cin => \ucr5|Add2~25\,
	combout => \ucr5|Add2~26_combout\,
	cout => \ucr5|Add2~27\);

-- Location: FF_X35_Y28_N27
\ucr5|c_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|Add2~26_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(13));

-- Location: LCCOMB_X35_Y28_N28
\ucr5|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~28_combout\ = ((\ucr5|c_int\(14) $ (\ucr5|c_int[10]~8_combout\ $ (!\ucr5|Add2~27\)))) # (GND)
-- \ucr5|Add2~29\ = CARRY((\ucr5|c_int\(14) & ((\ucr5|c_int[10]~8_combout\) # (!\ucr5|Add2~27\))) # (!\ucr5|c_int\(14) & (\ucr5|c_int[10]~8_combout\ & !\ucr5|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(14),
	datab => \ucr5|c_int[10]~8_combout\,
	datad => VCC,
	cin => \ucr5|Add2~27\,
	combout => \ucr5|Add2~28_combout\,
	cout => \ucr5|Add2~29\);

-- Location: FF_X35_Y28_N29
\ucr5|c_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|Add2~28_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(14));

-- Location: LCCOMB_X35_Y28_N30
\ucr5|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|Add2~30_combout\ = \ucr5|c_int\(15) $ (\ucr5|Add2~29\ $ (\ucr5|c_int[10]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(15),
	datad => \ucr5|c_int[10]~8_combout\,
	cin => \ucr5|Add2~29\,
	combout => \ucr5|Add2~30_combout\);

-- Location: FF_X35_Y28_N31
\ucr5|c_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|Add2~30_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(15));

-- Location: LCCOMB_X34_Y28_N4
\PWM1_FB03|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|LessThan0~5_combout\ = (!\ucr5|c_int\(15) & !\ucr5|c_int\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucr5|c_int\(15),
	datad => \ucr5|c_int\(13),
	combout => \PWM1_FB03|LessThan0~5_combout\);

-- Location: LCCOMB_X34_Y28_N6
\PWM1_FB03|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|LessThan0~6_combout\ = (!\ucr5|c_int\(12) & (!\ucr5|c_int\(14) & (\PWM1_FB03|LessThan0~5_combout\ & !\ucr5|c_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(12),
	datab => \ucr5|c_int\(14),
	datac => \PWM1_FB03|LessThan0~5_combout\,
	datad => \ucr5|c_int\(11),
	combout => \PWM1_FB03|LessThan0~6_combout\);

-- Location: LCCOMB_X34_Y28_N10
\ucr5|dir_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|dir_int~0_combout\ = !\ucr5|c_int[10]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr5|c_int[10]~8_combout\,
	combout => \ucr5|dir_int~0_combout\);

-- Location: FF_X34_Y28_N11
\ucr5|dir_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|dir_int~0_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|dir_int~q\);

-- Location: LCCOMB_X36_Y28_N8
\ucr5|c_int[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[10]~5_combout\ = (\ucr5|c_int\(8) & (!\ucr5|c_int\(2) & (!\ucr5|c_int\(0) & \ucr5|c_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(8),
	datab => \ucr5|c_int\(2),
	datac => \ucr5|c_int\(0),
	datad => \ucr5|c_int\(1),
	combout => \ucr5|c_int[10]~5_combout\);

-- Location: LCCOMB_X36_Y28_N26
\ucr5|c_int[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[10]~6_combout\ = (\ucr5|c_int[10]~5_combout\ & (\ucr5|c_int\(5) & (\ucr5|c_int\(4) & \ucr5|c_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int[10]~5_combout\,
	datab => \ucr5|c_int\(5),
	datac => \ucr5|c_int\(4),
	datad => \ucr5|c_int\(3),
	combout => \ucr5|c_int[10]~6_combout\);

-- Location: LCCOMB_X34_Y28_N0
\ucr5|c_int[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[10]~7_combout\ = (\ucr5|dir_int~q\ & (!\ucr5|c_int\(9) & (\ucr5|c_int\(10)))) # (!\ucr5|dir_int~q\ & (((\ucr5|c_int\(10)) # (!\ucr5|c_int[10]~6_combout\)) # (!\ucr5|c_int\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|dir_int~q\,
	datab => \ucr5|c_int\(9),
	datac => \ucr5|c_int\(10),
	datad => \ucr5|c_int[10]~6_combout\,
	combout => \ucr5|c_int[10]~7_combout\);

-- Location: LCCOMB_X34_Y28_N12
\ucr5|c_int[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[10]~0_combout\ = ((\ucr5|c_int\(10) & !\ucr5|c_int\(8))) # (!\ucr5|dir_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|dir_int~q\,
	datac => \ucr5|c_int\(10),
	datad => \ucr5|c_int\(8),
	combout => \ucr5|c_int[10]~0_combout\);

-- Location: LCCOMB_X34_Y28_N14
\ucr5|c_int[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[10]~1_combout\ = (\ucr5|c_int[10]~0_combout\ & ((\ucr5|c_int\(7)) # (!\ucr5|c_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int[10]~0_combout\,
	datab => \ucr5|c_int\(7),
	datac => \ucr5|c_int\(6),
	combout => \ucr5|c_int[10]~1_combout\);

-- Location: LCCOMB_X36_Y28_N20
\ucr5|c_int[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[10]~3_combout\ = (!\ucr5|c_int\(8) & (\ucr5|c_int\(10) & (!\ucr5|c_int\(4) & !\ucr5|c_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(8),
	datab => \ucr5|c_int\(10),
	datac => \ucr5|c_int\(4),
	datad => \ucr5|c_int\(5),
	combout => \ucr5|c_int[10]~3_combout\);

-- Location: LCCOMB_X36_Y28_N18
\ucr5|c_int[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[10]~2_combout\ = ((\ucr5|c_int\(0) & (\ucr5|c_int\(2) & !\ucr5|c_int\(1)))) # (!\ucr5|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(0),
	datab => \ucr5|c_int\(3),
	datac => \ucr5|c_int\(2),
	datad => \ucr5|c_int\(1),
	combout => \ucr5|c_int[10]~2_combout\);

-- Location: LCCOMB_X36_Y28_N22
\ucr5|c_int[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[10]~4_combout\ = (\ucr5|c_int[10]~3_combout\ & \ucr5|c_int[10]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr5|c_int[10]~3_combout\,
	datad => \ucr5|c_int[10]~2_combout\,
	combout => \ucr5|c_int[10]~4_combout\);

-- Location: LCCOMB_X34_Y28_N18
\ucr5|c_int[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[10]~8_combout\ = ((\ucr5|c_int[10]~7_combout\) # ((\ucr5|c_int[10]~1_combout\) # (\ucr5|c_int[10]~4_combout\))) # (!\PWM1_FB03|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|LessThan0~6_combout\,
	datab => \ucr5|c_int[10]~7_combout\,
	datac => \ucr5|c_int[10]~1_combout\,
	datad => \ucr5|c_int[10]~4_combout\,
	combout => \ucr5|c_int[10]~8_combout\);

-- Location: LCCOMB_X29_Y19_N16
\ucr5|c_int[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr5|c_int[9]~9_combout\ = !\ucr5|Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr5|Add2~18_combout\,
	combout => \ucr5|c_int[9]~9_combout\);

-- Location: FF_X29_Y19_N17
\ucr5|c_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr5|c_int[9]~9_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr5|c_int\(9));

-- Location: LCCOMB_X34_Y28_N24
\PWM1_FB03|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|LessThan0~0_combout\ = (!\ucr5|c_int\(12) & (!\ucr5|c_int\(14) & (!\ucr5|c_int\(15) & !\ucr5|c_int\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(12),
	datab => \ucr5|c_int\(14),
	datac => \ucr5|c_int\(15),
	datad => \ucr5|c_int\(13),
	combout => \PWM1_FB03|LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y28_N26
\PWM1_FB03|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|LessThan0~1_combout\ = (\ucr5|c_int\(9) & (\PWM1_FB03|LessThan0~0_combout\ & (!\ucr5|c_int\(10) & !\ucr5|c_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(9),
	datab => \PWM1_FB03|LessThan0~0_combout\,
	datac => \ucr5|c_int\(10),
	datad => \ucr5|c_int\(11),
	combout => \PWM1_FB03|LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y27_N0
\PWM1_FA03|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|LessThan0~1_combout\ = (!\ucr5|c_int\(7) & (\ucr5|c_int\(5) & (\ucr5|c_int\(6) & \ucr5|c_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(7),
	datab => \ucr5|c_int\(5),
	datac => \ucr5|c_int\(6),
	datad => \ucr5|c_int\(4),
	combout => \PWM1_FA03|LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y27_N6
\PWM1_FA03|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|LessThan0~0_combout\ = (\ucr5|c_int\(3)) # ((!\ucr5|c_int\(2) & ((\ucr5|c_int\(1)) # (!\ucr5|c_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(3),
	datab => \ucr5|c_int\(2),
	datac => \ucr5|c_int\(0),
	datad => \ucr5|c_int\(1),
	combout => \PWM1_FA03|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y27_N28
\PWM1_FA03|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|LessThan0~2_combout\ = ((!\ucr5|c_int\(8) & ((!\PWM1_FA03|LessThan0~0_combout\) # (!\PWM1_FA03|LessThan0~1_combout\)))) # (!\PWM1_FB03|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|LessThan0~1_combout\,
	datab => \PWM1_FA03|LessThan0~1_combout\,
	datac => \ucr5|c_int\(8),
	datad => \PWM1_FA03|LessThan0~0_combout\,
	combout => \PWM1_FA03|LessThan0~2_combout\);

-- Location: FF_X35_Y27_N29
\PWM1_FA03|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|comp_out~q\);

-- Location: LCCOMB_X34_Y27_N0
\PWM1_FA03|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~18_combout\ = (\PWM1_FA03|Add0~0_combout\ & \PWM1_FA03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|Add0~0_combout\,
	datad => \PWM1_FA03|comp_out~q\,
	combout => \PWM1_FA03|Add0~18_combout\);

-- Location: FF_X34_Y27_N1
\PWM1_FA03|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count1\(0));

-- Location: LCCOMB_X34_Y27_N6
\PWM1_FA03|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|LessThan1~0_combout\ = (((!\PWM1_FA03|var_Dead_Count1\(2)) # (!\PWM1_FA03|var_Dead_Count1\(1))) # (!\PWM1_FA03|var_Dead_Count1\(0))) # (!\PWM1_FA03|var_Dead_Count1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|var_Dead_Count1\(3),
	datab => \PWM1_FA03|var_Dead_Count1\(0),
	datac => \PWM1_FA03|var_Dead_Count1\(1),
	datad => \PWM1_FA03|var_Dead_Count1\(2),
	combout => \PWM1_FA03|LessThan1~0_combout\);

-- Location: LCCOMB_X34_Y27_N28
\PWM1_FA03|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~11_combout\ = (\PWM1_FA03|var_Dead_Count1\(5) & (!\PWM1_FA03|Add0~10\)) # (!\PWM1_FA03|var_Dead_Count1\(5) & ((\PWM1_FA03|Add0~10\) # (GND)))
-- \PWM1_FA03|Add0~12\ = CARRY((!\PWM1_FA03|Add0~10\) # (!\PWM1_FA03|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM1_FA03|Add0~10\,
	combout => \PWM1_FA03|Add0~11_combout\,
	cout => \PWM1_FA03|Add0~12\);

-- Location: LCCOMB_X34_Y27_N30
\PWM1_FA03|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~13_combout\ = \PWM1_FA03|var_Dead_Count1\(6) $ (!\PWM1_FA03|Add0~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|var_Dead_Count1\(6),
	cin => \PWM1_FA03|Add0~12\,
	combout => \PWM1_FA03|Add0~13_combout\);

-- Location: LCCOMB_X34_Y27_N12
\PWM1_FA03|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~15_combout\ = (\PWM1_FA03|Add0~13_combout\ & \PWM1_FA03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA03|Add0~13_combout\,
	datad => \PWM1_FA03|comp_out~q\,
	combout => \PWM1_FA03|Add0~15_combout\);

-- Location: FF_X34_Y27_N13
\PWM1_FA03|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count1\(6));

-- Location: LCCOMB_X34_Y27_N14
\PWM1_FA03|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|LessThan1~1_combout\ = (\PWM1_FA03|LessThan1~0_combout\ & (!\PWM1_FA03|var_Dead_Count1\(4) & (!\PWM1_FA03|var_Dead_Count1\(6) & !\PWM1_FA03|var_Dead_Count1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|LessThan1~0_combout\,
	datab => \PWM1_FA03|var_Dead_Count1\(4),
	datac => \PWM1_FA03|var_Dead_Count1\(6),
	datad => \PWM1_FA03|var_Dead_Count1\(5),
	combout => \PWM1_FA03|LessThan1~1_combout\);

-- Location: LCCOMB_X34_Y27_N20
\PWM1_FA03|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~2_combout\ = (\PWM1_FA03|var_Dead_Count1\(1) & (!\PWM1_FA03|Add0~1\)) # (!\PWM1_FA03|var_Dead_Count1\(1) & ((\PWM1_FA03|Add0~1\) # (GND)))
-- \PWM1_FA03|Add0~3\ = CARRY((!\PWM1_FA03|Add0~1\) # (!\PWM1_FA03|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM1_FA03|Add0~1\,
	combout => \PWM1_FA03|Add0~2_combout\,
	cout => \PWM1_FA03|Add0~3\);

-- Location: LCCOMB_X34_Y27_N2
\PWM1_FA03|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~19_combout\ = (\PWM1_FA03|Add0~2_combout\ & \PWM1_FA03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|Add0~2_combout\,
	datad => \PWM1_FA03|comp_out~q\,
	combout => \PWM1_FA03|Add0~19_combout\);

-- Location: FF_X34_Y27_N3
\PWM1_FA03|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count1\(1));

-- Location: LCCOMB_X34_Y27_N22
\PWM1_FA03|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~4_combout\ = (\PWM1_FA03|var_Dead_Count1\(2) & (\PWM1_FA03|Add0~3\ $ (GND))) # (!\PWM1_FA03|var_Dead_Count1\(2) & (!\PWM1_FA03|Add0~3\ & VCC))
-- \PWM1_FA03|Add0~5\ = CARRY((\PWM1_FA03|var_Dead_Count1\(2) & !\PWM1_FA03|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM1_FA03|Add0~3\,
	combout => \PWM1_FA03|Add0~4_combout\,
	cout => \PWM1_FA03|Add0~5\);

-- Location: LCCOMB_X35_Y27_N22
\PWM1_FA03|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~20_combout\ = (\PWM1_FA03|Add0~4_combout\ & \PWM1_FA03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|Add0~4_combout\,
	datad => \PWM1_FA03|comp_out~q\,
	combout => \PWM1_FA03|Add0~20_combout\);

-- Location: FF_X35_Y27_N23
\PWM1_FA03|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count1\(2));

-- Location: LCCOMB_X34_Y27_N24
\PWM1_FA03|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~6_combout\ = (\PWM1_FA03|var_Dead_Count1\(3) & (!\PWM1_FA03|Add0~5\)) # (!\PWM1_FA03|var_Dead_Count1\(3) & ((\PWM1_FA03|Add0~5\) # (GND)))
-- \PWM1_FA03|Add0~7\ = CARRY((!\PWM1_FA03|Add0~5\) # (!\PWM1_FA03|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM1_FA03|Add0~5\,
	combout => \PWM1_FA03|Add0~6_combout\,
	cout => \PWM1_FA03|Add0~7\);

-- Location: LCCOMB_X34_Y27_N4
\PWM1_FA03|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~8_combout\ = (\PWM1_FA03|Add0~6_combout\ & \PWM1_FA03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|Add0~6_combout\,
	datad => \PWM1_FA03|comp_out~q\,
	combout => \PWM1_FA03|Add0~8_combout\);

-- Location: FF_X34_Y27_N5
\PWM1_FA03|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count1\(3));

-- Location: LCCOMB_X34_Y27_N26
\PWM1_FA03|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~9_combout\ = (\PWM1_FA03|var_Dead_Count1\(4) & (\PWM1_FA03|Add0~7\ $ (GND))) # (!\PWM1_FA03|var_Dead_Count1\(4) & (!\PWM1_FA03|Add0~7\ & VCC))
-- \PWM1_FA03|Add0~10\ = CARRY((\PWM1_FA03|var_Dead_Count1\(4) & !\PWM1_FA03|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM1_FA03|Add0~7\,
	combout => \PWM1_FA03|Add0~9_combout\,
	cout => \PWM1_FA03|Add0~10\);

-- Location: LCCOMB_X34_Y27_N16
\PWM1_FA03|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~16_combout\ = (\PWM1_FA03|Add0~9_combout\ & \PWM1_FA03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA03|Add0~9_combout\,
	datad => \PWM1_FA03|comp_out~q\,
	combout => \PWM1_FA03|Add0~16_combout\);

-- Location: FF_X34_Y27_N17
\PWM1_FA03|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count1\(4));

-- Location: LCCOMB_X34_Y27_N10
\PWM1_FA03|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add0~17_combout\ = (\PWM1_FA03|Add0~11_combout\ & \PWM1_FA03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|Add0~11_combout\,
	datad => \PWM1_FA03|comp_out~q\,
	combout => \PWM1_FA03|Add0~17_combout\);

-- Location: LCCOMB_X34_Y27_N8
\PWM1_FA03|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Equal0~1_combout\ = (!\PWM1_FA03|Add0~17_combout\ & (!\PWM1_FA03|Add0~16_combout\ & (\PWM1_FA03|Add0~8_combout\ & !\PWM1_FA03|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|Add0~17_combout\,
	datab => \PWM1_FA03|Add0~16_combout\,
	datac => \PWM1_FA03|Add0~8_combout\,
	datad => \PWM1_FA03|Add0~15_combout\,
	combout => \PWM1_FA03|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y27_N16
\PWM1_FA03|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Equal0~0_combout\ = (\PWM1_FA03|Add0~2_combout\ & (\PWM1_FA03|Add0~4_combout\ & (\PWM1_FA03|Add0~0_combout\ & \PWM1_FA03|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|Add0~2_combout\,
	datab => \PWM1_FA03|Add0~4_combout\,
	datac => \PWM1_FA03|Add0~0_combout\,
	datad => \PWM1_FA03|comp_out~q\,
	combout => \PWM1_FA03|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y27_N24
\PWM1_FA03|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|port_PWM01~0_combout\ = (\PWM1_FA03|Equal0~1_combout\ & ((\PWM1_FA03|Equal0~0_combout\) # ((\PWM1_FA03|port_PWM01~q\ & \PWM1_FA03|comp_out~q\)))) # (!\PWM1_FA03|Equal0~1_combout\ & (((\PWM1_FA03|port_PWM01~q\ & \PWM1_FA03|comp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|Equal0~1_combout\,
	datab => \PWM1_FA03|Equal0~0_combout\,
	datac => \PWM1_FA03|port_PWM01~q\,
	datad => \PWM1_FA03|comp_out~q\,
	combout => \PWM1_FA03|port_PWM01~0_combout\);

-- Location: FF_X35_Y27_N25
\PWM1_FA03|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|port_PWM01~q\);

-- Location: FF_X31_Y22_N9
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

-- Location: LCCOMB_X31_Y22_N22
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

-- Location: LCCOMB_X31_Y22_N24
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

-- Location: LCCOMB_X31_Y22_N2
\PWM1_FA01|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~17_combout\ = (\PWM1_FA01|Add1~11_combout\ & !\PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|Add1~11_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add1~17_combout\);

-- Location: FF_X31_Y22_N3
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

-- Location: LCCOMB_X31_Y22_N26
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

-- Location: LCCOMB_X31_Y22_N28
\PWM1_FA01|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~15_combout\ = (\PWM1_FA01|Add1~13_combout\ & !\PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA01|Add1~13_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add1~15_combout\);

-- Location: FF_X31_Y22_N29
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

-- Location: LCCOMB_X31_Y22_N14
\PWM1_FA01|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~0_combout\ = (\PWM1_FA01|LessThan2~1_combout\ & (\PWM1_FA01|var_Dead_Count2\(0) $ (VCC))) # (!\PWM1_FA01|LessThan2~1_combout\ & (\PWM1_FA01|var_Dead_Count2\(0) & VCC))
-- \PWM1_FA01|Add1~1\ = CARRY((\PWM1_FA01|LessThan2~1_combout\ & \PWM1_FA01|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|LessThan2~1_combout\,
	datab => \PWM1_FA01|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM1_FA01|Add1~0_combout\,
	cout => \PWM1_FA01|Add1~1\);

-- Location: LCCOMB_X31_Y22_N0
\PWM1_FA01|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~18_combout\ = (\PWM1_FA01|Add1~0_combout\ & !\PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA01|Add1~0_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add1~18_combout\);

-- Location: FF_X31_Y22_N1
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

-- Location: LCCOMB_X31_Y22_N30
\PWM1_FA01|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan2~0_combout\ = (((!\PWM1_FA01|var_Dead_Count2\(1)) # (!\PWM1_FA01|var_Dead_Count2\(3))) # (!\PWM1_FA01|var_Dead_Count2\(0))) # (!\PWM1_FA01|var_Dead_Count2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count2\(2),
	datab => \PWM1_FA01|var_Dead_Count2\(0),
	datac => \PWM1_FA01|var_Dead_Count2\(3),
	datad => \PWM1_FA01|var_Dead_Count2\(1),
	combout => \PWM1_FA01|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y22_N12
\PWM1_FA01|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|LessThan2~1_combout\ = (!\PWM1_FA01|var_Dead_Count2\(5) & (!\PWM1_FA01|var_Dead_Count2\(6) & (\PWM1_FA01|LessThan2~0_combout\ & !\PWM1_FA01|var_Dead_Count2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|var_Dead_Count2\(5),
	datab => \PWM1_FA01|var_Dead_Count2\(6),
	datac => \PWM1_FA01|LessThan2~0_combout\,
	datad => \PWM1_FA01|var_Dead_Count2\(4),
	combout => \PWM1_FA01|LessThan2~1_combout\);

-- Location: LCCOMB_X31_Y22_N16
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

-- Location: LCCOMB_X32_Y22_N22
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

-- Location: FF_X32_Y22_N23
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

-- Location: LCCOMB_X31_Y22_N18
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

-- Location: LCCOMB_X31_Y22_N10
\PWM1_FA01|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~20_combout\ = (\PWM1_FA01|Add1~4_combout\ & !\PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|Add1~4_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add1~20_combout\);

-- Location: FF_X31_Y22_N11
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

-- Location: LCCOMB_X31_Y22_N20
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

-- Location: LCCOMB_X31_Y22_N4
\PWM1_FA01|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~8_combout\ = (\PWM1_FA01|Add1~6_combout\ & !\PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA01|Add1~6_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add1~8_combout\);

-- Location: FF_X31_Y22_N5
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

-- Location: LCCOMB_X31_Y22_N8
\PWM1_FA01|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Add1~16_combout\ = (\PWM1_FA01|Add1~9_combout\ & !\PWM1_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA01|Add1~9_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Add1~16_combout\);

-- Location: LCCOMB_X31_Y22_N6
\PWM1_FA01|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Equal1~1_combout\ = (!\PWM1_FA01|Add1~16_combout\ & (!\PWM1_FA01|Add1~17_combout\ & (\PWM1_FA01|Add1~8_combout\ & !\PWM1_FA01|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Add1~16_combout\,
	datab => \PWM1_FA01|Add1~17_combout\,
	datac => \PWM1_FA01|Add1~8_combout\,
	datad => \PWM1_FA01|Add1~15_combout\,
	combout => \PWM1_FA01|Equal1~1_combout\);

-- Location: LCCOMB_X32_Y22_N24
\PWM1_FA01|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|Equal1~0_combout\ = (\PWM1_FA01|Add1~0_combout\ & (\PWM1_FA01|Add1~4_combout\ & (\PWM1_FA01|Add1~2_combout\ & !\PWM1_FA01|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Add1~0_combout\,
	datab => \PWM1_FA01|Add1~4_combout\,
	datac => \PWM1_FA01|Add1~2_combout\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y22_N8
\PWM1_FA01|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA01|port_PWM02~0_combout\ = (\PWM1_FA01|Equal1~1_combout\ & ((\PWM1_FA01|Equal1~0_combout\) # ((\PWM1_FA01|port_PWM02~q\ & !\PWM1_FA01|comp_out~q\)))) # (!\PWM1_FA01|Equal1~1_combout\ & (((\PWM1_FA01|port_PWM02~q\ & !\PWM1_FA01|comp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA01|Equal1~1_combout\,
	datab => \PWM1_FA01|Equal1~0_combout\,
	datac => \PWM1_FA01|port_PWM02~q\,
	datad => \PWM1_FA01|comp_out~q\,
	combout => \PWM1_FA01|port_PWM02~0_combout\);

-- Location: FF_X32_Y22_N9
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

-- Location: LCCOMB_X26_Y20_N10
\PWM1_FA02|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~19_combout\ = (\PWM1_FA02|Add1~2_combout\ & !\PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|Add1~2_combout\,
	datad => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add1~19_combout\);

-- Location: FF_X26_Y20_N11
\PWM1_FA02|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count2\(1));

-- Location: LCCOMB_X24_Y20_N8
\PWM1_FA02|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~2_combout\ = (\PWM1_FA02|var_Dead_Count2\(1) & (!\PWM1_FA02|Add1~1\)) # (!\PWM1_FA02|var_Dead_Count2\(1) & ((\PWM1_FA02|Add1~1\) # (GND)))
-- \PWM1_FA02|Add1~3\ = CARRY((!\PWM1_FA02|Add1~1\) # (!\PWM1_FA02|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM1_FA02|Add1~1\,
	combout => \PWM1_FA02|Add1~2_combout\,
	cout => \PWM1_FA02|Add1~3\);

-- Location: LCCOMB_X24_Y20_N10
\PWM1_FA02|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~4_combout\ = (\PWM1_FA02|var_Dead_Count2\(2) & (\PWM1_FA02|Add1~3\ $ (GND))) # (!\PWM1_FA02|var_Dead_Count2\(2) & (!\PWM1_FA02|Add1~3\ & VCC))
-- \PWM1_FA02|Add1~5\ = CARRY((\PWM1_FA02|var_Dead_Count2\(2) & !\PWM1_FA02|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM1_FA02|Add1~3\,
	combout => \PWM1_FA02|Add1~4_combout\,
	cout => \PWM1_FA02|Add1~5\);

-- Location: LCCOMB_X24_Y20_N26
\PWM1_FA02|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~20_combout\ = (\PWM1_FA02|Add1~4_combout\ & !\PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|Add1~4_combout\,
	datad => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add1~20_combout\);

-- Location: FF_X24_Y20_N27
\PWM1_FA02|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count2\(2));

-- Location: LCCOMB_X24_Y20_N12
\PWM1_FA02|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~6_combout\ = (\PWM1_FA02|var_Dead_Count2\(3) & (!\PWM1_FA02|Add1~5\)) # (!\PWM1_FA02|var_Dead_Count2\(3) & ((\PWM1_FA02|Add1~5\) # (GND)))
-- \PWM1_FA02|Add1~7\ = CARRY((!\PWM1_FA02|Add1~5\) # (!\PWM1_FA02|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA02|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM1_FA02|Add1~5\,
	combout => \PWM1_FA02|Add1~6_combout\,
	cout => \PWM1_FA02|Add1~7\);

-- Location: LCCOMB_X24_Y20_N4
\PWM1_FA02|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~8_combout\ = (\PWM1_FA02|Add1~6_combout\ & !\PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|Add1~6_combout\,
	datad => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add1~8_combout\);

-- Location: FF_X24_Y20_N5
\PWM1_FA02|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count2\(3));

-- Location: LCCOMB_X24_Y20_N14
\PWM1_FA02|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~9_combout\ = (\PWM1_FA02|var_Dead_Count2\(4) & (\PWM1_FA02|Add1~7\ $ (GND))) # (!\PWM1_FA02|var_Dead_Count2\(4) & (!\PWM1_FA02|Add1~7\ & VCC))
-- \PWM1_FA02|Add1~10\ = CARRY((\PWM1_FA02|var_Dead_Count2\(4) & !\PWM1_FA02|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM1_FA02|Add1~7\,
	combout => \PWM1_FA02|Add1~9_combout\,
	cout => \PWM1_FA02|Add1~10\);

-- Location: LCCOMB_X24_Y20_N30
\PWM1_FA02|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~16_combout\ = (\PWM1_FA02|Add1~9_combout\ & !\PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA02|Add1~9_combout\,
	datad => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add1~16_combout\);

-- Location: FF_X24_Y20_N31
\PWM1_FA02|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count2\(4));

-- Location: LCCOMB_X24_Y20_N16
\PWM1_FA02|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~11_combout\ = (\PWM1_FA02|var_Dead_Count2\(5) & (!\PWM1_FA02|Add1~10\)) # (!\PWM1_FA02|var_Dead_Count2\(5) & ((\PWM1_FA02|Add1~10\) # (GND)))
-- \PWM1_FA02|Add1~12\ = CARRY((!\PWM1_FA02|Add1~10\) # (!\PWM1_FA02|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM1_FA02|Add1~10\,
	combout => \PWM1_FA02|Add1~11_combout\,
	cout => \PWM1_FA02|Add1~12\);

-- Location: LCCOMB_X24_Y20_N24
\PWM1_FA02|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~17_combout\ = (\PWM1_FA02|Add1~11_combout\ & !\PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA02|Add1~11_combout\,
	datad => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add1~17_combout\);

-- Location: FF_X24_Y20_N25
\PWM1_FA02|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count2\(5));

-- Location: LCCOMB_X24_Y20_N18
\PWM1_FA02|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~13_combout\ = \PWM1_FA02|Add1~12\ $ (!\PWM1_FA02|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM1_FA02|var_Dead_Count2\(6),
	cin => \PWM1_FA02|Add1~12\,
	combout => \PWM1_FA02|Add1~13_combout\);

-- Location: LCCOMB_X24_Y20_N2
\PWM1_FA02|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~15_combout\ = (\PWM1_FA02|Add1~13_combout\ & !\PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA02|Add1~13_combout\,
	datad => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add1~15_combout\);

-- Location: FF_X24_Y20_N3
\PWM1_FA02|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count2\(6));

-- Location: LCCOMB_X24_Y20_N6
\PWM1_FA02|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~0_combout\ = (\PWM1_FA02|LessThan2~1_combout\ & (\PWM1_FA02|var_Dead_Count2\(0) $ (VCC))) # (!\PWM1_FA02|LessThan2~1_combout\ & (\PWM1_FA02|var_Dead_Count2\(0) & VCC))
-- \PWM1_FA02|Add1~1\ = CARRY((\PWM1_FA02|LessThan2~1_combout\ & \PWM1_FA02|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|LessThan2~1_combout\,
	datab => \PWM1_FA02|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM1_FA02|Add1~0_combout\,
	cout => \PWM1_FA02|Add1~1\);

-- Location: LCCOMB_X24_Y20_N0
\PWM1_FA02|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Add1~18_combout\ = (\PWM1_FA02|Add1~0_combout\ & !\PWM1_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|Add1~0_combout\,
	datad => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Add1~18_combout\);

-- Location: FF_X24_Y20_N1
\PWM1_FA02|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|var_Dead_Count2\(0));

-- Location: LCCOMB_X24_Y20_N28
\PWM1_FA02|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|LessThan2~0_combout\ = (((!\PWM1_FA02|var_Dead_Count2\(1)) # (!\PWM1_FA02|var_Dead_Count2\(3))) # (!\PWM1_FA02|var_Dead_Count2\(0))) # (!\PWM1_FA02|var_Dead_Count2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|var_Dead_Count2\(2),
	datab => \PWM1_FA02|var_Dead_Count2\(0),
	datac => \PWM1_FA02|var_Dead_Count2\(3),
	datad => \PWM1_FA02|var_Dead_Count2\(1),
	combout => \PWM1_FA02|LessThan2~0_combout\);

-- Location: LCCOMB_X24_Y20_N20
\PWM1_FA02|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|LessThan2~1_combout\ = (!\PWM1_FA02|var_Dead_Count2\(5) & (!\PWM1_FA02|var_Dead_Count2\(6) & (!\PWM1_FA02|var_Dead_Count2\(4) & \PWM1_FA02|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|var_Dead_Count2\(5),
	datab => \PWM1_FA02|var_Dead_Count2\(6),
	datac => \PWM1_FA02|var_Dead_Count2\(4),
	datad => \PWM1_FA02|LessThan2~0_combout\,
	combout => \PWM1_FA02|LessThan2~1_combout\);

-- Location: LCCOMB_X26_Y20_N12
\PWM1_FA02|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Equal1~0_combout\ = (\PWM1_FA02|Add1~2_combout\ & (\PWM1_FA02|Add1~0_combout\ & (\PWM1_FA02|Add1~4_combout\ & !\PWM1_FA02|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|Add1~2_combout\,
	datab => \PWM1_FA02|Add1~0_combout\,
	datac => \PWM1_FA02|Add1~4_combout\,
	datad => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y20_N22
\PWM1_FA02|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|Equal1~1_combout\ = (!\PWM1_FA02|Add1~15_combout\ & (\PWM1_FA02|Add1~8_combout\ & (!\PWM1_FA02|Add1~16_combout\ & !\PWM1_FA02|Add1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|Add1~15_combout\,
	datab => \PWM1_FA02|Add1~8_combout\,
	datac => \PWM1_FA02|Add1~16_combout\,
	datad => \PWM1_FA02|Add1~17_combout\,
	combout => \PWM1_FA02|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y20_N8
\PWM1_FA02|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA02|port_PWM02~0_combout\ = (\PWM1_FA02|Equal1~0_combout\ & ((\PWM1_FA02|Equal1~1_combout\) # ((\PWM1_FA02|port_PWM02~q\ & !\PWM1_FA02|comp_out~q\)))) # (!\PWM1_FA02|Equal1~0_combout\ & (((\PWM1_FA02|port_PWM02~q\ & !\PWM1_FA02|comp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA02|Equal1~0_combout\,
	datab => \PWM1_FA02|Equal1~1_combout\,
	datac => \PWM1_FA02|port_PWM02~q\,
	datad => \PWM1_FA02|comp_out~q\,
	combout => \PWM1_FA02|port_PWM02~0_combout\);

-- Location: FF_X26_Y20_N9
\PWM1_FA02|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA02|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA02|port_PWM02~q\);

-- Location: LCCOMB_X35_Y27_N2
\PWM1_FA03|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~18_combout\ = (!\PWM1_FA03|comp_out~q\ & \PWM1_FA03|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|comp_out~q\,
	datad => \PWM1_FA03|Add1~0_combout\,
	combout => \PWM1_FA03|Add1~18_combout\);

-- Location: FF_X35_Y27_N3
\PWM1_FA03|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count2\(0));

-- Location: LCCOMB_X35_Y30_N12
\PWM1_FA03|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~0_combout\ = (\PWM1_FA03|LessThan2~1_combout\ & (\PWM1_FA03|var_Dead_Count2\(0) $ (VCC))) # (!\PWM1_FA03|LessThan2~1_combout\ & (\PWM1_FA03|var_Dead_Count2\(0) & VCC))
-- \PWM1_FA03|Add1~1\ = CARRY((\PWM1_FA03|LessThan2~1_combout\ & \PWM1_FA03|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|LessThan2~1_combout\,
	datab => \PWM1_FA03|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM1_FA03|Add1~0_combout\,
	cout => \PWM1_FA03|Add1~1\);

-- Location: LCCOMB_X35_Y30_N14
\PWM1_FA03|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~2_combout\ = (\PWM1_FA03|var_Dead_Count2\(1) & (!\PWM1_FA03|Add1~1\)) # (!\PWM1_FA03|var_Dead_Count2\(1) & ((\PWM1_FA03|Add1~1\) # (GND)))
-- \PWM1_FA03|Add1~3\ = CARRY((!\PWM1_FA03|Add1~1\) # (!\PWM1_FA03|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM1_FA03|Add1~1\,
	combout => \PWM1_FA03|Add1~2_combout\,
	cout => \PWM1_FA03|Add1~3\);

-- Location: LCCOMB_X35_Y30_N0
\PWM1_FA03|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~19_combout\ = (!\PWM1_FA03|comp_out~q\ & \PWM1_FA03|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|comp_out~q\,
	datac => \PWM1_FA03|Add1~2_combout\,
	combout => \PWM1_FA03|Add1~19_combout\);

-- Location: FF_X35_Y30_N1
\PWM1_FA03|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count2\(1));

-- Location: LCCOMB_X35_Y30_N16
\PWM1_FA03|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~4_combout\ = (\PWM1_FA03|var_Dead_Count2\(2) & (\PWM1_FA03|Add1~3\ $ (GND))) # (!\PWM1_FA03|var_Dead_Count2\(2) & (!\PWM1_FA03|Add1~3\ & VCC))
-- \PWM1_FA03|Add1~5\ = CARRY((\PWM1_FA03|var_Dead_Count2\(2) & !\PWM1_FA03|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM1_FA03|Add1~3\,
	combout => \PWM1_FA03|Add1~4_combout\,
	cout => \PWM1_FA03|Add1~5\);

-- Location: LCCOMB_X35_Y30_N26
\PWM1_FA03|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~20_combout\ = (!\PWM1_FA03|comp_out~q\ & \PWM1_FA03|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA03|comp_out~q\,
	datad => \PWM1_FA03|Add1~4_combout\,
	combout => \PWM1_FA03|Add1~20_combout\);

-- Location: FF_X35_Y30_N27
\PWM1_FA03|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count2\(2));

-- Location: LCCOMB_X35_Y30_N18
\PWM1_FA03|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~6_combout\ = (\PWM1_FA03|var_Dead_Count2\(3) & (!\PWM1_FA03|Add1~5\)) # (!\PWM1_FA03|var_Dead_Count2\(3) & ((\PWM1_FA03|Add1~5\) # (GND)))
-- \PWM1_FA03|Add1~7\ = CARRY((!\PWM1_FA03|Add1~5\) # (!\PWM1_FA03|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM1_FA03|Add1~5\,
	combout => \PWM1_FA03|Add1~6_combout\,
	cout => \PWM1_FA03|Add1~7\);

-- Location: LCCOMB_X35_Y30_N28
\PWM1_FA03|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~8_combout\ = (!\PWM1_FA03|comp_out~q\ & \PWM1_FA03|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA03|comp_out~q\,
	datad => \PWM1_FA03|Add1~6_combout\,
	combout => \PWM1_FA03|Add1~8_combout\);

-- Location: FF_X35_Y30_N29
\PWM1_FA03|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count2\(3));

-- Location: LCCOMB_X35_Y30_N30
\PWM1_FA03|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|LessThan2~0_combout\ = (((!\PWM1_FA03|var_Dead_Count2\(1)) # (!\PWM1_FA03|var_Dead_Count2\(0))) # (!\PWM1_FA03|var_Dead_Count2\(3))) # (!\PWM1_FA03|var_Dead_Count2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|var_Dead_Count2\(2),
	datab => \PWM1_FA03|var_Dead_Count2\(3),
	datac => \PWM1_FA03|var_Dead_Count2\(0),
	datad => \PWM1_FA03|var_Dead_Count2\(1),
	combout => \PWM1_FA03|LessThan2~0_combout\);

-- Location: LCCOMB_X35_Y30_N20
\PWM1_FA03|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~9_combout\ = (\PWM1_FA03|var_Dead_Count2\(4) & (\PWM1_FA03|Add1~7\ $ (GND))) # (!\PWM1_FA03|var_Dead_Count2\(4) & (!\PWM1_FA03|Add1~7\ & VCC))
-- \PWM1_FA03|Add1~10\ = CARRY((\PWM1_FA03|var_Dead_Count2\(4) & !\PWM1_FA03|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM1_FA03|Add1~7\,
	combout => \PWM1_FA03|Add1~9_combout\,
	cout => \PWM1_FA03|Add1~10\);

-- Location: LCCOMB_X35_Y30_N8
\PWM1_FA03|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~16_combout\ = (!\PWM1_FA03|comp_out~q\ & \PWM1_FA03|Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA03|comp_out~q\,
	datad => \PWM1_FA03|Add1~9_combout\,
	combout => \PWM1_FA03|Add1~16_combout\);

-- Location: FF_X35_Y30_N9
\PWM1_FA03|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count2\(4));

-- Location: LCCOMB_X35_Y30_N22
\PWM1_FA03|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~11_combout\ = (\PWM1_FA03|var_Dead_Count2\(5) & (!\PWM1_FA03|Add1~10\)) # (!\PWM1_FA03|var_Dead_Count2\(5) & ((\PWM1_FA03|Add1~10\) # (GND)))
-- \PWM1_FA03|Add1~12\ = CARRY((!\PWM1_FA03|Add1~10\) # (!\PWM1_FA03|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FA03|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM1_FA03|Add1~10\,
	combout => \PWM1_FA03|Add1~11_combout\,
	cout => \PWM1_FA03|Add1~12\);

-- Location: LCCOMB_X35_Y30_N2
\PWM1_FA03|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~17_combout\ = (!\PWM1_FA03|comp_out~q\ & \PWM1_FA03|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|comp_out~q\,
	datac => \PWM1_FA03|Add1~11_combout\,
	combout => \PWM1_FA03|Add1~17_combout\);

-- Location: FF_X35_Y30_N3
\PWM1_FA03|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count2\(5));

-- Location: LCCOMB_X35_Y30_N24
\PWM1_FA03|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~13_combout\ = \PWM1_FA03|Add1~12\ $ (!\PWM1_FA03|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM1_FA03|var_Dead_Count2\(6),
	cin => \PWM1_FA03|Add1~12\,
	combout => \PWM1_FA03|Add1~13_combout\);

-- Location: LCCOMB_X35_Y30_N10
\PWM1_FA03|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Add1~15_combout\ = (!\PWM1_FA03|comp_out~q\ & \PWM1_FA03|Add1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FA03|comp_out~q\,
	datad => \PWM1_FA03|Add1~13_combout\,
	combout => \PWM1_FA03|Add1~15_combout\);

-- Location: FF_X35_Y30_N11
\PWM1_FA03|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|var_Dead_Count2\(6));

-- Location: LCCOMB_X35_Y30_N4
\PWM1_FA03|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|LessThan2~1_combout\ = (\PWM1_FA03|LessThan2~0_combout\ & (!\PWM1_FA03|var_Dead_Count2\(5) & (!\PWM1_FA03|var_Dead_Count2\(4) & !\PWM1_FA03|var_Dead_Count2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|LessThan2~0_combout\,
	datab => \PWM1_FA03|var_Dead_Count2\(5),
	datac => \PWM1_FA03|var_Dead_Count2\(4),
	datad => \PWM1_FA03|var_Dead_Count2\(6),
	combout => \PWM1_FA03|LessThan2~1_combout\);

-- Location: LCCOMB_X35_Y27_N12
\PWM1_FA03|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Equal1~0_combout\ = (\PWM1_FA03|Add1~0_combout\ & (\PWM1_FA03|Add1~4_combout\ & (\PWM1_FA03|Add1~2_combout\ & !\PWM1_FA03|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|Add1~0_combout\,
	datab => \PWM1_FA03|Add1~4_combout\,
	datac => \PWM1_FA03|Add1~2_combout\,
	datad => \PWM1_FA03|comp_out~q\,
	combout => \PWM1_FA03|Equal1~0_combout\);

-- Location: LCCOMB_X35_Y30_N6
\PWM1_FA03|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|Equal1~1_combout\ = (!\PWM1_FA03|Add1~16_combout\ & (!\PWM1_FA03|Add1~17_combout\ & (!\PWM1_FA03|Add1~15_combout\ & \PWM1_FA03|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|Add1~16_combout\,
	datab => \PWM1_FA03|Add1~17_combout\,
	datac => \PWM1_FA03|Add1~15_combout\,
	datad => \PWM1_FA03|Add1~8_combout\,
	combout => \PWM1_FA03|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y27_N18
\PWM1_FA03|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FA03|port_PWM02~0_combout\ = (\PWM1_FA03|Equal1~0_combout\ & ((\PWM1_FA03|Equal1~1_combout\) # ((!\PWM1_FA03|comp_out~q\ & \PWM1_FA03|port_PWM02~q\)))) # (!\PWM1_FA03|Equal1~0_combout\ & (!\PWM1_FA03|comp_out~q\ & (\PWM1_FA03|port_PWM02~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FA03|Equal1~0_combout\,
	datab => \PWM1_FA03|comp_out~q\,
	datac => \PWM1_FA03|port_PWM02~q\,
	datad => \PWM1_FA03|Equal1~1_combout\,
	combout => \PWM1_FA03|port_PWM02~0_combout\);

-- Location: FF_X35_Y27_N19
\PWM1_FA03|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FA03|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FA03|port_PWM02~q\);

-- Location: LCCOMB_X25_Y26_N0
\ucr2|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~1_cout\ = CARRY(!\ucr6|c_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr6|c_int\(0),
	datad => VCC,
	cout => \ucr2|Add2~1_cout\);

-- Location: LCCOMB_X25_Y26_N2
\ucr2|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~2_combout\ = (\ucr2|c_int\(1) & (!\ucr2|Add2~1_cout\)) # (!\ucr2|c_int\(1) & (\ucr2|Add2~1_cout\ & VCC))
-- \ucr2|Add2~3\ = CARRY((\ucr2|c_int\(1) & !\ucr2|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(1),
	datad => VCC,
	cin => \ucr2|Add2~1_cout\,
	combout => \ucr2|Add2~2_combout\,
	cout => \ucr2|Add2~3\);

-- Location: LCCOMB_X27_Y26_N0
\ucr2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~0_combout\ = (\ucr6|c_int\(0) & (!\ucr2|c_int\(1) & VCC)) # (!\ucr6|c_int\(0) & (\ucr2|c_int\(1) $ (GND)))
-- \ucr2|Add1~1\ = CARRY((!\ucr6|c_int\(0) & !\ucr2|c_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(0),
	datab => \ucr2|c_int\(1),
	datad => VCC,
	combout => \ucr2|Add1~0_combout\,
	cout => \ucr2|Add1~1\);

-- Location: LCCOMB_X26_Y26_N26
\ucr2|Add2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~41_combout\ = (\ucr2|c_int[9]~7_combout\ & (!\ucr2|Add2~2_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((!\ucr2|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|Add2~2_combout\,
	datac => \ucr2|Add1~0_combout\,
	datad => \ucr2|c_int[9]~7_combout\,
	combout => \ucr2|Add2~41_combout\);

-- Location: FF_X26_Y26_N27
\ucr2|c_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~41_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(1));

-- Location: LCCOMB_X25_Y26_N4
\ucr2|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~4_combout\ = (\ucr2|c_int\(2) & (\ucr2|Add2~3\ $ (GND))) # (!\ucr2|c_int\(2) & ((GND) # (!\ucr2|Add2~3\)))
-- \ucr2|Add2~5\ = CARRY((!\ucr2|Add2~3\) # (!\ucr2|c_int\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(2),
	datad => VCC,
	cin => \ucr2|Add2~3\,
	combout => \ucr2|Add2~4_combout\,
	cout => \ucr2|Add2~5\);

-- Location: LCCOMB_X27_Y26_N2
\ucr2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~2_combout\ = (\ucr2|c_int\(2) & ((\ucr2|Add1~1\) # (GND))) # (!\ucr2|c_int\(2) & (!\ucr2|Add1~1\))
-- \ucr2|Add1~3\ = CARRY((\ucr2|c_int\(2)) # (!\ucr2|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(2),
	datad => VCC,
	cin => \ucr2|Add1~1\,
	combout => \ucr2|Add1~2_combout\,
	cout => \ucr2|Add1~3\);

-- Location: LCCOMB_X26_Y26_N0
\ucr2|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~40_combout\ = (\ucr2|c_int[9]~7_combout\ & (!\ucr2|Add2~4_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((!\ucr2|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int[9]~7_combout\,
	datac => \ucr2|Add2~4_combout\,
	datad => \ucr2|Add1~2_combout\,
	combout => \ucr2|Add2~40_combout\);

-- Location: FF_X26_Y26_N1
\ucr2|c_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~40_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(2));

-- Location: LCCOMB_X25_Y26_N6
\ucr2|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~6_combout\ = (\ucr2|c_int\(3) & (\ucr2|Add2~5\ & VCC)) # (!\ucr2|c_int\(3) & (!\ucr2|Add2~5\))
-- \ucr2|Add2~7\ = CARRY((!\ucr2|c_int\(3) & !\ucr2|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(3),
	datad => VCC,
	cin => \ucr2|Add2~5\,
	combout => \ucr2|Add2~6_combout\,
	cout => \ucr2|Add2~7\);

-- Location: LCCOMB_X25_Y26_N8
\ucr2|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~8_combout\ = (\ucr2|c_int\(4) & (\ucr2|Add2~7\ $ (GND))) # (!\ucr2|c_int\(4) & ((GND) # (!\ucr2|Add2~7\)))
-- \ucr2|Add2~9\ = CARRY((!\ucr2|Add2~7\) # (!\ucr2|c_int\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(4),
	datad => VCC,
	cin => \ucr2|Add2~7\,
	combout => \ucr2|Add2~8_combout\,
	cout => \ucr2|Add2~9\);

-- Location: LCCOMB_X27_Y26_N4
\ucr2|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~4_combout\ = (\ucr2|c_int\(3) & (\ucr2|Add1~3\ $ (GND))) # (!\ucr2|c_int\(3) & (!\ucr2|Add1~3\ & VCC))
-- \ucr2|Add1~5\ = CARRY((\ucr2|c_int\(3) & !\ucr2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(3),
	datad => VCC,
	cin => \ucr2|Add1~3\,
	combout => \ucr2|Add1~4_combout\,
	cout => \ucr2|Add1~5\);

-- Location: LCCOMB_X27_Y26_N6
\ucr2|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~6_combout\ = (\ucr2|c_int\(4) & ((\ucr2|Add1~5\) # (GND))) # (!\ucr2|c_int\(4) & (!\ucr2|Add1~5\))
-- \ucr2|Add1~7\ = CARRY((\ucr2|c_int\(4)) # (!\ucr2|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(4),
	datad => VCC,
	cin => \ucr2|Add1~5\,
	combout => \ucr2|Add1~6_combout\,
	cout => \ucr2|Add1~7\);

-- Location: LCCOMB_X26_Y26_N16
\ucr2|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~44_combout\ = (\ucr2|c_int[9]~7_combout\ & (!\ucr2|Add2~8_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((!\ucr2|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|Add2~8_combout\,
	datab => \ucr2|c_int[9]~7_combout\,
	datad => \ucr2|Add1~6_combout\,
	combout => \ucr2|Add2~44_combout\);

-- Location: FF_X26_Y26_N17
\ucr2|c_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~44_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(4));

-- Location: LCCOMB_X25_Y26_N10
\ucr2|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~10_combout\ = (\ucr2|c_int\(5) & (!\ucr2|Add2~9\)) # (!\ucr2|c_int\(5) & (\ucr2|Add2~9\ & VCC))
-- \ucr2|Add2~11\ = CARRY((\ucr2|c_int\(5) & !\ucr2|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(5),
	datad => VCC,
	cin => \ucr2|Add2~9\,
	combout => \ucr2|Add2~10_combout\,
	cout => \ucr2|Add2~11\);

-- Location: LCCOMB_X27_Y26_N8
\ucr2|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~8_combout\ = (\ucr2|c_int\(5) & (!\ucr2|Add1~7\ & VCC)) # (!\ucr2|c_int\(5) & (\ucr2|Add1~7\ $ (GND)))
-- \ucr2|Add1~9\ = CARRY((!\ucr2|c_int\(5) & !\ucr2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(5),
	datad => VCC,
	cin => \ucr2|Add1~7\,
	combout => \ucr2|Add1~8_combout\,
	cout => \ucr2|Add1~9\);

-- Location: LCCOMB_X26_Y26_N14
\ucr2|Add2~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~43_combout\ = (\ucr2|c_int[9]~7_combout\ & (!\ucr2|Add2~10_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((!\ucr2|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|Add2~10_combout\,
	datac => \ucr2|Add1~8_combout\,
	datad => \ucr2|c_int[9]~7_combout\,
	combout => \ucr2|Add2~43_combout\);

-- Location: FF_X26_Y26_N15
\ucr2|c_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~43_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(5));

-- Location: LCCOMB_X25_Y26_N12
\ucr2|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~12_combout\ = (\ucr2|c_int\(6) & ((GND) # (!\ucr2|Add2~11\))) # (!\ucr2|c_int\(6) & (\ucr2|Add2~11\ $ (GND)))
-- \ucr2|Add2~13\ = CARRY((\ucr2|c_int\(6)) # (!\ucr2|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(6),
	datad => VCC,
	cin => \ucr2|Add2~11\,
	combout => \ucr2|Add2~12_combout\,
	cout => \ucr2|Add2~13\);

-- Location: LCCOMB_X27_Y26_N10
\ucr2|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~10_combout\ = (\ucr2|c_int\(6) & (!\ucr2|Add1~9\)) # (!\ucr2|c_int\(6) & ((\ucr2|Add1~9\) # (GND)))
-- \ucr2|Add1~11\ = CARRY((!\ucr2|Add1~9\) # (!\ucr2|c_int\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(6),
	datad => VCC,
	cin => \ucr2|Add1~9\,
	combout => \ucr2|Add1~10_combout\,
	cout => \ucr2|Add1~11\);

-- Location: LCCOMB_X26_Y26_N4
\ucr2|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~46_combout\ = (\ucr2|c_int[9]~7_combout\ & (\ucr2|Add2~12_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((\ucr2|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|Add2~12_combout\,
	datac => \ucr2|Add1~10_combout\,
	datad => \ucr2|c_int[9]~7_combout\,
	combout => \ucr2|Add2~46_combout\);

-- Location: FF_X26_Y26_N5
\ucr2|c_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~46_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(6));

-- Location: LCCOMB_X25_Y26_N14
\ucr2|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~14_combout\ = (\ucr2|c_int\(7) & (\ucr2|Add2~13\ & VCC)) # (!\ucr2|c_int\(7) & (!\ucr2|Add2~13\))
-- \ucr2|Add2~15\ = CARRY((!\ucr2|c_int\(7) & !\ucr2|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(7),
	datad => VCC,
	cin => \ucr2|Add2~13\,
	combout => \ucr2|Add2~14_combout\,
	cout => \ucr2|Add2~15\);

-- Location: LCCOMB_X27_Y26_N12
\ucr2|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~12_combout\ = (\ucr2|c_int\(7) & (\ucr2|Add1~11\ $ (GND))) # (!\ucr2|c_int\(7) & (!\ucr2|Add1~11\ & VCC))
-- \ucr2|Add1~13\ = CARRY((\ucr2|c_int\(7) & !\ucr2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(7),
	datad => VCC,
	cin => \ucr2|Add1~11\,
	combout => \ucr2|Add1~12_combout\,
	cout => \ucr2|Add1~13\);

-- Location: LCCOMB_X26_Y26_N18
\ucr2|Add2~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~45_combout\ = (\ucr2|c_int[9]~7_combout\ & (\ucr2|Add2~14_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((\ucr2|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|Add2~14_combout\,
	datac => \ucr2|Add1~12_combout\,
	datad => \ucr2|c_int[9]~7_combout\,
	combout => \ucr2|Add2~45_combout\);

-- Location: FF_X26_Y26_N19
\ucr2|c_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~45_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(7));

-- Location: LCCOMB_X25_Y26_N16
\ucr2|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~16_combout\ = (\ucr2|c_int\(8) & (\ucr2|Add2~15\ $ (GND))) # (!\ucr2|c_int\(8) & ((GND) # (!\ucr2|Add2~15\)))
-- \ucr2|Add2~17\ = CARRY((!\ucr2|Add2~15\) # (!\ucr2|c_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(8),
	datad => VCC,
	cin => \ucr2|Add2~15\,
	combout => \ucr2|Add2~16_combout\,
	cout => \ucr2|Add2~17\);

-- Location: LCCOMB_X27_Y26_N14
\ucr2|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~14_combout\ = (\ucr2|c_int\(8) & ((\ucr2|Add1~13\) # (GND))) # (!\ucr2|c_int\(8) & (!\ucr2|Add1~13\))
-- \ucr2|Add1~15\ = CARRY((\ucr2|c_int\(8)) # (!\ucr2|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(8),
	datad => VCC,
	cin => \ucr2|Add1~13\,
	combout => \ucr2|Add1~14_combout\,
	cout => \ucr2|Add1~15\);

-- Location: LCCOMB_X27_Y26_N30
\ucr2|Add2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~39_combout\ = (\ucr2|c_int[9]~7_combout\ & (!\ucr2|Add2~16_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((!\ucr2|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|Add2~16_combout\,
	datac => \ucr2|Add1~14_combout\,
	datad => \ucr2|c_int[9]~7_combout\,
	combout => \ucr2|Add2~39_combout\);

-- Location: FF_X27_Y26_N31
\ucr2|c_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~39_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(8));

-- Location: LCCOMB_X27_Y26_N16
\ucr2|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~16_combout\ = (\ucr2|c_int\(9) & (\ucr2|Add1~15\ $ (GND))) # (!\ucr2|c_int\(9) & (!\ucr2|Add1~15\ & VCC))
-- \ucr2|Add1~17\ = CARRY((\ucr2|c_int\(9) & !\ucr2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(9),
	datad => VCC,
	cin => \ucr2|Add1~15\,
	combout => \ucr2|Add1~16_combout\,
	cout => \ucr2|Add1~17\);

-- Location: LCCOMB_X25_Y26_N18
\ucr2|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~18_combout\ = (\ucr2|c_int\(9) & (\ucr2|Add2~17\ & VCC)) # (!\ucr2|c_int\(9) & (!\ucr2|Add2~17\))
-- \ucr2|Add2~19\ = CARRY((!\ucr2|c_int\(9) & !\ucr2|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(9),
	datad => VCC,
	cin => \ucr2|Add2~17\,
	combout => \ucr2|Add2~18_combout\,
	cout => \ucr2|Add2~19\);

-- Location: LCCOMB_X24_Y26_N30
\ucr2|Add2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~37_combout\ = (\ucr2|c_int[9]~7_combout\ & ((\ucr2|Add2~18_combout\))) # (!\ucr2|c_int[9]~7_combout\ & (\ucr2|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|Add1~16_combout\,
	datab => \ucr2|Add2~18_combout\,
	datac => \ucr2|c_int[9]~7_combout\,
	combout => \ucr2|Add2~37_combout\);

-- Location: FF_X24_Y26_N31
\ucr2|c_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~37_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(9));

-- Location: LCCOMB_X27_Y26_N18
\ucr2|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~18_combout\ = (\ucr2|c_int\(10) & ((\ucr2|Add1~17\) # (GND))) # (!\ucr2|c_int\(10) & (!\ucr2|Add1~17\))
-- \ucr2|Add1~19\ = CARRY((\ucr2|c_int\(10)) # (!\ucr2|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(10),
	datad => VCC,
	cin => \ucr2|Add1~17\,
	combout => \ucr2|Add1~18_combout\,
	cout => \ucr2|Add1~19\);

-- Location: LCCOMB_X25_Y26_N20
\ucr2|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~20_combout\ = (\ucr2|c_int\(10) & (\ucr2|Add2~19\ $ (GND))) # (!\ucr2|c_int\(10) & ((GND) # (!\ucr2|Add2~19\)))
-- \ucr2|Add2~21\ = CARRY((!\ucr2|Add2~19\) # (!\ucr2|c_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(10),
	datad => VCC,
	cin => \ucr2|Add2~19\,
	combout => \ucr2|Add2~20_combout\,
	cout => \ucr2|Add2~21\);

-- Location: LCCOMB_X24_Y26_N10
\ucr2|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~22_combout\ = (\ucr2|c_int[9]~7_combout\ & ((!\ucr2|Add2~20_combout\))) # (!\ucr2|c_int[9]~7_combout\ & (!\ucr2|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[9]~7_combout\,
	datac => \ucr2|Add1~18_combout\,
	datad => \ucr2|Add2~20_combout\,
	combout => \ucr2|Add2~22_combout\);

-- Location: FF_X24_Y26_N11
\ucr2|c_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~22_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(10));

-- Location: LCCOMB_X26_Y26_N20
\ucr2|c_int[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[9]~5_combout\ = (\ucr2|c_int\(9)) # (((\ucr2|c_int\(3)) # (!\ucr2|c_int\(10))) # (!\ucr2|c_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(9),
	datab => \ucr2|c_int\(8),
	datac => \ucr2|c_int\(10),
	datad => \ucr2|c_int\(3),
	combout => \ucr2|c_int[9]~5_combout\);

-- Location: LCCOMB_X26_Y26_N30
\ucr2|c_int[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[9]~6_combout\ = ((\ucr2|c_int[9]~5_combout\) # ((!\ucr2|c_int\(1)) # (!\ucr6|c_int\(0)))) # (!\ucr2|c_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(2),
	datab => \ucr2|c_int[9]~5_combout\,
	datac => \ucr6|c_int\(0),
	datad => \ucr2|c_int\(1),
	combout => \ucr2|c_int[9]~6_combout\);

-- Location: LCCOMB_X26_Y25_N0
\PWM2_FA01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan0~1_combout\ = (\ucr2|c_int\(4) & (\ucr2|c_int\(5) & (!\ucr2|c_int\(6) & !\ucr2|c_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(4),
	datab => \ucr2|c_int\(5),
	datac => \ucr2|c_int\(6),
	datad => \ucr2|c_int\(7),
	combout => \PWM2_FA01|LessThan0~1_combout\);

-- Location: FF_X26_Y26_N3
\ucr2|dir_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|c_int[9]~7_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|dir_int~q\);

-- Location: LCCOMB_X25_Y26_N22
\ucr2|Add2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~23_combout\ = (\ucr2|c_int\(11) & (\ucr2|Add2~21\ & VCC)) # (!\ucr2|c_int\(11) & (!\ucr2|Add2~21\))
-- \ucr2|Add2~24\ = CARRY((!\ucr2|c_int\(11) & !\ucr2|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(11),
	datad => VCC,
	cin => \ucr2|Add2~21\,
	combout => \ucr2|Add2~23_combout\,
	cout => \ucr2|Add2~24\);

-- Location: LCCOMB_X27_Y26_N20
\ucr2|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~20_combout\ = (\ucr2|c_int\(11) & (\ucr2|Add1~19\ $ (GND))) # (!\ucr2|c_int\(11) & (!\ucr2|Add1~19\ & VCC))
-- \ucr2|Add1~21\ = CARRY((\ucr2|c_int\(11) & !\ucr2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(11),
	datad => VCC,
	cin => \ucr2|Add1~19\,
	combout => \ucr2|Add1~20_combout\,
	cout => \ucr2|Add1~21\);

-- Location: LCCOMB_X24_Y26_N8
\ucr2|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~38_combout\ = (\ucr2|c_int[9]~7_combout\ & (\ucr2|Add2~23_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((\ucr2|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[9]~7_combout\,
	datab => \ucr2|Add2~23_combout\,
	datad => \ucr2|Add1~20_combout\,
	combout => \ucr2|Add2~38_combout\);

-- Location: FF_X24_Y26_N9
\ucr2|c_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~38_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(11));

-- Location: LCCOMB_X25_Y26_N24
\ucr2|Add2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~25_combout\ = (\ucr2|c_int\(12) & ((GND) # (!\ucr2|Add2~24\))) # (!\ucr2|c_int\(12) & (\ucr2|Add2~24\ $ (GND)))
-- \ucr2|Add2~26\ = CARRY((\ucr2|c_int\(12)) # (!\ucr2|Add2~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(12),
	datad => VCC,
	cin => \ucr2|Add2~24\,
	combout => \ucr2|Add2~25_combout\,
	cout => \ucr2|Add2~26\);

-- Location: LCCOMB_X27_Y26_N22
\ucr2|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~22_combout\ = (\ucr2|c_int\(12) & (!\ucr2|Add1~21\)) # (!\ucr2|c_int\(12) & ((\ucr2|Add1~21\) # (GND)))
-- \ucr2|Add1~23\ = CARRY((!\ucr2|Add1~21\) # (!\ucr2|c_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(12),
	datad => VCC,
	cin => \ucr2|Add1~21\,
	combout => \ucr2|Add1~22_combout\,
	cout => \ucr2|Add1~23\);

-- Location: LCCOMB_X24_Y26_N2
\ucr2|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~36_combout\ = (\ucr2|c_int[9]~7_combout\ & (\ucr2|Add2~25_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((\ucr2|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[9]~7_combout\,
	datac => \ucr2|Add2~25_combout\,
	datad => \ucr2|Add1~22_combout\,
	combout => \ucr2|Add2~36_combout\);

-- Location: FF_X24_Y26_N3
\ucr2|c_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~36_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(12));

-- Location: LCCOMB_X25_Y26_N26
\ucr2|Add2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~27_combout\ = (\ucr2|c_int\(13) & (\ucr2|Add2~26\ & VCC)) # (!\ucr2|c_int\(13) & (!\ucr2|Add2~26\))
-- \ucr2|Add2~28\ = CARRY((!\ucr2|c_int\(13) & !\ucr2|Add2~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(13),
	datad => VCC,
	cin => \ucr2|Add2~26\,
	combout => \ucr2|Add2~27_combout\,
	cout => \ucr2|Add2~28\);

-- Location: LCCOMB_X27_Y26_N24
\ucr2|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~24_combout\ = (\ucr2|c_int\(13) & (\ucr2|Add1~23\ $ (GND))) # (!\ucr2|c_int\(13) & (!\ucr2|Add1~23\ & VCC))
-- \ucr2|Add1~25\ = CARRY((\ucr2|c_int\(13) & !\ucr2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(13),
	datad => VCC,
	cin => \ucr2|Add1~23\,
	combout => \ucr2|Add1~24_combout\,
	cout => \ucr2|Add1~25\);

-- Location: LCCOMB_X24_Y26_N16
\ucr2|Add2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~35_combout\ = (\ucr2|c_int[9]~7_combout\ & (\ucr2|Add2~27_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((\ucr2|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|Add2~27_combout\,
	datac => \ucr2|c_int[9]~7_combout\,
	datad => \ucr2|Add1~24_combout\,
	combout => \ucr2|Add2~35_combout\);

-- Location: FF_X24_Y26_N17
\ucr2|c_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~35_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(13));

-- Location: LCCOMB_X25_Y26_N28
\ucr2|Add2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~29_combout\ = (\ucr2|c_int\(14) & ((GND) # (!\ucr2|Add2~28\))) # (!\ucr2|c_int\(14) & (\ucr2|Add2~28\ $ (GND)))
-- \ucr2|Add2~30\ = CARRY((\ucr2|c_int\(14)) # (!\ucr2|Add2~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int\(14),
	datad => VCC,
	cin => \ucr2|Add2~28\,
	combout => \ucr2|Add2~29_combout\,
	cout => \ucr2|Add2~30\);

-- Location: LCCOMB_X27_Y26_N26
\ucr2|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~26_combout\ = (\ucr2|c_int\(14) & (!\ucr2|Add1~25\)) # (!\ucr2|c_int\(14) & ((\ucr2|Add1~25\) # (GND)))
-- \ucr2|Add1~27\ = CARRY((!\ucr2|Add1~25\) # (!\ucr2|c_int\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(14),
	datad => VCC,
	cin => \ucr2|Add1~25\,
	combout => \ucr2|Add1~26_combout\,
	cout => \ucr2|Add1~27\);

-- Location: LCCOMB_X24_Y26_N22
\ucr2|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~34_combout\ = (\ucr2|c_int[9]~7_combout\ & (\ucr2|Add2~29_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((\ucr2|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|Add2~29_combout\,
	datac => \ucr2|c_int[9]~7_combout\,
	datad => \ucr2|Add1~26_combout\,
	combout => \ucr2|Add2~34_combout\);

-- Location: FF_X24_Y26_N23
\ucr2|c_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~34_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(14));

-- Location: LCCOMB_X25_Y26_N30
\ucr2|Add2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~31_combout\ = \ucr2|Add2~30\ $ (!\ucr2|c_int\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ucr2|c_int\(15),
	cin => \ucr2|Add2~30\,
	combout => \ucr2|Add2~31_combout\);

-- Location: LCCOMB_X27_Y26_N28
\ucr2|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add1~28_combout\ = \ucr2|Add1~27\ $ (!\ucr2|c_int\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ucr2|c_int\(15),
	cin => \ucr2|Add1~27\,
	combout => \ucr2|Add1~28_combout\);

-- Location: LCCOMB_X24_Y26_N12
\ucr2|Add2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~33_combout\ = (\ucr2|c_int[9]~7_combout\ & (\ucr2|Add2~31_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((\ucr2|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[9]~7_combout\,
	datac => \ucr2|Add2~31_combout\,
	datad => \ucr2|Add1~28_combout\,
	combout => \ucr2|Add2~33_combout\);

-- Location: FF_X24_Y26_N13
\ucr2|c_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~33_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(15));

-- Location: LCCOMB_X24_Y26_N4
\PWM2_FB01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|LessThan0~0_combout\ = (!\ucr2|c_int\(15) & (!\ucr2|c_int\(12) & (!\ucr2|c_int\(14) & !\ucr2|c_int\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(15),
	datab => \ucr2|c_int\(12),
	datac => \ucr2|c_int\(14),
	datad => \ucr2|c_int\(13),
	combout => \PWM2_FB01|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y26_N28
\ucr2|c_int[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[9]~0_combout\ = ((\ucr2|c_int\(11)) # ((\ucr2|c_int\(9) & !\ucr2|c_int\(10)))) # (!\PWM2_FB01|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(9),
	datab => \PWM2_FB01|LessThan0~0_combout\,
	datac => \ucr2|c_int\(11),
	datad => \ucr2|c_int\(10),
	combout => \ucr2|c_int[9]~0_combout\);

-- Location: LCCOMB_X26_Y26_N10
\ucr2|c_int[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[9]~1_combout\ = (!\ucr2|c_int\(5) & !\ucr2|c_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucr2|c_int\(5),
	datad => \ucr2|c_int\(4),
	combout => \ucr2|c_int[9]~1_combout\);

-- Location: LCCOMB_X26_Y26_N28
\ucr2|c_int[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[9]~2_combout\ = (\ucr2|c_int\(3)) # ((!\ucr2|c_int\(2) & (!\ucr6|c_int\(0) & !\ucr2|c_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(3),
	datab => \ucr2|c_int\(2),
	datac => \ucr6|c_int\(0),
	datad => \ucr2|c_int\(1),
	combout => \ucr2|c_int[9]~2_combout\);

-- Location: LCCOMB_X26_Y26_N22
\ucr2|c_int[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[9]~3_combout\ = (\ucr2|c_int\(6)) # ((\ucr2|c_int\(7)) # ((\ucr2|c_int[9]~1_combout\ & \ucr2|c_int[9]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[9]~1_combout\,
	datab => \ucr2|c_int[9]~2_combout\,
	datac => \ucr2|c_int\(6),
	datad => \ucr2|c_int\(7),
	combout => \ucr2|c_int[9]~3_combout\);

-- Location: LCCOMB_X26_Y26_N24
\ucr2|c_int[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[9]~4_combout\ = (\ucr2|c_int[9]~0_combout\) # ((\ucr2|c_int[9]~3_combout\ & (!\ucr2|c_int\(10) & !\ucr2|c_int\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[9]~0_combout\,
	datab => \ucr2|c_int[9]~3_combout\,
	datac => \ucr2|c_int\(10),
	datad => \ucr2|c_int\(8),
	combout => \ucr2|c_int[9]~4_combout\);

-- Location: LCCOMB_X26_Y26_N2
\ucr2|c_int[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|c_int[9]~7_combout\ = (\ucr2|c_int[9]~4_combout\) # ((\ucr2|dir_int~q\ & ((\ucr2|c_int[9]~6_combout\) # (!\PWM2_FA01|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int[9]~6_combout\,
	datab => \PWM2_FA01|LessThan0~1_combout\,
	datac => \ucr2|dir_int~q\,
	datad => \ucr2|c_int[9]~4_combout\,
	combout => \ucr2|c_int[9]~7_combout\);

-- Location: LCCOMB_X26_Y26_N12
\ucr2|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr2|Add2~42_combout\ = (\ucr2|c_int[9]~7_combout\ & (\ucr2|Add2~6_combout\)) # (!\ucr2|c_int[9]~7_combout\ & ((\ucr2|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr2|c_int[9]~7_combout\,
	datac => \ucr2|Add2~6_combout\,
	datad => \ucr2|Add1~4_combout\,
	combout => \ucr2|Add2~42_combout\);

-- Location: FF_X26_Y26_N13
\ucr2|c_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr2|Add2~42_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr2|c_int\(3));

-- Location: LCCOMB_X26_Y25_N6
\PWM2_FA01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan0~0_combout\ = ((\ucr2|c_int\(2) & ((\ucr6|c_int\(0)) # (\ucr2|c_int\(1))))) # (!\ucr2|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(3),
	datab => \ucr2|c_int\(2),
	datac => \ucr6|c_int\(0),
	datad => \ucr2|c_int\(1),
	combout => \PWM2_FA01|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y26_N26
\PWM2_FB01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|LessThan0~1_combout\ = (!\ucr2|c_int\(9) & (\PWM2_FB01|LessThan0~0_combout\ & (!\ucr2|c_int\(11) & \ucr2|c_int\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(9),
	datab => \PWM2_FB01|LessThan0~0_combout\,
	datac => \ucr2|c_int\(11),
	datad => \ucr2|c_int\(10),
	combout => \PWM2_FB01|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y25_N28
\PWM2_FA01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan0~2_combout\ = ((!\ucr2|c_int\(8) & ((!\PWM2_FA01|LessThan0~1_combout\) # (!\PWM2_FA01|LessThan0~0_combout\)))) # (!\PWM2_FB01|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|LessThan0~0_combout\,
	datab => \PWM2_FB01|LessThan0~1_combout\,
	datac => \ucr2|c_int\(8),
	datad => \PWM2_FA01|LessThan0~1_combout\,
	combout => \PWM2_FA01|LessThan0~2_combout\);

-- Location: FF_X26_Y25_N29
\PWM2_FA01|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|comp_out~q\);

-- Location: LCCOMB_X29_Y25_N24
\PWM2_FA01|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~18_combout\ = (!\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|comp_out~q\,
	datad => \PWM2_FA01|Add1~8_combout\,
	combout => \PWM2_FA01|Add1~18_combout\);

-- Location: FF_X29_Y25_N25
\PWM2_FA01|var_Dead_Count2[4]\ : dffeas
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
	q => \PWM2_FA01|var_Dead_Count2\(4));

-- Location: LCCOMB_X29_Y25_N6
\PWM2_FA01|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan2~0_combout\ = (((!\PWM2_FA01|var_Dead_Count2\(0)) # (!\PWM2_FA01|var_Dead_Count2\(3))) # (!\PWM2_FA01|var_Dead_Count2\(1))) # (!\PWM2_FA01|var_Dead_Count2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count2\(2),
	datab => \PWM2_FA01|var_Dead_Count2\(1),
	datac => \PWM2_FA01|var_Dead_Count2\(3),
	datad => \PWM2_FA01|var_Dead_Count2\(0),
	combout => \PWM2_FA01|LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y25_N18
\PWM2_FA01|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~8_combout\ = (\PWM2_FA01|var_Dead_Count2\(4) & (\PWM2_FA01|Add1~7\ $ (GND))) # (!\PWM2_FA01|var_Dead_Count2\(4) & (!\PWM2_FA01|Add1~7\ & VCC))
-- \PWM2_FA01|Add1~9\ = CARRY((\PWM2_FA01|var_Dead_Count2\(4) & !\PWM2_FA01|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM2_FA01|Add1~7\,
	combout => \PWM2_FA01|Add1~8_combout\,
	cout => \PWM2_FA01|Add1~9\);

-- Location: LCCOMB_X29_Y25_N20
\PWM2_FA01|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~10_combout\ = (\PWM2_FA01|var_Dead_Count2\(5) & (!\PWM2_FA01|Add1~9\)) # (!\PWM2_FA01|var_Dead_Count2\(5) & ((\PWM2_FA01|Add1~9\) # (GND)))
-- \PWM2_FA01|Add1~11\ = CARRY((!\PWM2_FA01|Add1~9\) # (!\PWM2_FA01|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM2_FA01|Add1~9\,
	combout => \PWM2_FA01|Add1~10_combout\,
	cout => \PWM2_FA01|Add1~11\);

-- Location: LCCOMB_X29_Y25_N8
\PWM2_FA01|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~19_combout\ = (!\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|comp_out~q\,
	datad => \PWM2_FA01|Add1~10_combout\,
	combout => \PWM2_FA01|Add1~19_combout\);

-- Location: FF_X29_Y25_N9
\PWM2_FA01|var_Dead_Count2[5]\ : dffeas
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
	q => \PWM2_FA01|var_Dead_Count2\(5));

-- Location: LCCOMB_X29_Y25_N22
\PWM2_FA01|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~12_combout\ = \PWM2_FA01|Add1~11\ $ (!\PWM2_FA01|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FA01|var_Dead_Count2\(6),
	cin => \PWM2_FA01|Add1~11\,
	combout => \PWM2_FA01|Add1~12_combout\);

-- Location: LCCOMB_X29_Y25_N2
\PWM2_FA01|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~20_combout\ = (\PWM2_FA01|Add1~12_combout\ & !\PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA01|Add1~12_combout\,
	datad => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add1~20_combout\);

-- Location: FF_X29_Y25_N3
\PWM2_FA01|var_Dead_Count2[6]\ : dffeas
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
	q => \PWM2_FA01|var_Dead_Count2\(6));

-- Location: LCCOMB_X29_Y25_N28
\PWM2_FA01|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan2~1_combout\ = (\PWM2_FA01|LessThan2~0_combout\ & (!\PWM2_FA01|var_Dead_Count2\(6) & (!\PWM2_FA01|var_Dead_Count2\(5) & !\PWM2_FA01|var_Dead_Count2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|LessThan2~0_combout\,
	datab => \PWM2_FA01|var_Dead_Count2\(6),
	datac => \PWM2_FA01|var_Dead_Count2\(5),
	datad => \PWM2_FA01|var_Dead_Count2\(4),
	combout => \PWM2_FA01|LessThan2~1_combout\);

-- Location: LCCOMB_X29_Y25_N10
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

-- Location: LCCOMB_X26_Y25_N22
\PWM2_FA01|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~14_combout\ = (!\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|comp_out~q\,
	datac => \PWM2_FA01|Add1~0_combout\,
	combout => \PWM2_FA01|Add1~14_combout\);

-- Location: FF_X26_Y25_N23
\PWM2_FA01|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|var_Dead_Count2\(0));

-- Location: LCCOMB_X29_Y25_N12
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

-- Location: LCCOMB_X29_Y25_N0
\PWM2_FA01|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~15_combout\ = (!\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|comp_out~q\,
	datad => \PWM2_FA01|Add1~2_combout\,
	combout => \PWM2_FA01|Add1~15_combout\);

-- Location: FF_X29_Y25_N1
\PWM2_FA01|var_Dead_Count2[1]\ : dffeas
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
	q => \PWM2_FA01|var_Dead_Count2\(1));

-- Location: LCCOMB_X29_Y25_N14
\PWM2_FA01|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~4_combout\ = (\PWM2_FA01|var_Dead_Count2\(2) & (\PWM2_FA01|Add1~3\ $ (GND))) # (!\PWM2_FA01|var_Dead_Count2\(2) & (!\PWM2_FA01|Add1~3\ & VCC))
-- \PWM2_FA01|Add1~5\ = CARRY((\PWM2_FA01|var_Dead_Count2\(2) & !\PWM2_FA01|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM2_FA01|Add1~3\,
	combout => \PWM2_FA01|Add1~4_combout\,
	cout => \PWM2_FA01|Add1~5\);

-- Location: LCCOMB_X29_Y25_N26
\PWM2_FA01|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~16_combout\ = (\PWM2_FA01|Add1~4_combout\ & !\PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA01|Add1~4_combout\,
	datad => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add1~16_combout\);

-- Location: FF_X29_Y25_N27
\PWM2_FA01|var_Dead_Count2[2]\ : dffeas
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
	q => \PWM2_FA01|var_Dead_Count2\(2));

-- Location: LCCOMB_X29_Y25_N16
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

-- Location: LCCOMB_X29_Y25_N4
\PWM2_FA01|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add1~17_combout\ = (!\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|comp_out~q\,
	datad => \PWM2_FA01|Add1~6_combout\,
	combout => \PWM2_FA01|Add1~17_combout\);

-- Location: FF_X29_Y25_N5
\PWM2_FA01|var_Dead_Count2[3]\ : dffeas
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
	q => \PWM2_FA01|var_Dead_Count2\(3));

-- Location: LCCOMB_X29_Y25_N30
\PWM2_FA01|port_PWM02~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|port_PWM02~1_combout\ = (!\PWM2_FA01|Add1~8_combout\ & (!\PWM2_FA01|Add1~10_combout\ & (!\PWM2_FA01|Add1~12_combout\ & \PWM2_FA01|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|Add1~8_combout\,
	datab => \PWM2_FA01|Add1~10_combout\,
	datac => \PWM2_FA01|Add1~12_combout\,
	datad => \PWM2_FA01|Add1~6_combout\,
	combout => \PWM2_FA01|port_PWM02~1_combout\);

-- Location: LCCOMB_X26_Y25_N24
\PWM2_FA01|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|port_PWM02~0_combout\ = (\PWM2_FA01|Add1~0_combout\ & (!\PWM2_FA01|comp_out~q\ & (\PWM2_FA01|Add1~4_combout\ & \PWM2_FA01|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|Add1~0_combout\,
	datab => \PWM2_FA01|comp_out~q\,
	datac => \PWM2_FA01|Add1~4_combout\,
	datad => \PWM2_FA01|Add1~2_combout\,
	combout => \PWM2_FA01|port_PWM02~0_combout\);

-- Location: LCCOMB_X26_Y25_N16
\PWM2_FA01|port_PWM02~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|port_PWM02~2_combout\ = (\PWM2_FA01|port_PWM02~1_combout\ & ((\PWM2_FA01|port_PWM02~0_combout\) # ((!\PWM2_FA01|comp_out~q\ & \PWM2_FA01|port_PWM02~q\)))) # (!\PWM2_FA01|port_PWM02~1_combout\ & (!\PWM2_FA01|comp_out~q\ & 
-- (\PWM2_FA01|port_PWM02~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|port_PWM02~1_combout\,
	datab => \PWM2_FA01|comp_out~q\,
	datac => \PWM2_FA01|port_PWM02~q\,
	datad => \PWM2_FA01|port_PWM02~0_combout\,
	combout => \PWM2_FA01|port_PWM02~2_combout\);

-- Location: FF_X26_Y25_N17
\PWM2_FA01|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA01|port_PWM02~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA01|port_PWM02~q\);

-- Location: LCCOMB_X29_Y27_N0
\ucr4|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~0_combout\ = (\ucr4|c_int\(1) & (\ucr5|c_int\(0) & VCC)) # (!\ucr4|c_int\(1) & (\ucr5|c_int\(0) $ (VCC)))
-- \ucr4|Add1~1\ = CARRY((!\ucr4|c_int\(1) & \ucr5|c_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(1),
	datab => \ucr5|c_int\(0),
	datad => VCC,
	combout => \ucr4|Add1~0_combout\,
	cout => \ucr4|Add1~1\);

-- Location: LCCOMB_X31_Y27_N0
\ucr4|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~1_cout\ = CARRY(\ucr5|c_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(0),
	datad => VCC,
	cout => \ucr4|Add2~1_cout\);

-- Location: LCCOMB_X31_Y27_N2
\ucr4|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~2_combout\ = (\ucr4|c_int\(1) & (!\ucr4|Add2~1_cout\)) # (!\ucr4|c_int\(1) & (\ucr4|Add2~1_cout\ & VCC))
-- \ucr4|Add2~3\ = CARRY((\ucr4|c_int\(1) & !\ucr4|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(1),
	datad => VCC,
	cin => \ucr4|Add2~1_cout\,
	combout => \ucr4|Add2~2_combout\,
	cout => \ucr4|Add2~3\);

-- Location: LCCOMB_X29_Y28_N6
\ucr4|Add2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~41_combout\ = (\ucr4|c_int[2]~7_combout\ & ((!\ucr4|Add2~2_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (!\ucr4|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|Add1~0_combout\,
	datac => \ucr4|c_int[2]~7_combout\,
	datad => \ucr4|Add2~2_combout\,
	combout => \ucr4|Add2~41_combout\);

-- Location: FF_X29_Y28_N7
\ucr4|c_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~41_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(1));

-- Location: LCCOMB_X29_Y27_N2
\ucr4|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~2_combout\ = (\ucr4|c_int\(2) & (!\ucr4|Add1~1\)) # (!\ucr4|c_int\(2) & ((\ucr4|Add1~1\) # (GND)))
-- \ucr4|Add1~3\ = CARRY((!\ucr4|Add1~1\) # (!\ucr4|c_int\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(2),
	datad => VCC,
	cin => \ucr4|Add1~1\,
	combout => \ucr4|Add1~2_combout\,
	cout => \ucr4|Add1~3\);

-- Location: LCCOMB_X31_Y27_N4
\ucr4|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~4_combout\ = (\ucr4|c_int\(2) & ((GND) # (!\ucr4|Add2~3\))) # (!\ucr4|c_int\(2) & (\ucr4|Add2~3\ $ (GND)))
-- \ucr4|Add2~5\ = CARRY((\ucr4|c_int\(2)) # (!\ucr4|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(2),
	datad => VCC,
	cin => \ucr4|Add2~3\,
	combout => \ucr4|Add2~4_combout\,
	cout => \ucr4|Add2~5\);

-- Location: LCCOMB_X29_Y28_N24
\ucr4|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~42_combout\ = (\ucr4|c_int[2]~7_combout\ & ((\ucr4|Add2~4_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (\ucr4|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|Add1~2_combout\,
	datac => \ucr4|c_int[2]~7_combout\,
	datad => \ucr4|Add2~4_combout\,
	combout => \ucr4|Add2~42_combout\);

-- Location: FF_X29_Y28_N25
\ucr4|c_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~42_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(2));

-- Location: LCCOMB_X29_Y27_N14
\ucr4|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~14_combout\ = (\ucr4|c_int\(8) & ((\ucr4|Add1~13\) # (GND))) # (!\ucr4|c_int\(8) & (!\ucr4|Add1~13\))
-- \ucr4|Add1~15\ = CARRY((\ucr4|c_int\(8)) # (!\ucr4|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(8),
	datad => VCC,
	cin => \ucr4|Add1~13\,
	combout => \ucr4|Add1~14_combout\,
	cout => \ucr4|Add1~15\);

-- Location: LCCOMB_X29_Y27_N16
\ucr4|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~16_combout\ = (\ucr4|c_int\(9) & (!\ucr4|Add1~15\ & VCC)) # (!\ucr4|c_int\(9) & (\ucr4|Add1~15\ $ (GND)))
-- \ucr4|Add1~17\ = CARRY((!\ucr4|c_int\(9) & !\ucr4|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(9),
	datad => VCC,
	cin => \ucr4|Add1~15\,
	combout => \ucr4|Add1~16_combout\,
	cout => \ucr4|Add1~17\);

-- Location: LCCOMB_X29_Y27_N4
\ucr4|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~4_combout\ = (\ucr4|c_int\(3) & (!\ucr4|Add1~3\ & VCC)) # (!\ucr4|c_int\(3) & (\ucr4|Add1~3\ $ (GND)))
-- \ucr4|Add1~5\ = CARRY((!\ucr4|c_int\(3) & !\ucr4|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(3),
	datad => VCC,
	cin => \ucr4|Add1~3\,
	combout => \ucr4|Add1~4_combout\,
	cout => \ucr4|Add1~5\);

-- Location: LCCOMB_X31_Y27_N6
\ucr4|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~6_combout\ = (\ucr4|c_int\(3) & (!\ucr4|Add2~5\)) # (!\ucr4|c_int\(3) & (\ucr4|Add2~5\ & VCC))
-- \ucr4|Add2~7\ = CARRY((\ucr4|c_int\(3) & !\ucr4|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(3),
	datad => VCC,
	cin => \ucr4|Add2~5\,
	combout => \ucr4|Add2~6_combout\,
	cout => \ucr4|Add2~7\);

-- Location: LCCOMB_X29_Y28_N4
\ucr4|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~40_combout\ = (\ucr4|c_int[2]~7_combout\ & ((!\ucr4|Add2~6_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (!\ucr4|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|Add1~4_combout\,
	datac => \ucr4|Add2~6_combout\,
	datad => \ucr4|c_int[2]~7_combout\,
	combout => \ucr4|Add2~40_combout\);

-- Location: FF_X29_Y28_N5
\ucr4|c_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~40_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(3));

-- Location: LCCOMB_X29_Y27_N6
\ucr4|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~6_combout\ = (\ucr4|c_int\(4) & ((\ucr4|Add1~5\) # (GND))) # (!\ucr4|c_int\(4) & (!\ucr4|Add1~5\))
-- \ucr4|Add1~7\ = CARRY((\ucr4|c_int\(4)) # (!\ucr4|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(4),
	datad => VCC,
	cin => \ucr4|Add1~5\,
	combout => \ucr4|Add1~6_combout\,
	cout => \ucr4|Add1~7\);

-- Location: LCCOMB_X31_Y27_N8
\ucr4|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~8_combout\ = (\ucr4|c_int\(4) & (\ucr4|Add2~7\ $ (GND))) # (!\ucr4|c_int\(4) & ((GND) # (!\ucr4|Add2~7\)))
-- \ucr4|Add2~9\ = CARRY((!\ucr4|Add2~7\) # (!\ucr4|c_int\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(4),
	datad => VCC,
	cin => \ucr4|Add2~7\,
	combout => \ucr4|Add2~8_combout\,
	cout => \ucr4|Add2~9\);

-- Location: LCCOMB_X29_Y27_N30
\ucr4|Add2~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~45_combout\ = (\ucr4|c_int[2]~7_combout\ & ((!\ucr4|Add2~8_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (!\ucr4|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|Add1~6_combout\,
	datac => \ucr4|c_int[2]~7_combout\,
	datad => \ucr4|Add2~8_combout\,
	combout => \ucr4|Add2~45_combout\);

-- Location: FF_X29_Y27_N31
\ucr4|c_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~45_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(4));

-- Location: LCCOMB_X29_Y27_N8
\ucr4|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~8_combout\ = (\ucr4|c_int\(5) & (!\ucr4|Add1~7\ & VCC)) # (!\ucr4|c_int\(5) & (\ucr4|Add1~7\ $ (GND)))
-- \ucr4|Add1~9\ = CARRY((!\ucr4|c_int\(5) & !\ucr4|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(5),
	datad => VCC,
	cin => \ucr4|Add1~7\,
	combout => \ucr4|Add1~8_combout\,
	cout => \ucr4|Add1~9\);

-- Location: LCCOMB_X31_Y27_N10
\ucr4|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~10_combout\ = (\ucr4|c_int\(5) & (!\ucr4|Add2~9\)) # (!\ucr4|c_int\(5) & (\ucr4|Add2~9\ & VCC))
-- \ucr4|Add2~11\ = CARRY((\ucr4|c_int\(5) & !\ucr4|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(5),
	datad => VCC,
	cin => \ucr4|Add2~9\,
	combout => \ucr4|Add2~10_combout\,
	cout => \ucr4|Add2~11\);

-- Location: LCCOMB_X29_Y28_N12
\ucr4|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~44_combout\ = (\ucr4|c_int[2]~7_combout\ & ((!\ucr4|Add2~10_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (!\ucr4|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int[2]~7_combout\,
	datab => \ucr4|Add1~8_combout\,
	datac => \ucr4|Add2~10_combout\,
	combout => \ucr4|Add2~44_combout\);

-- Location: FF_X29_Y28_N13
\ucr4|c_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~44_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(5));

-- Location: LCCOMB_X31_Y27_N12
\ucr4|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~12_combout\ = (\ucr4|c_int\(6) & (\ucr4|Add2~11\ $ (GND))) # (!\ucr4|c_int\(6) & ((GND) # (!\ucr4|Add2~11\)))
-- \ucr4|Add2~13\ = CARRY((!\ucr4|Add2~11\) # (!\ucr4|c_int\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(6),
	datad => VCC,
	cin => \ucr4|Add2~11\,
	combout => \ucr4|Add2~12_combout\,
	cout => \ucr4|Add2~13\);

-- Location: LCCOMB_X31_Y27_N14
\ucr4|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~14_combout\ = (\ucr4|c_int\(7) & (\ucr4|Add2~13\ & VCC)) # (!\ucr4|c_int\(7) & (!\ucr4|Add2~13\))
-- \ucr4|Add2~15\ = CARRY((!\ucr4|c_int\(7) & !\ucr4|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(7),
	datad => VCC,
	cin => \ucr4|Add2~13\,
	combout => \ucr4|Add2~14_combout\,
	cout => \ucr4|Add2~15\);

-- Location: LCCOMB_X31_Y27_N16
\ucr4|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~16_combout\ = (\ucr4|c_int\(8) & (\ucr4|Add2~15\ $ (GND))) # (!\ucr4|c_int\(8) & ((GND) # (!\ucr4|Add2~15\)))
-- \ucr4|Add2~17\ = CARRY((!\ucr4|Add2~15\) # (!\ucr4|c_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(8),
	datad => VCC,
	cin => \ucr4|Add2~15\,
	combout => \ucr4|Add2~16_combout\,
	cout => \ucr4|Add2~17\);

-- Location: LCCOMB_X31_Y27_N18
\ucr4|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~18_combout\ = (\ucr4|c_int\(9) & (!\ucr4|Add2~17\)) # (!\ucr4|c_int\(9) & (\ucr4|Add2~17\ & VCC))
-- \ucr4|Add2~19\ = CARRY((\ucr4|c_int\(9) & !\ucr4|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(9),
	datad => VCC,
	cin => \ucr4|Add2~17\,
	combout => \ucr4|Add2~18_combout\,
	cout => \ucr4|Add2~19\);

-- Location: LCCOMB_X30_Y27_N24
\ucr4|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~20_combout\ = (\ucr4|c_int[2]~7_combout\ & ((!\ucr4|Add2~18_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (!\ucr4|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int[2]~7_combout\,
	datac => \ucr4|Add1~16_combout\,
	datad => \ucr4|Add2~18_combout\,
	combout => \ucr4|Add2~20_combout\);

-- Location: FF_X30_Y27_N25
\ucr4|c_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~20_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(9));

-- Location: LCCOMB_X29_Y27_N18
\ucr4|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~18_combout\ = (\ucr4|c_int\(10) & (!\ucr4|Add1~17\)) # (!\ucr4|c_int\(10) & ((\ucr4|Add1~17\) # (GND)))
-- \ucr4|Add1~19\ = CARRY((!\ucr4|Add1~17\) # (!\ucr4|c_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(10),
	datad => VCC,
	cin => \ucr4|Add1~17\,
	combout => \ucr4|Add1~18_combout\,
	cout => \ucr4|Add1~19\);

-- Location: LCCOMB_X31_Y27_N20
\ucr4|Add2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~21_combout\ = (\ucr4|c_int\(10) & ((GND) # (!\ucr4|Add2~19\))) # (!\ucr4|c_int\(10) & (\ucr4|Add2~19\ $ (GND)))
-- \ucr4|Add2~22\ = CARRY((\ucr4|c_int\(10)) # (!\ucr4|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(10),
	datad => VCC,
	cin => \ucr4|Add2~19\,
	combout => \ucr4|Add2~21_combout\,
	cout => \ucr4|Add2~22\);

-- Location: LCCOMB_X30_Y27_N4
\ucr4|Add2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~37_combout\ = (\ucr4|c_int[2]~7_combout\ & ((\ucr4|Add2~21_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (\ucr4|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|Add1~18_combout\,
	datac => \ucr4|Add2~21_combout\,
	datad => \ucr4|c_int[2]~7_combout\,
	combout => \ucr4|Add2~37_combout\);

-- Location: FF_X30_Y27_N5
\ucr4|c_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~37_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(10));

-- Location: LCCOMB_X29_Y28_N28
\ucr4|c_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|c_int[2]~5_combout\ = (((\ucr4|c_int\(10)) # (!\ucr4|c_int\(8))) # (!\ucr4|c_int\(3))) # (!\ucr4|c_int\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(9),
	datab => \ucr4|c_int\(3),
	datac => \ucr4|c_int\(8),
	datad => \ucr4|c_int\(10),
	combout => \ucr4|c_int[2]~5_combout\);

-- Location: LCCOMB_X29_Y28_N22
\ucr4|c_int[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|c_int[2]~6_combout\ = (\ucr4|c_int\(2)) # ((\ucr4|c_int[2]~5_combout\) # ((\ucr5|c_int\(0)) # (!\ucr4|c_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(2),
	datab => \ucr4|c_int[2]~5_combout\,
	datac => \ucr5|c_int\(0),
	datad => \ucr4|c_int\(1),
	combout => \ucr4|c_int[2]~6_combout\);

-- Location: LCCOMB_X30_Y29_N8
\PWM2_FA02|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|LessThan0~1_combout\ = (\ucr4|c_int\(4) & (\ucr4|c_int\(6) & (!\ucr4|c_int\(7) & \ucr4|c_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(4),
	datab => \ucr4|c_int\(6),
	datac => \ucr4|c_int\(7),
	datad => \ucr4|c_int\(5),
	combout => \PWM2_FA02|LessThan0~1_combout\);

-- Location: FF_X29_Y28_N27
\ucr4|dir_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|c_int[2]~7_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|dir_int~q\);

-- Location: LCCOMB_X29_Y28_N18
\ucr4|c_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|c_int[2]~1_combout\ = (!\ucr4|c_int\(4) & !\ucr4|c_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(4),
	datac => \ucr4|c_int\(5),
	combout => \ucr4|c_int[2]~1_combout\);

-- Location: LCCOMB_X29_Y28_N20
\ucr4|c_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|c_int[2]~2_combout\ = ((\ucr4|c_int\(2) & (\ucr5|c_int\(0) & !\ucr4|c_int\(1)))) # (!\ucr4|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(2),
	datab => \ucr4|c_int\(3),
	datac => \ucr5|c_int\(0),
	datad => \ucr4|c_int\(1),
	combout => \ucr4|c_int[2]~2_combout\);

-- Location: LCCOMB_X29_Y28_N30
\ucr4|c_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|c_int[2]~3_combout\ = (\ucr4|c_int\(7)) # (((\ucr4|c_int[2]~1_combout\ & \ucr4|c_int[2]~2_combout\)) # (!\ucr4|c_int\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(7),
	datab => \ucr4|c_int[2]~1_combout\,
	datac => \ucr4|c_int\(6),
	datad => \ucr4|c_int[2]~2_combout\,
	combout => \ucr4|c_int[2]~3_combout\);

-- Location: LCCOMB_X29_Y27_N20
\ucr4|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~20_combout\ = (\ucr4|c_int\(11) & (\ucr4|Add1~19\ $ (GND))) # (!\ucr4|c_int\(11) & (!\ucr4|Add1~19\ & VCC))
-- \ucr4|Add1~21\ = CARRY((\ucr4|c_int\(11) & !\ucr4|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(11),
	datad => VCC,
	cin => \ucr4|Add1~19\,
	combout => \ucr4|Add1~20_combout\,
	cout => \ucr4|Add1~21\);

-- Location: LCCOMB_X31_Y27_N22
\ucr4|Add2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~23_combout\ = (\ucr4|c_int\(11) & (\ucr4|Add2~22\ & VCC)) # (!\ucr4|c_int\(11) & (!\ucr4|Add2~22\))
-- \ucr4|Add2~24\ = CARRY((!\ucr4|c_int\(11) & !\ucr4|Add2~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(11),
	datad => VCC,
	cin => \ucr4|Add2~22\,
	combout => \ucr4|Add2~23_combout\,
	cout => \ucr4|Add2~24\);

-- Location: LCCOMB_X30_Y27_N6
\ucr4|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~38_combout\ = (\ucr4|c_int[2]~7_combout\ & ((\ucr4|Add2~23_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (\ucr4|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int[2]~7_combout\,
	datab => \ucr4|Add1~20_combout\,
	datad => \ucr4|Add2~23_combout\,
	combout => \ucr4|Add2~38_combout\);

-- Location: FF_X30_Y27_N7
\ucr4|c_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~38_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(11));

-- Location: LCCOMB_X29_Y27_N22
\ucr4|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~22_combout\ = (\ucr4|c_int\(12) & (!\ucr4|Add1~21\)) # (!\ucr4|c_int\(12) & ((\ucr4|Add1~21\) # (GND)))
-- \ucr4|Add1~23\ = CARRY((!\ucr4|Add1~21\) # (!\ucr4|c_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(12),
	datad => VCC,
	cin => \ucr4|Add1~21\,
	combout => \ucr4|Add1~22_combout\,
	cout => \ucr4|Add1~23\);

-- Location: LCCOMB_X31_Y27_N24
\ucr4|Add2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~25_combout\ = (\ucr4|c_int\(12) & ((GND) # (!\ucr4|Add2~24\))) # (!\ucr4|c_int\(12) & (\ucr4|Add2~24\ $ (GND)))
-- \ucr4|Add2~26\ = CARRY((\ucr4|c_int\(12)) # (!\ucr4|Add2~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(12),
	datad => VCC,
	cin => \ucr4|Add2~24\,
	combout => \ucr4|Add2~25_combout\,
	cout => \ucr4|Add2~26\);

-- Location: LCCOMB_X30_Y27_N16
\ucr4|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~36_combout\ = (\ucr4|c_int[2]~7_combout\ & ((\ucr4|Add2~25_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (\ucr4|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int[2]~7_combout\,
	datab => \ucr4|Add1~22_combout\,
	datac => \ucr4|Add2~25_combout\,
	combout => \ucr4|Add2~36_combout\);

-- Location: FF_X30_Y27_N17
\ucr4|c_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~36_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(12));

-- Location: LCCOMB_X29_Y27_N24
\ucr4|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~24_combout\ = (\ucr4|c_int\(13) & (\ucr4|Add1~23\ $ (GND))) # (!\ucr4|c_int\(13) & (!\ucr4|Add1~23\ & VCC))
-- \ucr4|Add1~25\ = CARRY((\ucr4|c_int\(13) & !\ucr4|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(13),
	datad => VCC,
	cin => \ucr4|Add1~23\,
	combout => \ucr4|Add1~24_combout\,
	cout => \ucr4|Add1~25\);

-- Location: LCCOMB_X31_Y27_N26
\ucr4|Add2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~27_combout\ = (\ucr4|c_int\(13) & (\ucr4|Add2~26\ & VCC)) # (!\ucr4|c_int\(13) & (!\ucr4|Add2~26\))
-- \ucr4|Add2~28\ = CARRY((!\ucr4|c_int\(13) & !\ucr4|Add2~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(13),
	datad => VCC,
	cin => \ucr4|Add2~26\,
	combout => \ucr4|Add2~27_combout\,
	cout => \ucr4|Add2~28\);

-- Location: LCCOMB_X30_Y27_N22
\ucr4|Add2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~35_combout\ = (\ucr4|c_int[2]~7_combout\ & ((\ucr4|Add2~27_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (\ucr4|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int[2]~7_combout\,
	datab => \ucr4|Add1~24_combout\,
	datad => \ucr4|Add2~27_combout\,
	combout => \ucr4|Add2~35_combout\);

-- Location: FF_X30_Y27_N23
\ucr4|c_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~35_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(13));

-- Location: LCCOMB_X29_Y27_N26
\ucr4|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~26_combout\ = (\ucr4|c_int\(14) & (!\ucr4|Add1~25\)) # (!\ucr4|c_int\(14) & ((\ucr4|Add1~25\) # (GND)))
-- \ucr4|Add1~27\ = CARRY((!\ucr4|Add1~25\) # (!\ucr4|c_int\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(14),
	datad => VCC,
	cin => \ucr4|Add1~25\,
	combout => \ucr4|Add1~26_combout\,
	cout => \ucr4|Add1~27\);

-- Location: LCCOMB_X31_Y27_N28
\ucr4|Add2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~29_combout\ = (\ucr4|c_int\(14) & ((GND) # (!\ucr4|Add2~28\))) # (!\ucr4|c_int\(14) & (\ucr4|Add2~28\ $ (GND)))
-- \ucr4|Add2~30\ = CARRY((\ucr4|c_int\(14)) # (!\ucr4|Add2~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(14),
	datad => VCC,
	cin => \ucr4|Add2~28\,
	combout => \ucr4|Add2~29_combout\,
	cout => \ucr4|Add2~30\);

-- Location: LCCOMB_X30_Y27_N20
\ucr4|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~34_combout\ = (\ucr4|c_int[2]~7_combout\ & ((\ucr4|Add2~29_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (\ucr4|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int[2]~7_combout\,
	datac => \ucr4|Add1~26_combout\,
	datad => \ucr4|Add2~29_combout\,
	combout => \ucr4|Add2~34_combout\);

-- Location: FF_X30_Y27_N21
\ucr4|c_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~34_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(14));

-- Location: LCCOMB_X29_Y27_N28
\ucr4|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~28_combout\ = \ucr4|c_int\(15) $ (!\ucr4|Add1~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|c_int\(15),
	cin => \ucr4|Add1~27\,
	combout => \ucr4|Add1~28_combout\);

-- Location: LCCOMB_X31_Y27_N30
\ucr4|Add2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~31_combout\ = \ucr4|Add2~30\ $ (!\ucr4|c_int\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ucr4|c_int\(15),
	cin => \ucr4|Add2~30\,
	combout => \ucr4|Add2~31_combout\);

-- Location: LCCOMB_X30_Y27_N10
\ucr4|Add2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~33_combout\ = (\ucr4|c_int[2]~7_combout\ & ((\ucr4|Add2~31_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (\ucr4|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr4|Add1~28_combout\,
	datac => \ucr4|Add2~31_combout\,
	datad => \ucr4|c_int[2]~7_combout\,
	combout => \ucr4|Add2~33_combout\);

-- Location: FF_X30_Y27_N11
\ucr4|c_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~33_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(15));

-- Location: LCCOMB_X30_Y27_N2
\PWM2_FB02|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|LessThan0~0_combout\ = (!\ucr4|c_int\(15) & (!\ucr4|c_int\(12) & (!\ucr4|c_int\(13) & !\ucr4|c_int\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(15),
	datab => \ucr4|c_int\(12),
	datac => \ucr4|c_int\(13),
	datad => \ucr4|c_int\(14),
	combout => \PWM2_FB02|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y27_N28
\ucr4|c_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|c_int[2]~0_combout\ = (\ucr4|c_int\(11)) # (((!\ucr4|c_int\(9) & \ucr4|c_int\(10))) # (!\PWM2_FB02|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(11),
	datab => \ucr4|c_int\(9),
	datac => \ucr4|c_int\(10),
	datad => \PWM2_FB02|LessThan0~0_combout\,
	combout => \ucr4|c_int[2]~0_combout\);

-- Location: LCCOMB_X29_Y28_N16
\ucr4|c_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|c_int[2]~4_combout\ = (\ucr4|c_int[2]~0_combout\) # ((\ucr4|c_int[2]~3_combout\ & (!\ucr4|c_int\(8) & \ucr4|c_int\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int[2]~3_combout\,
	datab => \ucr4|c_int\(8),
	datac => \ucr4|c_int[2]~0_combout\,
	datad => \ucr4|c_int\(10),
	combout => \ucr4|c_int[2]~4_combout\);

-- Location: LCCOMB_X29_Y28_N26
\ucr4|c_int[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|c_int[2]~7_combout\ = (\ucr4|c_int[2]~4_combout\) # ((\ucr4|dir_int~q\ & ((\ucr4|c_int[2]~6_combout\) # (!\PWM2_FA02|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int[2]~6_combout\,
	datab => \PWM2_FA02|LessThan0~1_combout\,
	datac => \ucr4|dir_int~q\,
	datad => \ucr4|c_int[2]~4_combout\,
	combout => \ucr4|c_int[2]~7_combout\);

-- Location: LCCOMB_X29_Y27_N10
\ucr4|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~10_combout\ = (\ucr4|c_int\(6) & ((\ucr4|Add1~9\) # (GND))) # (!\ucr4|c_int\(6) & (!\ucr4|Add1~9\))
-- \ucr4|Add1~11\ = CARRY((\ucr4|c_int\(6)) # (!\ucr4|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(6),
	datad => VCC,
	cin => \ucr4|Add1~9\,
	combout => \ucr4|Add1~10_combout\,
	cout => \ucr4|Add1~11\);

-- Location: LCCOMB_X29_Y28_N2
\ucr4|Add2~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~43_combout\ = (\ucr4|c_int[2]~7_combout\ & ((!\ucr4|Add2~12_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (!\ucr4|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int[2]~7_combout\,
	datac => \ucr4|Add1~10_combout\,
	datad => \ucr4|Add2~12_combout\,
	combout => \ucr4|Add2~43_combout\);

-- Location: FF_X29_Y28_N3
\ucr4|c_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~43_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(6));

-- Location: LCCOMB_X29_Y27_N12
\ucr4|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add1~12_combout\ = (\ucr4|c_int\(7) & (\ucr4|Add1~11\ $ (GND))) # (!\ucr4|c_int\(7) & (!\ucr4|Add1~11\ & VCC))
-- \ucr4|Add1~13\ = CARRY((\ucr4|c_int\(7) & !\ucr4|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(7),
	datad => VCC,
	cin => \ucr4|Add1~11\,
	combout => \ucr4|Add1~12_combout\,
	cout => \ucr4|Add1~13\);

-- Location: LCCOMB_X30_Y27_N26
\ucr4|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~46_combout\ = (\ucr4|c_int[2]~7_combout\ & ((\ucr4|Add2~14_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (\ucr4|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|Add1~12_combout\,
	datac => \ucr4|Add2~14_combout\,
	datad => \ucr4|c_int[2]~7_combout\,
	combout => \ucr4|Add2~46_combout\);

-- Location: FF_X30_Y27_N27
\ucr4|c_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~46_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(7));

-- Location: LCCOMB_X29_Y28_N10
\ucr4|Add2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr4|Add2~39_combout\ = (\ucr4|c_int[2]~7_combout\ & ((!\ucr4|Add2~16_combout\))) # (!\ucr4|c_int[2]~7_combout\ & (!\ucr4|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|Add1~14_combout\,
	datac => \ucr4|c_int[2]~7_combout\,
	datad => \ucr4|Add2~16_combout\,
	combout => \ucr4|Add2~39_combout\);

-- Location: FF_X29_Y28_N11
\ucr4|c_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr4|Add2~39_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr4|c_int\(8));

-- Location: LCCOMB_X30_Y27_N0
\PWM2_FB02|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|LessThan0~1_combout\ = (!\ucr4|c_int\(11) & (\ucr4|c_int\(9) & (!\ucr4|c_int\(10) & \PWM2_FB02|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(11),
	datab => \ucr4|c_int\(9),
	datac => \ucr4|c_int\(10),
	datad => \PWM2_FB02|LessThan0~0_combout\,
	combout => \PWM2_FB02|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y29_N6
\PWM2_FA02|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|LessThan0~0_combout\ = (\ucr4|c_int\(3)) # ((!\ucr4|c_int\(2) & ((\ucr4|c_int\(1)) # (!\ucr5|c_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(2),
	datab => \ucr4|c_int\(3),
	datac => \ucr4|c_int\(1),
	datad => \ucr5|c_int\(0),
	combout => \PWM2_FA02|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y29_N22
\PWM2_FA02|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|LessThan0~2_combout\ = ((!\ucr4|c_int\(8) & ((!\PWM2_FA02|LessThan0~0_combout\) # (!\PWM2_FA02|LessThan0~1_combout\)))) # (!\PWM2_FB02|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(8),
	datab => \PWM2_FB02|LessThan0~1_combout\,
	datac => \PWM2_FA02|LessThan0~1_combout\,
	datad => \PWM2_FA02|LessThan0~0_combout\,
	combout => \PWM2_FA02|LessThan0~2_combout\);

-- Location: FF_X30_Y29_N23
\PWM2_FA02|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|comp_out~q\);

-- Location: FF_X29_Y29_N3
\PWM2_FA02|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count2\(6));

-- Location: LCCOMB_X29_Y29_N12
\PWM2_FA02|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~0_combout\ = (\PWM2_FA02|LessThan2~1_combout\ & (\PWM2_FA02|var_Dead_Count2\(0) $ (VCC))) # (!\PWM2_FA02|LessThan2~1_combout\ & (\PWM2_FA02|var_Dead_Count2\(0) & VCC))
-- \PWM2_FA02|Add1~1\ = CARRY((\PWM2_FA02|LessThan2~1_combout\ & \PWM2_FA02|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|LessThan2~1_combout\,
	datab => \PWM2_FA02|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM2_FA02|Add1~0_combout\,
	cout => \PWM2_FA02|Add1~1\);

-- Location: LCCOMB_X29_Y29_N8
\PWM2_FA02|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~18_combout\ = (\PWM2_FA02|Add1~0_combout\ & !\PWM2_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|Add1~0_combout\,
	datad => \PWM2_FA02|comp_out~q\,
	combout => \PWM2_FA02|Add1~18_combout\);

-- Location: FF_X29_Y29_N9
\PWM2_FA02|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count2\(0));

-- Location: LCCOMB_X29_Y29_N30
\PWM2_FA02|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|LessThan2~0_combout\ = (((!\PWM2_FA02|var_Dead_Count2\(2)) # (!\PWM2_FA02|var_Dead_Count2\(0))) # (!\PWM2_FA02|var_Dead_Count2\(3))) # (!\PWM2_FA02|var_Dead_Count2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|var_Dead_Count2\(1),
	datab => \PWM2_FA02|var_Dead_Count2\(3),
	datac => \PWM2_FA02|var_Dead_Count2\(0),
	datad => \PWM2_FA02|var_Dead_Count2\(2),
	combout => \PWM2_FA02|LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y29_N4
\PWM2_FA02|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|LessThan2~1_combout\ = (!\PWM2_FA02|var_Dead_Count2\(5) & (!\PWM2_FA02|var_Dead_Count2\(6) & (\PWM2_FA02|LessThan2~0_combout\ & !\PWM2_FA02|var_Dead_Count2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|var_Dead_Count2\(5),
	datab => \PWM2_FA02|var_Dead_Count2\(6),
	datac => \PWM2_FA02|LessThan2~0_combout\,
	datad => \PWM2_FA02|var_Dead_Count2\(4),
	combout => \PWM2_FA02|LessThan2~1_combout\);

-- Location: LCCOMB_X29_Y29_N14
\PWM2_FA02|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~2_combout\ = (\PWM2_FA02|var_Dead_Count2\(1) & (!\PWM2_FA02|Add1~1\)) # (!\PWM2_FA02|var_Dead_Count2\(1) & ((\PWM2_FA02|Add1~1\) # (GND)))
-- \PWM2_FA02|Add1~3\ = CARRY((!\PWM2_FA02|Add1~1\) # (!\PWM2_FA02|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM2_FA02|Add1~1\,
	combout => \PWM2_FA02|Add1~2_combout\,
	cout => \PWM2_FA02|Add1~3\);

-- Location: LCCOMB_X29_Y29_N10
\PWM2_FA02|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~19_combout\ = (\PWM2_FA02|Add1~2_combout\ & !\PWM2_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA02|Add1~2_combout\,
	datad => \PWM2_FA02|comp_out~q\,
	combout => \PWM2_FA02|Add1~19_combout\);

-- Location: FF_X29_Y29_N11
\PWM2_FA02|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count2\(1));

-- Location: LCCOMB_X29_Y29_N16
\PWM2_FA02|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~4_combout\ = (\PWM2_FA02|var_Dead_Count2\(2) & (\PWM2_FA02|Add1~3\ $ (GND))) # (!\PWM2_FA02|var_Dead_Count2\(2) & (!\PWM2_FA02|Add1~3\ & VCC))
-- \PWM2_FA02|Add1~5\ = CARRY((\PWM2_FA02|var_Dead_Count2\(2) & !\PWM2_FA02|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM2_FA02|Add1~3\,
	combout => \PWM2_FA02|Add1~4_combout\,
	cout => \PWM2_FA02|Add1~5\);

-- Location: LCCOMB_X30_Y29_N4
\PWM2_FA02|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~20_combout\ = (!\PWM2_FA02|comp_out~q\ & \PWM2_FA02|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|comp_out~q\,
	datac => \PWM2_FA02|Add1~4_combout\,
	combout => \PWM2_FA02|Add1~20_combout\);

-- Location: FF_X30_Y29_N5
\PWM2_FA02|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count2\(2));

-- Location: LCCOMB_X29_Y29_N18
\PWM2_FA02|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~6_combout\ = (\PWM2_FA02|var_Dead_Count2\(3) & (!\PWM2_FA02|Add1~5\)) # (!\PWM2_FA02|var_Dead_Count2\(3) & ((\PWM2_FA02|Add1~5\) # (GND)))
-- \PWM2_FA02|Add1~7\ = CARRY((!\PWM2_FA02|Add1~5\) # (!\PWM2_FA02|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA02|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM2_FA02|Add1~5\,
	combout => \PWM2_FA02|Add1~6_combout\,
	cout => \PWM2_FA02|Add1~7\);

-- Location: LCCOMB_X29_Y29_N28
\PWM2_FA02|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~8_combout\ = (\PWM2_FA02|Add1~6_combout\ & !\PWM2_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA02|Add1~6_combout\,
	datad => \PWM2_FA02|comp_out~q\,
	combout => \PWM2_FA02|Add1~8_combout\);

-- Location: FF_X29_Y29_N29
\PWM2_FA02|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count2\(3));

-- Location: LCCOMB_X29_Y29_N20
\PWM2_FA02|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~9_combout\ = (\PWM2_FA02|var_Dead_Count2\(4) & (\PWM2_FA02|Add1~7\ $ (GND))) # (!\PWM2_FA02|var_Dead_Count2\(4) & (!\PWM2_FA02|Add1~7\ & VCC))
-- \PWM2_FA02|Add1~10\ = CARRY((\PWM2_FA02|var_Dead_Count2\(4) & !\PWM2_FA02|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA02|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM2_FA02|Add1~7\,
	combout => \PWM2_FA02|Add1~9_combout\,
	cout => \PWM2_FA02|Add1~10\);

-- Location: LCCOMB_X29_Y29_N0
\PWM2_FA02|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~16_combout\ = (\PWM2_FA02|Add1~9_combout\ & !\PWM2_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA02|Add1~9_combout\,
	datad => \PWM2_FA02|comp_out~q\,
	combout => \PWM2_FA02|Add1~16_combout\);

-- Location: FF_X29_Y29_N1
\PWM2_FA02|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count2\(4));

-- Location: LCCOMB_X29_Y29_N22
\PWM2_FA02|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~11_combout\ = (\PWM2_FA02|var_Dead_Count2\(5) & (!\PWM2_FA02|Add1~10\)) # (!\PWM2_FA02|var_Dead_Count2\(5) & ((\PWM2_FA02|Add1~10\) # (GND)))
-- \PWM2_FA02|Add1~12\ = CARRY((!\PWM2_FA02|Add1~10\) # (!\PWM2_FA02|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM2_FA02|Add1~10\,
	combout => \PWM2_FA02|Add1~11_combout\,
	cout => \PWM2_FA02|Add1~12\);

-- Location: LCCOMB_X29_Y29_N26
\PWM2_FA02|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~17_combout\ = (\PWM2_FA02|Add1~11_combout\ & !\PWM2_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA02|Add1~11_combout\,
	datad => \PWM2_FA02|comp_out~q\,
	combout => \PWM2_FA02|Add1~17_combout\);

-- Location: FF_X29_Y29_N27
\PWM2_FA02|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count2\(5));

-- Location: LCCOMB_X29_Y29_N24
\PWM2_FA02|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~13_combout\ = \PWM2_FA02|Add1~12\ $ (!\PWM2_FA02|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FA02|var_Dead_Count2\(6),
	cin => \PWM2_FA02|Add1~12\,
	combout => \PWM2_FA02|Add1~13_combout\);

-- Location: LCCOMB_X29_Y29_N2
\PWM2_FA02|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add1~15_combout\ = (\PWM2_FA02|Add1~13_combout\ & !\PWM2_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA02|Add1~13_combout\,
	datad => \PWM2_FA02|comp_out~q\,
	combout => \PWM2_FA02|Add1~15_combout\);

-- Location: LCCOMB_X29_Y29_N6
\PWM2_FA02|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Equal1~1_combout\ = (!\PWM2_FA02|Add1~15_combout\ & (!\PWM2_FA02|Add1~16_combout\ & (!\PWM2_FA02|Add1~17_combout\ & \PWM2_FA02|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|Add1~15_combout\,
	datab => \PWM2_FA02|Add1~16_combout\,
	datac => \PWM2_FA02|Add1~17_combout\,
	datad => \PWM2_FA02|Add1~8_combout\,
	combout => \PWM2_FA02|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y29_N24
\PWM2_FA02|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Equal1~0_combout\ = (\PWM2_FA02|Add1~4_combout\ & (\PWM2_FA02|Add1~2_combout\ & (!\PWM2_FA02|comp_out~q\ & \PWM2_FA02|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|Add1~4_combout\,
	datab => \PWM2_FA02|Add1~2_combout\,
	datac => \PWM2_FA02|comp_out~q\,
	datad => \PWM2_FA02|Add1~0_combout\,
	combout => \PWM2_FA02|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y29_N0
\PWM2_FA02|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|port_PWM02~0_combout\ = (\PWM2_FA02|comp_out~q\ & (\PWM2_FA02|Equal1~1_combout\ & ((\PWM2_FA02|Equal1~0_combout\)))) # (!\PWM2_FA02|comp_out~q\ & ((\PWM2_FA02|port_PWM02~q\) # ((\PWM2_FA02|Equal1~1_combout\ & \PWM2_FA02|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|comp_out~q\,
	datab => \PWM2_FA02|Equal1~1_combout\,
	datac => \PWM2_FA02|port_PWM02~q\,
	datad => \PWM2_FA02|Equal1~0_combout\,
	combout => \PWM2_FA02|port_PWM02~0_combout\);

-- Location: FF_X30_Y29_N1
\PWM2_FA02|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|port_PWM02~q\);

-- Location: LCCOMB_X23_Y21_N2
\ucr6|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~2_combout\ = (\ucr6|c_int\(1) & ((\ucr6|c_int[0]~7_combout\ & (\ucr6|Add2~1\ & VCC)) # (!\ucr6|c_int[0]~7_combout\ & (!\ucr6|Add2~1\)))) # (!\ucr6|c_int\(1) & ((\ucr6|c_int[0]~7_combout\ & (!\ucr6|Add2~1\)) # (!\ucr6|c_int[0]~7_combout\ & 
-- ((\ucr6|Add2~1\) # (GND)))))
-- \ucr6|Add2~3\ = CARRY((\ucr6|c_int\(1) & (!\ucr6|c_int[0]~7_combout\ & !\ucr6|Add2~1\)) # (!\ucr6|c_int\(1) & ((!\ucr6|Add2~1\) # (!\ucr6|c_int[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(1),
	datab => \ucr6|c_int[0]~7_combout\,
	datad => VCC,
	cin => \ucr6|Add2~1\,
	combout => \ucr6|Add2~2_combout\,
	cout => \ucr6|Add2~3\);

-- Location: FF_X23_Y21_N3
\ucr6|c_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|Add2~2_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(1));

-- Location: LCCOMB_X23_Y21_N4
\ucr6|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~4_combout\ = ((\ucr6|c_int\(2) $ (\ucr6|c_int[0]~7_combout\ $ (\ucr6|Add2~3\)))) # (GND)
-- \ucr6|Add2~5\ = CARRY((\ucr6|c_int\(2) & (\ucr6|c_int[0]~7_combout\ & !\ucr6|Add2~3\)) # (!\ucr6|c_int\(2) & ((\ucr6|c_int[0]~7_combout\) # (!\ucr6|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(2),
	datab => \ucr6|c_int[0]~7_combout\,
	datad => VCC,
	cin => \ucr6|Add2~3\,
	combout => \ucr6|Add2~4_combout\,
	cout => \ucr6|Add2~5\);

-- Location: LCCOMB_X23_Y23_N6
\ucr6|c_int[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[2]~11_combout\ = !\ucr6|Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucr6|Add2~4_combout\,
	combout => \ucr6|c_int[2]~11_combout\);

-- Location: FF_X23_Y23_N7
\ucr6|c_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|c_int[2]~11_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(2));

-- Location: LCCOMB_X23_Y21_N6
\ucr6|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~6_combout\ = (\ucr6|c_int\(3) & ((\ucr6|c_int[0]~7_combout\ & (!\ucr6|Add2~5\)) # (!\ucr6|c_int[0]~7_combout\ & ((\ucr6|Add2~5\) # (GND))))) # (!\ucr6|c_int\(3) & ((\ucr6|c_int[0]~7_combout\ & (\ucr6|Add2~5\ & VCC)) # 
-- (!\ucr6|c_int[0]~7_combout\ & (!\ucr6|Add2~5\))))
-- \ucr6|Add2~7\ = CARRY((\ucr6|c_int\(3) & ((!\ucr6|Add2~5\) # (!\ucr6|c_int[0]~7_combout\))) # (!\ucr6|c_int\(3) & (!\ucr6|c_int[0]~7_combout\ & !\ucr6|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(3),
	datab => \ucr6|c_int[0]~7_combout\,
	datad => VCC,
	cin => \ucr6|Add2~5\,
	combout => \ucr6|Add2~6_combout\,
	cout => \ucr6|Add2~7\);

-- Location: LCCOMB_X23_Y23_N12
\ucr6|c_int[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[3]~10_combout\ = !\ucr6|Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr6|Add2~6_combout\,
	combout => \ucr6|c_int[3]~10_combout\);

-- Location: FF_X23_Y23_N13
\ucr6|c_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|c_int[3]~10_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(3));

-- Location: LCCOMB_X23_Y23_N20
\PWM2_FC03|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|LessThan0~1_combout\ = (!\ucr6|c_int\(0) & (\ucr6|c_int\(1) & !\ucr6|c_int\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr6|c_int\(0),
	datac => \ucr6|c_int\(1),
	datad => \ucr6|c_int\(2),
	combout => \PWM2_FC03|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y21_N8
\ucr6|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~8_combout\ = ((\ucr6|c_int\(4) $ (\ucr6|c_int[0]~7_combout\ $ (\ucr6|Add2~7\)))) # (GND)
-- \ucr6|Add2~9\ = CARRY((\ucr6|c_int\(4) & (\ucr6|c_int[0]~7_combout\ & !\ucr6|Add2~7\)) # (!\ucr6|c_int\(4) & ((\ucr6|c_int[0]~7_combout\) # (!\ucr6|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(4),
	datab => \ucr6|c_int[0]~7_combout\,
	datad => VCC,
	cin => \ucr6|Add2~7\,
	combout => \ucr6|Add2~8_combout\,
	cout => \ucr6|Add2~9\);

-- Location: LCCOMB_X23_Y23_N8
\ucr6|c_int[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[4]~14_combout\ = !\ucr6|Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ucr6|Add2~8_combout\,
	combout => \ucr6|c_int[4]~14_combout\);

-- Location: FF_X23_Y23_N9
\ucr6|c_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|c_int[4]~14_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(4));

-- Location: LCCOMB_X23_Y21_N10
\ucr6|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~10_combout\ = (\ucr6|c_int\(5) & ((\ucr6|c_int[0]~7_combout\ & (!\ucr6|Add2~9\)) # (!\ucr6|c_int[0]~7_combout\ & ((\ucr6|Add2~9\) # (GND))))) # (!\ucr6|c_int\(5) & ((\ucr6|c_int[0]~7_combout\ & (\ucr6|Add2~9\ & VCC)) # 
-- (!\ucr6|c_int[0]~7_combout\ & (!\ucr6|Add2~9\))))
-- \ucr6|Add2~11\ = CARRY((\ucr6|c_int\(5) & ((!\ucr6|Add2~9\) # (!\ucr6|c_int[0]~7_combout\))) # (!\ucr6|c_int\(5) & (!\ucr6|c_int[0]~7_combout\ & !\ucr6|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(5),
	datab => \ucr6|c_int[0]~7_combout\,
	datad => VCC,
	cin => \ucr6|Add2~9\,
	combout => \ucr6|Add2~10_combout\,
	cout => \ucr6|Add2~11\);

-- Location: LCCOMB_X24_Y21_N26
\ucr6|c_int[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[5]~13_combout\ = !\ucr6|Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr6|Add2~10_combout\,
	combout => \ucr6|c_int[5]~13_combout\);

-- Location: FF_X24_Y21_N27
\ucr6|c_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|c_int[5]~13_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(5));

-- Location: LCCOMB_X23_Y21_N12
\ucr6|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~12_combout\ = ((\ucr6|c_int\(6) $ (\ucr6|c_int[0]~7_combout\ $ (!\ucr6|Add2~11\)))) # (GND)
-- \ucr6|Add2~13\ = CARRY((\ucr6|c_int\(6) & ((\ucr6|c_int[0]~7_combout\) # (!\ucr6|Add2~11\))) # (!\ucr6|c_int\(6) & (\ucr6|c_int[0]~7_combout\ & !\ucr6|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(6),
	datab => \ucr6|c_int[0]~7_combout\,
	datad => VCC,
	cin => \ucr6|Add2~11\,
	combout => \ucr6|Add2~12_combout\,
	cout => \ucr6|Add2~13\);

-- Location: FF_X23_Y21_N13
\ucr6|c_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|Add2~12_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(6));

-- Location: LCCOMB_X23_Y21_N14
\ucr6|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~14_combout\ = (\ucr6|c_int\(7) & ((\ucr6|c_int[0]~7_combout\ & (!\ucr6|Add2~13\)) # (!\ucr6|c_int[0]~7_combout\ & ((\ucr6|Add2~13\) # (GND))))) # (!\ucr6|c_int\(7) & ((\ucr6|c_int[0]~7_combout\ & (\ucr6|Add2~13\ & VCC)) # 
-- (!\ucr6|c_int[0]~7_combout\ & (!\ucr6|Add2~13\))))
-- \ucr6|Add2~15\ = CARRY((\ucr6|c_int\(7) & ((!\ucr6|Add2~13\) # (!\ucr6|c_int[0]~7_combout\))) # (!\ucr6|c_int\(7) & (!\ucr6|c_int[0]~7_combout\ & !\ucr6|Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(7),
	datab => \ucr6|c_int[0]~7_combout\,
	datad => VCC,
	cin => \ucr6|Add2~13\,
	combout => \ucr6|Add2~14_combout\,
	cout => \ucr6|Add2~15\);

-- Location: LCCOMB_X24_Y21_N16
\ucr6|c_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[7]~12_combout\ = !\ucr6|Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr6|Add2~14_combout\,
	combout => \ucr6|c_int[7]~12_combout\);

-- Location: FF_X24_Y21_N17
\ucr6|c_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|c_int[7]~12_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(7));

-- Location: LCCOMB_X23_Y21_N16
\ucr6|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~16_combout\ = ((\ucr6|c_int[0]~7_combout\ $ (\ucr6|c_int\(8) $ (\ucr6|Add2~15\)))) # (GND)
-- \ucr6|Add2~17\ = CARRY((\ucr6|c_int[0]~7_combout\ & ((!\ucr6|Add2~15\) # (!\ucr6|c_int\(8)))) # (!\ucr6|c_int[0]~7_combout\ & (!\ucr6|c_int\(8) & !\ucr6|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int[0]~7_combout\,
	datab => \ucr6|c_int\(8),
	datad => VCC,
	cin => \ucr6|Add2~15\,
	combout => \ucr6|Add2~16_combout\,
	cout => \ucr6|Add2~17\);

-- Location: LCCOMB_X23_Y21_N18
\ucr6|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~18_combout\ = (\ucr6|c_int[0]~7_combout\ & ((\ucr6|c_int\(9) & (\ucr6|Add2~17\ & VCC)) # (!\ucr6|c_int\(9) & (!\ucr6|Add2~17\)))) # (!\ucr6|c_int[0]~7_combout\ & ((\ucr6|c_int\(9) & (!\ucr6|Add2~17\)) # (!\ucr6|c_int\(9) & ((\ucr6|Add2~17\) # 
-- (GND)))))
-- \ucr6|Add2~19\ = CARRY((\ucr6|c_int[0]~7_combout\ & (!\ucr6|c_int\(9) & !\ucr6|Add2~17\)) # (!\ucr6|c_int[0]~7_combout\ & ((!\ucr6|Add2~17\) # (!\ucr6|c_int\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int[0]~7_combout\,
	datab => \ucr6|c_int\(9),
	datad => VCC,
	cin => \ucr6|Add2~17\,
	combout => \ucr6|Add2~18_combout\,
	cout => \ucr6|Add2~19\);

-- Location: FF_X23_Y21_N19
\ucr6|c_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|Add2~18_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(9));

-- Location: LCCOMB_X23_Y21_N20
\ucr6|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~20_combout\ = ((\ucr6|c_int[0]~7_combout\ $ (\ucr6|c_int\(10) $ (!\ucr6|Add2~19\)))) # (GND)
-- \ucr6|Add2~21\ = CARRY((\ucr6|c_int[0]~7_combout\ & ((\ucr6|c_int\(10)) # (!\ucr6|Add2~19\))) # (!\ucr6|c_int[0]~7_combout\ & (\ucr6|c_int\(10) & !\ucr6|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int[0]~7_combout\,
	datab => \ucr6|c_int\(10),
	datad => VCC,
	cin => \ucr6|Add2~19\,
	combout => \ucr6|Add2~20_combout\,
	cout => \ucr6|Add2~21\);

-- Location: FF_X23_Y21_N21
\ucr6|c_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|Add2~20_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(10));

-- Location: LCCOMB_X24_Y21_N10
\ucr6|c_int[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[0]~2_combout\ = (!\ucr6|c_int\(4) & (\ucr6|c_int\(10) & (!\ucr6|c_int\(5) & !\ucr6|c_int\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(4),
	datab => \ucr6|c_int\(10),
	datac => \ucr6|c_int\(5),
	datad => \ucr6|c_int\(8),
	combout => \ucr6|c_int[0]~2_combout\);

-- Location: LCCOMB_X24_Y21_N12
\ucr6|c_int[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[0]~3_combout\ = (\ucr6|c_int[0]~2_combout\ & ((\PWM2_FC03|LessThan0~1_combout\) # (!\ucr6|c_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(3),
	datac => \PWM2_FC03|LessThan0~1_combout\,
	datad => \ucr6|c_int[0]~2_combout\,
	combout => \ucr6|c_int[0]~3_combout\);

-- Location: LCCOMB_X23_Y21_N22
\ucr6|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~22_combout\ = (\ucr6|c_int[0]~7_combout\ & ((\ucr6|c_int\(11) & (\ucr6|Add2~21\ & VCC)) # (!\ucr6|c_int\(11) & (!\ucr6|Add2~21\)))) # (!\ucr6|c_int[0]~7_combout\ & ((\ucr6|c_int\(11) & (!\ucr6|Add2~21\)) # (!\ucr6|c_int\(11) & ((\ucr6|Add2~21\) 
-- # (GND)))))
-- \ucr6|Add2~23\ = CARRY((\ucr6|c_int[0]~7_combout\ & (!\ucr6|c_int\(11) & !\ucr6|Add2~21\)) # (!\ucr6|c_int[0]~7_combout\ & ((!\ucr6|Add2~21\) # (!\ucr6|c_int\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int[0]~7_combout\,
	datab => \ucr6|c_int\(11),
	datad => VCC,
	cin => \ucr6|Add2~21\,
	combout => \ucr6|Add2~22_combout\,
	cout => \ucr6|Add2~23\);

-- Location: FF_X23_Y21_N23
\ucr6|c_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|Add2~22_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(11));

-- Location: LCCOMB_X23_Y21_N24
\ucr6|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~24_combout\ = ((\ucr6|c_int[0]~7_combout\ $ (\ucr6|c_int\(12) $ (!\ucr6|Add2~23\)))) # (GND)
-- \ucr6|Add2~25\ = CARRY((\ucr6|c_int[0]~7_combout\ & ((\ucr6|c_int\(12)) # (!\ucr6|Add2~23\))) # (!\ucr6|c_int[0]~7_combout\ & (\ucr6|c_int\(12) & !\ucr6|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int[0]~7_combout\,
	datab => \ucr6|c_int\(12),
	datad => VCC,
	cin => \ucr6|Add2~23\,
	combout => \ucr6|Add2~24_combout\,
	cout => \ucr6|Add2~25\);

-- Location: FF_X23_Y21_N25
\ucr6|c_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|Add2~24_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(12));

-- Location: LCCOMB_X23_Y21_N26
\ucr6|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~26_combout\ = (\ucr6|c_int[0]~7_combout\ & ((\ucr6|c_int\(13) & (\ucr6|Add2~25\ & VCC)) # (!\ucr6|c_int\(13) & (!\ucr6|Add2~25\)))) # (!\ucr6|c_int[0]~7_combout\ & ((\ucr6|c_int\(13) & (!\ucr6|Add2~25\)) # (!\ucr6|c_int\(13) & ((\ucr6|Add2~25\) 
-- # (GND)))))
-- \ucr6|Add2~27\ = CARRY((\ucr6|c_int[0]~7_combout\ & (!\ucr6|c_int\(13) & !\ucr6|Add2~25\)) # (!\ucr6|c_int[0]~7_combout\ & ((!\ucr6|Add2~25\) # (!\ucr6|c_int\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int[0]~7_combout\,
	datab => \ucr6|c_int\(13),
	datad => VCC,
	cin => \ucr6|Add2~25\,
	combout => \ucr6|Add2~26_combout\,
	cout => \ucr6|Add2~27\);

-- Location: FF_X23_Y21_N27
\ucr6|c_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|Add2~26_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(13));

-- Location: LCCOMB_X23_Y21_N28
\ucr6|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~28_combout\ = ((\ucr6|c_int[0]~7_combout\ $ (\ucr6|c_int\(14) $ (!\ucr6|Add2~27\)))) # (GND)
-- \ucr6|Add2~29\ = CARRY((\ucr6|c_int[0]~7_combout\ & ((\ucr6|c_int\(14)) # (!\ucr6|Add2~27\))) # (!\ucr6|c_int[0]~7_combout\ & (\ucr6|c_int\(14) & !\ucr6|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int[0]~7_combout\,
	datab => \ucr6|c_int\(14),
	datad => VCC,
	cin => \ucr6|Add2~27\,
	combout => \ucr6|Add2~28_combout\,
	cout => \ucr6|Add2~29\);

-- Location: FF_X23_Y21_N29
\ucr6|c_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|Add2~28_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(14));

-- Location: LCCOMB_X23_Y21_N30
\ucr6|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|Add2~30_combout\ = \ucr6|c_int\(15) $ (\ucr6|Add2~29\ $ (\ucr6|c_int[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(15),
	datad => \ucr6|c_int[0]~7_combout\,
	cin => \ucr6|Add2~29\,
	combout => \ucr6|Add2~30_combout\);

-- Location: FF_X23_Y21_N31
\ucr6|c_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|Add2~30_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(15));

-- Location: LCCOMB_X24_Y21_N4
\PWM2_FB03|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|LessThan0~0_combout\ = (!\ucr6|c_int\(13) & (!\ucr6|c_int\(12) & (!\ucr6|c_int\(14) & !\ucr6|c_int\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(13),
	datab => \ucr6|c_int\(12),
	datac => \ucr6|c_int\(14),
	datad => \ucr6|c_int\(15),
	combout => \PWM2_FB03|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y21_N14
\PWM2_FB03|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|LessThan0~5_combout\ = (\PWM2_FB03|LessThan0~0_combout\ & !\ucr6|c_int\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB03|LessThan0~0_combout\,
	datad => \ucr6|c_int\(11),
	combout => \PWM2_FB03|LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y23_N22
\ucr6|c_int[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[0]~4_combout\ = (\ucr6|c_int\(2) & (\ucr6|c_int\(0) & (!\ucr6|c_int\(1) & \ucr6|c_int\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(2),
	datab => \ucr6|c_int\(0),
	datac => \ucr6|c_int\(1),
	datad => \ucr6|c_int\(8),
	combout => \ucr6|c_int[0]~4_combout\);

-- Location: LCCOMB_X23_Y23_N24
\ucr6|c_int[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[0]~5_combout\ = (\ucr6|c_int\(3) & (\ucr6|c_int\(4) & (\ucr6|c_int[0]~4_combout\ & \ucr6|c_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(3),
	datab => \ucr6|c_int\(4),
	datac => \ucr6|c_int[0]~4_combout\,
	datad => \ucr6|c_int\(5),
	combout => \ucr6|c_int[0]~5_combout\);

-- Location: FF_X24_Y21_N29
\ucr6|dir_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|c_int[0]~7_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|dir_int~q\);

-- Location: LCCOMB_X24_Y21_N30
\ucr6|c_int[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[0]~6_combout\ = (\ucr6|c_int\(10) & (((\ucr6|c_int\(9)) # (\ucr6|dir_int~q\)))) # (!\ucr6|c_int\(10) & (\ucr6|dir_int~q\ & ((\ucr6|c_int\(9)) # (!\ucr6|c_int[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int[0]~5_combout\,
	datab => \ucr6|c_int\(10),
	datac => \ucr6|c_int\(9),
	datad => \ucr6|dir_int~q\,
	combout => \ucr6|c_int[0]~6_combout\);

-- Location: LCCOMB_X24_Y21_N22
\ucr6|c_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[0]~0_combout\ = (\ucr6|dir_int~q\) # ((!\ucr6|c_int\(8) & \ucr6|c_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr6|c_int\(8),
	datac => \ucr6|c_int\(10),
	datad => \ucr6|dir_int~q\,
	combout => \ucr6|c_int[0]~0_combout\);

-- Location: LCCOMB_X24_Y21_N24
\ucr6|c_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[0]~1_combout\ = (\ucr6|c_int[0]~0_combout\ & ((\ucr6|c_int\(6)) # (!\ucr6|c_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(6),
	datac => \ucr6|c_int[0]~0_combout\,
	datad => \ucr6|c_int\(7),
	combout => \ucr6|c_int[0]~1_combout\);

-- Location: LCCOMB_X24_Y21_N28
\ucr6|c_int[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[0]~7_combout\ = (\ucr6|c_int[0]~3_combout\) # (((\ucr6|c_int[0]~6_combout\) # (\ucr6|c_int[0]~1_combout\)) # (!\PWM2_FB03|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int[0]~3_combout\,
	datab => \PWM2_FB03|LessThan0~5_combout\,
	datac => \ucr6|c_int[0]~6_combout\,
	datad => \ucr6|c_int[0]~1_combout\,
	combout => \ucr6|c_int[0]~7_combout\);

-- Location: LCCOMB_X23_Y23_N26
\ucr6|c_int[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucr6|c_int[8]~9_combout\ = !\ucr6|Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ucr6|Add2~16_combout\,
	combout => \ucr6|c_int[8]~9_combout\);

-- Location: FF_X23_Y23_N27
\ucr6|c_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ucr6|c_int[8]~9_combout\,
	clrn => \rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ucr6|c_int\(8));

-- Location: LCCOMB_X23_Y24_N0
\PWM2_FA03|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|LessThan0~1_combout\ = (!\ucr6|c_int\(6) & (\ucr6|c_int\(5) & (\ucr6|c_int\(4) & \ucr6|c_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(6),
	datab => \ucr6|c_int\(5),
	datac => \ucr6|c_int\(4),
	datad => \ucr6|c_int\(7),
	combout => \PWM2_FA03|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y24_N22
\PWM2_FA03|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|LessThan0~0_combout\ = (\ucr6|c_int\(3)) # ((\ucr6|c_int\(2) & ((\ucr6|c_int\(0)) # (!\ucr6|c_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(1),
	datab => \ucr6|c_int\(3),
	datac => \ucr6|c_int\(0),
	datad => \ucr6|c_int\(2),
	combout => \PWM2_FA03|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y21_N6
\PWM2_FB03|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|LessThan0~1_combout\ = (!\ucr6|c_int\(9) & (!\ucr6|c_int\(10) & (\PWM2_FB03|LessThan0~0_combout\ & !\ucr6|c_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(9),
	datab => \ucr6|c_int\(10),
	datac => \PWM2_FB03|LessThan0~0_combout\,
	datad => \ucr6|c_int\(11),
	combout => \PWM2_FB03|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y24_N6
\PWM2_FA03|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|LessThan0~2_combout\ = ((!\ucr6|c_int\(8) & ((!\PWM2_FA03|LessThan0~0_combout\) # (!\PWM2_FA03|LessThan0~1_combout\)))) # (!\PWM2_FB03|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(8),
	datab => \PWM2_FA03|LessThan0~1_combout\,
	datac => \PWM2_FA03|LessThan0~0_combout\,
	datad => \PWM2_FB03|LessThan0~1_combout\,
	combout => \PWM2_FA03|LessThan0~2_combout\);

-- Location: FF_X23_Y24_N7
\PWM2_FA03|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|comp_out~q\);

-- Location: LCCOMB_X23_Y24_N4
\PWM2_FA03|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~20_combout\ = (!\PWM2_FA03|comp_out~q\ & \PWM2_FA03|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|comp_out~q\,
	datad => \PWM2_FA03|Add1~4_combout\,
	combout => \PWM2_FA03|Add1~20_combout\);

-- Location: FF_X23_Y24_N5
\PWM2_FA03|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count2\(2));

-- Location: LCCOMB_X24_Y24_N6
\PWM2_FA03|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~4_combout\ = (\PWM2_FA03|var_Dead_Count2\(2) & (\PWM2_FA03|Add1~3\ $ (GND))) # (!\PWM2_FA03|var_Dead_Count2\(2) & (!\PWM2_FA03|Add1~3\ & VCC))
-- \PWM2_FA03|Add1~5\ = CARRY((\PWM2_FA03|var_Dead_Count2\(2) & !\PWM2_FA03|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM2_FA03|Add1~3\,
	combout => \PWM2_FA03|Add1~4_combout\,
	cout => \PWM2_FA03|Add1~5\);

-- Location: LCCOMB_X24_Y24_N8
\PWM2_FA03|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~6_combout\ = (\PWM2_FA03|var_Dead_Count2\(3) & (!\PWM2_FA03|Add1~5\)) # (!\PWM2_FA03|var_Dead_Count2\(3) & ((\PWM2_FA03|Add1~5\) # (GND)))
-- \PWM2_FA03|Add1~7\ = CARRY((!\PWM2_FA03|Add1~5\) # (!\PWM2_FA03|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM2_FA03|Add1~5\,
	combout => \PWM2_FA03|Add1~6_combout\,
	cout => \PWM2_FA03|Add1~7\);

-- Location: LCCOMB_X24_Y24_N26
\PWM2_FA03|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~8_combout\ = (!\PWM2_FA03|comp_out~q\ & \PWM2_FA03|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|comp_out~q\,
	datac => \PWM2_FA03|Add1~6_combout\,
	combout => \PWM2_FA03|Add1~8_combout\);

-- Location: FF_X24_Y24_N27
\PWM2_FA03|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count2\(3));

-- Location: LCCOMB_X24_Y24_N10
\PWM2_FA03|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~9_combout\ = (\PWM2_FA03|var_Dead_Count2\(4) & (\PWM2_FA03|Add1~7\ $ (GND))) # (!\PWM2_FA03|var_Dead_Count2\(4) & (!\PWM2_FA03|Add1~7\ & VCC))
-- \PWM2_FA03|Add1~10\ = CARRY((\PWM2_FA03|var_Dead_Count2\(4) & !\PWM2_FA03|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM2_FA03|Add1~7\,
	combout => \PWM2_FA03|Add1~9_combout\,
	cout => \PWM2_FA03|Add1~10\);

-- Location: LCCOMB_X24_Y24_N30
\PWM2_FA03|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~16_combout\ = (!\PWM2_FA03|comp_out~q\ & \PWM2_FA03|Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA03|comp_out~q\,
	datad => \PWM2_FA03|Add1~9_combout\,
	combout => \PWM2_FA03|Add1~16_combout\);

-- Location: FF_X24_Y24_N31
\PWM2_FA03|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count2\(4));

-- Location: LCCOMB_X24_Y24_N12
\PWM2_FA03|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~11_combout\ = (\PWM2_FA03|var_Dead_Count2\(5) & (!\PWM2_FA03|Add1~10\)) # (!\PWM2_FA03|var_Dead_Count2\(5) & ((\PWM2_FA03|Add1~10\) # (GND)))
-- \PWM2_FA03|Add1~12\ = CARRY((!\PWM2_FA03|Add1~10\) # (!\PWM2_FA03|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM2_FA03|Add1~10\,
	combout => \PWM2_FA03|Add1~11_combout\,
	cout => \PWM2_FA03|Add1~12\);

-- Location: LCCOMB_X24_Y24_N0
\PWM2_FA03|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~17_combout\ = (!\PWM2_FA03|comp_out~q\ & \PWM2_FA03|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA03|comp_out~q\,
	datad => \PWM2_FA03|Add1~11_combout\,
	combout => \PWM2_FA03|Add1~17_combout\);

-- Location: FF_X24_Y24_N1
\PWM2_FA03|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count2\(5));

-- Location: LCCOMB_X24_Y24_N2
\PWM2_FA03|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~0_combout\ = (\PWM2_FA03|LessThan2~1_combout\ & (\PWM2_FA03|var_Dead_Count2\(0) $ (VCC))) # (!\PWM2_FA03|LessThan2~1_combout\ & (\PWM2_FA03|var_Dead_Count2\(0) & VCC))
-- \PWM2_FA03|Add1~1\ = CARRY((\PWM2_FA03|LessThan2~1_combout\ & \PWM2_FA03|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|LessThan2~1_combout\,
	datab => \PWM2_FA03|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM2_FA03|Add1~0_combout\,
	cout => \PWM2_FA03|Add1~1\);

-- Location: LCCOMB_X24_Y24_N16
\PWM2_FA03|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~18_combout\ = (!\PWM2_FA03|comp_out~q\ & \PWM2_FA03|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA03|comp_out~q\,
	datad => \PWM2_FA03|Add1~0_combout\,
	combout => \PWM2_FA03|Add1~18_combout\);

-- Location: FF_X24_Y24_N17
\PWM2_FA03|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count2\(0));

-- Location: LCCOMB_X24_Y24_N28
\PWM2_FA03|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|LessThan2~0_combout\ = (((!\PWM2_FA03|var_Dead_Count2\(1)) # (!\PWM2_FA03|var_Dead_Count2\(2))) # (!\PWM2_FA03|var_Dead_Count2\(0))) # (!\PWM2_FA03|var_Dead_Count2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|var_Dead_Count2\(3),
	datab => \PWM2_FA03|var_Dead_Count2\(0),
	datac => \PWM2_FA03|var_Dead_Count2\(2),
	datad => \PWM2_FA03|var_Dead_Count2\(1),
	combout => \PWM2_FA03|LessThan2~0_combout\);

-- Location: LCCOMB_X24_Y24_N14
\PWM2_FA03|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~13_combout\ = \PWM2_FA03|Add1~12\ $ (!\PWM2_FA03|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FA03|var_Dead_Count2\(6),
	cin => \PWM2_FA03|Add1~12\,
	combout => \PWM2_FA03|Add1~13_combout\);

-- Location: LCCOMB_X24_Y24_N18
\PWM2_FA03|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~15_combout\ = (!\PWM2_FA03|comp_out~q\ & \PWM2_FA03|Add1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|comp_out~q\,
	datac => \PWM2_FA03|Add1~13_combout\,
	combout => \PWM2_FA03|Add1~15_combout\);

-- Location: FF_X24_Y24_N19
\PWM2_FA03|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count2\(6));

-- Location: LCCOMB_X24_Y24_N20
\PWM2_FA03|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|LessThan2~1_combout\ = (!\PWM2_FA03|var_Dead_Count2\(5) & (\PWM2_FA03|LessThan2~0_combout\ & (!\PWM2_FA03|var_Dead_Count2\(4) & !\PWM2_FA03|var_Dead_Count2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|var_Dead_Count2\(5),
	datab => \PWM2_FA03|LessThan2~0_combout\,
	datac => \PWM2_FA03|var_Dead_Count2\(4),
	datad => \PWM2_FA03|var_Dead_Count2\(6),
	combout => \PWM2_FA03|LessThan2~1_combout\);

-- Location: LCCOMB_X24_Y24_N4
\PWM2_FA03|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~2_combout\ = (\PWM2_FA03|var_Dead_Count2\(1) & (!\PWM2_FA03|Add1~1\)) # (!\PWM2_FA03|var_Dead_Count2\(1) & ((\PWM2_FA03|Add1~1\) # (GND)))
-- \PWM2_FA03|Add1~3\ = CARRY((!\PWM2_FA03|Add1~1\) # (!\PWM2_FA03|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM2_FA03|Add1~1\,
	combout => \PWM2_FA03|Add1~2_combout\,
	cout => \PWM2_FA03|Add1~3\);

-- Location: LCCOMB_X24_Y24_N24
\PWM2_FA03|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add1~19_combout\ = (!\PWM2_FA03|comp_out~q\ & \PWM2_FA03|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|comp_out~q\,
	datac => \PWM2_FA03|Add1~2_combout\,
	combout => \PWM2_FA03|Add1~19_combout\);

-- Location: FF_X24_Y24_N25
\PWM2_FA03|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count2\(1));

-- Location: LCCOMB_X23_Y24_N24
\PWM2_FA03|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Equal1~0_combout\ = (\PWM2_FA03|Add1~4_combout\ & (\PWM2_FA03|Add1~0_combout\ & (\PWM2_FA03|Add1~2_combout\ & !\PWM2_FA03|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|Add1~4_combout\,
	datab => \PWM2_FA03|Add1~0_combout\,
	datac => \PWM2_FA03|Add1~2_combout\,
	datad => \PWM2_FA03|comp_out~q\,
	combout => \PWM2_FA03|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y24_N22
\PWM2_FA03|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Equal1~1_combout\ = (!\PWM2_FA03|Add1~16_combout\ & (!\PWM2_FA03|Add1~17_combout\ & (!\PWM2_FA03|Add1~15_combout\ & \PWM2_FA03|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|Add1~16_combout\,
	datab => \PWM2_FA03|Add1~17_combout\,
	datac => \PWM2_FA03|Add1~15_combout\,
	datad => \PWM2_FA03|Add1~8_combout\,
	combout => \PWM2_FA03|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y24_N16
\PWM2_FA03|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|port_PWM02~0_combout\ = (\PWM2_FA03|comp_out~q\ & (\PWM2_FA03|Equal1~0_combout\ & ((\PWM2_FA03|Equal1~1_combout\)))) # (!\PWM2_FA03|comp_out~q\ & ((\PWM2_FA03|port_PWM02~q\) # ((\PWM2_FA03|Equal1~0_combout\ & \PWM2_FA03|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|comp_out~q\,
	datab => \PWM2_FA03|Equal1~0_combout\,
	datac => \PWM2_FA03|port_PWM02~q\,
	datad => \PWM2_FA03|Equal1~1_combout\,
	combout => \PWM2_FA03|port_PWM02~0_combout\);

-- Location: FF_X23_Y24_N17
\PWM2_FA03|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|port_PWM02~q\);

-- Location: FF_X25_Y25_N27
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

-- Location: LCCOMB_X25_Y25_N6
\PWM2_FA01|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~6_combout\ = (\PWM2_FA01|var_Dead_Count1\(3) & (!\PWM2_FA01|Add0~5\)) # (!\PWM2_FA01|var_Dead_Count1\(3) & ((\PWM2_FA01|Add0~5\) # (GND)))
-- \PWM2_FA01|Add0~7\ = CARRY((!\PWM2_FA01|Add0~5\) # (!\PWM2_FA01|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM2_FA01|Add0~5\,
	combout => \PWM2_FA01|Add0~6_combout\,
	cout => \PWM2_FA01|Add0~7\);

-- Location: LCCOMB_X25_Y25_N8
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

-- Location: LCCOMB_X25_Y25_N30
\PWM2_FA01|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~16_combout\ = (\PWM2_FA01|Add0~9_combout\ & \PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA01|Add0~9_combout\,
	datad => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add0~16_combout\);

-- Location: FF_X25_Y25_N31
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

-- Location: LCCOMB_X25_Y25_N10
\PWM2_FA01|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~11_combout\ = (\PWM2_FA01|var_Dead_Count1\(5) & (!\PWM2_FA01|Add0~10\)) # (!\PWM2_FA01|var_Dead_Count1\(5) & ((\PWM2_FA01|Add0~10\) # (GND)))
-- \PWM2_FA01|Add0~12\ = CARRY((!\PWM2_FA01|Add0~10\) # (!\PWM2_FA01|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM2_FA01|Add0~10\,
	combout => \PWM2_FA01|Add0~11_combout\,
	cout => \PWM2_FA01|Add0~12\);

-- Location: LCCOMB_X25_Y25_N16
\PWM2_FA01|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~17_combout\ = (\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|comp_out~q\,
	datac => \PWM2_FA01|Add0~11_combout\,
	combout => \PWM2_FA01|Add0~17_combout\);

-- Location: FF_X25_Y25_N17
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

-- Location: LCCOMB_X25_Y25_N12
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

-- Location: LCCOMB_X25_Y25_N18
\PWM2_FA01|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~15_combout\ = (\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|comp_out~q\,
	datac => \PWM2_FA01|Add0~13_combout\,
	combout => \PWM2_FA01|Add0~15_combout\);

-- Location: FF_X25_Y25_N19
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

-- Location: LCCOMB_X25_Y25_N20
\PWM2_FA01|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan1~0_combout\ = (((!\PWM2_FA01|var_Dead_Count1\(1)) # (!\PWM2_FA01|var_Dead_Count1\(3))) # (!\PWM2_FA01|var_Dead_Count1\(2))) # (!\PWM2_FA01|var_Dead_Count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count1\(0),
	datab => \PWM2_FA01|var_Dead_Count1\(2),
	datac => \PWM2_FA01|var_Dead_Count1\(3),
	datad => \PWM2_FA01|var_Dead_Count1\(1),
	combout => \PWM2_FA01|LessThan1~0_combout\);

-- Location: LCCOMB_X25_Y25_N28
\PWM2_FA01|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|LessThan1~1_combout\ = (!\PWM2_FA01|var_Dead_Count1\(5) & (!\PWM2_FA01|var_Dead_Count1\(6) & (!\PWM2_FA01|var_Dead_Count1\(4) & \PWM2_FA01|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count1\(5),
	datab => \PWM2_FA01|var_Dead_Count1\(6),
	datac => \PWM2_FA01|var_Dead_Count1\(4),
	datad => \PWM2_FA01|LessThan1~0_combout\,
	combout => \PWM2_FA01|LessThan1~1_combout\);

-- Location: LCCOMB_X25_Y25_N0
\PWM2_FA01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~0_combout\ = (\PWM2_FA01|var_Dead_Count1\(0) & (\PWM2_FA01|LessThan1~1_combout\ $ (VCC))) # (!\PWM2_FA01|var_Dead_Count1\(0) & (\PWM2_FA01|LessThan1~1_combout\ & VCC))
-- \PWM2_FA01|Add0~1\ = CARRY((\PWM2_FA01|var_Dead_Count1\(0) & \PWM2_FA01|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|var_Dead_Count1\(0),
	datab => \PWM2_FA01|LessThan1~1_combout\,
	datad => VCC,
	combout => \PWM2_FA01|Add0~0_combout\,
	cout => \PWM2_FA01|Add0~1\);

-- Location: LCCOMB_X25_Y25_N22
\PWM2_FA01|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~18_combout\ = (\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|comp_out~q\,
	datad => \PWM2_FA01|Add0~0_combout\,
	combout => \PWM2_FA01|Add0~18_combout\);

-- Location: FF_X25_Y25_N23
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

-- Location: LCCOMB_X25_Y25_N2
\PWM2_FA01|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~2_combout\ = (\PWM2_FA01|var_Dead_Count1\(1) & (!\PWM2_FA01|Add0~1\)) # (!\PWM2_FA01|var_Dead_Count1\(1) & ((\PWM2_FA01|Add0~1\) # (GND)))
-- \PWM2_FA01|Add0~3\ = CARRY((!\PWM2_FA01|Add0~1\) # (!\PWM2_FA01|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM2_FA01|Add0~1\,
	combout => \PWM2_FA01|Add0~2_combout\,
	cout => \PWM2_FA01|Add0~3\);

-- Location: LCCOMB_X26_Y25_N26
\PWM2_FA01|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~19_combout\ = (\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|comp_out~q\,
	datad => \PWM2_FA01|Add0~2_combout\,
	combout => \PWM2_FA01|Add0~19_combout\);

-- Location: FF_X26_Y25_N27
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

-- Location: LCCOMB_X25_Y25_N4
\PWM2_FA01|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~4_combout\ = (\PWM2_FA01|var_Dead_Count1\(2) & (\PWM2_FA01|Add0~3\ $ (GND))) # (!\PWM2_FA01|var_Dead_Count1\(2) & (!\PWM2_FA01|Add0~3\ & VCC))
-- \PWM2_FA01|Add0~5\ = CARRY((\PWM2_FA01|var_Dead_Count1\(2) & !\PWM2_FA01|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM2_FA01|Add0~3\,
	combout => \PWM2_FA01|Add0~4_combout\,
	cout => \PWM2_FA01|Add0~5\);

-- Location: LCCOMB_X25_Y25_N24
\PWM2_FA01|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~20_combout\ = (\PWM2_FA01|Add0~4_combout\ & \PWM2_FA01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA01|Add0~4_combout\,
	datad => \PWM2_FA01|comp_out~q\,
	combout => \PWM2_FA01|Add0~20_combout\);

-- Location: FF_X25_Y25_N25
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

-- Location: LCCOMB_X25_Y25_N26
\PWM2_FA01|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Add0~8_combout\ = (\PWM2_FA01|comp_out~q\ & \PWM2_FA01|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA01|comp_out~q\,
	datad => \PWM2_FA01|Add0~6_combout\,
	combout => \PWM2_FA01|Add0~8_combout\);

-- Location: LCCOMB_X25_Y25_N14
\PWM2_FA01|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Equal0~1_combout\ = (\PWM2_FA01|Add0~8_combout\ & (!\PWM2_FA01|Add0~17_combout\ & (!\PWM2_FA01|Add0~15_combout\ & !\PWM2_FA01|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|Add0~8_combout\,
	datab => \PWM2_FA01|Add0~17_combout\,
	datac => \PWM2_FA01|Add0~15_combout\,
	datad => \PWM2_FA01|Add0~16_combout\,
	combout => \PWM2_FA01|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y25_N12
\PWM2_FA01|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|Equal0~0_combout\ = (\PWM2_FA01|Add0~0_combout\ & (\PWM2_FA01|comp_out~q\ & (\PWM2_FA01|Add0~4_combout\ & \PWM2_FA01|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|Add0~0_combout\,
	datab => \PWM2_FA01|comp_out~q\,
	datac => \PWM2_FA01|Add0~4_combout\,
	datad => \PWM2_FA01|Add0~2_combout\,
	combout => \PWM2_FA01|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y25_N10
\PWM2_FA01|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA01|port_PWM01~0_combout\ = (\PWM2_FA01|Equal0~1_combout\ & ((\PWM2_FA01|Equal0~0_combout\) # ((\PWM2_FA01|comp_out~q\ & \PWM2_FA01|port_PWM01~q\)))) # (!\PWM2_FA01|Equal0~1_combout\ & (\PWM2_FA01|comp_out~q\ & (\PWM2_FA01|port_PWM01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA01|Equal0~1_combout\,
	datab => \PWM2_FA01|comp_out~q\,
	datac => \PWM2_FA01|port_PWM01~q\,
	datad => \PWM2_FA01|Equal0~0_combout\,
	combout => \PWM2_FA01|port_PWM01~0_combout\);

-- Location: FF_X26_Y25_N11
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

-- Location: FF_X31_Y29_N27
\PWM2_FA02|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count1\(6));

-- Location: LCCOMB_X31_Y29_N4
\PWM2_FA02|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~0_combout\ = (\PWM2_FA02|LessThan1~1_combout\ & (\PWM2_FA02|var_Dead_Count1\(0) $ (VCC))) # (!\PWM2_FA02|LessThan1~1_combout\ & (\PWM2_FA02|var_Dead_Count1\(0) & VCC))
-- \PWM2_FA02|Add0~1\ = CARRY((\PWM2_FA02|LessThan1~1_combout\ & \PWM2_FA02|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|LessThan1~1_combout\,
	datab => \PWM2_FA02|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM2_FA02|Add0~0_combout\,
	cout => \PWM2_FA02|Add0~1\);

-- Location: LCCOMB_X31_Y29_N24
\PWM2_FA02|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~18_combout\ = (\PWM2_FA02|Add0~0_combout\ & \PWM2_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA02|Add0~0_combout\,
	datad => \PWM2_FA02|comp_out~q\,
	combout => \PWM2_FA02|Add0~18_combout\);

-- Location: FF_X31_Y29_N25
\PWM2_FA02|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count1\(0));

-- Location: LCCOMB_X31_Y29_N28
\PWM2_FA02|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|LessThan1~0_combout\ = (((!\PWM2_FA02|var_Dead_Count1\(0)) # (!\PWM2_FA02|var_Dead_Count1\(3))) # (!\PWM2_FA02|var_Dead_Count1\(2))) # (!\PWM2_FA02|var_Dead_Count1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|var_Dead_Count1\(1),
	datab => \PWM2_FA02|var_Dead_Count1\(2),
	datac => \PWM2_FA02|var_Dead_Count1\(3),
	datad => \PWM2_FA02|var_Dead_Count1\(0),
	combout => \PWM2_FA02|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y29_N20
\PWM2_FA02|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|LessThan1~1_combout\ = (!\PWM2_FA02|var_Dead_Count1\(4) & (!\PWM2_FA02|var_Dead_Count1\(6) & (!\PWM2_FA02|var_Dead_Count1\(5) & \PWM2_FA02|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|var_Dead_Count1\(4),
	datab => \PWM2_FA02|var_Dead_Count1\(6),
	datac => \PWM2_FA02|var_Dead_Count1\(5),
	datad => \PWM2_FA02|LessThan1~0_combout\,
	combout => \PWM2_FA02|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y29_N6
\PWM2_FA02|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~2_combout\ = (\PWM2_FA02|var_Dead_Count1\(1) & (!\PWM2_FA02|Add0~1\)) # (!\PWM2_FA02|var_Dead_Count1\(1) & ((\PWM2_FA02|Add0~1\) # (GND)))
-- \PWM2_FA02|Add0~3\ = CARRY((!\PWM2_FA02|Add0~1\) # (!\PWM2_FA02|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM2_FA02|Add0~1\,
	combout => \PWM2_FA02|Add0~2_combout\,
	cout => \PWM2_FA02|Add0~3\);

-- Location: LCCOMB_X30_Y29_N2
\PWM2_FA02|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~19_combout\ = (\PWM2_FA02|comp_out~q\ & \PWM2_FA02|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA02|comp_out~q\,
	datad => \PWM2_FA02|Add0~2_combout\,
	combout => \PWM2_FA02|Add0~19_combout\);

-- Location: FF_X30_Y29_N3
\PWM2_FA02|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count1\(1));

-- Location: LCCOMB_X31_Y29_N8
\PWM2_FA02|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~4_combout\ = (\PWM2_FA02|var_Dead_Count1\(2) & (\PWM2_FA02|Add0~3\ $ (GND))) # (!\PWM2_FA02|var_Dead_Count1\(2) & (!\PWM2_FA02|Add0~3\ & VCC))
-- \PWM2_FA02|Add0~5\ = CARRY((\PWM2_FA02|var_Dead_Count1\(2) & !\PWM2_FA02|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA02|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM2_FA02|Add0~3\,
	combout => \PWM2_FA02|Add0~4_combout\,
	cout => \PWM2_FA02|Add0~5\);

-- Location: LCCOMB_X31_Y29_N2
\PWM2_FA02|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~20_combout\ = (\PWM2_FA02|Add0~4_combout\ & \PWM2_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA02|Add0~4_combout\,
	datad => \PWM2_FA02|comp_out~q\,
	combout => \PWM2_FA02|Add0~20_combout\);

-- Location: FF_X31_Y29_N3
\PWM2_FA02|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count1\(2));

-- Location: LCCOMB_X31_Y29_N10
\PWM2_FA02|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~6_combout\ = (\PWM2_FA02|var_Dead_Count1\(3) & (!\PWM2_FA02|Add0~5\)) # (!\PWM2_FA02|var_Dead_Count1\(3) & ((\PWM2_FA02|Add0~5\) # (GND)))
-- \PWM2_FA02|Add0~7\ = CARRY((!\PWM2_FA02|Add0~5\) # (!\PWM2_FA02|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM2_FA02|Add0~5\,
	combout => \PWM2_FA02|Add0~6_combout\,
	cout => \PWM2_FA02|Add0~7\);

-- Location: LCCOMB_X31_Y29_N18
\PWM2_FA02|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~8_combout\ = (\PWM2_FA02|comp_out~q\ & \PWM2_FA02|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA02|comp_out~q\,
	datad => \PWM2_FA02|Add0~6_combout\,
	combout => \PWM2_FA02|Add0~8_combout\);

-- Location: FF_X31_Y29_N19
\PWM2_FA02|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count1\(3));

-- Location: LCCOMB_X31_Y29_N12
\PWM2_FA02|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~9_combout\ = (\PWM2_FA02|var_Dead_Count1\(4) & (\PWM2_FA02|Add0~7\ $ (GND))) # (!\PWM2_FA02|var_Dead_Count1\(4) & (!\PWM2_FA02|Add0~7\ & VCC))
-- \PWM2_FA02|Add0~10\ = CARRY((\PWM2_FA02|var_Dead_Count1\(4) & !\PWM2_FA02|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM2_FA02|Add0~7\,
	combout => \PWM2_FA02|Add0~9_combout\,
	cout => \PWM2_FA02|Add0~10\);

-- Location: LCCOMB_X31_Y29_N30
\PWM2_FA02|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~16_combout\ = (\PWM2_FA02|comp_out~q\ & \PWM2_FA02|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA02|comp_out~q\,
	datac => \PWM2_FA02|Add0~9_combout\,
	combout => \PWM2_FA02|Add0~16_combout\);

-- Location: FF_X31_Y29_N31
\PWM2_FA02|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count1\(4));

-- Location: LCCOMB_X31_Y29_N14
\PWM2_FA02|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~11_combout\ = (\PWM2_FA02|var_Dead_Count1\(5) & (!\PWM2_FA02|Add0~10\)) # (!\PWM2_FA02|var_Dead_Count1\(5) & ((\PWM2_FA02|Add0~10\) # (GND)))
-- \PWM2_FA02|Add0~12\ = CARRY((!\PWM2_FA02|Add0~10\) # (!\PWM2_FA02|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM2_FA02|Add0~10\,
	combout => \PWM2_FA02|Add0~11_combout\,
	cout => \PWM2_FA02|Add0~12\);

-- Location: LCCOMB_X31_Y29_N0
\PWM2_FA02|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~17_combout\ = (\PWM2_FA02|Add0~11_combout\ & \PWM2_FA02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA02|Add0~11_combout\,
	datad => \PWM2_FA02|comp_out~q\,
	combout => \PWM2_FA02|Add0~17_combout\);

-- Location: FF_X31_Y29_N1
\PWM2_FA02|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|var_Dead_Count1\(5));

-- Location: LCCOMB_X31_Y29_N16
\PWM2_FA02|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~13_combout\ = \PWM2_FA02|Add0~12\ $ (!\PWM2_FA02|var_Dead_Count1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FA02|var_Dead_Count1\(6),
	cin => \PWM2_FA02|Add0~12\,
	combout => \PWM2_FA02|Add0~13_combout\);

-- Location: LCCOMB_X31_Y29_N26
\PWM2_FA02|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Add0~15_combout\ = (\PWM2_FA02|comp_out~q\ & \PWM2_FA02|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA02|comp_out~q\,
	datad => \PWM2_FA02|Add0~13_combout\,
	combout => \PWM2_FA02|Add0~15_combout\);

-- Location: LCCOMB_X31_Y29_N22
\PWM2_FA02|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Equal0~1_combout\ = (!\PWM2_FA02|Add0~15_combout\ & (!\PWM2_FA02|Add0~17_combout\ & (!\PWM2_FA02|Add0~16_combout\ & \PWM2_FA02|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|Add0~15_combout\,
	datab => \PWM2_FA02|Add0~17_combout\,
	datac => \PWM2_FA02|Add0~16_combout\,
	datad => \PWM2_FA02|Add0~8_combout\,
	combout => \PWM2_FA02|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y29_N12
\PWM2_FA02|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|Equal0~0_combout\ = (\PWM2_FA02|comp_out~q\ & (\PWM2_FA02|Add0~0_combout\ & (\PWM2_FA02|Add0~4_combout\ & \PWM2_FA02|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|comp_out~q\,
	datab => \PWM2_FA02|Add0~0_combout\,
	datac => \PWM2_FA02|Add0~4_combout\,
	datad => \PWM2_FA02|Add0~2_combout\,
	combout => \PWM2_FA02|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y29_N26
\PWM2_FA02|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA02|port_PWM01~0_combout\ = (\PWM2_FA02|comp_out~q\ & ((\PWM2_FA02|port_PWM01~q\) # ((\PWM2_FA02|Equal0~1_combout\ & \PWM2_FA02|Equal0~0_combout\)))) # (!\PWM2_FA02|comp_out~q\ & (\PWM2_FA02|Equal0~1_combout\ & ((\PWM2_FA02|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA02|comp_out~q\,
	datab => \PWM2_FA02|Equal0~1_combout\,
	datac => \PWM2_FA02|port_PWM01~q\,
	datad => \PWM2_FA02|Equal0~0_combout\,
	combout => \PWM2_FA02|port_PWM01~0_combout\);

-- Location: FF_X30_Y29_N27
\PWM2_FA02|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA02|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA02|port_PWM01~q\);

-- Location: LCCOMB_X21_Y24_N8
\PWM2_FA03|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~19_combout\ = (\PWM2_FA03|comp_out~q\ & \PWM2_FA03|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|comp_out~q\,
	datac => \PWM2_FA03|Add0~2_combout\,
	combout => \PWM2_FA03|Add0~19_combout\);

-- Location: FF_X21_Y24_N9
\PWM2_FA03|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count1\(1));

-- Location: LCCOMB_X21_Y24_N12
\PWM2_FA03|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~2_combout\ = (\PWM2_FA03|var_Dead_Count1\(1) & (!\PWM2_FA03|Add0~1\)) # (!\PWM2_FA03|var_Dead_Count1\(1) & ((\PWM2_FA03|Add0~1\) # (GND)))
-- \PWM2_FA03|Add0~3\ = CARRY((!\PWM2_FA03|Add0~1\) # (!\PWM2_FA03|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM2_FA03|Add0~1\,
	combout => \PWM2_FA03|Add0~2_combout\,
	cout => \PWM2_FA03|Add0~3\);

-- Location: LCCOMB_X21_Y24_N14
\PWM2_FA03|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~4_combout\ = (\PWM2_FA03|var_Dead_Count1\(2) & (\PWM2_FA03|Add0~3\ $ (GND))) # (!\PWM2_FA03|var_Dead_Count1\(2) & (!\PWM2_FA03|Add0~3\ & VCC))
-- \PWM2_FA03|Add0~5\ = CARRY((\PWM2_FA03|var_Dead_Count1\(2) & !\PWM2_FA03|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM2_FA03|Add0~3\,
	combout => \PWM2_FA03|Add0~4_combout\,
	cout => \PWM2_FA03|Add0~5\);

-- Location: LCCOMB_X21_Y24_N2
\PWM2_FA03|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~20_combout\ = (\PWM2_FA03|comp_out~q\ & \PWM2_FA03|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|comp_out~q\,
	datac => \PWM2_FA03|Add0~4_combout\,
	combout => \PWM2_FA03|Add0~20_combout\);

-- Location: FF_X21_Y24_N3
\PWM2_FA03|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count1\(2));

-- Location: LCCOMB_X21_Y24_N16
\PWM2_FA03|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~6_combout\ = (\PWM2_FA03|var_Dead_Count1\(3) & (!\PWM2_FA03|Add0~5\)) # (!\PWM2_FA03|var_Dead_Count1\(3) & ((\PWM2_FA03|Add0~5\) # (GND)))
-- \PWM2_FA03|Add0~7\ = CARRY((!\PWM2_FA03|Add0~5\) # (!\PWM2_FA03|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM2_FA03|Add0~5\,
	combout => \PWM2_FA03|Add0~6_combout\,
	cout => \PWM2_FA03|Add0~7\);

-- Location: LCCOMB_X21_Y24_N4
\PWM2_FA03|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~8_combout\ = (\PWM2_FA03|Add0~6_combout\ & \PWM2_FA03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|Add0~6_combout\,
	datac => \PWM2_FA03|comp_out~q\,
	combout => \PWM2_FA03|Add0~8_combout\);

-- Location: FF_X21_Y24_N5
\PWM2_FA03|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count1\(3));

-- Location: LCCOMB_X21_Y24_N18
\PWM2_FA03|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~9_combout\ = (\PWM2_FA03|var_Dead_Count1\(4) & (\PWM2_FA03|Add0~7\ $ (GND))) # (!\PWM2_FA03|var_Dead_Count1\(4) & (!\PWM2_FA03|Add0~7\ & VCC))
-- \PWM2_FA03|Add0~10\ = CARRY((\PWM2_FA03|var_Dead_Count1\(4) & !\PWM2_FA03|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM2_FA03|Add0~7\,
	combout => \PWM2_FA03|Add0~9_combout\,
	cout => \PWM2_FA03|Add0~10\);

-- Location: LCCOMB_X21_Y24_N24
\PWM2_FA03|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~16_combout\ = (\PWM2_FA03|Add0~9_combout\ & \PWM2_FA03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|Add0~9_combout\,
	datac => \PWM2_FA03|comp_out~q\,
	combout => \PWM2_FA03|Add0~16_combout\);

-- Location: FF_X21_Y24_N25
\PWM2_FA03|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count1\(4));

-- Location: LCCOMB_X21_Y24_N20
\PWM2_FA03|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~11_combout\ = (\PWM2_FA03|var_Dead_Count1\(5) & (!\PWM2_FA03|Add0~10\)) # (!\PWM2_FA03|var_Dead_Count1\(5) & ((\PWM2_FA03|Add0~10\) # (GND)))
-- \PWM2_FA03|Add0~12\ = CARRY((!\PWM2_FA03|Add0~10\) # (!\PWM2_FA03|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM2_FA03|Add0~10\,
	combout => \PWM2_FA03|Add0~11_combout\,
	cout => \PWM2_FA03|Add0~12\);

-- Location: LCCOMB_X21_Y24_N0
\PWM2_FA03|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~17_combout\ = (\PWM2_FA03|Add0~11_combout\ & \PWM2_FA03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|Add0~11_combout\,
	datac => \PWM2_FA03|comp_out~q\,
	combout => \PWM2_FA03|Add0~17_combout\);

-- Location: FF_X21_Y24_N1
\PWM2_FA03|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count1\(5));

-- Location: LCCOMB_X21_Y24_N22
\PWM2_FA03|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~13_combout\ = \PWM2_FA03|var_Dead_Count1\(6) $ (!\PWM2_FA03|Add0~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|var_Dead_Count1\(6),
	cin => \PWM2_FA03|Add0~12\,
	combout => \PWM2_FA03|Add0~13_combout\);

-- Location: LCCOMB_X21_Y24_N26
\PWM2_FA03|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~15_combout\ = (\PWM2_FA03|comp_out~q\ & \PWM2_FA03|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FA03|comp_out~q\,
	datac => \PWM2_FA03|Add0~13_combout\,
	combout => \PWM2_FA03|Add0~15_combout\);

-- Location: FF_X21_Y24_N27
\PWM2_FA03|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count1\(6));

-- Location: LCCOMB_X21_Y24_N6
\PWM2_FA03|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|LessThan1~0_combout\ = (((!\PWM2_FA03|var_Dead_Count1\(3)) # (!\PWM2_FA03|var_Dead_Count1\(1))) # (!\PWM2_FA03|var_Dead_Count1\(2))) # (!\PWM2_FA03|var_Dead_Count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|var_Dead_Count1\(0),
	datab => \PWM2_FA03|var_Dead_Count1\(2),
	datac => \PWM2_FA03|var_Dead_Count1\(1),
	datad => \PWM2_FA03|var_Dead_Count1\(3),
	combout => \PWM2_FA03|LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y24_N28
\PWM2_FA03|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|LessThan1~1_combout\ = (!\PWM2_FA03|var_Dead_Count1\(4) & (!\PWM2_FA03|var_Dead_Count1\(5) & (!\PWM2_FA03|var_Dead_Count1\(6) & \PWM2_FA03|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|var_Dead_Count1\(4),
	datab => \PWM2_FA03|var_Dead_Count1\(5),
	datac => \PWM2_FA03|var_Dead_Count1\(6),
	datad => \PWM2_FA03|LessThan1~0_combout\,
	combout => \PWM2_FA03|LessThan1~1_combout\);

-- Location: LCCOMB_X21_Y24_N10
\PWM2_FA03|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~0_combout\ = (\PWM2_FA03|var_Dead_Count1\(0) & (\PWM2_FA03|LessThan1~1_combout\ $ (VCC))) # (!\PWM2_FA03|var_Dead_Count1\(0) & (\PWM2_FA03|LessThan1~1_combout\ & VCC))
-- \PWM2_FA03|Add0~1\ = CARRY((\PWM2_FA03|var_Dead_Count1\(0) & \PWM2_FA03|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|var_Dead_Count1\(0),
	datab => \PWM2_FA03|LessThan1~1_combout\,
	datad => VCC,
	combout => \PWM2_FA03|Add0~0_combout\,
	cout => \PWM2_FA03|Add0~1\);

-- Location: LCCOMB_X23_Y24_N2
\PWM2_FA03|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Add0~18_combout\ = (\PWM2_FA03|Add0~0_combout\ & \PWM2_FA03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FA03|Add0~0_combout\,
	datad => \PWM2_FA03|comp_out~q\,
	combout => \PWM2_FA03|Add0~18_combout\);

-- Location: FF_X23_Y24_N3
\PWM2_FA03|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|var_Dead_Count1\(0));

-- Location: LCCOMB_X23_Y24_N12
\PWM2_FA03|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Equal0~0_combout\ = (\PWM2_FA03|Add0~2_combout\ & (\PWM2_FA03|Add0~0_combout\ & (\PWM2_FA03|Add0~4_combout\ & \PWM2_FA03|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|Add0~2_combout\,
	datab => \PWM2_FA03|Add0~0_combout\,
	datac => \PWM2_FA03|Add0~4_combout\,
	datad => \PWM2_FA03|comp_out~q\,
	combout => \PWM2_FA03|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y24_N30
\PWM2_FA03|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|Equal0~1_combout\ = (!\PWM2_FA03|Add0~15_combout\ & (!\PWM2_FA03|Add0~17_combout\ & (\PWM2_FA03|Add0~8_combout\ & !\PWM2_FA03|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|Add0~15_combout\,
	datab => \PWM2_FA03|Add0~17_combout\,
	datac => \PWM2_FA03|Add0~8_combout\,
	datad => \PWM2_FA03|Add0~16_combout\,
	combout => \PWM2_FA03|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y24_N26
\PWM2_FA03|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FA03|port_PWM01~0_combout\ = (\PWM2_FA03|Equal0~0_combout\ & ((\PWM2_FA03|Equal0~1_combout\) # ((\PWM2_FA03|port_PWM01~q\ & \PWM2_FA03|comp_out~q\)))) # (!\PWM2_FA03|Equal0~0_combout\ & (((\PWM2_FA03|port_PWM01~q\ & \PWM2_FA03|comp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FA03|Equal0~0_combout\,
	datab => \PWM2_FA03|Equal0~1_combout\,
	datac => \PWM2_FA03|port_PWM01~q\,
	datad => \PWM2_FA03|comp_out~q\,
	combout => \PWM2_FA03|port_PWM01~0_combout\);

-- Location: FF_X23_Y24_N27
\PWM2_FA03|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FA03|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FA03|port_PWM01~q\);

-- Location: LCCOMB_X31_Y26_N6
\PWM1_FB01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|LessThan0~0_combout\ = (!\ucr1|c_int\(2) & (!\ucr1|c_int\(3) & ((!\ucr1|c_int\(1)) # (!\ucr5|c_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(2),
	datab => \ucr1|c_int\(3),
	datac => \ucr5|c_int\(0),
	datad => \ucr1|c_int\(1),
	combout => \PWM1_FB01|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y26_N16
\PWM1_FB01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|LessThan0~1_combout\ = (\ucr1|c_int\(6) & ((\ucr1|c_int\(5)) # ((\ucr1|c_int\(4) & !\PWM1_FB01|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(5),
	datab => \ucr1|c_int\(4),
	datac => \ucr1|c_int\(6),
	datad => \PWM1_FB01|LessThan0~0_combout\,
	combout => \PWM1_FB01|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y26_N4
\PWM1_FB01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|LessThan0~2_combout\ = ((\ucr1|c_int\(7) & (\PWM1_FB01|LessThan0~1_combout\ & \ucr1|c_int\(8)))) # (!\PWM1_FA01|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(7),
	datab => \PWM1_FB01|LessThan0~1_combout\,
	datac => \ucr1|c_int\(8),
	datad => \PWM1_FA01|LessThan0~1_combout\,
	combout => \PWM1_FB01|LessThan0~2_combout\);

-- Location: FF_X31_Y26_N5
\PWM1_FB01|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|comp_out~q\);

-- Location: LCCOMB_X32_Y26_N8
\PWM1_FB01|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~19_combout\ = (\PWM1_FB01|comp_out~q\ & \PWM1_FB01|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB01|comp_out~q\,
	datad => \PWM1_FB01|Add0~2_combout\,
	combout => \PWM1_FB01|Add0~19_combout\);

-- Location: FF_X32_Y26_N9
\PWM1_FB01|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count1\(1));

-- Location: LCCOMB_X32_Y26_N12
\PWM1_FB01|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~2_combout\ = (\PWM1_FB01|var_Dead_Count1\(1) & (!\PWM1_FB01|Add0~1\)) # (!\PWM1_FB01|var_Dead_Count1\(1) & ((\PWM1_FB01|Add0~1\) # (GND)))
-- \PWM1_FB01|Add0~3\ = CARRY((!\PWM1_FB01|Add0~1\) # (!\PWM1_FB01|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB01|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM1_FB01|Add0~1\,
	combout => \PWM1_FB01|Add0~2_combout\,
	cout => \PWM1_FB01|Add0~3\);

-- Location: LCCOMB_X32_Y26_N14
\PWM1_FB01|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~4_combout\ = (\PWM1_FB01|var_Dead_Count1\(2) & (\PWM1_FB01|Add0~3\ $ (GND))) # (!\PWM1_FB01|var_Dead_Count1\(2) & (!\PWM1_FB01|Add0~3\ & VCC))
-- \PWM1_FB01|Add0~5\ = CARRY((\PWM1_FB01|var_Dead_Count1\(2) & !\PWM1_FB01|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM1_FB01|Add0~3\,
	combout => \PWM1_FB01|Add0~4_combout\,
	cout => \PWM1_FB01|Add0~5\);

-- Location: LCCOMB_X32_Y26_N6
\PWM1_FB01|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~18_combout\ = (\PWM1_FB01|comp_out~q\ & \PWM1_FB01|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB01|comp_out~q\,
	datac => \PWM1_FB01|Add0~4_combout\,
	combout => \PWM1_FB01|Add0~18_combout\);

-- Location: FF_X32_Y26_N7
\PWM1_FB01|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count1\(2));

-- Location: LCCOMB_X32_Y26_N16
\PWM1_FB01|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~6_combout\ = (\PWM1_FB01|var_Dead_Count1\(3) & (!\PWM1_FB01|Add0~5\)) # (!\PWM1_FB01|var_Dead_Count1\(3) & ((\PWM1_FB01|Add0~5\) # (GND)))
-- \PWM1_FB01|Add0~7\ = CARRY((!\PWM1_FB01|Add0~5\) # (!\PWM1_FB01|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB01|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM1_FB01|Add0~5\,
	combout => \PWM1_FB01|Add0~6_combout\,
	cout => \PWM1_FB01|Add0~7\);

-- Location: LCCOMB_X32_Y26_N28
\PWM1_FB01|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~15_combout\ = (\PWM1_FB01|comp_out~q\ & \PWM1_FB01|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB01|comp_out~q\,
	datad => \PWM1_FB01|Add0~6_combout\,
	combout => \PWM1_FB01|Add0~15_combout\);

-- Location: FF_X32_Y26_N29
\PWM1_FB01|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count1\(3));

-- Location: LCCOMB_X32_Y26_N18
\PWM1_FB01|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~8_combout\ = (\PWM1_FB01|var_Dead_Count1\(4) & (\PWM1_FB01|Add0~7\ $ (GND))) # (!\PWM1_FB01|var_Dead_Count1\(4) & (!\PWM1_FB01|Add0~7\ & VCC))
-- \PWM1_FB01|Add0~9\ = CARRY((\PWM1_FB01|var_Dead_Count1\(4) & !\PWM1_FB01|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM1_FB01|Add0~7\,
	combout => \PWM1_FB01|Add0~8_combout\,
	cout => \PWM1_FB01|Add0~9\);

-- Location: LCCOMB_X32_Y26_N26
\PWM1_FB01|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~16_combout\ = (\PWM1_FB01|comp_out~q\ & \PWM1_FB01|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB01|comp_out~q\,
	datad => \PWM1_FB01|Add0~8_combout\,
	combout => \PWM1_FB01|Add0~16_combout\);

-- Location: FF_X32_Y26_N27
\PWM1_FB01|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count1\(4));

-- Location: LCCOMB_X32_Y26_N20
\PWM1_FB01|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~10_combout\ = (\PWM1_FB01|var_Dead_Count1\(5) & (!\PWM1_FB01|Add0~9\)) # (!\PWM1_FB01|var_Dead_Count1\(5) & ((\PWM1_FB01|Add0~9\) # (GND)))
-- \PWM1_FB01|Add0~11\ = CARRY((!\PWM1_FB01|Add0~9\) # (!\PWM1_FB01|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB01|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM1_FB01|Add0~9\,
	combout => \PWM1_FB01|Add0~10_combout\,
	cout => \PWM1_FB01|Add0~11\);

-- Location: LCCOMB_X32_Y26_N0
\PWM1_FB01|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~17_combout\ = (\PWM1_FB01|comp_out~q\ & \PWM1_FB01|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB01|comp_out~q\,
	datad => \PWM1_FB01|Add0~10_combout\,
	combout => \PWM1_FB01|Add0~17_combout\);

-- Location: FF_X32_Y26_N1
\PWM1_FB01|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count1\(5));

-- Location: LCCOMB_X32_Y26_N22
\PWM1_FB01|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~12_combout\ = \PWM1_FB01|Add0~11\ $ (!\PWM1_FB01|var_Dead_Count1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM1_FB01|var_Dead_Count1\(6),
	cin => \PWM1_FB01|Add0~11\,
	combout => \PWM1_FB01|Add0~12_combout\);

-- Location: LCCOMB_X31_Y26_N14
\PWM1_FB01|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~14_combout\ = (\PWM1_FB01|comp_out~q\ & \PWM1_FB01|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB01|comp_out~q\,
	datad => \PWM1_FB01|Add0~12_combout\,
	combout => \PWM1_FB01|Add0~14_combout\);

-- Location: FF_X31_Y26_N15
\PWM1_FB01|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count1\(6));

-- Location: LCCOMB_X32_Y26_N10
\PWM1_FB01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~0_combout\ = (\PWM1_FB01|LessThan1~1_combout\ & (\PWM1_FB01|var_Dead_Count1\(0) $ (VCC))) # (!\PWM1_FB01|LessThan1~1_combout\ & (\PWM1_FB01|var_Dead_Count1\(0) & VCC))
-- \PWM1_FB01|Add0~1\ = CARRY((\PWM1_FB01|LessThan1~1_combout\ & \PWM1_FB01|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|LessThan1~1_combout\,
	datab => \PWM1_FB01|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM1_FB01|Add0~0_combout\,
	cout => \PWM1_FB01|Add0~1\);

-- Location: LCCOMB_X32_Y26_N24
\PWM1_FB01|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add0~20_combout\ = (\PWM1_FB01|comp_out~q\ & \PWM1_FB01|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB01|comp_out~q\,
	datad => \PWM1_FB01|Add0~0_combout\,
	combout => \PWM1_FB01|Add0~20_combout\);

-- Location: FF_X32_Y26_N25
\PWM1_FB01|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count1\(0));

-- Location: LCCOMB_X32_Y26_N2
\PWM1_FB01|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|LessThan1~0_combout\ = (((!\PWM1_FB01|var_Dead_Count1\(0)) # (!\PWM1_FB01|var_Dead_Count1\(1))) # (!\PWM1_FB01|var_Dead_Count1\(3))) # (!\PWM1_FB01|var_Dead_Count1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|var_Dead_Count1\(2),
	datab => \PWM1_FB01|var_Dead_Count1\(3),
	datac => \PWM1_FB01|var_Dead_Count1\(1),
	datad => \PWM1_FB01|var_Dead_Count1\(0),
	combout => \PWM1_FB01|LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y26_N4
\PWM1_FB01|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|LessThan1~1_combout\ = (!\PWM1_FB01|var_Dead_Count1\(6) & (!\PWM1_FB01|var_Dead_Count1\(5) & (!\PWM1_FB01|var_Dead_Count1\(4) & \PWM1_FB01|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|var_Dead_Count1\(6),
	datab => \PWM1_FB01|var_Dead_Count1\(5),
	datac => \PWM1_FB01|var_Dead_Count1\(4),
	datad => \PWM1_FB01|LessThan1~0_combout\,
	combout => \PWM1_FB01|LessThan1~1_combout\);

-- Location: LCCOMB_X32_Y26_N30
\PWM1_FB01|port_PWM01~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|port_PWM01~1_combout\ = (\PWM1_FB01|Add0~2_combout\ & (!\PWM1_FB01|Add0~17_combout\ & (!\PWM1_FB01|Add0~16_combout\ & \PWM1_FB01|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|Add0~2_combout\,
	datab => \PWM1_FB01|Add0~17_combout\,
	datac => \PWM1_FB01|Add0~16_combout\,
	datad => \PWM1_FB01|Add0~15_combout\,
	combout => \PWM1_FB01|port_PWM01~1_combout\);

-- Location: LCCOMB_X31_Y26_N24
\PWM1_FB01|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|port_PWM01~0_combout\ = (\PWM1_FB01|comp_out~q\ & ((\PWM1_FB01|port_PWM01~q\) # ((\PWM1_FB01|Add0~0_combout\ & \PWM1_FB01|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|Add0~0_combout\,
	datab => \PWM1_FB01|comp_out~q\,
	datac => \PWM1_FB01|Add0~4_combout\,
	datad => \PWM1_FB01|port_PWM01~q\,
	combout => \PWM1_FB01|port_PWM01~0_combout\);

-- Location: LCCOMB_X31_Y26_N8
\PWM1_FB01|port_PWM01~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|port_PWM01~2_combout\ = (\PWM1_FB01|port_PWM01~0_combout\ & ((\PWM1_FB01|port_PWM01~q\) # ((\PWM1_FB01|port_PWM01~1_combout\ & !\PWM1_FB01|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|port_PWM01~1_combout\,
	datab => \PWM1_FB01|Add0~14_combout\,
	datac => \PWM1_FB01|port_PWM01~q\,
	datad => \PWM1_FB01|port_PWM01~0_combout\,
	combout => \PWM1_FB01|port_PWM01~2_combout\);

-- Location: FF_X31_Y26_N9
\PWM1_FB01|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|port_PWM01~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|port_PWM01~q\);

-- Location: LCCOMB_X27_Y19_N10
\PWM1_FB02|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|LessThan0~2_combout\ = (\ucr3|c_int\(3) & (\ucr3|c_int\(2) & ((\ucr6|c_int\(0)) # (!\ucr3|c_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(3),
	datab => \ucr3|c_int\(2),
	datac => \ucr6|c_int\(0),
	datad => \ucr3|c_int\(1),
	combout => \PWM1_FB02|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y19_N4
\PWM1_FB02|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|LessThan0~3_combout\ = (!\ucr3|c_int\(7) & (((!\ucr3|c_int\(4) & !\PWM1_FB02|LessThan0~2_combout\)) # (!\ucr3|c_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(5),
	datab => \ucr3|c_int\(7),
	datac => \ucr3|c_int\(4),
	datad => \PWM1_FB02|LessThan0~2_combout\,
	combout => \PWM1_FB02|LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y19_N24
\PWM1_FB02|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|LessThan0~4_combout\ = ((\ucr3|c_int\(6) & (\PWM1_FB02|LessThan0~3_combout\ & !\ucr3|c_int\(8)))) # (!\PWM1_FB02|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(6),
	datab => \PWM1_FB02|LessThan0~1_combout\,
	datac => \PWM1_FB02|LessThan0~3_combout\,
	datad => \ucr3|c_int\(8),
	combout => \PWM1_FB02|LessThan0~4_combout\);

-- Location: FF_X27_Y19_N25
\PWM1_FB02|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|comp_out~q\);

-- Location: LCCOMB_X28_Y30_N4
\PWM1_FB02|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~16_combout\ = (\PWM1_FB02|comp_out~q\ & \PWM1_FB02|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB02|comp_out~q\,
	datad => \PWM1_FB02|Add0~0_combout\,
	combout => \PWM1_FB02|Add0~16_combout\);

-- Location: FF_X28_Y30_N5
\PWM1_FB02|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count1\(0));

-- Location: LCCOMB_X27_Y30_N2
\PWM1_FB02|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~0_combout\ = (\PWM1_FB02|var_Dead_Count1\(0) & (\PWM1_FB02|LessThan1~1_combout\ $ (VCC))) # (!\PWM1_FB02|var_Dead_Count1\(0) & (\PWM1_FB02|LessThan1~1_combout\ & VCC))
-- \PWM1_FB02|Add0~1\ = CARRY((\PWM1_FB02|var_Dead_Count1\(0) & \PWM1_FB02|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|var_Dead_Count1\(0),
	datab => \PWM1_FB02|LessThan1~1_combout\,
	datad => VCC,
	combout => \PWM1_FB02|Add0~0_combout\,
	cout => \PWM1_FB02|Add0~1\);

-- Location: LCCOMB_X27_Y30_N4
\PWM1_FB02|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~2_combout\ = (\PWM1_FB02|var_Dead_Count1\(1) & (!\PWM1_FB02|Add0~1\)) # (!\PWM1_FB02|var_Dead_Count1\(1) & ((\PWM1_FB02|Add0~1\) # (GND)))
-- \PWM1_FB02|Add0~3\ = CARRY((!\PWM1_FB02|Add0~1\) # (!\PWM1_FB02|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB02|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM1_FB02|Add0~1\,
	combout => \PWM1_FB02|Add0~2_combout\,
	cout => \PWM1_FB02|Add0~3\);

-- Location: LCCOMB_X27_Y30_N0
\PWM1_FB02|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~17_combout\ = (\PWM1_FB02|Add0~2_combout\ & \PWM1_FB02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB02|Add0~2_combout\,
	datad => \PWM1_FB02|comp_out~q\,
	combout => \PWM1_FB02|Add0~17_combout\);

-- Location: FF_X27_Y30_N1
\PWM1_FB02|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count1\(1));

-- Location: LCCOMB_X27_Y30_N6
\PWM1_FB02|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~4_combout\ = (\PWM1_FB02|var_Dead_Count1\(2) & (\PWM1_FB02|Add0~3\ $ (GND))) # (!\PWM1_FB02|var_Dead_Count1\(2) & (!\PWM1_FB02|Add0~3\ & VCC))
-- \PWM1_FB02|Add0~5\ = CARRY((\PWM1_FB02|var_Dead_Count1\(2) & !\PWM1_FB02|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB02|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM1_FB02|Add0~3\,
	combout => \PWM1_FB02|Add0~4_combout\,
	cout => \PWM1_FB02|Add0~5\);

-- Location: LCCOMB_X27_Y30_N16
\PWM1_FB02|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~18_combout\ = (\PWM1_FB02|comp_out~q\ & \PWM1_FB02|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB02|comp_out~q\,
	datad => \PWM1_FB02|Add0~4_combout\,
	combout => \PWM1_FB02|Add0~18_combout\);

-- Location: FF_X27_Y30_N17
\PWM1_FB02|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count1\(2));

-- Location: LCCOMB_X27_Y30_N8
\PWM1_FB02|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~6_combout\ = (\PWM1_FB02|var_Dead_Count1\(3) & (!\PWM1_FB02|Add0~5\)) # (!\PWM1_FB02|var_Dead_Count1\(3) & ((\PWM1_FB02|Add0~5\) # (GND)))
-- \PWM1_FB02|Add0~7\ = CARRY((!\PWM1_FB02|Add0~5\) # (!\PWM1_FB02|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM1_FB02|Add0~5\,
	combout => \PWM1_FB02|Add0~6_combout\,
	cout => \PWM1_FB02|Add0~7\);

-- Location: LCCOMB_X27_Y30_N18
\PWM1_FB02|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~8_combout\ = (\PWM1_FB02|Add0~6_combout\ & \PWM1_FB02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB02|Add0~6_combout\,
	datad => \PWM1_FB02|comp_out~q\,
	combout => \PWM1_FB02|Add0~8_combout\);

-- Location: FF_X27_Y30_N19
\PWM1_FB02|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count1\(3));

-- Location: LCCOMB_X27_Y30_N10
\PWM1_FB02|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~9_combout\ = (\PWM1_FB02|var_Dead_Count1\(4) & (\PWM1_FB02|Add0~7\ $ (GND))) # (!\PWM1_FB02|var_Dead_Count1\(4) & (!\PWM1_FB02|Add0~7\ & VCC))
-- \PWM1_FB02|Add0~10\ = CARRY((\PWM1_FB02|var_Dead_Count1\(4) & !\PWM1_FB02|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM1_FB02|Add0~7\,
	combout => \PWM1_FB02|Add0~9_combout\,
	cout => \PWM1_FB02|Add0~10\);

-- Location: LCCOMB_X27_Y30_N22
\PWM1_FB02|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~13_combout\ = (\PWM1_FB02|comp_out~q\ & \PWM1_FB02|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB02|comp_out~q\,
	datad => \PWM1_FB02|Add0~9_combout\,
	combout => \PWM1_FB02|Add0~13_combout\);

-- Location: FF_X27_Y30_N23
\PWM1_FB02|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count1\(4));

-- Location: LCCOMB_X27_Y30_N20
\PWM1_FB02|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|LessThan1~0_combout\ = (((!\PWM1_FB02|var_Dead_Count1\(2)) # (!\PWM1_FB02|var_Dead_Count1\(3))) # (!\PWM1_FB02|var_Dead_Count1\(1))) # (!\PWM1_FB02|var_Dead_Count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|var_Dead_Count1\(0),
	datab => \PWM1_FB02|var_Dead_Count1\(1),
	datac => \PWM1_FB02|var_Dead_Count1\(3),
	datad => \PWM1_FB02|var_Dead_Count1\(2),
	combout => \PWM1_FB02|LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y30_N12
\PWM1_FB02|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~11_combout\ = (\PWM1_FB02|var_Dead_Count1\(5) & (!\PWM1_FB02|Add0~10\)) # (!\PWM1_FB02|var_Dead_Count1\(5) & ((\PWM1_FB02|Add0~10\) # (GND)))
-- \PWM1_FB02|Add0~12\ = CARRY((!\PWM1_FB02|Add0~10\) # (!\PWM1_FB02|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB02|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM1_FB02|Add0~10\,
	combout => \PWM1_FB02|Add0~11_combout\,
	cout => \PWM1_FB02|Add0~12\);

-- Location: LCCOMB_X27_Y30_N24
\PWM1_FB02|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~19_combout\ = (\PWM1_FB02|comp_out~q\ & \PWM1_FB02|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB02|comp_out~q\,
	datac => \PWM1_FB02|Add0~11_combout\,
	combout => \PWM1_FB02|Add0~19_combout\);

-- Location: FF_X27_Y30_N25
\PWM1_FB02|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count1\(5));

-- Location: LCCOMB_X27_Y30_N14
\PWM1_FB02|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~14_combout\ = \PWM1_FB02|var_Dead_Count1\(6) $ (!\PWM1_FB02|Add0~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|var_Dead_Count1\(6),
	cin => \PWM1_FB02|Add0~12\,
	combout => \PWM1_FB02|Add0~14_combout\);

-- Location: LCCOMB_X27_Y30_N26
\PWM1_FB02|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add0~20_combout\ = (\PWM1_FB02|Add0~14_combout\ & \PWM1_FB02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB02|Add0~14_combout\,
	datad => \PWM1_FB02|comp_out~q\,
	combout => \PWM1_FB02|Add0~20_combout\);

-- Location: FF_X27_Y30_N27
\PWM1_FB02|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count1\(6));

-- Location: LCCOMB_X27_Y30_N28
\PWM1_FB02|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|LessThan1~1_combout\ = (!\PWM1_FB02|var_Dead_Count1\(4) & (\PWM1_FB02|LessThan1~0_combout\ & (!\PWM1_FB02|var_Dead_Count1\(6) & !\PWM1_FB02|var_Dead_Count1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|var_Dead_Count1\(4),
	datab => \PWM1_FB02|LessThan1~0_combout\,
	datac => \PWM1_FB02|var_Dead_Count1\(6),
	datad => \PWM1_FB02|var_Dead_Count1\(5),
	combout => \PWM1_FB02|LessThan1~1_combout\);

-- Location: LCCOMB_X28_Y30_N6
\PWM1_FB02|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|port_PWM01~0_combout\ = (\PWM1_FB02|Add0~0_combout\ & (\PWM1_FB02|Add0~4_combout\ & (\PWM1_FB02|Add0~2_combout\ & \PWM1_FB02|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|Add0~0_combout\,
	datab => \PWM1_FB02|Add0~4_combout\,
	datac => \PWM1_FB02|Add0~2_combout\,
	datad => \PWM1_FB02|comp_out~q\,
	combout => \PWM1_FB02|port_PWM01~0_combout\);

-- Location: LCCOMB_X27_Y30_N30
\PWM1_FB02|port_PWM01~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|port_PWM01~1_combout\ = (!\PWM1_FB02|Add0~13_combout\ & (!\PWM1_FB02|Add0~11_combout\ & (!\PWM1_FB02|Add0~14_combout\ & \PWM1_FB02|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|Add0~13_combout\,
	datab => \PWM1_FB02|Add0~11_combout\,
	datac => \PWM1_FB02|Add0~14_combout\,
	datad => \PWM1_FB02|Add0~8_combout\,
	combout => \PWM1_FB02|port_PWM01~1_combout\);

-- Location: LCCOMB_X28_Y30_N0
\PWM1_FB02|port_PWM01~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|port_PWM01~2_combout\ = (\PWM1_FB02|port_PWM01~0_combout\ & ((\PWM1_FB02|port_PWM01~1_combout\) # ((\PWM1_FB02|comp_out~q\ & \PWM1_FB02|port_PWM01~q\)))) # (!\PWM1_FB02|port_PWM01~0_combout\ & (\PWM1_FB02|comp_out~q\ & 
-- (\PWM1_FB02|port_PWM01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|port_PWM01~0_combout\,
	datab => \PWM1_FB02|comp_out~q\,
	datac => \PWM1_FB02|port_PWM01~q\,
	datad => \PWM1_FB02|port_PWM01~1_combout\,
	combout => \PWM1_FB02|port_PWM01~2_combout\);

-- Location: FF_X28_Y30_N1
\PWM1_FB02|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|port_PWM01~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|port_PWM01~q\);

-- Location: LCCOMB_X36_Y28_N14
\PWM1_FB03|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|LessThan0~2_combout\ = (\ucr5|c_int\(3) & (!\ucr5|c_int\(2) & ((\ucr5|c_int\(1)) # (!\ucr5|c_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(0),
	datab => \ucr5|c_int\(3),
	datac => \ucr5|c_int\(2),
	datad => \ucr5|c_int\(1),
	combout => \PWM1_FB03|LessThan0~2_combout\);

-- Location: LCCOMB_X36_Y28_N16
\PWM1_FB03|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|LessThan0~3_combout\ = (!\ucr5|c_int\(6) & (((!\PWM1_FB03|LessThan0~2_combout\ & !\ucr5|c_int\(4))) # (!\ucr5|c_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(6),
	datab => \PWM1_FB03|LessThan0~2_combout\,
	datac => \ucr5|c_int\(4),
	datad => \ucr5|c_int\(5),
	combout => \PWM1_FB03|LessThan0~3_combout\);

-- Location: LCCOMB_X36_Y28_N0
\PWM1_FB03|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|LessThan0~4_combout\ = ((\ucr5|c_int\(7) & (\PWM1_FB03|LessThan0~3_combout\ & !\ucr5|c_int\(8)))) # (!\PWM1_FB03|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(7),
	datab => \PWM1_FB03|LessThan0~3_combout\,
	datac => \PWM1_FB03|LessThan0~1_combout\,
	datad => \ucr5|c_int\(8),
	combout => \PWM1_FB03|LessThan0~4_combout\);

-- Location: FF_X36_Y28_N1
\PWM1_FB03|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|comp_out~q\);

-- Location: FF_X36_Y33_N17
\PWM1_FB03|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count1\(5));

-- Location: LCCOMB_X36_Y33_N20
\PWM1_FB03|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|LessThan1~0_combout\ = (((!\PWM1_FB03|var_Dead_Count1\(0)) # (!\PWM1_FB03|var_Dead_Count1\(1))) # (!\PWM1_FB03|var_Dead_Count1\(2))) # (!\PWM1_FB03|var_Dead_Count1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|var_Dead_Count1\(3),
	datab => \PWM1_FB03|var_Dead_Count1\(2),
	datac => \PWM1_FB03|var_Dead_Count1\(1),
	datad => \PWM1_FB03|var_Dead_Count1\(0),
	combout => \PWM1_FB03|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y33_N10
\PWM1_FB03|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~11_combout\ = (\PWM1_FB03|var_Dead_Count1\(5) & (!\PWM1_FB03|Add0~10\)) # (!\PWM1_FB03|var_Dead_Count1\(5) & ((\PWM1_FB03|Add0~10\) # (GND)))
-- \PWM1_FB03|Add0~12\ = CARRY((!\PWM1_FB03|Add0~10\) # (!\PWM1_FB03|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB03|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM1_FB03|Add0~10\,
	combout => \PWM1_FB03|Add0~11_combout\,
	cout => \PWM1_FB03|Add0~12\);

-- Location: LCCOMB_X36_Y33_N12
\PWM1_FB03|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~13_combout\ = \PWM1_FB03|var_Dead_Count1\(6) $ (!\PWM1_FB03|Add0~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|var_Dead_Count1\(6),
	cin => \PWM1_FB03|Add0~12\,
	combout => \PWM1_FB03|Add0~13_combout\);

-- Location: LCCOMB_X36_Y33_N26
\PWM1_FB03|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~15_combout\ = (\PWM1_FB03|Add0~13_combout\ & \PWM1_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB03|Add0~13_combout\,
	datac => \PWM1_FB03|comp_out~q\,
	combout => \PWM1_FB03|Add0~15_combout\);

-- Location: FF_X36_Y33_N27
\PWM1_FB03|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count1\(6));

-- Location: LCCOMB_X36_Y33_N28
\PWM1_FB03|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|LessThan1~1_combout\ = (!\PWM1_FB03|var_Dead_Count1\(4) & (\PWM1_FB03|LessThan1~0_combout\ & (!\PWM1_FB03|var_Dead_Count1\(6) & !\PWM1_FB03|var_Dead_Count1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|var_Dead_Count1\(4),
	datab => \PWM1_FB03|LessThan1~0_combout\,
	datac => \PWM1_FB03|var_Dead_Count1\(6),
	datad => \PWM1_FB03|var_Dead_Count1\(5),
	combout => \PWM1_FB03|LessThan1~1_combout\);

-- Location: LCCOMB_X36_Y33_N0
\PWM1_FB03|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~0_combout\ = (\PWM1_FB03|var_Dead_Count1\(0) & (\PWM1_FB03|LessThan1~1_combout\ $ (VCC))) # (!\PWM1_FB03|var_Dead_Count1\(0) & (\PWM1_FB03|LessThan1~1_combout\ & VCC))
-- \PWM1_FB03|Add0~1\ = CARRY((\PWM1_FB03|var_Dead_Count1\(0) & \PWM1_FB03|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|var_Dead_Count1\(0),
	datab => \PWM1_FB03|LessThan1~1_combout\,
	datad => VCC,
	combout => \PWM1_FB03|Add0~0_combout\,
	cout => \PWM1_FB03|Add0~1\);

-- Location: LCCOMB_X37_Y33_N2
\PWM1_FB03|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~18_combout\ = (\PWM1_FB03|comp_out~q\ & \PWM1_FB03|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|comp_out~q\,
	datac => \PWM1_FB03|Add0~0_combout\,
	combout => \PWM1_FB03|Add0~18_combout\);

-- Location: FF_X37_Y33_N3
\PWM1_FB03|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count1\(0));

-- Location: LCCOMB_X36_Y33_N2
\PWM1_FB03|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~2_combout\ = (\PWM1_FB03|var_Dead_Count1\(1) & (!\PWM1_FB03|Add0~1\)) # (!\PWM1_FB03|var_Dead_Count1\(1) & ((\PWM1_FB03|Add0~1\) # (GND)))
-- \PWM1_FB03|Add0~3\ = CARRY((!\PWM1_FB03|Add0~1\) # (!\PWM1_FB03|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB03|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM1_FB03|Add0~1\,
	combout => \PWM1_FB03|Add0~2_combout\,
	cout => \PWM1_FB03|Add0~3\);

-- Location: LCCOMB_X36_Y33_N14
\PWM1_FB03|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~19_combout\ = (\PWM1_FB03|comp_out~q\ & \PWM1_FB03|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB03|comp_out~q\,
	datad => \PWM1_FB03|Add0~2_combout\,
	combout => \PWM1_FB03|Add0~19_combout\);

-- Location: FF_X36_Y33_N15
\PWM1_FB03|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count1\(1));

-- Location: LCCOMB_X36_Y33_N4
\PWM1_FB03|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~4_combout\ = (\PWM1_FB03|var_Dead_Count1\(2) & (\PWM1_FB03|Add0~3\ $ (GND))) # (!\PWM1_FB03|var_Dead_Count1\(2) & (!\PWM1_FB03|Add0~3\ & VCC))
-- \PWM1_FB03|Add0~5\ = CARRY((\PWM1_FB03|var_Dead_Count1\(2) & !\PWM1_FB03|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB03|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM1_FB03|Add0~3\,
	combout => \PWM1_FB03|Add0~4_combout\,
	cout => \PWM1_FB03|Add0~5\);

-- Location: LCCOMB_X36_Y33_N24
\PWM1_FB03|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~20_combout\ = (\PWM1_FB03|comp_out~q\ & \PWM1_FB03|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|comp_out~q\,
	datac => \PWM1_FB03|Add0~4_combout\,
	combout => \PWM1_FB03|Add0~20_combout\);

-- Location: FF_X36_Y33_N25
\PWM1_FB03|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count1\(2));

-- Location: LCCOMB_X36_Y33_N6
\PWM1_FB03|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~6_combout\ = (\PWM1_FB03|var_Dead_Count1\(3) & (!\PWM1_FB03|Add0~5\)) # (!\PWM1_FB03|var_Dead_Count1\(3) & ((\PWM1_FB03|Add0~5\) # (GND)))
-- \PWM1_FB03|Add0~7\ = CARRY((!\PWM1_FB03|Add0~5\) # (!\PWM1_FB03|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM1_FB03|Add0~5\,
	combout => \PWM1_FB03|Add0~6_combout\,
	cout => \PWM1_FB03|Add0~7\);

-- Location: LCCOMB_X36_Y33_N18
\PWM1_FB03|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~8_combout\ = (\PWM1_FB03|comp_out~q\ & \PWM1_FB03|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB03|comp_out~q\,
	datad => \PWM1_FB03|Add0~6_combout\,
	combout => \PWM1_FB03|Add0~8_combout\);

-- Location: FF_X36_Y33_N19
\PWM1_FB03|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count1\(3));

-- Location: LCCOMB_X36_Y33_N8
\PWM1_FB03|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~9_combout\ = (\PWM1_FB03|var_Dead_Count1\(4) & (\PWM1_FB03|Add0~7\ $ (GND))) # (!\PWM1_FB03|var_Dead_Count1\(4) & (!\PWM1_FB03|Add0~7\ & VCC))
-- \PWM1_FB03|Add0~10\ = CARRY((\PWM1_FB03|var_Dead_Count1\(4) & !\PWM1_FB03|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM1_FB03|Add0~7\,
	combout => \PWM1_FB03|Add0~9_combout\,
	cout => \PWM1_FB03|Add0~10\);

-- Location: LCCOMB_X36_Y33_N22
\PWM1_FB03|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~16_combout\ = (\PWM1_FB03|comp_out~q\ & \PWM1_FB03|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|comp_out~q\,
	datac => \PWM1_FB03|Add0~9_combout\,
	combout => \PWM1_FB03|Add0~16_combout\);

-- Location: FF_X36_Y33_N23
\PWM1_FB03|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count1\(4));

-- Location: LCCOMB_X36_Y33_N16
\PWM1_FB03|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add0~17_combout\ = (\PWM1_FB03|comp_out~q\ & \PWM1_FB03|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB03|comp_out~q\,
	datad => \PWM1_FB03|Add0~11_combout\,
	combout => \PWM1_FB03|Add0~17_combout\);

-- Location: LCCOMB_X36_Y33_N30
\PWM1_FB03|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Equal0~1_combout\ = (!\PWM1_FB03|Add0~17_combout\ & (!\PWM1_FB03|Add0~16_combout\ & (!\PWM1_FB03|Add0~15_combout\ & \PWM1_FB03|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|Add0~17_combout\,
	datab => \PWM1_FB03|Add0~16_combout\,
	datac => \PWM1_FB03|Add0~15_combout\,
	datad => \PWM1_FB03|Add0~8_combout\,
	combout => \PWM1_FB03|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y33_N12
\PWM1_FB03|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Equal0~0_combout\ = (\PWM1_FB03|comp_out~q\ & (\PWM1_FB03|Add0~4_combout\ & (\PWM1_FB03|Add0~0_combout\ & \PWM1_FB03|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|comp_out~q\,
	datab => \PWM1_FB03|Add0~4_combout\,
	datac => \PWM1_FB03|Add0~0_combout\,
	datad => \PWM1_FB03|Add0~2_combout\,
	combout => \PWM1_FB03|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y33_N0
\PWM1_FB03|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|port_PWM01~0_combout\ = (\PWM1_FB03|comp_out~q\ & ((\PWM1_FB03|port_PWM01~q\) # ((\PWM1_FB03|Equal0~1_combout\ & \PWM1_FB03|Equal0~0_combout\)))) # (!\PWM1_FB03|comp_out~q\ & (\PWM1_FB03|Equal0~1_combout\ & ((\PWM1_FB03|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|comp_out~q\,
	datab => \PWM1_FB03|Equal0~1_combout\,
	datac => \PWM1_FB03|port_PWM01~q\,
	datad => \PWM1_FB03|Equal0~0_combout\,
	combout => \PWM1_FB03|port_PWM01~0_combout\);

-- Location: FF_X37_Y33_N1
\PWM1_FB03|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|port_PWM01~q\);

-- Location: FF_X30_Y26_N27
\PWM1_FB01|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count2\(6));

-- Location: LCCOMB_X30_Y26_N10
\PWM1_FB01|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~0_combout\ = (\PWM1_FB01|LessThan2~1_combout\ & (\PWM1_FB01|var_Dead_Count2\(0) $ (VCC))) # (!\PWM1_FB01|LessThan2~1_combout\ & (\PWM1_FB01|var_Dead_Count2\(0) & VCC))
-- \PWM1_FB01|Add1~1\ = CARRY((\PWM1_FB01|LessThan2~1_combout\ & \PWM1_FB01|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|LessThan2~1_combout\,
	datab => \PWM1_FB01|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM1_FB01|Add1~0_combout\,
	cout => \PWM1_FB01|Add1~1\);

-- Location: LCCOMB_X31_Y26_N18
\PWM1_FB01|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~18_combout\ = (!\PWM1_FB01|comp_out~q\ & \PWM1_FB01|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB01|comp_out~q\,
	datad => \PWM1_FB01|Add1~0_combout\,
	combout => \PWM1_FB01|Add1~18_combout\);

-- Location: FF_X31_Y26_N19
\PWM1_FB01|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count2\(0));

-- Location: LCCOMB_X30_Y26_N30
\PWM1_FB01|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|LessThan2~0_combout\ = (((!\PWM1_FB01|var_Dead_Count2\(0)) # (!\PWM1_FB01|var_Dead_Count2\(3))) # (!\PWM1_FB01|var_Dead_Count2\(1))) # (!\PWM1_FB01|var_Dead_Count2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|var_Dead_Count2\(2),
	datab => \PWM1_FB01|var_Dead_Count2\(1),
	datac => \PWM1_FB01|var_Dead_Count2\(3),
	datad => \PWM1_FB01|var_Dead_Count2\(0),
	combout => \PWM1_FB01|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y26_N28
\PWM1_FB01|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|LessThan2~1_combout\ = (!\PWM1_FB01|var_Dead_Count2\(5) & (!\PWM1_FB01|var_Dead_Count2\(6) & (\PWM1_FB01|LessThan2~0_combout\ & !\PWM1_FB01|var_Dead_Count2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|var_Dead_Count2\(5),
	datab => \PWM1_FB01|var_Dead_Count2\(6),
	datac => \PWM1_FB01|LessThan2~0_combout\,
	datad => \PWM1_FB01|var_Dead_Count2\(4),
	combout => \PWM1_FB01|LessThan2~1_combout\);

-- Location: LCCOMB_X30_Y26_N12
\PWM1_FB01|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~2_combout\ = (\PWM1_FB01|var_Dead_Count2\(1) & (!\PWM1_FB01|Add1~1\)) # (!\PWM1_FB01|var_Dead_Count2\(1) & ((\PWM1_FB01|Add1~1\) # (GND)))
-- \PWM1_FB01|Add1~3\ = CARRY((!\PWM1_FB01|Add1~1\) # (!\PWM1_FB01|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB01|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM1_FB01|Add1~1\,
	combout => \PWM1_FB01|Add1~2_combout\,
	cout => \PWM1_FB01|Add1~3\);

-- Location: LCCOMB_X30_Y26_N24
\PWM1_FB01|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~19_combout\ = (\PWM1_FB01|Add1~2_combout\ & !\PWM1_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|Add1~2_combout\,
	datad => \PWM1_FB01|comp_out~q\,
	combout => \PWM1_FB01|Add1~19_combout\);

-- Location: FF_X30_Y26_N25
\PWM1_FB01|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count2\(1));

-- Location: LCCOMB_X30_Y26_N14
\PWM1_FB01|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~4_combout\ = (\PWM1_FB01|var_Dead_Count2\(2) & (\PWM1_FB01|Add1~3\ $ (GND))) # (!\PWM1_FB01|var_Dead_Count2\(2) & (!\PWM1_FB01|Add1~3\ & VCC))
-- \PWM1_FB01|Add1~5\ = CARRY((\PWM1_FB01|var_Dead_Count2\(2) & !\PWM1_FB01|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM1_FB01|Add1~3\,
	combout => \PWM1_FB01|Add1~4_combout\,
	cout => \PWM1_FB01|Add1~5\);

-- Location: LCCOMB_X30_Y26_N2
\PWM1_FB01|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~20_combout\ = (\PWM1_FB01|Add1~4_combout\ & !\PWM1_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB01|Add1~4_combout\,
	datad => \PWM1_FB01|comp_out~q\,
	combout => \PWM1_FB01|Add1~20_combout\);

-- Location: FF_X30_Y26_N3
\PWM1_FB01|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count2\(2));

-- Location: LCCOMB_X30_Y26_N16
\PWM1_FB01|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~6_combout\ = (\PWM1_FB01|var_Dead_Count2\(3) & (!\PWM1_FB01|Add1~5\)) # (!\PWM1_FB01|var_Dead_Count2\(3) & ((\PWM1_FB01|Add1~5\) # (GND)))
-- \PWM1_FB01|Add1~7\ = CARRY((!\PWM1_FB01|Add1~5\) # (!\PWM1_FB01|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB01|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM1_FB01|Add1~5\,
	combout => \PWM1_FB01|Add1~6_combout\,
	cout => \PWM1_FB01|Add1~7\);

-- Location: LCCOMB_X30_Y26_N4
\PWM1_FB01|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~8_combout\ = (\PWM1_FB01|Add1~6_combout\ & !\PWM1_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB01|Add1~6_combout\,
	datad => \PWM1_FB01|comp_out~q\,
	combout => \PWM1_FB01|Add1~8_combout\);

-- Location: FF_X30_Y26_N5
\PWM1_FB01|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count2\(3));

-- Location: LCCOMB_X30_Y26_N18
\PWM1_FB01|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~9_combout\ = (\PWM1_FB01|var_Dead_Count2\(4) & (\PWM1_FB01|Add1~7\ $ (GND))) # (!\PWM1_FB01|var_Dead_Count2\(4) & (!\PWM1_FB01|Add1~7\ & VCC))
-- \PWM1_FB01|Add1~10\ = CARRY((\PWM1_FB01|var_Dead_Count2\(4) & !\PWM1_FB01|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB01|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM1_FB01|Add1~7\,
	combout => \PWM1_FB01|Add1~9_combout\,
	cout => \PWM1_FB01|Add1~10\);

-- Location: LCCOMB_X30_Y26_N0
\PWM1_FB01|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~16_combout\ = (\PWM1_FB01|Add1~9_combout\ & !\PWM1_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB01|Add1~9_combout\,
	datad => \PWM1_FB01|comp_out~q\,
	combout => \PWM1_FB01|Add1~16_combout\);

-- Location: FF_X30_Y26_N1
\PWM1_FB01|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count2\(4));

-- Location: LCCOMB_X30_Y26_N20
\PWM1_FB01|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~11_combout\ = (\PWM1_FB01|var_Dead_Count2\(5) & (!\PWM1_FB01|Add1~10\)) # (!\PWM1_FB01|var_Dead_Count2\(5) & ((\PWM1_FB01|Add1~10\) # (GND)))
-- \PWM1_FB01|Add1~12\ = CARRY((!\PWM1_FB01|Add1~10\) # (!\PWM1_FB01|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM1_FB01|Add1~10\,
	combout => \PWM1_FB01|Add1~11_combout\,
	cout => \PWM1_FB01|Add1~12\);

-- Location: LCCOMB_X30_Y26_N8
\PWM1_FB01|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~17_combout\ = (\PWM1_FB01|Add1~11_combout\ & !\PWM1_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB01|Add1~11_combout\,
	datad => \PWM1_FB01|comp_out~q\,
	combout => \PWM1_FB01|Add1~17_combout\);

-- Location: FF_X30_Y26_N9
\PWM1_FB01|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|var_Dead_Count2\(5));

-- Location: LCCOMB_X30_Y26_N22
\PWM1_FB01|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~13_combout\ = \PWM1_FB01|Add1~12\ $ (!\PWM1_FB01|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM1_FB01|var_Dead_Count2\(6),
	cin => \PWM1_FB01|Add1~12\,
	combout => \PWM1_FB01|Add1~13_combout\);

-- Location: LCCOMB_X30_Y26_N26
\PWM1_FB01|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Add1~15_combout\ = (\PWM1_FB01|Add1~13_combout\ & !\PWM1_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB01|Add1~13_combout\,
	datad => \PWM1_FB01|comp_out~q\,
	combout => \PWM1_FB01|Add1~15_combout\);

-- Location: LCCOMB_X30_Y26_N6
\PWM1_FB01|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Equal1~1_combout\ = (!\PWM1_FB01|Add1~15_combout\ & (!\PWM1_FB01|Add1~17_combout\ & (\PWM1_FB01|Add1~8_combout\ & !\PWM1_FB01|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|Add1~15_combout\,
	datab => \PWM1_FB01|Add1~17_combout\,
	datac => \PWM1_FB01|Add1~8_combout\,
	datad => \PWM1_FB01|Add1~16_combout\,
	combout => \PWM1_FB01|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y26_N28
\PWM1_FB01|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|Equal1~0_combout\ = (\PWM1_FB01|Add1~4_combout\ & (\PWM1_FB01|Add1~0_combout\ & (!\PWM1_FB01|comp_out~q\ & \PWM1_FB01|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|Add1~4_combout\,
	datab => \PWM1_FB01|Add1~0_combout\,
	datac => \PWM1_FB01|comp_out~q\,
	datad => \PWM1_FB01|Add1~2_combout\,
	combout => \PWM1_FB01|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y26_N26
\PWM1_FB01|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB01|port_PWM02~0_combout\ = (\PWM1_FB01|Equal1~1_combout\ & ((\PWM1_FB01|Equal1~0_combout\) # ((!\PWM1_FB01|comp_out~q\ & \PWM1_FB01|port_PWM02~q\)))) # (!\PWM1_FB01|Equal1~1_combout\ & (!\PWM1_FB01|comp_out~q\ & (\PWM1_FB01|port_PWM02~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB01|Equal1~1_combout\,
	datab => \PWM1_FB01|comp_out~q\,
	datac => \PWM1_FB01|port_PWM02~q\,
	datad => \PWM1_FB01|Equal1~0_combout\,
	combout => \PWM1_FB01|port_PWM02~0_combout\);

-- Location: FF_X31_Y26_N27
\PWM1_FB01|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB01|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB01|port_PWM02~q\);

-- Location: FF_X28_Y29_N3
\PWM1_FB02|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count2\(6));

-- Location: LCCOMB_X28_Y29_N12
\PWM1_FB02|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~0_combout\ = (\PWM1_FB02|LessThan2~1_combout\ & (\PWM1_FB02|var_Dead_Count2\(0) $ (VCC))) # (!\PWM1_FB02|LessThan2~1_combout\ & (\PWM1_FB02|var_Dead_Count2\(0) & VCC))
-- \PWM1_FB02|Add1~1\ = CARRY((\PWM1_FB02|LessThan2~1_combout\ & \PWM1_FB02|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|LessThan2~1_combout\,
	datab => \PWM1_FB02|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM1_FB02|Add1~0_combout\,
	cout => \PWM1_FB02|Add1~1\);

-- Location: LCCOMB_X28_Y29_N8
\PWM1_FB02|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~18_combout\ = (!\PWM1_FB02|comp_out~q\ & \PWM1_FB02|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB02|comp_out~q\,
	datad => \PWM1_FB02|Add1~0_combout\,
	combout => \PWM1_FB02|Add1~18_combout\);

-- Location: FF_X28_Y29_N9
\PWM1_FB02|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count2\(0));

-- Location: LCCOMB_X28_Y29_N30
\PWM1_FB02|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|LessThan2~0_combout\ = (((!\PWM1_FB02|var_Dead_Count2\(1)) # (!\PWM1_FB02|var_Dead_Count2\(0))) # (!\PWM1_FB02|var_Dead_Count2\(3))) # (!\PWM1_FB02|var_Dead_Count2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|var_Dead_Count2\(2),
	datab => \PWM1_FB02|var_Dead_Count2\(3),
	datac => \PWM1_FB02|var_Dead_Count2\(0),
	datad => \PWM1_FB02|var_Dead_Count2\(1),
	combout => \PWM1_FB02|LessThan2~0_combout\);

-- Location: LCCOMB_X28_Y29_N4
\PWM1_FB02|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|LessThan2~1_combout\ = (!\PWM1_FB02|var_Dead_Count2\(5) & (!\PWM1_FB02|var_Dead_Count2\(6) & (\PWM1_FB02|LessThan2~0_combout\ & !\PWM1_FB02|var_Dead_Count2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|var_Dead_Count2\(5),
	datab => \PWM1_FB02|var_Dead_Count2\(6),
	datac => \PWM1_FB02|LessThan2~0_combout\,
	datad => \PWM1_FB02|var_Dead_Count2\(4),
	combout => \PWM1_FB02|LessThan2~1_combout\);

-- Location: LCCOMB_X28_Y29_N14
\PWM1_FB02|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~2_combout\ = (\PWM1_FB02|var_Dead_Count2\(1) & (!\PWM1_FB02|Add1~1\)) # (!\PWM1_FB02|var_Dead_Count2\(1) & ((\PWM1_FB02|Add1~1\) # (GND)))
-- \PWM1_FB02|Add1~3\ = CARRY((!\PWM1_FB02|Add1~1\) # (!\PWM1_FB02|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB02|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM1_FB02|Add1~1\,
	combout => \PWM1_FB02|Add1~2_combout\,
	cout => \PWM1_FB02|Add1~3\);

-- Location: LCCOMB_X28_Y30_N8
\PWM1_FB02|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~19_combout\ = (!\PWM1_FB02|comp_out~q\ & \PWM1_FB02|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB02|comp_out~q\,
	datac => \PWM1_FB02|Add1~2_combout\,
	combout => \PWM1_FB02|Add1~19_combout\);

-- Location: FF_X28_Y30_N9
\PWM1_FB02|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count2\(1));

-- Location: LCCOMB_X28_Y29_N16
\PWM1_FB02|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~4_combout\ = (\PWM1_FB02|var_Dead_Count2\(2) & (\PWM1_FB02|Add1~3\ $ (GND))) # (!\PWM1_FB02|var_Dead_Count2\(2) & (!\PWM1_FB02|Add1~3\ & VCC))
-- \PWM1_FB02|Add1~5\ = CARRY((\PWM1_FB02|var_Dead_Count2\(2) & !\PWM1_FB02|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM1_FB02|Add1~3\,
	combout => \PWM1_FB02|Add1~4_combout\,
	cout => \PWM1_FB02|Add1~5\);

-- Location: LCCOMB_X28_Y29_N10
\PWM1_FB02|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~20_combout\ = (\PWM1_FB02|Add1~4_combout\ & !\PWM1_FB02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|Add1~4_combout\,
	datac => \PWM1_FB02|comp_out~q\,
	combout => \PWM1_FB02|Add1~20_combout\);

-- Location: FF_X28_Y29_N11
\PWM1_FB02|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count2\(2));

-- Location: LCCOMB_X28_Y29_N18
\PWM1_FB02|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~6_combout\ = (\PWM1_FB02|var_Dead_Count2\(3) & (!\PWM1_FB02|Add1~5\)) # (!\PWM1_FB02|var_Dead_Count2\(3) & ((\PWM1_FB02|Add1~5\) # (GND)))
-- \PWM1_FB02|Add1~7\ = CARRY((!\PWM1_FB02|Add1~5\) # (!\PWM1_FB02|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB02|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM1_FB02|Add1~5\,
	combout => \PWM1_FB02|Add1~6_combout\,
	cout => \PWM1_FB02|Add1~7\);

-- Location: LCCOMB_X28_Y29_N28
\PWM1_FB02|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~8_combout\ = (!\PWM1_FB02|comp_out~q\ & \PWM1_FB02|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB02|comp_out~q\,
	datad => \PWM1_FB02|Add1~6_combout\,
	combout => \PWM1_FB02|Add1~8_combout\);

-- Location: FF_X28_Y29_N29
\PWM1_FB02|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count2\(3));

-- Location: LCCOMB_X28_Y29_N20
\PWM1_FB02|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~9_combout\ = (\PWM1_FB02|var_Dead_Count2\(4) & (\PWM1_FB02|Add1~7\ $ (GND))) # (!\PWM1_FB02|var_Dead_Count2\(4) & (!\PWM1_FB02|Add1~7\ & VCC))
-- \PWM1_FB02|Add1~10\ = CARRY((\PWM1_FB02|var_Dead_Count2\(4) & !\PWM1_FB02|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB02|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM1_FB02|Add1~7\,
	combout => \PWM1_FB02|Add1~9_combout\,
	cout => \PWM1_FB02|Add1~10\);

-- Location: LCCOMB_X28_Y29_N0
\PWM1_FB02|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~16_combout\ = (!\PWM1_FB02|comp_out~q\ & \PWM1_FB02|Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB02|comp_out~q\,
	datad => \PWM1_FB02|Add1~9_combout\,
	combout => \PWM1_FB02|Add1~16_combout\);

-- Location: FF_X28_Y29_N1
\PWM1_FB02|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count2\(4));

-- Location: LCCOMB_X28_Y29_N22
\PWM1_FB02|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~11_combout\ = (\PWM1_FB02|var_Dead_Count2\(5) & (!\PWM1_FB02|Add1~10\)) # (!\PWM1_FB02|var_Dead_Count2\(5) & ((\PWM1_FB02|Add1~10\) # (GND)))
-- \PWM1_FB02|Add1~12\ = CARRY((!\PWM1_FB02|Add1~10\) # (!\PWM1_FB02|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM1_FB02|Add1~10\,
	combout => \PWM1_FB02|Add1~11_combout\,
	cout => \PWM1_FB02|Add1~12\);

-- Location: LCCOMB_X28_Y29_N26
\PWM1_FB02|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~17_combout\ = (!\PWM1_FB02|comp_out~q\ & \PWM1_FB02|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|comp_out~q\,
	datac => \PWM1_FB02|Add1~11_combout\,
	combout => \PWM1_FB02|Add1~17_combout\);

-- Location: FF_X28_Y29_N27
\PWM1_FB02|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|var_Dead_Count2\(5));

-- Location: LCCOMB_X28_Y29_N24
\PWM1_FB02|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~13_combout\ = \PWM1_FB02|Add1~12\ $ (!\PWM1_FB02|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM1_FB02|var_Dead_Count2\(6),
	cin => \PWM1_FB02|Add1~12\,
	combout => \PWM1_FB02|Add1~13_combout\);

-- Location: LCCOMB_X28_Y29_N2
\PWM1_FB02|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Add1~15_combout\ = (!\PWM1_FB02|comp_out~q\ & \PWM1_FB02|Add1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB02|comp_out~q\,
	datad => \PWM1_FB02|Add1~13_combout\,
	combout => \PWM1_FB02|Add1~15_combout\);

-- Location: LCCOMB_X28_Y29_N6
\PWM1_FB02|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Equal1~1_combout\ = (!\PWM1_FB02|Add1~15_combout\ & (!\PWM1_FB02|Add1~16_combout\ & (!\PWM1_FB02|Add1~17_combout\ & \PWM1_FB02|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|Add1~15_combout\,
	datab => \PWM1_FB02|Add1~16_combout\,
	datac => \PWM1_FB02|Add1~17_combout\,
	datad => \PWM1_FB02|Add1~8_combout\,
	combout => \PWM1_FB02|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y30_N10
\PWM1_FB02|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|Equal1~0_combout\ = (\PWM1_FB02|Add1~4_combout\ & (!\PWM1_FB02|comp_out~q\ & (\PWM1_FB02|Add1~2_combout\ & \PWM1_FB02|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|Add1~4_combout\,
	datab => \PWM1_FB02|comp_out~q\,
	datac => \PWM1_FB02|Add1~2_combout\,
	datad => \PWM1_FB02|Add1~0_combout\,
	combout => \PWM1_FB02|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y30_N2
\PWM1_FB02|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB02|port_PWM02~0_combout\ = (\PWM1_FB02|Equal1~1_combout\ & ((\PWM1_FB02|Equal1~0_combout\) # ((!\PWM1_FB02|comp_out~q\ & \PWM1_FB02|port_PWM02~q\)))) # (!\PWM1_FB02|Equal1~1_combout\ & (!\PWM1_FB02|comp_out~q\ & (\PWM1_FB02|port_PWM02~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB02|Equal1~1_combout\,
	datab => \PWM1_FB02|comp_out~q\,
	datac => \PWM1_FB02|port_PWM02~q\,
	datad => \PWM1_FB02|Equal1~0_combout\,
	combout => \PWM1_FB02|port_PWM02~0_combout\);

-- Location: FF_X28_Y30_N3
\PWM1_FB02|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB02|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB02|port_PWM02~q\);

-- Location: FF_X38_Y33_N25
\PWM1_FB03|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count2\(3));

-- Location: LCCOMB_X38_Y33_N8
\PWM1_FB03|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~6_combout\ = (\PWM1_FB03|var_Dead_Count2\(3) & (!\PWM1_FB03|Add1~5\)) # (!\PWM1_FB03|var_Dead_Count2\(3) & ((\PWM1_FB03|Add1~5\) # (GND)))
-- \PWM1_FB03|Add1~7\ = CARRY((!\PWM1_FB03|Add1~5\) # (!\PWM1_FB03|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB03|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM1_FB03|Add1~5\,
	combout => \PWM1_FB03|Add1~6_combout\,
	cout => \PWM1_FB03|Add1~7\);

-- Location: LCCOMB_X38_Y33_N10
\PWM1_FB03|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~9_combout\ = (\PWM1_FB03|var_Dead_Count2\(4) & (\PWM1_FB03|Add1~7\ $ (GND))) # (!\PWM1_FB03|var_Dead_Count2\(4) & (!\PWM1_FB03|Add1~7\ & VCC))
-- \PWM1_FB03|Add1~10\ = CARRY((\PWM1_FB03|var_Dead_Count2\(4) & !\PWM1_FB03|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB03|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM1_FB03|Add1~7\,
	combout => \PWM1_FB03|Add1~9_combout\,
	cout => \PWM1_FB03|Add1~10\);

-- Location: LCCOMB_X38_Y33_N20
\PWM1_FB03|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~16_combout\ = (!\PWM1_FB03|comp_out~q\ & \PWM1_FB03|Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB03|comp_out~q\,
	datad => \PWM1_FB03|Add1~9_combout\,
	combout => \PWM1_FB03|Add1~16_combout\);

-- Location: FF_X38_Y33_N21
\PWM1_FB03|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count2\(4));

-- Location: LCCOMB_X38_Y33_N12
\PWM1_FB03|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~11_combout\ = (\PWM1_FB03|var_Dead_Count2\(5) & (!\PWM1_FB03|Add1~10\)) # (!\PWM1_FB03|var_Dead_Count2\(5) & ((\PWM1_FB03|Add1~10\) # (GND)))
-- \PWM1_FB03|Add1~12\ = CARRY((!\PWM1_FB03|Add1~10\) # (!\PWM1_FB03|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM1_FB03|Add1~10\,
	combout => \PWM1_FB03|Add1~11_combout\,
	cout => \PWM1_FB03|Add1~12\);

-- Location: LCCOMB_X38_Y33_N30
\PWM1_FB03|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~17_combout\ = (!\PWM1_FB03|comp_out~q\ & \PWM1_FB03|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB03|comp_out~q\,
	datad => \PWM1_FB03|Add1~11_combout\,
	combout => \PWM1_FB03|Add1~17_combout\);

-- Location: FF_X38_Y33_N31
\PWM1_FB03|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count2\(5));

-- Location: LCCOMB_X38_Y33_N14
\PWM1_FB03|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~13_combout\ = \PWM1_FB03|var_Dead_Count2\(6) $ (!\PWM1_FB03|Add1~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|var_Dead_Count2\(6),
	cin => \PWM1_FB03|Add1~12\,
	combout => \PWM1_FB03|Add1~13_combout\);

-- Location: LCCOMB_X38_Y33_N16
\PWM1_FB03|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~15_combout\ = (\PWM1_FB03|Add1~13_combout\ & !\PWM1_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB03|Add1~13_combout\,
	datad => \PWM1_FB03|comp_out~q\,
	combout => \PWM1_FB03|Add1~15_combout\);

-- Location: FF_X38_Y33_N17
\PWM1_FB03|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count2\(6));

-- Location: LCCOMB_X38_Y33_N2
\PWM1_FB03|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~0_combout\ = (\PWM1_FB03|LessThan2~1_combout\ & (\PWM1_FB03|var_Dead_Count2\(0) $ (VCC))) # (!\PWM1_FB03|LessThan2~1_combout\ & (\PWM1_FB03|var_Dead_Count2\(0) & VCC))
-- \PWM1_FB03|Add1~1\ = CARRY((\PWM1_FB03|LessThan2~1_combout\ & \PWM1_FB03|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|LessThan2~1_combout\,
	datab => \PWM1_FB03|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM1_FB03|Add1~0_combout\,
	cout => \PWM1_FB03|Add1~1\);

-- Location: LCCOMB_X37_Y33_N6
\PWM1_FB03|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~18_combout\ = (!\PWM1_FB03|comp_out~q\ & \PWM1_FB03|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB03|comp_out~q\,
	datad => \PWM1_FB03|Add1~0_combout\,
	combout => \PWM1_FB03|Add1~18_combout\);

-- Location: FF_X37_Y33_N7
\PWM1_FB03|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count2\(0));

-- Location: LCCOMB_X38_Y33_N18
\PWM1_FB03|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|LessThan2~0_combout\ = (((!\PWM1_FB03|var_Dead_Count2\(3)) # (!\PWM1_FB03|var_Dead_Count2\(0))) # (!\PWM1_FB03|var_Dead_Count2\(2))) # (!\PWM1_FB03|var_Dead_Count2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|var_Dead_Count2\(1),
	datab => \PWM1_FB03|var_Dead_Count2\(2),
	datac => \PWM1_FB03|var_Dead_Count2\(0),
	datad => \PWM1_FB03|var_Dead_Count2\(3),
	combout => \PWM1_FB03|LessThan2~0_combout\);

-- Location: LCCOMB_X38_Y33_N26
\PWM1_FB03|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|LessThan2~1_combout\ = (!\PWM1_FB03|var_Dead_Count2\(6) & (\PWM1_FB03|LessThan2~0_combout\ & (!\PWM1_FB03|var_Dead_Count2\(5) & !\PWM1_FB03|var_Dead_Count2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|var_Dead_Count2\(6),
	datab => \PWM1_FB03|LessThan2~0_combout\,
	datac => \PWM1_FB03|var_Dead_Count2\(5),
	datad => \PWM1_FB03|var_Dead_Count2\(4),
	combout => \PWM1_FB03|LessThan2~1_combout\);

-- Location: LCCOMB_X38_Y33_N4
\PWM1_FB03|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~2_combout\ = (\PWM1_FB03|var_Dead_Count2\(1) & (!\PWM1_FB03|Add1~1\)) # (!\PWM1_FB03|var_Dead_Count2\(1) & ((\PWM1_FB03|Add1~1\) # (GND)))
-- \PWM1_FB03|Add1~3\ = CARRY((!\PWM1_FB03|Add1~1\) # (!\PWM1_FB03|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM1_FB03|Add1~1\,
	combout => \PWM1_FB03|Add1~2_combout\,
	cout => \PWM1_FB03|Add1~3\);

-- Location: LCCOMB_X37_Y33_N8
\PWM1_FB03|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~19_combout\ = (!\PWM1_FB03|comp_out~q\ & \PWM1_FB03|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB03|comp_out~q\,
	datad => \PWM1_FB03|Add1~2_combout\,
	combout => \PWM1_FB03|Add1~19_combout\);

-- Location: FF_X37_Y33_N9
\PWM1_FB03|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count2\(1));

-- Location: LCCOMB_X38_Y33_N6
\PWM1_FB03|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~4_combout\ = (\PWM1_FB03|var_Dead_Count2\(2) & (\PWM1_FB03|Add1~3\ $ (GND))) # (!\PWM1_FB03|var_Dead_Count2\(2) & (!\PWM1_FB03|Add1~3\ & VCC))
-- \PWM1_FB03|Add1~5\ = CARRY((\PWM1_FB03|var_Dead_Count2\(2) & !\PWM1_FB03|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FB03|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM1_FB03|Add1~3\,
	combout => \PWM1_FB03|Add1~4_combout\,
	cout => \PWM1_FB03|Add1~5\);

-- Location: LCCOMB_X37_Y33_N18
\PWM1_FB03|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~20_combout\ = (!\PWM1_FB03|comp_out~q\ & \PWM1_FB03|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB03|comp_out~q\,
	datad => \PWM1_FB03|Add1~4_combout\,
	combout => \PWM1_FB03|Add1~20_combout\);

-- Location: FF_X37_Y33_N19
\PWM1_FB03|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|var_Dead_Count2\(2));

-- Location: LCCOMB_X38_Y33_N24
\PWM1_FB03|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Add1~8_combout\ = (\PWM1_FB03|Add1~6_combout\ & !\PWM1_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FB03|Add1~6_combout\,
	datad => \PWM1_FB03|comp_out~q\,
	combout => \PWM1_FB03|Add1~8_combout\);

-- Location: LCCOMB_X38_Y33_N22
\PWM1_FB03|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Equal1~1_combout\ = (\PWM1_FB03|Add1~8_combout\ & (!\PWM1_FB03|Add1~15_combout\ & (!\PWM1_FB03|Add1~16_combout\ & !\PWM1_FB03|Add1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|Add1~8_combout\,
	datab => \PWM1_FB03|Add1~15_combout\,
	datac => \PWM1_FB03|Add1~16_combout\,
	datad => \PWM1_FB03|Add1~17_combout\,
	combout => \PWM1_FB03|Equal1~1_combout\);

-- Location: LCCOMB_X38_Y33_N28
\PWM1_FB03|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|Equal1~0_combout\ = (\PWM1_FB03|Add1~4_combout\ & (!\PWM1_FB03|comp_out~q\ & (\PWM1_FB03|Add1~2_combout\ & \PWM1_FB03|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|Add1~4_combout\,
	datab => \PWM1_FB03|comp_out~q\,
	datac => \PWM1_FB03|Add1~2_combout\,
	datad => \PWM1_FB03|Add1~0_combout\,
	combout => \PWM1_FB03|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y33_N0
\PWM1_FB03|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FB03|port_PWM02~0_combout\ = (\PWM1_FB03|Equal1~1_combout\ & ((\PWM1_FB03|Equal1~0_combout\) # ((!\PWM1_FB03|comp_out~q\ & \PWM1_FB03|port_PWM02~q\)))) # (!\PWM1_FB03|Equal1~1_combout\ & (!\PWM1_FB03|comp_out~q\ & (\PWM1_FB03|port_PWM02~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FB03|Equal1~1_combout\,
	datab => \PWM1_FB03|comp_out~q\,
	datac => \PWM1_FB03|port_PWM02~q\,
	datad => \PWM1_FB03|Equal1~0_combout\,
	combout => \PWM1_FB03|port_PWM02~0_combout\);

-- Location: FF_X38_Y33_N1
\PWM1_FB03|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FB03|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FB03|port_PWM02~q\);

-- Location: LCCOMB_X26_Y26_N6
\PWM2_FB01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|LessThan0~2_combout\ = (!\ucr2|c_int\(3) & (\ucr2|c_int\(2) & ((\ucr6|c_int\(0)) # (\ucr2|c_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(3),
	datab => \ucr2|c_int\(2),
	datac => \ucr6|c_int\(0),
	datad => \ucr2|c_int\(1),
	combout => \PWM2_FB01|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y26_N8
\PWM2_FB01|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|LessThan0~3_combout\ = (\ucr2|c_int\(7) & (((!\PWM2_FB01|LessThan0~2_combout\ & !\ucr2|c_int\(4))) # (!\ucr2|c_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|LessThan0~2_combout\,
	datab => \ucr2|c_int\(4),
	datac => \ucr2|c_int\(5),
	datad => \ucr2|c_int\(7),
	combout => \PWM2_FB01|LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y26_N20
\PWM2_FB01|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|LessThan0~4_combout\ = ((\PWM2_FB01|LessThan0~3_combout\ & (\ucr2|c_int\(6) & !\ucr2|c_int\(8)))) # (!\PWM2_FB01|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|LessThan0~3_combout\,
	datab => \ucr2|c_int\(6),
	datac => \PWM2_FB01|LessThan0~1_combout\,
	datad => \ucr2|c_int\(8),
	combout => \PWM2_FB01|LessThan0~4_combout\);

-- Location: FF_X24_Y26_N21
\PWM2_FB01|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|comp_out~q\);

-- Location: LCCOMB_X24_Y26_N24
\PWM2_FB01|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~18_combout\ = (\PWM2_FB01|Add1~0_combout\ & !\PWM2_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|Add1~0_combout\,
	datad => \PWM2_FB01|comp_out~q\,
	combout => \PWM2_FB01|Add1~18_combout\);

-- Location: FF_X24_Y26_N25
\PWM2_FB01|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count2\(0));

-- Location: LCCOMB_X23_Y26_N12
\PWM2_FB01|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~0_combout\ = (\PWM2_FB01|LessThan2~1_combout\ & (\PWM2_FB01|var_Dead_Count2\(0) $ (VCC))) # (!\PWM2_FB01|LessThan2~1_combout\ & (\PWM2_FB01|var_Dead_Count2\(0) & VCC))
-- \PWM2_FB01|Add1~1\ = CARRY((\PWM2_FB01|LessThan2~1_combout\ & \PWM2_FB01|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|LessThan2~1_combout\,
	datab => \PWM2_FB01|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM2_FB01|Add1~0_combout\,
	cout => \PWM2_FB01|Add1~1\);

-- Location: LCCOMB_X23_Y26_N14
\PWM2_FB01|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~2_combout\ = (\PWM2_FB01|var_Dead_Count2\(1) & (!\PWM2_FB01|Add1~1\)) # (!\PWM2_FB01|var_Dead_Count2\(1) & ((\PWM2_FB01|Add1~1\) # (GND)))
-- \PWM2_FB01|Add1~3\ = CARRY((!\PWM2_FB01|Add1~1\) # (!\PWM2_FB01|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM2_FB01|Add1~1\,
	combout => \PWM2_FB01|Add1~2_combout\,
	cout => \PWM2_FB01|Add1~3\);

-- Location: LCCOMB_X24_Y26_N18
\PWM2_FB01|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~19_combout\ = (\PWM2_FB01|Add1~2_combout\ & !\PWM2_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|Add1~2_combout\,
	datad => \PWM2_FB01|comp_out~q\,
	combout => \PWM2_FB01|Add1~19_combout\);

-- Location: FF_X24_Y26_N19
\PWM2_FB01|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count2\(1));

-- Location: LCCOMB_X23_Y26_N16
\PWM2_FB01|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~4_combout\ = (\PWM2_FB01|var_Dead_Count2\(2) & (\PWM2_FB01|Add1~3\ $ (GND))) # (!\PWM2_FB01|var_Dead_Count2\(2) & (!\PWM2_FB01|Add1~3\ & VCC))
-- \PWM2_FB01|Add1~5\ = CARRY((\PWM2_FB01|var_Dead_Count2\(2) & !\PWM2_FB01|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM2_FB01|Add1~3\,
	combout => \PWM2_FB01|Add1~4_combout\,
	cout => \PWM2_FB01|Add1~5\);

-- Location: LCCOMB_X23_Y27_N16
\PWM2_FB01|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~20_combout\ = (\PWM2_FB01|Add1~4_combout\ & !\PWM2_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|Add1~4_combout\,
	datad => \PWM2_FB01|comp_out~q\,
	combout => \PWM2_FB01|Add1~20_combout\);

-- Location: FF_X23_Y27_N17
\PWM2_FB01|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count2\(2));

-- Location: LCCOMB_X23_Y26_N18
\PWM2_FB01|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~6_combout\ = (\PWM2_FB01|var_Dead_Count2\(3) & (!\PWM2_FB01|Add1~5\)) # (!\PWM2_FB01|var_Dead_Count2\(3) & ((\PWM2_FB01|Add1~5\) # (GND)))
-- \PWM2_FB01|Add1~7\ = CARRY((!\PWM2_FB01|Add1~5\) # (!\PWM2_FB01|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM2_FB01|Add1~5\,
	combout => \PWM2_FB01|Add1~6_combout\,
	cout => \PWM2_FB01|Add1~7\);

-- Location: LCCOMB_X23_Y26_N10
\PWM2_FB01|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~8_combout\ = (!\PWM2_FB01|comp_out~q\ & \PWM2_FB01|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB01|comp_out~q\,
	datad => \PWM2_FB01|Add1~6_combout\,
	combout => \PWM2_FB01|Add1~8_combout\);

-- Location: FF_X23_Y26_N11
\PWM2_FB01|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count2\(3));

-- Location: LCCOMB_X23_Y26_N20
\PWM2_FB01|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~9_combout\ = (\PWM2_FB01|var_Dead_Count2\(4) & (\PWM2_FB01|Add1~7\ $ (GND))) # (!\PWM2_FB01|var_Dead_Count2\(4) & (!\PWM2_FB01|Add1~7\ & VCC))
-- \PWM2_FB01|Add1~10\ = CARRY((\PWM2_FB01|var_Dead_Count2\(4) & !\PWM2_FB01|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM2_FB01|Add1~7\,
	combout => \PWM2_FB01|Add1~9_combout\,
	cout => \PWM2_FB01|Add1~10\);

-- Location: LCCOMB_X23_Y26_N30
\PWM2_FB01|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~16_combout\ = (\PWM2_FB01|Add1~9_combout\ & !\PWM2_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|Add1~9_combout\,
	datac => \PWM2_FB01|comp_out~q\,
	combout => \PWM2_FB01|Add1~16_combout\);

-- Location: FF_X23_Y26_N31
\PWM2_FB01|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count2\(4));

-- Location: LCCOMB_X23_Y26_N22
\PWM2_FB01|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~11_combout\ = (\PWM2_FB01|var_Dead_Count2\(5) & (!\PWM2_FB01|Add1~10\)) # (!\PWM2_FB01|var_Dead_Count2\(5) & ((\PWM2_FB01|Add1~10\) # (GND)))
-- \PWM2_FB01|Add1~12\ = CARRY((!\PWM2_FB01|Add1~10\) # (!\PWM2_FB01|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM2_FB01|Add1~10\,
	combout => \PWM2_FB01|Add1~11_combout\,
	cout => \PWM2_FB01|Add1~12\);

-- Location: LCCOMB_X23_Y26_N8
\PWM2_FB01|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~17_combout\ = (!\PWM2_FB01|comp_out~q\ & \PWM2_FB01|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|comp_out~q\,
	datac => \PWM2_FB01|Add1~11_combout\,
	combout => \PWM2_FB01|Add1~17_combout\);

-- Location: FF_X23_Y26_N9
\PWM2_FB01|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count2\(5));

-- Location: LCCOMB_X23_Y26_N24
\PWM2_FB01|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~13_combout\ = \PWM2_FB01|var_Dead_Count2\(6) $ (!\PWM2_FB01|Add1~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|var_Dead_Count2\(6),
	cin => \PWM2_FB01|Add1~12\,
	combout => \PWM2_FB01|Add1~13_combout\);

-- Location: LCCOMB_X23_Y26_N2
\PWM2_FB01|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add1~15_combout\ = (\PWM2_FB01|Add1~13_combout\ & !\PWM2_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|Add1~13_combout\,
	datac => \PWM2_FB01|comp_out~q\,
	combout => \PWM2_FB01|Add1~15_combout\);

-- Location: FF_X23_Y26_N3
\PWM2_FB01|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count2\(6));

-- Location: LCCOMB_X23_Y26_N4
\PWM2_FB01|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|LessThan2~0_combout\ = (((!\PWM2_FB01|var_Dead_Count2\(1)) # (!\PWM2_FB01|var_Dead_Count2\(2))) # (!\PWM2_FB01|var_Dead_Count2\(0))) # (!\PWM2_FB01|var_Dead_Count2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|var_Dead_Count2\(3),
	datab => \PWM2_FB01|var_Dead_Count2\(0),
	datac => \PWM2_FB01|var_Dead_Count2\(2),
	datad => \PWM2_FB01|var_Dead_Count2\(1),
	combout => \PWM2_FB01|LessThan2~0_combout\);

-- Location: LCCOMB_X23_Y26_N26
\PWM2_FB01|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|LessThan2~1_combout\ = (!\PWM2_FB01|var_Dead_Count2\(6) & (!\PWM2_FB01|var_Dead_Count2\(5) & (!\PWM2_FB01|var_Dead_Count2\(4) & \PWM2_FB01|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|var_Dead_Count2\(6),
	datab => \PWM2_FB01|var_Dead_Count2\(5),
	datac => \PWM2_FB01|var_Dead_Count2\(4),
	datad => \PWM2_FB01|LessThan2~0_combout\,
	combout => \PWM2_FB01|LessThan2~1_combout\);

-- Location: LCCOMB_X23_Y26_N28
\PWM2_FB01|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Equal1~0_combout\ = (\PWM2_FB01|Add1~0_combout\ & (\PWM2_FB01|Add1~2_combout\ & (!\PWM2_FB01|comp_out~q\ & \PWM2_FB01|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|Add1~0_combout\,
	datab => \PWM2_FB01|Add1~2_combout\,
	datac => \PWM2_FB01|comp_out~q\,
	datad => \PWM2_FB01|Add1~4_combout\,
	combout => \PWM2_FB01|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y26_N6
\PWM2_FB01|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Equal1~1_combout\ = (!\PWM2_FB01|Add1~17_combout\ & (!\PWM2_FB01|Add1~15_combout\ & (\PWM2_FB01|Add1~8_combout\ & !\PWM2_FB01|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|Add1~17_combout\,
	datab => \PWM2_FB01|Add1~15_combout\,
	datac => \PWM2_FB01|Add1~8_combout\,
	datad => \PWM2_FB01|Add1~16_combout\,
	combout => \PWM2_FB01|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y26_N0
\PWM2_FB01|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|port_PWM02~0_combout\ = (\PWM2_FB01|comp_out~q\ & (\PWM2_FB01|Equal1~0_combout\ & ((\PWM2_FB01|Equal1~1_combout\)))) # (!\PWM2_FB01|comp_out~q\ & ((\PWM2_FB01|port_PWM02~q\) # ((\PWM2_FB01|Equal1~0_combout\ & \PWM2_FB01|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|comp_out~q\,
	datab => \PWM2_FB01|Equal1~0_combout\,
	datac => \PWM2_FB01|port_PWM02~q\,
	datad => \PWM2_FB01|Equal1~1_combout\,
	combout => \PWM2_FB01|port_PWM02~0_combout\);

-- Location: FF_X23_Y26_N1
\PWM2_FB01|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|port_PWM02~q\);

-- Location: LCCOMB_X29_Y28_N14
\PWM2_FB02|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|LessThan0~2_combout\ = (!\ucr4|c_int\(2) & (\ucr4|c_int\(3) & ((\ucr4|c_int\(1)) # (!\ucr5|c_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(2),
	datab => \ucr4|c_int\(3),
	datac => \ucr5|c_int\(0),
	datad => \ucr4|c_int\(1),
	combout => \PWM2_FB02|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y28_N8
\PWM2_FB02|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|LessThan0~3_combout\ = (!\ucr4|c_int\(6) & (((!\ucr4|c_int\(4) & !\PWM2_FB02|LessThan0~2_combout\)) # (!\ucr4|c_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(4),
	datab => \ucr4|c_int\(5),
	datac => \PWM2_FB02|LessThan0~2_combout\,
	datad => \ucr4|c_int\(6),
	combout => \PWM2_FB02|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y28_N0
\PWM2_FB02|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|LessThan0~4_combout\ = ((\ucr4|c_int\(7) & (!\ucr4|c_int\(8) & \PWM2_FB02|LessThan0~3_combout\))) # (!\PWM2_FB02|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(7),
	datab => \ucr4|c_int\(8),
	datac => \PWM2_FB02|LessThan0~3_combout\,
	datad => \PWM2_FB02|LessThan0~1_combout\,
	combout => \PWM2_FB02|LessThan0~4_combout\);

-- Location: FF_X29_Y28_N1
\PWM2_FB02|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|comp_out~q\);

-- Location: LCCOMB_X32_Y33_N24
\PWM2_FB02|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~15_combout\ = (!\PWM2_FB02|comp_out~q\ & \PWM2_FB02|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|comp_out~q\,
	datad => \PWM2_FB02|Add1~2_combout\,
	combout => \PWM2_FB02|Add1~15_combout\);

-- Location: FF_X32_Y33_N25
\PWM2_FB02|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count2\(1));

-- Location: LCCOMB_X32_Y33_N10
\PWM2_FB02|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~2_combout\ = (\PWM2_FB02|var_Dead_Count2\(1) & (!\PWM2_FB02|Add1~1\)) # (!\PWM2_FB02|var_Dead_Count2\(1) & ((\PWM2_FB02|Add1~1\) # (GND)))
-- \PWM2_FB02|Add1~3\ = CARRY((!\PWM2_FB02|Add1~1\) # (!\PWM2_FB02|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM2_FB02|Add1~1\,
	combout => \PWM2_FB02|Add1~2_combout\,
	cout => \PWM2_FB02|Add1~3\);

-- Location: LCCOMB_X32_Y33_N12
\PWM2_FB02|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~4_combout\ = (\PWM2_FB02|var_Dead_Count2\(2) & (\PWM2_FB02|Add1~3\ $ (GND))) # (!\PWM2_FB02|var_Dead_Count2\(2) & (!\PWM2_FB02|Add1~3\ & VCC))
-- \PWM2_FB02|Add1~5\ = CARRY((\PWM2_FB02|var_Dead_Count2\(2) & !\PWM2_FB02|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM2_FB02|Add1~3\,
	combout => \PWM2_FB02|Add1~4_combout\,
	cout => \PWM2_FB02|Add1~5\);

-- Location: LCCOMB_X32_Y33_N26
\PWM2_FB02|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~16_combout\ = (!\PWM2_FB02|comp_out~q\ & \PWM2_FB02|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|comp_out~q\,
	datad => \PWM2_FB02|Add1~4_combout\,
	combout => \PWM2_FB02|Add1~16_combout\);

-- Location: FF_X32_Y33_N27
\PWM2_FB02|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count2\(2));

-- Location: LCCOMB_X32_Y33_N14
\PWM2_FB02|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~6_combout\ = (\PWM2_FB02|var_Dead_Count2\(3) & (!\PWM2_FB02|Add1~5\)) # (!\PWM2_FB02|var_Dead_Count2\(3) & ((\PWM2_FB02|Add1~5\) # (GND)))
-- \PWM2_FB02|Add1~7\ = CARRY((!\PWM2_FB02|Add1~5\) # (!\PWM2_FB02|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM2_FB02|Add1~5\,
	combout => \PWM2_FB02|Add1~6_combout\,
	cout => \PWM2_FB02|Add1~7\);

-- Location: LCCOMB_X32_Y33_N4
\PWM2_FB02|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~17_combout\ = (\PWM2_FB02|Add1~6_combout\ & !\PWM2_FB02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB02|Add1~6_combout\,
	datad => \PWM2_FB02|comp_out~q\,
	combout => \PWM2_FB02|Add1~17_combout\);

-- Location: FF_X32_Y33_N5
\PWM2_FB02|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count2\(3));

-- Location: LCCOMB_X32_Y33_N16
\PWM2_FB02|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~8_combout\ = (\PWM2_FB02|var_Dead_Count2\(4) & (\PWM2_FB02|Add1~7\ $ (GND))) # (!\PWM2_FB02|var_Dead_Count2\(4) & (!\PWM2_FB02|Add1~7\ & VCC))
-- \PWM2_FB02|Add1~9\ = CARRY((\PWM2_FB02|var_Dead_Count2\(4) & !\PWM2_FB02|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM2_FB02|Add1~7\,
	combout => \PWM2_FB02|Add1~8_combout\,
	cout => \PWM2_FB02|Add1~9\);

-- Location: LCCOMB_X32_Y33_N6
\PWM2_FB02|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~18_combout\ = (!\PWM2_FB02|comp_out~q\ & \PWM2_FB02|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|comp_out~q\,
	datad => \PWM2_FB02|Add1~8_combout\,
	combout => \PWM2_FB02|Add1~18_combout\);

-- Location: FF_X32_Y33_N7
\PWM2_FB02|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count2\(4));

-- Location: LCCOMB_X32_Y33_N18
\PWM2_FB02|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~10_combout\ = (\PWM2_FB02|var_Dead_Count2\(5) & (!\PWM2_FB02|Add1~9\)) # (!\PWM2_FB02|var_Dead_Count2\(5) & ((\PWM2_FB02|Add1~9\) # (GND)))
-- \PWM2_FB02|Add1~11\ = CARRY((!\PWM2_FB02|Add1~9\) # (!\PWM2_FB02|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM2_FB02|Add1~9\,
	combout => \PWM2_FB02|Add1~10_combout\,
	cout => \PWM2_FB02|Add1~11\);

-- Location: LCCOMB_X32_Y33_N0
\PWM2_FB02|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~19_combout\ = (!\PWM2_FB02|comp_out~q\ & \PWM2_FB02|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|comp_out~q\,
	datad => \PWM2_FB02|Add1~10_combout\,
	combout => \PWM2_FB02|Add1~19_combout\);

-- Location: FF_X32_Y33_N1
\PWM2_FB02|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count2\(5));

-- Location: LCCOMB_X32_Y33_N20
\PWM2_FB02|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~12_combout\ = \PWM2_FB02|Add1~11\ $ (!\PWM2_FB02|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FB02|var_Dead_Count2\(6),
	cin => \PWM2_FB02|Add1~11\,
	combout => \PWM2_FB02|Add1~12_combout\);

-- Location: LCCOMB_X32_Y33_N2
\PWM2_FB02|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~20_combout\ = (!\PWM2_FB02|comp_out~q\ & \PWM2_FB02|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|comp_out~q\,
	datad => \PWM2_FB02|Add1~12_combout\,
	combout => \PWM2_FB02|Add1~20_combout\);

-- Location: FF_X32_Y33_N3
\PWM2_FB02|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count2\(6));

-- Location: LCCOMB_X32_Y33_N30
\PWM2_FB02|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|LessThan2~0_combout\ = (((!\PWM2_FB02|var_Dead_Count2\(1)) # (!\PWM2_FB02|var_Dead_Count2\(2))) # (!\PWM2_FB02|var_Dead_Count2\(3))) # (!\PWM2_FB02|var_Dead_Count2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|var_Dead_Count2\(0),
	datab => \PWM2_FB02|var_Dead_Count2\(3),
	datac => \PWM2_FB02|var_Dead_Count2\(2),
	datad => \PWM2_FB02|var_Dead_Count2\(1),
	combout => \PWM2_FB02|LessThan2~0_combout\);

-- Location: LCCOMB_X32_Y33_N28
\PWM2_FB02|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|LessThan2~1_combout\ = (!\PWM2_FB02|var_Dead_Count2\(4) & (!\PWM2_FB02|var_Dead_Count2\(6) & (\PWM2_FB02|LessThan2~0_combout\ & !\PWM2_FB02|var_Dead_Count2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|var_Dead_Count2\(4),
	datab => \PWM2_FB02|var_Dead_Count2\(6),
	datac => \PWM2_FB02|LessThan2~0_combout\,
	datad => \PWM2_FB02|var_Dead_Count2\(5),
	combout => \PWM2_FB02|LessThan2~1_combout\);

-- Location: LCCOMB_X32_Y33_N8
\PWM2_FB02|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~0_combout\ = (\PWM2_FB02|var_Dead_Count2\(0) & (\PWM2_FB02|LessThan2~1_combout\ $ (VCC))) # (!\PWM2_FB02|var_Dead_Count2\(0) & (\PWM2_FB02|LessThan2~1_combout\ & VCC))
-- \PWM2_FB02|Add1~1\ = CARRY((\PWM2_FB02|var_Dead_Count2\(0) & \PWM2_FB02|LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|var_Dead_Count2\(0),
	datab => \PWM2_FB02|LessThan2~1_combout\,
	datad => VCC,
	combout => \PWM2_FB02|Add1~0_combout\,
	cout => \PWM2_FB02|Add1~1\);

-- Location: LCCOMB_X31_Y33_N12
\PWM2_FB02|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add1~14_combout\ = (\PWM2_FB02|Add1~0_combout\ & !\PWM2_FB02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB02|Add1~0_combout\,
	datad => \PWM2_FB02|comp_out~q\,
	combout => \PWM2_FB02|Add1~14_combout\);

-- Location: FF_X31_Y33_N13
\PWM2_FB02|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count2\(0));

-- Location: LCCOMB_X31_Y33_N6
\PWM2_FB02|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|port_PWM02~0_combout\ = (\PWM2_FB02|Add1~2_combout\ & (\PWM2_FB02|Add1~4_combout\ & (\PWM2_FB02|Add1~0_combout\ & !\PWM2_FB02|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|Add1~2_combout\,
	datab => \PWM2_FB02|Add1~4_combout\,
	datac => \PWM2_FB02|Add1~0_combout\,
	datad => \PWM2_FB02|comp_out~q\,
	combout => \PWM2_FB02|port_PWM02~0_combout\);

-- Location: LCCOMB_X32_Y33_N22
\PWM2_FB02|port_PWM02~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|port_PWM02~1_combout\ = (!\PWM2_FB02|Add1~12_combout\ & (!\PWM2_FB02|Add1~10_combout\ & (\PWM2_FB02|Add1~6_combout\ & !\PWM2_FB02|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|Add1~12_combout\,
	datab => \PWM2_FB02|Add1~10_combout\,
	datac => \PWM2_FB02|Add1~6_combout\,
	datad => \PWM2_FB02|Add1~8_combout\,
	combout => \PWM2_FB02|port_PWM02~1_combout\);

-- Location: LCCOMB_X31_Y33_N16
\PWM2_FB02|port_PWM02~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|port_PWM02~2_combout\ = (\PWM2_FB02|port_PWM02~0_combout\ & ((\PWM2_FB02|port_PWM02~1_combout\) # ((!\PWM2_FB02|comp_out~q\ & \PWM2_FB02|port_PWM02~q\)))) # (!\PWM2_FB02|port_PWM02~0_combout\ & (!\PWM2_FB02|comp_out~q\ & 
-- (\PWM2_FB02|port_PWM02~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|port_PWM02~0_combout\,
	datab => \PWM2_FB02|comp_out~q\,
	datac => \PWM2_FB02|port_PWM02~q\,
	datad => \PWM2_FB02|port_PWM02~1_combout\,
	combout => \PWM2_FB02|port_PWM02~2_combout\);

-- Location: FF_X31_Y33_N17
\PWM2_FB02|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|port_PWM02~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|port_PWM02~q\);

-- Location: LCCOMB_X23_Y23_N2
\PWM2_FB03|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|LessThan0~2_combout\ = (\ucr6|c_int\(2) & (\ucr6|c_int\(3) & ((\ucr6|c_int\(0)) # (!\ucr6|c_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(2),
	datab => \ucr6|c_int\(0),
	datac => \ucr6|c_int\(1),
	datad => \ucr6|c_int\(3),
	combout => \PWM2_FB03|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y21_N20
\PWM2_FB03|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|LessThan0~3_combout\ = (!\ucr6|c_int\(7) & (((!\ucr6|c_int\(4) & !\PWM2_FB03|LessThan0~2_combout\)) # (!\ucr6|c_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(4),
	datab => \PWM2_FB03|LessThan0~2_combout\,
	datac => \ucr6|c_int\(5),
	datad => \ucr6|c_int\(7),
	combout => \PWM2_FB03|LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y21_N0
\PWM2_FB03|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|LessThan0~4_combout\ = ((\ucr6|c_int\(6) & (!\ucr6|c_int\(8) & \PWM2_FB03|LessThan0~3_combout\))) # (!\PWM2_FB03|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(6),
	datab => \ucr6|c_int\(8),
	datac => \PWM2_FB03|LessThan0~3_combout\,
	datad => \PWM2_FB03|LessThan0~1_combout\,
	combout => \PWM2_FB03|LessThan0~4_combout\);

-- Location: FF_X24_Y21_N1
\PWM2_FB03|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|comp_out~q\);

-- Location: LCCOMB_X24_Y22_N20
\PWM2_FB03|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~18_combout\ = (\PWM2_FB03|Add1~0_combout\ & !\PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|Add1~0_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add1~18_combout\);

-- Location: FF_X24_Y22_N21
\PWM2_FB03|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count2\(0));

-- Location: LCCOMB_X21_Y22_N0
\PWM2_FB03|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~0_combout\ = (\PWM2_FB03|var_Dead_Count2\(0) & (\PWM2_FB03|LessThan2~1_combout\ $ (VCC))) # (!\PWM2_FB03|var_Dead_Count2\(0) & (\PWM2_FB03|LessThan2~1_combout\ & VCC))
-- \PWM2_FB03|Add1~1\ = CARRY((\PWM2_FB03|var_Dead_Count2\(0) & \PWM2_FB03|LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|var_Dead_Count2\(0),
	datab => \PWM2_FB03|LessThan2~1_combout\,
	datad => VCC,
	combout => \PWM2_FB03|Add1~0_combout\,
	cout => \PWM2_FB03|Add1~1\);

-- Location: LCCOMB_X21_Y22_N2
\PWM2_FB03|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~2_combout\ = (\PWM2_FB03|var_Dead_Count2\(1) & (!\PWM2_FB03|Add1~1\)) # (!\PWM2_FB03|var_Dead_Count2\(1) & ((\PWM2_FB03|Add1~1\) # (GND)))
-- \PWM2_FB03|Add1~3\ = CARRY((!\PWM2_FB03|Add1~1\) # (!\PWM2_FB03|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM2_FB03|Add1~1\,
	combout => \PWM2_FB03|Add1~2_combout\,
	cout => \PWM2_FB03|Add1~3\);

-- Location: LCCOMB_X21_Y22_N30
\PWM2_FB03|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~19_combout\ = (\PWM2_FB03|Add1~2_combout\ & !\PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB03|Add1~2_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add1~19_combout\);

-- Location: FF_X21_Y22_N31
\PWM2_FB03|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count2\(1));

-- Location: LCCOMB_X21_Y22_N4
\PWM2_FB03|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~4_combout\ = (\PWM2_FB03|var_Dead_Count2\(2) & (\PWM2_FB03|Add1~3\ $ (GND))) # (!\PWM2_FB03|var_Dead_Count2\(2) & (!\PWM2_FB03|Add1~3\ & VCC))
-- \PWM2_FB03|Add1~5\ = CARRY((\PWM2_FB03|var_Dead_Count2\(2) & !\PWM2_FB03|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB03|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM2_FB03|Add1~3\,
	combout => \PWM2_FB03|Add1~4_combout\,
	cout => \PWM2_FB03|Add1~5\);

-- Location: LCCOMB_X21_Y22_N24
\PWM2_FB03|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~20_combout\ = (\PWM2_FB03|Add1~4_combout\ & !\PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB03|Add1~4_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add1~20_combout\);

-- Location: FF_X21_Y22_N25
\PWM2_FB03|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count2\(2));

-- Location: LCCOMB_X21_Y22_N6
\PWM2_FB03|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~6_combout\ = (\PWM2_FB03|var_Dead_Count2\(3) & (!\PWM2_FB03|Add1~5\)) # (!\PWM2_FB03|var_Dead_Count2\(3) & ((\PWM2_FB03|Add1~5\) # (GND)))
-- \PWM2_FB03|Add1~7\ = CARRY((!\PWM2_FB03|Add1~5\) # (!\PWM2_FB03|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB03|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM2_FB03|Add1~5\,
	combout => \PWM2_FB03|Add1~6_combout\,
	cout => \PWM2_FB03|Add1~7\);

-- Location: LCCOMB_X21_Y22_N18
\PWM2_FB03|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~8_combout\ = (\PWM2_FB03|Add1~6_combout\ & !\PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|Add1~6_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add1~8_combout\);

-- Location: FF_X21_Y22_N19
\PWM2_FB03|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count2\(3));

-- Location: LCCOMB_X21_Y22_N8
\PWM2_FB03|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~9_combout\ = (\PWM2_FB03|var_Dead_Count2\(4) & (\PWM2_FB03|Add1~7\ $ (GND))) # (!\PWM2_FB03|var_Dead_Count2\(4) & (!\PWM2_FB03|Add1~7\ & VCC))
-- \PWM2_FB03|Add1~10\ = CARRY((\PWM2_FB03|var_Dead_Count2\(4) & !\PWM2_FB03|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB03|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM2_FB03|Add1~7\,
	combout => \PWM2_FB03|Add1~9_combout\,
	cout => \PWM2_FB03|Add1~10\);

-- Location: LCCOMB_X21_Y22_N14
\PWM2_FB03|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~16_combout\ = (\PWM2_FB03|Add1~9_combout\ & !\PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB03|Add1~9_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add1~16_combout\);

-- Location: FF_X21_Y22_N15
\PWM2_FB03|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count2\(4));

-- Location: LCCOMB_X21_Y22_N10
\PWM2_FB03|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~11_combout\ = (\PWM2_FB03|var_Dead_Count2\(5) & (!\PWM2_FB03|Add1~10\)) # (!\PWM2_FB03|var_Dead_Count2\(5) & ((\PWM2_FB03|Add1~10\) # (GND)))
-- \PWM2_FB03|Add1~12\ = CARRY((!\PWM2_FB03|Add1~10\) # (!\PWM2_FB03|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM2_FB03|Add1~10\,
	combout => \PWM2_FB03|Add1~11_combout\,
	cout => \PWM2_FB03|Add1~12\);

-- Location: LCCOMB_X21_Y22_N16
\PWM2_FB03|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~17_combout\ = (\PWM2_FB03|Add1~11_combout\ & !\PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB03|Add1~11_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add1~17_combout\);

-- Location: FF_X21_Y22_N17
\PWM2_FB03|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count2\(5));

-- Location: LCCOMB_X21_Y22_N12
\PWM2_FB03|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~13_combout\ = \PWM2_FB03|var_Dead_Count2\(6) $ (!\PWM2_FB03|Add1~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|var_Dead_Count2\(6),
	cin => \PWM2_FB03|Add1~12\,
	combout => \PWM2_FB03|Add1~13_combout\);

-- Location: LCCOMB_X21_Y22_N26
\PWM2_FB03|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add1~15_combout\ = (\PWM2_FB03|Add1~13_combout\ & !\PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|Add1~13_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add1~15_combout\);

-- Location: FF_X21_Y22_N27
\PWM2_FB03|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count2\(6));

-- Location: LCCOMB_X21_Y22_N28
\PWM2_FB03|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|LessThan2~0_combout\ = (((!\PWM2_FB03|var_Dead_Count2\(2)) # (!\PWM2_FB03|var_Dead_Count2\(1))) # (!\PWM2_FB03|var_Dead_Count2\(3))) # (!\PWM2_FB03|var_Dead_Count2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|var_Dead_Count2\(0),
	datab => \PWM2_FB03|var_Dead_Count2\(3),
	datac => \PWM2_FB03|var_Dead_Count2\(1),
	datad => \PWM2_FB03|var_Dead_Count2\(2),
	combout => \PWM2_FB03|LessThan2~0_combout\);

-- Location: LCCOMB_X21_Y22_N20
\PWM2_FB03|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|LessThan2~1_combout\ = (!\PWM2_FB03|var_Dead_Count2\(6) & (\PWM2_FB03|LessThan2~0_combout\ & (!\PWM2_FB03|var_Dead_Count2\(4) & !\PWM2_FB03|var_Dead_Count2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|var_Dead_Count2\(6),
	datab => \PWM2_FB03|LessThan2~0_combout\,
	datac => \PWM2_FB03|var_Dead_Count2\(4),
	datad => \PWM2_FB03|var_Dead_Count2\(5),
	combout => \PWM2_FB03|LessThan2~1_combout\);

-- Location: LCCOMB_X24_Y22_N6
\PWM2_FB03|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Equal1~0_combout\ = (\PWM2_FB03|Add1~0_combout\ & (\PWM2_FB03|Add1~2_combout\ & (\PWM2_FB03|Add1~4_combout\ & !\PWM2_FB03|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|Add1~0_combout\,
	datab => \PWM2_FB03|Add1~2_combout\,
	datac => \PWM2_FB03|Add1~4_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y22_N22
\PWM2_FB03|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Equal1~1_combout\ = (!\PWM2_FB03|Add1~16_combout\ & (!\PWM2_FB03|Add1~17_combout\ & (\PWM2_FB03|Add1~8_combout\ & !\PWM2_FB03|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|Add1~16_combout\,
	datab => \PWM2_FB03|Add1~17_combout\,
	datac => \PWM2_FB03|Add1~8_combout\,
	datad => \PWM2_FB03|Add1~15_combout\,
	combout => \PWM2_FB03|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y22_N24
\PWM2_FB03|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|port_PWM02~0_combout\ = (\PWM2_FB03|Equal1~0_combout\ & ((\PWM2_FB03|Equal1~1_combout\) # ((\PWM2_FB03|port_PWM02~q\ & !\PWM2_FB03|comp_out~q\)))) # (!\PWM2_FB03|Equal1~0_combout\ & (((\PWM2_FB03|port_PWM02~q\ & !\PWM2_FB03|comp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|Equal1~0_combout\,
	datab => \PWM2_FB03|Equal1~1_combout\,
	datac => \PWM2_FB03|port_PWM02~q\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|port_PWM02~0_combout\);

-- Location: FF_X24_Y22_N25
\PWM2_FB03|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|port_PWM02~q\);

-- Location: FF_X24_Y27_N27
\PWM2_FB01|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count1\(6));

-- Location: LCCOMB_X24_Y27_N12
\PWM2_FB01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~0_combout\ = (\PWM2_FB01|LessThan1~1_combout\ & (\PWM2_FB01|var_Dead_Count1\(0) $ (VCC))) # (!\PWM2_FB01|LessThan1~1_combout\ & (\PWM2_FB01|var_Dead_Count1\(0) & VCC))
-- \PWM2_FB01|Add0~1\ = CARRY((\PWM2_FB01|LessThan1~1_combout\ & \PWM2_FB01|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|LessThan1~1_combout\,
	datab => \PWM2_FB01|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM2_FB01|Add0~0_combout\,
	cout => \PWM2_FB01|Add0~1\);

-- Location: LCCOMB_X23_Y27_N2
\PWM2_FB01|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~18_combout\ = (\PWM2_FB01|Add0~0_combout\ & \PWM2_FB01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB01|Add0~0_combout\,
	datad => \PWM2_FB01|comp_out~q\,
	combout => \PWM2_FB01|Add0~18_combout\);

-- Location: FF_X23_Y27_N3
\PWM2_FB01|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count1\(0));

-- Location: LCCOMB_X24_Y27_N4
\PWM2_FB01|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|LessThan1~0_combout\ = (((!\PWM2_FB01|var_Dead_Count1\(0)) # (!\PWM2_FB01|var_Dead_Count1\(3))) # (!\PWM2_FB01|var_Dead_Count1\(2))) # (!\PWM2_FB01|var_Dead_Count1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|var_Dead_Count1\(1),
	datab => \PWM2_FB01|var_Dead_Count1\(2),
	datac => \PWM2_FB01|var_Dead_Count1\(3),
	datad => \PWM2_FB01|var_Dead_Count1\(0),
	combout => \PWM2_FB01|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y27_N10
\PWM2_FB01|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|LessThan1~1_combout\ = (!\PWM2_FB01|var_Dead_Count1\(4) & (!\PWM2_FB01|var_Dead_Count1\(5) & (\PWM2_FB01|LessThan1~0_combout\ & !\PWM2_FB01|var_Dead_Count1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|var_Dead_Count1\(4),
	datab => \PWM2_FB01|var_Dead_Count1\(5),
	datac => \PWM2_FB01|LessThan1~0_combout\,
	datad => \PWM2_FB01|var_Dead_Count1\(6),
	combout => \PWM2_FB01|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y27_N14
\PWM2_FB01|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~2_combout\ = (\PWM2_FB01|var_Dead_Count1\(1) & (!\PWM2_FB01|Add0~1\)) # (!\PWM2_FB01|var_Dead_Count1\(1) & ((\PWM2_FB01|Add0~1\) # (GND)))
-- \PWM2_FB01|Add0~3\ = CARRY((!\PWM2_FB01|Add0~1\) # (!\PWM2_FB01|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM2_FB01|Add0~1\,
	combout => \PWM2_FB01|Add0~2_combout\,
	cout => \PWM2_FB01|Add0~3\);

-- Location: LCCOMB_X24_Y26_N6
\PWM2_FB01|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~19_combout\ = (\PWM2_FB01|comp_out~q\ & \PWM2_FB01|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|comp_out~q\,
	datac => \PWM2_FB01|Add0~2_combout\,
	combout => \PWM2_FB01|Add0~19_combout\);

-- Location: FF_X24_Y26_N7
\PWM2_FB01|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count1\(1));

-- Location: LCCOMB_X24_Y27_N16
\PWM2_FB01|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~4_combout\ = (\PWM2_FB01|var_Dead_Count1\(2) & (\PWM2_FB01|Add0~3\ $ (GND))) # (!\PWM2_FB01|var_Dead_Count1\(2) & (!\PWM2_FB01|Add0~3\ & VCC))
-- \PWM2_FB01|Add0~5\ = CARRY((\PWM2_FB01|var_Dead_Count1\(2) & !\PWM2_FB01|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM2_FB01|Add0~3\,
	combout => \PWM2_FB01|Add0~4_combout\,
	cout => \PWM2_FB01|Add0~5\);

-- Location: LCCOMB_X24_Y26_N0
\PWM2_FB01|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~20_combout\ = (\PWM2_FB01|comp_out~q\ & \PWM2_FB01|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|comp_out~q\,
	datac => \PWM2_FB01|Add0~4_combout\,
	combout => \PWM2_FB01|Add0~20_combout\);

-- Location: FF_X24_Y26_N1
\PWM2_FB01|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count1\(2));

-- Location: LCCOMB_X24_Y27_N18
\PWM2_FB01|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~6_combout\ = (\PWM2_FB01|var_Dead_Count1\(3) & (!\PWM2_FB01|Add0~5\)) # (!\PWM2_FB01|var_Dead_Count1\(3) & ((\PWM2_FB01|Add0~5\) # (GND)))
-- \PWM2_FB01|Add0~7\ = CARRY((!\PWM2_FB01|Add0~5\) # (!\PWM2_FB01|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM2_FB01|Add0~5\,
	combout => \PWM2_FB01|Add0~6_combout\,
	cout => \PWM2_FB01|Add0~7\);

-- Location: LCCOMB_X24_Y27_N2
\PWM2_FB01|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~8_combout\ = (\PWM2_FB01|comp_out~q\ & \PWM2_FB01|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB01|comp_out~q\,
	datad => \PWM2_FB01|Add0~6_combout\,
	combout => \PWM2_FB01|Add0~8_combout\);

-- Location: FF_X24_Y27_N3
\PWM2_FB01|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count1\(3));

-- Location: LCCOMB_X24_Y27_N20
\PWM2_FB01|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~9_combout\ = (\PWM2_FB01|var_Dead_Count1\(4) & (\PWM2_FB01|Add0~7\ $ (GND))) # (!\PWM2_FB01|var_Dead_Count1\(4) & (!\PWM2_FB01|Add0~7\ & VCC))
-- \PWM2_FB01|Add0~10\ = CARRY((\PWM2_FB01|var_Dead_Count1\(4) & !\PWM2_FB01|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM2_FB01|Add0~7\,
	combout => \PWM2_FB01|Add0~9_combout\,
	cout => \PWM2_FB01|Add0~10\);

-- Location: LCCOMB_X24_Y27_N30
\PWM2_FB01|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~16_combout\ = (\PWM2_FB01|comp_out~q\ & \PWM2_FB01|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB01|comp_out~q\,
	datad => \PWM2_FB01|Add0~9_combout\,
	combout => \PWM2_FB01|Add0~16_combout\);

-- Location: FF_X24_Y27_N31
\PWM2_FB01|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count1\(4));

-- Location: LCCOMB_X24_Y27_N22
\PWM2_FB01|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~11_combout\ = (\PWM2_FB01|var_Dead_Count1\(5) & (!\PWM2_FB01|Add0~10\)) # (!\PWM2_FB01|var_Dead_Count1\(5) & ((\PWM2_FB01|Add0~10\) # (GND)))
-- \PWM2_FB01|Add0~12\ = CARRY((!\PWM2_FB01|Add0~10\) # (!\PWM2_FB01|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM2_FB01|Add0~10\,
	combout => \PWM2_FB01|Add0~11_combout\,
	cout => \PWM2_FB01|Add0~12\);

-- Location: LCCOMB_X24_Y27_N0
\PWM2_FB01|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~17_combout\ = (\PWM2_FB01|comp_out~q\ & \PWM2_FB01|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB01|comp_out~q\,
	datac => \PWM2_FB01|Add0~11_combout\,
	combout => \PWM2_FB01|Add0~17_combout\);

-- Location: FF_X24_Y27_N1
\PWM2_FB01|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|var_Dead_Count1\(5));

-- Location: LCCOMB_X24_Y27_N24
\PWM2_FB01|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~13_combout\ = \PWM2_FB01|Add0~12\ $ (!\PWM2_FB01|var_Dead_Count1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FB01|var_Dead_Count1\(6),
	cin => \PWM2_FB01|Add0~12\,
	combout => \PWM2_FB01|Add0~13_combout\);

-- Location: LCCOMB_X24_Y27_N26
\PWM2_FB01|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Add0~15_combout\ = (\PWM2_FB01|comp_out~q\ & \PWM2_FB01|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB01|comp_out~q\,
	datad => \PWM2_FB01|Add0~13_combout\,
	combout => \PWM2_FB01|Add0~15_combout\);

-- Location: LCCOMB_X24_Y27_N6
\PWM2_FB01|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Equal0~1_combout\ = (!\PWM2_FB01|Add0~15_combout\ & (!\PWM2_FB01|Add0~17_combout\ & (!\PWM2_FB01|Add0~16_combout\ & \PWM2_FB01|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|Add0~15_combout\,
	datab => \PWM2_FB01|Add0~17_combout\,
	datac => \PWM2_FB01|Add0~16_combout\,
	datad => \PWM2_FB01|Add0~8_combout\,
	combout => \PWM2_FB01|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y27_N28
\PWM2_FB01|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|Equal0~0_combout\ = (\PWM2_FB01|Add0~0_combout\ & (\PWM2_FB01|comp_out~q\ & (\PWM2_FB01|Add0~2_combout\ & \PWM2_FB01|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|Add0~0_combout\,
	datab => \PWM2_FB01|comp_out~q\,
	datac => \PWM2_FB01|Add0~2_combout\,
	datad => \PWM2_FB01|Add0~4_combout\,
	combout => \PWM2_FB01|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y27_N8
\PWM2_FB01|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB01|port_PWM01~0_combout\ = (\PWM2_FB01|Equal0~1_combout\ & ((\PWM2_FB01|Equal0~0_combout\) # ((\PWM2_FB01|comp_out~q\ & \PWM2_FB01|port_PWM01~q\)))) # (!\PWM2_FB01|Equal0~1_combout\ & (\PWM2_FB01|comp_out~q\ & (\PWM2_FB01|port_PWM01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|Equal0~1_combout\,
	datab => \PWM2_FB01|comp_out~q\,
	datac => \PWM2_FB01|port_PWM01~q\,
	datad => \PWM2_FB01|Equal0~0_combout\,
	combout => \PWM2_FB01|port_PWM01~0_combout\);

-- Location: FF_X24_Y27_N9
\PWM2_FB01|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB01|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB01|port_PWM01~q\);

-- Location: LCCOMB_X30_Y33_N0
\PWM2_FB02|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~18_combout\ = (\PWM2_FB02|Add0~0_combout\ & \PWM2_FB02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB02|Add0~0_combout\,
	datad => \PWM2_FB02|comp_out~q\,
	combout => \PWM2_FB02|Add0~18_combout\);

-- Location: FF_X30_Y33_N1
\PWM2_FB02|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count1\(0));

-- Location: LCCOMB_X30_Y33_N14
\PWM2_FB02|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~0_combout\ = (\PWM2_FB02|LessThan1~1_combout\ & (\PWM2_FB02|var_Dead_Count1\(0) $ (VCC))) # (!\PWM2_FB02|LessThan1~1_combout\ & (\PWM2_FB02|var_Dead_Count1\(0) & VCC))
-- \PWM2_FB02|Add0~1\ = CARRY((\PWM2_FB02|LessThan1~1_combout\ & \PWM2_FB02|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|LessThan1~1_combout\,
	datab => \PWM2_FB02|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM2_FB02|Add0~0_combout\,
	cout => \PWM2_FB02|Add0~1\);

-- Location: LCCOMB_X30_Y33_N16
\PWM2_FB02|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~2_combout\ = (\PWM2_FB02|var_Dead_Count1\(1) & (!\PWM2_FB02|Add0~1\)) # (!\PWM2_FB02|var_Dead_Count1\(1) & ((\PWM2_FB02|Add0~1\) # (GND)))
-- \PWM2_FB02|Add0~3\ = CARRY((!\PWM2_FB02|Add0~1\) # (!\PWM2_FB02|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM2_FB02|Add0~1\,
	combout => \PWM2_FB02|Add0~2_combout\,
	cout => \PWM2_FB02|Add0~3\);

-- Location: LCCOMB_X31_Y33_N24
\PWM2_FB02|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~19_combout\ = (\PWM2_FB02|Add0~2_combout\ & \PWM2_FB02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB02|Add0~2_combout\,
	datad => \PWM2_FB02|comp_out~q\,
	combout => \PWM2_FB02|Add0~19_combout\);

-- Location: FF_X31_Y33_N25
\PWM2_FB02|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count1\(1));

-- Location: LCCOMB_X30_Y33_N18
\PWM2_FB02|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~4_combout\ = (\PWM2_FB02|var_Dead_Count1\(2) & (\PWM2_FB02|Add0~3\ $ (GND))) # (!\PWM2_FB02|var_Dead_Count1\(2) & (!\PWM2_FB02|Add0~3\ & VCC))
-- \PWM2_FB02|Add0~5\ = CARRY((\PWM2_FB02|var_Dead_Count1\(2) & !\PWM2_FB02|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM2_FB02|Add0~3\,
	combout => \PWM2_FB02|Add0~4_combout\,
	cout => \PWM2_FB02|Add0~5\);

-- Location: LCCOMB_X30_Y33_N10
\PWM2_FB02|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~20_combout\ = (\PWM2_FB02|comp_out~q\ & \PWM2_FB02|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|comp_out~q\,
	datad => \PWM2_FB02|Add0~4_combout\,
	combout => \PWM2_FB02|Add0~20_combout\);

-- Location: FF_X30_Y33_N11
\PWM2_FB02|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count1\(2));

-- Location: LCCOMB_X30_Y33_N20
\PWM2_FB02|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~6_combout\ = (\PWM2_FB02|var_Dead_Count1\(3) & (!\PWM2_FB02|Add0~5\)) # (!\PWM2_FB02|var_Dead_Count1\(3) & ((\PWM2_FB02|Add0~5\) # (GND)))
-- \PWM2_FB02|Add0~7\ = CARRY((!\PWM2_FB02|Add0~5\) # (!\PWM2_FB02|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM2_FB02|Add0~5\,
	combout => \PWM2_FB02|Add0~6_combout\,
	cout => \PWM2_FB02|Add0~7\);

-- Location: LCCOMB_X30_Y33_N12
\PWM2_FB02|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~8_combout\ = (\PWM2_FB02|comp_out~q\ & \PWM2_FB02|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|comp_out~q\,
	datad => \PWM2_FB02|Add0~6_combout\,
	combout => \PWM2_FB02|Add0~8_combout\);

-- Location: FF_X30_Y33_N13
\PWM2_FB02|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count1\(3));

-- Location: LCCOMB_X30_Y33_N22
\PWM2_FB02|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~9_combout\ = (\PWM2_FB02|var_Dead_Count1\(4) & (\PWM2_FB02|Add0~7\ $ (GND))) # (!\PWM2_FB02|var_Dead_Count1\(4) & (!\PWM2_FB02|Add0~7\ & VCC))
-- \PWM2_FB02|Add0~10\ = CARRY((\PWM2_FB02|var_Dead_Count1\(4) & !\PWM2_FB02|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM2_FB02|Add0~7\,
	combout => \PWM2_FB02|Add0~9_combout\,
	cout => \PWM2_FB02|Add0~10\);

-- Location: LCCOMB_X30_Y33_N8
\PWM2_FB02|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~16_combout\ = (\PWM2_FB02|Add0~9_combout\ & \PWM2_FB02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB02|Add0~9_combout\,
	datad => \PWM2_FB02|comp_out~q\,
	combout => \PWM2_FB02|Add0~16_combout\);

-- Location: FF_X30_Y33_N9
\PWM2_FB02|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count1\(4));

-- Location: LCCOMB_X30_Y33_N24
\PWM2_FB02|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~11_combout\ = (\PWM2_FB02|var_Dead_Count1\(5) & (!\PWM2_FB02|Add0~10\)) # (!\PWM2_FB02|var_Dead_Count1\(5) & ((\PWM2_FB02|Add0~10\) # (GND)))
-- \PWM2_FB02|Add0~12\ = CARRY((!\PWM2_FB02|Add0~10\) # (!\PWM2_FB02|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM2_FB02|Add0~10\,
	combout => \PWM2_FB02|Add0~11_combout\,
	cout => \PWM2_FB02|Add0~12\);

-- Location: LCCOMB_X30_Y33_N2
\PWM2_FB02|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~17_combout\ = (\PWM2_FB02|comp_out~q\ & \PWM2_FB02|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB02|comp_out~q\,
	datad => \PWM2_FB02|Add0~11_combout\,
	combout => \PWM2_FB02|Add0~17_combout\);

-- Location: FF_X30_Y33_N3
\PWM2_FB02|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count1\(5));

-- Location: LCCOMB_X30_Y33_N26
\PWM2_FB02|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~13_combout\ = \PWM2_FB02|Add0~12\ $ (!\PWM2_FB02|var_Dead_Count1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FB02|var_Dead_Count1\(6),
	cin => \PWM2_FB02|Add0~12\,
	combout => \PWM2_FB02|Add0~13_combout\);

-- Location: LCCOMB_X30_Y33_N28
\PWM2_FB02|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Add0~15_combout\ = (\PWM2_FB02|Add0~13_combout\ & \PWM2_FB02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB02|Add0~13_combout\,
	datad => \PWM2_FB02|comp_out~q\,
	combout => \PWM2_FB02|Add0~15_combout\);

-- Location: FF_X30_Y33_N29
\PWM2_FB02|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|var_Dead_Count1\(6));

-- Location: LCCOMB_X30_Y33_N6
\PWM2_FB02|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|LessThan1~0_combout\ = (((!\PWM2_FB02|var_Dead_Count1\(1)) # (!\PWM2_FB02|var_Dead_Count1\(3))) # (!\PWM2_FB02|var_Dead_Count1\(0))) # (!\PWM2_FB02|var_Dead_Count1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|var_Dead_Count1\(2),
	datab => \PWM2_FB02|var_Dead_Count1\(0),
	datac => \PWM2_FB02|var_Dead_Count1\(3),
	datad => \PWM2_FB02|var_Dead_Count1\(1),
	combout => \PWM2_FB02|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y33_N4
\PWM2_FB02|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|LessThan1~1_combout\ = (!\PWM2_FB02|var_Dead_Count1\(5) & (!\PWM2_FB02|var_Dead_Count1\(6) & (!\PWM2_FB02|var_Dead_Count1\(4) & \PWM2_FB02|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|var_Dead_Count1\(5),
	datab => \PWM2_FB02|var_Dead_Count1\(6),
	datac => \PWM2_FB02|var_Dead_Count1\(4),
	datad => \PWM2_FB02|LessThan1~0_combout\,
	combout => \PWM2_FB02|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y33_N10
\PWM2_FB02|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Equal0~0_combout\ = (\PWM2_FB02|Add0~0_combout\ & (\PWM2_FB02|comp_out~q\ & (\PWM2_FB02|Add0~2_combout\ & \PWM2_FB02|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|Add0~0_combout\,
	datab => \PWM2_FB02|comp_out~q\,
	datac => \PWM2_FB02|Add0~2_combout\,
	datad => \PWM2_FB02|Add0~4_combout\,
	combout => \PWM2_FB02|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y33_N30
\PWM2_FB02|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|Equal0~1_combout\ = (\PWM2_FB02|Add0~8_combout\ & (!\PWM2_FB02|Add0~17_combout\ & (!\PWM2_FB02|Add0~15_combout\ & !\PWM2_FB02|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|Add0~8_combout\,
	datab => \PWM2_FB02|Add0~17_combout\,
	datac => \PWM2_FB02|Add0~15_combout\,
	datad => \PWM2_FB02|Add0~16_combout\,
	combout => \PWM2_FB02|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y33_N2
\PWM2_FB02|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB02|port_PWM01~0_combout\ = (\PWM2_FB02|Equal0~0_combout\ & ((\PWM2_FB02|Equal0~1_combout\) # ((\PWM2_FB02|comp_out~q\ & \PWM2_FB02|port_PWM01~q\)))) # (!\PWM2_FB02|Equal0~0_combout\ & (\PWM2_FB02|comp_out~q\ & (\PWM2_FB02|port_PWM01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|Equal0~0_combout\,
	datab => \PWM2_FB02|comp_out~q\,
	datac => \PWM2_FB02|port_PWM01~q\,
	datad => \PWM2_FB02|Equal0~1_combout\,
	combout => \PWM2_FB02|port_PWM01~0_combout\);

-- Location: FF_X31_Y33_N3
\PWM2_FB02|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB02|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB02|port_PWM01~q\);

-- Location: LCCOMB_X24_Y22_N0
\PWM2_FB03|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~18_combout\ = (\PWM2_FB03|Add0~0_combout\ & \PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|Add0~0_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add0~18_combout\);

-- Location: FF_X24_Y22_N1
\PWM2_FB03|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count1\(0));

-- Location: LCCOMB_X23_Y22_N8
\PWM2_FB03|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~0_combout\ = (\PWM2_FB03|LessThan1~1_combout\ & (\PWM2_FB03|var_Dead_Count1\(0) $ (VCC))) # (!\PWM2_FB03|LessThan1~1_combout\ & (\PWM2_FB03|var_Dead_Count1\(0) & VCC))
-- \PWM2_FB03|Add0~1\ = CARRY((\PWM2_FB03|LessThan1~1_combout\ & \PWM2_FB03|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|LessThan1~1_combout\,
	datab => \PWM2_FB03|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM2_FB03|Add0~0_combout\,
	cout => \PWM2_FB03|Add0~1\);

-- Location: LCCOMB_X23_Y22_N10
\PWM2_FB03|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~2_combout\ = (\PWM2_FB03|var_Dead_Count1\(1) & (!\PWM2_FB03|Add0~1\)) # (!\PWM2_FB03|var_Dead_Count1\(1) & ((\PWM2_FB03|Add0~1\) # (GND)))
-- \PWM2_FB03|Add0~3\ = CARRY((!\PWM2_FB03|Add0~1\) # (!\PWM2_FB03|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB03|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM2_FB03|Add0~1\,
	combout => \PWM2_FB03|Add0~2_combout\,
	cout => \PWM2_FB03|Add0~3\);

-- Location: LCCOMB_X23_Y22_N24
\PWM2_FB03|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~19_combout\ = (\PWM2_FB03|Add0~2_combout\ & \PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|Add0~2_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add0~19_combout\);

-- Location: FF_X23_Y22_N25
\PWM2_FB03|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count1\(1));

-- Location: LCCOMB_X23_Y22_N12
\PWM2_FB03|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~4_combout\ = (\PWM2_FB03|var_Dead_Count1\(2) & (\PWM2_FB03|Add0~3\ $ (GND))) # (!\PWM2_FB03|var_Dead_Count1\(2) & (!\PWM2_FB03|Add0~3\ & VCC))
-- \PWM2_FB03|Add0~5\ = CARRY((\PWM2_FB03|var_Dead_Count1\(2) & !\PWM2_FB03|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB03|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM2_FB03|Add0~3\,
	combout => \PWM2_FB03|Add0~4_combout\,
	cout => \PWM2_FB03|Add0~5\);

-- Location: LCCOMB_X23_Y22_N2
\PWM2_FB03|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~20_combout\ = (\PWM2_FB03|Add0~4_combout\ & \PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB03|Add0~4_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add0~20_combout\);

-- Location: FF_X23_Y22_N3
\PWM2_FB03|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count1\(2));

-- Location: LCCOMB_X23_Y22_N14
\PWM2_FB03|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~6_combout\ = (\PWM2_FB03|var_Dead_Count1\(3) & (!\PWM2_FB03|Add0~5\)) # (!\PWM2_FB03|var_Dead_Count1\(3) & ((\PWM2_FB03|Add0~5\) # (GND)))
-- \PWM2_FB03|Add0~7\ = CARRY((!\PWM2_FB03|Add0~5\) # (!\PWM2_FB03|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB03|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM2_FB03|Add0~5\,
	combout => \PWM2_FB03|Add0~6_combout\,
	cout => \PWM2_FB03|Add0~7\);

-- Location: LCCOMB_X23_Y22_N4
\PWM2_FB03|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~8_combout\ = (\PWM2_FB03|Add0~6_combout\ & \PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FB03|Add0~6_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add0~8_combout\);

-- Location: FF_X23_Y22_N5
\PWM2_FB03|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count1\(3));

-- Location: LCCOMB_X23_Y22_N16
\PWM2_FB03|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~9_combout\ = (\PWM2_FB03|var_Dead_Count1\(4) & (\PWM2_FB03|Add0~7\ $ (GND))) # (!\PWM2_FB03|var_Dead_Count1\(4) & (!\PWM2_FB03|Add0~7\ & VCC))
-- \PWM2_FB03|Add0~10\ = CARRY((\PWM2_FB03|var_Dead_Count1\(4) & !\PWM2_FB03|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM2_FB03|Add0~7\,
	combout => \PWM2_FB03|Add0~9_combout\,
	cout => \PWM2_FB03|Add0~10\);

-- Location: LCCOMB_X23_Y22_N30
\PWM2_FB03|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~16_combout\ = (\PWM2_FB03|Add0~9_combout\ & \PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB03|Add0~9_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add0~16_combout\);

-- Location: FF_X23_Y22_N31
\PWM2_FB03|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count1\(4));

-- Location: LCCOMB_X23_Y22_N6
\PWM2_FB03|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|LessThan1~0_combout\ = (((!\PWM2_FB03|var_Dead_Count1\(2)) # (!\PWM2_FB03|var_Dead_Count1\(3))) # (!\PWM2_FB03|var_Dead_Count1\(0))) # (!\PWM2_FB03|var_Dead_Count1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|var_Dead_Count1\(1),
	datab => \PWM2_FB03|var_Dead_Count1\(0),
	datac => \PWM2_FB03|var_Dead_Count1\(3),
	datad => \PWM2_FB03|var_Dead_Count1\(2),
	combout => \PWM2_FB03|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y22_N18
\PWM2_FB03|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~11_combout\ = (\PWM2_FB03|var_Dead_Count1\(5) & (!\PWM2_FB03|Add0~10\)) # (!\PWM2_FB03|var_Dead_Count1\(5) & ((\PWM2_FB03|Add0~10\) # (GND)))
-- \PWM2_FB03|Add0~12\ = CARRY((!\PWM2_FB03|Add0~10\) # (!\PWM2_FB03|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM2_FB03|Add0~10\,
	combout => \PWM2_FB03|Add0~11_combout\,
	cout => \PWM2_FB03|Add0~12\);

-- Location: LCCOMB_X23_Y22_N0
\PWM2_FB03|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~17_combout\ = (\PWM2_FB03|Add0~11_combout\ & \PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB03|Add0~11_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add0~17_combout\);

-- Location: FF_X23_Y22_N1
\PWM2_FB03|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count1\(5));

-- Location: LCCOMB_X23_Y22_N20
\PWM2_FB03|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~13_combout\ = \PWM2_FB03|Add0~12\ $ (!\PWM2_FB03|var_Dead_Count1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FB03|var_Dead_Count1\(6),
	cin => \PWM2_FB03|Add0~12\,
	combout => \PWM2_FB03|Add0~13_combout\);

-- Location: LCCOMB_X23_Y22_N26
\PWM2_FB03|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Add0~15_combout\ = (\PWM2_FB03|Add0~13_combout\ & \PWM2_FB03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FB03|Add0~13_combout\,
	datad => \PWM2_FB03|comp_out~q\,
	combout => \PWM2_FB03|Add0~15_combout\);

-- Location: FF_X23_Y22_N27
\PWM2_FB03|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|var_Dead_Count1\(6));

-- Location: LCCOMB_X23_Y22_N28
\PWM2_FB03|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|LessThan1~1_combout\ = (!\PWM2_FB03|var_Dead_Count1\(4) & (\PWM2_FB03|LessThan1~0_combout\ & (!\PWM2_FB03|var_Dead_Count1\(5) & !\PWM2_FB03|var_Dead_Count1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|var_Dead_Count1\(4),
	datab => \PWM2_FB03|LessThan1~0_combout\,
	datac => \PWM2_FB03|var_Dead_Count1\(5),
	datad => \PWM2_FB03|var_Dead_Count1\(6),
	combout => \PWM2_FB03|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y22_N10
\PWM2_FB03|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Equal0~0_combout\ = (\PWM2_FB03|Add0~0_combout\ & (\PWM2_FB03|comp_out~q\ & (\PWM2_FB03|Add0~4_combout\ & \PWM2_FB03|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|Add0~0_combout\,
	datab => \PWM2_FB03|comp_out~q\,
	datac => \PWM2_FB03|Add0~4_combout\,
	datad => \PWM2_FB03|Add0~2_combout\,
	combout => \PWM2_FB03|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y22_N22
\PWM2_FB03|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|Equal0~1_combout\ = (!\PWM2_FB03|Add0~15_combout\ & (!\PWM2_FB03|Add0~16_combout\ & (\PWM2_FB03|Add0~8_combout\ & !\PWM2_FB03|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|Add0~15_combout\,
	datab => \PWM2_FB03|Add0~16_combout\,
	datac => \PWM2_FB03|Add0~8_combout\,
	datad => \PWM2_FB03|Add0~17_combout\,
	combout => \PWM2_FB03|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y22_N2
\PWM2_FB03|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FB03|port_PWM01~0_combout\ = (\PWM2_FB03|Equal0~0_combout\ & ((\PWM2_FB03|Equal0~1_combout\) # ((\PWM2_FB03|comp_out~q\ & \PWM2_FB03|port_PWM01~q\)))) # (!\PWM2_FB03|Equal0~0_combout\ & (\PWM2_FB03|comp_out~q\ & (\PWM2_FB03|port_PWM01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB03|Equal0~0_combout\,
	datab => \PWM2_FB03|comp_out~q\,
	datac => \PWM2_FB03|port_PWM01~q\,
	datad => \PWM2_FB03|Equal0~1_combout\,
	combout => \PWM2_FB03|port_PWM01~0_combout\);

-- Location: FF_X24_Y22_N3
\PWM2_FB03|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FB03|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FB03|port_PWM01~q\);

-- Location: FF_X34_Y23_N13
\PWM1_FC01|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count1\(3));

-- Location: LCCOMB_X32_Y23_N14
\PWM1_FC01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|LessThan0~0_combout\ = (((!\ucr1|c_int\(1)) # (!\ucr5|c_int\(0))) # (!\ucr1|c_int\(3))) # (!\ucr1|c_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(2),
	datab => \ucr1|c_int\(3),
	datac => \ucr5|c_int\(0),
	datad => \ucr1|c_int\(1),
	combout => \PWM1_FC01|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y23_N24
\PWM1_FC01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|LessThan0~1_combout\ = (((!\ucr1|c_int\(6)) # (!\ucr1|c_int\(7))) # (!\ucr1|c_int\(5))) # (!\ucr1|c_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(4),
	datab => \ucr1|c_int\(5),
	datac => \ucr1|c_int\(7),
	datad => \ucr1|c_int\(6),
	combout => \PWM1_FC01|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y23_N10
\PWM1_FC01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|LessThan0~2_combout\ = ((!\ucr1|c_int\(8) & ((\PWM1_FC01|LessThan0~0_combout\) # (\PWM1_FC01|LessThan0~1_combout\)))) # (!\ucr1|c_int\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr1|c_int\(9),
	datab => \PWM1_FC01|LessThan0~0_combout\,
	datac => \ucr1|c_int\(8),
	datad => \PWM1_FC01|LessThan0~1_combout\,
	combout => \PWM1_FC01|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y23_N20
\PWM1_FC01|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|LessThan0~3_combout\ = ((\ucr1|c_int\(15)) # ((\ucr1|c_int\(10)) # (!\PWM1_FA01|LessThan0~0_combout\))) # (!\PWM1_FC01|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|LessThan0~2_combout\,
	datab => \ucr1|c_int\(15),
	datac => \PWM1_FA01|LessThan0~0_combout\,
	datad => \ucr1|c_int\(10),
	combout => \PWM1_FC01|LessThan0~3_combout\);

-- Location: FF_X32_Y23_N21
\PWM1_FC01|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|comp_out~q\);

-- Location: LCCOMB_X34_Y23_N16
\PWM1_FC01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~0_combout\ = (\PWM1_FC01|LessThan1~1_combout\ & (\PWM1_FC01|var_Dead_Count1\(0) $ (VCC))) # (!\PWM1_FC01|LessThan1~1_combout\ & (\PWM1_FC01|var_Dead_Count1\(0) & VCC))
-- \PWM1_FC01|Add0~1\ = CARRY((\PWM1_FC01|LessThan1~1_combout\ & \PWM1_FC01|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|LessThan1~1_combout\,
	datab => \PWM1_FC01|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM1_FC01|Add0~0_combout\,
	cout => \PWM1_FC01|Add0~1\);

-- Location: LCCOMB_X32_Y23_N6
\PWM1_FC01|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~18_combout\ = (\PWM1_FC01|comp_out~q\ & \PWM1_FC01|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|comp_out~q\,
	datad => \PWM1_FC01|Add0~0_combout\,
	combout => \PWM1_FC01|Add0~18_combout\);

-- Location: FF_X32_Y23_N7
\PWM1_FC01|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count1\(0));

-- Location: LCCOMB_X34_Y23_N6
\PWM1_FC01|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|LessThan1~0_combout\ = (((!\PWM1_FC01|var_Dead_Count1\(2)) # (!\PWM1_FC01|var_Dead_Count1\(0))) # (!\PWM1_FC01|var_Dead_Count1\(1))) # (!\PWM1_FC01|var_Dead_Count1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|var_Dead_Count1\(3),
	datab => \PWM1_FC01|var_Dead_Count1\(1),
	datac => \PWM1_FC01|var_Dead_Count1\(0),
	datad => \PWM1_FC01|var_Dead_Count1\(2),
	combout => \PWM1_FC01|LessThan1~0_combout\);

-- Location: LCCOMB_X34_Y23_N22
\PWM1_FC01|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~6_combout\ = (\PWM1_FC01|var_Dead_Count1\(3) & (!\PWM1_FC01|Add0~5\)) # (!\PWM1_FC01|var_Dead_Count1\(3) & ((\PWM1_FC01|Add0~5\) # (GND)))
-- \PWM1_FC01|Add0~7\ = CARRY((!\PWM1_FC01|Add0~5\) # (!\PWM1_FC01|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM1_FC01|Add0~5\,
	combout => \PWM1_FC01|Add0~6_combout\,
	cout => \PWM1_FC01|Add0~7\);

-- Location: LCCOMB_X34_Y23_N24
\PWM1_FC01|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~9_combout\ = (\PWM1_FC01|var_Dead_Count1\(4) & (\PWM1_FC01|Add0~7\ $ (GND))) # (!\PWM1_FC01|var_Dead_Count1\(4) & (!\PWM1_FC01|Add0~7\ & VCC))
-- \PWM1_FC01|Add0~10\ = CARRY((\PWM1_FC01|var_Dead_Count1\(4) & !\PWM1_FC01|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM1_FC01|Add0~7\,
	combout => \PWM1_FC01|Add0~9_combout\,
	cout => \PWM1_FC01|Add0~10\);

-- Location: LCCOMB_X34_Y23_N8
\PWM1_FC01|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~16_combout\ = (\PWM1_FC01|comp_out~q\ & \PWM1_FC01|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|comp_out~q\,
	datad => \PWM1_FC01|Add0~9_combout\,
	combout => \PWM1_FC01|Add0~16_combout\);

-- Location: FF_X34_Y23_N9
\PWM1_FC01|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count1\(4));

-- Location: LCCOMB_X34_Y23_N26
\PWM1_FC01|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~11_combout\ = (\PWM1_FC01|var_Dead_Count1\(5) & (!\PWM1_FC01|Add0~10\)) # (!\PWM1_FC01|var_Dead_Count1\(5) & ((\PWM1_FC01|Add0~10\) # (GND)))
-- \PWM1_FC01|Add0~12\ = CARRY((!\PWM1_FC01|Add0~10\) # (!\PWM1_FC01|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM1_FC01|Add0~10\,
	combout => \PWM1_FC01|Add0~11_combout\,
	cout => \PWM1_FC01|Add0~12\);

-- Location: LCCOMB_X34_Y23_N2
\PWM1_FC01|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~17_combout\ = (\PWM1_FC01|Add0~11_combout\ & \PWM1_FC01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC01|Add0~11_combout\,
	datad => \PWM1_FC01|comp_out~q\,
	combout => \PWM1_FC01|Add0~17_combout\);

-- Location: FF_X34_Y23_N3
\PWM1_FC01|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count1\(5));

-- Location: LCCOMB_X34_Y23_N28
\PWM1_FC01|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~13_combout\ = \PWM1_FC01|var_Dead_Count1\(6) $ (!\PWM1_FC01|Add0~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|var_Dead_Count1\(6),
	cin => \PWM1_FC01|Add0~12\,
	combout => \PWM1_FC01|Add0~13_combout\);

-- Location: LCCOMB_X34_Y23_N4
\PWM1_FC01|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~15_combout\ = (\PWM1_FC01|comp_out~q\ & \PWM1_FC01|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|comp_out~q\,
	datad => \PWM1_FC01|Add0~13_combout\,
	combout => \PWM1_FC01|Add0~15_combout\);

-- Location: FF_X34_Y23_N5
\PWM1_FC01|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count1\(6));

-- Location: LCCOMB_X34_Y23_N30
\PWM1_FC01|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|LessThan1~1_combout\ = (\PWM1_FC01|LessThan1~0_combout\ & (!\PWM1_FC01|var_Dead_Count1\(5) & (!\PWM1_FC01|var_Dead_Count1\(6) & !\PWM1_FC01|var_Dead_Count1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|LessThan1~0_combout\,
	datab => \PWM1_FC01|var_Dead_Count1\(5),
	datac => \PWM1_FC01|var_Dead_Count1\(6),
	datad => \PWM1_FC01|var_Dead_Count1\(4),
	combout => \PWM1_FC01|LessThan1~1_combout\);

-- Location: LCCOMB_X34_Y23_N18
\PWM1_FC01|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~2_combout\ = (\PWM1_FC01|var_Dead_Count1\(1) & (!\PWM1_FC01|Add0~1\)) # (!\PWM1_FC01|var_Dead_Count1\(1) & ((\PWM1_FC01|Add0~1\) # (GND)))
-- \PWM1_FC01|Add0~3\ = CARRY((!\PWM1_FC01|Add0~1\) # (!\PWM1_FC01|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM1_FC01|Add0~1\,
	combout => \PWM1_FC01|Add0~2_combout\,
	cout => \PWM1_FC01|Add0~3\);

-- Location: LCCOMB_X34_Y23_N0
\PWM1_FC01|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~19_combout\ = (\PWM1_FC01|comp_out~q\ & \PWM1_FC01|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|comp_out~q\,
	datad => \PWM1_FC01|Add0~2_combout\,
	combout => \PWM1_FC01|Add0~19_combout\);

-- Location: FF_X34_Y23_N1
\PWM1_FC01|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count1\(1));

-- Location: LCCOMB_X34_Y23_N20
\PWM1_FC01|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~4_combout\ = (\PWM1_FC01|var_Dead_Count1\(2) & (\PWM1_FC01|Add0~3\ $ (GND))) # (!\PWM1_FC01|var_Dead_Count1\(2) & (!\PWM1_FC01|Add0~3\ & VCC))
-- \PWM1_FC01|Add0~5\ = CARRY((\PWM1_FC01|var_Dead_Count1\(2) & !\PWM1_FC01|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM1_FC01|Add0~3\,
	combout => \PWM1_FC01|Add0~4_combout\,
	cout => \PWM1_FC01|Add0~5\);

-- Location: LCCOMB_X34_Y23_N10
\PWM1_FC01|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~20_combout\ = (\PWM1_FC01|comp_out~q\ & \PWM1_FC01|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|comp_out~q\,
	datad => \PWM1_FC01|Add0~4_combout\,
	combout => \PWM1_FC01|Add0~20_combout\);

-- Location: FF_X34_Y23_N11
\PWM1_FC01|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count1\(2));

-- Location: LCCOMB_X34_Y23_N12
\PWM1_FC01|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add0~8_combout\ = (\PWM1_FC01|Add0~6_combout\ & \PWM1_FC01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC01|Add0~6_combout\,
	datad => \PWM1_FC01|comp_out~q\,
	combout => \PWM1_FC01|Add0~8_combout\);

-- Location: LCCOMB_X34_Y23_N14
\PWM1_FC01|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Equal0~1_combout\ = (\PWM1_FC01|Add0~8_combout\ & (!\PWM1_FC01|Add0~15_combout\ & (!\PWM1_FC01|Add0~16_combout\ & !\PWM1_FC01|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|Add0~8_combout\,
	datab => \PWM1_FC01|Add0~15_combout\,
	datac => \PWM1_FC01|Add0~16_combout\,
	datad => \PWM1_FC01|Add0~17_combout\,
	combout => \PWM1_FC01|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y23_N0
\PWM1_FC01|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Equal0~0_combout\ = (\PWM1_FC01|Add0~0_combout\ & (\PWM1_FC01|Add0~2_combout\ & (\PWM1_FC01|Add0~4_combout\ & \PWM1_FC01|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|Add0~0_combout\,
	datab => \PWM1_FC01|Add0~2_combout\,
	datac => \PWM1_FC01|Add0~4_combout\,
	datad => \PWM1_FC01|comp_out~q\,
	combout => \PWM1_FC01|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y23_N16
\PWM1_FC01|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|port_PWM01~0_combout\ = (\PWM1_FC01|Equal0~1_combout\ & ((\PWM1_FC01|Equal0~0_combout\) # ((\PWM1_FC01|port_PWM01~q\ & \PWM1_FC01|comp_out~q\)))) # (!\PWM1_FC01|Equal0~1_combout\ & (((\PWM1_FC01|port_PWM01~q\ & \PWM1_FC01|comp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|Equal0~1_combout\,
	datab => \PWM1_FC01|Equal0~0_combout\,
	datac => \PWM1_FC01|port_PWM01~q\,
	datad => \PWM1_FC01|comp_out~q\,
	combout => \PWM1_FC01|port_PWM01~0_combout\);

-- Location: FF_X32_Y23_N17
\PWM1_FC01|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|port_PWM01~q\);

-- Location: LCCOMB_X28_Y20_N22
\PWM1_FC02|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|LessThan0~0_combout\ = (\ucr3|c_int\(2)) # ((\ucr3|c_int\(3)) # ((\ucr6|c_int\(0)) # (!\ucr3|c_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(2),
	datab => \ucr3|c_int\(3),
	datac => \ucr3|c_int\(1),
	datad => \ucr6|c_int\(0),
	combout => \PWM1_FC02|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y20_N16
\PWM1_FC02|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|LessThan0~1_combout\ = (\ucr3|c_int\(5)) # ((\ucr3|c_int\(4)) # ((\ucr3|c_int\(7)) # (!\ucr3|c_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(5),
	datab => \ucr3|c_int\(4),
	datac => \ucr3|c_int\(6),
	datad => \ucr3|c_int\(7),
	combout => \PWM1_FC02|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y20_N10
\PWM1_FC02|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|LessThan0~2_combout\ = ((\ucr3|c_int\(8) & ((\PWM1_FC02|LessThan0~0_combout\) # (\PWM1_FC02|LessThan0~1_combout\)))) # (!\ucr3|c_int\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|LessThan0~0_combout\,
	datab => \ucr3|c_int\(9),
	datac => \ucr3|c_int\(8),
	datad => \PWM1_FC02|LessThan0~1_combout\,
	combout => \PWM1_FC02|LessThan0~2_combout\);

-- Location: LCCOMB_X28_Y20_N20
\PWM1_FC02|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|LessThan0~3_combout\ = (\ucr3|c_int\(11)) # (((\ucr3|c_int\(10)) # (!\PWM1_FC02|LessThan0~2_combout\)) # (!\PWM1_FB02|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr3|c_int\(11),
	datab => \PWM1_FB02|LessThan0~0_combout\,
	datac => \ucr3|c_int\(10),
	datad => \PWM1_FC02|LessThan0~2_combout\,
	combout => \PWM1_FC02|LessThan0~3_combout\);

-- Location: FF_X28_Y20_N21
\PWM1_FC02|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|comp_out~q\);

-- Location: FF_X27_Y20_N11
\PWM1_FC02|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count1\(5));

-- Location: LCCOMB_X27_Y20_N6
\PWM1_FC02|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|LessThan1~0_combout\ = (((!\PWM1_FC02|var_Dead_Count1\(1)) # (!\PWM1_FC02|var_Dead_Count1\(3))) # (!\PWM1_FC02|var_Dead_Count1\(2))) # (!\PWM1_FC02|var_Dead_Count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|var_Dead_Count1\(0),
	datab => \PWM1_FC02|var_Dead_Count1\(2),
	datac => \PWM1_FC02|var_Dead_Count1\(3),
	datad => \PWM1_FC02|var_Dead_Count1\(1),
	combout => \PWM1_FC02|LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y20_N26
\PWM1_FC02|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~11_combout\ = (\PWM1_FC02|var_Dead_Count1\(5) & (!\PWM1_FC02|Add0~10\)) # (!\PWM1_FC02|var_Dead_Count1\(5) & ((\PWM1_FC02|Add0~10\) # (GND)))
-- \PWM1_FC02|Add0~12\ = CARRY((!\PWM1_FC02|Add0~10\) # (!\PWM1_FC02|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC02|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM1_FC02|Add0~10\,
	combout => \PWM1_FC02|Add0~11_combout\,
	cout => \PWM1_FC02|Add0~12\);

-- Location: LCCOMB_X27_Y20_N28
\PWM1_FC02|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~13_combout\ = \PWM1_FC02|Add0~12\ $ (!\PWM1_FC02|var_Dead_Count1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM1_FC02|var_Dead_Count1\(6),
	cin => \PWM1_FC02|Add0~12\,
	combout => \PWM1_FC02|Add0~13_combout\);

-- Location: LCCOMB_X27_Y20_N12
\PWM1_FC02|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~15_combout\ = (\PWM1_FC02|comp_out~q\ & \PWM1_FC02|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC02|comp_out~q\,
	datad => \PWM1_FC02|Add0~13_combout\,
	combout => \PWM1_FC02|Add0~15_combout\);

-- Location: FF_X27_Y20_N13
\PWM1_FC02|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count1\(6));

-- Location: LCCOMB_X27_Y20_N14
\PWM1_FC02|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|LessThan1~1_combout\ = (\PWM1_FC02|LessThan1~0_combout\ & (!\PWM1_FC02|var_Dead_Count1\(4) & (!\PWM1_FC02|var_Dead_Count1\(5) & !\PWM1_FC02|var_Dead_Count1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|LessThan1~0_combout\,
	datab => \PWM1_FC02|var_Dead_Count1\(4),
	datac => \PWM1_FC02|var_Dead_Count1\(5),
	datad => \PWM1_FC02|var_Dead_Count1\(6),
	combout => \PWM1_FC02|LessThan1~1_combout\);

-- Location: LCCOMB_X27_Y20_N16
\PWM1_FC02|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~0_combout\ = (\PWM1_FC02|var_Dead_Count1\(0) & (\PWM1_FC02|LessThan1~1_combout\ $ (VCC))) # (!\PWM1_FC02|var_Dead_Count1\(0) & (\PWM1_FC02|LessThan1~1_combout\ & VCC))
-- \PWM1_FC02|Add0~1\ = CARRY((\PWM1_FC02|var_Dead_Count1\(0) & \PWM1_FC02|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|var_Dead_Count1\(0),
	datab => \PWM1_FC02|LessThan1~1_combout\,
	datad => VCC,
	combout => \PWM1_FC02|Add0~0_combout\,
	cout => \PWM1_FC02|Add0~1\);

-- Location: LCCOMB_X28_Y20_N6
\PWM1_FC02|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~18_combout\ = (\PWM1_FC02|Add0~0_combout\ & \PWM1_FC02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC02|Add0~0_combout\,
	datad => \PWM1_FC02|comp_out~q\,
	combout => \PWM1_FC02|Add0~18_combout\);

-- Location: FF_X28_Y20_N7
\PWM1_FC02|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count1\(0));

-- Location: LCCOMB_X27_Y20_N18
\PWM1_FC02|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~2_combout\ = (\PWM1_FC02|var_Dead_Count1\(1) & (!\PWM1_FC02|Add0~1\)) # (!\PWM1_FC02|var_Dead_Count1\(1) & ((\PWM1_FC02|Add0~1\) # (GND)))
-- \PWM1_FC02|Add0~3\ = CARRY((!\PWM1_FC02|Add0~1\) # (!\PWM1_FC02|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM1_FC02|Add0~1\,
	combout => \PWM1_FC02|Add0~2_combout\,
	cout => \PWM1_FC02|Add0~3\);

-- Location: LCCOMB_X27_Y20_N8
\PWM1_FC02|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~19_combout\ = (\PWM1_FC02|comp_out~q\ & \PWM1_FC02|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC02|comp_out~q\,
	datad => \PWM1_FC02|Add0~2_combout\,
	combout => \PWM1_FC02|Add0~19_combout\);

-- Location: FF_X27_Y20_N9
\PWM1_FC02|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count1\(1));

-- Location: LCCOMB_X27_Y20_N20
\PWM1_FC02|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~4_combout\ = (\PWM1_FC02|var_Dead_Count1\(2) & (\PWM1_FC02|Add0~3\ $ (GND))) # (!\PWM1_FC02|var_Dead_Count1\(2) & (!\PWM1_FC02|Add0~3\ & VCC))
-- \PWM1_FC02|Add0~5\ = CARRY((\PWM1_FC02|var_Dead_Count1\(2) & !\PWM1_FC02|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC02|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM1_FC02|Add0~3\,
	combout => \PWM1_FC02|Add0~4_combout\,
	cout => \PWM1_FC02|Add0~5\);

-- Location: LCCOMB_X27_Y20_N2
\PWM1_FC02|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~20_combout\ = (\PWM1_FC02|comp_out~q\ & \PWM1_FC02|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC02|comp_out~q\,
	datad => \PWM1_FC02|Add0~4_combout\,
	combout => \PWM1_FC02|Add0~20_combout\);

-- Location: FF_X27_Y20_N3
\PWM1_FC02|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count1\(2));

-- Location: LCCOMB_X27_Y20_N22
\PWM1_FC02|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~6_combout\ = (\PWM1_FC02|var_Dead_Count1\(3) & (!\PWM1_FC02|Add0~5\)) # (!\PWM1_FC02|var_Dead_Count1\(3) & ((\PWM1_FC02|Add0~5\) # (GND)))
-- \PWM1_FC02|Add0~7\ = CARRY((!\PWM1_FC02|Add0~5\) # (!\PWM1_FC02|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC02|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM1_FC02|Add0~5\,
	combout => \PWM1_FC02|Add0~6_combout\,
	cout => \PWM1_FC02|Add0~7\);

-- Location: LCCOMB_X27_Y20_N4
\PWM1_FC02|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~8_combout\ = (\PWM1_FC02|comp_out~q\ & \PWM1_FC02|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|comp_out~q\,
	datac => \PWM1_FC02|Add0~6_combout\,
	combout => \PWM1_FC02|Add0~8_combout\);

-- Location: FF_X27_Y20_N5
\PWM1_FC02|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count1\(3));

-- Location: LCCOMB_X27_Y20_N24
\PWM1_FC02|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~9_combout\ = (\PWM1_FC02|var_Dead_Count1\(4) & (\PWM1_FC02|Add0~7\ $ (GND))) # (!\PWM1_FC02|var_Dead_Count1\(4) & (!\PWM1_FC02|Add0~7\ & VCC))
-- \PWM1_FC02|Add0~10\ = CARRY((\PWM1_FC02|var_Dead_Count1\(4) & !\PWM1_FC02|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC02|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM1_FC02|Add0~7\,
	combout => \PWM1_FC02|Add0~9_combout\,
	cout => \PWM1_FC02|Add0~10\);

-- Location: LCCOMB_X27_Y20_N0
\PWM1_FC02|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~16_combout\ = (\PWM1_FC02|comp_out~q\ & \PWM1_FC02|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC02|comp_out~q\,
	datad => \PWM1_FC02|Add0~9_combout\,
	combout => \PWM1_FC02|Add0~16_combout\);

-- Location: FF_X27_Y20_N1
\PWM1_FC02|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count1\(4));

-- Location: LCCOMB_X27_Y20_N10
\PWM1_FC02|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add0~17_combout\ = (\PWM1_FC02|comp_out~q\ & \PWM1_FC02|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|comp_out~q\,
	datac => \PWM1_FC02|Add0~11_combout\,
	combout => \PWM1_FC02|Add0~17_combout\);

-- Location: LCCOMB_X27_Y20_N30
\PWM1_FC02|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Equal0~1_combout\ = (!\PWM1_FC02|Add0~17_combout\ & (!\PWM1_FC02|Add0~15_combout\ & (!\PWM1_FC02|Add0~16_combout\ & \PWM1_FC02|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|Add0~17_combout\,
	datab => \PWM1_FC02|Add0~15_combout\,
	datac => \PWM1_FC02|Add0~16_combout\,
	datad => \PWM1_FC02|Add0~8_combout\,
	combout => \PWM1_FC02|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y20_N0
\PWM1_FC02|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Equal0~0_combout\ = (\PWM1_FC02|Add0~2_combout\ & (\PWM1_FC02|comp_out~q\ & (\PWM1_FC02|Add0~0_combout\ & \PWM1_FC02|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|Add0~2_combout\,
	datab => \PWM1_FC02|comp_out~q\,
	datac => \PWM1_FC02|Add0~0_combout\,
	datad => \PWM1_FC02|Add0~4_combout\,
	combout => \PWM1_FC02|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y20_N24
\PWM1_FC02|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|port_PWM01~0_combout\ = (\PWM1_FC02|Equal0~1_combout\ & ((\PWM1_FC02|Equal0~0_combout\) # ((\PWM1_FC02|comp_out~q\ & \PWM1_FC02|port_PWM01~q\)))) # (!\PWM1_FC02|Equal0~1_combout\ & (\PWM1_FC02|comp_out~q\ & (\PWM1_FC02|port_PWM01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|Equal0~1_combout\,
	datab => \PWM1_FC02|comp_out~q\,
	datac => \PWM1_FC02|port_PWM01~q\,
	datad => \PWM1_FC02|Equal0~0_combout\,
	combout => \PWM1_FC02|port_PWM01~0_combout\);

-- Location: FF_X28_Y20_N25
\PWM1_FC02|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|port_PWM01~q\);

-- Location: LCCOMB_X35_Y29_N6
\PWM1_FC03|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|LessThan0~0_combout\ = (((\ucr5|c_int\(3)) # (\ucr5|c_int\(1))) # (!\ucr5|c_int\(0))) # (!\ucr5|c_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(2),
	datab => \ucr5|c_int\(0),
	datac => \ucr5|c_int\(3),
	datad => \ucr5|c_int\(1),
	combout => \PWM1_FC03|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y29_N16
\PWM1_FC03|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|LessThan0~1_combout\ = (\ucr5|c_int\(6)) # ((\ucr5|c_int\(5)) # ((\ucr5|c_int\(4)) # (!\ucr5|c_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr5|c_int\(6),
	datab => \ucr5|c_int\(5),
	datac => \ucr5|c_int\(4),
	datad => \ucr5|c_int\(7),
	combout => \PWM1_FC03|LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y29_N10
\PWM1_FC03|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|LessThan0~2_combout\ = (\ucr5|c_int\(9)) # ((\ucr5|c_int\(8) & ((\PWM1_FC03|LessThan0~0_combout\) # (\PWM1_FC03|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|LessThan0~0_combout\,
	datab => \PWM1_FC03|LessThan0~1_combout\,
	datac => \ucr5|c_int\(9),
	datad => \ucr5|c_int\(8),
	combout => \PWM1_FC03|LessThan0~2_combout\);

-- Location: LCCOMB_X35_Y29_N12
\PWM1_FC03|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|LessThan0~3_combout\ = (\ucr5|c_int\(10)) # ((!\PWM1_FC03|LessThan0~2_combout\) # (!\PWM1_FB03|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucr5|c_int\(10),
	datac => \PWM1_FB03|LessThan0~6_combout\,
	datad => \PWM1_FC03|LessThan0~2_combout\,
	combout => \PWM1_FC03|LessThan0~3_combout\);

-- Location: FF_X35_Y29_N13
\PWM1_FC03|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|comp_out~q\);

-- Location: FF_X34_Y29_N27
\PWM1_FC03|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count1\(6));

-- Location: LCCOMB_X34_Y29_N20
\PWM1_FC03|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|LessThan1~0_combout\ = (((!\PWM1_FC03|var_Dead_Count1\(1)) # (!\PWM1_FC03|var_Dead_Count1\(0))) # (!\PWM1_FC03|var_Dead_Count1\(2))) # (!\PWM1_FC03|var_Dead_Count1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count1\(3),
	datab => \PWM1_FC03|var_Dead_Count1\(2),
	datac => \PWM1_FC03|var_Dead_Count1\(0),
	datad => \PWM1_FC03|var_Dead_Count1\(1),
	combout => \PWM1_FC03|LessThan1~0_combout\);

-- Location: LCCOMB_X34_Y29_N28
\PWM1_FC03|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|LessThan1~1_combout\ = (!\PWM1_FC03|var_Dead_Count1\(5) & (\PWM1_FC03|LessThan1~0_combout\ & (!\PWM1_FC03|var_Dead_Count1\(4) & !\PWM1_FC03|var_Dead_Count1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count1\(5),
	datab => \PWM1_FC03|LessThan1~0_combout\,
	datac => \PWM1_FC03|var_Dead_Count1\(4),
	datad => \PWM1_FC03|var_Dead_Count1\(6),
	combout => \PWM1_FC03|LessThan1~1_combout\);

-- Location: LCCOMB_X34_Y29_N0
\PWM1_FC03|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~0_combout\ = (\PWM1_FC03|var_Dead_Count1\(0) & (\PWM1_FC03|LessThan1~1_combout\ $ (VCC))) # (!\PWM1_FC03|var_Dead_Count1\(0) & (\PWM1_FC03|LessThan1~1_combout\ & VCC))
-- \PWM1_FC03|Add0~1\ = CARRY((\PWM1_FC03|var_Dead_Count1\(0) & \PWM1_FC03|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count1\(0),
	datab => \PWM1_FC03|LessThan1~1_combout\,
	datad => VCC,
	combout => \PWM1_FC03|Add0~0_combout\,
	cout => \PWM1_FC03|Add0~1\);

-- Location: LCCOMB_X34_Y29_N14
\PWM1_FC03|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~18_combout\ = (\PWM1_FC03|Add0~0_combout\ & \PWM1_FC03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC03|Add0~0_combout\,
	datac => \PWM1_FC03|comp_out~q\,
	combout => \PWM1_FC03|Add0~18_combout\);

-- Location: FF_X34_Y29_N15
\PWM1_FC03|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count1\(0));

-- Location: LCCOMB_X34_Y29_N2
\PWM1_FC03|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~2_combout\ = (\PWM1_FC03|var_Dead_Count1\(1) & (!\PWM1_FC03|Add0~1\)) # (!\PWM1_FC03|var_Dead_Count1\(1) & ((\PWM1_FC03|Add0~1\) # (GND)))
-- \PWM1_FC03|Add0~3\ = CARRY((!\PWM1_FC03|Add0~1\) # (!\PWM1_FC03|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC03|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM1_FC03|Add0~1\,
	combout => \PWM1_FC03|Add0~2_combout\,
	cout => \PWM1_FC03|Add0~3\);

-- Location: LCCOMB_X35_Y29_N22
\PWM1_FC03|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~19_combout\ = (\PWM1_FC03|Add0~2_combout\ & \PWM1_FC03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|Add0~2_combout\,
	datad => \PWM1_FC03|comp_out~q\,
	combout => \PWM1_FC03|Add0~19_combout\);

-- Location: FF_X35_Y29_N23
\PWM1_FC03|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count1\(1));

-- Location: LCCOMB_X34_Y29_N4
\PWM1_FC03|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~4_combout\ = (\PWM1_FC03|var_Dead_Count1\(2) & (\PWM1_FC03|Add0~3\ $ (GND))) # (!\PWM1_FC03|var_Dead_Count1\(2) & (!\PWM1_FC03|Add0~3\ & VCC))
-- \PWM1_FC03|Add0~5\ = CARRY((\PWM1_FC03|var_Dead_Count1\(2) & !\PWM1_FC03|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC03|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM1_FC03|Add0~3\,
	combout => \PWM1_FC03|Add0~4_combout\,
	cout => \PWM1_FC03|Add0~5\);

-- Location: LCCOMB_X34_Y29_N24
\PWM1_FC03|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~20_combout\ = (\PWM1_FC03|comp_out~q\ & \PWM1_FC03|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC03|comp_out~q\,
	datac => \PWM1_FC03|Add0~4_combout\,
	combout => \PWM1_FC03|Add0~20_combout\);

-- Location: FF_X34_Y29_N25
\PWM1_FC03|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count1\(2));

-- Location: LCCOMB_X34_Y29_N6
\PWM1_FC03|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~6_combout\ = (\PWM1_FC03|var_Dead_Count1\(3) & (!\PWM1_FC03|Add0~5\)) # (!\PWM1_FC03|var_Dead_Count1\(3) & ((\PWM1_FC03|Add0~5\) # (GND)))
-- \PWM1_FC03|Add0~7\ = CARRY((!\PWM1_FC03|Add0~5\) # (!\PWM1_FC03|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM1_FC03|Add0~5\,
	combout => \PWM1_FC03|Add0~6_combout\,
	cout => \PWM1_FC03|Add0~7\);

-- Location: LCCOMB_X34_Y29_N18
\PWM1_FC03|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~8_combout\ = (\PWM1_FC03|comp_out~q\ & \PWM1_FC03|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC03|comp_out~q\,
	datad => \PWM1_FC03|Add0~6_combout\,
	combout => \PWM1_FC03|Add0~8_combout\);

-- Location: FF_X34_Y29_N19
\PWM1_FC03|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count1\(3));

-- Location: LCCOMB_X34_Y29_N8
\PWM1_FC03|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~9_combout\ = (\PWM1_FC03|var_Dead_Count1\(4) & (\PWM1_FC03|Add0~7\ $ (GND))) # (!\PWM1_FC03|var_Dead_Count1\(4) & (!\PWM1_FC03|Add0~7\ & VCC))
-- \PWM1_FC03|Add0~10\ = CARRY((\PWM1_FC03|var_Dead_Count1\(4) & !\PWM1_FC03|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM1_FC03|Add0~7\,
	combout => \PWM1_FC03|Add0~9_combout\,
	cout => \PWM1_FC03|Add0~10\);

-- Location: LCCOMB_X34_Y29_N22
\PWM1_FC03|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~16_combout\ = (\PWM1_FC03|comp_out~q\ & \PWM1_FC03|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC03|comp_out~q\,
	datac => \PWM1_FC03|Add0~9_combout\,
	combout => \PWM1_FC03|Add0~16_combout\);

-- Location: FF_X34_Y29_N23
\PWM1_FC03|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count1\(4));

-- Location: LCCOMB_X34_Y29_N10
\PWM1_FC03|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~11_combout\ = (\PWM1_FC03|var_Dead_Count1\(5) & (!\PWM1_FC03|Add0~10\)) # (!\PWM1_FC03|var_Dead_Count1\(5) & ((\PWM1_FC03|Add0~10\) # (GND)))
-- \PWM1_FC03|Add0~12\ = CARRY((!\PWM1_FC03|Add0~10\) # (!\PWM1_FC03|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM1_FC03|Add0~10\,
	combout => \PWM1_FC03|Add0~11_combout\,
	cout => \PWM1_FC03|Add0~12\);

-- Location: LCCOMB_X34_Y29_N16
\PWM1_FC03|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~17_combout\ = (\PWM1_FC03|comp_out~q\ & \PWM1_FC03|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC03|comp_out~q\,
	datad => \PWM1_FC03|Add0~11_combout\,
	combout => \PWM1_FC03|Add0~17_combout\);

-- Location: FF_X34_Y29_N17
\PWM1_FC03|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count1\(5));

-- Location: LCCOMB_X34_Y29_N12
\PWM1_FC03|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~13_combout\ = \PWM1_FC03|var_Dead_Count1\(6) $ (!\PWM1_FC03|Add0~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count1\(6),
	cin => \PWM1_FC03|Add0~12\,
	combout => \PWM1_FC03|Add0~13_combout\);

-- Location: LCCOMB_X34_Y29_N26
\PWM1_FC03|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add0~15_combout\ = (\PWM1_FC03|comp_out~q\ & \PWM1_FC03|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC03|comp_out~q\,
	datac => \PWM1_FC03|Add0~13_combout\,
	combout => \PWM1_FC03|Add0~15_combout\);

-- Location: LCCOMB_X34_Y29_N30
\PWM1_FC03|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Equal0~1_combout\ = (!\PWM1_FC03|Add0~15_combout\ & (!\PWM1_FC03|Add0~17_combout\ & (!\PWM1_FC03|Add0~16_combout\ & \PWM1_FC03|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|Add0~15_combout\,
	datab => \PWM1_FC03|Add0~17_combout\,
	datac => \PWM1_FC03|Add0~16_combout\,
	datad => \PWM1_FC03|Add0~8_combout\,
	combout => \PWM1_FC03|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y29_N24
\PWM1_FC03|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Equal0~0_combout\ = (\PWM1_FC03|Add0~2_combout\ & (\PWM1_FC03|Add0~4_combout\ & (\PWM1_FC03|Add0~0_combout\ & \PWM1_FC03|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|Add0~2_combout\,
	datab => \PWM1_FC03|Add0~4_combout\,
	datac => \PWM1_FC03|Add0~0_combout\,
	datad => \PWM1_FC03|comp_out~q\,
	combout => \PWM1_FC03|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y29_N0
\PWM1_FC03|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|port_PWM01~0_combout\ = (\PWM1_FC03|Equal0~1_combout\ & ((\PWM1_FC03|Equal0~0_combout\) # ((\PWM1_FC03|port_PWM01~q\ & \PWM1_FC03|comp_out~q\)))) # (!\PWM1_FC03|Equal0~1_combout\ & (((\PWM1_FC03|port_PWM01~q\ & \PWM1_FC03|comp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|Equal0~1_combout\,
	datab => \PWM1_FC03|Equal0~0_combout\,
	datac => \PWM1_FC03|port_PWM01~q\,
	datad => \PWM1_FC03|comp_out~q\,
	combout => \PWM1_FC03|port_PWM01~0_combout\);

-- Location: FF_X35_Y29_N1
\PWM1_FC03|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|port_PWM01~q\);

-- Location: LCCOMB_X31_Y23_N0
\PWM1_FC01|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~18_combout\ = (!\PWM1_FC01|comp_out~q\ & \PWM1_FC01|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|comp_out~q\,
	datac => \PWM1_FC01|Add1~0_combout\,
	combout => \PWM1_FC01|Add1~18_combout\);

-- Location: FF_X31_Y23_N1
\PWM1_FC01|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count2\(0));

-- Location: LCCOMB_X31_Y23_N14
\PWM1_FC01|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~0_combout\ = (\PWM1_FC01|LessThan2~1_combout\ & (\PWM1_FC01|var_Dead_Count2\(0) $ (VCC))) # (!\PWM1_FC01|LessThan2~1_combout\ & (\PWM1_FC01|var_Dead_Count2\(0) & VCC))
-- \PWM1_FC01|Add1~1\ = CARRY((\PWM1_FC01|LessThan2~1_combout\ & \PWM1_FC01|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|LessThan2~1_combout\,
	datab => \PWM1_FC01|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM1_FC01|Add1~0_combout\,
	cout => \PWM1_FC01|Add1~1\);

-- Location: LCCOMB_X31_Y23_N16
\PWM1_FC01|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~2_combout\ = (\PWM1_FC01|var_Dead_Count2\(1) & (!\PWM1_FC01|Add1~1\)) # (!\PWM1_FC01|var_Dead_Count2\(1) & ((\PWM1_FC01|Add1~1\) # (GND)))
-- \PWM1_FC01|Add1~3\ = CARRY((!\PWM1_FC01|Add1~1\) # (!\PWM1_FC01|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM1_FC01|Add1~1\,
	combout => \PWM1_FC01|Add1~2_combout\,
	cout => \PWM1_FC01|Add1~3\);

-- Location: LCCOMB_X31_Y23_N10
\PWM1_FC01|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~19_combout\ = (\PWM1_FC01|Add1~2_combout\ & !\PWM1_FC01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|Add1~2_combout\,
	datac => \PWM1_FC01|comp_out~q\,
	combout => \PWM1_FC01|Add1~19_combout\);

-- Location: FF_X31_Y23_N11
\PWM1_FC01|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count2\(1));

-- Location: LCCOMB_X31_Y23_N18
\PWM1_FC01|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~4_combout\ = (\PWM1_FC01|var_Dead_Count2\(2) & (\PWM1_FC01|Add1~3\ $ (GND))) # (!\PWM1_FC01|var_Dead_Count2\(2) & (!\PWM1_FC01|Add1~3\ & VCC))
-- \PWM1_FC01|Add1~5\ = CARRY((\PWM1_FC01|var_Dead_Count2\(2) & !\PWM1_FC01|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM1_FC01|Add1~3\,
	combout => \PWM1_FC01|Add1~4_combout\,
	cout => \PWM1_FC01|Add1~5\);

-- Location: LCCOMB_X32_Y23_N18
\PWM1_FC01|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~20_combout\ = (\PWM1_FC01|Add1~4_combout\ & !\PWM1_FC01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|Add1~4_combout\,
	datad => \PWM1_FC01|comp_out~q\,
	combout => \PWM1_FC01|Add1~20_combout\);

-- Location: FF_X32_Y23_N19
\PWM1_FC01|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count2\(2));

-- Location: LCCOMB_X31_Y23_N20
\PWM1_FC01|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~6_combout\ = (\PWM1_FC01|var_Dead_Count2\(3) & (!\PWM1_FC01|Add1~5\)) # (!\PWM1_FC01|var_Dead_Count2\(3) & ((\PWM1_FC01|Add1~5\) # (GND)))
-- \PWM1_FC01|Add1~7\ = CARRY((!\PWM1_FC01|Add1~5\) # (!\PWM1_FC01|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM1_FC01|Add1~5\,
	combout => \PWM1_FC01|Add1~6_combout\,
	cout => \PWM1_FC01|Add1~7\);

-- Location: LCCOMB_X31_Y23_N4
\PWM1_FC01|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~8_combout\ = (\PWM1_FC01|Add1~6_combout\ & !\PWM1_FC01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|Add1~6_combout\,
	datac => \PWM1_FC01|comp_out~q\,
	combout => \PWM1_FC01|Add1~8_combout\);

-- Location: FF_X31_Y23_N5
\PWM1_FC01|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count2\(3));

-- Location: LCCOMB_X31_Y23_N22
\PWM1_FC01|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~9_combout\ = (\PWM1_FC01|var_Dead_Count2\(4) & (\PWM1_FC01|Add1~7\ $ (GND))) # (!\PWM1_FC01|var_Dead_Count2\(4) & (!\PWM1_FC01|Add1~7\ & VCC))
-- \PWM1_FC01|Add1~10\ = CARRY((\PWM1_FC01|var_Dead_Count2\(4) & !\PWM1_FC01|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM1_FC01|Add1~7\,
	combout => \PWM1_FC01|Add1~9_combout\,
	cout => \PWM1_FC01|Add1~10\);

-- Location: LCCOMB_X31_Y23_N8
\PWM1_FC01|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~16_combout\ = (!\PWM1_FC01|comp_out~q\ & \PWM1_FC01|Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|comp_out~q\,
	datac => \PWM1_FC01|Add1~9_combout\,
	combout => \PWM1_FC01|Add1~16_combout\);

-- Location: FF_X31_Y23_N9
\PWM1_FC01|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count2\(4));

-- Location: LCCOMB_X31_Y23_N24
\PWM1_FC01|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~11_combout\ = (\PWM1_FC01|var_Dead_Count2\(5) & (!\PWM1_FC01|Add1~10\)) # (!\PWM1_FC01|var_Dead_Count2\(5) & ((\PWM1_FC01|Add1~10\) # (GND)))
-- \PWM1_FC01|Add1~12\ = CARRY((!\PWM1_FC01|Add1~10\) # (!\PWM1_FC01|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM1_FC01|Add1~10\,
	combout => \PWM1_FC01|Add1~11_combout\,
	cout => \PWM1_FC01|Add1~12\);

-- Location: LCCOMB_X31_Y23_N2
\PWM1_FC01|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~17_combout\ = (\PWM1_FC01|Add1~11_combout\ & !\PWM1_FC01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC01|Add1~11_combout\,
	datac => \PWM1_FC01|comp_out~q\,
	combout => \PWM1_FC01|Add1~17_combout\);

-- Location: FF_X31_Y23_N3
\PWM1_FC01|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count2\(5));

-- Location: LCCOMB_X31_Y23_N26
\PWM1_FC01|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~13_combout\ = \PWM1_FC01|Add1~12\ $ (!\PWM1_FC01|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM1_FC01|var_Dead_Count2\(6),
	cin => \PWM1_FC01|Add1~12\,
	combout => \PWM1_FC01|Add1~13_combout\);

-- Location: LCCOMB_X31_Y23_N28
\PWM1_FC01|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Add1~15_combout\ = (!\PWM1_FC01|comp_out~q\ & \PWM1_FC01|Add1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|comp_out~q\,
	datac => \PWM1_FC01|Add1~13_combout\,
	combout => \PWM1_FC01|Add1~15_combout\);

-- Location: FF_X31_Y23_N29
\PWM1_FC01|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|var_Dead_Count2\(6));

-- Location: LCCOMB_X31_Y23_N30
\PWM1_FC01|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|LessThan2~0_combout\ = (((!\PWM1_FC01|var_Dead_Count2\(2)) # (!\PWM1_FC01|var_Dead_Count2\(3))) # (!\PWM1_FC01|var_Dead_Count2\(0))) # (!\PWM1_FC01|var_Dead_Count2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|var_Dead_Count2\(1),
	datab => \PWM1_FC01|var_Dead_Count2\(0),
	datac => \PWM1_FC01|var_Dead_Count2\(3),
	datad => \PWM1_FC01|var_Dead_Count2\(2),
	combout => \PWM1_FC01|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y23_N12
\PWM1_FC01|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|LessThan2~1_combout\ = (!\PWM1_FC01|var_Dead_Count2\(5) & (!\PWM1_FC01|var_Dead_Count2\(6) & (\PWM1_FC01|LessThan2~0_combout\ & !\PWM1_FC01|var_Dead_Count2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|var_Dead_Count2\(5),
	datab => \PWM1_FC01|var_Dead_Count2\(6),
	datac => \PWM1_FC01|LessThan2~0_combout\,
	datad => \PWM1_FC01|var_Dead_Count2\(4),
	combout => \PWM1_FC01|LessThan2~1_combout\);

-- Location: LCCOMB_X32_Y23_N12
\PWM1_FC01|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Equal1~0_combout\ = (\PWM1_FC01|Add1~0_combout\ & (\PWM1_FC01|Add1~4_combout\ & (\PWM1_FC01|Add1~2_combout\ & !\PWM1_FC01|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|Add1~0_combout\,
	datab => \PWM1_FC01|Add1~4_combout\,
	datac => \PWM1_FC01|Add1~2_combout\,
	datad => \PWM1_FC01|comp_out~q\,
	combout => \PWM1_FC01|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y23_N6
\PWM1_FC01|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|Equal1~1_combout\ = (\PWM1_FC01|Add1~8_combout\ & (!\PWM1_FC01|Add1~17_combout\ & (!\PWM1_FC01|Add1~16_combout\ & !\PWM1_FC01|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|Add1~8_combout\,
	datab => \PWM1_FC01|Add1~17_combout\,
	datac => \PWM1_FC01|Add1~16_combout\,
	datad => \PWM1_FC01|Add1~15_combout\,
	combout => \PWM1_FC01|Equal1~1_combout\);

-- Location: LCCOMB_X32_Y23_N26
\PWM1_FC01|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC01|port_PWM02~0_combout\ = (\PWM1_FC01|Equal1~0_combout\ & ((\PWM1_FC01|Equal1~1_combout\) # ((\PWM1_FC01|port_PWM02~q\ & !\PWM1_FC01|comp_out~q\)))) # (!\PWM1_FC01|Equal1~0_combout\ & (((\PWM1_FC01|port_PWM02~q\ & !\PWM1_FC01|comp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC01|Equal1~0_combout\,
	datab => \PWM1_FC01|Equal1~1_combout\,
	datac => \PWM1_FC01|port_PWM02~q\,
	datad => \PWM1_FC01|comp_out~q\,
	combout => \PWM1_FC01|port_PWM02~0_combout\);

-- Location: FF_X32_Y23_N27
\PWM1_FC01|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC01|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC01|port_PWM02~q\);

-- Location: FF_X29_Y20_N1
\PWM1_FC02|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count2\(4));

-- Location: LCCOMB_X29_Y20_N18
\PWM1_FC02|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~9_combout\ = (\PWM1_FC02|var_Dead_Count2\(4) & (\PWM1_FC02|Add1~7\ $ (GND))) # (!\PWM1_FC02|var_Dead_Count2\(4) & (!\PWM1_FC02|Add1~7\ & VCC))
-- \PWM1_FC02|Add1~10\ = CARRY((\PWM1_FC02|var_Dead_Count2\(4) & !\PWM1_FC02|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC02|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM1_FC02|Add1~7\,
	combout => \PWM1_FC02|Add1~9_combout\,
	cout => \PWM1_FC02|Add1~10\);

-- Location: LCCOMB_X29_Y20_N20
\PWM1_FC02|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~11_combout\ = (\PWM1_FC02|var_Dead_Count2\(5) & (!\PWM1_FC02|Add1~10\)) # (!\PWM1_FC02|var_Dead_Count2\(5) & ((\PWM1_FC02|Add1~10\) # (GND)))
-- \PWM1_FC02|Add1~12\ = CARRY((!\PWM1_FC02|Add1~10\) # (!\PWM1_FC02|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM1_FC02|Add1~10\,
	combout => \PWM1_FC02|Add1~11_combout\,
	cout => \PWM1_FC02|Add1~12\);

-- Location: LCCOMB_X29_Y20_N24
\PWM1_FC02|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~17_combout\ = (!\PWM1_FC02|comp_out~q\ & \PWM1_FC02|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC02|comp_out~q\,
	datad => \PWM1_FC02|Add1~11_combout\,
	combout => \PWM1_FC02|Add1~17_combout\);

-- Location: FF_X29_Y20_N25
\PWM1_FC02|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count2\(5));

-- Location: LCCOMB_X29_Y20_N22
\PWM1_FC02|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~13_combout\ = \PWM1_FC02|Add1~12\ $ (!\PWM1_FC02|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM1_FC02|var_Dead_Count2\(6),
	cin => \PWM1_FC02|Add1~12\,
	combout => \PWM1_FC02|Add1~13_combout\);

-- Location: LCCOMB_X29_Y20_N2
\PWM1_FC02|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~15_combout\ = (\PWM1_FC02|Add1~13_combout\ & !\PWM1_FC02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC02|Add1~13_combout\,
	datad => \PWM1_FC02|comp_out~q\,
	combout => \PWM1_FC02|Add1~15_combout\);

-- Location: FF_X29_Y20_N3
\PWM1_FC02|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count2\(6));

-- Location: LCCOMB_X29_Y20_N10
\PWM1_FC02|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~0_combout\ = (\PWM1_FC02|LessThan2~1_combout\ & (\PWM1_FC02|var_Dead_Count2\(0) $ (VCC))) # (!\PWM1_FC02|LessThan2~1_combout\ & (\PWM1_FC02|var_Dead_Count2\(0) & VCC))
-- \PWM1_FC02|Add1~1\ = CARRY((\PWM1_FC02|LessThan2~1_combout\ & \PWM1_FC02|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|LessThan2~1_combout\,
	datab => \PWM1_FC02|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM1_FC02|Add1~0_combout\,
	cout => \PWM1_FC02|Add1~1\);

-- Location: LCCOMB_X29_Y20_N8
\PWM1_FC02|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~18_combout\ = (!\PWM1_FC02|comp_out~q\ & \PWM1_FC02|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC02|comp_out~q\,
	datac => \PWM1_FC02|Add1~0_combout\,
	combout => \PWM1_FC02|Add1~18_combout\);

-- Location: FF_X29_Y20_N9
\PWM1_FC02|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count2\(0));

-- Location: LCCOMB_X29_Y20_N30
\PWM1_FC02|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|LessThan2~0_combout\ = (((!\PWM1_FC02|var_Dead_Count2\(2)) # (!\PWM1_FC02|var_Dead_Count2\(0))) # (!\PWM1_FC02|var_Dead_Count2\(3))) # (!\PWM1_FC02|var_Dead_Count2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|var_Dead_Count2\(1),
	datab => \PWM1_FC02|var_Dead_Count2\(3),
	datac => \PWM1_FC02|var_Dead_Count2\(0),
	datad => \PWM1_FC02|var_Dead_Count2\(2),
	combout => \PWM1_FC02|LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y20_N4
\PWM1_FC02|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|LessThan2~1_combout\ = (!\PWM1_FC02|var_Dead_Count2\(5) & (!\PWM1_FC02|var_Dead_Count2\(6) & (\PWM1_FC02|LessThan2~0_combout\ & !\PWM1_FC02|var_Dead_Count2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|var_Dead_Count2\(5),
	datab => \PWM1_FC02|var_Dead_Count2\(6),
	datac => \PWM1_FC02|LessThan2~0_combout\,
	datad => \PWM1_FC02|var_Dead_Count2\(4),
	combout => \PWM1_FC02|LessThan2~1_combout\);

-- Location: LCCOMB_X29_Y20_N12
\PWM1_FC02|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~2_combout\ = (\PWM1_FC02|var_Dead_Count2\(1) & (!\PWM1_FC02|Add1~1\)) # (!\PWM1_FC02|var_Dead_Count2\(1) & ((\PWM1_FC02|Add1~1\) # (GND)))
-- \PWM1_FC02|Add1~3\ = CARRY((!\PWM1_FC02|Add1~1\) # (!\PWM1_FC02|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM1_FC02|Add1~1\,
	combout => \PWM1_FC02|Add1~2_combout\,
	cout => \PWM1_FC02|Add1~3\);

-- Location: LCCOMB_X28_Y20_N26
\PWM1_FC02|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~19_combout\ = (\PWM1_FC02|Add1~2_combout\ & !\PWM1_FC02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC02|Add1~2_combout\,
	datad => \PWM1_FC02|comp_out~q\,
	combout => \PWM1_FC02|Add1~19_combout\);

-- Location: FF_X28_Y20_N27
\PWM1_FC02|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count2\(1));

-- Location: LCCOMB_X29_Y20_N14
\PWM1_FC02|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~4_combout\ = (\PWM1_FC02|var_Dead_Count2\(2) & (\PWM1_FC02|Add1~3\ $ (GND))) # (!\PWM1_FC02|var_Dead_Count2\(2) & (!\PWM1_FC02|Add1~3\ & VCC))
-- \PWM1_FC02|Add1~5\ = CARRY((\PWM1_FC02|var_Dead_Count2\(2) & !\PWM1_FC02|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC02|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM1_FC02|Add1~3\,
	combout => \PWM1_FC02|Add1~4_combout\,
	cout => \PWM1_FC02|Add1~5\);

-- Location: LCCOMB_X29_Y20_N26
\PWM1_FC02|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~20_combout\ = (\PWM1_FC02|Add1~4_combout\ & !\PWM1_FC02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC02|Add1~4_combout\,
	datad => \PWM1_FC02|comp_out~q\,
	combout => \PWM1_FC02|Add1~20_combout\);

-- Location: FF_X29_Y20_N27
\PWM1_FC02|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count2\(2));

-- Location: LCCOMB_X29_Y20_N16
\PWM1_FC02|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~6_combout\ = (\PWM1_FC02|var_Dead_Count2\(3) & (!\PWM1_FC02|Add1~5\)) # (!\PWM1_FC02|var_Dead_Count2\(3) & ((\PWM1_FC02|Add1~5\) # (GND)))
-- \PWM1_FC02|Add1~7\ = CARRY((!\PWM1_FC02|Add1~5\) # (!\PWM1_FC02|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC02|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM1_FC02|Add1~5\,
	combout => \PWM1_FC02|Add1~6_combout\,
	cout => \PWM1_FC02|Add1~7\);

-- Location: LCCOMB_X29_Y20_N28
\PWM1_FC02|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~8_combout\ = (!\PWM1_FC02|comp_out~q\ & \PWM1_FC02|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC02|comp_out~q\,
	datad => \PWM1_FC02|Add1~6_combout\,
	combout => \PWM1_FC02|Add1~8_combout\);

-- Location: FF_X29_Y20_N29
\PWM1_FC02|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|var_Dead_Count2\(3));

-- Location: LCCOMB_X29_Y20_N0
\PWM1_FC02|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Add1~16_combout\ = (!\PWM1_FC02|comp_out~q\ & \PWM1_FC02|Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC02|comp_out~q\,
	datad => \PWM1_FC02|Add1~9_combout\,
	combout => \PWM1_FC02|Add1~16_combout\);

-- Location: LCCOMB_X29_Y20_N6
\PWM1_FC02|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Equal1~1_combout\ = (!\PWM1_FC02|Add1~16_combout\ & (!\PWM1_FC02|Add1~17_combout\ & (!\PWM1_FC02|Add1~15_combout\ & \PWM1_FC02|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|Add1~16_combout\,
	datab => \PWM1_FC02|Add1~17_combout\,
	datac => \PWM1_FC02|Add1~15_combout\,
	datad => \PWM1_FC02|Add1~8_combout\,
	combout => \PWM1_FC02|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y20_N12
\PWM1_FC02|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|Equal1~0_combout\ = (\PWM1_FC02|Add1~4_combout\ & (\PWM1_FC02|Add1~2_combout\ & (\PWM1_FC02|Add1~0_combout\ & !\PWM1_FC02|comp_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|Add1~4_combout\,
	datab => \PWM1_FC02|Add1~2_combout\,
	datac => \PWM1_FC02|Add1~0_combout\,
	datad => \PWM1_FC02|comp_out~q\,
	combout => \PWM1_FC02|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y20_N2
\PWM1_FC02|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC02|port_PWM02~0_combout\ = (\PWM1_FC02|Equal1~1_combout\ & ((\PWM1_FC02|Equal1~0_combout\) # ((!\PWM1_FC02|comp_out~q\ & \PWM1_FC02|port_PWM02~q\)))) # (!\PWM1_FC02|Equal1~1_combout\ & (!\PWM1_FC02|comp_out~q\ & (\PWM1_FC02|port_PWM02~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC02|Equal1~1_combout\,
	datab => \PWM1_FC02|comp_out~q\,
	datac => \PWM1_FC02|port_PWM02~q\,
	datad => \PWM1_FC02|Equal1~0_combout\,
	combout => \PWM1_FC02|port_PWM02~0_combout\);

-- Location: FF_X28_Y20_N3
\PWM1_FC02|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC02|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC02|port_PWM02~q\);

-- Location: LCCOMB_X35_Y29_N26
\PWM1_FC03|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~19_combout\ = (!\PWM1_FC03|comp_out~q\ & \PWM1_FC03|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|comp_out~q\,
	datad => \PWM1_FC03|Add1~2_combout\,
	combout => \PWM1_FC03|Add1~19_combout\);

-- Location: FF_X35_Y29_N27
\PWM1_FC03|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count2\(1));

-- Location: LCCOMB_X36_Y29_N4
\PWM1_FC03|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~2_combout\ = (\PWM1_FC03|var_Dead_Count2\(1) & (!\PWM1_FC03|Add1~1\)) # (!\PWM1_FC03|var_Dead_Count2\(1) & ((\PWM1_FC03|Add1~1\) # (GND)))
-- \PWM1_FC03|Add1~3\ = CARRY((!\PWM1_FC03|Add1~1\) # (!\PWM1_FC03|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM1_FC03|Add1~1\,
	combout => \PWM1_FC03|Add1~2_combout\,
	cout => \PWM1_FC03|Add1~3\);

-- Location: LCCOMB_X36_Y29_N6
\PWM1_FC03|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~4_combout\ = (\PWM1_FC03|var_Dead_Count2\(2) & (\PWM1_FC03|Add1~3\ $ (GND))) # (!\PWM1_FC03|var_Dead_Count2\(2) & (!\PWM1_FC03|Add1~3\ & VCC))
-- \PWM1_FC03|Add1~5\ = CARRY((\PWM1_FC03|var_Dead_Count2\(2) & !\PWM1_FC03|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM1_FC03|Add1~3\,
	combout => \PWM1_FC03|Add1~4_combout\,
	cout => \PWM1_FC03|Add1~5\);

-- Location: LCCOMB_X36_Y29_N0
\PWM1_FC03|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~20_combout\ = (!\PWM1_FC03|comp_out~q\ & \PWM1_FC03|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|comp_out~q\,
	datad => \PWM1_FC03|Add1~4_combout\,
	combout => \PWM1_FC03|Add1~20_combout\);

-- Location: FF_X36_Y29_N1
\PWM1_FC03|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count2\(2));

-- Location: LCCOMB_X36_Y29_N8
\PWM1_FC03|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~6_combout\ = (\PWM1_FC03|var_Dead_Count2\(3) & (!\PWM1_FC03|Add1~5\)) # (!\PWM1_FC03|var_Dead_Count2\(3) & ((\PWM1_FC03|Add1~5\) # (GND)))
-- \PWM1_FC03|Add1~7\ = CARRY((!\PWM1_FC03|Add1~5\) # (!\PWM1_FC03|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC03|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM1_FC03|Add1~5\,
	combout => \PWM1_FC03|Add1~6_combout\,
	cout => \PWM1_FC03|Add1~7\);

-- Location: LCCOMB_X36_Y29_N18
\PWM1_FC03|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~8_combout\ = (\PWM1_FC03|Add1~6_combout\ & !\PWM1_FC03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC03|Add1~6_combout\,
	datad => \PWM1_FC03|comp_out~q\,
	combout => \PWM1_FC03|Add1~8_combout\);

-- Location: FF_X36_Y29_N19
\PWM1_FC03|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count2\(3));

-- Location: LCCOMB_X36_Y29_N10
\PWM1_FC03|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~9_combout\ = (\PWM1_FC03|var_Dead_Count2\(4) & (\PWM1_FC03|Add1~7\ $ (GND))) # (!\PWM1_FC03|var_Dead_Count2\(4) & (!\PWM1_FC03|Add1~7\ & VCC))
-- \PWM1_FC03|Add1~10\ = CARRY((\PWM1_FC03|var_Dead_Count2\(4) & !\PWM1_FC03|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM1_FC03|Add1~7\,
	combout => \PWM1_FC03|Add1~9_combout\,
	cout => \PWM1_FC03|Add1~10\);

-- Location: LCCOMB_X36_Y29_N30
\PWM1_FC03|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~16_combout\ = (!\PWM1_FC03|comp_out~q\ & \PWM1_FC03|Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|comp_out~q\,
	datad => \PWM1_FC03|Add1~9_combout\,
	combout => \PWM1_FC03|Add1~16_combout\);

-- Location: FF_X36_Y29_N31
\PWM1_FC03|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count2\(4));

-- Location: LCCOMB_X36_Y29_N2
\PWM1_FC03|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~0_combout\ = (\PWM1_FC03|LessThan2~1_combout\ & (\PWM1_FC03|var_Dead_Count2\(0) $ (VCC))) # (!\PWM1_FC03|LessThan2~1_combout\ & (\PWM1_FC03|var_Dead_Count2\(0) & VCC))
-- \PWM1_FC03|Add1~1\ = CARRY((\PWM1_FC03|LessThan2~1_combout\ & \PWM1_FC03|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|LessThan2~1_combout\,
	datab => \PWM1_FC03|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM1_FC03|Add1~0_combout\,
	cout => \PWM1_FC03|Add1~1\);

-- Location: LCCOMB_X36_Y29_N24
\PWM1_FC03|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~18_combout\ = (!\PWM1_FC03|comp_out~q\ & \PWM1_FC03|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|comp_out~q\,
	datad => \PWM1_FC03|Add1~0_combout\,
	combout => \PWM1_FC03|Add1~18_combout\);

-- Location: FF_X36_Y29_N25
\PWM1_FC03|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count2\(0));

-- Location: LCCOMB_X36_Y29_N28
\PWM1_FC03|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|LessThan2~0_combout\ = (((!\PWM1_FC03|var_Dead_Count2\(0)) # (!\PWM1_FC03|var_Dead_Count2\(1))) # (!\PWM1_FC03|var_Dead_Count2\(3))) # (!\PWM1_FC03|var_Dead_Count2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count2\(2),
	datab => \PWM1_FC03|var_Dead_Count2\(3),
	datac => \PWM1_FC03|var_Dead_Count2\(1),
	datad => \PWM1_FC03|var_Dead_Count2\(0),
	combout => \PWM1_FC03|LessThan2~0_combout\);

-- Location: LCCOMB_X36_Y29_N12
\PWM1_FC03|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~11_combout\ = (\PWM1_FC03|var_Dead_Count2\(5) & (!\PWM1_FC03|Add1~10\)) # (!\PWM1_FC03|var_Dead_Count2\(5) & ((\PWM1_FC03|Add1~10\) # (GND)))
-- \PWM1_FC03|Add1~12\ = CARRY((!\PWM1_FC03|Add1~10\) # (!\PWM1_FC03|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM1_FC03|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM1_FC03|Add1~10\,
	combout => \PWM1_FC03|Add1~11_combout\,
	cout => \PWM1_FC03|Add1~12\);

-- Location: LCCOMB_X36_Y29_N16
\PWM1_FC03|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~17_combout\ = (!\PWM1_FC03|comp_out~q\ & \PWM1_FC03|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|comp_out~q\,
	datad => \PWM1_FC03|Add1~11_combout\,
	combout => \PWM1_FC03|Add1~17_combout\);

-- Location: FF_X36_Y29_N17
\PWM1_FC03|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count2\(5));

-- Location: LCCOMB_X36_Y29_N14
\PWM1_FC03|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~13_combout\ = \PWM1_FC03|var_Dead_Count2\(6) $ (!\PWM1_FC03|Add1~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count2\(6),
	cin => \PWM1_FC03|Add1~12\,
	combout => \PWM1_FC03|Add1~13_combout\);

-- Location: LCCOMB_X36_Y29_N26
\PWM1_FC03|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Add1~15_combout\ = (\PWM1_FC03|Add1~13_combout\ & !\PWM1_FC03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM1_FC03|Add1~13_combout\,
	datad => \PWM1_FC03|comp_out~q\,
	combout => \PWM1_FC03|Add1~15_combout\);

-- Location: FF_X36_Y29_N27
\PWM1_FC03|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|var_Dead_Count2\(6));

-- Location: LCCOMB_X36_Y29_N20
\PWM1_FC03|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|LessThan2~1_combout\ = (!\PWM1_FC03|var_Dead_Count2\(4) & (\PWM1_FC03|LessThan2~0_combout\ & (!\PWM1_FC03|var_Dead_Count2\(6) & !\PWM1_FC03|var_Dead_Count2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|var_Dead_Count2\(4),
	datab => \PWM1_FC03|LessThan2~0_combout\,
	datac => \PWM1_FC03|var_Dead_Count2\(6),
	datad => \PWM1_FC03|var_Dead_Count2\(5),
	combout => \PWM1_FC03|LessThan2~1_combout\);

-- Location: LCCOMB_X35_Y29_N28
\PWM1_FC03|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Equal1~0_combout\ = (\PWM1_FC03|Add1~2_combout\ & (!\PWM1_FC03|comp_out~q\ & (\PWM1_FC03|Add1~0_combout\ & \PWM1_FC03|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|Add1~2_combout\,
	datab => \PWM1_FC03|comp_out~q\,
	datac => \PWM1_FC03|Add1~0_combout\,
	datad => \PWM1_FC03|Add1~4_combout\,
	combout => \PWM1_FC03|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y29_N22
\PWM1_FC03|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|Equal1~1_combout\ = (\PWM1_FC03|Add1~8_combout\ & (!\PWM1_FC03|Add1~17_combout\ & (!\PWM1_FC03|Add1~16_combout\ & !\PWM1_FC03|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|Add1~8_combout\,
	datab => \PWM1_FC03|Add1~17_combout\,
	datac => \PWM1_FC03|Add1~16_combout\,
	datad => \PWM1_FC03|Add1~15_combout\,
	combout => \PWM1_FC03|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y29_N2
\PWM1_FC03|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM1_FC03|port_PWM02~0_combout\ = (\PWM1_FC03|comp_out~q\ & (\PWM1_FC03|Equal1~0_combout\ & ((\PWM1_FC03|Equal1~1_combout\)))) # (!\PWM1_FC03|comp_out~q\ & ((\PWM1_FC03|port_PWM02~q\) # ((\PWM1_FC03|Equal1~0_combout\ & \PWM1_FC03|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM1_FC03|comp_out~q\,
	datab => \PWM1_FC03|Equal1~0_combout\,
	datac => \PWM1_FC03|port_PWM02~q\,
	datad => \PWM1_FC03|Equal1~1_combout\,
	combout => \PWM1_FC03|port_PWM02~0_combout\);

-- Location: FF_X35_Y29_N3
\PWM1_FC03|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM1_FC03|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM1_FC03|port_PWM02~q\);

-- Location: LCCOMB_X27_Y25_N22
\PWM2_FC01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|LessThan0~0_combout\ = ((\ucr2|c_int\(2)) # ((\ucr2|c_int\(1)) # (\ucr6|c_int\(0)))) # (!\ucr2|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(3),
	datab => \ucr2|c_int\(2),
	datac => \ucr2|c_int\(1),
	datad => \ucr6|c_int\(0),
	combout => \PWM2_FC01|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y25_N16
\PWM2_FC01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|LessThan0~1_combout\ = (\ucr2|c_int\(5)) # (((\ucr2|c_int\(4)) # (!\ucr2|c_int\(7))) # (!\ucr2|c_int\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr2|c_int\(5),
	datab => \ucr2|c_int\(6),
	datac => \ucr2|c_int\(4),
	datad => \ucr2|c_int\(7),
	combout => \PWM2_FC01|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y25_N10
\PWM2_FC01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|LessThan0~2_combout\ = ((\ucr2|c_int\(8) & ((\PWM2_FC01|LessThan0~0_combout\) # (\PWM2_FC01|LessThan0~1_combout\)))) # (!\ucr2|c_int\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|LessThan0~0_combout\,
	datab => \ucr2|c_int\(9),
	datac => \ucr2|c_int\(8),
	datad => \PWM2_FC01|LessThan0~1_combout\,
	combout => \PWM2_FC01|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y25_N30
\PWM2_FC01|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|LessThan0~3_combout\ = ((\ucr2|c_int\(11)) # ((!\PWM2_FC01|LessThan0~2_combout\) # (!\ucr2|c_int\(10)))) # (!\PWM2_FB01|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB01|LessThan0~0_combout\,
	datab => \ucr2|c_int\(11),
	datac => \ucr2|c_int\(10),
	datad => \PWM2_FC01|LessThan0~2_combout\,
	combout => \PWM2_FC01|LessThan0~3_combout\);

-- Location: FF_X27_Y25_N31
\PWM2_FC01|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|comp_out~q\);

-- Location: LCCOMB_X28_Y25_N2
\PWM2_FC01|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~20_combout\ = (!\PWM2_FC01|comp_out~q\ & \PWM2_FC01|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|comp_out~q\,
	datad => \PWM2_FC01|Add1~4_combout\,
	combout => \PWM2_FC01|Add1~20_combout\);

-- Location: FF_X28_Y25_N3
\PWM2_FC01|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count2\(2));

-- Location: LCCOMB_X28_Y25_N10
\PWM2_FC01|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~4_combout\ = (\PWM2_FC01|var_Dead_Count2\(2) & (\PWM2_FC01|Add1~3\ $ (GND))) # (!\PWM2_FC01|var_Dead_Count2\(2) & (!\PWM2_FC01|Add1~3\ & VCC))
-- \PWM2_FC01|Add1~5\ = CARRY((\PWM2_FC01|var_Dead_Count2\(2) & !\PWM2_FC01|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM2_FC01|Add1~3\,
	combout => \PWM2_FC01|Add1~4_combout\,
	cout => \PWM2_FC01|Add1~5\);

-- Location: LCCOMB_X28_Y25_N12
\PWM2_FC01|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~6_combout\ = (\PWM2_FC01|var_Dead_Count2\(3) & (!\PWM2_FC01|Add1~5\)) # (!\PWM2_FC01|var_Dead_Count2\(3) & ((\PWM2_FC01|Add1~5\) # (GND)))
-- \PWM2_FC01|Add1~7\ = CARRY((!\PWM2_FC01|Add1~5\) # (!\PWM2_FC01|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM2_FC01|Add1~5\,
	combout => \PWM2_FC01|Add1~6_combout\,
	cout => \PWM2_FC01|Add1~7\);

-- Location: LCCOMB_X28_Y25_N28
\PWM2_FC01|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~8_combout\ = (!\PWM2_FC01|comp_out~q\ & \PWM2_FC01|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|comp_out~q\,
	datac => \PWM2_FC01|Add1~6_combout\,
	combout => \PWM2_FC01|Add1~8_combout\);

-- Location: FF_X28_Y25_N29
\PWM2_FC01|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count2\(3));

-- Location: LCCOMB_X28_Y25_N14
\PWM2_FC01|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~9_combout\ = (\PWM2_FC01|var_Dead_Count2\(4) & (\PWM2_FC01|Add1~7\ $ (GND))) # (!\PWM2_FC01|var_Dead_Count2\(4) & (!\PWM2_FC01|Add1~7\ & VCC))
-- \PWM2_FC01|Add1~10\ = CARRY((\PWM2_FC01|var_Dead_Count2\(4) & !\PWM2_FC01|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM2_FC01|Add1~7\,
	combout => \PWM2_FC01|Add1~9_combout\,
	cout => \PWM2_FC01|Add1~10\);

-- Location: LCCOMB_X28_Y25_N30
\PWM2_FC01|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~16_combout\ = (\PWM2_FC01|Add1~9_combout\ & !\PWM2_FC01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC01|Add1~9_combout\,
	datad => \PWM2_FC01|comp_out~q\,
	combout => \PWM2_FC01|Add1~16_combout\);

-- Location: FF_X28_Y25_N31
\PWM2_FC01|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count2\(4));

-- Location: LCCOMB_X28_Y25_N16
\PWM2_FC01|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~11_combout\ = (\PWM2_FC01|var_Dead_Count2\(5) & (!\PWM2_FC01|Add1~10\)) # (!\PWM2_FC01|var_Dead_Count2\(5) & ((\PWM2_FC01|Add1~10\) # (GND)))
-- \PWM2_FC01|Add1~12\ = CARRY((!\PWM2_FC01|Add1~10\) # (!\PWM2_FC01|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM2_FC01|Add1~10\,
	combout => \PWM2_FC01|Add1~11_combout\,
	cout => \PWM2_FC01|Add1~12\);

-- Location: LCCOMB_X28_Y25_N0
\PWM2_FC01|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~17_combout\ = (!\PWM2_FC01|comp_out~q\ & \PWM2_FC01|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|comp_out~q\,
	datad => \PWM2_FC01|Add1~11_combout\,
	combout => \PWM2_FC01|Add1~17_combout\);

-- Location: FF_X28_Y25_N1
\PWM2_FC01|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count2\(5));

-- Location: LCCOMB_X28_Y25_N18
\PWM2_FC01|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~13_combout\ = \PWM2_FC01|var_Dead_Count2\(6) $ (!\PWM2_FC01|Add1~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|var_Dead_Count2\(6),
	cin => \PWM2_FC01|Add1~12\,
	combout => \PWM2_FC01|Add1~13_combout\);

-- Location: LCCOMB_X28_Y25_N26
\PWM2_FC01|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~15_combout\ = (!\PWM2_FC01|comp_out~q\ & \PWM2_FC01|Add1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|comp_out~q\,
	datad => \PWM2_FC01|Add1~13_combout\,
	combout => \PWM2_FC01|Add1~15_combout\);

-- Location: FF_X28_Y25_N27
\PWM2_FC01|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count2\(6));

-- Location: LCCOMB_X28_Y25_N4
\PWM2_FC01|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|LessThan2~0_combout\ = (((!\PWM2_FC01|var_Dead_Count2\(2)) # (!\PWM2_FC01|var_Dead_Count2\(1))) # (!\PWM2_FC01|var_Dead_Count2\(3))) # (!\PWM2_FC01|var_Dead_Count2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|var_Dead_Count2\(0),
	datab => \PWM2_FC01|var_Dead_Count2\(3),
	datac => \PWM2_FC01|var_Dead_Count2\(1),
	datad => \PWM2_FC01|var_Dead_Count2\(2),
	combout => \PWM2_FC01|LessThan2~0_combout\);

-- Location: LCCOMB_X28_Y25_N20
\PWM2_FC01|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|LessThan2~1_combout\ = (!\PWM2_FC01|var_Dead_Count2\(6) & (!\PWM2_FC01|var_Dead_Count2\(5) & (!\PWM2_FC01|var_Dead_Count2\(4) & \PWM2_FC01|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|var_Dead_Count2\(6),
	datab => \PWM2_FC01|var_Dead_Count2\(5),
	datac => \PWM2_FC01|var_Dead_Count2\(4),
	datad => \PWM2_FC01|LessThan2~0_combout\,
	combout => \PWM2_FC01|LessThan2~1_combout\);

-- Location: LCCOMB_X28_Y25_N6
\PWM2_FC01|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~0_combout\ = (\PWM2_FC01|var_Dead_Count2\(0) & (\PWM2_FC01|LessThan2~1_combout\ $ (VCC))) # (!\PWM2_FC01|var_Dead_Count2\(0) & (\PWM2_FC01|LessThan2~1_combout\ & VCC))
-- \PWM2_FC01|Add1~1\ = CARRY((\PWM2_FC01|var_Dead_Count2\(0) & \PWM2_FC01|LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|var_Dead_Count2\(0),
	datab => \PWM2_FC01|LessThan2~1_combout\,
	datad => VCC,
	combout => \PWM2_FC01|Add1~0_combout\,
	cout => \PWM2_FC01|Add1~1\);

-- Location: LCCOMB_X27_Y25_N12
\PWM2_FC01|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~18_combout\ = (!\PWM2_FC01|comp_out~q\ & \PWM2_FC01|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC01|comp_out~q\,
	datad => \PWM2_FC01|Add1~0_combout\,
	combout => \PWM2_FC01|Add1~18_combout\);

-- Location: FF_X27_Y25_N13
\PWM2_FC01|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count2\(0));

-- Location: LCCOMB_X28_Y25_N8
\PWM2_FC01|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~2_combout\ = (\PWM2_FC01|var_Dead_Count2\(1) & (!\PWM2_FC01|Add1~1\)) # (!\PWM2_FC01|var_Dead_Count2\(1) & ((\PWM2_FC01|Add1~1\) # (GND)))
-- \PWM2_FC01|Add1~3\ = CARRY((!\PWM2_FC01|Add1~1\) # (!\PWM2_FC01|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM2_FC01|Add1~1\,
	combout => \PWM2_FC01|Add1~2_combout\,
	cout => \PWM2_FC01|Add1~3\);

-- Location: LCCOMB_X28_Y25_N24
\PWM2_FC01|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add1~19_combout\ = (\PWM2_FC01|Add1~2_combout\ & !\PWM2_FC01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|Add1~2_combout\,
	datad => \PWM2_FC01|comp_out~q\,
	combout => \PWM2_FC01|Add1~19_combout\);

-- Location: FF_X28_Y25_N25
\PWM2_FC01|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count2\(1));

-- Location: LCCOMB_X27_Y25_N24
\PWM2_FC01|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Equal1~0_combout\ = (!\PWM2_FC01|comp_out~q\ & (\PWM2_FC01|Add1~4_combout\ & (\PWM2_FC01|Add1~2_combout\ & \PWM2_FC01|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|comp_out~q\,
	datab => \PWM2_FC01|Add1~4_combout\,
	datac => \PWM2_FC01|Add1~2_combout\,
	datad => \PWM2_FC01|Add1~0_combout\,
	combout => \PWM2_FC01|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y25_N22
\PWM2_FC01|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Equal1~1_combout\ = (!\PWM2_FC01|Add1~15_combout\ & (\PWM2_FC01|Add1~8_combout\ & (!\PWM2_FC01|Add1~16_combout\ & !\PWM2_FC01|Add1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|Add1~15_combout\,
	datab => \PWM2_FC01|Add1~8_combout\,
	datac => \PWM2_FC01|Add1~16_combout\,
	datad => \PWM2_FC01|Add1~17_combout\,
	combout => \PWM2_FC01|Equal1~1_combout\);

-- Location: LCCOMB_X27_Y25_N0
\PWM2_FC01|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|port_PWM02~0_combout\ = (\PWM2_FC01|comp_out~q\ & (\PWM2_FC01|Equal1~0_combout\ & ((\PWM2_FC01|Equal1~1_combout\)))) # (!\PWM2_FC01|comp_out~q\ & ((\PWM2_FC01|port_PWM02~q\) # ((\PWM2_FC01|Equal1~0_combout\ & \PWM2_FC01|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|comp_out~q\,
	datab => \PWM2_FC01|Equal1~0_combout\,
	datac => \PWM2_FC01|port_PWM02~q\,
	datad => \PWM2_FC01|Equal1~1_combout\,
	combout => \PWM2_FC01|port_PWM02~0_combout\);

-- Location: FF_X27_Y25_N1
\PWM2_FC01|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|port_PWM02~q\);

-- Location: LCCOMB_X31_Y28_N30
\PWM2_FC02|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|LessThan0~0_combout\ = (\ucr4|c_int\(3)) # ((\ucr4|c_int\(1)) # ((!\ucr4|c_int\(2)) # (!\ucr5|c_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(3),
	datab => \ucr4|c_int\(1),
	datac => \ucr5|c_int\(0),
	datad => \ucr4|c_int\(2),
	combout => \PWM2_FC02|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y28_N0
\PWM2_FC02|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|LessThan0~1_combout\ = (\ucr4|c_int\(6)) # ((\ucr4|c_int\(5)) # ((\ucr4|c_int\(4)) # (!\ucr4|c_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr4|c_int\(6),
	datab => \ucr4|c_int\(5),
	datac => \ucr4|c_int\(4),
	datad => \ucr4|c_int\(7),
	combout => \PWM2_FC02|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y28_N10
\PWM2_FC02|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|LessThan0~2_combout\ = (\ucr4|c_int\(9)) # ((\ucr4|c_int\(8) & ((\PWM2_FC02|LessThan0~0_combout\) # (\PWM2_FC02|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|LessThan0~0_combout\,
	datab => \ucr4|c_int\(9),
	datac => \ucr4|c_int\(8),
	datad => \PWM2_FC02|LessThan0~1_combout\,
	combout => \PWM2_FC02|LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y28_N22
\PWM2_FC02|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|LessThan0~3_combout\ = ((\ucr4|c_int\(10)) # ((\ucr4|c_int\(11)) # (!\PWM2_FC02|LessThan0~2_combout\))) # (!\PWM2_FB02|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FB02|LessThan0~0_combout\,
	datab => \ucr4|c_int\(10),
	datac => \ucr4|c_int\(11),
	datad => \PWM2_FC02|LessThan0~2_combout\,
	combout => \PWM2_FC02|LessThan0~3_combout\);

-- Location: FF_X31_Y28_N23
\PWM2_FC02|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|comp_out~q\);

-- Location: LCCOMB_X31_Y30_N26
\PWM2_FC02|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~19_combout\ = (!\PWM2_FC02|comp_out~q\ & \PWM2_FC02|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC02|comp_out~q\,
	datad => \PWM2_FC02|Add1~2_combout\,
	combout => \PWM2_FC02|Add1~19_combout\);

-- Location: FF_X31_Y30_N27
\PWM2_FC02|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count2\(1));

-- Location: LCCOMB_X31_Y30_N10
\PWM2_FC02|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~2_combout\ = (\PWM2_FC02|var_Dead_Count2\(1) & (!\PWM2_FC02|Add1~1\)) # (!\PWM2_FC02|var_Dead_Count2\(1) & ((\PWM2_FC02|Add1~1\) # (GND)))
-- \PWM2_FC02|Add1~3\ = CARRY((!\PWM2_FC02|Add1~1\) # (!\PWM2_FC02|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM2_FC02|Add1~1\,
	combout => \PWM2_FC02|Add1~2_combout\,
	cout => \PWM2_FC02|Add1~3\);

-- Location: LCCOMB_X31_Y30_N12
\PWM2_FC02|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~4_combout\ = (\PWM2_FC02|var_Dead_Count2\(2) & (\PWM2_FC02|Add1~3\ $ (GND))) # (!\PWM2_FC02|var_Dead_Count2\(2) & (!\PWM2_FC02|Add1~3\ & VCC))
-- \PWM2_FC02|Add1~5\ = CARRY((\PWM2_FC02|var_Dead_Count2\(2) & !\PWM2_FC02|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM2_FC02|Add1~3\,
	combout => \PWM2_FC02|Add1~4_combout\,
	cout => \PWM2_FC02|Add1~5\);

-- Location: LCCOMB_X31_Y28_N12
\PWM2_FC02|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~20_combout\ = (!\PWM2_FC02|comp_out~q\ & \PWM2_FC02|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC02|comp_out~q\,
	datad => \PWM2_FC02|Add1~4_combout\,
	combout => \PWM2_FC02|Add1~20_combout\);

-- Location: FF_X31_Y28_N13
\PWM2_FC02|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count2\(2));

-- Location: LCCOMB_X31_Y30_N14
\PWM2_FC02|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~6_combout\ = (\PWM2_FC02|var_Dead_Count2\(3) & (!\PWM2_FC02|Add1~5\)) # (!\PWM2_FC02|var_Dead_Count2\(3) & ((\PWM2_FC02|Add1~5\) # (GND)))
-- \PWM2_FC02|Add1~7\ = CARRY((!\PWM2_FC02|Add1~5\) # (!\PWM2_FC02|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC02|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM2_FC02|Add1~5\,
	combout => \PWM2_FC02|Add1~6_combout\,
	cout => \PWM2_FC02|Add1~7\);

-- Location: LCCOMB_X31_Y30_N4
\PWM2_FC02|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~8_combout\ = (!\PWM2_FC02|comp_out~q\ & \PWM2_FC02|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC02|comp_out~q\,
	datac => \PWM2_FC02|Add1~6_combout\,
	combout => \PWM2_FC02|Add1~8_combout\);

-- Location: FF_X31_Y30_N5
\PWM2_FC02|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count2\(3));

-- Location: LCCOMB_X31_Y30_N16
\PWM2_FC02|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~9_combout\ = (\PWM2_FC02|var_Dead_Count2\(4) & (\PWM2_FC02|Add1~7\ $ (GND))) # (!\PWM2_FC02|var_Dead_Count2\(4) & (!\PWM2_FC02|Add1~7\ & VCC))
-- \PWM2_FC02|Add1~10\ = CARRY((\PWM2_FC02|var_Dead_Count2\(4) & !\PWM2_FC02|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC02|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM2_FC02|Add1~7\,
	combout => \PWM2_FC02|Add1~9_combout\,
	cout => \PWM2_FC02|Add1~10\);

-- Location: LCCOMB_X31_Y30_N30
\PWM2_FC02|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~16_combout\ = (!\PWM2_FC02|comp_out~q\ & \PWM2_FC02|Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC02|comp_out~q\,
	datad => \PWM2_FC02|Add1~9_combout\,
	combout => \PWM2_FC02|Add1~16_combout\);

-- Location: FF_X31_Y30_N31
\PWM2_FC02|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count2\(4));

-- Location: LCCOMB_X31_Y30_N18
\PWM2_FC02|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~11_combout\ = (\PWM2_FC02|var_Dead_Count2\(5) & (!\PWM2_FC02|Add1~10\)) # (!\PWM2_FC02|var_Dead_Count2\(5) & ((\PWM2_FC02|Add1~10\) # (GND)))
-- \PWM2_FC02|Add1~12\ = CARRY((!\PWM2_FC02|Add1~10\) # (!\PWM2_FC02|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM2_FC02|Add1~10\,
	combout => \PWM2_FC02|Add1~11_combout\,
	cout => \PWM2_FC02|Add1~12\);

-- Location: LCCOMB_X31_Y30_N24
\PWM2_FC02|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~17_combout\ = (!\PWM2_FC02|comp_out~q\ & \PWM2_FC02|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC02|comp_out~q\,
	datad => \PWM2_FC02|Add1~11_combout\,
	combout => \PWM2_FC02|Add1~17_combout\);

-- Location: FF_X31_Y30_N25
\PWM2_FC02|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count2\(5));

-- Location: LCCOMB_X31_Y30_N20
\PWM2_FC02|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~13_combout\ = \PWM2_FC02|Add1~12\ $ (!\PWM2_FC02|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FC02|var_Dead_Count2\(6),
	cin => \PWM2_FC02|Add1~12\,
	combout => \PWM2_FC02|Add1~13_combout\);

-- Location: LCCOMB_X31_Y30_N2
\PWM2_FC02|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~15_combout\ = (!\PWM2_FC02|comp_out~q\ & \PWM2_FC02|Add1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC02|comp_out~q\,
	datad => \PWM2_FC02|Add1~13_combout\,
	combout => \PWM2_FC02|Add1~15_combout\);

-- Location: FF_X31_Y30_N3
\PWM2_FC02|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count2\(6));

-- Location: LCCOMB_X31_Y30_N8
\PWM2_FC02|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~0_combout\ = (\PWM2_FC02|LessThan2~1_combout\ & (\PWM2_FC02|var_Dead_Count2\(0) $ (VCC))) # (!\PWM2_FC02|LessThan2~1_combout\ & (\PWM2_FC02|var_Dead_Count2\(0) & VCC))
-- \PWM2_FC02|Add1~1\ = CARRY((\PWM2_FC02|LessThan2~1_combout\ & \PWM2_FC02|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|LessThan2~1_combout\,
	datab => \PWM2_FC02|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM2_FC02|Add1~0_combout\,
	cout => \PWM2_FC02|Add1~1\);

-- Location: LCCOMB_X31_Y30_N0
\PWM2_FC02|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add1~18_combout\ = (!\PWM2_FC02|comp_out~q\ & \PWM2_FC02|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC02|comp_out~q\,
	datac => \PWM2_FC02|Add1~0_combout\,
	combout => \PWM2_FC02|Add1~18_combout\);

-- Location: FF_X31_Y30_N1
\PWM2_FC02|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count2\(0));

-- Location: LCCOMB_X31_Y30_N22
\PWM2_FC02|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|LessThan2~0_combout\ = (((!\PWM2_FC02|var_Dead_Count2\(0)) # (!\PWM2_FC02|var_Dead_Count2\(1))) # (!\PWM2_FC02|var_Dead_Count2\(3))) # (!\PWM2_FC02|var_Dead_Count2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|var_Dead_Count2\(2),
	datab => \PWM2_FC02|var_Dead_Count2\(3),
	datac => \PWM2_FC02|var_Dead_Count2\(1),
	datad => \PWM2_FC02|var_Dead_Count2\(0),
	combout => \PWM2_FC02|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y30_N28
\PWM2_FC02|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|LessThan2~1_combout\ = (!\PWM2_FC02|var_Dead_Count2\(5) & (!\PWM2_FC02|var_Dead_Count2\(6) & (\PWM2_FC02|LessThan2~0_combout\ & !\PWM2_FC02|var_Dead_Count2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|var_Dead_Count2\(5),
	datab => \PWM2_FC02|var_Dead_Count2\(6),
	datac => \PWM2_FC02|LessThan2~0_combout\,
	datad => \PWM2_FC02|var_Dead_Count2\(4),
	combout => \PWM2_FC02|LessThan2~1_combout\);

-- Location: LCCOMB_X31_Y28_N24
\PWM2_FC02|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Equal1~0_combout\ = (\PWM2_FC02|Add1~2_combout\ & (\PWM2_FC02|Add1~4_combout\ & (!\PWM2_FC02|comp_out~q\ & \PWM2_FC02|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|Add1~2_combout\,
	datab => \PWM2_FC02|Add1~4_combout\,
	datac => \PWM2_FC02|comp_out~q\,
	datad => \PWM2_FC02|Add1~0_combout\,
	combout => \PWM2_FC02|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y30_N6
\PWM2_FC02|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Equal1~1_combout\ = (!\PWM2_FC02|Add1~15_combout\ & (!\PWM2_FC02|Add1~17_combout\ & (!\PWM2_FC02|Add1~16_combout\ & \PWM2_FC02|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|Add1~15_combout\,
	datab => \PWM2_FC02|Add1~17_combout\,
	datac => \PWM2_FC02|Add1~16_combout\,
	datad => \PWM2_FC02|Add1~8_combout\,
	combout => \PWM2_FC02|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y28_N8
\PWM2_FC02|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|port_PWM02~0_combout\ = (\PWM2_FC02|comp_out~q\ & (\PWM2_FC02|Equal1~0_combout\ & ((\PWM2_FC02|Equal1~1_combout\)))) # (!\PWM2_FC02|comp_out~q\ & ((\PWM2_FC02|port_PWM02~q\) # ((\PWM2_FC02|Equal1~0_combout\ & \PWM2_FC02|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|comp_out~q\,
	datab => \PWM2_FC02|Equal1~0_combout\,
	datac => \PWM2_FC02|port_PWM02~q\,
	datad => \PWM2_FC02|Equal1~1_combout\,
	combout => \PWM2_FC02|port_PWM02~0_combout\);

-- Location: FF_X31_Y28_N9
\PWM2_FC02|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|port_PWM02~q\);

-- Location: LCCOMB_X24_Y21_N8
\PWM2_FC03|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|LessThan0~0_combout\ = (\ucr6|c_int\(4)) # ((\ucr6|c_int\(7)) # ((\ucr6|c_int\(5)) # (!\ucr6|c_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(4),
	datab => \ucr6|c_int\(7),
	datac => \ucr6|c_int\(5),
	datad => \ucr6|c_int\(6),
	combout => \PWM2_FC03|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y21_N18
\PWM2_FC03|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|LessThan0~2_combout\ = (\ucr6|c_int\(8) & ((\ucr6|c_int\(3)) # ((\PWM2_FC03|LessThan0~0_combout\) # (!\PWM2_FC03|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(3),
	datab => \PWM2_FC03|LessThan0~1_combout\,
	datac => \PWM2_FC03|LessThan0~0_combout\,
	datad => \ucr6|c_int\(8),
	combout => \PWM2_FC03|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y21_N2
\PWM2_FC03|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|LessThan0~3_combout\ = (\ucr6|c_int\(10)) # (((\ucr6|c_int\(9) & !\PWM2_FC03|LessThan0~2_combout\)) # (!\PWM2_FB03|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucr6|c_int\(9),
	datab => \ucr6|c_int\(10),
	datac => \PWM2_FB03|LessThan0~5_combout\,
	datad => \PWM2_FC03|LessThan0~2_combout\,
	combout => \PWM2_FC03|LessThan0~3_combout\);

-- Location: FF_X24_Y21_N3
\PWM2_FC03|comp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|comp_out~q\);

-- Location: LCCOMB_X27_Y21_N2
\PWM2_FC03|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~19_combout\ = (!\PWM2_FC03|comp_out~q\ & \PWM2_FC03|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|comp_out~q\,
	datad => \PWM2_FC03|Add1~2_combout\,
	combout => \PWM2_FC03|Add1~19_combout\);

-- Location: FF_X27_Y21_N3
\PWM2_FC03|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count2\(1));

-- Location: LCCOMB_X27_Y21_N16
\PWM2_FC03|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~2_combout\ = (\PWM2_FC03|var_Dead_Count2\(1) & (!\PWM2_FC03|Add1~1\)) # (!\PWM2_FC03|var_Dead_Count2\(1) & ((\PWM2_FC03|Add1~1\) # (GND)))
-- \PWM2_FC03|Add1~3\ = CARRY((!\PWM2_FC03|Add1~1\) # (!\PWM2_FC03|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC03|var_Dead_Count2\(1),
	datad => VCC,
	cin => \PWM2_FC03|Add1~1\,
	combout => \PWM2_FC03|Add1~2_combout\,
	cout => \PWM2_FC03|Add1~3\);

-- Location: LCCOMB_X27_Y21_N18
\PWM2_FC03|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~4_combout\ = (\PWM2_FC03|var_Dead_Count2\(2) & (\PWM2_FC03|Add1~3\ $ (GND))) # (!\PWM2_FC03|var_Dead_Count2\(2) & (!\PWM2_FC03|Add1~3\ & VCC))
-- \PWM2_FC03|Add1~5\ = CARRY((\PWM2_FC03|var_Dead_Count2\(2) & !\PWM2_FC03|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|var_Dead_Count2\(2),
	datad => VCC,
	cin => \PWM2_FC03|Add1~3\,
	combout => \PWM2_FC03|Add1~4_combout\,
	cout => \PWM2_FC03|Add1~5\);

-- Location: LCCOMB_X26_Y21_N12
\PWM2_FC03|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~20_combout\ = (!\PWM2_FC03|comp_out~q\ & \PWM2_FC03|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC03|comp_out~q\,
	datad => \PWM2_FC03|Add1~4_combout\,
	combout => \PWM2_FC03|Add1~20_combout\);

-- Location: FF_X26_Y21_N13
\PWM2_FC03|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count2\(2));

-- Location: LCCOMB_X27_Y21_N20
\PWM2_FC03|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~6_combout\ = (\PWM2_FC03|var_Dead_Count2\(3) & (!\PWM2_FC03|Add1~5\)) # (!\PWM2_FC03|var_Dead_Count2\(3) & ((\PWM2_FC03|Add1~5\) # (GND)))
-- \PWM2_FC03|Add1~7\ = CARRY((!\PWM2_FC03|Add1~5\) # (!\PWM2_FC03|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC03|var_Dead_Count2\(3),
	datad => VCC,
	cin => \PWM2_FC03|Add1~5\,
	combout => \PWM2_FC03|Add1~6_combout\,
	cout => \PWM2_FC03|Add1~7\);

-- Location: LCCOMB_X27_Y21_N4
\PWM2_FC03|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~8_combout\ = (!\PWM2_FC03|comp_out~q\ & \PWM2_FC03|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|comp_out~q\,
	datad => \PWM2_FC03|Add1~6_combout\,
	combout => \PWM2_FC03|Add1~8_combout\);

-- Location: FF_X27_Y21_N5
\PWM2_FC03|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count2\(3));

-- Location: LCCOMB_X27_Y21_N14
\PWM2_FC03|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~0_combout\ = (\PWM2_FC03|LessThan2~1_combout\ & (\PWM2_FC03|var_Dead_Count2\(0) $ (VCC))) # (!\PWM2_FC03|LessThan2~1_combout\ & (\PWM2_FC03|var_Dead_Count2\(0) & VCC))
-- \PWM2_FC03|Add1~1\ = CARRY((\PWM2_FC03|LessThan2~1_combout\ & \PWM2_FC03|var_Dead_Count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|LessThan2~1_combout\,
	datab => \PWM2_FC03|var_Dead_Count2\(0),
	datad => VCC,
	combout => \PWM2_FC03|Add1~0_combout\,
	cout => \PWM2_FC03|Add1~1\);

-- Location: LCCOMB_X27_Y21_N0
\PWM2_FC03|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~18_combout\ = (\PWM2_FC03|Add1~0_combout\ & !\PWM2_FC03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC03|Add1~0_combout\,
	datad => \PWM2_FC03|comp_out~q\,
	combout => \PWM2_FC03|Add1~18_combout\);

-- Location: FF_X27_Y21_N1
\PWM2_FC03|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count2\(0));

-- Location: LCCOMB_X27_Y21_N30
\PWM2_FC03|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|LessThan2~0_combout\ = (((!\PWM2_FC03|var_Dead_Count2\(0)) # (!\PWM2_FC03|var_Dead_Count2\(3))) # (!\PWM2_FC03|var_Dead_Count2\(1))) # (!\PWM2_FC03|var_Dead_Count2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|var_Dead_Count2\(2),
	datab => \PWM2_FC03|var_Dead_Count2\(1),
	datac => \PWM2_FC03|var_Dead_Count2\(3),
	datad => \PWM2_FC03|var_Dead_Count2\(0),
	combout => \PWM2_FC03|LessThan2~0_combout\);

-- Location: LCCOMB_X27_Y21_N22
\PWM2_FC03|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~9_combout\ = (\PWM2_FC03|var_Dead_Count2\(4) & (\PWM2_FC03|Add1~7\ $ (GND))) # (!\PWM2_FC03|var_Dead_Count2\(4) & (!\PWM2_FC03|Add1~7\ & VCC))
-- \PWM2_FC03|Add1~10\ = CARRY((\PWM2_FC03|var_Dead_Count2\(4) & !\PWM2_FC03|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC03|var_Dead_Count2\(4),
	datad => VCC,
	cin => \PWM2_FC03|Add1~7\,
	combout => \PWM2_FC03|Add1~9_combout\,
	cout => \PWM2_FC03|Add1~10\);

-- Location: LCCOMB_X27_Y21_N8
\PWM2_FC03|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~16_combout\ = (\PWM2_FC03|Add1~9_combout\ & !\PWM2_FC03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC03|Add1~9_combout\,
	datad => \PWM2_FC03|comp_out~q\,
	combout => \PWM2_FC03|Add1~16_combout\);

-- Location: FF_X27_Y21_N9
\PWM2_FC03|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count2\(4));

-- Location: LCCOMB_X27_Y21_N24
\PWM2_FC03|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~11_combout\ = (\PWM2_FC03|var_Dead_Count2\(5) & (!\PWM2_FC03|Add1~10\)) # (!\PWM2_FC03|var_Dead_Count2\(5) & ((\PWM2_FC03|Add1~10\) # (GND)))
-- \PWM2_FC03|Add1~12\ = CARRY((!\PWM2_FC03|Add1~10\) # (!\PWM2_FC03|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|var_Dead_Count2\(5),
	datad => VCC,
	cin => \PWM2_FC03|Add1~10\,
	combout => \PWM2_FC03|Add1~11_combout\,
	cout => \PWM2_FC03|Add1~12\);

-- Location: LCCOMB_X27_Y21_N10
\PWM2_FC03|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~17_combout\ = (!\PWM2_FC03|comp_out~q\ & \PWM2_FC03|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|comp_out~q\,
	datad => \PWM2_FC03|Add1~11_combout\,
	combout => \PWM2_FC03|Add1~17_combout\);

-- Location: FF_X27_Y21_N11
\PWM2_FC03|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count2\(5));

-- Location: LCCOMB_X27_Y21_N26
\PWM2_FC03|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~13_combout\ = \PWM2_FC03|Add1~12\ $ (!\PWM2_FC03|var_Dead_Count2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FC03|var_Dead_Count2\(6),
	cin => \PWM2_FC03|Add1~12\,
	combout => \PWM2_FC03|Add1~13_combout\);

-- Location: LCCOMB_X27_Y21_N28
\PWM2_FC03|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add1~15_combout\ = (\PWM2_FC03|Add1~13_combout\ & !\PWM2_FC03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC03|Add1~13_combout\,
	datad => \PWM2_FC03|comp_out~q\,
	combout => \PWM2_FC03|Add1~15_combout\);

-- Location: FF_X27_Y21_N29
\PWM2_FC03|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count2\(6));

-- Location: LCCOMB_X27_Y21_N12
\PWM2_FC03|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|LessThan2~1_combout\ = (\PWM2_FC03|LessThan2~0_combout\ & (!\PWM2_FC03|var_Dead_Count2\(6) & (!\PWM2_FC03|var_Dead_Count2\(4) & !\PWM2_FC03|var_Dead_Count2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|LessThan2~0_combout\,
	datab => \PWM2_FC03|var_Dead_Count2\(6),
	datac => \PWM2_FC03|var_Dead_Count2\(4),
	datad => \PWM2_FC03|var_Dead_Count2\(5),
	combout => \PWM2_FC03|LessThan2~1_combout\);

-- Location: LCCOMB_X26_Y21_N6
\PWM2_FC03|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Equal1~0_combout\ = (!\PWM2_FC03|comp_out~q\ & (\PWM2_FC03|Add1~2_combout\ & (\PWM2_FC03|Add1~0_combout\ & \PWM2_FC03|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|comp_out~q\,
	datab => \PWM2_FC03|Add1~2_combout\,
	datac => \PWM2_FC03|Add1~0_combout\,
	datad => \PWM2_FC03|Add1~4_combout\,
	combout => \PWM2_FC03|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y21_N6
\PWM2_FC03|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Equal1~1_combout\ = (\PWM2_FC03|Add1~8_combout\ & (!\PWM2_FC03|Add1~15_combout\ & (!\PWM2_FC03|Add1~17_combout\ & !\PWM2_FC03|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|Add1~8_combout\,
	datab => \PWM2_FC03|Add1~15_combout\,
	datac => \PWM2_FC03|Add1~17_combout\,
	datad => \PWM2_FC03|Add1~16_combout\,
	combout => \PWM2_FC03|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y21_N16
\PWM2_FC03|port_PWM02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|port_PWM02~0_combout\ = (\PWM2_FC03|Equal1~0_combout\ & ((\PWM2_FC03|Equal1~1_combout\) # ((!\PWM2_FC03|comp_out~q\ & \PWM2_FC03|port_PWM02~q\)))) # (!\PWM2_FC03|Equal1~0_combout\ & (!\PWM2_FC03|comp_out~q\ & (\PWM2_FC03|port_PWM02~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|Equal1~0_combout\,
	datab => \PWM2_FC03|comp_out~q\,
	datac => \PWM2_FC03|port_PWM02~q\,
	datad => \PWM2_FC03|Equal1~1_combout\,
	combout => \PWM2_FC03|port_PWM02~0_combout\);

-- Location: FF_X26_Y21_N17
\PWM2_FC03|port_PWM02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|port_PWM02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|port_PWM02~q\);

-- Location: LCCOMB_X27_Y24_N2
\PWM2_FC01|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~17_combout\ = (\PWM2_FC01|comp_out~q\ & \PWM2_FC01|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC01|comp_out~q\,
	datad => \PWM2_FC01|Add0~4_combout\,
	combout => \PWM2_FC01|Add0~17_combout\);

-- Location: FF_X27_Y24_N3
\PWM2_FC01|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count1\(2));

-- Location: LCCOMB_X27_Y24_N12
\PWM2_FC01|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~4_combout\ = (\PWM2_FC01|var_Dead_Count1\(2) & (\PWM2_FC01|Add0~3\ $ (GND))) # (!\PWM2_FC01|var_Dead_Count1\(2) & (!\PWM2_FC01|Add0~3\ & VCC))
-- \PWM2_FC01|Add0~5\ = CARRY((\PWM2_FC01|var_Dead_Count1\(2) & !\PWM2_FC01|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM2_FC01|Add0~3\,
	combout => \PWM2_FC01|Add0~4_combout\,
	cout => \PWM2_FC01|Add0~5\);

-- Location: LCCOMB_X27_Y24_N14
\PWM2_FC01|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~6_combout\ = (\PWM2_FC01|var_Dead_Count1\(3) & (!\PWM2_FC01|Add0~5\)) # (!\PWM2_FC01|var_Dead_Count1\(3) & ((\PWM2_FC01|Add0~5\) # (GND)))
-- \PWM2_FC01|Add0~7\ = CARRY((!\PWM2_FC01|Add0~5\) # (!\PWM2_FC01|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM2_FC01|Add0~5\,
	combout => \PWM2_FC01|Add0~6_combout\,
	cout => \PWM2_FC01|Add0~7\);

-- Location: LCCOMB_X27_Y24_N4
\PWM2_FC01|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~12_combout\ = (\PWM2_FC01|Add0~6_combout\ & \PWM2_FC01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|Add0~6_combout\,
	datac => \PWM2_FC01|comp_out~q\,
	combout => \PWM2_FC01|Add0~12_combout\);

-- Location: FF_X27_Y24_N5
\PWM2_FC01|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count1\(3));

-- Location: LCCOMB_X27_Y24_N16
\PWM2_FC01|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~8_combout\ = (\PWM2_FC01|var_Dead_Count1\(4) & (\PWM2_FC01|Add0~7\ $ (GND))) # (!\PWM2_FC01|var_Dead_Count1\(4) & (!\PWM2_FC01|Add0~7\ & VCC))
-- \PWM2_FC01|Add0~9\ = CARRY((\PWM2_FC01|var_Dead_Count1\(4) & !\PWM2_FC01|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM2_FC01|Add0~7\,
	combout => \PWM2_FC01|Add0~8_combout\,
	cout => \PWM2_FC01|Add0~9\);

-- Location: LCCOMB_X27_Y24_N6
\PWM2_FC01|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~18_combout\ = (\PWM2_FC01|comp_out~q\ & \PWM2_FC01|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC01|comp_out~q\,
	datad => \PWM2_FC01|Add0~8_combout\,
	combout => \PWM2_FC01|Add0~18_combout\);

-- Location: FF_X27_Y24_N7
\PWM2_FC01|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count1\(4));

-- Location: LCCOMB_X27_Y24_N18
\PWM2_FC01|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~10_combout\ = (\PWM2_FC01|var_Dead_Count1\(5) & (!\PWM2_FC01|Add0~9\)) # (!\PWM2_FC01|var_Dead_Count1\(5) & ((\PWM2_FC01|Add0~9\) # (GND)))
-- \PWM2_FC01|Add0~11\ = CARRY((!\PWM2_FC01|Add0~9\) # (!\PWM2_FC01|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM2_FC01|Add0~9\,
	combout => \PWM2_FC01|Add0~10_combout\,
	cout => \PWM2_FC01|Add0~11\);

-- Location: LCCOMB_X27_Y24_N24
\PWM2_FC01|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~19_combout\ = (\PWM2_FC01|comp_out~q\ & \PWM2_FC01|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC01|comp_out~q\,
	datad => \PWM2_FC01|Add0~10_combout\,
	combout => \PWM2_FC01|Add0~19_combout\);

-- Location: FF_X27_Y24_N25
\PWM2_FC01|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count1\(5));

-- Location: LCCOMB_X27_Y24_N20
\PWM2_FC01|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~13_combout\ = \PWM2_FC01|var_Dead_Count1\(6) $ (!\PWM2_FC01|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|var_Dead_Count1\(6),
	cin => \PWM2_FC01|Add0~11\,
	combout => \PWM2_FC01|Add0~13_combout\);

-- Location: LCCOMB_X27_Y24_N26
\PWM2_FC01|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~20_combout\ = (\PWM2_FC01|comp_out~q\ & \PWM2_FC01|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC01|comp_out~q\,
	datad => \PWM2_FC01|Add0~13_combout\,
	combout => \PWM2_FC01|Add0~20_combout\);

-- Location: FF_X27_Y24_N27
\PWM2_FC01|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count1\(6));

-- Location: LCCOMB_X27_Y24_N8
\PWM2_FC01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~0_combout\ = (\PWM2_FC01|LessThan1~1_combout\ & (\PWM2_FC01|var_Dead_Count1\(0) $ (VCC))) # (!\PWM2_FC01|LessThan1~1_combout\ & (\PWM2_FC01|var_Dead_Count1\(0) & VCC))
-- \PWM2_FC01|Add0~1\ = CARRY((\PWM2_FC01|LessThan1~1_combout\ & \PWM2_FC01|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|LessThan1~1_combout\,
	datab => \PWM2_FC01|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM2_FC01|Add0~0_combout\,
	cout => \PWM2_FC01|Add0~1\);

-- Location: LCCOMB_X27_Y24_N0
\PWM2_FC01|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~15_combout\ = (\PWM2_FC01|Add0~0_combout\ & \PWM2_FC01|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC01|Add0~0_combout\,
	datac => \PWM2_FC01|comp_out~q\,
	combout => \PWM2_FC01|Add0~15_combout\);

-- Location: FF_X27_Y24_N1
\PWM2_FC01|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count1\(0));

-- Location: LCCOMB_X27_Y24_N30
\PWM2_FC01|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|LessThan1~0_combout\ = (((!\PWM2_FC01|var_Dead_Count1\(2)) # (!\PWM2_FC01|var_Dead_Count1\(3))) # (!\PWM2_FC01|var_Dead_Count1\(0))) # (!\PWM2_FC01|var_Dead_Count1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|var_Dead_Count1\(1),
	datab => \PWM2_FC01|var_Dead_Count1\(0),
	datac => \PWM2_FC01|var_Dead_Count1\(3),
	datad => \PWM2_FC01|var_Dead_Count1\(2),
	combout => \PWM2_FC01|LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y24_N28
\PWM2_FC01|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|LessThan1~1_combout\ = (!\PWM2_FC01|var_Dead_Count1\(6) & (!\PWM2_FC01|var_Dead_Count1\(5) & (\PWM2_FC01|LessThan1~0_combout\ & !\PWM2_FC01|var_Dead_Count1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|var_Dead_Count1\(6),
	datab => \PWM2_FC01|var_Dead_Count1\(5),
	datac => \PWM2_FC01|LessThan1~0_combout\,
	datad => \PWM2_FC01|var_Dead_Count1\(4),
	combout => \PWM2_FC01|LessThan1~1_combout\);

-- Location: LCCOMB_X27_Y24_N10
\PWM2_FC01|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~2_combout\ = (\PWM2_FC01|var_Dead_Count1\(1) & (!\PWM2_FC01|Add0~1\)) # (!\PWM2_FC01|var_Dead_Count1\(1) & ((\PWM2_FC01|Add0~1\) # (GND)))
-- \PWM2_FC01|Add0~3\ = CARRY((!\PWM2_FC01|Add0~1\) # (!\PWM2_FC01|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM2_FC01|Add0~1\,
	combout => \PWM2_FC01|Add0~2_combout\,
	cout => \PWM2_FC01|Add0~3\);

-- Location: LCCOMB_X27_Y25_N2
\PWM2_FC01|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|Add0~16_combout\ = (\PWM2_FC01|comp_out~q\ & \PWM2_FC01|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|comp_out~q\,
	datac => \PWM2_FC01|Add0~2_combout\,
	combout => \PWM2_FC01|Add0~16_combout\);

-- Location: FF_X27_Y25_N3
\PWM2_FC01|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|var_Dead_Count1\(1));

-- Location: LCCOMB_X27_Y25_N28
\PWM2_FC01|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|port_PWM01~0_combout\ = (\PWM2_FC01|Add0~4_combout\ & (\PWM2_FC01|Add0~2_combout\ & (\PWM2_FC01|comp_out~q\ & \PWM2_FC01|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|Add0~4_combout\,
	datab => \PWM2_FC01|Add0~2_combout\,
	datac => \PWM2_FC01|comp_out~q\,
	datad => \PWM2_FC01|Add0~0_combout\,
	combout => \PWM2_FC01|port_PWM01~0_combout\);

-- Location: LCCOMB_X27_Y24_N22
\PWM2_FC01|port_PWM01~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|port_PWM01~1_combout\ = (!\PWM2_FC01|Add0~10_combout\ & (!\PWM2_FC01|Add0~8_combout\ & (\PWM2_FC01|Add0~12_combout\ & !\PWM2_FC01|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|Add0~10_combout\,
	datab => \PWM2_FC01|Add0~8_combout\,
	datac => \PWM2_FC01|Add0~12_combout\,
	datad => \PWM2_FC01|Add0~13_combout\,
	combout => \PWM2_FC01|port_PWM01~1_combout\);

-- Location: LCCOMB_X27_Y25_N26
\PWM2_FC01|port_PWM01~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC01|port_PWM01~2_combout\ = (\PWM2_FC01|comp_out~q\ & ((\PWM2_FC01|port_PWM01~q\) # ((\PWM2_FC01|port_PWM01~0_combout\ & \PWM2_FC01|port_PWM01~1_combout\)))) # (!\PWM2_FC01|comp_out~q\ & (\PWM2_FC01|port_PWM01~0_combout\ & 
-- ((\PWM2_FC01|port_PWM01~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC01|comp_out~q\,
	datab => \PWM2_FC01|port_PWM01~0_combout\,
	datac => \PWM2_FC01|port_PWM01~q\,
	datad => \PWM2_FC01|port_PWM01~1_combout\,
	combout => \PWM2_FC01|port_PWM01~2_combout\);

-- Location: FF_X27_Y25_N27
\PWM2_FC01|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC01|port_PWM01~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC01|port_PWM01~q\);

-- Location: LCCOMB_X30_Y28_N14
\PWM2_FC02|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~18_combout\ = (\PWM2_FC02|Add0~0_combout\ & \PWM2_FC02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC02|Add0~0_combout\,
	datad => \PWM2_FC02|comp_out~q\,
	combout => \PWM2_FC02|Add0~18_combout\);

-- Location: FF_X30_Y28_N15
\PWM2_FC02|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count1\(0));

-- Location: LCCOMB_X30_Y28_N0
\PWM2_FC02|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~0_combout\ = (\PWM2_FC02|LessThan1~1_combout\ & (\PWM2_FC02|var_Dead_Count1\(0) $ (VCC))) # (!\PWM2_FC02|LessThan1~1_combout\ & (\PWM2_FC02|var_Dead_Count1\(0) & VCC))
-- \PWM2_FC02|Add0~1\ = CARRY((\PWM2_FC02|LessThan1~1_combout\ & \PWM2_FC02|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|LessThan1~1_combout\,
	datab => \PWM2_FC02|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM2_FC02|Add0~0_combout\,
	cout => \PWM2_FC02|Add0~1\);

-- Location: LCCOMB_X30_Y28_N2
\PWM2_FC02|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~2_combout\ = (\PWM2_FC02|var_Dead_Count1\(1) & (!\PWM2_FC02|Add0~1\)) # (!\PWM2_FC02|var_Dead_Count1\(1) & ((\PWM2_FC02|Add0~1\) # (GND)))
-- \PWM2_FC02|Add0~3\ = CARRY((!\PWM2_FC02|Add0~1\) # (!\PWM2_FC02|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC02|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM2_FC02|Add0~1\,
	combout => \PWM2_FC02|Add0~2_combout\,
	cout => \PWM2_FC02|Add0~3\);

-- Location: LCCOMB_X31_Y28_N18
\PWM2_FC02|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~19_combout\ = (\PWM2_FC02|comp_out~q\ & \PWM2_FC02|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC02|comp_out~q\,
	datad => \PWM2_FC02|Add0~2_combout\,
	combout => \PWM2_FC02|Add0~19_combout\);

-- Location: FF_X31_Y28_N19
\PWM2_FC02|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count1\(1));

-- Location: LCCOMB_X30_Y28_N4
\PWM2_FC02|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~4_combout\ = (\PWM2_FC02|var_Dead_Count1\(2) & (\PWM2_FC02|Add0~3\ $ (GND))) # (!\PWM2_FC02|var_Dead_Count1\(2) & (!\PWM2_FC02|Add0~3\ & VCC))
-- \PWM2_FC02|Add0~5\ = CARRY((\PWM2_FC02|var_Dead_Count1\(2) & !\PWM2_FC02|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM2_FC02|Add0~3\,
	combout => \PWM2_FC02|Add0~4_combout\,
	cout => \PWM2_FC02|Add0~5\);

-- Location: LCCOMB_X30_Y28_N24
\PWM2_FC02|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~20_combout\ = (\PWM2_FC02|Add0~4_combout\ & \PWM2_FC02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC02|Add0~4_combout\,
	datad => \PWM2_FC02|comp_out~q\,
	combout => \PWM2_FC02|Add0~20_combout\);

-- Location: FF_X30_Y28_N25
\PWM2_FC02|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count1\(2));

-- Location: LCCOMB_X30_Y28_N6
\PWM2_FC02|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~6_combout\ = (\PWM2_FC02|var_Dead_Count1\(3) & (!\PWM2_FC02|Add0~5\)) # (!\PWM2_FC02|var_Dead_Count1\(3) & ((\PWM2_FC02|Add0~5\) # (GND)))
-- \PWM2_FC02|Add0~7\ = CARRY((!\PWM2_FC02|Add0~5\) # (!\PWM2_FC02|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC02|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM2_FC02|Add0~5\,
	combout => \PWM2_FC02|Add0~6_combout\,
	cout => \PWM2_FC02|Add0~7\);

-- Location: LCCOMB_X30_Y28_N18
\PWM2_FC02|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~8_combout\ = (\PWM2_FC02|Add0~6_combout\ & \PWM2_FC02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|Add0~6_combout\,
	datad => \PWM2_FC02|comp_out~q\,
	combout => \PWM2_FC02|Add0~8_combout\);

-- Location: FF_X30_Y28_N19
\PWM2_FC02|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count1\(3));

-- Location: LCCOMB_X30_Y28_N8
\PWM2_FC02|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~9_combout\ = (\PWM2_FC02|var_Dead_Count1\(4) & (\PWM2_FC02|Add0~7\ $ (GND))) # (!\PWM2_FC02|var_Dead_Count1\(4) & (!\PWM2_FC02|Add0~7\ & VCC))
-- \PWM2_FC02|Add0~10\ = CARRY((\PWM2_FC02|var_Dead_Count1\(4) & !\PWM2_FC02|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC02|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM2_FC02|Add0~7\,
	combout => \PWM2_FC02|Add0~9_combout\,
	cout => \PWM2_FC02|Add0~10\);

-- Location: LCCOMB_X30_Y28_N30
\PWM2_FC02|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~16_combout\ = (\PWM2_FC02|Add0~9_combout\ & \PWM2_FC02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|Add0~9_combout\,
	datad => \PWM2_FC02|comp_out~q\,
	combout => \PWM2_FC02|Add0~16_combout\);

-- Location: FF_X30_Y28_N31
\PWM2_FC02|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count1\(4));

-- Location: LCCOMB_X30_Y28_N10
\PWM2_FC02|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~11_combout\ = (\PWM2_FC02|var_Dead_Count1\(5) & (!\PWM2_FC02|Add0~10\)) # (!\PWM2_FC02|var_Dead_Count1\(5) & ((\PWM2_FC02|Add0~10\) # (GND)))
-- \PWM2_FC02|Add0~12\ = CARRY((!\PWM2_FC02|Add0~10\) # (!\PWM2_FC02|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM2_FC02|Add0~10\,
	combout => \PWM2_FC02|Add0~11_combout\,
	cout => \PWM2_FC02|Add0~12\);

-- Location: LCCOMB_X30_Y28_N16
\PWM2_FC02|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~17_combout\ = (\PWM2_FC02|Add0~11_combout\ & \PWM2_FC02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|Add0~11_combout\,
	datad => \PWM2_FC02|comp_out~q\,
	combout => \PWM2_FC02|Add0~17_combout\);

-- Location: FF_X30_Y28_N17
\PWM2_FC02|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count1\(5));

-- Location: LCCOMB_X30_Y28_N12
\PWM2_FC02|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~13_combout\ = \PWM2_FC02|var_Dead_Count1\(6) $ (!\PWM2_FC02|Add0~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|var_Dead_Count1\(6),
	cin => \PWM2_FC02|Add0~12\,
	combout => \PWM2_FC02|Add0~13_combout\);

-- Location: LCCOMB_X30_Y28_N26
\PWM2_FC02|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Add0~15_combout\ = (\PWM2_FC02|Add0~13_combout\ & \PWM2_FC02|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC02|Add0~13_combout\,
	datad => \PWM2_FC02|comp_out~q\,
	combout => \PWM2_FC02|Add0~15_combout\);

-- Location: FF_X30_Y28_N27
\PWM2_FC02|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|var_Dead_Count1\(6));

-- Location: LCCOMB_X30_Y28_N20
\PWM2_FC02|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|LessThan1~0_combout\ = (((!\PWM2_FC02|var_Dead_Count1\(1)) # (!\PWM2_FC02|var_Dead_Count1\(0))) # (!\PWM2_FC02|var_Dead_Count1\(3))) # (!\PWM2_FC02|var_Dead_Count1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|var_Dead_Count1\(2),
	datab => \PWM2_FC02|var_Dead_Count1\(3),
	datac => \PWM2_FC02|var_Dead_Count1\(0),
	datad => \PWM2_FC02|var_Dead_Count1\(1),
	combout => \PWM2_FC02|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y28_N28
\PWM2_FC02|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|LessThan1~1_combout\ = (!\PWM2_FC02|var_Dead_Count1\(6) & (!\PWM2_FC02|var_Dead_Count1\(4) & (!\PWM2_FC02|var_Dead_Count1\(5) & \PWM2_FC02|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|var_Dead_Count1\(6),
	datab => \PWM2_FC02|var_Dead_Count1\(4),
	datac => \PWM2_FC02|var_Dead_Count1\(5),
	datad => \PWM2_FC02|LessThan1~0_combout\,
	combout => \PWM2_FC02|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y28_N28
\PWM2_FC02|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Equal0~0_combout\ = (\PWM2_FC02|Add0~0_combout\ & (\PWM2_FC02|Add0~4_combout\ & (\PWM2_FC02|comp_out~q\ & \PWM2_FC02|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|Add0~0_combout\,
	datab => \PWM2_FC02|Add0~4_combout\,
	datac => \PWM2_FC02|comp_out~q\,
	datad => \PWM2_FC02|Add0~2_combout\,
	combout => \PWM2_FC02|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y28_N22
\PWM2_FC02|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|Equal0~1_combout\ = (!\PWM2_FC02|Add0~15_combout\ & (\PWM2_FC02|Add0~8_combout\ & (!\PWM2_FC02|Add0~16_combout\ & !\PWM2_FC02|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|Add0~15_combout\,
	datab => \PWM2_FC02|Add0~8_combout\,
	datac => \PWM2_FC02|Add0~16_combout\,
	datad => \PWM2_FC02|Add0~17_combout\,
	combout => \PWM2_FC02|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y28_N2
\PWM2_FC02|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC02|port_PWM01~0_combout\ = (\PWM2_FC02|comp_out~q\ & ((\PWM2_FC02|port_PWM01~q\) # ((\PWM2_FC02|Equal0~0_combout\ & \PWM2_FC02|Equal0~1_combout\)))) # (!\PWM2_FC02|comp_out~q\ & (\PWM2_FC02|Equal0~0_combout\ & ((\PWM2_FC02|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC02|comp_out~q\,
	datab => \PWM2_FC02|Equal0~0_combout\,
	datac => \PWM2_FC02|port_PWM01~q\,
	datad => \PWM2_FC02|Equal0~1_combout\,
	combout => \PWM2_FC02|port_PWM01~0_combout\);

-- Location: FF_X31_Y28_N3
\PWM2_FC02|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC02|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC02|port_PWM01~q\);

-- Location: LCCOMB_X26_Y21_N24
\PWM2_FC03|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~19_combout\ = (\PWM2_FC03|comp_out~q\ & \PWM2_FC03|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC03|comp_out~q\,
	datad => \PWM2_FC03|Add0~2_combout\,
	combout => \PWM2_FC03|Add0~19_combout\);

-- Location: FF_X26_Y21_N25
\PWM2_FC03|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count1\(1));

-- Location: LCCOMB_X25_Y21_N8
\PWM2_FC03|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~2_combout\ = (\PWM2_FC03|var_Dead_Count1\(1) & (!\PWM2_FC03|Add0~1\)) # (!\PWM2_FC03|var_Dead_Count1\(1) & ((\PWM2_FC03|Add0~1\) # (GND)))
-- \PWM2_FC03|Add0~3\ = CARRY((!\PWM2_FC03|Add0~1\) # (!\PWM2_FC03|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC03|var_Dead_Count1\(1),
	datad => VCC,
	cin => \PWM2_FC03|Add0~1\,
	combout => \PWM2_FC03|Add0~2_combout\,
	cout => \PWM2_FC03|Add0~3\);

-- Location: LCCOMB_X25_Y21_N10
\PWM2_FC03|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~4_combout\ = (\PWM2_FC03|var_Dead_Count1\(2) & (\PWM2_FC03|Add0~3\ $ (GND))) # (!\PWM2_FC03|var_Dead_Count1\(2) & (!\PWM2_FC03|Add0~3\ & VCC))
-- \PWM2_FC03|Add0~5\ = CARRY((\PWM2_FC03|var_Dead_Count1\(2) & !\PWM2_FC03|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|var_Dead_Count1\(2),
	datad => VCC,
	cin => \PWM2_FC03|Add0~3\,
	combout => \PWM2_FC03|Add0~4_combout\,
	cout => \PWM2_FC03|Add0~5\);

-- Location: LCCOMB_X25_Y21_N26
\PWM2_FC03|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~20_combout\ = (\PWM2_FC03|comp_out~q\ & \PWM2_FC03|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|comp_out~q\,
	datad => \PWM2_FC03|Add0~4_combout\,
	combout => \PWM2_FC03|Add0~20_combout\);

-- Location: FF_X25_Y21_N27
\PWM2_FC03|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count1\(2));

-- Location: LCCOMB_X25_Y21_N12
\PWM2_FC03|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~6_combout\ = (\PWM2_FC03|var_Dead_Count1\(3) & (!\PWM2_FC03|Add0~5\)) # (!\PWM2_FC03|var_Dead_Count1\(3) & ((\PWM2_FC03|Add0~5\) # (GND)))
-- \PWM2_FC03|Add0~7\ = CARRY((!\PWM2_FC03|Add0~5\) # (!\PWM2_FC03|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM2_FC03|var_Dead_Count1\(3),
	datad => VCC,
	cin => \PWM2_FC03|Add0~5\,
	combout => \PWM2_FC03|Add0~6_combout\,
	cout => \PWM2_FC03|Add0~7\);

-- Location: LCCOMB_X25_Y21_N4
\PWM2_FC03|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~8_combout\ = (\PWM2_FC03|comp_out~q\ & \PWM2_FC03|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|comp_out~q\,
	datad => \PWM2_FC03|Add0~6_combout\,
	combout => \PWM2_FC03|Add0~8_combout\);

-- Location: FF_X25_Y21_N5
\PWM2_FC03|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count1\(3));

-- Location: LCCOMB_X25_Y21_N14
\PWM2_FC03|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~9_combout\ = (\PWM2_FC03|var_Dead_Count1\(4) & (\PWM2_FC03|Add0~7\ $ (GND))) # (!\PWM2_FC03|var_Dead_Count1\(4) & (!\PWM2_FC03|Add0~7\ & VCC))
-- \PWM2_FC03|Add0~10\ = CARRY((\PWM2_FC03|var_Dead_Count1\(4) & !\PWM2_FC03|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|var_Dead_Count1\(4),
	datad => VCC,
	cin => \PWM2_FC03|Add0~7\,
	combout => \PWM2_FC03|Add0~9_combout\,
	cout => \PWM2_FC03|Add0~10\);

-- Location: LCCOMB_X25_Y21_N30
\PWM2_FC03|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~16_combout\ = (\PWM2_FC03|Add0~9_combout\ & \PWM2_FC03|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM2_FC03|Add0~9_combout\,
	datad => \PWM2_FC03|comp_out~q\,
	combout => \PWM2_FC03|Add0~16_combout\);

-- Location: FF_X25_Y21_N31
\PWM2_FC03|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count1\(4));

-- Location: LCCOMB_X25_Y21_N16
\PWM2_FC03|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~11_combout\ = (\PWM2_FC03|var_Dead_Count1\(5) & (!\PWM2_FC03|Add0~10\)) # (!\PWM2_FC03|var_Dead_Count1\(5) & ((\PWM2_FC03|Add0~10\) # (GND)))
-- \PWM2_FC03|Add0~12\ = CARRY((!\PWM2_FC03|Add0~10\) # (!\PWM2_FC03|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|var_Dead_Count1\(5),
	datad => VCC,
	cin => \PWM2_FC03|Add0~10\,
	combout => \PWM2_FC03|Add0~11_combout\,
	cout => \PWM2_FC03|Add0~12\);

-- Location: LCCOMB_X25_Y21_N0
\PWM2_FC03|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~17_combout\ = (\PWM2_FC03|comp_out~q\ & \PWM2_FC03|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|comp_out~q\,
	datad => \PWM2_FC03|Add0~11_combout\,
	combout => \PWM2_FC03|Add0~17_combout\);

-- Location: FF_X25_Y21_N1
\PWM2_FC03|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count1\(5));

-- Location: LCCOMB_X25_Y21_N6
\PWM2_FC03|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~0_combout\ = (\PWM2_FC03|LessThan1~1_combout\ & (\PWM2_FC03|var_Dead_Count1\(0) $ (VCC))) # (!\PWM2_FC03|LessThan1~1_combout\ & (\PWM2_FC03|var_Dead_Count1\(0) & VCC))
-- \PWM2_FC03|Add0~1\ = CARRY((\PWM2_FC03|LessThan1~1_combout\ & \PWM2_FC03|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|LessThan1~1_combout\,
	datab => \PWM2_FC03|var_Dead_Count1\(0),
	datad => VCC,
	combout => \PWM2_FC03|Add0~0_combout\,
	cout => \PWM2_FC03|Add0~1\);

-- Location: LCCOMB_X25_Y21_N24
\PWM2_FC03|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~18_combout\ = (\PWM2_FC03|comp_out~q\ & \PWM2_FC03|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|comp_out~q\,
	datad => \PWM2_FC03|Add0~0_combout\,
	combout => \PWM2_FC03|Add0~18_combout\);

-- Location: FF_X25_Y21_N25
\PWM2_FC03|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count1\(0));

-- Location: LCCOMB_X25_Y21_N28
\PWM2_FC03|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|LessThan1~0_combout\ = (((!\PWM2_FC03|var_Dead_Count1\(1)) # (!\PWM2_FC03|var_Dead_Count1\(3))) # (!\PWM2_FC03|var_Dead_Count1\(0))) # (!\PWM2_FC03|var_Dead_Count1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|var_Dead_Count1\(2),
	datab => \PWM2_FC03|var_Dead_Count1\(0),
	datac => \PWM2_FC03|var_Dead_Count1\(3),
	datad => \PWM2_FC03|var_Dead_Count1\(1),
	combout => \PWM2_FC03|LessThan1~0_combout\);

-- Location: LCCOMB_X25_Y21_N18
\PWM2_FC03|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~13_combout\ = \PWM2_FC03|Add0~12\ $ (!\PWM2_FC03|var_Dead_Count1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM2_FC03|var_Dead_Count1\(6),
	cin => \PWM2_FC03|Add0~12\,
	combout => \PWM2_FC03|Add0~13_combout\);

-- Location: LCCOMB_X25_Y21_N2
\PWM2_FC03|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Add0~15_combout\ = (\PWM2_FC03|comp_out~q\ & \PWM2_FC03|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|comp_out~q\,
	datad => \PWM2_FC03|Add0~13_combout\,
	combout => \PWM2_FC03|Add0~15_combout\);

-- Location: FF_X25_Y21_N3
\PWM2_FC03|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|var_Dead_Count1\(6));

-- Location: LCCOMB_X25_Y21_N20
\PWM2_FC03|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|LessThan1~1_combout\ = (!\PWM2_FC03|var_Dead_Count1\(5) & (\PWM2_FC03|LessThan1~0_combout\ & (!\PWM2_FC03|var_Dead_Count1\(4) & !\PWM2_FC03|var_Dead_Count1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|var_Dead_Count1\(5),
	datab => \PWM2_FC03|LessThan1~0_combout\,
	datac => \PWM2_FC03|var_Dead_Count1\(4),
	datad => \PWM2_FC03|var_Dead_Count1\(6),
	combout => \PWM2_FC03|LessThan1~1_combout\);

-- Location: LCCOMB_X26_Y21_N10
\PWM2_FC03|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Equal0~0_combout\ = (\PWM2_FC03|Add0~2_combout\ & (\PWM2_FC03|comp_out~q\ & (\PWM2_FC03|Add0~0_combout\ & \PWM2_FC03|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|Add0~2_combout\,
	datab => \PWM2_FC03|comp_out~q\,
	datac => \PWM2_FC03|Add0~0_combout\,
	datad => \PWM2_FC03|Add0~4_combout\,
	combout => \PWM2_FC03|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y21_N22
\PWM2_FC03|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|Equal0~1_combout\ = (!\PWM2_FC03|Add0~16_combout\ & (!\PWM2_FC03|Add0~17_combout\ & (\PWM2_FC03|Add0~8_combout\ & !\PWM2_FC03|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|Add0~16_combout\,
	datab => \PWM2_FC03|Add0~17_combout\,
	datac => \PWM2_FC03|Add0~8_combout\,
	datad => \PWM2_FC03|Add0~15_combout\,
	combout => \PWM2_FC03|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y21_N18
\PWM2_FC03|port_PWM01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM2_FC03|port_PWM01~0_combout\ = (\PWM2_FC03|Equal0~0_combout\ & ((\PWM2_FC03|Equal0~1_combout\) # ((\PWM2_FC03|comp_out~q\ & \PWM2_FC03|port_PWM01~q\)))) # (!\PWM2_FC03|Equal0~0_combout\ & (\PWM2_FC03|comp_out~q\ & (\PWM2_FC03|port_PWM01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM2_FC03|Equal0~0_combout\,
	datab => \PWM2_FC03|comp_out~q\,
	datac => \PWM2_FC03|port_PWM01~q\,
	datad => \PWM2_FC03|Equal0~1_combout\,
	combout => \PWM2_FC03|port_PWM01~0_combout\);

-- Location: FF_X26_Y21_N19
\PWM2_FC03|port_PWM01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \PWM2_FC03|port_PWM01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM2_FC03|port_PWM01~q\);

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


