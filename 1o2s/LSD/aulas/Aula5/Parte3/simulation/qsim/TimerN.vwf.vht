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
-- Generated on "04/21/2022 18:44:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimerN
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimerN_vhd_vec_tst IS
END TimerN_vhd_vec_tst;
ARCHITECTURE TimerN_arch OF TimerN_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL timerOut : STD_LOGIC;
COMPONENT TimerN
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC;
	timerOut : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TimerN
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	reset => reset,
	start => start,
	timerOut => timerOut
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 60000 ps;
	enable <= '1';
	WAIT FOR 260000 ps;
	enable <= '0';
	WAIT FOR 80000 ps;
	enable <= '1';
	WAIT FOR 160000 ps;
	enable <= '0';
	WAIT FOR 40000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 60000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 40000 ps;
	start <= '1';
	WAIT FOR 40000 ps;
	start <= '0';
	WAIT FOR 160000 ps;
	start <= '1';
	WAIT FOR 50000 ps;
	start <= '0';
	WAIT FOR 280000 ps;
	start <= '1';
	WAIT FOR 60000 ps;
	start <= '0';
	WAIT FOR 290000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
END TimerN_arch;
