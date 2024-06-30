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

-- DATE "04/05/2022 10:20:46"

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

ENTITY 	CounterUpDown4 IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	upDown : IN std_logic;
	count : OUT std_logic_vector(3 DOWNTO 0)
	);
END CounterUpDown4;

ARCHITECTURE structure OF CounterUpDown4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_upDown : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cntValue~3_combout\ : std_logic;
SIGNAL \upDown~input_o\ : std_logic;
SIGNAL \cntValue[1]~5_cout\ : std_logic;
SIGNAL \cntValue[1]~6_combout\ : std_logic;
SIGNAL \cntValue[1]~7\ : std_logic;
SIGNAL \cntValue[2]~8_combout\ : std_logic;
SIGNAL \cntValue[2]~9\ : std_logic;
SIGNAL \cntValue[3]~10_combout\ : std_logic;
SIGNAL cntValue : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_upDown <= upDown;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cntValue(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cntValue(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cntValue(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cntValue(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\cntValue~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntValue~3_combout\ = (!cntValue(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cntValue(0),
	datab => \reset~input_o\,
	combout => \cntValue~3_combout\);

\cntValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cntValue~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cntValue(0));

\upDown~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upDown,
	o => \upDown~input_o\);

\cntValue[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntValue[1]~5_cout\ = CARRY(cntValue(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cntValue(0),
	datad => VCC,
	cout => \cntValue[1]~5_cout\);

\cntValue[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntValue[1]~6_combout\ = (\upDown~input_o\ & ((cntValue(1) & (!\cntValue[1]~5_cout\)) # (!cntValue(1) & ((\cntValue[1]~5_cout\) # (GND))))) # (!\upDown~input_o\ & ((cntValue(1) & (\cntValue[1]~5_cout\ & VCC)) # (!cntValue(1) & (!\cntValue[1]~5_cout\))))
-- \cntValue[1]~7\ = CARRY((\upDown~input_o\ & ((!\cntValue[1]~5_cout\) # (!cntValue(1)))) # (!\upDown~input_o\ & (!cntValue(1) & !\cntValue[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upDown~input_o\,
	datab => cntValue(1),
	datad => VCC,
	cin => \cntValue[1]~5_cout\,
	combout => \cntValue[1]~6_combout\,
	cout => \cntValue[1]~7\);

\cntValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cntValue[1]~6_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cntValue(1));

\cntValue[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntValue[2]~8_combout\ = ((\upDown~input_o\ $ (cntValue(2) $ (\cntValue[1]~7\)))) # (GND)
-- \cntValue[2]~9\ = CARRY((\upDown~input_o\ & (cntValue(2) & !\cntValue[1]~7\)) # (!\upDown~input_o\ & ((cntValue(2)) # (!\cntValue[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upDown~input_o\,
	datab => cntValue(2),
	datad => VCC,
	cin => \cntValue[1]~7\,
	combout => \cntValue[2]~8_combout\,
	cout => \cntValue[2]~9\);

\cntValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cntValue[2]~8_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cntValue(2));

\cntValue[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntValue[3]~10_combout\ = \upDown~input_o\ $ (cntValue(3) $ (!\cntValue[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upDown~input_o\,
	datab => cntValue(3),
	cin => \cntValue[2]~9\,
	combout => \cntValue[3]~10_combout\);

\cntValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cntValue[3]~10_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cntValue(3));

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;
END structure;


