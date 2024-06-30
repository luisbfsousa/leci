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
-- Generated on "05/09/2022 13:30:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          xpto3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY xpto3_vhd_vec_tst IS
END xpto3_vhd_vec_tst;
ARCHITECTURE xpto3_arch OF xpto3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL sIn : STD_LOGIC;
COMPONENT xpto3
	PORT (
	clk : IN STD_LOGIC;
	dataOut : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	sIn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : xpto3
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataOut => dataOut,
	reset => reset,
	sIn => sIn
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 220000 ps;
	reset <= '1';
	WAIT FOR 80000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- sIn
t_prcs_sIn: PROCESS
BEGIN
	sIn <= '0';
	WAIT FOR 60000 ps;
	sIn <= '1';
	WAIT FOR 80000 ps;
	sIn <= '0';
	WAIT FOR 200000 ps;
	sIn <= '1';
	WAIT FOR 80000 ps;
	sIn <= '0';
WAIT;
END PROCESS t_prcs_sIn;
END xpto3_arch;
