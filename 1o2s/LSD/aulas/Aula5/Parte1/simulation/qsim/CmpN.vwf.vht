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
-- Generated on "04/19/2022 09:31:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CmpN
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CmpN_vhd_vec_tst IS
END CmpN_vhd_vec_tst;
ARCHITECTURE CmpN_arch OF CmpN_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL equal : STD_LOGIC;
SIGNAL input0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL input1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ltSigned : STD_LOGIC;
SIGNAL ltUnsigned : STD_LOGIC;
SIGNAL notEqual : STD_LOGIC;
COMPONENT CmpN
	PORT (
	equal : OUT STD_LOGIC;
	input0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	input1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	ltSigned : OUT STD_LOGIC;
	ltUnsigned : OUT STD_LOGIC;
	notEqual : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CmpN
	PORT MAP (
-- list connections between master ports and signals
	equal => equal,
	input0 => input0,
	input1 => input1,
	ltSigned => ltSigned,
	ltUnsigned => ltUnsigned,
	notEqual => notEqual
	);
-- input0[7]
t_prcs_input0_7: PROCESS
BEGIN
	input0(7) <= '0';
	WAIT FOR 160000 ps;
	input0(7) <= '1';
	WAIT FOR 90000 ps;
	input0(7) <= '0';
WAIT;
END PROCESS t_prcs_input0_7;
-- input0[6]
t_prcs_input0_6: PROCESS
BEGIN
	input0(6) <= '1';
	WAIT FOR 80000 ps;
	input0(6) <= '0';
	WAIT FOR 250000 ps;
	input0(6) <= '1';
	WAIT FOR 90000 ps;
	input0(6) <= '0';
WAIT;
END PROCESS t_prcs_input0_6;
-- input0[5]
t_prcs_input0_5: PROCESS
BEGIN
	input0(5) <= '1';
	WAIT FOR 80000 ps;
	input0(5) <= '0';
	WAIT FOR 250000 ps;
	input0(5) <= '1';
	WAIT FOR 90000 ps;
	input0(5) <= '0';
WAIT;
END PROCESS t_prcs_input0_5;
-- input0[4]
t_prcs_input0_4: PROCESS
BEGIN
	input0(4) <= '1';
	WAIT FOR 80000 ps;
	input0(4) <= '0';
	WAIT FOR 250000 ps;
	input0(4) <= '1';
	WAIT FOR 90000 ps;
	input0(4) <= '0';
WAIT;
END PROCESS t_prcs_input0_4;
-- input0[3]
t_prcs_input0_3: PROCESS
BEGIN
	input0(3) <= '1';
	WAIT FOR 80000 ps;
	input0(3) <= '0';
	WAIT FOR 250000 ps;
	input0(3) <= '1';
	WAIT FOR 90000 ps;
	input0(3) <= '0';
WAIT;
END PROCESS t_prcs_input0_3;
-- input0[2]
t_prcs_input0_2: PROCESS
BEGIN
	input0(2) <= '1';
	WAIT FOR 80000 ps;
	input0(2) <= '0';
	WAIT FOR 250000 ps;
	input0(2) <= '1';
	WAIT FOR 90000 ps;
	input0(2) <= '0';
WAIT;
END PROCESS t_prcs_input0_2;
-- input0[1]
t_prcs_input0_1: PROCESS
BEGIN
	input0(1) <= '1';
	WAIT FOR 80000 ps;
	input0(1) <= '0';
	WAIT FOR 250000 ps;
	input0(1) <= '1';
	WAIT FOR 90000 ps;
	input0(1) <= '0';
WAIT;
END PROCESS t_prcs_input0_1;
-- input0[0]
t_prcs_input0_0: PROCESS
BEGIN
	input0(0) <= '1';
	WAIT FOR 80000 ps;
	input0(0) <= '0';
	WAIT FOR 250000 ps;
	input0(0) <= '1';
	WAIT FOR 90000 ps;
	input0(0) <= '0';
WAIT;
END PROCESS t_prcs_input0_0;
-- input1[7]
t_prcs_input1_7: PROCESS
BEGIN
	input1(7) <= '1';
	WAIT FOR 80000 ps;
	input1(7) <= '0';
	WAIT FOR 250000 ps;
	input1(7) <= '1';
	WAIT FOR 90000 ps;
	input1(7) <= '0';
WAIT;
END PROCESS t_prcs_input1_7;
-- input1[6]
t_prcs_input1_6: PROCESS
BEGIN
	input1(6) <= '1';
	WAIT FOR 80000 ps;
	input1(6) <= '0';
WAIT;
END PROCESS t_prcs_input1_6;
-- input1[5]
t_prcs_input1_5: PROCESS
BEGIN
	input1(5) <= '1';
	WAIT FOR 80000 ps;
	input1(5) <= '0';
WAIT;
END PROCESS t_prcs_input1_5;
-- input1[4]
t_prcs_input1_4: PROCESS
BEGIN
	input1(4) <= '1';
	WAIT FOR 80000 ps;
	input1(4) <= '0';
WAIT;
END PROCESS t_prcs_input1_4;
-- input1[3]
t_prcs_input1_3: PROCESS
BEGIN
	input1(3) <= '1';
	WAIT FOR 80000 ps;
	input1(3) <= '0';
WAIT;
END PROCESS t_prcs_input1_3;
-- input1[2]
t_prcs_input1_2: PROCESS
BEGIN
	input1(2) <= '1';
	WAIT FOR 80000 ps;
	input1(2) <= '0';
WAIT;
END PROCESS t_prcs_input1_2;
-- input1[1]
t_prcs_input1_1: PROCESS
BEGIN
	input1(1) <= '1';
	WAIT FOR 80000 ps;
	input1(1) <= '0';
WAIT;
END PROCESS t_prcs_input1_1;
-- input1[0]
t_prcs_input1_0: PROCESS
BEGIN
	input1(0) <= '1';
	WAIT FOR 80000 ps;
	input1(0) <= '0';
WAIT;
END PROCESS t_prcs_input1_0;
END CmpN_arch;
