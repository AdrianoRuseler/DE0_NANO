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

-- DATE "01/19/2015 17:45:29"

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

ENTITY 	DE0_NANO_base IS
    PORT (
	CLOCK_50 : IN std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	GPIO_0_IN : IN std_logic_vector(1 DOWNTO 0);
	GPIO_0 : OUT std_logic_vector(33 DOWNTO 0);
	GPIO_1_IN : IN std_logic_vector(1 DOWNTO 0);
	GPIO_1 : OUT std_logic_vector(33 DOWNTO 0)
	);
END DE0_NANO_base;

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
-- GPIO_0_IN[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_IN[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[8]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[9]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[16]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[17]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[18]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[19]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[20]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[21]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[22]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[23]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[24]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[25]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[26]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[27]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[28]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[29]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[30]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[31]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[32]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[33]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1_IN[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1_IN[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[7]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[8]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[9]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[10]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[11]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[12]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[13]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[14]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[15]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[16]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[17]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[18]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[19]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[20]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[21]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[22]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[23]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[24]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[25]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[26]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[27]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[28]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[29]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[30]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[31]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[32]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[33]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE0_NANO_base IS
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
SIGNAL ww_GPIO_0_IN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_GPIO_0 : std_logic_vector(33 DOWNTO 0);
SIGNAL ww_GPIO_1_IN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_GPIO_1 : std_logic_vector(33 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \GPIO_0_IN[0]~input_o\ : std_logic;
SIGNAL \GPIO_0_IN[1]~input_o\ : std_logic;
SIGNAL \GPIO_1_IN[0]~input_o\ : std_logic;
SIGNAL \GPIO_1_IN[1]~input_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \GPIO_0[0]~output_o\ : std_logic;
SIGNAL \GPIO_0[1]~output_o\ : std_logic;
SIGNAL \GPIO_0[2]~output_o\ : std_logic;
SIGNAL \GPIO_0[3]~output_o\ : std_logic;
SIGNAL \GPIO_0[4]~output_o\ : std_logic;
SIGNAL \GPIO_0[5]~output_o\ : std_logic;
SIGNAL \GPIO_0[6]~output_o\ : std_logic;
SIGNAL \GPIO_0[7]~output_o\ : std_logic;
SIGNAL \GPIO_0[8]~output_o\ : std_logic;
SIGNAL \GPIO_0[9]~output_o\ : std_logic;
SIGNAL \GPIO_0[10]~output_o\ : std_logic;
SIGNAL \GPIO_0[11]~output_o\ : std_logic;
SIGNAL \GPIO_0[12]~output_o\ : std_logic;
SIGNAL \GPIO_0[13]~output_o\ : std_logic;
SIGNAL \GPIO_0[14]~output_o\ : std_logic;
SIGNAL \GPIO_0[15]~output_o\ : std_logic;
SIGNAL \GPIO_0[16]~output_o\ : std_logic;
SIGNAL \GPIO_0[17]~output_o\ : std_logic;
SIGNAL \GPIO_0[18]~output_o\ : std_logic;
SIGNAL \GPIO_0[19]~output_o\ : std_logic;
SIGNAL \GPIO_0[20]~output_o\ : std_logic;
SIGNAL \GPIO_0[21]~output_o\ : std_logic;
SIGNAL \GPIO_0[22]~output_o\ : std_logic;
SIGNAL \GPIO_0[23]~output_o\ : std_logic;
SIGNAL \GPIO_0[24]~output_o\ : std_logic;
SIGNAL \GPIO_0[25]~output_o\ : std_logic;
SIGNAL \GPIO_0[26]~output_o\ : std_logic;
SIGNAL \GPIO_0[27]~output_o\ : std_logic;
SIGNAL \GPIO_0[28]~output_o\ : std_logic;
SIGNAL \GPIO_0[29]~output_o\ : std_logic;
SIGNAL \GPIO_0[30]~output_o\ : std_logic;
SIGNAL \GPIO_0[31]~output_o\ : std_logic;
SIGNAL \GPIO_0[32]~output_o\ : std_logic;
SIGNAL \GPIO_0[33]~output_o\ : std_logic;
SIGNAL \GPIO_1[0]~output_o\ : std_logic;
SIGNAL \GPIO_1[1]~output_o\ : std_logic;
SIGNAL \GPIO_1[2]~output_o\ : std_logic;
SIGNAL \GPIO_1[3]~output_o\ : std_logic;
SIGNAL \GPIO_1[4]~output_o\ : std_logic;
SIGNAL \GPIO_1[5]~output_o\ : std_logic;
SIGNAL \GPIO_1[6]~output_o\ : std_logic;
SIGNAL \GPIO_1[7]~output_o\ : std_logic;
SIGNAL \GPIO_1[8]~output_o\ : std_logic;
SIGNAL \GPIO_1[9]~output_o\ : std_logic;
SIGNAL \GPIO_1[10]~output_o\ : std_logic;
SIGNAL \GPIO_1[11]~output_o\ : std_logic;
SIGNAL \GPIO_1[12]~output_o\ : std_logic;
SIGNAL \GPIO_1[13]~output_o\ : std_logic;
SIGNAL \GPIO_1[14]~output_o\ : std_logic;
SIGNAL \GPIO_1[15]~output_o\ : std_logic;
SIGNAL \GPIO_1[16]~output_o\ : std_logic;
SIGNAL \GPIO_1[17]~output_o\ : std_logic;
SIGNAL \GPIO_1[18]~output_o\ : std_logic;
SIGNAL \GPIO_1[19]~output_o\ : std_logic;
SIGNAL \GPIO_1[20]~output_o\ : std_logic;
SIGNAL \GPIO_1[21]~output_o\ : std_logic;
SIGNAL \GPIO_1[22]~output_o\ : std_logic;
SIGNAL \GPIO_1[23]~output_o\ : std_logic;
SIGNAL \GPIO_1[24]~output_o\ : std_logic;
SIGNAL \GPIO_1[25]~output_o\ : std_logic;
SIGNAL \GPIO_1[26]~output_o\ : std_logic;
SIGNAL \GPIO_1[27]~output_o\ : std_logic;
SIGNAL \GPIO_1[28]~output_o\ : std_logic;
SIGNAL \GPIO_1[29]~output_o\ : std_logic;
SIGNAL \GPIO_1[30]~output_o\ : std_logic;
SIGNAL \GPIO_1[31]~output_o\ : std_logic;
SIGNAL \GPIO_1[32]~output_o\ : std_logic;
SIGNAL \GPIO_1[33]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \cnt~8_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \cnt~7_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \cnt~6_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \cnt~5_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \cnt~4_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \cnt~3_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \cnt~10_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \cnt~11_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \cnt~9_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \blink~0_combout\ : std_logic;
SIGNAL \blink~q\ : std_logic;
SIGNAL cnt : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_blink~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LED <= ww_LED;
ww_SW <= SW;
ww_KEY <= KEY;
ww_GPIO_0_IN <= GPIO_0_IN;
GPIO_0 <= ww_GPIO_0;
ww_GPIO_1_IN <= GPIO_1_IN;
GPIO_1 <= ww_GPIO_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_blink~q\ <= NOT \blink~q\;

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blink~q\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_blink~q\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

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
	o => \LED[2]~output_o\);

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
	o => \LED[3]~output_o\);

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
	o => \LED[4]~output_o\);

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
	o => \LED[5]~output_o\);

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
	o => \LED[6]~output_o\);

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
	o => \LED[7]~output_o\);

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
	o => \GPIO_0[0]~output_o\);

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
	o => \GPIO_0[1]~output_o\);

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
	o => \GPIO_0[2]~output_o\);

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
	o => \GPIO_0[3]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\GPIO_0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[4]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\GPIO_0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[5]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\GPIO_0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[6]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\GPIO_0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[7]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\GPIO_0[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[8]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\GPIO_0[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[9]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\GPIO_0[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[10]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\GPIO_0[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[11]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\GPIO_0[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[12]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\GPIO_0[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[13]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\GPIO_0[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[14]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\GPIO_0[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[15]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\GPIO_0[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[16]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\GPIO_0[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[17]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\GPIO_0[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[18]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\GPIO_0[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[19]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\GPIO_0[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[20]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\GPIO_0[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[21]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\GPIO_0[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[22]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\GPIO_0[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[23]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\GPIO_0[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[24]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\GPIO_0[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[25]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\GPIO_0[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[26]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\GPIO_0[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[27]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\GPIO_0[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[28]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\GPIO_0[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[29]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\GPIO_0[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[30]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\GPIO_0[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[31]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\GPIO_0[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[32]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\GPIO_0[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[33]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\GPIO_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\GPIO_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\GPIO_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\GPIO_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\GPIO_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\GPIO_1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\GPIO_1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\GPIO_1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\GPIO_1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\GPIO_1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[9]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\GPIO_1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[10]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\GPIO_1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[11]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\GPIO_1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[12]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\GPIO_1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\GPIO_1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[14]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\GPIO_1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[15]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\GPIO_1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[16]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\GPIO_1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[17]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\GPIO_1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[18]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\GPIO_1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[19]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\GPIO_1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[20]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\GPIO_1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[21]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\GPIO_1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[22]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\GPIO_1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[23]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\GPIO_1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[24]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\GPIO_1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[25]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\GPIO_1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[26]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\GPIO_1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[27]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\GPIO_1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[28]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\GPIO_1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[29]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\GPIO_1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[30]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\GPIO_1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[31]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\GPIO_1[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[32]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\GPIO_1[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[33]~output_o\);

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

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y7_N8
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X31_Y7_N9
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X31_Y7_N10
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cnt(1) & (!\Add0~1\)) # (!cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X31_Y7_N11
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X31_Y7_N12
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cnt(2) & (\Add0~3\ $ (GND))) # (!cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X31_Y7_N13
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X31_Y7_N14
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt(3) & (!\Add0~5\)) # (!cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X31_Y7_N15
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X31_Y7_N16
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (cnt(4) & (\Add0~7\ $ (GND))) # (!cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X31_Y7_N17
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X31_Y7_N18
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (cnt(5) & (!\Add0~9\)) # (!cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X31_Y7_N19
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X31_Y7_N20
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (cnt(6) & (\Add0~11\ $ (GND))) # (!cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X31_Y7_N6
\cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~8_combout\ = (\Add0~12_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => \Equal0~7_combout\,
	combout => \cnt~8_combout\);

-- Location: FF_X31_Y7_N7
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X31_Y7_N22
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (cnt(7) & (!\Add0~13\)) # (!cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X31_Y7_N23
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X31_Y7_N24
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (cnt(8) & (\Add0~15\ $ (GND))) # (!cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X31_Y7_N25
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X31_Y7_N26
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (cnt(9) & (!\Add0~17\)) # (!cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X31_Y7_N27
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X31_Y7_N28
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (cnt(10) & (\Add0~19\ $ (GND))) # (!cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X31_Y7_N29
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LCCOMB_X31_Y7_N30
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (cnt(11) & (!\Add0~21\)) # (!cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X32_Y6_N4
\cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~7_combout\ = (!\Equal0~7_combout\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datad => \Add0~22_combout\,
	combout => \cnt~7_combout\);

-- Location: FF_X32_Y6_N5
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LCCOMB_X31_Y6_N0
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (cnt(12) & (\Add0~23\ $ (GND))) # (!cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X32_Y6_N6
\cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~6_combout\ = (\Add0~24_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~7_combout\,
	combout => \cnt~6_combout\);

-- Location: FF_X32_Y6_N7
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: LCCOMB_X31_Y6_N2
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (cnt(13) & (!\Add0~25\)) # (!cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X32_Y6_N2
\cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~5_combout\ = (!\Equal0~7_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datad => \Add0~26_combout\,
	combout => \cnt~5_combout\);

-- Location: FF_X32_Y6_N3
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LCCOMB_X31_Y6_N4
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (cnt(14) & (\Add0~27\ $ (GND))) # (!cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X32_Y6_N20
\cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~4_combout\ = (\Add0~28_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \Equal0~7_combout\,
	combout => \cnt~4_combout\);

-- Location: FF_X32_Y6_N21
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: LCCOMB_X31_Y6_N6
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (cnt(15) & (!\Add0~29\)) # (!cnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X31_Y6_N7
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: LCCOMB_X31_Y6_N8
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (cnt(16) & (\Add0~31\ $ (GND))) # (!cnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((cnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X31_Y6_N28
\cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~3_combout\ = (\Add0~32_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~32_combout\,
	datac => \Equal0~7_combout\,
	combout => \cnt~3_combout\);

-- Location: FF_X31_Y6_N29
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: LCCOMB_X31_Y6_N10
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (cnt(17) & (!\Add0~33\)) # (!cnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X31_Y6_N11
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: LCCOMB_X31_Y6_N12
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (cnt(18) & (\Add0~35\ $ (GND))) # (!cnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((cnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X31_Y6_N30
\cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = (\Add0~36_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datac => \Equal0~7_combout\,
	combout => \cnt~2_combout\);

-- Location: FF_X31_Y6_N31
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: LCCOMB_X31_Y6_N14
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (cnt(19) & (!\Add0~37\)) # (!cnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X32_Y6_N28
\cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = (!\Equal0~7_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datad => \Add0~38_combout\,
	combout => \cnt~1_combout\);

-- Location: FF_X32_Y6_N29
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: LCCOMB_X31_Y6_N16
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (cnt(20) & (\Add0~39\ $ (GND))) # (!cnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((cnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X32_Y6_N22
\cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = (\Add0~40_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \Equal0~7_combout\,
	combout => \cnt~0_combout\);

-- Location: FF_X32_Y6_N23
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

-- Location: LCCOMB_X31_Y6_N18
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (cnt(21) & (!\Add0~41\)) # (!cnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X31_Y6_N26
\cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~10_combout\ = (!\Equal0~7_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~42_combout\,
	combout => \cnt~10_combout\);

-- Location: FF_X31_Y6_N27
\cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(21));

-- Location: LCCOMB_X31_Y6_N20
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (cnt(22) & (\Add0~43\ $ (GND))) # (!cnt(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((cnt(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X32_Y6_N26
\cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~11_combout\ = (!\Equal0~7_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datad => \Add0~44_combout\,
	combout => \cnt~11_combout\);

-- Location: FF_X32_Y6_N27
\cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(22));

-- Location: LCCOMB_X31_Y6_N22
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (cnt(23) & (!\Add0~45\)) # (!cnt(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X31_Y6_N23
\cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(23));

-- Location: LCCOMB_X31_Y6_N24
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = cnt(24) $ (!\Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(24),
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X32_Y6_N12
\cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~9_combout\ = (!\Equal0~7_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datad => \Add0~48_combout\,
	combout => \cnt~9_combout\);

-- Location: FF_X32_Y6_N13
\cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(24));

-- Location: LCCOMB_X32_Y6_N24
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (cnt(22) & (!cnt(23) & (cnt(21) & cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datab => cnt(23),
	datac => cnt(21),
	datad => cnt(0),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X31_Y7_N2
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (cnt(3) & (cnt(4) & (cnt(1) & cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(4),
	datac => cnt(1),
	datad => cnt(2),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X32_Y6_N30
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cnt(17) & (cnt(19) & (cnt(20) & cnt(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(17),
	datab => cnt(19),
	datac => cnt(20),
	datad => cnt(18),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y6_N0
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!cnt(15) & (cnt(14) & (cnt(16) & cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datab => cnt(14),
	datac => cnt(16),
	datad => cnt(13),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X31_Y7_N0
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!cnt(6) & (cnt(5) & (!cnt(7) & !cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(5),
	datac => cnt(7),
	datad => cnt(8),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X31_Y7_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!cnt(9) & (!cnt(10) & (cnt(12) & cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datab => cnt(10),
	datac => cnt(12),
	datad => cnt(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X32_Y6_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X32_Y6_N10
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (cnt(24) & (\Equal0~6_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X32_Y6_N16
\blink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink~0_combout\ = \blink~q\ $ (\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blink~q\,
	datad => \Equal0~7_combout\,
	combout => \blink~0_combout\);

-- Location: FF_X32_Y6_N17
blink : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink~q\);

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

-- Location: IOIBUF_X25_Y34_N15
\GPIO_0_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0_IN(0),
	o => \GPIO_0_IN[0]~input_o\);

-- Location: IOIBUF_X25_Y34_N22
\GPIO_0_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0_IN(1),
	o => \GPIO_0_IN[1]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\GPIO_1_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1_IN(0),
	o => \GPIO_1_IN[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\GPIO_1_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1_IN(1),
	o => \GPIO_1_IN[1]~input_o\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_GPIO_0(0) <= \GPIO_0[0]~output_o\;

ww_GPIO_0(1) <= \GPIO_0[1]~output_o\;

ww_GPIO_0(2) <= \GPIO_0[2]~output_o\;

ww_GPIO_0(3) <= \GPIO_0[3]~output_o\;

ww_GPIO_0(4) <= \GPIO_0[4]~output_o\;

ww_GPIO_0(5) <= \GPIO_0[5]~output_o\;

ww_GPIO_0(6) <= \GPIO_0[6]~output_o\;

ww_GPIO_0(7) <= \GPIO_0[7]~output_o\;

ww_GPIO_0(8) <= \GPIO_0[8]~output_o\;

ww_GPIO_0(9) <= \GPIO_0[9]~output_o\;

ww_GPIO_0(10) <= \GPIO_0[10]~output_o\;

ww_GPIO_0(11) <= \GPIO_0[11]~output_o\;

ww_GPIO_0(12) <= \GPIO_0[12]~output_o\;

ww_GPIO_0(13) <= \GPIO_0[13]~output_o\;

ww_GPIO_0(14) <= \GPIO_0[14]~output_o\;

ww_GPIO_0(15) <= \GPIO_0[15]~output_o\;

ww_GPIO_0(16) <= \GPIO_0[16]~output_o\;

ww_GPIO_0(17) <= \GPIO_0[17]~output_o\;

ww_GPIO_0(18) <= \GPIO_0[18]~output_o\;

ww_GPIO_0(19) <= \GPIO_0[19]~output_o\;

ww_GPIO_0(20) <= \GPIO_0[20]~output_o\;

ww_GPIO_0(21) <= \GPIO_0[21]~output_o\;

ww_GPIO_0(22) <= \GPIO_0[22]~output_o\;

ww_GPIO_0(23) <= \GPIO_0[23]~output_o\;

ww_GPIO_0(24) <= \GPIO_0[24]~output_o\;

ww_GPIO_0(25) <= \GPIO_0[25]~output_o\;

ww_GPIO_0(26) <= \GPIO_0[26]~output_o\;

ww_GPIO_0(27) <= \GPIO_0[27]~output_o\;

ww_GPIO_0(28) <= \GPIO_0[28]~output_o\;

ww_GPIO_0(29) <= \GPIO_0[29]~output_o\;

ww_GPIO_0(30) <= \GPIO_0[30]~output_o\;

ww_GPIO_0(31) <= \GPIO_0[31]~output_o\;

ww_GPIO_0(32) <= \GPIO_0[32]~output_o\;

ww_GPIO_0(33) <= \GPIO_0[33]~output_o\;

ww_GPIO_1(0) <= \GPIO_1[0]~output_o\;

ww_GPIO_1(1) <= \GPIO_1[1]~output_o\;

ww_GPIO_1(2) <= \GPIO_1[2]~output_o\;

ww_GPIO_1(3) <= \GPIO_1[3]~output_o\;

ww_GPIO_1(4) <= \GPIO_1[4]~output_o\;

ww_GPIO_1(5) <= \GPIO_1[5]~output_o\;

ww_GPIO_1(6) <= \GPIO_1[6]~output_o\;

ww_GPIO_1(7) <= \GPIO_1[7]~output_o\;

ww_GPIO_1(8) <= \GPIO_1[8]~output_o\;

ww_GPIO_1(9) <= \GPIO_1[9]~output_o\;

ww_GPIO_1(10) <= \GPIO_1[10]~output_o\;

ww_GPIO_1(11) <= \GPIO_1[11]~output_o\;

ww_GPIO_1(12) <= \GPIO_1[12]~output_o\;

ww_GPIO_1(13) <= \GPIO_1[13]~output_o\;

ww_GPIO_1(14) <= \GPIO_1[14]~output_o\;

ww_GPIO_1(15) <= \GPIO_1[15]~output_o\;

ww_GPIO_1(16) <= \GPIO_1[16]~output_o\;

ww_GPIO_1(17) <= \GPIO_1[17]~output_o\;

ww_GPIO_1(18) <= \GPIO_1[18]~output_o\;

ww_GPIO_1(19) <= \GPIO_1[19]~output_o\;

ww_GPIO_1(20) <= \GPIO_1[20]~output_o\;

ww_GPIO_1(21) <= \GPIO_1[21]~output_o\;

ww_GPIO_1(22) <= \GPIO_1[22]~output_o\;

ww_GPIO_1(23) <= \GPIO_1[23]~output_o\;

ww_GPIO_1(24) <= \GPIO_1[24]~output_o\;

ww_GPIO_1(25) <= \GPIO_1[25]~output_o\;

ww_GPIO_1(26) <= \GPIO_1[26]~output_o\;

ww_GPIO_1(27) <= \GPIO_1[27]~output_o\;

ww_GPIO_1(28) <= \GPIO_1[28]~output_o\;

ww_GPIO_1(29) <= \GPIO_1[29]~output_o\;

ww_GPIO_1(30) <= \GPIO_1[30]~output_o\;

ww_GPIO_1(31) <= \GPIO_1[31]~output_o\;

ww_GPIO_1(32) <= \GPIO_1[32]~output_o\;

ww_GPIO_1(33) <= \GPIO_1[33]~output_o\;
END structure;


