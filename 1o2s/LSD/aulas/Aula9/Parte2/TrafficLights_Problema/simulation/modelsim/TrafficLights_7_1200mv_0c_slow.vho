-- Copyright (C) 1991-2014 Altera Corporation
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
-- VERSION "Version 13.1.4 Build 182 03/12/2014 SJ Full Version"

-- DATE "04/17/2015 00:22:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	TrafficLightsTop IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END TrafficLightsTop;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TrafficLightsTop IS
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
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_div_1hz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_div_1hz|Add0~0_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~1\ : std_logic;
SIGNAL \clk_div_1hz|Add0~2_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~3\ : std_logic;
SIGNAL \clk_div_1hz|Add0~4_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~5\ : std_logic;
SIGNAL \clk_div_1hz|Add0~6_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~7\ : std_logic;
SIGNAL \clk_div_1hz|Add0~8_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~9\ : std_logic;
SIGNAL \clk_div_1hz|Add0~10_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~11\ : std_logic;
SIGNAL \clk_div_1hz|Add0~12_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~13\ : std_logic;
SIGNAL \clk_div_1hz|Add0~14_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~7_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~15\ : std_logic;
SIGNAL \clk_div_1hz|Add0~16_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~17\ : std_logic;
SIGNAL \clk_div_1hz|Add0~18_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~19\ : std_logic;
SIGNAL \clk_div_1hz|Add0~20_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~21\ : std_logic;
SIGNAL \clk_div_1hz|Add0~22_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~23\ : std_logic;
SIGNAL \clk_div_1hz|Add0~24_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~6_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~25\ : std_logic;
SIGNAL \clk_div_1hz|Add0~26_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~5_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~27\ : std_logic;
SIGNAL \clk_div_1hz|Add0~28_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~4_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~29\ : std_logic;
SIGNAL \clk_div_1hz|Add0~30_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~11_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~31\ : std_logic;
SIGNAL \clk_div_1hz|Add0~32_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~33\ : std_logic;
SIGNAL \clk_div_1hz|Add0~34_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~10_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~35\ : std_logic;
SIGNAL \clk_div_1hz|Add0~36_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~37\ : std_logic;
SIGNAL \clk_div_1hz|Add0~38_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~3_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~39\ : std_logic;
SIGNAL \clk_div_1hz|Add0~40_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~2_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~41\ : std_logic;
SIGNAL \clk_div_1hz|Add0~42_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~1_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~43\ : std_logic;
SIGNAL \clk_div_1hz|Add0~44_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~0_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~45\ : std_logic;
SIGNAL \clk_div_1hz|Add0~46_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~9_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~47\ : std_logic;
SIGNAL \clk_div_1hz|Add0~48_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~7_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~8_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~5_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~49\ : std_logic;
SIGNAL \clk_div_1hz|Add0~51\ : std_logic;
SIGNAL \clk_div_1hz|Add0~52_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~1_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~2_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~3_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~53\ : std_logic;
SIGNAL \clk_div_1hz|Add0~54_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~55\ : std_logic;
SIGNAL \clk_div_1hz|Add0~56_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~57\ : std_logic;
SIGNAL \clk_div_1hz|Add0~58_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~59\ : std_logic;
SIGNAL \clk_div_1hz|Add0~60_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~4_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~6_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~9_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~50_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~8_combout\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~0_combout\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~1_combout\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~2_combout\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~3_combout\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~q\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \main_fsm|s_currentState.TInit~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \main_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~11_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TYellow2~q\ : std_logic;
SIGNAL \main_fsm|s_currentState~16_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TRed2~q\ : std_logic;
SIGNAL \main_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~14_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TGreen1~q\ : std_logic;
SIGNAL \main_fsm|sync_proc~11_combout\ : std_logic;
SIGNAL \main_fsm|Selector6~0_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~13_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TYellow1~q\ : std_logic;
SIGNAL \main_fsm|sync_proc~12_combout\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~1_combout\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~2_combout\ : std_logic;
SIGNAL \main_fsm|sync_proc~9_combout\ : std_logic;
SIGNAL \main_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \main_fsm|Selector4~1_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~12_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TIntermit~q\ : std_logic;
SIGNAL \main_fsm|sync_proc~10_combout\ : std_logic;
SIGNAL \main_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \main_fsm|sync_proc~8_combout\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~0_combout\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~3_combout\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~q\ : std_logic;
SIGNAL \timer_fsm|Add1~1_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~0_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~3_combout\ : std_logic;
SIGNAL \timer_fsm|s_cntZero~1_combout\ : std_logic;
SIGNAL \timer_fsm|s_cntZero~0_combout\ : std_logic;
SIGNAL \timer_fsm|s_counter[0]~0_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~2\ : std_logic;
SIGNAL \timer_fsm|Add1~5_combout\ : std_logic;
SIGNAL \main_fsm|WideOr6~combout\ : std_logic;
SIGNAL \timer_fsm|Add1~4_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~7_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~6\ : std_logic;
SIGNAL \timer_fsm|Add1~9_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~8_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~11_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~10\ : std_logic;
SIGNAL \timer_fsm|Add1~12_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~23_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~24_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~13\ : std_logic;
SIGNAL \timer_fsm|Add1~14_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~25_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~15\ : std_logic;
SIGNAL \timer_fsm|Add1~16_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~26_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~17\ : std_logic;
SIGNAL \timer_fsm|Add1~18_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~27_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~19\ : std_logic;
SIGNAL \timer_fsm|Add1~20_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~22_combout\ : std_logic;
SIGNAL \timer_fsm|s_cntZero~2_combout\ : std_logic;
SIGNAL \timer_fsm|s_cntZero~q\ : std_logic;
SIGNAL \main_fsm|s_currentState~15_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TRed1~q\ : std_logic;
SIGNAL \main_fsm|Selector10~0_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~10_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TGreen2~q\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \main_fsm|WideOr2~0_combout\ : std_logic;
SIGNAL \main_fsm|WideOr1~0_combout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \timer_fsm|s_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \main_fsm|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_WideOr2~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clk_div_1hz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div_1hz|clkOut~q\);
\clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \clk_div_1hz|clkOut~clkctrl_outclk\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\main_fsm|ALT_INV_WideOr1~0_combout\ <= NOT \main_fsm|WideOr1~0_combout\;
\main_fsm|ALT_INV_WideOr2~0_combout\ <= NOT \main_fsm|WideOr2~0_combout\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_fsm|s_currentState.TGreen2~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_fsm|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_fsm|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_fsm|s_currentState.TGreen1~q\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X110_Y44_N2
\clk_div_1hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~0_combout\ = \clk_div_1hz|s_divCounter\(0) $ (VCC)
-- \clk_div_1hz|Add0~1\ = CARRY(\clk_div_1hz|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(0),
	datad => VCC,
	combout => \clk_div_1hz|Add0~0_combout\,
	cout => \clk_div_1hz|Add0~1\);

-- Location: FF_X110_Y44_N3
\clk_div_1hz|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(0));

-- Location: LCCOMB_X110_Y44_N4
\clk_div_1hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~2_combout\ = (\clk_div_1hz|s_divCounter\(1) & (!\clk_div_1hz|Add0~1\)) # (!\clk_div_1hz|s_divCounter\(1) & ((\clk_div_1hz|Add0~1\) # (GND)))
-- \clk_div_1hz|Add0~3\ = CARRY((!\clk_div_1hz|Add0~1\) # (!\clk_div_1hz|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(1),
	datad => VCC,
	cin => \clk_div_1hz|Add0~1\,
	combout => \clk_div_1hz|Add0~2_combout\,
	cout => \clk_div_1hz|Add0~3\);

-- Location: FF_X110_Y44_N5
\clk_div_1hz|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(1));

