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

-- DATE "04/21/2022 18:44:41"

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

ENTITY 	TimerN IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	start : IN std_logic;
	timerOut : OUT std_logic
	);
END TimerN;

ARCHITECTURE structure OF TimerN IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_timerOut : std_logic;
SIGNAL \timerOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \s_count[0]~32_combout\ : std_logic;
SIGNAL \s_count[0]~33\ : std_logic;
SIGNAL \s_count[1]~36_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \s_count[0]~35_combout\ : std_logic;
SIGNAL \s_count[1]~37\ : std_logic;
SIGNAL \s_count[2]~38_combout\ : std_logic;
SIGNAL \s_count[2]~39\ : std_logic;
SIGNAL \s_count[3]~40_combout\ : std_logic;
SIGNAL \timerOut~0_combout\ : std_logic;
SIGNAL \s_count[0]~34_combout\ : std_logic;
SIGNAL \s_count[3]~41\ : std_logic;
SIGNAL \s_count[4]~42_combout\ : std_logic;
SIGNAL \s_count[4]~43\ : std_logic;
SIGNAL \s_count[5]~44_combout\ : std_logic;
SIGNAL \s_count[5]~45\ : std_logic;
SIGNAL \s_count[6]~46_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \s_count[6]~47\ : std_logic;
SIGNAL \s_count[7]~48_combout\ : std_logic;
SIGNAL \s_count[7]~49\ : std_logic;
SIGNAL \s_count[8]~50_combout\ : std_logic;
SIGNAL \s_count[8]~51\ : std_logic;
SIGNAL \s_count[9]~52_combout\ : std_logic;
SIGNAL \s_count[9]~53\ : std_logic;
SIGNAL \s_count[10]~54_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \s_count[10]~55\ : std_logic;
SIGNAL \s_count[11]~56_combout\ : std_logic;
SIGNAL \s_count[11]~57\ : std_logic;
SIGNAL \s_count[12]~58_combout\ : std_logic;
SIGNAL \s_count[12]~59\ : std_logic;
SIGNAL \s_count[13]~60_combout\ : std_logic;
SIGNAL \s_count[13]~61\ : std_logic;
SIGNAL \s_count[14]~62_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \s_count[14]~63\ : std_logic;
SIGNAL \s_count[15]~64_combout\ : std_logic;
SIGNAL \s_count[15]~65\ : std_logic;
SIGNAL \s_count[16]~66_combout\ : std_logic;
SIGNAL \s_count[16]~67\ : std_logic;
SIGNAL \s_count[17]~68_combout\ : std_logic;
SIGNAL \s_count[17]~69\ : std_logic;
SIGNAL \s_count[18]~70_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \s_count[18]~71\ : std_logic;
SIGNAL \s_count[19]~72_combout\ : std_logic;
SIGNAL \s_count[19]~73\ : std_logic;
SIGNAL \s_count[20]~74_combout\ : std_logic;
SIGNAL \s_count[20]~75\ : std_logic;
SIGNAL \s_count[21]~76_combout\ : std_logic;
SIGNAL \s_count[21]~77\ : std_logic;
SIGNAL \s_count[22]~78_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \s_count[22]~79\ : std_logic;
SIGNAL \s_count[23]~80_combout\ : std_logic;
SIGNAL \s_count[23]~81\ : std_logic;
SIGNAL \s_count[24]~82_combout\ : std_logic;
SIGNAL \s_count[24]~83\ : std_logic;
SIGNAL \s_count[25]~84_combout\ : std_logic;
SIGNAL \s_count[25]~85\ : std_logic;
SIGNAL \s_count[26]~86_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \s_count[26]~87\ : std_logic;
SIGNAL \s_count[27]~88_combout\ : std_logic;
SIGNAL \s_count[27]~89\ : std_logic;
SIGNAL \s_count[28]~90_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \s_count[28]~91\ : std_logic;
SIGNAL \s_count[29]~92_combout\ : std_logic;
SIGNAL \s_count[29]~93\ : std_logic;
SIGNAL \s_count[30]~94_combout\ : std_logic;
SIGNAL \s_count[30]~95\ : std_logic;
SIGNAL \s_count[31]~96_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \timerOut~1_combout\ : std_logic;
SIGNAL \timerOut~2_combout\ : std_logic;
SIGNAL \timerOut~reg0_q\ : std_logic;
SIGNAL s_count : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_start <= start;
timerOut <= ww_timerOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\timerOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timerOut~reg0_q\,
	devoe => ww_devoe,
	o => \timerOut~output_o\);

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

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~32_combout\ = s_count(0) $ (VCC)
-- \s_count[0]~33\ = CARRY(s_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datad => VCC,
	combout => \s_count[0]~32_combout\,
	cout => \s_count[0]~33\);

