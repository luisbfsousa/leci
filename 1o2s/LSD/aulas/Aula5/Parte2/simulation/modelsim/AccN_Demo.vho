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

-- DATE "04/21/2022 18:19:47"

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

ENTITY 	AccN_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END AccN_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AccN_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|reg|dataOut[0]~8_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst|reg|dataOut[7]~24_combout\ : std_logic;
SIGNAL \inst|reg|dataOut[0]~9\ : std_logic;
SIGNAL \inst|reg|dataOut[1]~10_combout\ : std_logic;
SIGNAL \inst|reg|dataOut[1]~11\ : std_logic;
SIGNAL \inst|reg|dataOut[2]~12_combout\ : std_logic;
SIGNAL \inst|reg|dataOut[2]~13\ : std_logic;
SIGNAL \inst|reg|dataOut[3]~14_combout\ : std_logic;
SIGNAL \inst|reg|dataOut[3]~15\ : std_logic;
SIGNAL \inst|reg|dataOut[4]~16_combout\ : std_logic;
SIGNAL \inst|reg|dataOut[4]~17\ : std_logic;
SIGNAL \inst|reg|dataOut[5]~18_combout\ : std_logic;
SIGNAL \inst|reg|dataOut[5]~19\ : std_logic;
SIGNAL \inst|reg|dataOut[6]~20_combout\ : std_logic;
SIGNAL \inst|reg|dataOut[6]~21\ : std_logic;
SIGNAL \inst|reg|dataOut[7]~22_combout\ : std_logic;
SIGNAL \inst|reg|dataOut\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\KEY[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[0]~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y23_N23
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reg|dataOut\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reg|dataOut\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reg|dataOut\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reg|dataOut\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reg|dataOut\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reg|dataOut\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reg|dataOut\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reg|dataOut\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G2
\KEY[0]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[0]~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y28_N15
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N4
\inst|reg|dataOut[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg|dataOut[0]~8_combout\ = (\SW[0]~input_o\ & (\inst|reg|dataOut\(0) $ (VCC))) # (!\SW[0]~input_o\ & (\inst|reg|dataOut\(0) & VCC))
-- \inst|reg|dataOut[0]~9\ = CARRY((\SW[0]~input_o\ & \inst|reg|dataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|reg|dataOut\(0),
	datad => VCC,
	combout => \inst|reg|dataOut[0]~8_combout\,
	cout => \inst|reg|dataOut[0]~9\);

-- Location: IOIBUF_X0_Y24_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X1_Y24_N28
\inst|reg|dataOut[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg|dataOut[7]~24_combout\ = (\SW[9]~input_o\) # (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|reg|dataOut[7]~24_combout\);

-- Location: FF_X1_Y24_N5
\inst|reg|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \inst|reg|dataOut[0]~8_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|reg|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|dataOut\(0));

-- Location: LCCOMB_X1_Y24_N6
\inst|reg|dataOut[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg|dataOut[1]~10_combout\ = (\inst|reg|dataOut\(1) & ((\SW[1]~input_o\ & (\inst|reg|dataOut[0]~9\ & VCC)) # (!\SW[1]~input_o\ & (!\inst|reg|dataOut[0]~9\)))) # (!\inst|reg|dataOut\(1) & ((\SW[1]~input_o\ & (!\inst|reg|dataOut[0]~9\)) # 
-- (!\SW[1]~input_o\ & ((\inst|reg|dataOut[0]~9\) # (GND)))))
-- \inst|reg|dataOut[1]~11\ = CARRY((\inst|reg|dataOut\(1) & (!\SW[1]~input_o\ & !\inst|reg|dataOut[0]~9\)) # (!\inst|reg|dataOut\(1) & ((!\inst|reg|dataOut[0]~9\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|dataOut\(1),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|reg|dataOut[0]~9\,
	combout => \inst|reg|dataOut[1]~10_combout\,
	cout => \inst|reg|dataOut[1]~11\);

-- Location: FF_X1_Y24_N7
\inst|reg|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \inst|reg|dataOut[1]~10_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|reg|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|dataOut\(1));

-- Location: LCCOMB_X1_Y24_N8
\inst|reg|dataOut[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg|dataOut[2]~12_combout\ = ((\SW[2]~input_o\ $ (\inst|reg|dataOut\(2) $ (!\inst|reg|dataOut[1]~11\)))) # (GND)
-- \inst|reg|dataOut[2]~13\ = CARRY((\SW[2]~input_o\ & ((\inst|reg|dataOut\(2)) # (!\inst|reg|dataOut[1]~11\))) # (!\SW[2]~input_o\ & (\inst|reg|dataOut\(2) & !\inst|reg|dataOut[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|reg|dataOut\(2),
	datad => VCC,
	cin => \inst|reg|dataOut[1]~11\,
	combout => \inst|reg|dataOut[2]~12_combout\,
	cout => \inst|reg|dataOut[2]~13\);

-- Location: FF_X1_Y24_N9
\inst|reg|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \inst|reg|dataOut[2]~12_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|reg|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|dataOut\(2));

-- Location: LCCOMB_X1_Y24_N10
\inst|reg|dataOut[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg|dataOut[3]~14_combout\ = (\inst|reg|dataOut\(3) & ((\SW[3]~input_o\ & (\inst|reg|dataOut[2]~13\ & VCC)) # (!\SW[3]~input_o\ & (!\inst|reg|dataOut[2]~13\)))) # (!\inst|reg|dataOut\(3) & ((\SW[3]~input_o\ & (!\inst|reg|dataOut[2]~13\)) # 
-- (!\SW[3]~input_o\ & ((\inst|reg|dataOut[2]~13\) # (GND)))))
-- \inst|reg|dataOut[3]~15\ = CARRY((\inst|reg|dataOut\(3) & (!\SW[3]~input_o\ & !\inst|reg|dataOut[2]~13\)) # (!\inst|reg|dataOut\(3) & ((!\inst|reg|dataOut[2]~13\) # (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|dataOut\(3),
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst|reg|dataOut[2]~13\,
	combout => \inst|reg|dataOut[3]~14_combout\,
	cout => \inst|reg|dataOut[3]~15\);

-- Location: FF_X1_Y24_N11
\inst|reg|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \inst|reg|dataOut[3]~14_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|reg|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|dataOut\(3));

-- Location: LCCOMB_X1_Y24_N12
\inst|reg|dataOut[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg|dataOut[4]~16_combout\ = ((\inst|reg|dataOut\(4) $ (\SW[4]~input_o\ $ (!\inst|reg|dataOut[3]~15\)))) # (GND)
-- \inst|reg|dataOut[4]~17\ = CARRY((\inst|reg|dataOut\(4) & ((\SW[4]~input_o\) # (!\inst|reg|dataOut[3]~15\))) # (!\inst|reg|dataOut\(4) & (\SW[4]~input_o\ & !\inst|reg|dataOut[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|dataOut\(4),
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \inst|reg|dataOut[3]~15\,
	combout => \inst|reg|dataOut[4]~16_combout\,
	cout => \inst|reg|dataOut[4]~17\);

-- Location: FF_X1_Y24_N13
\inst|reg|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \inst|reg|dataOut[4]~16_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|reg|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|dataOut\(4));

-- Location: LCCOMB_X1_Y24_N14
\inst|reg|dataOut[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg|dataOut[5]~18_combout\ = (\SW[5]~input_o\ & ((\inst|reg|dataOut\(5) & (\inst|reg|dataOut[4]~17\ & VCC)) # (!\inst|reg|dataOut\(5) & (!\inst|reg|dataOut[4]~17\)))) # (!\SW[5]~input_o\ & ((\inst|reg|dataOut\(5) & (!\inst|reg|dataOut[4]~17\)) # 
-- (!\inst|reg|dataOut\(5) & ((\inst|reg|dataOut[4]~17\) # (GND)))))
-- \inst|reg|dataOut[5]~19\ = CARRY((\SW[5]~input_o\ & (!\inst|reg|dataOut\(5) & !\inst|reg|dataOut[4]~17\)) # (!\SW[5]~input_o\ & ((!\inst|reg|dataOut[4]~17\) # (!\inst|reg|dataOut\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|reg|dataOut\(5),
	datad => VCC,
	cin => \inst|reg|dataOut[4]~17\,
	combout => \inst|reg|dataOut[5]~18_combout\,
	cout => \inst|reg|dataOut[5]~19\);

-- Location: FF_X1_Y24_N15
\inst|reg|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \inst|reg|dataOut[5]~18_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|reg|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|dataOut\(5));

-- Location: LCCOMB_X1_Y24_N16
\inst|reg|dataOut[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg|dataOut[6]~20_combout\ = ((\SW[6]~input_o\ $ (\inst|reg|dataOut\(6) $ (!\inst|reg|dataOut[5]~19\)))) # (GND)
-- \inst|reg|dataOut[6]~21\ = CARRY((\SW[6]~input_o\ & ((\inst|reg|dataOut\(6)) # (!\inst|reg|dataOut[5]~19\))) # (!\SW[6]~input_o\ & (\inst|reg|dataOut\(6) & !\inst|reg|dataOut[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \inst|reg|dataOut\(6),
	datad => VCC,
	cin => \inst|reg|dataOut[5]~19\,
	combout => \inst|reg|dataOut[6]~20_combout\,
	cout => \inst|reg|dataOut[6]~21\);

-- Location: FF_X1_Y24_N17
\inst|reg|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \inst|reg|dataOut[6]~20_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|reg|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|dataOut\(6));

-- Location: LCCOMB_X1_Y24_N18
\inst|reg|dataOut[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg|dataOut[7]~22_combout\ = \SW[7]~input_o\ $ (\inst|reg|dataOut[6]~21\ $ (\inst|reg|dataOut\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \inst|reg|dataOut\(7),
	cin => \inst|reg|dataOut[6]~21\,
	combout => \inst|reg|dataOut[7]~22_combout\);

-- Location: FF_X1_Y24_N19
\inst|reg|dataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \inst|reg|dataOut[7]~22_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|reg|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|dataOut\(7));

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