-- Location: LCCOMB_X110_Y44_N6
\clk_div_1hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~4_combout\ = (\clk_div_1hz|s_divCounter\(2) & (\clk_div_1hz|Add0~3\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(2) & (!\clk_div_1hz|Add0~3\ & VCC))
-- \clk_div_1hz|Add0~5\ = CARRY((\clk_div_1hz|s_divCounter\(2) & !\clk_div_1hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(2),
	datad => VCC,
	cin => \clk_div_1hz|Add0~3\,
	combout => \clk_div_1hz|Add0~4_combout\,
	cout => \clk_div_1hz|Add0~5\);

-- Location: FF_X110_Y44_N7
\clk_div_1hz|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(2));

-- Location: LCCOMB_X110_Y44_N8
\clk_div_1hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~6_combout\ = (\clk_div_1hz|s_divCounter\(3) & (!\clk_div_1hz|Add0~5\)) # (!\clk_div_1hz|s_divCounter\(3) & ((\clk_div_1hz|Add0~5\) # (GND)))
-- \clk_div_1hz|Add0~7\ = CARRY((!\clk_div_1hz|Add0~5\) # (!\clk_div_1hz|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(3),
	datad => VCC,
	cin => \clk_div_1hz|Add0~5\,
	combout => \clk_div_1hz|Add0~6_combout\,
	cout => \clk_div_1hz|Add0~7\);

-- Location: FF_X110_Y44_N9
\clk_div_1hz|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(3));

-- Location: LCCOMB_X110_Y44_N10
\clk_div_1hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~8_combout\ = (\clk_div_1hz|s_divCounter\(4) & (\clk_div_1hz|Add0~7\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(4) & (!\clk_div_1hz|Add0~7\ & VCC))
-- \clk_div_1hz|Add0~9\ = CARRY((\clk_div_1hz|s_divCounter\(4) & !\clk_div_1hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(4),
	datad => VCC,
	cin => \clk_div_1hz|Add0~7\,
	combout => \clk_div_1hz|Add0~8_combout\,
	cout => \clk_div_1hz|Add0~9\);

-- Location: FF_X110_Y44_N11
\clk_div_1hz|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(4));

-- Location: LCCOMB_X110_Y44_N12
\clk_div_1hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~10_combout\ = (\clk_div_1hz|s_divCounter\(5) & (!\clk_div_1hz|Add0~9\)) # (!\clk_div_1hz|s_divCounter\(5) & ((\clk_div_1hz|Add0~9\) # (GND)))
-- \clk_div_1hz|Add0~11\ = CARRY((!\clk_div_1hz|Add0~9\) # (!\clk_div_1hz|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(5),
	datad => VCC,
	cin => \clk_div_1hz|Add0~9\,
	combout => \clk_div_1hz|Add0~10_combout\,
	cout => \clk_div_1hz|Add0~11\);

-- Location: FF_X110_Y44_N13
\clk_div_1hz|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(5));

-- Location: LCCOMB_X110_Y44_N14
\clk_div_1hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~12_combout\ = (\clk_div_1hz|s_divCounter\(6) & (\clk_div_1hz|Add0~11\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(6) & (!\clk_div_1hz|Add0~11\ & VCC))
-- \clk_div_1hz|Add0~13\ = CARRY((\clk_div_1hz|s_divCounter\(6) & !\clk_div_1hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(6),
	datad => VCC,
	cin => \clk_div_1hz|Add0~11\,
	combout => \clk_div_1hz|Add0~12_combout\,
	cout => \clk_div_1hz|Add0~13\);

-- Location: FF_X110_Y44_N15
\clk_div_1hz|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(6));

-- Location: LCCOMB_X110_Y44_N16
\clk_div_1hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~14_combout\ = (\clk_div_1hz|s_divCounter\(7) & (!\clk_div_1hz|Add0~13\)) # (!\clk_div_1hz|s_divCounter\(7) & ((\clk_div_1hz|Add0~13\) # (GND)))
-- \clk_div_1hz|Add0~15\ = CARRY((!\clk_div_1hz|Add0~13\) # (!\clk_div_1hz|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(7),
	datad => VCC,
	cin => \clk_div_1hz|Add0~13\,
	combout => \clk_div_1hz|Add0~14_combout\,
	cout => \clk_div_1hz|Add0~15\);

-- Location: LCCOMB_X110_Y44_N0
\clk_div_1hz|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~7_combout\ = (\clk_div_1hz|Add0~14_combout\ & !\clk_div_1hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Add0~14_combout\,
	datad => \clk_div_1hz|Equal0~9_combout\,
	combout => \clk_div_1hz|s_divCounter~7_combout\);

-- Location: FF_X110_Y44_N1
\clk_div_1hz|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(7));

-- Location: LCCOMB_X110_Y44_N18
\clk_div_1hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~16_combout\ = (\clk_div_1hz|s_divCounter\(8) & (\clk_div_1hz|Add0~15\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(8) & (!\clk_div_1hz|Add0~15\ & VCC))
-- \clk_div_1hz|Add0~17\ = CARRY((\clk_div_1hz|s_divCounter\(8) & !\clk_div_1hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(8),
	datad => VCC,
	cin => \clk_div_1hz|Add0~15\,
	combout => \clk_div_1hz|Add0~16_combout\,
	cout => \clk_div_1hz|Add0~17\);

-- Location: FF_X110_Y44_N19
\clk_div_1hz|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(8));

-- Location: LCCOMB_X110_Y44_N20
\clk_div_1hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~18_combout\ = (\clk_div_1hz|s_divCounter\(9) & (!\clk_div_1hz|Add0~17\)) # (!\clk_div_1hz|s_divCounter\(9) & ((\clk_div_1hz|Add0~17\) # (GND)))
-- \clk_div_1hz|Add0~19\ = CARRY((!\clk_div_1hz|Add0~17\) # (!\clk_div_1hz|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(9),
	datad => VCC,
	cin => \clk_div_1hz|Add0~17\,
	combout => \clk_div_1hz|Add0~18_combout\,
	cout => \clk_div_1hz|Add0~19\);

-- Location: FF_X110_Y44_N21
\clk_div_1hz|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(9));

-- Location: LCCOMB_X110_Y44_N22
\clk_div_1hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~20_combout\ = (\clk_div_1hz|s_divCounter\(10) & (\clk_div_1hz|Add0~19\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(10) & (!\clk_div_1hz|Add0~19\ & VCC))
-- \clk_div_1hz|Add0~21\ = CARRY((\clk_div_1hz|s_divCounter\(10) & !\clk_div_1hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(10),
	datad => VCC,
	cin => \clk_div_1hz|Add0~19\,
	combout => \clk_div_1hz|Add0~20_combout\,
	cout => \clk_div_1hz|Add0~21\);

-- Location: FF_X110_Y44_N23
\clk_div_1hz|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(10));

-- Location: LCCOMB_X110_Y44_N24
\clk_div_1hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~22_combout\ = (\clk_div_1hz|s_divCounter\(11) & (!\clk_div_1hz|Add0~21\)) # (!\clk_div_1hz|s_divCounter\(11) & ((\clk_div_1hz|Add0~21\) # (GND)))
-- \clk_div_1hz|Add0~23\ = CARRY((!\clk_div_1hz|Add0~21\) # (!\clk_div_1hz|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(11),
	datad => VCC,
	cin => \clk_div_1hz|Add0~21\,
	combout => \clk_div_1hz|Add0~22_combout\,
	cout => \clk_div_1hz|Add0~23\);

-- Location: FF_X110_Y44_N25
\clk_div_1hz|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(11));

-- Location: LCCOMB_X110_Y44_N26
\clk_div_1hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~24_combout\ = (\clk_div_1hz|s_divCounter\(12) & (\clk_div_1hz|Add0~23\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(12) & (!\clk_div_1hz|Add0~23\ & VCC))
-- \clk_div_1hz|Add0~25\ = CARRY((\clk_div_1hz|s_divCounter\(12) & !\clk_div_1hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(12),
	datad => VCC,
	cin => \clk_div_1hz|Add0~23\,
	combout => \clk_div_1hz|Add0~24_combout\,
	cout => \clk_div_1hz|Add0~25\);

-- Location: LCCOMB_X111_Y43_N14
\clk_div_1hz|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~6_combout\ = (\clk_div_1hz|Add0~24_combout\ & !\clk_div_1hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|Add0~24_combout\,
	datad => \clk_div_1hz|Equal0~9_combout\,
	combout => \clk_div_1hz|s_divCounter~6_combout\);

-- Location: FF_X111_Y43_N15
\clk_div_1hz|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(12));

-- Location: LCCOMB_X110_Y44_N28
\clk_div_1hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~26_combout\ = (\clk_div_1hz|s_divCounter\(13) & (!\clk_div_1hz|Add0~25\)) # (!\clk_div_1hz|s_divCounter\(13) & ((\clk_div_1hz|Add0~25\) # (GND)))
-- \clk_div_1hz|Add0~27\ = CARRY((!\clk_div_1hz|Add0~25\) # (!\clk_div_1hz|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(13),
	datad => VCC,
	cin => \clk_div_1hz|Add0~25\,
	combout => \clk_div_1hz|Add0~26_combout\,
	cout => \clk_div_1hz|Add0~27\);

-- Location: LCCOMB_X111_Y43_N18
\clk_div_1hz|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~5_combout\ = (\clk_div_1hz|Add0~26_combout\ & !\clk_div_1hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_1hz|Add0~26_combout\,
	datad => \clk_div_1hz|Equal0~9_combout\,
	combout => \clk_div_1hz|s_divCounter~5_combout\);

-- Location: FF_X111_Y43_N19
\clk_div_1hz|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(13));

