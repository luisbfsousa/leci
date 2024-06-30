-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/03/2022 11:43:44"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CombShiftUnit_Demo IS
    PORT (
	SW : IN std_logic_vector(10 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END CombShiftUnit_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CombShiftUnit_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[2]~3_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~4_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~3_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[0]~4_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~1_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight1~2_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[0]~2_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~0_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight1~0_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight1~1_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight0~0_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~1_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~0_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~2_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[0]~0_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[0]~1_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[0]~5_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[2]~6_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight0~1_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight1~3_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[2]~11_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[2]~7_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[2]~8_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~2_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~3_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[1]~9_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~5_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~6_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~7_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~8_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[1]~10_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[1]~12_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight1~4_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight1~5_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight0~2_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[1]~13_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~9_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~10_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~11_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~12_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~4_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight1~6_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~5_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[2]~14_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[2]~15_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight0~3_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[2]~16_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~6_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~7_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[2]~17_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[3]~18_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~8_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~9_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~10_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut~19_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[3]~20_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[3]~21_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~13_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[3]~22_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftRight1~7_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut~23_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \CombShiftUnit|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[4]~24_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateRight0~11_combout\ : std_logic;
SIGNAL \CombShiftUnit|RotateLeft0~14_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[4]~25_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[5]~26_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[5]~28_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[5]~29_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[5]~30_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[5]~27_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[5]~31_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[5]~32_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[5]~33_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[5]~34_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[5]~35_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[6]~36_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[6]~37_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[6]~38_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[6]~39_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[6]~40_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[7]~41_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[7]~42_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[7]~43_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[7]~44_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[7]~45_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[7]~46_combout\ : std_logic;
SIGNAL \CombShiftUnit|dataOut[7]~47_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CombShiftUnit|dataOut[0]~5_combout\,
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
	i => \CombShiftUnit|dataOut[1]~13_combout\,
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
	i => \CombShiftUnit|dataOut[2]~17_combout\,
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
	i => \CombShiftUnit|dataOut[3]~22_combout\,
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
	i => \CombShiftUnit|dataOut[4]~25_combout\,
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
	i => \CombShiftUnit|dataOut[5]~35_combout\,
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
	i => \CombShiftUnit|dataOut[6]~40_combout\,
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
	i => \CombShiftUnit|dataOut[7]~47_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X109_Y21_N8
\CombShiftUnit|dataOut[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[2]~3_combout\ = (\KEY[0]~input_o\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[2]~3_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X111_Y19_N18
\CombShiftUnit|RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~4_combout\ = (\SW[9]~input_o\ & (\SW[2]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[9]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~4_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X111_Y19_N0
\CombShiftUnit|RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~3_combout\ = (\SW[9]~input_o\ & (\SW[1]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~3_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X110_Y20_N2
\CombShiftUnit|dataOut[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[0]~4_combout\ = (\CombShiftUnit|dataOut[2]~3_combout\ & ((\SW[8]~input_o\ & ((\CombShiftUnit|RotateLeft0~3_combout\))) # (!\SW[8]~input_o\ & (\CombShiftUnit|RotateLeft0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[2]~3_combout\,
	datab => \CombShiftUnit|RotateLeft0~4_combout\,
	datac => \CombShiftUnit|RotateLeft0~3_combout\,
	datad => \SW[8]~input_o\,
	combout => \CombShiftUnit|dataOut[0]~4_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X111_Y19_N30
\CombShiftUnit|RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~1_combout\ = (\SW[9]~input_o\ & (\SW[6]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \CombShiftUnit|RotateRight0~1_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X111_Y20_N20
\CombShiftUnit|ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight1~2_combout\ = (\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[9]~input_o\ & (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \CombShiftUnit|ShiftRight1~2_combout\);

-- Location: LCCOMB_X111_Y20_N14
\CombShiftUnit|dataOut[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[0]~2_combout\ = (!\KEY[1]~input_o\ & ((\CombShiftUnit|ShiftRight1~2_combout\) # ((\CombShiftUnit|RotateRight0~1_combout\ & !\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateRight0~1_combout\,
	datab => \CombShiftUnit|ShiftRight1~2_combout\,
	datac => \SW[8]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[0]~2_combout\);

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

-- Location: LCCOMB_X111_Y19_N10
\CombShiftUnit|RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~0_combout\ = (\SW[9]~input_o\ & (\SW[2]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|RotateRight0~0_combout\);

-- Location: LCCOMB_X111_Y19_N24
\CombShiftUnit|ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight1~0_combout\ = (\SW[9]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[9]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|ShiftRight1~0_combout\);

-- Location: LCCOMB_X111_Y19_N4
\CombShiftUnit|ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight1~1_combout\ = (\SW[8]~input_o\ & ((\CombShiftUnit|ShiftRight1~0_combout\))) # (!\SW[8]~input_o\ & (\CombShiftUnit|RotateRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateRight0~0_combout\,
	datab => \CombShiftUnit|ShiftRight1~0_combout\,
	datac => \SW[8]~input_o\,
	combout => \CombShiftUnit|ShiftRight1~1_combout\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X111_Y20_N24
\CombShiftUnit|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight0~0_combout\ = (!\SW[8]~input_o\ & !\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|ShiftRight0~0_combout\);

-- Location: LCCOMB_X109_Y17_N2
\CombShiftUnit|RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~1_combout\ = (\SW[9]~input_o\ & (\SW[5]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~1_combout\);

-- Location: LCCOMB_X109_Y17_N16
\CombShiftUnit|RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~0_combout\ = (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\SW[6]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~0_combout\);

-- Location: LCCOMB_X109_Y17_N28
\CombShiftUnit|RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~2_combout\ = (\CombShiftUnit|RotateLeft0~0_combout\) # ((\CombShiftUnit|RotateLeft0~1_combout\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CombShiftUnit|RotateLeft0~1_combout\,
	datac => \CombShiftUnit|RotateLeft0~0_combout\,
	datad => \SW[8]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~2_combout\);

-- Location: LCCOMB_X110_Y20_N8
\CombShiftUnit|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[0]~0_combout\ = (\KEY[0]~input_o\ & (((\CombShiftUnit|RotateLeft0~2_combout\)))) # (!\KEY[0]~input_o\ & (\SW[0]~input_o\ & (\CombShiftUnit|ShiftRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \CombShiftUnit|ShiftRight0~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \CombShiftUnit|RotateLeft0~2_combout\,
	combout => \CombShiftUnit|dataOut[0]~0_combout\);

-- Location: LCCOMB_X111_Y20_N26
\CombShiftUnit|dataOut[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[0]~1_combout\ = (!\SW[10]~input_o\ & ((\KEY[1]~input_o\ & ((\CombShiftUnit|dataOut[0]~0_combout\))) # (!\KEY[1]~input_o\ & (\CombShiftUnit|ShiftRight1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|ShiftRight1~1_combout\,
	datab => \SW[10]~input_o\,
	datac => \CombShiftUnit|dataOut[0]~0_combout\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[0]~1_combout\);

-- Location: LCCOMB_X111_Y20_N0
\CombShiftUnit|dataOut[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[0]~5_combout\ = (\CombShiftUnit|dataOut[0]~1_combout\) # ((\SW[10]~input_o\ & ((\CombShiftUnit|dataOut[0]~4_combout\) # (\CombShiftUnit|dataOut[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[0]~4_combout\,
	datab => \CombShiftUnit|dataOut[0]~2_combout\,
	datac => \CombShiftUnit|dataOut[0]~1_combout\,
	datad => \SW[10]~input_o\,
	combout => \CombShiftUnit|dataOut[0]~5_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X109_Y20_N2
\CombShiftUnit|dataOut[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[2]~6_combout\ = (!\KEY[1]~input_o\ & (((\KEY[2]~input_o\ & !\KEY[0]~input_o\)) # (!\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \KEY[2]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[2]~6_combout\);

-- Location: LCCOMB_X109_Y17_N6
\CombShiftUnit|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight0~1_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[6]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|ShiftRight0~1_combout\);

-- Location: LCCOMB_X109_Y20_N6
\CombShiftUnit|ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight1~3_combout\ = (\CombShiftUnit|ShiftRight0~1_combout\) # ((\SW[7]~input_o\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \CombShiftUnit|ShiftRight0~1_combout\,
	combout => \CombShiftUnit|ShiftRight1~3_combout\);

-- Location: LCCOMB_X109_Y20_N28
\CombShiftUnit|dataOut[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[2]~11_combout\ = ((\KEY[0]~input_o\) # (\KEY[1]~input_o\)) # (!\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[2]~11_combout\);

-- Location: LCCOMB_X109_Y21_N26
\CombShiftUnit|dataOut[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[2]~7_combout\ = (\KEY[0]~input_o\ & ((!\KEY[1]~input_o\))) # (!\KEY[0]~input_o\ & (!\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[2]~7_combout\);

-- Location: LCCOMB_X109_Y17_N0
\CombShiftUnit|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftLeft0~0_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[8]~input_o\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X109_Y21_N4
\CombShiftUnit|dataOut[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[2]~8_combout\ = (\KEY[0]~input_o\ & ((\SW[10]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[2]~8_combout\);

-- Location: LCCOMB_X109_Y17_N30
\CombShiftUnit|RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~2_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[8]~input_o\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|RotateRight0~2_combout\);

-- Location: LCCOMB_X109_Y17_N24
\CombShiftUnit|RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~3_combout\ = (\CombShiftUnit|RotateRight0~2_combout\) # (\CombShiftUnit|ShiftRight0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CombShiftUnit|RotateRight0~2_combout\,
	datad => \CombShiftUnit|ShiftRight0~1_combout\,
	combout => \CombShiftUnit|RotateRight0~3_combout\);

-- Location: LCCOMB_X109_Y21_N6
\CombShiftUnit|dataOut[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[1]~9_combout\ = (\CombShiftUnit|dataOut[2]~7_combout\ & ((\CombShiftUnit|dataOut[2]~8_combout\ & ((\CombShiftUnit|RotateRight0~3_combout\))) # (!\CombShiftUnit|dataOut[2]~8_combout\ & (\CombShiftUnit|ShiftLeft0~0_combout\)))) # 
-- (!\CombShiftUnit|dataOut[2]~7_combout\ & (((\CombShiftUnit|dataOut[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[2]~7_combout\,
	datab => \CombShiftUnit|ShiftLeft0~0_combout\,
	datac => \CombShiftUnit|dataOut[2]~8_combout\,
	datad => \CombShiftUnit|RotateRight0~3_combout\,
	combout => \CombShiftUnit|dataOut[1]~9_combout\);

-- Location: LCCOMB_X109_Y17_N18
\CombShiftUnit|RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~5_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[6]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~5_combout\);

-- Location: LCCOMB_X109_Y17_N20
\CombShiftUnit|RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~6_combout\ = (\CombShiftUnit|RotateLeft0~5_combout\) # (\CombShiftUnit|ShiftLeft0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CombShiftUnit|RotateLeft0~5_combout\,
	datad => \CombShiftUnit|ShiftLeft0~0_combout\,
	combout => \CombShiftUnit|RotateLeft0~6_combout\);

-- Location: LCCOMB_X111_Y19_N28
\CombShiftUnit|RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~7_combout\ = (\SW[9]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[9]~input_o\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~7_combout\);

-- Location: LCCOMB_X111_Y19_N14
\CombShiftUnit|RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~8_combout\ = (\SW[8]~input_o\ & ((\CombShiftUnit|RotateLeft0~4_combout\))) # (!\SW[8]~input_o\ & (\CombShiftUnit|RotateLeft0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CombShiftUnit|RotateLeft0~7_combout\,
	datac => \SW[8]~input_o\,
	datad => \CombShiftUnit|RotateLeft0~4_combout\,
	combout => \CombShiftUnit|RotateLeft0~8_combout\);

-- Location: LCCOMB_X109_Y21_N0
\CombShiftUnit|dataOut[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[1]~10_combout\ = (\CombShiftUnit|dataOut[1]~9_combout\ & (((\CombShiftUnit|RotateLeft0~8_combout\) # (!\CombShiftUnit|dataOut[2]~3_combout\)))) # (!\CombShiftUnit|dataOut[1]~9_combout\ & (\CombShiftUnit|RotateLeft0~6_combout\ & 
-- (\CombShiftUnit|dataOut[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[1]~9_combout\,
	datab => \CombShiftUnit|RotateLeft0~6_combout\,
	datac => \CombShiftUnit|dataOut[2]~3_combout\,
	datad => \CombShiftUnit|RotateLeft0~8_combout\,
	combout => \CombShiftUnit|dataOut[1]~10_combout\);

-- Location: LCCOMB_X108_Y20_N24
\CombShiftUnit|dataOut[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[1]~12_combout\ = (\CombShiftUnit|dataOut[2]~11_combout\ & (((\CombShiftUnit|dataOut[1]~10_combout\) # (\CombShiftUnit|dataOut[2]~6_combout\)))) # (!\CombShiftUnit|dataOut[2]~11_combout\ & (\CombShiftUnit|ShiftRight1~3_combout\ & 
-- ((!\CombShiftUnit|dataOut[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|ShiftRight1~3_combout\,
	datab => \CombShiftUnit|dataOut[2]~11_combout\,
	datac => \CombShiftUnit|dataOut[1]~10_combout\,
	datad => \CombShiftUnit|dataOut[2]~6_combout\,
	combout => \CombShiftUnit|dataOut[1]~12_combout\);

-- Location: LCCOMB_X111_Y19_N16
\CombShiftUnit|ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight1~4_combout\ = (\SW[9]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[9]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[9]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \CombShiftUnit|ShiftRight1~4_combout\);

-- Location: LCCOMB_X111_Y19_N26
\CombShiftUnit|ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight1~5_combout\ = (\SW[8]~input_o\ & (\CombShiftUnit|ShiftRight1~4_combout\)) # (!\SW[8]~input_o\ & ((\CombShiftUnit|ShiftRight1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CombShiftUnit|ShiftRight1~4_combout\,
	datac => \SW[8]~input_o\,
	datad => \CombShiftUnit|ShiftRight1~0_combout\,
	combout => \CombShiftUnit|ShiftRight1~5_combout\);

-- Location: LCCOMB_X109_Y20_N24
\CombShiftUnit|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight0~2_combout\ = (\CombShiftUnit|ShiftRight0~1_combout\) # ((\SW[9]~input_o\ & \SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|ShiftRight0~1_combout\,
	datab => \SW[9]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \CombShiftUnit|ShiftRight0~2_combout\);

-- Location: LCCOMB_X108_Y20_N10
\CombShiftUnit|dataOut[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[1]~13_combout\ = (\CombShiftUnit|dataOut[2]~6_combout\ & ((\CombShiftUnit|dataOut[1]~12_combout\ & (\CombShiftUnit|ShiftRight1~5_combout\)) # (!\CombShiftUnit|dataOut[1]~12_combout\ & ((\CombShiftUnit|ShiftRight0~2_combout\))))) # 
-- (!\CombShiftUnit|dataOut[2]~6_combout\ & (\CombShiftUnit|dataOut[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[2]~6_combout\,
	datab => \CombShiftUnit|dataOut[1]~12_combout\,
	datac => \CombShiftUnit|ShiftRight1~5_combout\,
	datad => \CombShiftUnit|ShiftRight0~2_combout\,
	combout => \CombShiftUnit|dataOut[1]~13_combout\);

-- Location: LCCOMB_X111_Y19_N12
\CombShiftUnit|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftLeft0~1_combout\ = (\SW[9]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[9]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X109_Y17_N26
\CombShiftUnit|RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~9_combout\ = (\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[9]~input_o\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~9_combout\);

-- Location: LCCOMB_X109_Y17_N12
\CombShiftUnit|RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~10_combout\ = (\CombShiftUnit|RotateLeft0~9_combout\) # ((\CombShiftUnit|ShiftLeft0~1_combout\ & !\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CombShiftUnit|ShiftLeft0~1_combout\,
	datac => \CombShiftUnit|RotateLeft0~9_combout\,
	datad => \SW[8]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~10_combout\);

-- Location: LCCOMB_X111_Y19_N6
\CombShiftUnit|RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~11_combout\ = (\SW[9]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[9]~input_o\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~11_combout\);

-- Location: LCCOMB_X111_Y19_N8
\CombShiftUnit|RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~12_combout\ = (\SW[8]~input_o\ & ((\CombShiftUnit|RotateLeft0~7_combout\))) # (!\SW[8]~input_o\ & (\CombShiftUnit|RotateLeft0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateLeft0~11_combout\,
	datab => \CombShiftUnit|RotateLeft0~7_combout\,
	datac => \SW[8]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~12_combout\);

-- Location: LCCOMB_X109_Y17_N22
\CombShiftUnit|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftLeft0~2_combout\ = (\SW[8]~input_o\ & (((\SW[1]~input_o\ & !\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & (\CombShiftUnit|ShiftLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \CombShiftUnit|ShiftLeft0~1_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X109_Y17_N10
\CombShiftUnit|RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~4_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[1]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|RotateRight0~4_combout\);

-- Location: LCCOMB_X109_Y17_N8
\CombShiftUnit|ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight1~6_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[8]~input_o\ & (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|ShiftRight1~6_combout\);

-- Location: LCCOMB_X109_Y17_N4
\CombShiftUnit|RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~5_combout\ = (\CombShiftUnit|RotateRight0~4_combout\) # (\CombShiftUnit|ShiftRight1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateRight0~4_combout\,
	datac => \CombShiftUnit|ShiftRight1~6_combout\,
	combout => \CombShiftUnit|RotateRight0~5_combout\);

-- Location: LCCOMB_X109_Y21_N2
\CombShiftUnit|dataOut[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[2]~14_combout\ = (\CombShiftUnit|dataOut[2]~7_combout\ & ((\CombShiftUnit|dataOut[2]~8_combout\ & ((\CombShiftUnit|RotateRight0~5_combout\))) # (!\CombShiftUnit|dataOut[2]~8_combout\ & (\CombShiftUnit|ShiftLeft0~2_combout\)))) # 
-- (!\CombShiftUnit|dataOut[2]~7_combout\ & (((\CombShiftUnit|dataOut[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[2]~7_combout\,
	datab => \CombShiftUnit|ShiftLeft0~2_combout\,
	datac => \CombShiftUnit|dataOut[2]~8_combout\,
	datad => \CombShiftUnit|RotateRight0~5_combout\,
	combout => \CombShiftUnit|dataOut[2]~14_combout\);

-- Location: LCCOMB_X109_Y21_N28
\CombShiftUnit|dataOut[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[2]~15_combout\ = (\CombShiftUnit|dataOut[2]~3_combout\ & ((\CombShiftUnit|dataOut[2]~14_combout\ & ((\CombShiftUnit|RotateLeft0~12_combout\))) # (!\CombShiftUnit|dataOut[2]~14_combout\ & (\CombShiftUnit|RotateLeft0~10_combout\)))) # 
-- (!\CombShiftUnit|dataOut[2]~3_combout\ & (((\CombShiftUnit|dataOut[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateLeft0~10_combout\,
	datab => \CombShiftUnit|RotateLeft0~12_combout\,
	datac => \CombShiftUnit|dataOut[2]~3_combout\,
	datad => \CombShiftUnit|dataOut[2]~14_combout\,
	combout => \CombShiftUnit|dataOut[2]~15_combout\);

-- Location: LCCOMB_X109_Y17_N14
\CombShiftUnit|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight0~3_combout\ = (\SW[8]~input_o\ & (((\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[9]~input_o\ & (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|ShiftRight0~3_combout\);

-- Location: LCCOMB_X109_Y20_N8
\CombShiftUnit|dataOut[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[2]~16_combout\ = (\CombShiftUnit|dataOut[2]~6_combout\ & (((\CombShiftUnit|ShiftRight0~3_combout\) # (\CombShiftUnit|dataOut[2]~11_combout\)))) # (!\CombShiftUnit|dataOut[2]~6_combout\ & (\CombShiftUnit|ShiftRight1~6_combout\ & 
-- ((!\CombShiftUnit|dataOut[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[2]~6_combout\,
	datab => \CombShiftUnit|ShiftRight1~6_combout\,
	datac => \CombShiftUnit|ShiftRight0~3_combout\,
	datad => \CombShiftUnit|dataOut[2]~11_combout\,
	combout => \CombShiftUnit|dataOut[2]~16_combout\);

-- Location: LCCOMB_X111_Y19_N2
\CombShiftUnit|RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~6_combout\ = (\SW[9]~input_o\ & (\SW[5]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|RotateRight0~6_combout\);

-- Location: LCCOMB_X111_Y19_N20
\CombShiftUnit|RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~7_combout\ = (\SW[8]~input_o\ & ((\CombShiftUnit|RotateRight0~6_combout\))) # (!\SW[8]~input_o\ & (\CombShiftUnit|ShiftRight1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \CombShiftUnit|ShiftRight1~4_combout\,
	datac => \CombShiftUnit|RotateRight0~6_combout\,
	combout => \CombShiftUnit|RotateRight0~7_combout\);

-- Location: LCCOMB_X109_Y20_N18
\CombShiftUnit|dataOut[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[2]~17_combout\ = (\CombShiftUnit|dataOut[2]~16_combout\ & (((\CombShiftUnit|RotateRight0~7_combout\) # (!\CombShiftUnit|dataOut[2]~11_combout\)))) # (!\CombShiftUnit|dataOut[2]~16_combout\ & (\CombShiftUnit|dataOut[2]~15_combout\ & 
-- ((\CombShiftUnit|dataOut[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[2]~15_combout\,
	datab => \CombShiftUnit|dataOut[2]~16_combout\,
	datac => \CombShiftUnit|RotateRight0~7_combout\,
	datad => \CombShiftUnit|dataOut[2]~11_combout\,
	combout => \CombShiftUnit|dataOut[2]~17_combout\);

-- Location: LCCOMB_X111_Y20_N12
\CombShiftUnit|dataOut[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[3]~18_combout\ = (\SW[10]~input_o\ & ((\KEY[0]~input_o\) # (\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \CombShiftUnit|dataOut[3]~18_combout\);

-- Location: LCCOMB_X111_Y20_N2
\CombShiftUnit|RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~8_combout\ = (!\SW[10]~input_o\ & ((\SW[8]~input_o\ & (\CombShiftUnit|RotateRight0~1_combout\)) # (!\SW[8]~input_o\ & ((\CombShiftUnit|RotateRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateRight0~1_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \CombShiftUnit|RotateRight0~6_combout\,
	combout => \CombShiftUnit|RotateRight0~8_combout\);

-- Location: LCCOMB_X111_Y19_N22
\CombShiftUnit|RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~9_combout\ = (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[9]~input_o\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|RotateRight0~9_combout\);

-- Location: LCCOMB_X111_Y20_N22
\CombShiftUnit|RotateRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~10_combout\ = (\CombShiftUnit|RotateRight0~9_combout\) # ((\CombShiftUnit|RotateRight0~0_combout\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateRight0~0_combout\,
	datab => \CombShiftUnit|RotateRight0~9_combout\,
	datac => \SW[8]~input_o\,
	combout => \CombShiftUnit|RotateRight0~10_combout\);

-- Location: LCCOMB_X111_Y20_N16
\CombShiftUnit|dataOut~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut~19_combout\ = (\KEY[2]~input_o\) # ((!\SW[8]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \KEY[2]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \CombShiftUnit|dataOut~19_combout\);

-- Location: LCCOMB_X111_Y20_N18
\CombShiftUnit|dataOut[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[3]~20_combout\ = (\KEY[0]~input_o\ & ((\CombShiftUnit|RotateRight0~10_combout\) # ((\KEY[1]~input_o\)))) # (!\KEY[0]~input_o\ & (((\CombShiftUnit|dataOut~19_combout\ & !\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateRight0~10_combout\,
	datab => \CombShiftUnit|dataOut~19_combout\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[3]~20_combout\);

-- Location: LCCOMB_X111_Y20_N4
\CombShiftUnit|dataOut[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[3]~21_combout\ = (\CombShiftUnit|dataOut[3]~18_combout\ & ((\CombShiftUnit|dataOut[3]~20_combout\) # ((\CombShiftUnit|RotateRight0~8_combout\ & !\KEY[1]~input_o\)))) # (!\CombShiftUnit|dataOut[3]~18_combout\ & 
-- (\CombShiftUnit|RotateRight0~8_combout\ & ((!\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[3]~18_combout\,
	datab => \CombShiftUnit|RotateRight0~8_combout\,
	datac => \CombShiftUnit|dataOut[3]~20_combout\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[3]~21_combout\);

-- Location: LCCOMB_X110_Y20_N4
\CombShiftUnit|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftLeft0~3_combout\ = (!\SW[10]~input_o\ & ((\SW[8]~input_o\ & (\CombShiftUnit|ShiftLeft0~1_combout\)) # (!\SW[8]~input_o\ & ((\CombShiftUnit|RotateLeft0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|ShiftLeft0~1_combout\,
	datab => \CombShiftUnit|RotateLeft0~3_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \CombShiftUnit|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X110_Y20_N22
\CombShiftUnit|RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~13_combout\ = (\SW[8]~input_o\ & ((\CombShiftUnit|RotateLeft0~11_combout\))) # (!\SW[8]~input_o\ & (\CombShiftUnit|RotateLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateLeft0~1_combout\,
	datac => \CombShiftUnit|RotateLeft0~11_combout\,
	datad => \SW[8]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~13_combout\);

-- Location: LCCOMB_X110_Y20_N0
\CombShiftUnit|dataOut[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[3]~22_combout\ = (\KEY[1]~input_o\ & ((\CombShiftUnit|ShiftLeft0~3_combout\) # ((\CombShiftUnit|dataOut[3]~21_combout\ & \CombShiftUnit|RotateLeft0~13_combout\)))) # (!\KEY[1]~input_o\ & (\CombShiftUnit|dataOut[3]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[3]~21_combout\,
	datab => \CombShiftUnit|ShiftLeft0~3_combout\,
	datac => \CombShiftUnit|RotateLeft0~13_combout\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[3]~22_combout\);

-- Location: LCCOMB_X111_Y20_N30
\CombShiftUnit|ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftRight1~7_combout\ = (\CombShiftUnit|ShiftRight1~2_combout\) # ((\CombShiftUnit|RotateRight0~1_combout\ & !\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateRight0~1_combout\,
	datab => \CombShiftUnit|ShiftRight1~2_combout\,
	datac => \SW[8]~input_o\,
	combout => \CombShiftUnit|ShiftRight1~7_combout\);

-- Location: LCCOMB_X111_Y20_N10
\CombShiftUnit|dataOut~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut~23_combout\ = (\SW[10]~input_o\ & (((\KEY[2]~input_o\ & \SW[7]~input_o\)))) # (!\SW[10]~input_o\ & (\CombShiftUnit|ShiftRight1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|ShiftRight1~7_combout\,
	datab => \SW[10]~input_o\,
	datac => \KEY[2]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \CombShiftUnit|dataOut~23_combout\);

-- Location: LCCOMB_X110_Y20_N10
\CombShiftUnit|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftLeft0~4_combout\ = (!\SW[10]~input_o\ & ((\SW[8]~input_o\ & (\CombShiftUnit|RotateLeft0~3_combout\)) # (!\SW[8]~input_o\ & ((\CombShiftUnit|RotateLeft0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \CombShiftUnit|RotateLeft0~3_combout\,
	datac => \CombShiftUnit|RotateLeft0~4_combout\,
	datad => \SW[8]~input_o\,
	combout => \CombShiftUnit|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X110_Y20_N20
\CombShiftUnit|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|ShiftLeft0~5_combout\ = (\CombShiftUnit|ShiftLeft0~4_combout\) # ((\CombShiftUnit|ShiftRight0~0_combout\ & (\SW[10]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|ShiftLeft0~4_combout\,
	datab => \CombShiftUnit|ShiftRight0~0_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \CombShiftUnit|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X110_Y20_N30
\CombShiftUnit|dataOut[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[4]~24_combout\ = (\KEY[1]~input_o\ & (((\KEY[0]~input_o\) # (\CombShiftUnit|ShiftLeft0~5_combout\)))) # (!\KEY[1]~input_o\ & (\CombShiftUnit|dataOut~23_combout\ & (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \CombShiftUnit|dataOut~23_combout\,
	datac => \KEY[0]~input_o\,
	datad => \CombShiftUnit|ShiftLeft0~5_combout\,
	combout => \CombShiftUnit|dataOut[4]~24_combout\);

-- Location: LCCOMB_X111_Y20_N8
\CombShiftUnit|RotateRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateRight0~11_combout\ = (\SW[10]~input_o\ & (\CombShiftUnit|ShiftRight1~1_combout\)) # (!\SW[10]~input_o\ & ((\CombShiftUnit|ShiftRight1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|ShiftRight1~1_combout\,
	datac => \CombShiftUnit|ShiftRight1~7_combout\,
	datad => \SW[10]~input_o\,
	combout => \CombShiftUnit|RotateRight0~11_combout\);

-- Location: LCCOMB_X110_Y20_N16
\CombShiftUnit|RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|RotateLeft0~14_combout\ = (\CombShiftUnit|ShiftLeft0~4_combout\) # ((\CombShiftUnit|RotateLeft0~2_combout\ & \SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|ShiftLeft0~4_combout\,
	datab => \CombShiftUnit|RotateLeft0~2_combout\,
	datac => \SW[10]~input_o\,
	combout => \CombShiftUnit|RotateLeft0~14_combout\);

-- Location: LCCOMB_X110_Y20_N26
\CombShiftUnit|dataOut[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[4]~25_combout\ = (\CombShiftUnit|dataOut[4]~24_combout\ & (((\CombShiftUnit|RotateLeft0~14_combout\)) # (!\KEY[0]~input_o\))) # (!\CombShiftUnit|dataOut[4]~24_combout\ & (\KEY[0]~input_o\ & 
-- (\CombShiftUnit|RotateRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[4]~24_combout\,
	datab => \KEY[0]~input_o\,
	datac => \CombShiftUnit|RotateRight0~11_combout\,
	datad => \CombShiftUnit|RotateLeft0~14_combout\,
	combout => \CombShiftUnit|dataOut[4]~25_combout\);

-- Location: LCCOMB_X109_Y21_N30
\CombShiftUnit|dataOut[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[5]~26_combout\ = (\KEY[0]~input_o\ & ((\SW[10]~input_o\) # (\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[5]~26_combout\);

-- Location: LCCOMB_X109_Y20_N30
\CombShiftUnit|dataOut[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[5]~28_combout\ = (\KEY[1]~input_o\) # ((!\KEY[2]~input_o\ & !\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[5]~28_combout\);

-- Location: LCCOMB_X109_Y20_N16
\CombShiftUnit|dataOut[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[5]~29_combout\ = (\KEY[1]~input_o\) # ((\KEY[2]~input_o\ & \SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[5]~29_combout\);

-- Location: LCCOMB_X109_Y20_N10
\CombShiftUnit|dataOut[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[5]~30_combout\ = (\CombShiftUnit|dataOut[5]~28_combout\ & ((\CombShiftUnit|dataOut[5]~29_combout\ & (\CombShiftUnit|ShiftLeft0~0_combout\)) # (!\CombShiftUnit|dataOut[5]~29_combout\ & ((\CombShiftUnit|ShiftRight1~3_combout\))))) # 
-- (!\CombShiftUnit|dataOut[5]~28_combout\ & (\CombShiftUnit|dataOut[5]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[5]~28_combout\,
	datab => \CombShiftUnit|dataOut[5]~29_combout\,
	datac => \CombShiftUnit|ShiftLeft0~0_combout\,
	datad => \CombShiftUnit|ShiftRight1~3_combout\,
	combout => \CombShiftUnit|dataOut[5]~30_combout\);

-- Location: LCCOMB_X109_Y20_N20
\CombShiftUnit|dataOut[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[5]~27_combout\ = (\KEY[2]~input_o\ & !\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[5]~27_combout\);

-- Location: LCCOMB_X109_Y20_N12
\CombShiftUnit|dataOut[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[5]~31_combout\ = (\CombShiftUnit|dataOut[5]~30_combout\ & (((\SW[7]~input_o\)) # (!\CombShiftUnit|dataOut[5]~27_combout\))) # (!\CombShiftUnit|dataOut[5]~30_combout\ & (\CombShiftUnit|dataOut[5]~27_combout\ & 
-- (\CombShiftUnit|ShiftRight0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[5]~30_combout\,
	datab => \CombShiftUnit|dataOut[5]~27_combout\,
	datac => \CombShiftUnit|ShiftRight0~2_combout\,
	datad => \SW[7]~input_o\,
	combout => \CombShiftUnit|dataOut[5]~31_combout\);

-- Location: LCCOMB_X109_Y21_N24
\CombShiftUnit|dataOut[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[5]~32_combout\ = (\KEY[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[5]~32_combout\);

-- Location: LCCOMB_X109_Y21_N10
\CombShiftUnit|dataOut[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[5]~33_combout\ = (\CombShiftUnit|dataOut[5]~26_combout\ & (((\CombShiftUnit|dataOut[5]~32_combout\)))) # (!\CombShiftUnit|dataOut[5]~26_combout\ & ((\CombShiftUnit|dataOut[5]~32_combout\ & (\CombShiftUnit|dataOut[5]~31_combout\)) # 
-- (!\CombShiftUnit|dataOut[5]~32_combout\ & ((\CombShiftUnit|RotateRight0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[5]~31_combout\,
	datab => \CombShiftUnit|RotateRight0~3_combout\,
	datac => \CombShiftUnit|dataOut[5]~26_combout\,
	datad => \CombShiftUnit|dataOut[5]~32_combout\,
	combout => \CombShiftUnit|dataOut[5]~33_combout\);

-- Location: LCCOMB_X109_Y21_N20
\CombShiftUnit|dataOut[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[5]~34_combout\ = (\CombShiftUnit|dataOut[5]~26_combout\ & ((\CombShiftUnit|dataOut[5]~33_combout\ & (\CombShiftUnit|RotateLeft0~6_combout\)) # (!\CombShiftUnit|dataOut[5]~33_combout\ & ((\CombShiftUnit|ShiftRight1~5_combout\))))) # 
-- (!\CombShiftUnit|dataOut[5]~26_combout\ & (((\CombShiftUnit|dataOut[5]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[5]~26_combout\,
	datab => \CombShiftUnit|RotateLeft0~6_combout\,
	datac => \CombShiftUnit|ShiftRight1~5_combout\,
	datad => \CombShiftUnit|dataOut[5]~33_combout\,
	combout => \CombShiftUnit|dataOut[5]~34_combout\);

-- Location: LCCOMB_X109_Y21_N22
\CombShiftUnit|dataOut[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[5]~35_combout\ = (\SW[10]~input_o\ & (((\CombShiftUnit|dataOut[5]~34_combout\)))) # (!\SW[10]~input_o\ & ((\KEY[1]~input_o\ & (\CombShiftUnit|RotateLeft0~8_combout\)) # (!\KEY[1]~input_o\ & 
-- ((\CombShiftUnit|dataOut[5]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateLeft0~8_combout\,
	datab => \CombShiftUnit|dataOut[5]~34_combout\,
	datac => \SW[10]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[5]~35_combout\);

-- Location: LCCOMB_X109_Y20_N22
\CombShiftUnit|dataOut[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[6]~36_combout\ = (\CombShiftUnit|dataOut[5]~28_combout\ & ((\CombShiftUnit|dataOut[5]~29_combout\ & (\CombShiftUnit|ShiftLeft0~2_combout\)) # (!\CombShiftUnit|dataOut[5]~29_combout\ & ((\CombShiftUnit|ShiftRight1~6_combout\))))) # 
-- (!\CombShiftUnit|dataOut[5]~28_combout\ & (((\CombShiftUnit|dataOut[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[5]~28_combout\,
	datab => \CombShiftUnit|ShiftLeft0~2_combout\,
	datac => \CombShiftUnit|ShiftRight1~6_combout\,
	datad => \CombShiftUnit|dataOut[5]~29_combout\,
	combout => \CombShiftUnit|dataOut[6]~36_combout\);

-- Location: LCCOMB_X109_Y20_N0
\CombShiftUnit|dataOut[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[6]~37_combout\ = (\CombShiftUnit|dataOut[6]~36_combout\ & (((\SW[7]~input_o\)) # (!\CombShiftUnit|dataOut[5]~27_combout\))) # (!\CombShiftUnit|dataOut[6]~36_combout\ & (\CombShiftUnit|dataOut[5]~27_combout\ & 
-- (\CombShiftUnit|ShiftRight0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[6]~36_combout\,
	datab => \CombShiftUnit|dataOut[5]~27_combout\,
	datac => \CombShiftUnit|ShiftRight0~3_combout\,
	datad => \SW[7]~input_o\,
	combout => \CombShiftUnit|dataOut[6]~37_combout\);

-- Location: LCCOMB_X109_Y21_N16
\CombShiftUnit|dataOut[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[6]~38_combout\ = (\CombShiftUnit|dataOut[5]~32_combout\ & (((\CombShiftUnit|dataOut[5]~26_combout\)))) # (!\CombShiftUnit|dataOut[5]~32_combout\ & ((\CombShiftUnit|dataOut[5]~26_combout\ & ((\CombShiftUnit|RotateRight0~7_combout\))) 
-- # (!\CombShiftUnit|dataOut[5]~26_combout\ & (\CombShiftUnit|RotateRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateRight0~5_combout\,
	datab => \CombShiftUnit|dataOut[5]~32_combout\,
	datac => \CombShiftUnit|dataOut[5]~26_combout\,
	datad => \CombShiftUnit|RotateRight0~7_combout\,
	combout => \CombShiftUnit|dataOut[6]~38_combout\);

-- Location: LCCOMB_X109_Y21_N18
\CombShiftUnit|dataOut[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[6]~39_combout\ = (\CombShiftUnit|dataOut[6]~38_combout\ & (((\CombShiftUnit|RotateLeft0~10_combout\) # (!\CombShiftUnit|dataOut[5]~32_combout\)))) # (!\CombShiftUnit|dataOut[6]~38_combout\ & (\CombShiftUnit|dataOut[6]~37_combout\ & 
-- ((\CombShiftUnit|dataOut[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[6]~37_combout\,
	datab => \CombShiftUnit|dataOut[6]~38_combout\,
	datac => \CombShiftUnit|RotateLeft0~10_combout\,
	datad => \CombShiftUnit|dataOut[5]~32_combout\,
	combout => \CombShiftUnit|dataOut[6]~39_combout\);

-- Location: LCCOMB_X109_Y21_N12
\CombShiftUnit|dataOut[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[6]~40_combout\ = (\SW[10]~input_o\ & (\CombShiftUnit|dataOut[6]~39_combout\)) # (!\SW[10]~input_o\ & ((\KEY[1]~input_o\ & ((\CombShiftUnit|RotateLeft0~12_combout\))) # (!\KEY[1]~input_o\ & (\CombShiftUnit|dataOut[6]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \CombShiftUnit|dataOut[6]~39_combout\,
	datac => \CombShiftUnit|RotateLeft0~12_combout\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[6]~40_combout\);

-- Location: LCCOMB_X110_Y20_N28
\CombShiftUnit|dataOut[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[7]~41_combout\ = (\SW[10]~input_o\ & ((\SW[8]~input_o\ & (\CombShiftUnit|ShiftLeft0~1_combout\)) # (!\SW[8]~input_o\ & ((\CombShiftUnit|RotateLeft0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|ShiftLeft0~1_combout\,
	datab => \CombShiftUnit|RotateLeft0~3_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \CombShiftUnit|dataOut[7]~41_combout\);

-- Location: LCCOMB_X110_Y20_N6
\CombShiftUnit|dataOut[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[7]~42_combout\ = (\KEY[1]~input_o\ & ((\CombShiftUnit|dataOut[7]~41_combout\) # ((\CombShiftUnit|RotateLeft0~13_combout\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateLeft0~13_combout\,
	datab => \CombShiftUnit|dataOut[7]~41_combout\,
	datac => \SW[10]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[7]~42_combout\);

-- Location: LCCOMB_X111_Y20_N28
\CombShiftUnit|dataOut[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[7]~43_combout\ = (\SW[10]~input_o\ & ((\SW[8]~input_o\ & (\CombShiftUnit|RotateRight0~1_combout\)) # (!\SW[8]~input_o\ & ((\CombShiftUnit|RotateRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|RotateRight0~1_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \CombShiftUnit|RotateRight0~6_combout\,
	combout => \CombShiftUnit|dataOut[7]~43_combout\);

-- Location: LCCOMB_X110_Y20_N24
\CombShiftUnit|dataOut[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[7]~44_combout\ = (\KEY[0]~input_o\ & ((\CombShiftUnit|dataOut[7]~43_combout\) # ((!\SW[10]~input_o\ & \CombShiftUnit|RotateRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \CombShiftUnit|RotateRight0~10_combout\,
	datac => \KEY[0]~input_o\,
	datad => \CombShiftUnit|dataOut[7]~43_combout\,
	combout => \CombShiftUnit|dataOut[7]~44_combout\);

-- Location: LCCOMB_X109_Y20_N26
\CombShiftUnit|dataOut[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[7]~45_combout\ = (\KEY[2]~input_o\) # ((!\SW[8]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \CombShiftUnit|dataOut[7]~45_combout\);

-- Location: LCCOMB_X109_Y20_N4
\CombShiftUnit|dataOut[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[7]~46_combout\ = (\CombShiftUnit|dataOut[7]~45_combout\ & (!\KEY[0]~input_o\ & \SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[7]~45_combout\,
	datac => \KEY[0]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \CombShiftUnit|dataOut[7]~46_combout\);

-- Location: LCCOMB_X109_Y20_N14
\CombShiftUnit|dataOut[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \CombShiftUnit|dataOut[7]~47_combout\ = (\CombShiftUnit|dataOut[7]~42_combout\) # ((!\KEY[1]~input_o\ & ((\CombShiftUnit|dataOut[7]~44_combout\) # (\CombShiftUnit|dataOut[7]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CombShiftUnit|dataOut[7]~42_combout\,
	datab => \CombShiftUnit|dataOut[7]~44_combout\,
	datac => \CombShiftUnit|dataOut[7]~46_combout\,
	datad => \KEY[1]~input_o\,
	combout => \CombShiftUnit|dataOut[7]~47_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


