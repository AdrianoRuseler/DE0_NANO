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

-- DATE "01/23/2015 14:02:44"

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
SIGNAL \uc1|dir_int~q\ : std_logic;
SIGNAL \uc1|c_int[0]~24_combout\ : std_logic;
SIGNAL \uc1|c_int[0]~25\ : std_logic;
SIGNAL \uc1|c_int[1]~26_combout\ : std_logic;
SIGNAL \uc1|c_int[1]~27\ : std_logic;
SIGNAL \uc1|c_int[2]~28_combout\ : std_logic;
SIGNAL \uc1|c_int[2]~29\ : std_logic;
SIGNAL \uc1|c_int[3]~30_combout\ : std_logic;
SIGNAL \uc1|c_int[3]~31\ : std_logic;
SIGNAL \uc1|c_int[4]~32_combout\ : std_logic;
SIGNAL \uc1|c_int[4]~33\ : std_logic;
SIGNAL \uc1|c_int[5]~34_combout\ : std_logic;
SIGNAL \uc1|c_int[5]~35\ : std_logic;
SIGNAL \uc1|c_int[6]~36_combout\ : std_logic;
SIGNAL \uc1|c_int[6]~37\ : std_logic;
SIGNAL \uc1|c_int[7]~39\ : std_logic;
SIGNAL \uc1|c_int[8]~40_combout\ : std_logic;
SIGNAL \uc1|c_int[12]~20_combout\ : std_logic;
SIGNAL \uc1|c_int[12]~21_combout\ : std_logic;
SIGNAL \uc1|c_int[8]~41\ : std_logic;
SIGNAL \uc1|c_int[9]~42_combout\ : std_logic;
SIGNAL \uc1|c_int[9]~43\ : std_logic;
SIGNAL \uc1|c_int[10]~44_combout\ : std_logic;
SIGNAL \uc1|c_int[12]~22_combout\ : std_logic;
SIGNAL \uc1|c_int[12]~16_combout\ : std_logic;
SIGNAL \uc1|c_int[12]~18_combout\ : std_logic;
SIGNAL \uc1|c_int[12]~19_combout\ : std_logic;
SIGNAL \uc1|c_int[10]~45\ : std_logic;
SIGNAL \uc1|c_int[11]~46_combout\ : std_logic;
SIGNAL \uc1|c_int[11]~47\ : std_logic;
SIGNAL \uc1|c_int[12]~48_combout\ : std_logic;
SIGNAL \uc1|c_int[12]~49\ : std_logic;
SIGNAL \uc1|c_int[13]~50_combout\ : std_logic;
SIGNAL \uc1|c_int[13]~51\ : std_logic;
SIGNAL \uc1|c_int[14]~52_combout\ : std_logic;
SIGNAL \ucomp|LessThan0~0_combout\ : std_logic;
SIGNAL \uc1|c_int[14]~53\ : std_logic;
SIGNAL \uc1|c_int[15]~54_combout\ : std_logic;
SIGNAL \ucomp|LessThan0~1_combout\ : std_logic;
SIGNAL \uc1|c_int[12]~17_combout\ : std_logic;
SIGNAL \uc1|c_int[12]~23_combout\ : std_logic;
SIGNAL \uc1|c_int[7]~38_combout\ : std_logic;
SIGNAL \ucomp|LessThan0~3_combout\ : std_logic;
SIGNAL \ucomp|LessThan0~2_combout\ : std_logic;
SIGNAL \ucomp|LessThan0~4_combout\ : std_logic;
SIGNAL \ucomp|LessThan0~5_combout\ : std_logic;
SIGNAL \ucomp|comp_out~q\ : std_logic;
SIGNAL \deadcomp|Add0~12\ : std_logic;
SIGNAL \deadcomp|Add0~13_combout\ : std_logic;
SIGNAL \deadcomp|Add0~15_combout\ : std_logic;
SIGNAL \deadcomp|Add0~0_combout\ : std_logic;
SIGNAL \deadcomp|Add0~18_combout\ : std_logic;
SIGNAL \deadcomp|LessThan0~0_combout\ : std_logic;
SIGNAL \deadcomp|LessThan0~1_combout\ : std_logic;
SIGNAL \deadcomp|Add0~1\ : std_logic;
SIGNAL \deadcomp|Add0~2_combout\ : std_logic;
SIGNAL \deadcomp|Add0~19_combout\ : std_logic;
SIGNAL \deadcomp|Add0~3\ : std_logic;
SIGNAL \deadcomp|Add0~4_combout\ : std_logic;
SIGNAL \deadcomp|Add0~20_combout\ : std_logic;
SIGNAL \deadcomp|Add0~5\ : std_logic;
SIGNAL \deadcomp|Add0~6_combout\ : std_logic;
SIGNAL \deadcomp|Add0~8_combout\ : std_logic;
SIGNAL \deadcomp|Add0~7\ : std_logic;
SIGNAL \deadcomp|Add0~9_combout\ : std_logic;
SIGNAL \deadcomp|Add0~16_combout\ : std_logic;
SIGNAL \deadcomp|Add0~10\ : std_logic;
SIGNAL \deadcomp|Add0~11_combout\ : std_logic;
SIGNAL \deadcomp|Add0~17_combout\ : std_logic;
SIGNAL \deadcomp|Equal0~1_combout\ : std_logic;
SIGNAL \deadcomp|Equal0~0_combout\ : std_logic;
SIGNAL \deadcomp|p_Pwm1_Out~0_combout\ : std_logic;
SIGNAL \deadcomp|p_Pwm1_Out~q\ : std_logic;
SIGNAL \deadcomp|Add1~7\ : std_logic;
SIGNAL \deadcomp|Add1~9_combout\ : std_logic;
SIGNAL \deadcomp|Add1~16_combout\ : std_logic;
SIGNAL \deadcomp|Add1~10\ : std_logic;
SIGNAL \deadcomp|Add1~11_combout\ : std_logic;
SIGNAL \deadcomp|Add1~17_combout\ : std_logic;
SIGNAL \deadcomp|Add1~12\ : std_logic;
SIGNAL \deadcomp|Add1~13_combout\ : std_logic;
SIGNAL \deadcomp|Add1~15_combout\ : std_logic;
SIGNAL \deadcomp|LessThan1~0_combout\ : std_logic;
SIGNAL \deadcomp|LessThan1~1_combout\ : std_logic;
SIGNAL \deadcomp|Add1~0_combout\ : std_logic;
SIGNAL \deadcomp|Add1~18_combout\ : std_logic;
SIGNAL \deadcomp|Add1~1\ : std_logic;
SIGNAL \deadcomp|Add1~2_combout\ : std_logic;
SIGNAL \deadcomp|Add1~19_combout\ : std_logic;
SIGNAL \deadcomp|Add1~3\ : std_logic;
SIGNAL \deadcomp|Add1~4_combout\ : std_logic;
SIGNAL \deadcomp|Add1~20_combout\ : std_logic;
SIGNAL \deadcomp|Add1~5\ : std_logic;
SIGNAL \deadcomp|Add1~6_combout\ : std_logic;
SIGNAL \deadcomp|Add1~8_combout\ : std_logic;
SIGNAL \deadcomp|Equal1~1_combout\ : std_logic;
SIGNAL \deadcomp|Equal1~0_combout\ : std_logic;
SIGNAL \deadcomp|p_Pwm2_Out~0_combout\ : std_logic;
SIGNAL \deadcomp|p_Pwm2_Out~q\ : std_logic;
SIGNAL \upll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uc1|c_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \deadcomp|var_Dead_Count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \deadcomp|var_Dead_Count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \upll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;

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
	i => \deadcomp|p_Pwm1_Out~q\,
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
	i => \deadcomp|p_Pwm2_Out~q\,
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