-- Location: LCCOMB_X110_Y44_N30
\clk_div_1hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~28_combout\ = (\clk_div_1hz|s_divCounter\(14) & (\clk_div_1hz|Add0~27\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(14) & (!\clk_div_1hz|Add0~27\ & VCC))
-- \clk_div_1hz|Add0~29\ = CARRY((\clk_div_1hz|s_divCounter\(14) & !\clk_div_1hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(14),
	datad => VCC,
	cin => \clk_div_1hz|Add0~27\,
	combout => \clk_div_1hz|Add0~28_combout\,
	cout => \clk_div_1hz|Add0~29\);

-- Location: LCCOMB_X111_Y43_N4
\clk_div_1hz|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~4_combout\ = (!\clk_div_1hz|Equal0~9_combout\ & \clk_div_1hz|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~9_combout\,
	datad => \clk_div_1hz|Add0~28_combout\,
	combout => \clk_div_1hz|s_divCounter~4_combout\);

-- Location: FF_X111_Y43_N7
\clk_div_1hz|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_div_1hz|s_divCounter~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(14));

-- Location: LCCOMB_X110_Y43_N0
\clk_div_1hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~30_combout\ = (\clk_div_1hz|s_divCounter\(15) & (!\clk_div_1hz|Add0~29\)) # (!\clk_div_1hz|s_divCounter\(15) & ((\clk_div_1hz|Add0~29\) # (GND)))
-- \clk_div_1hz|Add0~31\ = CARRY((!\clk_div_1hz|Add0~29\) # (!\clk_div_1hz|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(15),
	datad => VCC,
	cin => \clk_div_1hz|Add0~29\,
	combout => \clk_div_1hz|Add0~30_combout\,
	cout => \clk_div_1hz|Add0~31\);

-- Location: LCCOMB_X111_Y43_N2
\clk_div_1hz|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~11_combout\ = (\clk_div_1hz|Add0~30_combout\ & !\clk_div_1hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|Add0~30_combout\,
	datad => \clk_div_1hz|Equal0~9_combout\,
	combout => \clk_div_1hz|s_divCounter~11_combout\);

-- Location: FF_X111_Y43_N3
\clk_div_1hz|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(15));

-- Location: LCCOMB_X110_Y43_N2
\clk_div_1hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~32_combout\ = (\clk_div_1hz|s_divCounter\(16) & (\clk_div_1hz|Add0~31\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(16) & (!\clk_div_1hz|Add0~31\ & VCC))
-- \clk_div_1hz|Add0~33\ = CARRY((\clk_div_1hz|s_divCounter\(16) & !\clk_div_1hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(16),
	datad => VCC,
	cin => \clk_div_1hz|Add0~31\,
	combout => \clk_div_1hz|Add0~32_combout\,
	cout => \clk_div_1hz|Add0~33\);

-- Location: FF_X110_Y43_N3
\clk_div_1hz|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(16));

-- Location: LCCOMB_X110_Y43_N4
\clk_div_1hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~34_combout\ = (\clk_div_1hz|s_divCounter\(17) & (!\clk_div_1hz|Add0~33\)) # (!\clk_div_1hz|s_divCounter\(17) & ((\clk_div_1hz|Add0~33\) # (GND)))
-- \clk_div_1hz|Add0~35\ = CARRY((!\clk_div_1hz|Add0~33\) # (!\clk_div_1hz|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(17),
	datad => VCC,
	cin => \clk_div_1hz|Add0~33\,
	combout => \clk_div_1hz|Add0~34_combout\,
	cout => \clk_div_1hz|Add0~35\);

-- Location: LCCOMB_X111_Y43_N22
\clk_div_1hz|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~10_combout\ = (\clk_div_1hz|Add0~34_combout\ & !\clk_div_1hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_1hz|Add0~34_combout\,
	datad => \clk_div_1hz|Equal0~9_combout\,
	combout => \clk_div_1hz|s_divCounter~10_combout\);

-- Location: FF_X111_Y43_N23
\clk_div_1hz|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(17));

-- Location: LCCOMB_X110_Y43_N6
\clk_div_1hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~36_combout\ = (\clk_div_1hz|s_divCounter\(18) & (\clk_div_1hz|Add0~35\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(18) & (!\clk_div_1hz|Add0~35\ & VCC))
-- \clk_div_1hz|Add0~37\ = CARRY((\clk_div_1hz|s_divCounter\(18) & !\clk_div_1hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(18),
	datad => VCC,
	cin => \clk_div_1hz|Add0~35\,
	combout => \clk_div_1hz|Add0~36_combout\,
	cout => \clk_div_1hz|Add0~37\);

-- Location: FF_X110_Y43_N7
\clk_div_1hz|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(18));

-- Location: LCCOMB_X110_Y43_N8
\clk_div_1hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~38_combout\ = (\clk_div_1hz|s_divCounter\(19) & (!\clk_div_1hz|Add0~37\)) # (!\clk_div_1hz|s_divCounter\(19) & ((\clk_div_1hz|Add0~37\) # (GND)))
-- \clk_div_1hz|Add0~39\ = CARRY((!\clk_div_1hz|Add0~37\) # (!\clk_div_1hz|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(19),
	datad => VCC,
	cin => \clk_div_1hz|Add0~37\,
	combout => \clk_div_1hz|Add0~38_combout\,
	cout => \clk_div_1hz|Add0~39\);

-- Location: LCCOMB_X111_Y43_N28
\clk_div_1hz|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~3_combout\ = (!\clk_div_1hz|Equal0~9_combout\ & \clk_div_1hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~9_combout\,
	datad => \clk_div_1hz|Add0~38_combout\,
	combout => \clk_div_1hz|s_divCounter~3_combout\);

-- Location: FF_X111_Y43_N29
\clk_div_1hz|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(19));

-- Location: LCCOMB_X110_Y43_N10
\clk_div_1hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~40_combout\ = (\clk_div_1hz|s_divCounter\(20) & (\clk_div_1hz|Add0~39\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(20) & (!\clk_div_1hz|Add0~39\ & VCC))
-- \clk_div_1hz|Add0~41\ = CARRY((\clk_div_1hz|s_divCounter\(20) & !\clk_div_1hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(20),
	datad => VCC,
	cin => \clk_div_1hz|Add0~39\,
	combout => \clk_div_1hz|Add0~40_combout\,
	cout => \clk_div_1hz|Add0~41\);

-- Location: LCCOMB_X111_Y43_N8
\clk_div_1hz|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~2_combout\ = (!\clk_div_1hz|Equal0~9_combout\ & \clk_div_1hz|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~9_combout\,
	datad => \clk_div_1hz|Add0~40_combout\,
	combout => \clk_div_1hz|s_divCounter~2_combout\);

-- Location: FF_X111_Y43_N9
\clk_div_1hz|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(20));

-- Location: LCCOMB_X110_Y43_N12
\clk_div_1hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~42_combout\ = (\clk_div_1hz|s_divCounter\(21) & (!\clk_div_1hz|Add0~41\)) # (!\clk_div_1hz|s_divCounter\(21) & ((\clk_div_1hz|Add0~41\) # (GND)))
-- \clk_div_1hz|Add0~43\ = CARRY((!\clk_div_1hz|Add0~41\) # (!\clk_div_1hz|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(21),
	datad => VCC,
	cin => \clk_div_1hz|Add0~41\,
	combout => \clk_div_1hz|Add0~42_combout\,
	cout => \clk_div_1hz|Add0~43\);

-- Location: LCCOMB_X111_Y43_N24
\clk_div_1hz|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~1_combout\ = (!\clk_div_1hz|Equal0~9_combout\ & \clk_div_1hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~9_combout\,
	datad => \clk_div_1hz|Add0~42_combout\,
	combout => \clk_div_1hz|s_divCounter~1_combout\);

-- Location: FF_X111_Y43_N25
\clk_div_1hz|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(21));

