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

-- DATE "04/05/2022 11:27:17"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Counter_Demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END Counter_Demo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|cntValue~11_combout\ : std_logic;
SIGNAL \inst|cntValue[1]~4_cout\ : std_logic;
SIGNAL \inst|cntValue[1]~5_combout\ : std_logic;
SIGNAL \inst|cntValue[1]~6\ : std_logic;
SIGNAL \inst|cntValue[2]~7_combout\ : std_logic;
SIGNAL \inst|cntValue[2]~8\ : std_logic;
SIGNAL \inst|cntValue[3]~9_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ : std_logic;
SIGNAL \inst4|decOut_n~0_combout\ : std_logic;
SIGNAL \inst4|decOut_n~1_combout\ : std_logic;
SIGNAL \inst4|decOut_n~2_combout\ : std_logic;
SIGNAL \inst4|decOut_n~3_combout\ : std_logic;
SIGNAL \inst4|decOut_n~4_combout\ : std_logic;
SIGNAL \inst4|decOut_n~5_combout\ : std_logic;
SIGNAL \inst4|decOut_n~6_combout\ : std_logic;
SIGNAL \inst5|decOut_n~0_combout\ : std_logic;
SIGNAL \inst|cntValue\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_KEY <= KEY;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cntValue\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cntValue\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cntValue\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cntValue\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X114_Y40_N30
\inst|cntValue~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cntValue~11_combout\ = (!\inst|cntValue\(0) & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cntValue\(0),
	datad => \SW[1]~input_o\,
	combout => \inst|cntValue~11_combout\);

-- Location: FF_X114_Y40_N31
\inst|cntValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|cntValue~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cntValue\(0));

-- Location: LCCOMB_X114_Y40_N10
\inst|cntValue[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cntValue[1]~4_cout\ = CARRY(\inst|cntValue\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cntValue\(0),
	datad => VCC,
	cout => \inst|cntValue[1]~4_cout\);

-- Location: LCCOMB_X114_Y40_N12
\inst|cntValue[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cntValue[1]~5_combout\ = (\inst|cntValue\(1) & ((\SW[0]~input_o\ & (!\inst|cntValue[1]~4_cout\)) # (!\SW[0]~input_o\ & (\inst|cntValue[1]~4_cout\ & VCC)))) # (!\inst|cntValue\(1) & ((\SW[0]~input_o\ & ((\inst|cntValue[1]~4_cout\) # (GND))) # 
-- (!\SW[0]~input_o\ & (!\inst|cntValue[1]~4_cout\))))
-- \inst|cntValue[1]~6\ = CARRY((\inst|cntValue\(1) & (\SW[0]~input_o\ & !\inst|cntValue[1]~4_cout\)) # (!\inst|cntValue\(1) & ((\SW[0]~input_o\) # (!\inst|cntValue[1]~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cntValue\(1),
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \inst|cntValue[1]~4_cout\,
	combout => \inst|cntValue[1]~5_combout\,
	cout => \inst|cntValue[1]~6\);

-- Location: FF_X114_Y40_N13
\inst|cntValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|cntValue[1]~5_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cntValue\(1));

-- Location: LCCOMB_X114_Y40_N14
\inst|cntValue[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cntValue[2]~7_combout\ = ((\SW[0]~input_o\ $ (\inst|cntValue\(2) $ (\inst|cntValue[1]~6\)))) # (GND)
-- \inst|cntValue[2]~8\ = CARRY((\SW[0]~input_o\ & (\inst|cntValue\(2) & !\inst|cntValue[1]~6\)) # (!\SW[0]~input_o\ & ((\inst|cntValue\(2)) # (!\inst|cntValue[1]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|cntValue\(2),
	datad => VCC,
	cin => \inst|cntValue[1]~6\,
	combout => \inst|cntValue[2]~7_combout\,
	cout => \inst|cntValue[2]~8\);

-- Location: FF_X114_Y40_N15
\inst|cntValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|cntValue[2]~7_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cntValue\(2));

-- Location: LCCOMB_X114_Y40_N16
\inst|cntValue[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cntValue[3]~9_combout\ = \SW[0]~input_o\ $ (\inst|cntValue[2]~8\ $ (!\inst|cntValue\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \inst|cntValue\(3),
	cin => \inst|cntValue[2]~8\,
	combout => \inst|cntValue[3]~9_combout\);

-- Location: FF_X114_Y40_N17
\inst|cntValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|cntValue[3]~9_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cntValue\(3));

-- Location: LCCOMB_X114_Y40_N22
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|cntValue\(1) $ (VCC)
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|cntValue\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cntValue\(1),
	datad => VCC,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X114_Y40_N24
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|cntValue\(2) & (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|cntValue\(2) & 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|cntValue\(2) & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cntValue\(2),
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X114_Y40_N26
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|cntValue\(3) & (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|cntValue\(3) & 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|cntValue\(3) & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cntValue\(3),
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X114_Y40_N28
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X114_Y40_N18
\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|cntValue\(3)))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ 
-- & (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst|cntValue\(3),
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\);

-- Location: LCCOMB_X114_Y40_N4
\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|cntValue\(1))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cntValue\(1),
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\);

-- Location: LCCOMB_X114_Y40_N20
\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|cntValue\(2))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cntValue\(2),
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\);

-- Location: LCCOMB_X114_Y54_N28
\inst4|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~0_combout\ = (\inst|cntValue\(0) & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ $ 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\)))) # (!\inst|cntValue\(0) & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ $ 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst|cntValue\(0),
	combout => \inst4|decOut_n~0_combout\);

-- Location: LCCOMB_X114_Y54_N14
\inst4|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~1_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((\inst|cntValue\(0)) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\)))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & (\inst|cntValue\(0) & (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ $ 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst|cntValue\(0),
	combout => \inst4|decOut_n~1_combout\);

-- Location: LCCOMB_X114_Y54_N4
\inst4|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~2_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((\inst|cntValue\(0))))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & ((\inst|cntValue\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst|cntValue\(0),
	combout => \inst4|decOut_n~2_combout\);

-- Location: LCCOMB_X114_Y54_N30
\inst4|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~3_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & ((\inst|cntValue\(0)))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & !\inst|cntValue\(0))))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ $ (\inst|cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst|cntValue\(0),
	combout => \inst4|decOut_n~3_combout\);

-- Location: LCCOMB_X114_Y54_N16
\inst4|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~4_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\) # 
-- (!\inst|cntValue\(0))))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- !\inst|cntValue\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst|cntValue\(0),
	combout => \inst4|decOut_n~4_combout\);

-- Location: LCCOMB_X114_Y54_N6
\inst4|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~5_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((\inst|cntValue\(0) & (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\)) # (!\inst|cntValue\(0) & 
-- ((\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\))))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ $ (\inst|cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst|cntValue\(0),
	combout => \inst4|decOut_n~5_combout\);

-- Location: LCCOMB_X114_Y54_N12
\inst4|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~6_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\inst|cntValue\(0) & (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ $ 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\)))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ $ (\inst|cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst|cntValue\(0),
	combout => \inst4|decOut_n~6_combout\);

-- Location: LCCOMB_X114_Y40_N8
\inst5|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~0_combout\ = (\inst|cntValue\(3) & ((\inst|cntValue\(1)) # (\inst|cntValue\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cntValue\(3),
	datac => \inst|cntValue\(1),
	datad => \inst|cntValue\(2),
	combout => \inst5|decOut_n~0_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


