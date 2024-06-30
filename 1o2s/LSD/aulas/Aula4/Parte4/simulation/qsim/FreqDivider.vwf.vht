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
-- Generated on "04/05/2022 11:52:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FreqDivider
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FreqDivider_vhd_vec_tst IS
END FreqDivider_vhd_vec_tst;
ARCHITECTURE FreqDivider_arch OF FreqDivider_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clkIn : STD_LOGIC;
SIGNAL clkOut : STD_LOGIC;
SIGNAL k : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT FreqDivider
	PORT (
	clkIn : IN STD_LOGIC;
	clkOut : BUFFER STD_LOGIC;
	k : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FreqDivider
	PORT MAP (
-- list connections between master ports and signals
	clkIn => clkIn,
	clkOut => clkOut,
	k => k,
	reset => reset
	);

-- clkIn
t_prcs_clkIn: PROCESS
BEGIN
LOOP
	clkIn <= '0';
	WAIT FOR 10000 ps;
	clkIn <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkIn;
-- k[31]
t_prcs_k_31: PROCESS
BEGIN
	k(31) <= '0';
WAIT;
END PROCESS t_prcs_k_31;
-- k[30]
t_prcs_k_30: PROCESS
BEGIN
	k(30) <= '0';
WAIT;
END PROCESS t_prcs_k_30;
-- k[29]
t_prcs_k_29: PROCESS
BEGIN
	k(29) <= '0';
WAIT;
END PROCESS t_prcs_k_29;
-- k[28]
t_prcs_k_28: PROCESS
BEGIN
	k(28) <= '0';
WAIT;
END PROCESS t_prcs_k_28;
-- k[27]
t_prcs_k_27: PROCESS
BEGIN
	k(27) <= '0';
WAIT;
END PROCESS t_prcs_k_27;
-- k[26]
t_prcs_k_26: PROCESS
BEGIN
	k(26) <= '0';
WAIT;
END PROCESS t_prcs_k_26;
-- k[25]
t_prcs_k_25: PROCESS
BEGIN
	k(25) <= '0';
WAIT;
END PROCESS t_prcs_k_25;
-- k[24]
t_prcs_k_24: PROCESS
BEGIN
	k(24) <= '0';
WAIT;
END PROCESS t_prcs_k_24;
-- k[23]
t_prcs_k_23: PROCESS
BEGIN
	k(23) <= '0';
WAIT;
END PROCESS t_prcs_k_23;
-- k[22]
t_prcs_k_22: PROCESS
BEGIN
	k(22) <= '0';
WAIT;
END PROCESS t_prcs_k_22;
-- k[21]
t_prcs_k_21: PROCESS
BEGIN
	k(21) <= '0';
WAIT;
END PROCESS t_prcs_k_21;
-- k[20]
t_prcs_k_20: PROCESS
BEGIN
	k(20) <= '0';
WAIT;
END PROCESS t_prcs_k_20;
-- k[19]
t_prcs_k_19: PROCESS
BEGIN
	k(19) <= '0';
WAIT;
END PROCESS t_prcs_k_19;
-- k[18]
t_prcs_k_18: PROCESS
BEGIN
	k(18) <= '0';
WAIT;
END PROCESS t_prcs_k_18;
-- k[17]
t_prcs_k_17: PROCESS
BEGIN
	k(17) <= '0';
WAIT;
END PROCESS t_prcs_k_17;
-- k[16]
t_prcs_k_16: PROCESS
BEGIN
	k(16) <= '0';
WAIT;
END PROCESS t_prcs_k_16;
-- k[15]
t_prcs_k_15: PROCESS
BEGIN
	k(15) <= '0';
WAIT;
END PROCESS t_prcs_k_15;
-- k[14]
t_prcs_k_14: PROCESS
BEGIN
	k(14) <= '0';
WAIT;
END PROCESS t_prcs_k_14;
-- k[13]
t_prcs_k_13: PROCESS
BEGIN
	k(13) <= '0';
WAIT;
END PROCESS t_prcs_k_13;
-- k[12]
t_prcs_k_12: PROCESS
BEGIN
	k(12) <= '0';
WAIT;
END PROCESS t_prcs_k_12;
-- k[11]
t_prcs_k_11: PROCESS
BEGIN
	k(11) <= '0';
WAIT;
END PROCESS t_prcs_k_11;
-- k[10]
t_prcs_k_10: PROCESS
BEGIN
	k(10) <= '0';
WAIT;
END PROCESS t_prcs_k_10;
-- k[9]
t_prcs_k_9: PROCESS
BEGIN
	k(9) <= '0';
WAIT;
END PROCESS t_prcs_k_9;
-- k[8]
t_prcs_k_8: PROCESS
BEGIN
	k(8) <= '0';
WAIT;
END PROCESS t_prcs_k_8;
-- k[7]
t_prcs_k_7: PROCESS
BEGIN
	k(7) <= '0';
WAIT;
END PROCESS t_prcs_k_7;
-- k[6]
t_prcs_k_6: PROCESS
BEGIN
	k(6) <= '0';
WAIT;
END PROCESS t_prcs_k_6;
-- k[5]
t_prcs_k_5: PROCESS
BEGIN
	k(5) <= '0';
WAIT;
END PROCESS t_prcs_k_5;
-- k[4]
t_prcs_k_4: PROCESS
BEGIN
	k(4) <= '0';
WAIT;
END PROCESS t_prcs_k_4;
-- k[3]
t_prcs_k_3: PROCESS
BEGIN
	k(3) <= '0';
WAIT;
END PROCESS t_prcs_k_3;
-- k[2]
t_prcs_k_2: PROCESS
BEGIN
	k(2) <= '1';
WAIT;
END PROCESS t_prcs_k_2;
-- k[1]
t_prcs_k_1: PROCESS
BEGIN
	k(1) <= '0';
WAIT;
END PROCESS t_prcs_k_1;
-- k[0]
t_prcs_k_0: PROCESS
BEGIN
	k(0) <= '0';
WAIT;
END PROCESS t_prcs_k_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END FreqDivider_arch;