-- Location: LCCOMB_X110_Y43_N14
\clk_div_1hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~44_combout\ = (\clk_div_1hz|s_divCounter\(22) & (\clk_div_1hz|Add0~43\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(22) & (!\clk_div_1hz|Add0~43\ & VCC))
-- \clk_div_1hz|Add0~45\ = CARRY((\clk_div_1hz|s_divCounter\(22) & !\clk_div_1hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(22),
	datad => VCC,
	cin => \clk_div_1hz|Add0~43\,
	combout => \clk_div_1hz|Add0~44_combout\,
	cout => \clk_div_1hz|Add0~45\);

-- Location: LCCOMB_X111_Y43_N10
\clk_div_1hz|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~0_combout\ = (!\clk_div_1hz|Equal0~9_combout\ & \clk_div_1hz|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~9_combout\,
	datad => \clk_div_1hz|Add0~44_combout\,
	combout => \clk_div_1hz|s_divCounter~0_combout\);

-- Location: FF_X111_Y43_N11
\clk_div_1hz|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(22));

-- Location: LCCOMB_X110_Y43_N16
\clk_div_1hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~46_combout\ = (\clk_div_1hz|s_divCounter\(23) & (!\clk_div_1hz|Add0~45\)) # (!\clk_div_1hz|s_divCounter\(23) & ((\clk_div_1hz|Add0~45\) # (GND)))
-- \clk_div_1hz|Add0~47\ = CARRY((!\clk_div_1hz|Add0~45\) # (!\clk_div_1hz|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(23),
	datad => VCC,
	cin => \clk_div_1hz|Add0~45\,
	combout => \clk_div_1hz|Add0~46_combout\,
	cout => \clk_div_1hz|Add0~47\);

-- Location: LCCOMB_X111_Y43_N30
\clk_div_1hz|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~9_combout\ = (\clk_div_1hz|Add0~46_combout\ & !\clk_div_1hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_1hz|Add0~46_combout\,
	datad => \clk_div_1hz|Equal0~9_combout\,
	combout => \clk_div_1hz|s_divCounter~9_combout\);

-- Location: FF_X111_Y43_N31
\clk_div_1hz|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(23));

