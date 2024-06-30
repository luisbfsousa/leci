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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/09/2022 13:33:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CombShitUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CombShitUnit_vhd_vec_tst IS
END CombShitUnit_vhd_vec_tst;
ARCHITECTURE CombShitUnit_arch OF CombShitUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AMOUNT : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL DIN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DIR : STD_LOGIC;
SIGNAL DOUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL FILL : STD_LOGIC;
COMPONENT CombShitUnit
	PORT (
	AMOUNT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	DIN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	DIR : IN STD_LOGIC;
	DOUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	FILL : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CombShitUnit
	PORT MAP (
-- list connections between master ports and signals
	AMOUNT => AMOUNT,
	DIN => DIN,
	DIR => DIR,
	DOUT => DOUT,
	FILL => FILL
	);
-- DIN[7]
t_prcs_DIN_7: PROCESS
BEGIN
	DIN(7) <= '1';
WAIT;
END PROCESS t_prcs_DIN_7;
-- DIN[6]
t_prcs_DIN_6: PROCESS
BEGIN
	DIN(6) <= '0';
WAIT;
END PROCESS t_prcs_DIN_6;
-- DIN[5]
t_prcs_DIN_5: PROCESS
BEGIN
	DIN(5) <= '1';
WAIT;
END PROCESS t_prcs_DIN_5;
-- DIN[4]
t_prcs_DIN_4: PROCESS
BEGIN
	DIN(4) <= '1';
WAIT;
END PROCESS t_prcs_DIN_4;
-- DIN[3]
t_prcs_DIN_3: PROCESS
BEGIN
	DIN(3) <= '0';
WAIT;
END PROCESS t_prcs_DIN_3;
-- DIN[2]
t_prcs_DIN_2: PROCESS
BEGIN
	DIN(2) <= '0';
WAIT;
END PROCESS t_prcs_DIN_2;
-- DIN[1]
t_prcs_DIN_1: PROCESS
BEGIN
	DIN(1) <= '1';
WAIT;
END PROCESS t_prcs_DIN_1;
-- DIN[0]
t_prcs_DIN_0: PROCESS
BEGIN
	DIN(0) <= '0';
WAIT;
END PROCESS t_prcs_DIN_0;

-- DIR
t_prcs_DIR: PROCESS
BEGIN
	DIR <= '0';
WAIT;
END PROCESS t_prcs_DIR;
-- AMOUNT[2]
t_prcs_AMOUNT_2: PROCESS
BEGIN
	AMOUNT(2) <= '0';
WAIT;
END PROCESS t_prcs_AMOUNT_2;
-- AMOUNT[1]
t_prcs_AMOUNT_1: PROCESS
BEGIN
	AMOUNT(1) <= '0';
WAIT;
END PROCESS t_prcs_AMOUNT_1;
-- AMOUNT[0]
t_prcs_AMOUNT_0: PROCESS
BEGIN
	AMOUNT(0) <= '1';
WAIT;
END PROCESS t_prcs_AMOUNT_0;

-- FILL
t_prcs_FILL: PROCESS
BEGIN
	FILL <= '1';
WAIT;
END PROCESS t_prcs_FILL;
END CombShitUnit_arch;
