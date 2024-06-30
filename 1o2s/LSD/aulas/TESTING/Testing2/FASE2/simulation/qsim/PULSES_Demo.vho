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

-- DATE "05/16/2022 16:26:40"

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

ENTITY 	PULSES_Curtos IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	pulse : OUT std_logic
	);
END PULSES_Curtos;

ARCHITECTURE structure OF PULSES_Curtos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_pulse : std_logic;
SIGNAL \pulse~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_cnt~1_combout\ : std_logic;
SIGNAL \s_cnt~2_combout\ : std_logic;
SIGNAL \s_cnt~0_combout\ : std_logic;
SIGNAL \pulse~0_combout\ : std_logic;
SIGNAL \pulse~reg0_q\ : std_logic;
SIGNAL s_cnt : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
pulse <= ww_pulse;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pulse~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pulse~reg0_q\,
	devoe => ww_devoe,
	o => \pulse~output_o\);

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

\s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cnt~1_combout\ = (!\reset~input_o\ & (s_cnt(0) $ (s_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_cnt(0),
	datac => s_cnt(1),
	datad => \reset~input_o\,
	combout => \s_cnt~1_combout\);

\s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt(1));

\s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cnt~2_combout\ = (!\reset~input_o\ & ((s_cnt(0) & (s_cnt(1) $ (s_cnt(2)))) # (!s_cnt(0) & (s_cnt(1) & s_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_cnt(0),
	datab => s_cnt(1),
	datac => s_cnt(2),
	datad => \reset~input_o\,
	combout => \s_cnt~2_combout\);

\s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt(2));

\s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cnt~0_combout\ = (!\reset~input_o\ & (!s_cnt(0) & ((s_cnt(1)) # (!s_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => s_cnt(0),
	datac => s_cnt(2),
	datad => s_cnt(1),
	combout => \s_cnt~0_combout\);

\s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt(0));

\pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse~0_combout\ = (!\reset~input_o\ & (!s_cnt(0) & (!s_cnt(1) & s_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => s_cnt(0),
	datac => s_cnt(1),
	datad => s_cnt(2),
	combout => \pulse~0_combout\);

\pulse~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse~reg0_q\);

ww_pulse <= \pulse~output_o\;
END structure;