-- Location: LCCOMB_X110_Y43_N18
\clk_div_1hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~48_combout\ = (\clk_div_1hz|s_divCounter\(24) & (\clk_div_1hz|Add0~47\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(24) & (!\clk_div_1hz|Add0~47\ & VCC))
-- \clk_div_1hz|Add0~49\ = CARRY((\clk_div_1hz|s_divCounter\(24) & !\clk_div_1hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(24),
	datad => VCC,
	cin => \clk_div_1hz|Add0~47\,
	combout => \clk_div_1hz|Add0~48_combout\,
	cout => \clk_div_1hz|Add0~49\);

-- Location: FF_X110_Y43_N19
\clk_div_1hz|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(24));

-- Location: LCCOMB_X112_Y43_N18
\clk_div_1hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~7_combout\ = (\clk_div_1hz|s_divCounter\(25) & (!\clk_div_1hz|s_divCounter\(24) & (!\clk_div_1hz|s_divCounter\(18) & \clk_div_1hz|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(25),
	datab => \clk_div_1hz|s_divCounter\(24),
	datac => \clk_div_1hz|s_divCounter\(18),
	datad => \clk_div_1hz|s_divCounter\(23),
	combout => \clk_div_1hz|Equal0~7_combout\);

-- Location: LCCOMB_X112_Y43_N12
\clk_div_1hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~8_combout\ = (\clk_div_1hz|s_divCounter\(15) & (\clk_div_1hz|s_divCounter\(17) & (!\clk_div_1hz|s_divCounter\(16) & !\clk_div_1hz|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(15),
	datab => \clk_div_1hz|s_divCounter\(17),
	datac => \clk_div_1hz|s_divCounter\(16),
	datad => \clk_div_1hz|s_divCounter\(11),
	combout => \clk_div_1hz|Equal0~8_combout\);

-- Location: LCCOMB_X111_Y44_N30
\clk_div_1hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~5_combout\ = (\clk_div_1hz|s_divCounter\(4) & (\clk_div_1hz|s_divCounter\(2) & (\clk_div_1hz|s_divCounter\(5) & \clk_div_1hz|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(4),
	datab => \clk_div_1hz|s_divCounter\(2),
	datac => \clk_div_1hz|s_divCounter\(5),
	datad => \clk_div_1hz|s_divCounter\(3),
	combout => \clk_div_1hz|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y43_N20
\clk_div_1hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~50_combout\ = (\clk_div_1hz|s_divCounter\(25) & (!\clk_div_1hz|Add0~49\)) # (!\clk_div_1hz|s_divCounter\(25) & ((\clk_div_1hz|Add0~49\) # (GND)))
-- \clk_div_1hz|Add0~51\ = CARRY((!\clk_div_1hz|Add0~49\) # (!\clk_div_1hz|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(25),
	datad => VCC,
	cin => \clk_div_1hz|Add0~49\,
	combout => \clk_div_1hz|Add0~50_combout\,
	cout => \clk_div_1hz|Add0~51\);

-- Location: LCCOMB_X110_Y43_N22
\clk_div_1hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~52_combout\ = (\clk_div_1hz|s_divCounter\(26) & (\clk_div_1hz|Add0~51\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(26) & (!\clk_div_1hz|Add0~51\ & VCC))
-- \clk_div_1hz|Add0~53\ = CARRY((\clk_div_1hz|s_divCounter\(26) & !\clk_div_1hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(26),
	datad => VCC,
	cin => \clk_div_1hz|Add0~51\,
	combout => \clk_div_1hz|Add0~52_combout\,
	cout => \clk_div_1hz|Add0~53\);

-- Location: FF_X110_Y43_N23
\clk_div_1hz|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(26));

-- Location: LCCOMB_X111_Y43_N16
\clk_div_1hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~1_combout\ = (\clk_div_1hz|s_divCounter\(22) & (\clk_div_1hz|s_divCounter\(21) & (\clk_div_1hz|s_divCounter\(20) & !\clk_div_1hz|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(22),
	datab => \clk_div_1hz|s_divCounter\(21),
	datac => \clk_div_1hz|s_divCounter\(20),
	datad => \clk_div_1hz|s_divCounter\(26),
	combout => \clk_div_1hz|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y43_N6
\clk_div_1hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~2_combout\ = (\clk_div_1hz|s_divCounter\(19) & (\clk_div_1hz|s_divCounter\(12) & (\clk_div_1hz|s_divCounter\(14) & \clk_div_1hz|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(19),
	datab => \clk_div_1hz|s_divCounter\(12),
	datac => \clk_div_1hz|s_divCounter\(14),
	datad => \clk_div_1hz|s_divCounter\(13),
	combout => \clk_div_1hz|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y44_N28
\clk_div_1hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~3_combout\ = (!\clk_div_1hz|s_divCounter\(7) & (!\clk_div_1hz|s_divCounter\(9) & (!\clk_div_1hz|s_divCounter\(10) & !\clk_div_1hz|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(7),
	datab => \clk_div_1hz|s_divCounter\(9),
	datac => \clk_div_1hz|s_divCounter\(10),
	datad => \clk_div_1hz|s_divCounter\(8),
	combout => \clk_div_1hz|Equal0~3_combout\);

-- Location: LCCOMB_X110_Y43_N24
\clk_div_1hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~54_combout\ = (\clk_div_1hz|s_divCounter\(27) & (!\clk_div_1hz|Add0~53\)) # (!\clk_div_1hz|s_divCounter\(27) & ((\clk_div_1hz|Add0~53\) # (GND)))
-- \clk_div_1hz|Add0~55\ = CARRY((!\clk_div_1hz|Add0~53\) # (!\clk_div_1hz|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(27),
	datad => VCC,
	cin => \clk_div_1hz|Add0~53\,
	combout => \clk_div_1hz|Add0~54_combout\,
	cout => \clk_div_1hz|Add0~55\);

-- Location: FF_X110_Y43_N25
\clk_div_1hz|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(27));

-- Location: LCCOMB_X110_Y43_N26
\clk_div_1hz|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~56_combout\ = (\clk_div_1hz|s_divCounter\(28) & (\clk_div_1hz|Add0~55\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(28) & (!\clk_div_1hz|Add0~55\ & VCC))
-- \clk_div_1hz|Add0~57\ = CARRY((\clk_div_1hz|s_divCounter\(28) & !\clk_div_1hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(28),
	datad => VCC,
	cin => \clk_div_1hz|Add0~55\,
	combout => \clk_div_1hz|Add0~56_combout\,
	cout => \clk_div_1hz|Add0~57\);

-- Location: FF_X110_Y43_N27
\clk_div_1hz|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(28));

-- Location: LCCOMB_X110_Y43_N28
\clk_div_1hz|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~58_combout\ = (\clk_div_1hz|s_divCounter\(29) & (!\clk_div_1hz|Add0~57\)) # (!\clk_div_1hz|s_divCounter\(29) & ((\clk_div_1hz|Add0~57\) # (GND)))
-- \clk_div_1hz|Add0~59\ = CARRY((!\clk_div_1hz|Add0~57\) # (!\clk_div_1hz|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(29),
	datad => VCC,
	cin => \clk_div_1hz|Add0~57\,
	combout => \clk_div_1hz|Add0~58_combout\,
	cout => \clk_div_1hz|Add0~59\);

-- Location: FF_X110_Y43_N29
\clk_div_1hz|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(29));

-- Location: LCCOMB_X110_Y43_N30
\clk_div_1hz|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~60_combout\ = \clk_div_1hz|s_divCounter\(30) $ (!\clk_div_1hz|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(30),
	cin => \clk_div_1hz|Add0~59\,
	combout => \clk_div_1hz|Add0~60_combout\);

-- Location: FF_X110_Y43_N31
\clk_div_1hz|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(30));

-- Location: LCCOMB_X111_Y43_N12
\clk_div_1hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~0_combout\ = (!\clk_div_1hz|s_divCounter\(28) & (!\clk_div_1hz|s_divCounter\(29) & (!\clk_div_1hz|s_divCounter\(27) & !\clk_div_1hz|s_divCounter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(28),
	datab => \clk_div_1hz|s_divCounter\(29),
	datac => \clk_div_1hz|s_divCounter\(27),
	datad => \clk_div_1hz|s_divCounter\(30),
	combout => \clk_div_1hz|Equal0~0_combout\);

-- Location: LCCOMB_X112_Y43_N24
\clk_div_1hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~4_combout\ = (\clk_div_1hz|Equal0~1_combout\ & (\clk_div_1hz|Equal0~2_combout\ & (\clk_div_1hz|Equal0~3_combout\ & \clk_div_1hz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|Equal0~1_combout\,
	datab => \clk_div_1hz|Equal0~2_combout\,
	datac => \clk_div_1hz|Equal0~3_combout\,
	datad => \clk_div_1hz|Equal0~0_combout\,
	combout => \clk_div_1hz|Equal0~4_combout\);

-- Location: LCCOMB_X112_Y43_N6
\clk_div_1hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~6_combout\ = (\clk_div_1hz|s_divCounter\(1) & (\clk_div_1hz|s_divCounter\(0) & (\clk_div_1hz|Equal0~5_combout\ & \clk_div_1hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(1),
	datab => \clk_div_1hz|s_divCounter\(0),
	datac => \clk_div_1hz|Equal0~5_combout\,
	datad => \clk_div_1hz|Equal0~4_combout\,
	combout => \clk_div_1hz|Equal0~6_combout\);

-- Location: LCCOMB_X111_Y43_N0
\clk_div_1hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~9_combout\ = (\clk_div_1hz|s_divCounter\(6) & (\clk_div_1hz|Equal0~7_combout\ & (\clk_div_1hz|Equal0~8_combout\ & \clk_div_1hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(6),
	datab => \clk_div_1hz|Equal0~7_combout\,
	datac => \clk_div_1hz|Equal0~8_combout\,
	datad => \clk_div_1hz|Equal0~6_combout\,
	combout => \clk_div_1hz|Equal0~9_combout\);

-- Location: LCCOMB_X111_Y43_N26
\clk_div_1hz|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~8_combout\ = (!\clk_div_1hz|Equal0~9_combout\ & \clk_div_1hz|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~9_combout\,
	datad => \clk_div_1hz|Add0~50_combout\,
	combout => \clk_div_1hz|s_divCounter~8_combout\);

-- Location: FF_X111_Y43_N27
\clk_div_1hz|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(25));

-- Location: LCCOMB_X112_Y43_N20
\clk_div_1hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|clkOut~0_combout\ = (!\clk_div_1hz|s_divCounter\(25) & (\clk_div_1hz|s_divCounter\(24) & (\clk_div_1hz|s_divCounter\(18) & !\clk_div_1hz|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(25),
	datab => \clk_div_1hz|s_divCounter\(24),
	datac => \clk_div_1hz|s_divCounter\(18),
	datad => \clk_div_1hz|s_divCounter\(23),
	combout => \clk_div_1hz|clkOut~0_combout\);

-- Location: LCCOMB_X112_Y43_N26
\clk_div_1hz|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|clkOut~1_combout\ = (!\clk_div_1hz|s_divCounter\(15) & (!\clk_div_1hz|s_divCounter\(17) & (\clk_div_1hz|s_divCounter\(16) & \clk_div_1hz|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(15),
	datab => \clk_div_1hz|s_divCounter\(17),
	datac => \clk_div_1hz|s_divCounter\(16),
	datad => \clk_div_1hz|s_divCounter\(11),
	combout => \clk_div_1hz|clkOut~1_combout\);

-- Location: LCCOMB_X112_Y43_N0
\clk_div_1hz|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|clkOut~2_combout\ = (!\clk_div_1hz|s_divCounter\(6) & (\clk_div_1hz|clkOut~0_combout\ & (\clk_div_1hz|clkOut~1_combout\ & \clk_div_1hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(6),
	datab => \clk_div_1hz|clkOut~0_combout\,
	datac => \clk_div_1hz|clkOut~1_combout\,
	datad => \clk_div_1hz|Equal0~6_combout\,
	combout => \clk_div_1hz|clkOut~2_combout\);

-- Location: LCCOMB_X111_Y43_N20
\clk_div_1hz|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|clkOut~3_combout\ = (!\clk_div_1hz|Equal0~9_combout\ & ((\clk_div_1hz|clkOut~q\) # (\clk_div_1hz|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|clkOut~q\,
	datac => \clk_div_1hz|clkOut~2_combout\,
	datad => \clk_div_1hz|Equal0~9_combout\,
	combout => \clk_div_1hz|clkOut~3_combout\);

-- Location: FF_X111_Y43_N5
\clk_div_1hz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_div_1hz|clkOut~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|clkOut~q\);

-- Location: CLKCTRL_G5
\clk_div_1hz|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_1hz|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_1hz|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X106_Y42_N17
\main_fsm|s_currentState.TInit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TInit~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X108_Y42_N24
\main_fsm|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector9~0_combout\ = (\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TGreen2~q\)) # (!\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TYellow2~q\) # ((\main_fsm|s_currentState.TGreen2~q\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen2~q\,
	datab => \main_fsm|s_currentState.TYellow2~q\,
	datac => \SW[0]~input_o\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector9~0_combout\);

-- Location: LCCOMB_X107_Y42_N24
\main_fsm|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~11_combout\ = (\KEY[0]~input_o\ & \main_fsm|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \main_fsm|Selector9~0_combout\,
	combout => \main_fsm|s_currentState~11_combout\);

-- Location: FF_X107_Y42_N25
\main_fsm|s_currentState.TYellow2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TYellow2~q\);

-- Location: LCCOMB_X106_Y42_N8
\main_fsm|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~16_combout\ = (\KEY[0]~input_o\ & ((\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TYellow2~q\)) # (!\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TRed2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow2~q\,
	datab => \KEY[0]~input_o\,
	datac => \main_fsm|s_currentState.TRed2~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|s_currentState~16_combout\);

-- Location: FF_X106_Y42_N9
\main_fsm|s_currentState.TRed2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TRed2~q\);

-- Location: LCCOMB_X106_Y42_N2
\main_fsm|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector7~0_combout\ = (!\SW[0]~input_o\ & ((\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TRed2~q\))) # (!\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TGreen1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \main_fsm|s_currentState.TGreen1~q\,
	datac => \main_fsm|s_currentState.TRed2~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector7~0_combout\);

-- Location: LCCOMB_X106_Y42_N20
\main_fsm|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~14_combout\ = (\KEY[0]~input_o\ & \main_fsm|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \main_fsm|Selector7~0_combout\,
	combout => \main_fsm|s_currentState~14_combout\);

-- Location: FF_X106_Y42_N21
\main_fsm|s_currentState.TGreen1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TGreen1~q\);

-- Location: LCCOMB_X108_Y42_N4
\main_fsm|sync_proc~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|sync_proc~11_combout\ = (\SW[0]~input_o\ & (\main_fsm|s_currentState.TGreen1~q\)) # (!\SW[0]~input_o\ & (\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TGreen1~q\ $ (\main_fsm|s_currentState.TRed2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen1~q\,
	datab => \SW[0]~input_o\,
	datac => \main_fsm|s_currentState.TRed2~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|sync_proc~11_combout\);

-- Location: LCCOMB_X108_Y42_N18
\main_fsm|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector6~0_combout\ = (\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TGreen1~q\)) # (!\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TYellow1~q\) # ((\main_fsm|s_currentState.TGreen1~q\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen1~q\,
	datab => \main_fsm|s_currentState.TYellow1~q\,
	datac => \SW[0]~input_o\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector6~0_combout\);

-- Location: LCCOMB_X108_Y42_N16
\main_fsm|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~13_combout\ = (\KEY[0]~input_o\ & \main_fsm|Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \main_fsm|Selector6~0_combout\,
	combout => \main_fsm|s_currentState~13_combout\);

-- Location: FF_X108_Y42_N17
\main_fsm|s_currentState.TYellow1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TYellow1~q\);

-- Location: LCCOMB_X108_Y42_N26
\main_fsm|sync_proc~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|sync_proc~12_combout\ = (\main_fsm|s_currentState.TYellow1~q\ & (((!\main_fsm|s_currentState.TGreen1~q\ & \timer_fsm|s_cntZero~q\)))) # (!\main_fsm|s_currentState.TYellow1~q\ & (\main_fsm|s_currentState.TGreen1~q\ & ((\SW[0]~input_o\) # 
-- (\timer_fsm|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow1~q\,
	datab => \SW[0]~input_o\,
	datac => \main_fsm|s_currentState.TGreen1~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|sync_proc~12_combout\);

-- Location: LCCOMB_X108_Y42_N20
\main_fsm|s_stateChanged~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_stateChanged~1_combout\ = ((\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TYellow2~q\ $ (\main_fsm|s_currentState.TRed2~q\)))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow2~q\,
	datab => \KEY[0]~input_o\,
	datac => \main_fsm|s_currentState.TRed2~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|s_stateChanged~1_combout\);

-- Location: LCCOMB_X108_Y42_N6
\main_fsm|s_stateChanged~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_stateChanged~2_combout\ = ((\main_fsm|sync_proc~11_combout\) # ((\main_fsm|sync_proc~12_combout\) # (\main_fsm|s_stateChanged~1_combout\))) # (!\main_fsm|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TInit~q\,
	datab => \main_fsm|sync_proc~11_combout\,
	datac => \main_fsm|sync_proc~12_combout\,
	datad => \main_fsm|s_stateChanged~1_combout\,
	combout => \main_fsm|s_stateChanged~2_combout\);

-- Location: LCCOMB_X108_Y42_N8
\main_fsm|sync_proc~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|sync_proc~9_combout\ = (\main_fsm|s_currentState.TGreen2~q\ & (!\main_fsm|s_currentState.TYellow2~q\ & ((\SW[0]~input_o\) # (\timer_fsm|s_cntZero~q\)))) # (!\main_fsm|s_currentState.TGreen2~q\ & (\main_fsm|s_currentState.TYellow2~q\ & 
-- ((\timer_fsm|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen2~q\,
	datab => \main_fsm|s_currentState.TYellow2~q\,
	datac => \SW[0]~input_o\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|sync_proc~9_combout\);

-- Location: LCCOMB_X108_Y42_N30
\main_fsm|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector4~0_combout\ = (\SW[0]~input_o\ & (\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TRed1~q\) # (\main_fsm|s_currentState.TRed2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TRed1~q\,
	datab => \SW[0]~input_o\,
	datac => \main_fsm|s_currentState.TRed2~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector4~0_combout\);

-- Location: LCCOMB_X108_Y42_N28
\main_fsm|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector4~1_combout\ = ((\main_fsm|s_currentState.TIntermit~q\ & ((\SW[0]~input_o\) # (!\timer_fsm|s_cntZero~q\)))) # (!\main_fsm|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TInit~q\,
	datab => \SW[0]~input_o\,
	datac => \main_fsm|s_currentState.TIntermit~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector4~1_combout\);

-- Location: LCCOMB_X108_Y42_N14
\main_fsm|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~12_combout\ = (\KEY[0]~input_o\ & ((\main_fsm|Selector4~0_combout\) # (\main_fsm|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|Selector4~0_combout\,
	datab => \main_fsm|Selector4~1_combout\,
	datac => \KEY[0]~input_o\,
	combout => \main_fsm|s_currentState~12_combout\);

-- Location: FF_X108_Y42_N15
\main_fsm|s_currentState.TIntermit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TIntermit~q\);

-- Location: LCCOMB_X108_Y42_N10
\main_fsm|sync_proc~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|sync_proc~10_combout\ = \main_fsm|s_currentState.TIntermit~q\ $ (((\main_fsm|Selector4~0_combout\) # (\main_fsm|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|s_currentState.TIntermit~q\,
	datac => \main_fsm|Selector4~0_combout\,
	datad => \main_fsm|Selector4~1_combout\,
	combout => \main_fsm|sync_proc~10_combout\);

-- Location: LCCOMB_X108_Y42_N0
\main_fsm|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector5~0_combout\ = (\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TYellow1~q\) # ((!\SW[0]~input_o\ & \main_fsm|s_currentState.TIntermit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \main_fsm|s_currentState.TYellow1~q\,
	datac => \main_fsm|s_currentState.TIntermit~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector5~0_combout\);

-- Location: LCCOMB_X108_Y42_N2
\main_fsm|sync_proc~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|sync_proc~8_combout\ = (\SW[0]~input_o\ & (((\main_fsm|s_currentState.TGreen2~q\)))) # (!\SW[0]~input_o\ & (\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TRed1~q\ $ (\main_fsm|s_currentState.TGreen2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TRed1~q\,
	datab => \SW[0]~input_o\,
	datac => \main_fsm|s_currentState.TGreen2~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|sync_proc~8_combout\);

-- Location: LCCOMB_X107_Y42_N10
\main_fsm|s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_stateChanged~0_combout\ = (\main_fsm|sync_proc~8_combout\) # ((\main_fsm|s_currentState.TRed1~q\ & (\timer_fsm|s_cntZero~q\ & !\main_fsm|Selector5~0_combout\)) # (!\main_fsm|s_currentState.TRed1~q\ & ((\main_fsm|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_cntZero~q\,
	datab => \main_fsm|s_currentState.TRed1~q\,
	datac => \main_fsm|Selector5~0_combout\,
	datad => \main_fsm|sync_proc~8_combout\,
	combout => \main_fsm|s_stateChanged~0_combout\);

-- Location: LCCOMB_X107_Y42_N2
\main_fsm|s_stateChanged~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_stateChanged~3_combout\ = (!\main_fsm|s_stateChanged~2_combout\ & (!\main_fsm|sync_proc~9_combout\ & (!\main_fsm|sync_proc~10_combout\ & !\main_fsm|s_stateChanged~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_stateChanged~2_combout\,
	datab => \main_fsm|sync_proc~9_combout\,
	datac => \main_fsm|sync_proc~10_combout\,
	datad => \main_fsm|s_stateChanged~0_combout\,
	combout => \main_fsm|s_stateChanged~3_combout\);

-- Location: FF_X107_Y42_N3
\main_fsm|s_stateChanged\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_stateChanged~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_stateChanged~q\);

-- Location: LCCOMB_X105_Y42_N10
\timer_fsm|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~1_combout\ = \timer_fsm|s_counter\(0) $ (GND)
-- \timer_fsm|Add1~2\ = CARRY(!\timer_fsm|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_fsm|s_counter\(0),
	datad => VCC,
	combout => \timer_fsm|Add1~1_combout\,
	cout => \timer_fsm|Add1~2\);

-- Location: LCCOMB_X107_Y42_N16
\timer_fsm|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~0_combout\ = (!\main_fsm|s_currentState.TYellow2~q\ & (!\main_fsm|s_stateChanged~q\ & !\main_fsm|s_currentState.TYellow1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|s_currentState.TYellow2~q\,
	datac => \main_fsm|s_stateChanged~q\,
	datad => \main_fsm|s_currentState.TYellow1~q\,
	combout => \timer_fsm|Add1~0_combout\);

-- Location: LCCOMB_X107_Y42_N8
\timer_fsm|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~3_combout\ = (\KEY[0]~input_o\ & (!\timer_fsm|Add1~0_combout\ & ((!\timer_fsm|Add1~1_combout\) # (!\main_fsm|s_stateChanged~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \main_fsm|s_stateChanged~q\,
	datac => \timer_fsm|Add1~1_combout\,
	datad => \timer_fsm|Add1~0_combout\,
	combout => \timer_fsm|Add1~3_combout\);

-- Location: LCCOMB_X106_Y42_N28
\timer_fsm|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|s_cntZero~1_combout\ = (\timer_fsm|s_counter\(6) & (\timer_fsm|s_counter\(4) & (\timer_fsm|s_counter\(5) & \timer_fsm|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(6),
	datab => \timer_fsm|s_counter\(4),
	datac => \timer_fsm|s_counter\(5),
	datad => \timer_fsm|s_counter\(3),
	combout => \timer_fsm|s_cntZero~1_combout\);

-- Location: LCCOMB_X107_Y42_N18
\timer_fsm|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|s_cntZero~0_combout\ = (\timer_fsm|s_counter\(1) & (\timer_fsm|s_counter\(2) & (\timer_fsm|s_counter\(0) & \main_fsm|s_stateChanged~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(1),
	datab => \timer_fsm|s_counter\(2),
	datac => \timer_fsm|s_counter\(0),
	datad => \main_fsm|s_stateChanged~q\,
	combout => \timer_fsm|s_cntZero~0_combout\);

-- Location: LCCOMB_X107_Y42_N14
\timer_fsm|s_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|s_counter[0]~0_combout\ = (((!\timer_fsm|s_cntZero~0_combout\) # (!\timer_fsm|s_cntZero~1_combout\)) # (!\timer_fsm|s_counter\(7))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \timer_fsm|s_counter\(7),
	datac => \timer_fsm|s_cntZero~1_combout\,
	datad => \timer_fsm|s_cntZero~0_combout\,
	combout => \timer_fsm|s_counter[0]~0_combout\);

-- Location: FF_X107_Y42_N9
\timer_fsm|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~3_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(0));

-- Location: LCCOMB_X105_Y42_N12
\timer_fsm|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~5_combout\ = (\timer_fsm|s_counter\(1) & (!\timer_fsm|Add1~2\)) # (!\timer_fsm|s_counter\(1) & (\timer_fsm|Add1~2\ & VCC))
-- \timer_fsm|Add1~6\ = CARRY((\timer_fsm|s_counter\(1) & !\timer_fsm|Add1~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(1),
	datad => VCC,
	cin => \timer_fsm|Add1~2\,
	combout => \timer_fsm|Add1~5_combout\,
	cout => \timer_fsm|Add1~6\);

-- Location: LCCOMB_X106_Y42_N18
\main_fsm|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|WideOr6~combout\ = (\main_fsm|s_currentState.TRed1~q\) # ((\main_fsm|s_currentState.TRed2~q\) # (\main_fsm|s_currentState.TGreen2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TRed1~q\,
	datac => \main_fsm|s_currentState.TRed2~q\,
	datad => \main_fsm|s_currentState.TGreen2~q\,
	combout => \main_fsm|WideOr6~combout\);

-- Location: LCCOMB_X107_Y42_N0
\timer_fsm|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~4_combout\ = (!\main_fsm|s_stateChanged~q\ & (\main_fsm|WideOr6~combout\ $ (((\main_fsm|s_currentState.TYellow2~q\) # (\main_fsm|s_currentState.TYellow1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow2~q\,
	datab => \main_fsm|s_currentState.TYellow1~q\,
	datac => \main_fsm|s_stateChanged~q\,
	datad => \main_fsm|WideOr6~combout\,
	combout => \timer_fsm|Add1~4_combout\);

-- Location: LCCOMB_X107_Y42_N22
\timer_fsm|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~7_combout\ = (\KEY[0]~input_o\ & (!\timer_fsm|Add1~4_combout\ & ((!\timer_fsm|Add1~5_combout\) # (!\main_fsm|s_stateChanged~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \main_fsm|s_stateChanged~q\,
	datac => \timer_fsm|Add1~5_combout\,
	datad => \timer_fsm|Add1~4_combout\,
	combout => \timer_fsm|Add1~7_combout\);

-- Location: FF_X107_Y42_N23
\timer_fsm|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~7_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(1));

-- Location: LCCOMB_X105_Y42_N14
\timer_fsm|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~9_combout\ = (\timer_fsm|s_counter\(2) & (\timer_fsm|Add1~6\ $ (GND))) # (!\timer_fsm|s_counter\(2) & ((GND) # (!\timer_fsm|Add1~6\)))
-- \timer_fsm|Add1~10\ = CARRY((!\timer_fsm|Add1~6\) # (!\timer_fsm|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(2),
	datad => VCC,
	cin => \timer_fsm|Add1~6\,
	combout => \timer_fsm|Add1~9_combout\,
	cout => \timer_fsm|Add1~10\);

-- Location: LCCOMB_X107_Y42_N6
\timer_fsm|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~8_combout\ = (!\main_fsm|s_currentState.TYellow2~q\ & (!\main_fsm|s_currentState.TYellow1~q\ & (!\main_fsm|s_stateChanged~q\ & !\main_fsm|WideOr6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow2~q\,
	datab => \main_fsm|s_currentState.TYellow1~q\,
	datac => \main_fsm|s_stateChanged~q\,
	datad => \main_fsm|WideOr6~combout\,
	combout => \timer_fsm|Add1~8_combout\);

-- Location: LCCOMB_X107_Y42_N28
\timer_fsm|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~11_combout\ = (\KEY[0]~input_o\ & (!\timer_fsm|Add1~8_combout\ & ((!\timer_fsm|Add1~9_combout\) # (!\main_fsm|s_stateChanged~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \main_fsm|s_stateChanged~q\,
	datac => \timer_fsm|Add1~9_combout\,
	datad => \timer_fsm|Add1~8_combout\,
	combout => \timer_fsm|Add1~11_combout\);

-- Location: FF_X107_Y42_N29
\timer_fsm|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~11_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(2));

-- Location: LCCOMB_X105_Y42_N16
\timer_fsm|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~12_combout\ = (\timer_fsm|s_counter\(3) & (!\timer_fsm|Add1~10\)) # (!\timer_fsm|s_counter\(3) & (\timer_fsm|Add1~10\ & VCC))
-- \timer_fsm|Add1~13\ = CARRY((\timer_fsm|s_counter\(3) & !\timer_fsm|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_fsm|s_counter\(3),
	datad => VCC,
	cin => \timer_fsm|Add1~10\,
	combout => \timer_fsm|Add1~12_combout\,
	cout => \timer_fsm|Add1~13\);

-- Location: LCCOMB_X106_Y42_N24
\timer_fsm|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~23_combout\ = (!\main_fsm|s_stateChanged~q\ & ((\main_fsm|s_currentState.TGreen2~q\) # (\main_fsm|s_currentState.TGreen1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen2~q\,
	datab => \main_fsm|s_currentState.TGreen1~q\,
	datad => \main_fsm|s_stateChanged~q\,
	combout => \timer_fsm|Add1~23_combout\);

-- Location: LCCOMB_X107_Y42_N30
\timer_fsm|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~24_combout\ = (\KEY[0]~input_o\ & (!\timer_fsm|Add1~23_combout\ & ((!\timer_fsm|Add1~12_combout\) # (!\main_fsm|s_stateChanged~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \main_fsm|s_stateChanged~q\,
	datac => \timer_fsm|Add1~12_combout\,
	datad => \timer_fsm|Add1~23_combout\,
	combout => \timer_fsm|Add1~24_combout\);

-- Location: FF_X107_Y42_N31
\timer_fsm|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~24_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(3));

-- Location: LCCOMB_X105_Y42_N18
\timer_fsm|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~14_combout\ = (\timer_fsm|s_counter\(4) & (\timer_fsm|Add1~13\ $ (GND))) # (!\timer_fsm|s_counter\(4) & ((GND) # (!\timer_fsm|Add1~13\)))
-- \timer_fsm|Add1~15\ = CARRY((!\timer_fsm|Add1~13\) # (!\timer_fsm|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_fsm|s_counter\(4),
	datad => VCC,
	cin => \timer_fsm|Add1~13\,
	combout => \timer_fsm|Add1~14_combout\,
	cout => \timer_fsm|Add1~15\);

-- Location: LCCOMB_X107_Y42_N12
\timer_fsm|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~25_combout\ = (\KEY[0]~input_o\ & ((!\timer_fsm|Add1~14_combout\) # (!\main_fsm|s_stateChanged~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \main_fsm|s_stateChanged~q\,
	datad => \timer_fsm|Add1~14_combout\,
	combout => \timer_fsm|Add1~25_combout\);

-- Location: FF_X107_Y42_N13
\timer_fsm|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~25_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(4));

-- Location: LCCOMB_X105_Y42_N20
\timer_fsm|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~16_combout\ = (\timer_fsm|s_counter\(5) & (!\timer_fsm|Add1~15\)) # (!\timer_fsm|s_counter\(5) & (\timer_fsm|Add1~15\ & VCC))
-- \timer_fsm|Add1~17\ = CARRY((\timer_fsm|s_counter\(5) & !\timer_fsm|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(5),
	datad => VCC,
	cin => \timer_fsm|Add1~15\,
	combout => \timer_fsm|Add1~16_combout\,
	cout => \timer_fsm|Add1~17\);

-- Location: LCCOMB_X107_Y42_N26
\timer_fsm|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~26_combout\ = (\KEY[0]~input_o\ & ((!\timer_fsm|Add1~16_combout\) # (!\main_fsm|s_stateChanged~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \main_fsm|s_stateChanged~q\,
	datad => \timer_fsm|Add1~16_combout\,
	combout => \timer_fsm|Add1~26_combout\);

-- Location: FF_X107_Y42_N27
\timer_fsm|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~26_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(5));

-- Location: LCCOMB_X105_Y42_N22
\timer_fsm|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~18_combout\ = (\timer_fsm|s_counter\(6) & (\timer_fsm|Add1~17\ $ (GND))) # (!\timer_fsm|s_counter\(6) & ((GND) # (!\timer_fsm|Add1~17\)))
-- \timer_fsm|Add1~19\ = CARRY((!\timer_fsm|Add1~17\) # (!\timer_fsm|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(6),
	datad => VCC,
	cin => \timer_fsm|Add1~17\,
	combout => \timer_fsm|Add1~18_combout\,
	cout => \timer_fsm|Add1~19\);

-- Location: LCCOMB_X107_Y42_N20
\timer_fsm|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~27_combout\ = (\KEY[0]~input_o\ & ((!\timer_fsm|Add1~18_combout\) # (!\main_fsm|s_stateChanged~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \main_fsm|s_stateChanged~q\,
	datad => \timer_fsm|Add1~18_combout\,
	combout => \timer_fsm|Add1~27_combout\);

-- Location: FF_X107_Y42_N21
\timer_fsm|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~27_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(6));

-- Location: LCCOMB_X105_Y42_N24
\timer_fsm|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~20_combout\ = \timer_fsm|Add1~19\ $ (\timer_fsm|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_fsm|s_counter\(7),
	cin => \timer_fsm|Add1~19\,
	combout => \timer_fsm|Add1~20_combout\);

-- Location: LCCOMB_X107_Y42_N4
\timer_fsm|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~22_combout\ = (\KEY[0]~input_o\ & ((!\timer_fsm|Add1~20_combout\) # (!\main_fsm|s_stateChanged~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \main_fsm|s_stateChanged~q\,
	datad => \timer_fsm|Add1~20_combout\,
	combout => \timer_fsm|Add1~22_combout\);

-- Location: FF_X107_Y42_N5
\timer_fsm|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~22_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(7));

-- Location: LCCOMB_X108_Y42_N12
\timer_fsm|s_cntZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|s_cntZero~2_combout\ = (\timer_fsm|s_counter\(7) & (\timer_fsm|s_cntZero~0_combout\ & \timer_fsm|s_cntZero~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(7),
	datab => \timer_fsm|s_cntZero~0_combout\,
	datad => \timer_fsm|s_cntZero~1_combout\,
	combout => \timer_fsm|s_cntZero~2_combout\);

-- Location: FF_X108_Y42_N13
\timer_fsm|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|s_cntZero~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_cntZero~q\);

-- Location: LCCOMB_X106_Y42_N26
\main_fsm|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~15_combout\ = (\KEY[0]~input_o\ & ((\main_fsm|Selector5~0_combout\) # ((!\timer_fsm|s_cntZero~q\ & \main_fsm|s_currentState.TRed1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_cntZero~q\,
	datab => \KEY[0]~input_o\,
	datac => \main_fsm|s_currentState.TRed1~q\,
	datad => \main_fsm|Selector5~0_combout\,
	combout => \main_fsm|s_currentState~15_combout\);

-- Location: FF_X106_Y42_N27
\main_fsm|s_currentState.TRed1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TRed1~q\);

-- Location: LCCOMB_X108_Y42_N22
\main_fsm|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector10~0_combout\ = (!\SW[0]~input_o\ & ((\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TRed1~q\)) # (!\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TGreen2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TRed1~q\,
	datab => \SW[0]~input_o\,
	datac => \main_fsm|s_currentState.TGreen2~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector10~0_combout\);

-- Location: LCCOMB_X106_Y42_N12
\main_fsm|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~10_combout\ = (\KEY[0]~input_o\ & \main_fsm|Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \main_fsm|Selector10~0_combout\,
	combout => \main_fsm|s_currentState~10_combout\);

-- Location: FF_X106_Y42_N13
\main_fsm|s_currentState.TGreen2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TGreen2~q\);

-- Location: LCCOMB_X106_Y42_N22
\LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\main_fsm|s_currentState.TIntermit~q\ & ((\clk_div_1hz|clkOut~q\))) # (!\main_fsm|s_currentState.TIntermit~q\ & (\main_fsm|s_currentState.TYellow2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|s_currentState.TYellow2~q\,
	datac => \clk_div_1hz|clkOut~q\,
	datad => \main_fsm|s_currentState.TIntermit~q\,
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X106_Y42_N10
\main_fsm|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|WideOr2~0_combout\ = (\main_fsm|s_currentState.TGreen2~q\) # ((\main_fsm|s_currentState.TYellow2~q\) # ((\main_fsm|s_currentState.TIntermit~q\) # (!\main_fsm|s_currentState.TInit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen2~q\,
	datab => \main_fsm|s_currentState.TYellow2~q\,
	datac => \main_fsm|s_currentState.TInit~q\,
	datad => \main_fsm|s_currentState.TIntermit~q\,
	combout => \main_fsm|WideOr2~0_combout\);

-- Location: LCCOMB_X106_Y42_N14
\main_fsm|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|WideOr1~0_combout\ = (\main_fsm|s_currentState.TIntermit~q\) # ((\main_fsm|s_currentState.TGreen1~q\) # ((\main_fsm|s_currentState.TYellow1~q\) # (!\main_fsm|s_currentState.TInit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TIntermit~q\,
	datab => \main_fsm|s_currentState.TGreen1~q\,
	datac => \main_fsm|s_currentState.TInit~q\,
	datad => \main_fsm|s_currentState.TYellow1~q\,
	combout => \main_fsm|WideOr1~0_combout\);

-- Location: LCCOMB_X106_Y42_N4
\LEDR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (\main_fsm|s_currentState.TIntermit~q\ & (\clk_div_1hz|clkOut~q\)) # (!\main_fsm|s_currentState.TIntermit~q\ & ((\main_fsm|s_currentState.TYellow1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TIntermit~q\,
	datab => \clk_div_1hz|clkOut~q\,
	datad => \main_fsm|s_currentState.TYellow1~q\,
	combout => \LEDR~1_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