\s_count[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[1]~36_combout\ = (s_count(1) & (!\s_count[0]~33\)) # (!s_count(1) & ((\s_count[0]~33\) # (GND)))
-- \s_count[1]~37\ = CARRY((!\s_count[0]~33\) # (!s_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datad => VCC,
	cin => \s_count[0]~33\,
	combout => \s_count[1]~36_combout\,
	cout => \s_count[1]~37\);

\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

\s_count[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~35_combout\ = (\reset~input_o\) # ((\enable~input_o\ & ((\start~input_o\) # (!\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \start~input_o\,
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \s_count[0]~35_combout\);

\s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[1]~36_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(1));

\s_count[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[2]~38_combout\ = (s_count(2) & (\s_count[1]~37\ $ (GND))) # (!s_count(2) & (!\s_count[1]~37\ & VCC))
-- \s_count[2]~39\ = CARRY((s_count(2) & !\s_count[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datad => VCC,
	cin => \s_count[1]~37\,
	combout => \s_count[2]~38_combout\,
	cout => \s_count[2]~39\);

\s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[2]~38_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(2));

\s_count[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[3]~40_combout\ = (s_count(3) & (!\s_count[2]~39\)) # (!s_count(3) & ((\s_count[2]~39\) # (GND)))
-- \s_count[3]~41\ = CARRY((!\s_count[2]~39\) # (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \s_count[2]~39\,
	combout => \s_count[3]~40_combout\,
	cout => \s_count[3]~41\);

\s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[3]~40_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(3));

\timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOut~0_combout\ = ((s_count(1) & ((!s_count(3)) # (!s_count(2)))) # (!s_count(1) & ((s_count(2)) # (s_count(3))))) # (!\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datab => s_count(2),
	datac => s_count(3),
	datad => \Equal0~9_combout\,
	combout => \timerOut~0_combout\);

\s_count[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~34_combout\ = (\reset~input_o\) # ((!\timerOut~0_combout\ & ((!\start~input_o\) # (!\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOut~0_combout\,
	datab => \Equal0~10_combout\,
	datac => \start~input_o\,
	datad => \reset~input_o\,
	combout => \s_count[0]~34_combout\);

\s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[0]~32_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(0));

\s_count[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[4]~42_combout\ = (s_count(4) & (\s_count[3]~41\ $ (GND))) # (!s_count(4) & (!\s_count[3]~41\ & VCC))
-- \s_count[4]~43\ = CARRY((s_count(4) & !\s_count[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datad => VCC,
	cin => \s_count[3]~41\,
	combout => \s_count[4]~42_combout\,
	cout => \s_count[4]~43\);

\s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[4]~42_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(4));

\s_count[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[5]~44_combout\ = (s_count(5) & (!\s_count[4]~43\)) # (!s_count(5) & ((\s_count[4]~43\) # (GND)))
-- \s_count[5]~45\ = CARRY((!\s_count[4]~43\) # (!s_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datad => VCC,
	cin => \s_count[4]~43\,
	combout => \s_count[5]~44_combout\,
	cout => \s_count[5]~45\);

\s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[5]~44_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(5));

\s_count[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~46_combout\ = (s_count(6) & (\s_count[5]~45\ $ (GND))) # (!s_count(6) & (!\s_count[5]~45\ & VCC))
-- \s_count[6]~47\ = CARRY((s_count(6) & !\s_count[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datad => VCC,
	cin => \s_count[5]~45\,
	combout => \s_count[6]~46_combout\,
	cout => \s_count[6]~47\);

\s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[6]~46_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(6));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!s_count(0) & (!s_count(4) & (!s_count(5) & !s_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datab => s_count(4),
	datac => s_count(5),
	datad => s_count(6),
	combout => \Equal0~0_combout\);

\s_count[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[7]~48_combout\ = (s_count(7) & (!\s_count[6]~47\)) # (!s_count(7) & ((\s_count[6]~47\) # (GND)))
-- \s_count[7]~49\ = CARRY((!\s_count[6]~47\) # (!s_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datad => VCC,
	cin => \s_count[6]~47\,
	combout => \s_count[7]~48_combout\,
	cout => \s_count[7]~49\);

\s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[7]~48_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(7));

\s_count[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[8]~50_combout\ = (s_count(8) & (\s_count[7]~49\ $ (GND))) # (!s_count(8) & (!\s_count[7]~49\ & VCC))
-- \s_count[8]~51\ = CARRY((s_count(8) & !\s_count[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datad => VCC,
	cin => \s_count[7]~49\,
	combout => \s_count[8]~50_combout\,
	cout => \s_count[8]~51\);

\s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[8]~50_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(8));

\s_count[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[9]~52_combout\ = (s_count(9) & (!\s_count[8]~51\)) # (!s_count(9) & ((\s_count[8]~51\) # (GND)))
-- \s_count[9]~53\ = CARRY((!\s_count[8]~51\) # (!s_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(9),
	datad => VCC,
	cin => \s_count[8]~51\,
	combout => \s_count[9]~52_combout\,
	cout => \s_count[9]~53\);

\s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[9]~52_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(9));

\s_count[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[10]~54_combout\ = (s_count(10) & (\s_count[9]~53\ $ (GND))) # (!s_count(10) & (!\s_count[9]~53\ & VCC))
-- \s_count[10]~55\ = CARRY((s_count(10) & !\s_count[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datad => VCC,
	cin => \s_count[9]~53\,
	combout => \s_count[10]~54_combout\,
	cout => \s_count[10]~55\);

\s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[10]~54_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(10));

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!s_count(7) & (!s_count(8) & (!s_count(9) & !s_count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datab => s_count(8),
	datac => s_count(9),
	datad => s_count(10),
	combout => \Equal0~1_combout\);

\s_count[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[11]~56_combout\ = (s_count(11) & (!\s_count[10]~55\)) # (!s_count(11) & ((\s_count[10]~55\) # (GND)))
-- \s_count[11]~57\ = CARRY((!\s_count[10]~55\) # (!s_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datad => VCC,
	cin => \s_count[10]~55\,
	combout => \s_count[11]~56_combout\,
	cout => \s_count[11]~57\);

\s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[11]~56_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(11));

\s_count[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~58_combout\ = (s_count(12) & (\s_count[11]~57\ $ (GND))) # (!s_count(12) & (!\s_count[11]~57\ & VCC))
-- \s_count[12]~59\ = CARRY((s_count(12) & !\s_count[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datad => VCC,
	cin => \s_count[11]~57\,
	combout => \s_count[12]~58_combout\,
	cout => \s_count[12]~59\);

\s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[12]~58_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(12));

\s_count[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[13]~60_combout\ = (s_count(13) & (!\s_count[12]~59\)) # (!s_count(13) & ((\s_count[12]~59\) # (GND)))
-- \s_count[13]~61\ = CARRY((!\s_count[12]~59\) # (!s_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datad => VCC,
	cin => \s_count[12]~59\,
	combout => \s_count[13]~60_combout\,
	cout => \s_count[13]~61\);

\s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[13]~60_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(13));

\s_count[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[14]~62_combout\ = (s_count(14) & (\s_count[13]~61\ $ (GND))) # (!s_count(14) & (!\s_count[13]~61\ & VCC))
-- \s_count[14]~63\ = CARRY((s_count(14) & !\s_count[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datad => VCC,
	cin => \s_count[13]~61\,
	combout => \s_count[14]~62_combout\,
	cout => \s_count[14]~63\);

\s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[14]~62_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(14));

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!s_count(11) & (!s_count(12) & (!s_count(13) & !s_count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datab => s_count(12),
	datac => s_count(13),
	datad => s_count(14),
	combout => \Equal0~2_combout\);

\s_count[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[15]~64_combout\ = (s_count(15) & (!\s_count[14]~63\)) # (!s_count(15) & ((\s_count[14]~63\) # (GND)))
-- \s_count[15]~65\ = CARRY((!\s_count[14]~63\) # (!s_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	datad => VCC,
	cin => \s_count[14]~63\,
	combout => \s_count[15]~64_combout\,
	cout => \s_count[15]~65\);

\s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[15]~64_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(15));

\s_count[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[16]~66_combout\ = (s_count(16) & (\s_count[15]~65\ $ (GND))) # (!s_count(16) & (!\s_count[15]~65\ & VCC))
-- \s_count[16]~67\ = CARRY((s_count(16) & !\s_count[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(16),
	datad => VCC,
	cin => \s_count[15]~65\,
	combout => \s_count[16]~66_combout\,
	cout => \s_count[16]~67\);

\s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[16]~66_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(16));

\s_count[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[17]~68_combout\ = (s_count(17) & (!\s_count[16]~67\)) # (!s_count(17) & ((\s_count[16]~67\) # (GND)))
-- \s_count[17]~69\ = CARRY((!\s_count[16]~67\) # (!s_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(17),
	datad => VCC,
	cin => \s_count[16]~67\,
	combout => \s_count[17]~68_combout\,
	cout => \s_count[17]~69\);

\s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[17]~68_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(17));

\s_count[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[18]~70_combout\ = (s_count(18) & (\s_count[17]~69\ $ (GND))) # (!s_count(18) & (!\s_count[17]~69\ & VCC))
-- \s_count[18]~71\ = CARRY((s_count(18) & !\s_count[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(18),
	datad => VCC,
	cin => \s_count[17]~69\,
	combout => \s_count[18]~70_combout\,
	cout => \s_count[18]~71\);

\s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[18]~70_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(18));

\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!s_count(15) & (!s_count(16) & (!s_count(17) & !s_count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	datab => s_count(16),
	datac => s_count(17),
	datad => s_count(18),
	combout => \Equal0~3_combout\);

\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\s_count[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[19]~72_combout\ = (s_count(19) & (!\s_count[18]~71\)) # (!s_count(19) & ((\s_count[18]~71\) # (GND)))
-- \s_count[19]~73\ = CARRY((!\s_count[18]~71\) # (!s_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(19),
	datad => VCC,
	cin => \s_count[18]~71\,
	combout => \s_count[19]~72_combout\,
	cout => \s_count[19]~73\);

\s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[19]~72_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(19));

\s_count[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[20]~74_combout\ = (s_count(20) & (\s_count[19]~73\ $ (GND))) # (!s_count(20) & (!\s_count[19]~73\ & VCC))
-- \s_count[20]~75\ = CARRY((s_count(20) & !\s_count[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(20),
	datad => VCC,
	cin => \s_count[19]~73\,
	combout => \s_count[20]~74_combout\,
	cout => \s_count[20]~75\);

\s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[20]~74_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(20));

\s_count[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[21]~76_combout\ = (s_count(21) & (!\s_count[20]~75\)) # (!s_count(21) & ((\s_count[20]~75\) # (GND)))
-- \s_count[21]~77\ = CARRY((!\s_count[20]~75\) # (!s_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(21),
	datad => VCC,
	cin => \s_count[20]~75\,
	combout => \s_count[21]~76_combout\,
	cout => \s_count[21]~77\);

\s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[21]~76_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(21));

\s_count[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[22]~78_combout\ = (s_count(22) & (\s_count[21]~77\ $ (GND))) # (!s_count(22) & (!\s_count[21]~77\ & VCC))
-- \s_count[22]~79\ = CARRY((s_count(22) & !\s_count[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(22),
	datad => VCC,
	cin => \s_count[21]~77\,
	combout => \s_count[22]~78_combout\,
	cout => \s_count[22]~79\);

\s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[22]~78_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(22));

\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!s_count(19) & (!s_count(20) & (!s_count(21) & !s_count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(19),
	datab => s_count(20),
	datac => s_count(21),
	datad => s_count(22),
	combout => \Equal0~5_combout\);

\s_count[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[23]~80_combout\ = (s_count(23) & (!\s_count[22]~79\)) # (!s_count(23) & ((\s_count[22]~79\) # (GND)))
-- \s_count[23]~81\ = CARRY((!\s_count[22]~79\) # (!s_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(23),
	datad => VCC,
	cin => \s_count[22]~79\,
	combout => \s_count[23]~80_combout\,
	cout => \s_count[23]~81\);

\s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[23]~80_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(23));

\s_count[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[24]~82_combout\ = (s_count(24) & (\s_count[23]~81\ $ (GND))) # (!s_count(24) & (!\s_count[23]~81\ & VCC))
-- \s_count[24]~83\ = CARRY((s_count(24) & !\s_count[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(24),
	datad => VCC,
	cin => \s_count[23]~81\,
	combout => \s_count[24]~82_combout\,
	cout => \s_count[24]~83\);

\s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[24]~82_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(24));

\s_count[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[25]~84_combout\ = (s_count(25) & (!\s_count[24]~83\)) # (!s_count(25) & ((\s_count[24]~83\) # (GND)))
-- \s_count[25]~85\ = CARRY((!\s_count[24]~83\) # (!s_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(25),
	datad => VCC,
	cin => \s_count[24]~83\,
	combout => \s_count[25]~84_combout\,
	cout => \s_count[25]~85\);

\s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[25]~84_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(25));

\s_count[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[26]~86_combout\ = (s_count(26) & (\s_count[25]~85\ $ (GND))) # (!s_count(26) & (!\s_count[25]~85\ & VCC))
-- \s_count[26]~87\ = CARRY((s_count(26) & !\s_count[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(26),
	datad => VCC,
	cin => \s_count[25]~85\,
	combout => \s_count[26]~86_combout\,
	cout => \s_count[26]~87\);

\s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[26]~86_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(26));

\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!s_count(23) & (!s_count(24) & (!s_count(25) & !s_count(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(23),
	datab => s_count(24),
	datac => s_count(25),
	datad => s_count(26),
	combout => \Equal0~6_combout\);

\s_count[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[27]~88_combout\ = (s_count(27) & (!\s_count[26]~87\)) # (!s_count(27) & ((\s_count[26]~87\) # (GND)))
-- \s_count[27]~89\ = CARRY((!\s_count[26]~87\) # (!s_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(27),
	datad => VCC,
	cin => \s_count[26]~87\,
	combout => \s_count[27]~88_combout\,
	cout => \s_count[27]~89\);

\s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[27]~88_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(27));

\s_count[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[28]~90_combout\ = (s_count(28) & (\s_count[27]~89\ $ (GND))) # (!s_count(28) & (!\s_count[27]~89\ & VCC))
-- \s_count[28]~91\ = CARRY((s_count(28) & !\s_count[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(28),
	datad => VCC,
	cin => \s_count[27]~89\,
	combout => \s_count[28]~90_combout\,
	cout => \s_count[28]~91\);

\s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[28]~90_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(28));

\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!s_count(27) & !s_count(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_count(27),
	datad => s_count(28),
	combout => \Equal0~7_combout\);

\s_count[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[29]~92_combout\ = (s_count(29) & (!\s_count[28]~91\)) # (!s_count(29) & ((\s_count[28]~91\) # (GND)))
-- \s_count[29]~93\ = CARRY((!\s_count[28]~91\) # (!s_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(29),
	datad => VCC,
	cin => \s_count[28]~91\,
	combout => \s_count[29]~92_combout\,
	cout => \s_count[29]~93\);

\s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[29]~92_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(29));

\s_count[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[30]~94_combout\ = (s_count(30) & (\s_count[29]~93\ $ (GND))) # (!s_count(30) & (!\s_count[29]~93\ & VCC))
-- \s_count[30]~95\ = CARRY((s_count(30) & !\s_count[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(30),
	datad => VCC,
	cin => \s_count[29]~93\,
	combout => \s_count[30]~94_combout\,
	cout => \s_count[30]~95\);

\s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[30]~94_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(30));

\s_count[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[31]~96_combout\ = s_count(31) $ (\s_count[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(31),
	cin => \s_count[30]~95\,
	combout => \s_count[31]~96_combout\);

\s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[31]~96_combout\,
	sclr => \s_count[0]~34_combout\,
	ena => \s_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(31));

\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (!s_count(31) & (!s_count(29) & !s_count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => s_count(31),
	datac => s_count(29),
	datad => s_count(30),
	combout => \Equal0~8_combout\);

\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (!s_count(1) & (!s_count(2) & !s_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => s_count(1),
	datac => s_count(2),
	datad => s_count(3),
	combout => \Equal0~10_combout\);

\timerOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOut~1_combout\ = (\timerOut~0_combout\) # ((\Equal0~10_combout\ & \start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \start~input_o\,
	datac => \timerOut~0_combout\,
	combout => \timerOut~1_combout\);

\timerOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOut~2_combout\ = (!\reset~input_o\ & ((\enable~input_o\ & ((\timerOut~1_combout\))) # (!\enable~input_o\ & (\timerOut~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOut~reg0_q\,
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \timerOut~1_combout\,
	combout => \timerOut~2_combout\);

\timerOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timerOut~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOut~reg0_q\);

ww_timerOut <= \timerOut~output_o\;
END structure;