-- Location: FF_X15_Y14_N23
\deadcomp|var_Dead_Count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count1\(5));

-- Location: FF_X16_Y13_N1
\uc1|dir_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|dir_int~q\);

-- Location: LCCOMB_X17_Y13_N0
\uc1|c_int[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[0]~24_combout\ = \uc1|c_int\(0) $ (VCC)
-- \uc1|c_int[0]~25\ = CARRY(\uc1|c_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uc1|c_int\(0),
	datad => VCC,
	combout => \uc1|c_int[0]~24_combout\,
	cout => \uc1|c_int[0]~25\);

-- Location: FF_X17_Y13_N1
\uc1|c_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(0));

-- Location: LCCOMB_X17_Y13_N2
\uc1|c_int[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[1]~26_combout\ = (\uc1|c_int[12]~23_combout\ & ((\uc1|c_int\(1) & (\uc1|c_int[0]~25\ & VCC)) # (!\uc1|c_int\(1) & (!\uc1|c_int[0]~25\)))) # (!\uc1|c_int[12]~23_combout\ & ((\uc1|c_int\(1) & (!\uc1|c_int[0]~25\)) # (!\uc1|c_int\(1) & 
-- ((\uc1|c_int[0]~25\) # (GND)))))
-- \uc1|c_int[1]~27\ = CARRY((\uc1|c_int[12]~23_combout\ & (!\uc1|c_int\(1) & !\uc1|c_int[0]~25\)) # (!\uc1|c_int[12]~23_combout\ & ((!\uc1|c_int[0]~25\) # (!\uc1|c_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int[12]~23_combout\,
	datab => \uc1|c_int\(1),
	datad => VCC,
	cin => \uc1|c_int[0]~25\,
	combout => \uc1|c_int[1]~26_combout\,
	cout => \uc1|c_int[1]~27\);

-- Location: FF_X17_Y13_N3
\uc1|c_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(1));

-- Location: LCCOMB_X17_Y13_N4
\uc1|c_int[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[2]~28_combout\ = ((\uc1|c_int[12]~23_combout\ $ (\uc1|c_int\(2) $ (!\uc1|c_int[1]~27\)))) # (GND)
-- \uc1|c_int[2]~29\ = CARRY((\uc1|c_int[12]~23_combout\ & ((\uc1|c_int\(2)) # (!\uc1|c_int[1]~27\))) # (!\uc1|c_int[12]~23_combout\ & (\uc1|c_int\(2) & !\uc1|c_int[1]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int[12]~23_combout\,
	datab => \uc1|c_int\(2),
	datad => VCC,
	cin => \uc1|c_int[1]~27\,
	combout => \uc1|c_int[2]~28_combout\,
	cout => \uc1|c_int[2]~29\);

-- Location: FF_X17_Y13_N5
\uc1|c_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(2));

-- Location: LCCOMB_X17_Y13_N6
\uc1|c_int[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[3]~30_combout\ = (\uc1|c_int[12]~23_combout\ & ((\uc1|c_int\(3) & (\uc1|c_int[2]~29\ & VCC)) # (!\uc1|c_int\(3) & (!\uc1|c_int[2]~29\)))) # (!\uc1|c_int[12]~23_combout\ & ((\uc1|c_int\(3) & (!\uc1|c_int[2]~29\)) # (!\uc1|c_int\(3) & 
-- ((\uc1|c_int[2]~29\) # (GND)))))
-- \uc1|c_int[3]~31\ = CARRY((\uc1|c_int[12]~23_combout\ & (!\uc1|c_int\(3) & !\uc1|c_int[2]~29\)) # (!\uc1|c_int[12]~23_combout\ & ((!\uc1|c_int[2]~29\) # (!\uc1|c_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int[12]~23_combout\,
	datab => \uc1|c_int\(3),
	datad => VCC,
	cin => \uc1|c_int[2]~29\,
	combout => \uc1|c_int[3]~30_combout\,
	cout => \uc1|c_int[3]~31\);

-- Location: FF_X17_Y13_N7
\uc1|c_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[3]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(3));

-- Location: LCCOMB_X17_Y13_N8
\uc1|c_int[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[4]~32_combout\ = ((\uc1|c_int[12]~23_combout\ $ (\uc1|c_int\(4) $ (!\uc1|c_int[3]~31\)))) # (GND)
-- \uc1|c_int[4]~33\ = CARRY((\uc1|c_int[12]~23_combout\ & ((\uc1|c_int\(4)) # (!\uc1|c_int[3]~31\))) # (!\uc1|c_int[12]~23_combout\ & (\uc1|c_int\(4) & !\uc1|c_int[3]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int[12]~23_combout\,
	datab => \uc1|c_int\(4),
	datad => VCC,
	cin => \uc1|c_int[3]~31\,
	combout => \uc1|c_int[4]~32_combout\,
	cout => \uc1|c_int[4]~33\);

-- Location: FF_X17_Y13_N9
\uc1|c_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(4));

-- Location: LCCOMB_X17_Y13_N10
\uc1|c_int[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[5]~34_combout\ = (\uc1|c_int[12]~23_combout\ & ((\uc1|c_int\(5) & (\uc1|c_int[4]~33\ & VCC)) # (!\uc1|c_int\(5) & (!\uc1|c_int[4]~33\)))) # (!\uc1|c_int[12]~23_combout\ & ((\uc1|c_int\(5) & (!\uc1|c_int[4]~33\)) # (!\uc1|c_int\(5) & 
-- ((\uc1|c_int[4]~33\) # (GND)))))
-- \uc1|c_int[5]~35\ = CARRY((\uc1|c_int[12]~23_combout\ & (!\uc1|c_int\(5) & !\uc1|c_int[4]~33\)) # (!\uc1|c_int[12]~23_combout\ & ((!\uc1|c_int[4]~33\) # (!\uc1|c_int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int[12]~23_combout\,
	datab => \uc1|c_int\(5),
	datad => VCC,
	cin => \uc1|c_int[4]~33\,
	combout => \uc1|c_int[5]~34_combout\,
	cout => \uc1|c_int[5]~35\);

-- Location: FF_X17_Y13_N11
\uc1|c_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(5));

-- Location: LCCOMB_X17_Y13_N12
\uc1|c_int[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[6]~36_combout\ = ((\uc1|c_int[12]~23_combout\ $ (\uc1|c_int\(6) $ (!\uc1|c_int[5]~35\)))) # (GND)
-- \uc1|c_int[6]~37\ = CARRY((\uc1|c_int[12]~23_combout\ & ((\uc1|c_int\(6)) # (!\uc1|c_int[5]~35\))) # (!\uc1|c_int[12]~23_combout\ & (\uc1|c_int\(6) & !\uc1|c_int[5]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int[12]~23_combout\,
	datab => \uc1|c_int\(6),
	datad => VCC,
	cin => \uc1|c_int[5]~35\,
	combout => \uc1|c_int[6]~36_combout\,
	cout => \uc1|c_int[6]~37\);

-- Location: FF_X17_Y13_N13
\uc1|c_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(6));

-- Location: LCCOMB_X17_Y13_N14
\uc1|c_int[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[7]~38_combout\ = (\uc1|c_int[12]~23_combout\ & ((\uc1|c_int\(7) & (\uc1|c_int[6]~37\ & VCC)) # (!\uc1|c_int\(7) & (!\uc1|c_int[6]~37\)))) # (!\uc1|c_int[12]~23_combout\ & ((\uc1|c_int\(7) & (!\uc1|c_int[6]~37\)) # (!\uc1|c_int\(7) & 
-- ((\uc1|c_int[6]~37\) # (GND)))))
-- \uc1|c_int[7]~39\ = CARRY((\uc1|c_int[12]~23_combout\ & (!\uc1|c_int\(7) & !\uc1|c_int[6]~37\)) # (!\uc1|c_int[12]~23_combout\ & ((!\uc1|c_int[6]~37\) # (!\uc1|c_int\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int[12]~23_combout\,
	datab => \uc1|c_int\(7),
	datad => VCC,
	cin => \uc1|c_int[6]~37\,
	combout => \uc1|c_int[7]~38_combout\,
	cout => \uc1|c_int[7]~39\);

-- Location: LCCOMB_X17_Y13_N16
\uc1|c_int[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[8]~40_combout\ = ((\uc1|c_int\(8) $ (\uc1|c_int[12]~23_combout\ $ (!\uc1|c_int[7]~39\)))) # (GND)
-- \uc1|c_int[8]~41\ = CARRY((\uc1|c_int\(8) & ((\uc1|c_int[12]~23_combout\) # (!\uc1|c_int[7]~39\))) # (!\uc1|c_int\(8) & (\uc1|c_int[12]~23_combout\ & !\uc1|c_int[7]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(8),
	datab => \uc1|c_int[12]~23_combout\,
	datad => VCC,
	cin => \uc1|c_int[7]~39\,
	combout => \uc1|c_int[8]~40_combout\,
	cout => \uc1|c_int[8]~41\);

-- Location: FF_X17_Y13_N17
\uc1|c_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(8));

-- Location: LCCOMB_X16_Y13_N10
\uc1|c_int[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[12]~20_combout\ = (\uc1|c_int\(2)) # ((\uc1|c_int\(5)) # ((\uc1|c_int\(0)) # (\uc1|c_int\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(2),
	datab => \uc1|c_int\(5),
	datac => \uc1|c_int\(0),
	datad => \uc1|c_int\(8),
	combout => \uc1|c_int[12]~20_combout\);

-- Location: LCCOMB_X16_Y13_N28
\uc1|c_int[12]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[12]~21_combout\ = (\uc1|c_int\(3)) # ((\uc1|c_int[12]~20_combout\) # ((\uc1|c_int\(4)) # (\uc1|c_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(3),
	datab => \uc1|c_int[12]~20_combout\,
	datac => \uc1|c_int\(4),
	datad => \uc1|c_int\(1),
	combout => \uc1|c_int[12]~21_combout\);

-- Location: LCCOMB_X17_Y13_N18
\uc1|c_int[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[9]~42_combout\ = (\uc1|c_int\(9) & ((\uc1|c_int[12]~23_combout\ & (\uc1|c_int[8]~41\ & VCC)) # (!\uc1|c_int[12]~23_combout\ & (!\uc1|c_int[8]~41\)))) # (!\uc1|c_int\(9) & ((\uc1|c_int[12]~23_combout\ & (!\uc1|c_int[8]~41\)) # 
-- (!\uc1|c_int[12]~23_combout\ & ((\uc1|c_int[8]~41\) # (GND)))))
-- \uc1|c_int[9]~43\ = CARRY((\uc1|c_int\(9) & (!\uc1|c_int[12]~23_combout\ & !\uc1|c_int[8]~41\)) # (!\uc1|c_int\(9) & ((!\uc1|c_int[8]~41\) # (!\uc1|c_int[12]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(9),
	datab => \uc1|c_int[12]~23_combout\,
	datad => VCC,
	cin => \uc1|c_int[8]~41\,
	combout => \uc1|c_int[9]~42_combout\,
	cout => \uc1|c_int[9]~43\);

-- Location: FF_X17_Y13_N19
\uc1|c_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(9));

-- Location: LCCOMB_X17_Y13_N20
\uc1|c_int[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[10]~44_combout\ = ((\uc1|c_int\(10) $ (\uc1|c_int[12]~23_combout\ $ (!\uc1|c_int[9]~43\)))) # (GND)
-- \uc1|c_int[10]~45\ = CARRY((\uc1|c_int\(10) & ((\uc1|c_int[12]~23_combout\) # (!\uc1|c_int[9]~43\))) # (!\uc1|c_int\(10) & (\uc1|c_int[12]~23_combout\ & !\uc1|c_int[9]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(10),
	datab => \uc1|c_int[12]~23_combout\,
	datad => VCC,
	cin => \uc1|c_int[9]~43\,
	combout => \uc1|c_int[10]~44_combout\,
	cout => \uc1|c_int[10]~45\);

-- Location: FF_X17_Y13_N21
\uc1|c_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[10]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(10));

-- Location: LCCOMB_X16_Y13_N22
\uc1|c_int[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[12]~22_combout\ = (\uc1|dir_int~q\ & ((\uc1|c_int[12]~21_combout\) # ((\uc1|c_int\(10)) # (\uc1|c_int\(9))))) # (!\uc1|dir_int~q\ & (((\uc1|c_int\(10) & \uc1|c_int\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|dir_int~q\,
	datab => \uc1|c_int[12]~21_combout\,
	datac => \uc1|c_int\(10),
	datad => \uc1|c_int\(9),
	combout => \uc1|c_int[12]~22_combout\);

-- Location: LCCOMB_X16_Y13_N26
\uc1|c_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[12]~16_combout\ = (\uc1|c_int\(10) & \uc1|c_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uc1|c_int\(10),
	datad => \uc1|c_int\(8),
	combout => \uc1|c_int[12]~16_combout\);

-- Location: LCCOMB_X16_Y13_N14
\uc1|c_int[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[12]~18_combout\ = (\uc1|c_int\(3)) # ((\uc1|c_int\(2) & (\uc1|c_int\(0) & \uc1|c_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(2),
	datab => \uc1|c_int\(3),
	datac => \uc1|c_int\(0),
	datad => \uc1|c_int\(1),
	combout => \uc1|c_int[12]~18_combout\);

-- Location: LCCOMB_X16_Y13_N24
\uc1|c_int[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[12]~19_combout\ = (\uc1|c_int[12]~16_combout\ & (\uc1|c_int\(5) & (\uc1|c_int\(4) & \uc1|c_int[12]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int[12]~16_combout\,
	datab => \uc1|c_int\(5),
	datac => \uc1|c_int\(4),
	datad => \uc1|c_int[12]~18_combout\,
	combout => \uc1|c_int[12]~19_combout\);

-- Location: LCCOMB_X17_Y13_N22
\uc1|c_int[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[11]~46_combout\ = (\uc1|c_int\(11) & ((\uc1|c_int[12]~23_combout\ & (\uc1|c_int[10]~45\ & VCC)) # (!\uc1|c_int[12]~23_combout\ & (!\uc1|c_int[10]~45\)))) # (!\uc1|c_int\(11) & ((\uc1|c_int[12]~23_combout\ & (!\uc1|c_int[10]~45\)) # 
-- (!\uc1|c_int[12]~23_combout\ & ((\uc1|c_int[10]~45\) # (GND)))))
-- \uc1|c_int[11]~47\ = CARRY((\uc1|c_int\(11) & (!\uc1|c_int[12]~23_combout\ & !\uc1|c_int[10]~45\)) # (!\uc1|c_int\(11) & ((!\uc1|c_int[10]~45\) # (!\uc1|c_int[12]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(11),
	datab => \uc1|c_int[12]~23_combout\,
	datad => VCC,
	cin => \uc1|c_int[10]~45\,
	combout => \uc1|c_int[11]~46_combout\,
	cout => \uc1|c_int[11]~47\);

-- Location: FF_X17_Y13_N23
\uc1|c_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[11]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(11));

-- Location: LCCOMB_X17_Y13_N24
\uc1|c_int[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[12]~48_combout\ = ((\uc1|c_int\(12) $ (\uc1|c_int[12]~23_combout\ $ (!\uc1|c_int[11]~47\)))) # (GND)
-- \uc1|c_int[12]~49\ = CARRY((\uc1|c_int\(12) & ((\uc1|c_int[12]~23_combout\) # (!\uc1|c_int[11]~47\))) # (!\uc1|c_int\(12) & (\uc1|c_int[12]~23_combout\ & !\uc1|c_int[11]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(12),
	datab => \uc1|c_int[12]~23_combout\,
	datad => VCC,
	cin => \uc1|c_int[11]~47\,
	combout => \uc1|c_int[12]~48_combout\,
	cout => \uc1|c_int[12]~49\);

-- Location: FF_X17_Y13_N25
\uc1|c_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(12));

-- Location: LCCOMB_X17_Y13_N26
\uc1|c_int[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[13]~50_combout\ = (\uc1|c_int\(13) & ((\uc1|c_int[12]~23_combout\ & (\uc1|c_int[12]~49\ & VCC)) # (!\uc1|c_int[12]~23_combout\ & (!\uc1|c_int[12]~49\)))) # (!\uc1|c_int\(13) & ((\uc1|c_int[12]~23_combout\ & (!\uc1|c_int[12]~49\)) # 
-- (!\uc1|c_int[12]~23_combout\ & ((\uc1|c_int[12]~49\) # (GND)))))
-- \uc1|c_int[13]~51\ = CARRY((\uc1|c_int\(13) & (!\uc1|c_int[12]~23_combout\ & !\uc1|c_int[12]~49\)) # (!\uc1|c_int\(13) & ((!\uc1|c_int[12]~49\) # (!\uc1|c_int[12]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(13),
	datab => \uc1|c_int[12]~23_combout\,
	datad => VCC,
	cin => \uc1|c_int[12]~49\,
	combout => \uc1|c_int[13]~50_combout\,
	cout => \uc1|c_int[13]~51\);

-- Location: FF_X17_Y13_N27
\uc1|c_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[13]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(13));

-- Location: LCCOMB_X17_Y13_N28
\uc1|c_int[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[14]~52_combout\ = ((\uc1|c_int\(14) $ (\uc1|c_int[12]~23_combout\ $ (!\uc1|c_int[13]~51\)))) # (GND)
-- \uc1|c_int[14]~53\ = CARRY((\uc1|c_int\(14) & ((\uc1|c_int[12]~23_combout\) # (!\uc1|c_int[13]~51\))) # (!\uc1|c_int\(14) & (\uc1|c_int[12]~23_combout\ & !\uc1|c_int[13]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(14),
	datab => \uc1|c_int[12]~23_combout\,
	datad => VCC,
	cin => \uc1|c_int[13]~51\,
	combout => \uc1|c_int[14]~52_combout\,
	cout => \uc1|c_int[14]~53\);

-- Location: FF_X17_Y13_N29
\uc1|c_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[14]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(14));

-- Location: LCCOMB_X16_Y13_N30
\ucomp|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~0_combout\ = (!\uc1|c_int\(11) & (!\uc1|c_int\(14) & (!\uc1|c_int\(13) & !\uc1|c_int\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(11),
	datab => \uc1|c_int\(14),
	datac => \uc1|c_int\(13),
	datad => \uc1|c_int\(12),
	combout => \ucomp|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y13_N30
\uc1|c_int[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[15]~54_combout\ = \uc1|c_int[12]~23_combout\ $ (\uc1|c_int[14]~53\ $ (\uc1|c_int\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int[12]~23_combout\,
	datad => \uc1|c_int\(15),
	cin => \uc1|c_int[14]~53\,
	combout => \uc1|c_int[15]~54_combout\);

-- Location: FF_X17_Y13_N31
\uc1|c_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(15));

-- Location: LCCOMB_X16_Y13_N8
\ucomp|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~1_combout\ = (\ucomp|LessThan0~0_combout\ & !\uc1|c_int\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucomp|LessThan0~0_combout\,
	datac => \uc1|c_int\(15),
	combout => \ucomp|LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y13_N12
\uc1|c_int[12]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[12]~17_combout\ = (\uc1|c_int\(7) & (((\uc1|c_int[12]~16_combout\) # (\uc1|dir_int~q\)))) # (!\uc1|c_int\(7) & (\uc1|c_int\(6) & ((\uc1|c_int[12]~16_combout\) # (\uc1|dir_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(7),
	datab => \uc1|c_int\(6),
	datac => \uc1|c_int[12]~16_combout\,
	datad => \uc1|dir_int~q\,
	combout => \uc1|c_int[12]~17_combout\);

-- Location: LCCOMB_X16_Y13_N0
\uc1|c_int[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc1|c_int[12]~23_combout\ = (\uc1|c_int[12]~22_combout\) # ((\uc1|c_int[12]~19_combout\) # ((\uc1|c_int[12]~17_combout\) # (!\ucomp|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int[12]~22_combout\,
	datab => \uc1|c_int[12]~19_combout\,
	datac => \ucomp|LessThan0~1_combout\,
	datad => \uc1|c_int[12]~17_combout\,
	combout => \uc1|c_int[12]~23_combout\);

-- Location: FF_X17_Y13_N15
\uc1|c_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uc1|c_int[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc1|c_int\(7));

-- Location: LCCOMB_X16_Y13_N20
\ucomp|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~3_combout\ = (!\uc1|c_int\(7) & (!\uc1|c_int\(5) & (!\uc1|c_int\(6) & !\uc1|c_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(7),
	datab => \uc1|c_int\(5),
	datac => \uc1|c_int\(6),
	datad => \uc1|c_int\(4),
	combout => \ucomp|LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y13_N2
\ucomp|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~2_combout\ = ((!\uc1|c_int\(2) & ((!\uc1|c_int\(1)) # (!\uc1|c_int\(0))))) # (!\uc1|c_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc1|c_int\(2),
	datab => \uc1|c_int\(3),
	datac => \uc1|c_int\(0),
	datad => \uc1|c_int\(1),
	combout => \ucomp|LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y13_N6
\ucomp|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~4_combout\ = ((\ucomp|LessThan0~3_combout\ & \ucomp|LessThan0~2_combout\)) # (!\uc1|c_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucomp|LessThan0~3_combout\,
	datac => \ucomp|LessThan0~2_combout\,
	datad => \uc1|c_int\(8),
	combout => \ucomp|LessThan0~4_combout\);

-- Location: LCCOMB_X16_Y13_N16
\ucomp|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ucomp|LessThan0~5_combout\ = (((\uc1|c_int\(10)) # (\uc1|c_int\(9))) # (!\ucomp|LessThan0~1_combout\)) # (!\ucomp|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucomp|LessThan0~4_combout\,
	datab => \ucomp|LessThan0~1_combout\,
	datac => \uc1|c_int\(10),
	datad => \uc1|c_int\(9),
	combout => \ucomp|LessThan0~5_combout\);

-- Location: FF_X16_Y13_N17
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

-- Location: LCCOMB_X15_Y14_N16
\deadcomp|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~11_combout\ = (\deadcomp|var_Dead_Count1\(5) & (!\deadcomp|Add0~10\)) # (!\deadcomp|var_Dead_Count1\(5) & ((\deadcomp|Add0~10\) # (GND)))
-- \deadcomp|Add0~12\ = CARRY((!\deadcomp|Add0~10\) # (!\deadcomp|var_Dead_Count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deadcomp|var_Dead_Count1\(5),
	datad => VCC,
	cin => \deadcomp|Add0~10\,
	combout => \deadcomp|Add0~11_combout\,
	cout => \deadcomp|Add0~12\);

-- Location: LCCOMB_X15_Y14_N18
\deadcomp|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~13_combout\ = \deadcomp|var_Dead_Count1\(6) $ (!\deadcomp|Add0~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|var_Dead_Count1\(6),
	cin => \deadcomp|Add0~12\,
	combout => \deadcomp|Add0~13_combout\);

-- Location: LCCOMB_X15_Y14_N24
\deadcomp|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~15_combout\ = (\deadcomp|Add0~13_combout\ & \ucomp|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deadcomp|Add0~13_combout\,
	datac => \ucomp|comp_out~q\,
	combout => \deadcomp|Add0~15_combout\);

-- Location: FF_X15_Y14_N25
\deadcomp|var_Dead_Count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count1\(6));

-- Location: LCCOMB_X15_Y14_N6
\deadcomp|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~0_combout\ = (\deadcomp|LessThan0~1_combout\ & (\deadcomp|var_Dead_Count1\(0) $ (VCC))) # (!\deadcomp|LessThan0~1_combout\ & (\deadcomp|var_Dead_Count1\(0) & VCC))
-- \deadcomp|Add0~1\ = CARRY((\deadcomp|LessThan0~1_combout\ & \deadcomp|var_Dead_Count1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|LessThan0~1_combout\,
	datab => \deadcomp|var_Dead_Count1\(0),
	datad => VCC,
	combout => \deadcomp|Add0~0_combout\,
	cout => \deadcomp|Add0~1\);

-- Location: LCCOMB_X16_Y14_N16
\deadcomp|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~18_combout\ = (\deadcomp|Add0~0_combout\ & \ucomp|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deadcomp|Add0~0_combout\,
	datad => \ucomp|comp_out~q\,
	combout => \deadcomp|Add0~18_combout\);

-- Location: FF_X16_Y14_N17
\deadcomp|var_Dead_Count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count1\(0));

-- Location: LCCOMB_X15_Y14_N20
\deadcomp|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|LessThan0~0_combout\ = (((!\deadcomp|var_Dead_Count1\(0)) # (!\deadcomp|var_Dead_Count1\(2))) # (!\deadcomp|var_Dead_Count1\(3))) # (!\deadcomp|var_Dead_Count1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|var_Dead_Count1\(1),
	datab => \deadcomp|var_Dead_Count1\(3),
	datac => \deadcomp|var_Dead_Count1\(2),
	datad => \deadcomp|var_Dead_Count1\(0),
	combout => \deadcomp|LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y14_N26
\deadcomp|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|LessThan0~1_combout\ = (!\deadcomp|var_Dead_Count1\(6) & (\deadcomp|LessThan0~0_combout\ & (!\deadcomp|var_Dead_Count1\(4) & !\deadcomp|var_Dead_Count1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|var_Dead_Count1\(6),
	datab => \deadcomp|LessThan0~0_combout\,
	datac => \deadcomp|var_Dead_Count1\(4),
	datad => \deadcomp|var_Dead_Count1\(5),
	combout => \deadcomp|LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y14_N8
\deadcomp|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~2_combout\ = (\deadcomp|var_Dead_Count1\(1) & (!\deadcomp|Add0~1\)) # (!\deadcomp|var_Dead_Count1\(1) & ((\deadcomp|Add0~1\) # (GND)))
-- \deadcomp|Add0~3\ = CARRY((!\deadcomp|Add0~1\) # (!\deadcomp|var_Dead_Count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|var_Dead_Count1\(1),
	datad => VCC,
	cin => \deadcomp|Add0~1\,
	combout => \deadcomp|Add0~2_combout\,
	cout => \deadcomp|Add0~3\);

-- Location: LCCOMB_X16_Y14_N2
\deadcomp|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~19_combout\ = (\deadcomp|Add0~2_combout\ & \ucomp|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|Add0~2_combout\,
	datad => \ucomp|comp_out~q\,
	combout => \deadcomp|Add0~19_combout\);

-- Location: FF_X16_Y14_N3
\deadcomp|var_Dead_Count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count1\(1));

-- Location: LCCOMB_X15_Y14_N10
\deadcomp|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~4_combout\ = (\deadcomp|var_Dead_Count1\(2) & (\deadcomp|Add0~3\ $ (GND))) # (!\deadcomp|var_Dead_Count1\(2) & (!\deadcomp|Add0~3\ & VCC))
-- \deadcomp|Add0~5\ = CARRY((\deadcomp|var_Dead_Count1\(2) & !\deadcomp|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|var_Dead_Count1\(2),
	datad => VCC,
	cin => \deadcomp|Add0~3\,
	combout => \deadcomp|Add0~4_combout\,
	cout => \deadcomp|Add0~5\);

-- Location: LCCOMB_X16_Y14_N20
\deadcomp|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~20_combout\ = (\deadcomp|Add0~4_combout\ & \ucomp|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|Add0~4_combout\,
	datad => \ucomp|comp_out~q\,
	combout => \deadcomp|Add0~20_combout\);

-- Location: FF_X16_Y14_N21
\deadcomp|var_Dead_Count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count1\(2));

-- Location: LCCOMB_X15_Y14_N12
\deadcomp|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~6_combout\ = (\deadcomp|var_Dead_Count1\(3) & (!\deadcomp|Add0~5\)) # (!\deadcomp|var_Dead_Count1\(3) & ((\deadcomp|Add0~5\) # (GND)))
-- \deadcomp|Add0~7\ = CARRY((!\deadcomp|Add0~5\) # (!\deadcomp|var_Dead_Count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deadcomp|var_Dead_Count1\(3),
	datad => VCC,
	cin => \deadcomp|Add0~5\,
	combout => \deadcomp|Add0~6_combout\,
	cout => \deadcomp|Add0~7\);

-- Location: LCCOMB_X15_Y14_N2
\deadcomp|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~8_combout\ = (\deadcomp|Add0~6_combout\ & \ucomp|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|Add0~6_combout\,
	datac => \ucomp|comp_out~q\,
	combout => \deadcomp|Add0~8_combout\);

-- Location: FF_X15_Y14_N3
\deadcomp|var_Dead_Count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count1\(3));

-- Location: LCCOMB_X15_Y14_N14
\deadcomp|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~9_combout\ = (\deadcomp|var_Dead_Count1\(4) & (\deadcomp|Add0~7\ $ (GND))) # (!\deadcomp|var_Dead_Count1\(4) & (!\deadcomp|Add0~7\ & VCC))
-- \deadcomp|Add0~10\ = CARRY((\deadcomp|var_Dead_Count1\(4) & !\deadcomp|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deadcomp|var_Dead_Count1\(4),
	datad => VCC,
	cin => \deadcomp|Add0~7\,
	combout => \deadcomp|Add0~9_combout\,
	cout => \deadcomp|Add0~10\);

-- Location: LCCOMB_X15_Y14_N4
\deadcomp|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~16_combout\ = (\ucomp|comp_out~q\ & \deadcomp|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucomp|comp_out~q\,
	datac => \deadcomp|Add0~9_combout\,
	combout => \deadcomp|Add0~16_combout\);

-- Location: FF_X15_Y14_N5
\deadcomp|var_Dead_Count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count1\(4));

-- Location: LCCOMB_X15_Y14_N22
\deadcomp|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add0~17_combout\ = (\deadcomp|Add0~11_combout\ & \ucomp|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deadcomp|Add0~11_combout\,
	datac => \ucomp|comp_out~q\,
	combout => \deadcomp|Add0~17_combout\);

-- Location: LCCOMB_X15_Y14_N30
\deadcomp|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Equal0~1_combout\ = (!\deadcomp|Add0~17_combout\ & (!\deadcomp|Add0~15_combout\ & (!\deadcomp|Add0~16_combout\ & \deadcomp|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|Add0~17_combout\,
	datab => \deadcomp|Add0~15_combout\,
	datac => \deadcomp|Add0~16_combout\,
	datad => \deadcomp|Add0~8_combout\,
	combout => \deadcomp|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y14_N28
\deadcomp|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Equal0~0_combout\ = (\deadcomp|Add0~4_combout\ & (\ucomp|comp_out~q\ & (\deadcomp|Add0~2_combout\ & \deadcomp|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|Add0~4_combout\,
	datab => \ucomp|comp_out~q\,
	datac => \deadcomp|Add0~2_combout\,
	datad => \deadcomp|Add0~0_combout\,
	combout => \deadcomp|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y14_N0
\deadcomp|p_Pwm1_Out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|p_Pwm1_Out~0_combout\ = (\deadcomp|Equal0~1_combout\ & ((\deadcomp|Equal0~0_combout\) # ((\ucomp|comp_out~q\ & \deadcomp|p_Pwm1_Out~q\)))) # (!\deadcomp|Equal0~1_combout\ & (\ucomp|comp_out~q\ & (\deadcomp|p_Pwm1_Out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|Equal0~1_combout\,
	datab => \ucomp|comp_out~q\,
	datac => \deadcomp|p_Pwm1_Out~q\,
	datad => \deadcomp|Equal0~0_combout\,
	combout => \deadcomp|p_Pwm1_Out~0_combout\);

-- Location: FF_X15_Y14_N1
\deadcomp|p_Pwm1_Out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|p_Pwm1_Out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|p_Pwm1_Out~q\);

-- Location: FF_X24_Y12_N27
\deadcomp|var_Dead_Count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count2\(3));

-- Location: LCCOMB_X24_Y12_N12
\deadcomp|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~6_combout\ = (\deadcomp|var_Dead_Count2\(3) & (!\deadcomp|Add1~5\)) # (!\deadcomp|var_Dead_Count2\(3) & ((\deadcomp|Add1~5\) # (GND)))
-- \deadcomp|Add1~7\ = CARRY((!\deadcomp|Add1~5\) # (!\deadcomp|var_Dead_Count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|var_Dead_Count2\(3),
	datad => VCC,
	cin => \deadcomp|Add1~5\,
	combout => \deadcomp|Add1~6_combout\,
	cout => \deadcomp|Add1~7\);

-- Location: LCCOMB_X24_Y12_N14
\deadcomp|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~9_combout\ = (\deadcomp|var_Dead_Count2\(4) & (\deadcomp|Add1~7\ $ (GND))) # (!\deadcomp|var_Dead_Count2\(4) & (!\deadcomp|Add1~7\ & VCC))
-- \deadcomp|Add1~10\ = CARRY((\deadcomp|var_Dead_Count2\(4) & !\deadcomp|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deadcomp|var_Dead_Count2\(4),
	datad => VCC,
	cin => \deadcomp|Add1~7\,
	combout => \deadcomp|Add1~9_combout\,
	cout => \deadcomp|Add1~10\);

-- Location: LCCOMB_X24_Y12_N28
\deadcomp|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~16_combout\ = (\deadcomp|Add1~9_combout\ & !\ucomp|comp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|Add1~9_combout\,
	datad => \ucomp|comp_out~q\,
	combout => \deadcomp|Add1~16_combout\);

-- Location: FF_X24_Y12_N29
\deadcomp|var_Dead_Count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count2\(4));

-- Location: LCCOMB_X24_Y12_N16
\deadcomp|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~11_combout\ = (\deadcomp|var_Dead_Count2\(5) & (!\deadcomp|Add1~10\)) # (!\deadcomp|var_Dead_Count2\(5) & ((\deadcomp|Add1~10\) # (GND)))
-- \deadcomp|Add1~12\ = CARRY((!\deadcomp|Add1~10\) # (!\deadcomp|var_Dead_Count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|var_Dead_Count2\(5),
	datad => VCC,
	cin => \deadcomp|Add1~10\,
	combout => \deadcomp|Add1~11_combout\,
	cout => \deadcomp|Add1~12\);

-- Location: LCCOMB_X24_Y12_N30
\deadcomp|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~17_combout\ = (!\ucomp|comp_out~q\ & \deadcomp|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucomp|comp_out~q\,
	datad => \deadcomp|Add1~11_combout\,
	combout => \deadcomp|Add1~17_combout\);

-- Location: FF_X24_Y12_N31
\deadcomp|var_Dead_Count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count2\(5));

-- Location: LCCOMB_X24_Y12_N18
\deadcomp|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~13_combout\ = \deadcomp|var_Dead_Count2\(6) $ (!\deadcomp|Add1~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deadcomp|var_Dead_Count2\(6),
	cin => \deadcomp|Add1~12\,
	combout => \deadcomp|Add1~13_combout\);

-- Location: LCCOMB_X24_Y12_N0
\deadcomp|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~15_combout\ = (!\ucomp|comp_out~q\ & \deadcomp|Add1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucomp|comp_out~q\,
	datad => \deadcomp|Add1~13_combout\,
	combout => \deadcomp|Add1~15_combout\);

-- Location: FF_X24_Y12_N1
\deadcomp|var_Dead_Count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count2\(6));

-- Location: LCCOMB_X24_Y12_N4
\deadcomp|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|LessThan1~0_combout\ = (((!\deadcomp|var_Dead_Count2\(0)) # (!\deadcomp|var_Dead_Count2\(3))) # (!\deadcomp|var_Dead_Count2\(1))) # (!\deadcomp|var_Dead_Count2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|var_Dead_Count2\(2),
	datab => \deadcomp|var_Dead_Count2\(1),
	datac => \deadcomp|var_Dead_Count2\(3),
	datad => \deadcomp|var_Dead_Count2\(0),
	combout => \deadcomp|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y12_N2
\deadcomp|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|LessThan1~1_combout\ = (!\deadcomp|var_Dead_Count2\(5) & (!\deadcomp|var_Dead_Count2\(6) & (\deadcomp|LessThan1~0_combout\ & !\deadcomp|var_Dead_Count2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|var_Dead_Count2\(5),
	datab => \deadcomp|var_Dead_Count2\(6),
	datac => \deadcomp|LessThan1~0_combout\,
	datad => \deadcomp|var_Dead_Count2\(4),
	combout => \deadcomp|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y12_N6
\deadcomp|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~0_combout\ = (\deadcomp|var_Dead_Count2\(0) & (\deadcomp|LessThan1~1_combout\ $ (VCC))) # (!\deadcomp|var_Dead_Count2\(0) & (\deadcomp|LessThan1~1_combout\ & VCC))
-- \deadcomp|Add1~1\ = CARRY((\deadcomp|var_Dead_Count2\(0) & \deadcomp|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|var_Dead_Count2\(0),
	datab => \deadcomp|LessThan1~1_combout\,
	datad => VCC,
	combout => \deadcomp|Add1~0_combout\,
	cout => \deadcomp|Add1~1\);

-- Location: LCCOMB_X16_Y13_N18
\deadcomp|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~18_combout\ = (!\ucomp|comp_out~q\ & \deadcomp|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucomp|comp_out~q\,
	datad => \deadcomp|Add1~0_combout\,
	combout => \deadcomp|Add1~18_combout\);

-- Location: FF_X16_Y13_N19
\deadcomp|var_Dead_Count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count2\(0));

-- Location: LCCOMB_X24_Y12_N8
\deadcomp|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~2_combout\ = (\deadcomp|var_Dead_Count2\(1) & (!\deadcomp|Add1~1\)) # (!\deadcomp|var_Dead_Count2\(1) & ((\deadcomp|Add1~1\) # (GND)))
-- \deadcomp|Add1~3\ = CARRY((!\deadcomp|Add1~1\) # (!\deadcomp|var_Dead_Count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deadcomp|var_Dead_Count2\(1),
	datad => VCC,
	cin => \deadcomp|Add1~1\,
	combout => \deadcomp|Add1~2_combout\,
	cout => \deadcomp|Add1~3\);

-- Location: LCCOMB_X16_Y13_N4
\deadcomp|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~19_combout\ = (!\ucomp|comp_out~q\ & \deadcomp|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucomp|comp_out~q\,
	datad => \deadcomp|Add1~2_combout\,
	combout => \deadcomp|Add1~19_combout\);

-- Location: FF_X16_Y13_N5
\deadcomp|var_Dead_Count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count2\(1));

-- Location: LCCOMB_X24_Y12_N10
\deadcomp|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~4_combout\ = (\deadcomp|var_Dead_Count2\(2) & (\deadcomp|Add1~3\ $ (GND))) # (!\deadcomp|var_Dead_Count2\(2) & (!\deadcomp|Add1~3\ & VCC))
-- \deadcomp|Add1~5\ = CARRY((\deadcomp|var_Dead_Count2\(2) & !\deadcomp|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|var_Dead_Count2\(2),
	datad => VCC,
	cin => \deadcomp|Add1~3\,
	combout => \deadcomp|Add1~4_combout\,
	cout => \deadcomp|Add1~5\);

-- Location: LCCOMB_X16_Y14_N14
\deadcomp|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~20_combout\ = (!\ucomp|comp_out~q\ & \deadcomp|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucomp|comp_out~q\,
	datad => \deadcomp|Add1~4_combout\,
	combout => \deadcomp|Add1~20_combout\);

-- Location: FF_X16_Y14_N15
\deadcomp|var_Dead_Count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|var_Dead_Count2\(2));

-- Location: LCCOMB_X24_Y12_N26
\deadcomp|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Add1~8_combout\ = (!\ucomp|comp_out~q\ & \deadcomp|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucomp|comp_out~q\,
	datac => \deadcomp|Add1~6_combout\,
	combout => \deadcomp|Add1~8_combout\);

-- Location: LCCOMB_X24_Y12_N22
\deadcomp|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Equal1~1_combout\ = (\deadcomp|Add1~8_combout\ & (!\deadcomp|Add1~16_combout\ & (!\deadcomp|Add1~17_combout\ & !\deadcomp|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|Add1~8_combout\,
	datab => \deadcomp|Add1~16_combout\,
	datac => \deadcomp|Add1~17_combout\,
	datad => \deadcomp|Add1~15_combout\,
	combout => \deadcomp|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y12_N20
\deadcomp|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|Equal1~0_combout\ = (\deadcomp|Add1~4_combout\ & (!\ucomp|comp_out~q\ & (\deadcomp|Add1~2_combout\ & \deadcomp|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|Add1~4_combout\,
	datab => \ucomp|comp_out~q\,
	datac => \deadcomp|Add1~2_combout\,
	datad => \deadcomp|Add1~0_combout\,
	combout => \deadcomp|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y12_N24
\deadcomp|p_Pwm2_Out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deadcomp|p_Pwm2_Out~0_combout\ = (\deadcomp|Equal1~1_combout\ & ((\deadcomp|Equal1~0_combout\) # ((!\ucomp|comp_out~q\ & \deadcomp|p_Pwm2_Out~q\)))) # (!\deadcomp|Equal1~1_combout\ & (!\ucomp|comp_out~q\ & (\deadcomp|p_Pwm2_Out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deadcomp|Equal1~1_combout\,
	datab => \ucomp|comp_out~q\,
	datac => \deadcomp|p_Pwm2_Out~q\,
	datad => \deadcomp|Equal1~0_combout\,
	combout => \deadcomp|p_Pwm2_Out~0_combout\);

-- Location: FF_X24_Y12_N25
\deadcomp|p_Pwm2_Out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \upll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \deadcomp|p_Pwm2_Out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deadcomp|p_Pwm2_Out~q\);

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


