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

-- DATE "05/03/2022 11:57:03"

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
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \AUD_ADCDAT~padout\ : std_logic;
SIGNAL \CLOCK2_50~padout\ : std_logic;
SIGNAL \CLOCK3_50~padout\ : std_logic;
SIGNAL \ENET0_INT_N~padout\ : std_logic;
SIGNAL \ENET0_LINK100~padout\ : std_logic;
SIGNAL \ENET0_MDIO~padout\ : std_logic;
SIGNAL \ENET0_RX_CLK~padout\ : std_logic;
SIGNAL \ENET0_RX_COL~padout\ : std_logic;
SIGNAL \ENET0_RX_CRS~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET0_RX_DV~padout\ : std_logic;
SIGNAL \ENET0_RX_ER~padout\ : std_logic;
SIGNAL \ENET0_TX_CLK~padout\ : std_logic;
SIGNAL \ENET1_INT_N~padout\ : std_logic;
SIGNAL \ENET1_LINK100~padout\ : std_logic;
SIGNAL \ENET1_MDIO~padout\ : std_logic;
SIGNAL \ENET1_RX_CLK~padout\ : std_logic;
SIGNAL \ENET1_RX_COL~padout\ : std_logic;
SIGNAL \ENET1_RX_CRS~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET1_RX_DV~padout\ : std_logic;
SIGNAL \ENET1_RX_ER~padout\ : std_logic;
SIGNAL \ENET1_TX_CLK~padout\ : std_logic;
SIGNAL \ENETCLK_25~padout\ : std_logic;
SIGNAL \FL_RY~padout\ : std_logic;
SIGNAL \HSMC_CLKIN0~padout\ : std_logic;
SIGNAL \IRDA_RXD~padout\ : std_logic;
SIGNAL \OTG_INT~padout\ : std_logic;
SIGNAL \SD_WP_N~padout\ : std_logic;
SIGNAL \SMA_CLKIN~padout\ : std_logic;
SIGNAL \TD_CLK27~padout\ : std_logic;
SIGNAL \TD_DATA[0]~padout\ : std_logic;
SIGNAL \TD_DATA[1]~padout\ : std_logic;
SIGNAL \TD_DATA[2]~padout\ : std_logic;
SIGNAL \TD_DATA[3]~padout\ : std_logic;
SIGNAL \TD_DATA[4]~padout\ : std_logic;
SIGNAL \TD_DATA[5]~padout\ : std_logic;
SIGNAL \TD_DATA[6]~padout\ : std_logic;
SIGNAL \TD_DATA[7]~padout\ : std_logic;
SIGNAL \TD_HS~padout\ : std_logic;
SIGNAL \TD_VS~padout\ : std_logic;
SIGNAL \UART_RTS~padout\ : std_logic;
SIGNAL \UART_RXD~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \AUD_ADCDAT~ibuf_o\ : std_logic;
SIGNAL \CLOCK2_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK3_50~ibuf_o\ : std_logic;
SIGNAL \ENET0_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET0_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET0_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET1_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET1_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENETCLK_25~ibuf_o\ : std_logic;
SIGNAL \FL_RY~ibuf_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~ibuf_o\ : std_logic;
SIGNAL \IRDA_RXD~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[10]~ibuf_o\ : std_logic;
SIGNAL \SW[11]~ibuf_o\ : std_logic;
SIGNAL \SW[12]~ibuf_o\ : std_logic;
SIGNAL \SW[13]~ibuf_o\ : std_logic;
SIGNAL \SW[14]~ibuf_o\ : std_logic;
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
SIGNAL \SW[1]~ibuf_o\ : std_logic;
SIGNAL \SW[2]~ibuf_o\ : std_logic;
SIGNAL \SW[3]~ibuf_o\ : std_logic;
SIGNAL \SW[4]~ibuf_o\ : std_logic;
SIGNAL \SW[5]~ibuf_o\ : std_logic;
SIGNAL \SW[6]~ibuf_o\ : std_logic;
SIGNAL \SW[7]~ibuf_o\ : std_logic;
SIGNAL \SW[8]~ibuf_o\ : std_logic;
SIGNAL \SW[9]~ibuf_o\ : std_logic;
SIGNAL \TD_CLK27~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[4]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[5]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[6]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[7]~ibuf_o\ : std_logic;
SIGNAL \TD_HS~ibuf_o\ : std_logic;
SIGNAL \TD_VS~ibuf_o\ : std_logic;
SIGNAL \UART_RTS~ibuf_o\ : std_logic;
SIGNAL \UART_RXD~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL SW : std_logic_vector(0 DOWNTO 0);

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

ENTITY 	BasicWatch IS
    PORT (
	SW : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 8)
	);
END BasicWatch;

-- Design Ports Information
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BasicWatch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 8);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_div_4hz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_div_4hz|Add0~0_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~1\ : std_logic;
SIGNAL \clk_div_4hz|Add0~2_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~3\ : std_logic;
SIGNAL \clk_div_4hz|Add0~4_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~5\ : std_logic;
SIGNAL \clk_div_4hz|Add0~6_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~7\ : std_logic;
SIGNAL \clk_div_4hz|Add0~8_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~9\ : std_logic;
SIGNAL \clk_div_4hz|Add0~10_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~11\ : std_logic;
SIGNAL \clk_div_4hz|Add0~12_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~11_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~5_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~10_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~35\ : std_logic;
SIGNAL \clk_div_4hz|Add0~36_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~7_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~37\ : std_logic;
SIGNAL \clk_div_4hz|Add0~38_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~6_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~39\ : std_logic;
SIGNAL \clk_div_4hz|Add0~40_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~5_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~41\ : std_logic;
SIGNAL \clk_div_4hz|Add0~42_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~4_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~43\ : std_logic;
SIGNAL \clk_div_4hz|Add0~44_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~1_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~45\ : std_logic;
SIGNAL \clk_div_4hz|Add0~46_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~47\ : std_logic;
SIGNAL \clk_div_4hz|Add0~48_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~0_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~49\ : std_logic;
SIGNAL \clk_div_4hz|Add0~50_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~51\ : std_logic;
SIGNAL \clk_div_4hz|Add0~52_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~1_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~2_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~53\ : std_logic;
SIGNAL \clk_div_4hz|Add0~54_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~55\ : std_logic;
SIGNAL \clk_div_4hz|Add0~56_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~57\ : std_logic;
SIGNAL \clk_div_4hz|Add0~58_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~59\ : std_logic;
SIGNAL \clk_div_4hz|Add0~60_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~13\ : std_logic;
SIGNAL \clk_div_4hz|Add0~14_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~15\ : std_logic;
SIGNAL \clk_div_4hz|Add0~16_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~17\ : std_logic;
SIGNAL \clk_div_4hz|Add0~18_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~19\ : std_logic;
SIGNAL \clk_div_4hz|Add0~20_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~21\ : std_logic;
SIGNAL \clk_div_4hz|Add0~22_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~10_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~3_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~4_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~11_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~23\ : std_logic;
SIGNAL \clk_div_4hz|Add0~24_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~9_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~25\ : std_logic;
SIGNAL \clk_div_4hz|Add0~26_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~8_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~27\ : std_logic;
SIGNAL \clk_div_4hz|Add0~28_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~3_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~29\ : std_logic;
SIGNAL \clk_div_4hz|Add0~30_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~31\ : std_logic;
SIGNAL \clk_div_4hz|Add0~32_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~2_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~33\ : std_logic;
SIGNAL \clk_div_4hz|Add0~34_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~7_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~8_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~9_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~1_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~0_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~2_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~6_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~3_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~feeder_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~q\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \s_units_cnt|termCnt~0_combout\ : std_logic;
SIGNAL \clk_enb_gen|s_counter[0]~1_combout\ : std_logic;
SIGNAL \clk_enb_gen|s_counter[1]~0_combout\ : std_logic;
SIGNAL \s_units_cnt|s_value[3]~2_combout\ : std_logic;
SIGNAL \s_units_cnt|Add0~0_combout\ : std_logic;
SIGNAL \s_units_cnt|s_value~6_combout\ : std_logic;
SIGNAL \s_units_cnt|s_value~5_combout\ : std_logic;
SIGNAL \s_units_cnt|termCnt~1_combout\ : std_logic;
SIGNAL \s_units_cnt|s_value[3]~3_combout\ : std_logic;
SIGNAL \s_units_cnt|s_value~4_combout\ : std_logic;
SIGNAL \s_units_decod|Mux6~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux5~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux4~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux3~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux2~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux1~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux0~0_combout\ : std_logic;
SIGNAL \s_tens_cnt|termCnt~0_combout\ : std_logic;
SIGNAL \s_units_cnt|termCnt~2_combout\ : std_logic;
SIGNAL \s_units_cnt|termCnt~q\ : std_logic;
SIGNAL \s_tens_cnt|s_value[3]~2_combout\ : std_logic;
SIGNAL \s_tens_cnt|s_value[3]~3_combout\ : std_logic;
SIGNAL \s_tens_cnt|Add0~0_combout\ : std_logic;
SIGNAL \s_tens_cnt|s_value~7_combout\ : std_logic;
SIGNAL \s_tens_cnt|s_value~6_combout\ : std_logic;
SIGNAL \s_tens_cnt|termCnt~1_combout\ : std_logic;
SIGNAL \s_tens_cnt|s_value[3]~4_combout\ : std_logic;
SIGNAL \s_tens_cnt|s_value~5_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux6~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux5~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux4~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux3~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux2~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux1~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux0~0_combout\ : std_logic;
SIGNAL \m_units_cnt|s_value~0_combout\ : std_logic;
SIGNAL \clk_enb_gen|clkEnable~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \s_tens_cnt|termCnt~2_combout\ : std_logic;
SIGNAL \s_tens_cnt|termCnt~q\ : std_logic;
SIGNAL \s_mUnitsEnb~0_combout\ : std_logic;
SIGNAL \m_units_cnt|s_value[3]~1_combout\ : std_logic;
SIGNAL \m_units_cnt|Add0~0_combout\ : std_logic;
SIGNAL \m_units_cnt|s_value~3_combout\ : std_logic;
SIGNAL \m_units_cnt|termCnt~0_combout\ : std_logic;
SIGNAL \m_units_cnt|s_value~2_combout\ : std_logic;
SIGNAL \m_units_cnt|Add0~1_combout\ : std_logic;
SIGNAL \m_units_cnt|s_value~4_combout\ : std_logic;
SIGNAL \m_units_decod|Mux6~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux5~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux4~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux3~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux2~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux1~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux0~0_combout\ : std_logic;
SIGNAL \m_tens_cnt|s_value~0_combout\ : std_logic;
SIGNAL \m_units_cnt|termCnt~1_combout\ : std_logic;
SIGNAL \m_units_cnt|termCnt~q\ : std_logic;
SIGNAL \m_tens_cnt|s_value[3]~1_combout\ : std_logic;
SIGNAL \m_tens_cnt|Add0~0_combout\ : std_logic;
SIGNAL \m_tens_cnt|s_value~3_combout\ : std_logic;
SIGNAL \m_tens_cnt|Add0~1_combout\ : std_logic;
SIGNAL \m_tens_cnt|s_value~4_combout\ : std_logic;
SIGNAL \m_tens_cnt|termCnt~0_combout\ : std_logic;
SIGNAL \m_tens_cnt|s_value~2_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux6~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux5~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux4~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux3~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux2~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux1~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux0~0_combout\ : std_logic;
SIGNAL \h_units_cnt|s_value~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \m_tens_cnt|termCnt~1_combout\ : std_logic;
SIGNAL \m_tens_cnt|termCnt~q\ : std_logic;
SIGNAL \s_hUnitsEnb~0_combout\ : std_logic;
SIGNAL \s_hUnitsEnb~1_combout\ : std_logic;
SIGNAL \h_units_cnt|s_value[3]~1_combout\ : std_logic;
SIGNAL \h_units_cnt|Add0~0_combout\ : std_logic;
SIGNAL \h_units_cnt|s_value~3_combout\ : std_logic;
SIGNAL \h_units_cnt|Add0~1_combout\ : std_logic;
SIGNAL \h_units_cnt|s_value~4_combout\ : std_logic;
SIGNAL \h_units_cnt|termCnt~0_combout\ : std_logic;
SIGNAL \h_units_cnt|s_value~2_combout\ : std_logic;
SIGNAL \h_units_decod|Mux6~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux5~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux4~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux3~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux2~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux1~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux0~0_combout\ : std_logic;
SIGNAL \h_tens_cnt|s_value~1_combout\ : std_logic;
SIGNAL \h_units_cnt|termCnt~1_combout\ : std_logic;
SIGNAL \h_units_cnt|termCnt~q\ : std_logic;
SIGNAL \h_tens_cnt|s_value[3]~2_combout\ : std_logic;
SIGNAL \h_tens_cnt|s_value~3_combout\ : std_logic;
SIGNAL \h_tens_cnt|Add0~1_combout\ : std_logic;
SIGNAL \h_tens_cnt|s_value~5_combout\ : std_logic;
SIGNAL \h_tens_cnt|s_value[3]~0_combout\ : std_logic;
SIGNAL \h_tens_cnt|Add0~0_combout\ : std_logic;
SIGNAL \h_tens_cnt|s_value~4_combout\ : std_logic;
SIGNAL \h_tens_decod|Mux6~0_combout\ : std_logic;
SIGNAL \h_tens_decod|Mux5~0_combout\ : std_logic;
SIGNAL \h_tens_decod|Mux4~0_combout\ : std_logic;
SIGNAL \h_tens_decod|Mux3~0_combout\ : std_logic;
SIGNAL \h_tens_decod|Mux2~0_combout\ : std_logic;
SIGNAL \h_tens_decod|Mux1~0_combout\ : std_logic;
SIGNAL \h_tens_decod|Mux0~0_combout\ : std_logic;
SIGNAL \s_units_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_tens_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \h_tens_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_units_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_tens_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \h_units_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_enb_gen|s_counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk_div_4hz|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \h_tens_decod|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \h_units_decod|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \m_tens_decod|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \m_units_decod|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \s_tens_decod|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \s_units_decod|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clk_div_4hz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div_4hz|clkOut~q\);
\h_tens_decod|ALT_INV_Mux0~0_combout\ <= NOT \h_tens_decod|Mux0~0_combout\;
\h_units_decod|ALT_INV_Mux0~0_combout\ <= NOT \h_units_decod|Mux0~0_combout\;
\m_tens_decod|ALT_INV_Mux0~0_combout\ <= NOT \m_tens_decod|Mux0~0_combout\;
\m_units_decod|ALT_INV_Mux0~0_combout\ <= NOT \m_units_decod|Mux0~0_combout\;
\s_tens_decod|ALT_INV_Mux0~0_combout\ <= NOT \s_tens_decod|Mux0~0_combout\;
\s_units_decod|ALT_INV_Mux0~0_combout\ <= NOT \s_units_decod|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_enb_gen|s_counter\(1),
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X69_Y70_N2
\clk_div_4hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~0_combout\ = \clk_div_4hz|s_divCounter\(0) $ (VCC)
-- \clk_div_4hz|Add0~1\ = CARRY(\clk_div_4hz|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(0),
	datad => VCC,
	combout => \clk_div_4hz|Add0~0_combout\,
	cout => \clk_div_4hz|Add0~1\);

-- Location: FF_X69_Y70_N3
\clk_div_4hz|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(0));

-- Location: LCCOMB_X69_Y70_N4
\clk_div_4hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~2_combout\ = (\clk_div_4hz|s_divCounter\(1) & (!\clk_div_4hz|Add0~1\)) # (!\clk_div_4hz|s_divCounter\(1) & ((\clk_div_4hz|Add0~1\) # (GND)))
-- \clk_div_4hz|Add0~3\ = CARRY((!\clk_div_4hz|Add0~1\) # (!\clk_div_4hz|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(1),
	datad => VCC,
	cin => \clk_div_4hz|Add0~1\,
	combout => \clk_div_4hz|Add0~2_combout\,
	cout => \clk_div_4hz|Add0~3\);

-- Location: FF_X69_Y70_N5
\clk_div_4hz|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(1));

-- Location: LCCOMB_X69_Y70_N6
\clk_div_4hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~4_combout\ = (\clk_div_4hz|s_divCounter\(2) & (\clk_div_4hz|Add0~3\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(2) & (!\clk_div_4hz|Add0~3\ & VCC))
-- \clk_div_4hz|Add0~5\ = CARRY((\clk_div_4hz|s_divCounter\(2) & !\clk_div_4hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(2),
	datad => VCC,
	cin => \clk_div_4hz|Add0~3\,
	combout => \clk_div_4hz|Add0~4_combout\,
	cout => \clk_div_4hz|Add0~5\);

-- Location: FF_X69_Y70_N7
\clk_div_4hz|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(2));

-- Location: LCCOMB_X69_Y70_N8
\clk_div_4hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~6_combout\ = (\clk_div_4hz|s_divCounter\(3) & (!\clk_div_4hz|Add0~5\)) # (!\clk_div_4hz|s_divCounter\(3) & ((\clk_div_4hz|Add0~5\) # (GND)))
-- \clk_div_4hz|Add0~7\ = CARRY((!\clk_div_4hz|Add0~5\) # (!\clk_div_4hz|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(3),
	datad => VCC,
	cin => \clk_div_4hz|Add0~5\,
	combout => \clk_div_4hz|Add0~6_combout\,
	cout => \clk_div_4hz|Add0~7\);

-- Location: FF_X69_Y70_N9
\clk_div_4hz|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(3));

-- Location: LCCOMB_X69_Y70_N10
\clk_div_4hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~8_combout\ = (\clk_div_4hz|s_divCounter\(4) & (\clk_div_4hz|Add0~7\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(4) & (!\clk_div_4hz|Add0~7\ & VCC))
-- \clk_div_4hz|Add0~9\ = CARRY((\clk_div_4hz|s_divCounter\(4) & !\clk_div_4hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(4),
	datad => VCC,
	cin => \clk_div_4hz|Add0~7\,
	combout => \clk_div_4hz|Add0~8_combout\,
	cout => \clk_div_4hz|Add0~9\);

-- Location: FF_X69_Y70_N11
\clk_div_4hz|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(4));

-- Location: LCCOMB_X69_Y70_N12
\clk_div_4hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~10_combout\ = (\clk_div_4hz|s_divCounter\(5) & (!\clk_div_4hz|Add0~9\)) # (!\clk_div_4hz|s_divCounter\(5) & ((\clk_div_4hz|Add0~9\) # (GND)))
-- \clk_div_4hz|Add0~11\ = CARRY((!\clk_div_4hz|Add0~9\) # (!\clk_div_4hz|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(5),
	datad => VCC,
	cin => \clk_div_4hz|Add0~9\,
	combout => \clk_div_4hz|Add0~10_combout\,
	cout => \clk_div_4hz|Add0~11\);

-- Location: FF_X69_Y70_N13
\clk_div_4hz|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(5));

-- Location: LCCOMB_X69_Y70_N14
\clk_div_4hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~12_combout\ = (\clk_div_4hz|s_divCounter\(6) & (\clk_div_4hz|Add0~11\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(6) & (!\clk_div_4hz|Add0~11\ & VCC))
-- \clk_div_4hz|Add0~13\ = CARRY((\clk_div_4hz|s_divCounter\(6) & !\clk_div_4hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(6),
	datad => VCC,
	cin => \clk_div_4hz|Add0~11\,
	combout => \clk_div_4hz|Add0~12_combout\,
	cout => \clk_div_4hz|Add0~13\);

-- Location: LCCOMB_X68_Y69_N10
\clk_div_4hz|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~11_combout\ = (\clk_div_4hz|Add0~12_combout\ & !\clk_div_4hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~12_combout\,
	datad => \clk_div_4hz|Equal0~11_combout\,
	combout => \clk_div_4hz|s_divCounter~11_combout\);

-- Location: FF_X69_Y70_N31
\clk_div_4hz|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_div_4hz|s_divCounter~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(6));

-- Location: LCCOMB_X68_Y70_N16
\clk_div_4hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~5_combout\ = (!\clk_div_4hz|s_divCounter\(6) & (\clk_div_4hz|s_divCounter\(3) & (\clk_div_4hz|s_divCounter\(4) & \clk_div_4hz|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(6),
	datab => \clk_div_4hz|s_divCounter\(3),
	datac => \clk_div_4hz|s_divCounter\(4),
	datad => \clk_div_4hz|s_divCounter\(2),
	combout => \clk_div_4hz|Equal0~5_combout\);

-- Location: LCCOMB_X68_Y69_N4
\clk_div_4hz|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~10_combout\ = (\clk_div_4hz|s_divCounter\(0) & \clk_div_4hz|s_divCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|s_divCounter\(0),
	datad => \clk_div_4hz|s_divCounter\(1),
	combout => \clk_div_4hz|Equal0~10_combout\);

-- Location: LCCOMB_X69_Y69_N4
\clk_div_4hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~34_combout\ = (\clk_div_4hz|s_divCounter\(17) & (!\clk_div_4hz|Add0~33\)) # (!\clk_div_4hz|s_divCounter\(17) & ((\clk_div_4hz|Add0~33\) # (GND)))
-- \clk_div_4hz|Add0~35\ = CARRY((!\clk_div_4hz|Add0~33\) # (!\clk_div_4hz|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(17),
	datad => VCC,
	cin => \clk_div_4hz|Add0~33\,
	combout => \clk_div_4hz|Add0~34_combout\,
	cout => \clk_div_4hz|Add0~35\);

-- Location: LCCOMB_X69_Y69_N6
\clk_div_4hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~36_combout\ = (\clk_div_4hz|s_divCounter\(18) & (\clk_div_4hz|Add0~35\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(18) & (!\clk_div_4hz|Add0~35\ & VCC))
-- \clk_div_4hz|Add0~37\ = CARRY((\clk_div_4hz|s_divCounter\(18) & !\clk_div_4hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(18),
	datad => VCC,
	cin => \clk_div_4hz|Add0~35\,
	combout => \clk_div_4hz|Add0~36_combout\,
	cout => \clk_div_4hz|Add0~37\);

-- Location: LCCOMB_X70_Y69_N26
\clk_div_4hz|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~7_combout\ = (\clk_div_4hz|Add0~36_combout\ & !\clk_div_4hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~36_combout\,
	datad => \clk_div_4hz|Equal0~11_combout\,
	combout => \clk_div_4hz|s_divCounter~7_combout\);

-- Location: FF_X70_Y69_N27
\clk_div_4hz|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(18));

-- Location: LCCOMB_X69_Y69_N8
\clk_div_4hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~38_combout\ = (\clk_div_4hz|s_divCounter\(19) & (!\clk_div_4hz|Add0~37\)) # (!\clk_div_4hz|s_divCounter\(19) & ((\clk_div_4hz|Add0~37\) # (GND)))
-- \clk_div_4hz|Add0~39\ = CARRY((!\clk_div_4hz|Add0~37\) # (!\clk_div_4hz|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(19),
	datad => VCC,
	cin => \clk_div_4hz|Add0~37\,
	combout => \clk_div_4hz|Add0~38_combout\,
	cout => \clk_div_4hz|Add0~39\);

-- Location: LCCOMB_X70_Y69_N20
\clk_div_4hz|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~6_combout\ = (!\clk_div_4hz|Equal0~11_combout\ & \clk_div_4hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Equal0~11_combout\,
	datad => \clk_div_4hz|Add0~38_combout\,
	combout => \clk_div_4hz|s_divCounter~6_combout\);

-- Location: FF_X70_Y69_N21
\clk_div_4hz|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(19));

-- Location: LCCOMB_X69_Y69_N10
\clk_div_4hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~40_combout\ = (\clk_div_4hz|s_divCounter\(20) & (\clk_div_4hz|Add0~39\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(20) & (!\clk_div_4hz|Add0~39\ & VCC))
-- \clk_div_4hz|Add0~41\ = CARRY((\clk_div_4hz|s_divCounter\(20) & !\clk_div_4hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(20),
	datad => VCC,
	cin => \clk_div_4hz|Add0~39\,
	combout => \clk_div_4hz|Add0~40_combout\,
	cout => \clk_div_4hz|Add0~41\);

-- Location: LCCOMB_X70_Y69_N12
\clk_div_4hz|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~5_combout\ = (!\clk_div_4hz|Equal0~11_combout\ & \clk_div_4hz|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Equal0~11_combout\,
	datad => \clk_div_4hz|Add0~40_combout\,
	combout => \clk_div_4hz|s_divCounter~5_combout\);

-- Location: FF_X70_Y69_N13
\clk_div_4hz|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(20));

-- Location: LCCOMB_X69_Y69_N12
\clk_div_4hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~42_combout\ = (\clk_div_4hz|s_divCounter\(21) & (!\clk_div_4hz|Add0~41\)) # (!\clk_div_4hz|s_divCounter\(21) & ((\clk_div_4hz|Add0~41\) # (GND)))
-- \clk_div_4hz|Add0~43\ = CARRY((!\clk_div_4hz|Add0~41\) # (!\clk_div_4hz|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(21),
	datad => VCC,
	cin => \clk_div_4hz|Add0~41\,
	combout => \clk_div_4hz|Add0~42_combout\,
	cout => \clk_div_4hz|Add0~43\);

-- Location: LCCOMB_X70_Y69_N30
\clk_div_4hz|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~4_combout\ = (\clk_div_4hz|Add0~42_combout\ & !\clk_div_4hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~42_combout\,
	datad => \clk_div_4hz|Equal0~11_combout\,
	combout => \clk_div_4hz|s_divCounter~4_combout\);

-- Location: FF_X70_Y69_N31
\clk_div_4hz|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(21));

-- Location: LCCOMB_X69_Y69_N14
\clk_div_4hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~44_combout\ = (\clk_div_4hz|s_divCounter\(22) & (\clk_div_4hz|Add0~43\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(22) & (!\clk_div_4hz|Add0~43\ & VCC))
-- \clk_div_4hz|Add0~45\ = CARRY((\clk_div_4hz|s_divCounter\(22) & !\clk_div_4hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(22),
	datad => VCC,
	cin => \clk_div_4hz|Add0~43\,
	combout => \clk_div_4hz|Add0~44_combout\,
	cout => \clk_div_4hz|Add0~45\);

-- Location: LCCOMB_X68_Y69_N30
\clk_div_4hz|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~1_combout\ = (\clk_div_4hz|Add0~44_combout\ & !\clk_div_4hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~44_combout\,
	datad => \clk_div_4hz|Equal0~11_combout\,
	combout => \clk_div_4hz|s_divCounter~1_combout\);

-- Location: FF_X68_Y69_N31
\clk_div_4hz|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(22));

-- Location: LCCOMB_X69_Y69_N16
\clk_div_4hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~46_combout\ = (\clk_div_4hz|s_divCounter\(23) & (!\clk_div_4hz|Add0~45\)) # (!\clk_div_4hz|s_divCounter\(23) & ((\clk_div_4hz|Add0~45\) # (GND)))
-- \clk_div_4hz|Add0~47\ = CARRY((!\clk_div_4hz|Add0~45\) # (!\clk_div_4hz|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(23),
	datad => VCC,
	cin => \clk_div_4hz|Add0~45\,
	combout => \clk_div_4hz|Add0~46_combout\,
	cout => \clk_div_4hz|Add0~47\);

-- Location: FF_X69_Y69_N17
\clk_div_4hz|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(23));

-- Location: LCCOMB_X69_Y69_N18
\clk_div_4hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~48_combout\ = (\clk_div_4hz|s_divCounter\(24) & (\clk_div_4hz|Add0~47\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(24) & (!\clk_div_4hz|Add0~47\ & VCC))
-- \clk_div_4hz|Add0~49\ = CARRY((\clk_div_4hz|s_divCounter\(24) & !\clk_div_4hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(24),
	datad => VCC,
	cin => \clk_div_4hz|Add0~47\,
	combout => \clk_div_4hz|Add0~48_combout\,
	cout => \clk_div_4hz|Add0~49\);

-- Location: LCCOMB_X68_Y69_N14
\clk_div_4hz|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~0_combout\ = (!\clk_div_4hz|Equal0~11_combout\ & \clk_div_4hz|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Equal0~11_combout\,
	datad => \clk_div_4hz|Add0~48_combout\,
	combout => \clk_div_4hz|s_divCounter~0_combout\);

-- Location: FF_X68_Y69_N15
\clk_div_4hz|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(24));

-- Location: LCCOMB_X69_Y69_N20
\clk_div_4hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~50_combout\ = (\clk_div_4hz|s_divCounter\(25) & (!\clk_div_4hz|Add0~49\)) # (!\clk_div_4hz|s_divCounter\(25) & ((\clk_div_4hz|Add0~49\) # (GND)))
-- \clk_div_4hz|Add0~51\ = CARRY((!\clk_div_4hz|Add0~49\) # (!\clk_div_4hz|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(25),
	datad => VCC,
	cin => \clk_div_4hz|Add0~49\,
	combout => \clk_div_4hz|Add0~50_combout\,
	cout => \clk_div_4hz|Add0~51\);

-- Location: FF_X69_Y69_N21
\clk_div_4hz|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(25));

-- Location: LCCOMB_X69_Y69_N22
\clk_div_4hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~52_combout\ = (\clk_div_4hz|s_divCounter\(26) & (\clk_div_4hz|Add0~51\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(26) & (!\clk_div_4hz|Add0~51\ & VCC))
-- \clk_div_4hz|Add0~53\ = CARRY((\clk_div_4hz|s_divCounter\(26) & !\clk_div_4hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(26),
	datad => VCC,
	cin => \clk_div_4hz|Add0~51\,
	combout => \clk_div_4hz|Add0~52_combout\,
	cout => \clk_div_4hz|Add0~53\);

-- Location: FF_X69_Y69_N23
\clk_div_4hz|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(26));

-- Location: LCCOMB_X70_Y69_N22
\clk_div_4hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~1_combout\ = (\clk_div_4hz|s_divCounter\(20) & (!\clk_div_4hz|s_divCounter\(25) & (\clk_div_4hz|s_divCounter\(21) & !\clk_div_4hz|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(20),
	datab => \clk_div_4hz|s_divCounter\(25),
	datac => \clk_div_4hz|s_divCounter\(21),
	datad => \clk_div_4hz|s_divCounter\(26),
	combout => \clk_div_4hz|Equal0~1_combout\);

-- Location: LCCOMB_X70_Y69_N8
\clk_div_4hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~2_combout\ = (\clk_div_4hz|s_divCounter\(12) & (\clk_div_4hz|s_divCounter\(19) & (\clk_div_4hz|s_divCounter\(18) & \clk_div_4hz|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(12),
	datab => \clk_div_4hz|s_divCounter\(19),
	datac => \clk_div_4hz|s_divCounter\(18),
	datad => \clk_div_4hz|s_divCounter\(13),
	combout => \clk_div_4hz|Equal0~2_combout\);

-- Location: LCCOMB_X69_Y69_N24
\clk_div_4hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~54_combout\ = (\clk_div_4hz|s_divCounter\(27) & (!\clk_div_4hz|Add0~53\)) # (!\clk_div_4hz|s_divCounter\(27) & ((\clk_div_4hz|Add0~53\) # (GND)))
-- \clk_div_4hz|Add0~55\ = CARRY((!\clk_div_4hz|Add0~53\) # (!\clk_div_4hz|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(27),
	datad => VCC,
	cin => \clk_div_4hz|Add0~53\,
	combout => \clk_div_4hz|Add0~54_combout\,
	cout => \clk_div_4hz|Add0~55\);

-- Location: FF_X69_Y69_N25
\clk_div_4hz|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(27));

-- Location: LCCOMB_X69_Y69_N26
\clk_div_4hz|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~56_combout\ = (\clk_div_4hz|s_divCounter\(28) & (\clk_div_4hz|Add0~55\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(28) & (!\clk_div_4hz|Add0~55\ & VCC))
-- \clk_div_4hz|Add0~57\ = CARRY((\clk_div_4hz|s_divCounter\(28) & !\clk_div_4hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(28),
	datad => VCC,
	cin => \clk_div_4hz|Add0~55\,
	combout => \clk_div_4hz|Add0~56_combout\,
	cout => \clk_div_4hz|Add0~57\);

-- Location: FF_X69_Y69_N27
\clk_div_4hz|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(28));

-- Location: LCCOMB_X69_Y69_N28
\clk_div_4hz|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~58_combout\ = (\clk_div_4hz|s_divCounter\(29) & (!\clk_div_4hz|Add0~57\)) # (!\clk_div_4hz|s_divCounter\(29) & ((\clk_div_4hz|Add0~57\) # (GND)))
-- \clk_div_4hz|Add0~59\ = CARRY((!\clk_div_4hz|Add0~57\) # (!\clk_div_4hz|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(29),
	datad => VCC,
	cin => \clk_div_4hz|Add0~57\,
	combout => \clk_div_4hz|Add0~58_combout\,
	cout => \clk_div_4hz|Add0~59\);

-- Location: FF_X69_Y69_N29
\clk_div_4hz|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(29));

-- Location: LCCOMB_X69_Y69_N30
\clk_div_4hz|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~60_combout\ = \clk_div_4hz|s_divCounter\(30) $ (!\clk_div_4hz|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(30),
	cin => \clk_div_4hz|Add0~59\,
	combout => \clk_div_4hz|Add0~60_combout\);

-- Location: FF_X69_Y69_N31
\clk_div_4hz|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(30));

-- Location: LCCOMB_X70_Y69_N4
\clk_div_4hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~0_combout\ = (!\clk_div_4hz|s_divCounter\(28) & (!\clk_div_4hz|s_divCounter\(29) & (!\clk_div_4hz|s_divCounter\(27) & !\clk_div_4hz|s_divCounter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(28),
	datab => \clk_div_4hz|s_divCounter\(29),
	datac => \clk_div_4hz|s_divCounter\(27),
	datad => \clk_div_4hz|s_divCounter\(30),
	combout => \clk_div_4hz|Equal0~0_combout\);

-- Location: LCCOMB_X69_Y70_N16
\clk_div_4hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~14_combout\ = (\clk_div_4hz|s_divCounter\(7) & (!\clk_div_4hz|Add0~13\)) # (!\clk_div_4hz|s_divCounter\(7) & ((\clk_div_4hz|Add0~13\) # (GND)))
-- \clk_div_4hz|Add0~15\ = CARRY((!\clk_div_4hz|Add0~13\) # (!\clk_div_4hz|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(7),
	datad => VCC,
	cin => \clk_div_4hz|Add0~13\,
	combout => \clk_div_4hz|Add0~14_combout\,
	cout => \clk_div_4hz|Add0~15\);

-- Location: FF_X69_Y70_N17
\clk_div_4hz|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(7));

-- Location: LCCOMB_X69_Y70_N18
\clk_div_4hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~16_combout\ = (\clk_div_4hz|s_divCounter\(8) & (\clk_div_4hz|Add0~15\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(8) & (!\clk_div_4hz|Add0~15\ & VCC))
-- \clk_div_4hz|Add0~17\ = CARRY((\clk_div_4hz|s_divCounter\(8) & !\clk_div_4hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(8),
	datad => VCC,
	cin => \clk_div_4hz|Add0~15\,
	combout => \clk_div_4hz|Add0~16_combout\,
	cout => \clk_div_4hz|Add0~17\);

-- Location: FF_X69_Y70_N19
\clk_div_4hz|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(8));

-- Location: LCCOMB_X69_Y70_N20
\clk_div_4hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~18_combout\ = (\clk_div_4hz|s_divCounter\(9) & (!\clk_div_4hz|Add0~17\)) # (!\clk_div_4hz|s_divCounter\(9) & ((\clk_div_4hz|Add0~17\) # (GND)))
-- \clk_div_4hz|Add0~19\ = CARRY((!\clk_div_4hz|Add0~17\) # (!\clk_div_4hz|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(9),
	datad => VCC,
	cin => \clk_div_4hz|Add0~17\,
	combout => \clk_div_4hz|Add0~18_combout\,
	cout => \clk_div_4hz|Add0~19\);

-- Location: FF_X69_Y70_N21
\clk_div_4hz|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(9));

-- Location: LCCOMB_X69_Y70_N22
\clk_div_4hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~20_combout\ = (\clk_div_4hz|s_divCounter\(10) & (\clk_div_4hz|Add0~19\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(10) & (!\clk_div_4hz|Add0~19\ & VCC))
-- \clk_div_4hz|Add0~21\ = CARRY((\clk_div_4hz|s_divCounter\(10) & !\clk_div_4hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(10),
	datad => VCC,
	cin => \clk_div_4hz|Add0~19\,
	combout => \clk_div_4hz|Add0~20_combout\,
	cout => \clk_div_4hz|Add0~21\);

-- Location: FF_X69_Y70_N23
\clk_div_4hz|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(10));

-- Location: LCCOMB_X69_Y70_N24
\clk_div_4hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~22_combout\ = (\clk_div_4hz|s_divCounter\(11) & (!\clk_div_4hz|Add0~21\)) # (!\clk_div_4hz|s_divCounter\(11) & ((\clk_div_4hz|Add0~21\) # (GND)))
-- \clk_div_4hz|Add0~23\ = CARRY((!\clk_div_4hz|Add0~21\) # (!\clk_div_4hz|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(11),
	datad => VCC,
	cin => \clk_div_4hz|Add0~21\,
	combout => \clk_div_4hz|Add0~22_combout\,
	cout => \clk_div_4hz|Add0~23\);

-- Location: LCCOMB_X70_Y69_N18
\clk_div_4hz|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~10_combout\ = (\clk_div_4hz|Add0~22_combout\ & !\clk_div_4hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~22_combout\,
	datad => \clk_div_4hz|Equal0~11_combout\,
	combout => \clk_div_4hz|s_divCounter~10_combout\);

-- Location: FF_X70_Y69_N19
\clk_div_4hz|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(11));

-- Location: LCCOMB_X70_Y69_N24
\clk_div_4hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~3_combout\ = (\clk_div_4hz|s_divCounter\(11) & (!\clk_div_4hz|s_divCounter\(7) & (!\clk_div_4hz|s_divCounter\(9) & !\clk_div_4hz|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(11),
	datab => \clk_div_4hz|s_divCounter\(7),
	datac => \clk_div_4hz|s_divCounter\(9),
	datad => \clk_div_4hz|s_divCounter\(8),
	combout => \clk_div_4hz|Equal0~3_combout\);

-- Location: LCCOMB_X70_Y69_N10
\clk_div_4hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~4_combout\ = (\clk_div_4hz|Equal0~1_combout\ & (\clk_div_4hz|Equal0~2_combout\ & (\clk_div_4hz|Equal0~0_combout\ & \clk_div_4hz|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|Equal0~1_combout\,
	datab => \clk_div_4hz|Equal0~2_combout\,
	datac => \clk_div_4hz|Equal0~0_combout\,
	datad => \clk_div_4hz|Equal0~3_combout\,
	combout => \clk_div_4hz|Equal0~4_combout\);

-- Location: LCCOMB_X68_Y69_N24
\clk_div_4hz|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~11_combout\ = (\clk_div_4hz|Equal0~9_combout\ & (\clk_div_4hz|Equal0~5_combout\ & (\clk_div_4hz|Equal0~10_combout\ & \clk_div_4hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|Equal0~9_combout\,
	datab => \clk_div_4hz|Equal0~5_combout\,
	datac => \clk_div_4hz|Equal0~10_combout\,
	datad => \clk_div_4hz|Equal0~4_combout\,
	combout => \clk_div_4hz|Equal0~11_combout\);

-- Location: LCCOMB_X69_Y70_N26
\clk_div_4hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~24_combout\ = (\clk_div_4hz|s_divCounter\(12) & (\clk_div_4hz|Add0~23\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(12) & (!\clk_div_4hz|Add0~23\ & VCC))
-- \clk_div_4hz|Add0~25\ = CARRY((\clk_div_4hz|s_divCounter\(12) & !\clk_div_4hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(12),
	datad => VCC,
	cin => \clk_div_4hz|Add0~23\,
	combout => \clk_div_4hz|Add0~24_combout\,
	cout => \clk_div_4hz|Add0~25\);

-- Location: LCCOMB_X70_Y69_N6
\clk_div_4hz|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~9_combout\ = (!\clk_div_4hz|Equal0~11_combout\ & \clk_div_4hz|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Equal0~11_combout\,
	datad => \clk_div_4hz|Add0~24_combout\,
	combout => \clk_div_4hz|s_divCounter~9_combout\);

-- Location: FF_X70_Y69_N7
\clk_div_4hz|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(12));

-- Location: LCCOMB_X69_Y70_N28
\clk_div_4hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~26_combout\ = (\clk_div_4hz|s_divCounter\(13) & (!\clk_div_4hz|Add0~25\)) # (!\clk_div_4hz|s_divCounter\(13) & ((\clk_div_4hz|Add0~25\) # (GND)))
-- \clk_div_4hz|Add0~27\ = CARRY((!\clk_div_4hz|Add0~25\) # (!\clk_div_4hz|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(13),
	datad => VCC,
	cin => \clk_div_4hz|Add0~25\,
	combout => \clk_div_4hz|Add0~26_combout\,
	cout => \clk_div_4hz|Add0~27\);

-- Location: LCCOMB_X70_Y69_N0
\clk_div_4hz|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~8_combout\ = (\clk_div_4hz|Add0~26_combout\ & !\clk_div_4hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~26_combout\,
	datad => \clk_div_4hz|Equal0~11_combout\,
	combout => \clk_div_4hz|s_divCounter~8_combout\);

-- Location: FF_X70_Y69_N1
\clk_div_4hz|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(13));

-- Location: LCCOMB_X69_Y70_N30
\clk_div_4hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~28_combout\ = (\clk_div_4hz|s_divCounter\(14) & (\clk_div_4hz|Add0~27\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(14) & (!\clk_div_4hz|Add0~27\ & VCC))
-- \clk_div_4hz|Add0~29\ = CARRY((\clk_div_4hz|s_divCounter\(14) & !\clk_div_4hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(14),
	datad => VCC,
	cin => \clk_div_4hz|Add0~27\,
	combout => \clk_div_4hz|Add0~28_combout\,
	cout => \clk_div_4hz|Add0~29\);

-- Location: LCCOMB_X69_Y70_N0
\clk_div_4hz|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~3_combout\ = (\clk_div_4hz|Add0~28_combout\ & !\clk_div_4hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~28_combout\,
	datad => \clk_div_4hz|Equal0~11_combout\,
	combout => \clk_div_4hz|s_divCounter~3_combout\);

-- Location: FF_X69_Y70_N1
\clk_div_4hz|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(14));

-- Location: LCCOMB_X69_Y69_N0
\clk_div_4hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~30_combout\ = (\clk_div_4hz|s_divCounter\(15) & (!\clk_div_4hz|Add0~29\)) # (!\clk_div_4hz|s_divCounter\(15) & ((\clk_div_4hz|Add0~29\) # (GND)))
-- \clk_div_4hz|Add0~31\ = CARRY((!\clk_div_4hz|Add0~29\) # (!\clk_div_4hz|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(15),
	datad => VCC,
	cin => \clk_div_4hz|Add0~29\,
	combout => \clk_div_4hz|Add0~30_combout\,
	cout => \clk_div_4hz|Add0~31\);

-- Location: FF_X69_Y69_N1
\clk_div_4hz|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(15));

-- Location: LCCOMB_X69_Y69_N2
\clk_div_4hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~32_combout\ = (\clk_div_4hz|s_divCounter\(16) & (\clk_div_4hz|Add0~31\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(16) & (!\clk_div_4hz|Add0~31\ & VCC))
-- \clk_div_4hz|Add0~33\ = CARRY((\clk_div_4hz|s_divCounter\(16) & !\clk_div_4hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(16),
	datad => VCC,
	cin => \clk_div_4hz|Add0~31\,
	combout => \clk_div_4hz|Add0~32_combout\,
	cout => \clk_div_4hz|Add0~33\);

-- Location: LCCOMB_X68_Y69_N12
\clk_div_4hz|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~2_combout\ = (\clk_div_4hz|Add0~32_combout\ & !\clk_div_4hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|Add0~32_combout\,
	datac => \clk_div_4hz|Equal0~11_combout\,
	combout => \clk_div_4hz|s_divCounter~2_combout\);

-- Location: FF_X68_Y69_N13
\clk_div_4hz|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(16));

-- Location: FF_X69_Y69_N5
\clk_div_4hz|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(17));

-- Location: LCCOMB_X68_Y69_N2
\clk_div_4hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~7_combout\ = (!\clk_div_4hz|s_divCounter\(17) & (\clk_div_4hz|s_divCounter\(24) & (\clk_div_4hz|s_divCounter\(22) & !\clk_div_4hz|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(17),
	datab => \clk_div_4hz|s_divCounter\(24),
	datac => \clk_div_4hz|s_divCounter\(22),
	datad => \clk_div_4hz|s_divCounter\(23),
	combout => \clk_div_4hz|Equal0~7_combout\);

-- Location: LCCOMB_X68_Y69_N20
\clk_div_4hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~8_combout\ = (\clk_div_4hz|s_divCounter\(16) & (!\clk_div_4hz|s_divCounter\(15) & (\clk_div_4hz|s_divCounter\(14) & !\clk_div_4hz|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(16),
	datab => \clk_div_4hz|s_divCounter\(15),
	datac => \clk_div_4hz|s_divCounter\(14),
	datad => \clk_div_4hz|s_divCounter\(10),
	combout => \clk_div_4hz|Equal0~8_combout\);

-- Location: LCCOMB_X68_Y69_N26
\clk_div_4hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~9_combout\ = (\clk_div_4hz|Equal0~7_combout\ & (\clk_div_4hz|s_divCounter\(5) & \clk_div_4hz|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|Equal0~7_combout\,
	datac => \clk_div_4hz|s_divCounter\(5),
	datad => \clk_div_4hz|Equal0~8_combout\,
	combout => \clk_div_4hz|Equal0~9_combout\);

-- Location: LCCOMB_X68_Y69_N8
\clk_div_4hz|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|clkOut~1_combout\ = (!\clk_div_4hz|s_divCounter\(16) & (\clk_div_4hz|s_divCounter\(15) & (!\clk_div_4hz|s_divCounter\(14) & \clk_div_4hz|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(16),
	datab => \clk_div_4hz|s_divCounter\(15),
	datac => \clk_div_4hz|s_divCounter\(14),
	datad => \clk_div_4hz|s_divCounter\(10),
	combout => \clk_div_4hz|clkOut~1_combout\);

-- Location: LCCOMB_X68_Y69_N18
\clk_div_4hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|clkOut~0_combout\ = (\clk_div_4hz|s_divCounter\(17) & (!\clk_div_4hz|s_divCounter\(24) & (!\clk_div_4hz|s_divCounter\(22) & \clk_div_4hz|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(17),
	datab => \clk_div_4hz|s_divCounter\(24),
	datac => \clk_div_4hz|s_divCounter\(22),
	datad => \clk_div_4hz|s_divCounter\(23),
	combout => \clk_div_4hz|clkOut~0_combout\);

-- Location: LCCOMB_X68_Y69_N16
\clk_div_4hz|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|clkOut~2_combout\ = (!\clk_div_4hz|s_divCounter\(5) & (\clk_div_4hz|clkOut~1_combout\ & \clk_div_4hz|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(5),
	datac => \clk_div_4hz|clkOut~1_combout\,
	datad => \clk_div_4hz|clkOut~0_combout\,
	combout => \clk_div_4hz|clkOut~2_combout\);

-- Location: LCCOMB_X68_Y69_N28
\clk_div_4hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~6_combout\ = (\clk_div_4hz|s_divCounter\(0) & (\clk_div_4hz|s_divCounter\(1) & (\clk_div_4hz|Equal0~5_combout\ & \clk_div_4hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(0),
	datab => \clk_div_4hz|s_divCounter\(1),
	datac => \clk_div_4hz|Equal0~5_combout\,
	datad => \clk_div_4hz|Equal0~4_combout\,
	combout => \clk_div_4hz|Equal0~6_combout\);

-- Location: LCCOMB_X68_Y69_N22
\clk_div_4hz|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|clkOut~3_combout\ = (\clk_div_4hz|Equal0~6_combout\ & (!\clk_div_4hz|Equal0~9_combout\ & ((\clk_div_4hz|clkOut~2_combout\) # (\clk_div_4hz|clkOut~q\)))) # (!\clk_div_4hz|Equal0~6_combout\ & (((\clk_div_4hz|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|Equal0~9_combout\,
	datab => \clk_div_4hz|clkOut~2_combout\,
	datac => \clk_div_4hz|clkOut~q\,
	datad => \clk_div_4hz|Equal0~6_combout\,
	combout => \clk_div_4hz|clkOut~3_combout\);

-- Location: LCCOMB_X68_Y69_N6
\clk_div_4hz|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|clkOut~feeder_combout\ = \clk_div_4hz|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|clkOut~3_combout\,
	combout => \clk_div_4hz|clkOut~feeder_combout\);

-- Location: FF_X68_Y69_N7
\clk_div_4hz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|clkOut~q\);

-- Location: CLKCTRL_G10
\clk_div_4hz|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_4hz|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_4hz|clkOut~clkctrl_outclk\);

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

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X82_Y4_N20
\s_units_cnt|termCnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|termCnt~0_combout\ = (!\SW[0]~input_o\ & (!\s_units_cnt|s_value\(0) & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \s_units_cnt|s_value\(0),
	datad => \KEY[1]~input_o\,
	combout => \s_units_cnt|termCnt~0_combout\);

-- Location: LCCOMB_X83_Y4_N8
\clk_enb_gen|s_counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_enb_gen|s_counter[0]~1_combout\ = !\clk_enb_gen|s_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_enb_gen|s_counter\(0),
	combout => \clk_enb_gen|s_counter[0]~1_combout\);

-- Location: FF_X83_Y4_N9
\clk_enb_gen|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \clk_enb_gen|s_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_enb_gen|s_counter\(0));

-- Location: LCCOMB_X83_Y4_N6
\clk_enb_gen|s_counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_enb_gen|s_counter[1]~0_combout\ = \clk_enb_gen|s_counter\(0) $ (\clk_enb_gen|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_enb_gen|s_counter\(0),
	datac => \clk_enb_gen|s_counter\(1),
	combout => \clk_enb_gen|s_counter[1]~0_combout\);

-- Location: FF_X83_Y4_N7
\clk_enb_gen|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \clk_enb_gen|s_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_enb_gen|s_counter\(1));

-- Location: LCCOMB_X83_Y4_N10
\s_units_cnt|s_value[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|s_value[3]~2_combout\ = (\SW[0]~input_o\) # (((!\clk_enb_gen|s_counter\(0) & !\clk_enb_gen|s_counter\(1))) # (!\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \clk_enb_gen|s_counter\(0),
	datac => \KEY[1]~input_o\,
	datad => \clk_enb_gen|s_counter\(1),
	combout => \s_units_cnt|s_value[3]~2_combout\);

-- Location: FF_X82_Y4_N21
\s_units_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_units_cnt|termCnt~0_combout\,
	ena => \s_units_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_units_cnt|s_value\(0));

-- Location: LCCOMB_X82_Y4_N28
\s_units_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|Add0~0_combout\ = (\s_units_cnt|s_value\(1) & \s_units_cnt|s_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_units_cnt|s_value\(1),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_cnt|Add0~0_combout\);

-- Location: LCCOMB_X82_Y4_N12
\s_units_cnt|s_value~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|s_value~6_combout\ = (\s_units_cnt|s_value[3]~3_combout\ & (\s_units_cnt|s_value\(2) $ (((\s_units_cnt|s_value\(1) & \s_units_cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value[3]~3_combout\,
	datab => \s_units_cnt|s_value\(1),
	datac => \s_units_cnt|s_value\(2),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_cnt|s_value~6_combout\);

-- Location: FF_X82_Y4_N13
\s_units_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_units_cnt|s_value~6_combout\,
	ena => \s_units_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_units_cnt|s_value\(2));

-- Location: LCCOMB_X82_Y4_N18
\s_units_cnt|s_value~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|s_value~5_combout\ = (\s_units_cnt|s_value[3]~3_combout\ & (\s_units_cnt|s_value\(3) $ (((\s_units_cnt|Add0~0_combout\ & \s_units_cnt|s_value\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value[3]~3_combout\,
	datab => \s_units_cnt|Add0~0_combout\,
	datac => \s_units_cnt|s_value\(3),
	datad => \s_units_cnt|s_value\(2),
	combout => \s_units_cnt|s_value~5_combout\);

-- Location: FF_X82_Y4_N19
\s_units_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_units_cnt|s_value~5_combout\,
	ena => \s_units_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_units_cnt|s_value\(3));

-- Location: LCCOMB_X82_Y4_N4
\s_units_cnt|termCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|termCnt~1_combout\ = (\s_units_cnt|s_value\(3) & (!\s_units_cnt|s_value\(1) & !\s_units_cnt|s_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_units_cnt|s_value\(3),
	datac => \s_units_cnt|s_value\(1),
	datad => \s_units_cnt|s_value\(2),
	combout => \s_units_cnt|termCnt~1_combout\);

-- Location: LCCOMB_X82_Y4_N26
\s_units_cnt|s_value[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|s_value[3]~3_combout\ = (!\SW[0]~input_o\ & (\KEY[1]~input_o\ & ((!\s_units_cnt|termCnt~1_combout\) # (!\s_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \s_units_cnt|s_value\(0),
	datac => \s_units_cnt|termCnt~1_combout\,
	datad => \KEY[1]~input_o\,
	combout => \s_units_cnt|s_value[3]~3_combout\);

-- Location: LCCOMB_X82_Y4_N14
\s_units_cnt|s_value~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|s_value~4_combout\ = (\s_units_cnt|s_value[3]~3_combout\ & (\s_units_cnt|s_value\(1) $ (\s_units_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value[3]~3_combout\,
	datac => \s_units_cnt|s_value\(1),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_cnt|s_value~4_combout\);

-- Location: FF_X82_Y4_N15
\s_units_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_units_cnt|s_value~4_combout\,
	ena => \s_units_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_units_cnt|s_value\(1));

-- Location: LCCOMB_X83_Y8_N0
\s_units_decod|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux6~0_combout\ = (\s_units_cnt|s_value\(3) & (\s_units_cnt|s_value\(0) & (\s_units_cnt|s_value\(1) $ (\s_units_cnt|s_value\(2))))) # (!\s_units_cnt|s_value\(3) & (!\s_units_cnt|s_value\(1) & (\s_units_cnt|s_value\(2) $ 
-- (\s_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(1),
	datab => \s_units_cnt|s_value\(3),
	datac => \s_units_cnt|s_value\(2),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux6~0_combout\);

-- Location: LCCOMB_X83_Y8_N30
\s_units_decod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux5~0_combout\ = (\s_units_cnt|s_value\(1) & ((\s_units_cnt|s_value\(0) & (\s_units_cnt|s_value\(3))) # (!\s_units_cnt|s_value\(0) & ((\s_units_cnt|s_value\(2)))))) # (!\s_units_cnt|s_value\(1) & (\s_units_cnt|s_value\(2) & 
-- (\s_units_cnt|s_value\(3) $ (\s_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(1),
	datab => \s_units_cnt|s_value\(3),
	datac => \s_units_cnt|s_value\(2),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux5~0_combout\);

-- Location: LCCOMB_X83_Y8_N16
\s_units_decod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux4~0_combout\ = (\s_units_cnt|s_value\(3) & (\s_units_cnt|s_value\(2) & ((\s_units_cnt|s_value\(1)) # (!\s_units_cnt|s_value\(0))))) # (!\s_units_cnt|s_value\(3) & (\s_units_cnt|s_value\(1) & (!\s_units_cnt|s_value\(2) & 
-- !\s_units_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(1),
	datab => \s_units_cnt|s_value\(3),
	datac => \s_units_cnt|s_value\(2),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y8_N6
\s_units_decod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux3~0_combout\ = (\s_units_cnt|s_value\(1) & ((\s_units_cnt|s_value\(2) & ((\s_units_cnt|s_value\(0)))) # (!\s_units_cnt|s_value\(2) & (\s_units_cnt|s_value\(3) & !\s_units_cnt|s_value\(0))))) # (!\s_units_cnt|s_value\(1) & 
-- (!\s_units_cnt|s_value\(3) & (\s_units_cnt|s_value\(2) $ (\s_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(1),
	datab => \s_units_cnt|s_value\(3),
	datac => \s_units_cnt|s_value\(2),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y8_N28
\s_units_decod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux2~0_combout\ = (\s_units_cnt|s_value\(1) & (!\s_units_cnt|s_value\(3) & ((\s_units_cnt|s_value\(0))))) # (!\s_units_cnt|s_value\(1) & ((\s_units_cnt|s_value\(2) & (!\s_units_cnt|s_value\(3))) # (!\s_units_cnt|s_value\(2) & 
-- ((\s_units_cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(1),
	datab => \s_units_cnt|s_value\(3),
	datac => \s_units_cnt|s_value\(2),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y8_N10
\s_units_decod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux1~0_combout\ = (\s_units_cnt|s_value\(1) & (!\s_units_cnt|s_value\(3) & ((\s_units_cnt|s_value\(0)) # (!\s_units_cnt|s_value\(2))))) # (!\s_units_cnt|s_value\(1) & (\s_units_cnt|s_value\(0) & (\s_units_cnt|s_value\(3) $ 
-- (!\s_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(1),
	datab => \s_units_cnt|s_value\(3),
	datac => \s_units_cnt|s_value\(2),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y8_N12
\s_units_decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux0~0_combout\ = (\s_units_cnt|s_value\(0) & ((\s_units_cnt|s_value\(3)) # (\s_units_cnt|s_value\(1) $ (\s_units_cnt|s_value\(2))))) # (!\s_units_cnt|s_value\(0) & ((\s_units_cnt|s_value\(1)) # (\s_units_cnt|s_value\(3) $ 
-- (\s_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(1),
	datab => \s_units_cnt|s_value\(3),
	datac => \s_units_cnt|s_value\(2),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y4_N16
\s_tens_cnt|termCnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|termCnt~0_combout\ = (!\SW[0]~input_o\ & (!\s_tens_cnt|s_value\(0) & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \s_tens_cnt|s_value\(0),
	datad => \KEY[1]~input_o\,
	combout => \s_tens_cnt|termCnt~0_combout\);

-- Location: LCCOMB_X82_Y4_N8
\s_units_cnt|termCnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|termCnt~2_combout\ = (!\SW[0]~input_o\ & (!\s_units_cnt|s_value\(0) & (\s_units_cnt|termCnt~1_combout\ & \KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \s_units_cnt|s_value\(0),
	datac => \s_units_cnt|termCnt~1_combout\,
	datad => \KEY[1]~input_o\,
	combout => \s_units_cnt|termCnt~2_combout\);

-- Location: FF_X82_Y4_N9
\s_units_cnt|termCnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_units_cnt|termCnt~2_combout\,
	ena => \s_units_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_units_cnt|termCnt~q\);

-- Location: LCCOMB_X83_Y4_N4
\s_tens_cnt|s_value[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|s_value[3]~2_combout\ = (!\SW[0]~input_o\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \KEY[1]~input_o\,
	combout => \s_tens_cnt|s_value[3]~2_combout\);

-- Location: LCCOMB_X83_Y4_N2
\s_tens_cnt|s_value[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|s_value[3]~3_combout\ = ((\s_units_cnt|termCnt~q\ & (!\clk_enb_gen|s_counter\(0) & !\clk_enb_gen|s_counter\(1)))) # (!\s_tens_cnt|s_value[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|termCnt~q\,
	datab => \clk_enb_gen|s_counter\(0),
	datac => \s_tens_cnt|s_value[3]~2_combout\,
	datad => \clk_enb_gen|s_counter\(1),
	combout => \s_tens_cnt|s_value[3]~3_combout\);

-- Location: FF_X87_Y4_N17
\s_tens_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_tens_cnt|termCnt~0_combout\,
	ena => \s_tens_cnt|s_value[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tens_cnt|s_value\(0));

-- Location: LCCOMB_X87_Y4_N6
\s_tens_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|Add0~0_combout\ = (\s_tens_cnt|s_value\(0) & \s_tens_cnt|s_value\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tens_cnt|s_value\(0),
	datad => \s_tens_cnt|s_value\(1),
	combout => \s_tens_cnt|Add0~0_combout\);

-- Location: LCCOMB_X87_Y4_N20
\s_tens_cnt|s_value~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|s_value~7_combout\ = (\s_tens_cnt|s_value[3]~4_combout\ & (\s_tens_cnt|s_value\(2) $ (((\s_tens_cnt|s_value\(0) & \s_tens_cnt|s_value\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(0),
	datab => \s_tens_cnt|s_value\(1),
	datac => \s_tens_cnt|s_value\(2),
	datad => \s_tens_cnt|s_value[3]~4_combout\,
	combout => \s_tens_cnt|s_value~7_combout\);

-- Location: FF_X87_Y4_N21
\s_tens_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_tens_cnt|s_value~7_combout\,
	ena => \s_tens_cnt|s_value[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tens_cnt|s_value\(2));

-- Location: LCCOMB_X87_Y4_N22
\s_tens_cnt|s_value~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|s_value~6_combout\ = (\s_tens_cnt|s_value[3]~4_combout\ & (\s_tens_cnt|s_value\(3) $ (((\s_tens_cnt|Add0~0_combout\ & \s_tens_cnt|s_value\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|Add0~0_combout\,
	datab => \s_tens_cnt|s_value\(2),
	datac => \s_tens_cnt|s_value\(3),
	datad => \s_tens_cnt|s_value[3]~4_combout\,
	combout => \s_tens_cnt|s_value~6_combout\);

-- Location: FF_X87_Y4_N23
\s_tens_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_tens_cnt|s_value~6_combout\,
	ena => \s_tens_cnt|s_value[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tens_cnt|s_value\(3));

-- Location: LCCOMB_X87_Y4_N10
\s_tens_cnt|termCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|termCnt~1_combout\ = (!\s_tens_cnt|s_value\(1) & (!\s_tens_cnt|s_value\(3) & \s_tens_cnt|s_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tens_cnt|s_value\(1),
	datac => \s_tens_cnt|s_value\(3),
	datad => \s_tens_cnt|s_value\(2),
	combout => \s_tens_cnt|termCnt~1_combout\);

-- Location: LCCOMB_X87_Y4_N28
\s_tens_cnt|s_value[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|s_value[3]~4_combout\ = (!\SW[0]~input_o\ & (\KEY[1]~input_o\ & ((!\s_tens_cnt|s_value\(0)) # (!\s_tens_cnt|termCnt~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|termCnt~1_combout\,
	datab => \s_tens_cnt|s_value\(0),
	datac => \SW[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \s_tens_cnt|s_value[3]~4_combout\);

-- Location: LCCOMB_X87_Y4_N2
\s_tens_cnt|s_value~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|s_value~5_combout\ = (\s_tens_cnt|s_value[3]~4_combout\ & (\s_tens_cnt|s_value\(0) $ (\s_tens_cnt|s_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tens_cnt|s_value\(0),
	datac => \s_tens_cnt|s_value\(1),
	datad => \s_tens_cnt|s_value[3]~4_combout\,
	combout => \s_tens_cnt|s_value~5_combout\);

-- Location: FF_X87_Y4_N3
\s_tens_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_tens_cnt|s_value~5_combout\,
	ena => \s_tens_cnt|s_value[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tens_cnt|s_value\(1));

-- Location: LCCOMB_X87_Y4_N0
\s_tens_decod|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux6~0_combout\ = (\s_tens_cnt|s_value\(3) & (\s_tens_cnt|s_value\(0) & (\s_tens_cnt|s_value\(1) $ (\s_tens_cnt|s_value\(2))))) # (!\s_tens_cnt|s_value\(3) & (!\s_tens_cnt|s_value\(1) & (\s_tens_cnt|s_value\(0) $ (\s_tens_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(0),
	datab => \s_tens_cnt|s_value\(1),
	datac => \s_tens_cnt|s_value\(3),
	datad => \s_tens_cnt|s_value\(2),
	combout => \s_tens_decod|Mux6~0_combout\);

-- Location: LCCOMB_X87_Y4_N26
\s_tens_decod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux5~0_combout\ = (\s_tens_cnt|s_value\(1) & ((\s_tens_cnt|s_value\(0) & (\s_tens_cnt|s_value\(3))) # (!\s_tens_cnt|s_value\(0) & ((\s_tens_cnt|s_value\(2)))))) # (!\s_tens_cnt|s_value\(1) & (\s_tens_cnt|s_value\(2) & 
-- (\s_tens_cnt|s_value\(0) $ (\s_tens_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(0),
	datab => \s_tens_cnt|s_value\(1),
	datac => \s_tens_cnt|s_value\(3),
	datad => \s_tens_cnt|s_value\(2),
	combout => \s_tens_decod|Mux5~0_combout\);

-- Location: LCCOMB_X87_Y4_N24
\s_tens_decod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux4~0_combout\ = (\s_tens_cnt|s_value\(3) & (\s_tens_cnt|s_value\(2) & ((\s_tens_cnt|s_value\(1)) # (!\s_tens_cnt|s_value\(0))))) # (!\s_tens_cnt|s_value\(3) & (!\s_tens_cnt|s_value\(0) & (\s_tens_cnt|s_value\(1) & 
-- !\s_tens_cnt|s_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(0),
	datab => \s_tens_cnt|s_value\(1),
	datac => \s_tens_cnt|s_value\(3),
	datad => \s_tens_cnt|s_value\(2),
	combout => \s_tens_decod|Mux4~0_combout\);

-- Location: LCCOMB_X87_Y4_N18
\s_tens_decod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux3~0_combout\ = (\s_tens_cnt|s_value\(1) & ((\s_tens_cnt|s_value\(0) & ((\s_tens_cnt|s_value\(2)))) # (!\s_tens_cnt|s_value\(0) & (\s_tens_cnt|s_value\(3) & !\s_tens_cnt|s_value\(2))))) # (!\s_tens_cnt|s_value\(1) & 
-- (!\s_tens_cnt|s_value\(3) & (\s_tens_cnt|s_value\(0) $ (\s_tens_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(0),
	datab => \s_tens_cnt|s_value\(1),
	datac => \s_tens_cnt|s_value\(3),
	datad => \s_tens_cnt|s_value\(2),
	combout => \s_tens_decod|Mux3~0_combout\);

-- Location: LCCOMB_X87_Y4_N4
\s_tens_decod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux2~0_combout\ = (\s_tens_cnt|s_value\(1) & (\s_tens_cnt|s_value\(0) & (!\s_tens_cnt|s_value\(3)))) # (!\s_tens_cnt|s_value\(1) & ((\s_tens_cnt|s_value\(2) & ((!\s_tens_cnt|s_value\(3)))) # (!\s_tens_cnt|s_value\(2) & 
-- (\s_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(0),
	datab => \s_tens_cnt|s_value\(1),
	datac => \s_tens_cnt|s_value\(3),
	datad => \s_tens_cnt|s_value\(2),
	combout => \s_tens_decod|Mux2~0_combout\);

-- Location: LCCOMB_X87_Y4_N30
\s_tens_decod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux1~0_combout\ = (\s_tens_cnt|s_value\(0) & (\s_tens_cnt|s_value\(3) $ (((\s_tens_cnt|s_value\(1)) # (!\s_tens_cnt|s_value\(2)))))) # (!\s_tens_cnt|s_value\(0) & (\s_tens_cnt|s_value\(1) & (!\s_tens_cnt|s_value\(3) & 
-- !\s_tens_cnt|s_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(0),
	datab => \s_tens_cnt|s_value\(1),
	datac => \s_tens_cnt|s_value\(3),
	datad => \s_tens_cnt|s_value\(2),
	combout => \s_tens_decod|Mux1~0_combout\);

-- Location: LCCOMB_X87_Y4_N8
\s_tens_decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux0~0_combout\ = (\s_tens_cnt|s_value\(0) & ((\s_tens_cnt|s_value\(3)) # (\s_tens_cnt|s_value\(1) $ (\s_tens_cnt|s_value\(2))))) # (!\s_tens_cnt|s_value\(0) & ((\s_tens_cnt|s_value\(1)) # (\s_tens_cnt|s_value\(3) $ 
-- (\s_tens_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(0),
	datab => \s_tens_cnt|s_value\(1),
	datac => \s_tens_cnt|s_value\(3),
	datad => \s_tens_cnt|s_value\(2),
	combout => \s_tens_decod|Mux0~0_combout\);

-- Location: LCCOMB_X81_Y4_N24
\m_units_cnt|s_value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|s_value~0_combout\ = (!\m_units_cnt|s_value\(0) & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_units_cnt|s_value\(0),
	datad => \SW[0]~input_o\,
	combout => \m_units_cnt|s_value~0_combout\);

-- Location: LCCOMB_X83_Y4_N20
\clk_enb_gen|clkEnable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_enb_gen|clkEnable~0_combout\ = (\KEY[1]~input_o\ & ((\clk_enb_gen|s_counter\(0)) # (\clk_enb_gen|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \clk_enb_gen|s_counter\(0),
	datad => \clk_enb_gen|s_counter\(1),
	combout => \clk_enb_gen|clkEnable~0_combout\);

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

-- Location: LCCOMB_X87_Y4_N12
\s_tens_cnt|termCnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|termCnt~2_combout\ = (\s_tens_cnt|termCnt~1_combout\ & (!\s_tens_cnt|s_value\(0) & (!\SW[0]~input_o\ & \KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|termCnt~1_combout\,
	datab => \s_tens_cnt|s_value\(0),
	datac => \SW[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \s_tens_cnt|termCnt~2_combout\);

-- Location: FF_X87_Y4_N13
\s_tens_cnt|termCnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_tens_cnt|termCnt~2_combout\,
	ena => \s_tens_cnt|s_value[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tens_cnt|termCnt~q\);

-- Location: LCCOMB_X82_Y4_N2
\s_mUnitsEnb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mUnitsEnb~0_combout\ = (\KEY[1]~input_o\ & (((\s_tens_cnt|termCnt~q\ & \s_units_cnt|termCnt~q\)))) # (!\KEY[1]~input_o\ & (!\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \s_tens_cnt|termCnt~q\,
	datad => \s_units_cnt|termCnt~q\,
	combout => \s_mUnitsEnb~0_combout\);

-- Location: LCCOMB_X82_Y4_N16
\m_units_cnt|s_value[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|s_value[3]~1_combout\ = (\SW[0]~input_o\) # ((!\clk_enb_gen|clkEnable~0_combout\ & \s_mUnitsEnb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \clk_enb_gen|clkEnable~0_combout\,
	datad => \s_mUnitsEnb~0_combout\,
	combout => \m_units_cnt|s_value[3]~1_combout\);

-- Location: FF_X81_Y4_N25
\m_units_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_units_cnt|s_value~0_combout\,
	ena => \m_units_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_units_cnt|s_value\(0));

-- Location: LCCOMB_X81_Y4_N10
\m_units_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|Add0~0_combout\ = \m_units_cnt|s_value\(2) $ (((\m_units_cnt|s_value\(1) & \m_units_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_units_cnt|s_value\(2),
	datac => \m_units_cnt|s_value\(1),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_cnt|Add0~0_combout\);

-- Location: LCCOMB_X81_Y4_N16
\m_units_cnt|s_value~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|s_value~3_combout\ = (\m_units_cnt|Add0~0_combout\ & (!\SW[0]~input_o\ & ((!\m_units_cnt|termCnt~0_combout\) # (!\m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|Add0~0_combout\,
	datab => \m_units_cnt|s_value\(0),
	datac => \m_units_cnt|termCnt~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \m_units_cnt|s_value~3_combout\);

-- Location: FF_X81_Y4_N17
\m_units_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_units_cnt|s_value~3_combout\,
	ena => \m_units_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_units_cnt|s_value\(2));

-- Location: LCCOMB_X81_Y4_N8
\m_units_cnt|termCnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|termCnt~0_combout\ = (!\m_units_cnt|s_value\(2) & (!\m_units_cnt|s_value\(1) & \m_units_cnt|s_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_units_cnt|s_value\(2),
	datac => \m_units_cnt|s_value\(1),
	datad => \m_units_cnt|s_value\(3),
	combout => \m_units_cnt|termCnt~0_combout\);

-- Location: LCCOMB_X81_Y4_N18
\m_units_cnt|s_value~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|s_value~2_combout\ = (!\SW[0]~input_o\ & ((\m_units_cnt|s_value\(1) & ((!\m_units_cnt|s_value\(0)))) # (!\m_units_cnt|s_value\(1) & (!\m_units_cnt|termCnt~0_combout\ & \m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \m_units_cnt|termCnt~0_combout\,
	datac => \m_units_cnt|s_value\(1),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_cnt|s_value~2_combout\);

-- Location: FF_X81_Y4_N19
\m_units_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_units_cnt|s_value~2_combout\,
	ena => \m_units_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_units_cnt|s_value\(1));

-- Location: LCCOMB_X81_Y4_N12
\m_units_cnt|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|Add0~1_combout\ = \m_units_cnt|s_value\(3) $ (((\m_units_cnt|s_value\(0) & (\m_units_cnt|s_value\(1) & \m_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(0),
	datab => \m_units_cnt|s_value\(3),
	datac => \m_units_cnt|s_value\(1),
	datad => \m_units_cnt|s_value\(2),
	combout => \m_units_cnt|Add0~1_combout\);

-- Location: LCCOMB_X81_Y4_N2
\m_units_cnt|s_value~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|s_value~4_combout\ = (\m_units_cnt|Add0~1_combout\ & (!\SW[0]~input_o\ & ((!\m_units_cnt|termCnt~0_combout\) # (!\m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|Add0~1_combout\,
	datab => \m_units_cnt|s_value\(0),
	datac => \m_units_cnt|termCnt~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \m_units_cnt|s_value~4_combout\);

-- Location: FF_X81_Y4_N3
\m_units_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_units_cnt|s_value~4_combout\,
	ena => \m_units_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_units_cnt|s_value\(3));

-- Location: LCCOMB_X81_Y4_N0
\m_units_decod|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux6~0_combout\ = (\m_units_cnt|s_value\(3) & (\m_units_cnt|s_value\(0) & (\m_units_cnt|s_value\(1) $ (\m_units_cnt|s_value\(2))))) # (!\m_units_cnt|s_value\(3) & (!\m_units_cnt|s_value\(1) & (\m_units_cnt|s_value\(0) $ 
-- (\m_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(0),
	datab => \m_units_cnt|s_value\(3),
	datac => \m_units_cnt|s_value\(1),
	datad => \m_units_cnt|s_value\(2),
	combout => \m_units_decod|Mux6~0_combout\);

-- Location: LCCOMB_X80_Y4_N4
\m_units_decod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux5~0_combout\ = (\m_units_cnt|s_value\(1) & ((\m_units_cnt|s_value\(0) & ((\m_units_cnt|s_value\(3)))) # (!\m_units_cnt|s_value\(0) & (\m_units_cnt|s_value\(2))))) # (!\m_units_cnt|s_value\(1) & (\m_units_cnt|s_value\(2) & 
-- (\m_units_cnt|s_value\(3) $ (\m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(2),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(3),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y4_N22
\m_units_decod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux4~0_combout\ = (\m_units_cnt|s_value\(2) & (\m_units_cnt|s_value\(3) & ((\m_units_cnt|s_value\(1)) # (!\m_units_cnt|s_value\(0))))) # (!\m_units_cnt|s_value\(2) & (\m_units_cnt|s_value\(1) & (!\m_units_cnt|s_value\(3) & 
-- !\m_units_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(2),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(3),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y4_N28
\m_units_decod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux3~0_combout\ = (\m_units_cnt|s_value\(1) & ((\m_units_cnt|s_value\(2) & ((\m_units_cnt|s_value\(0)))) # (!\m_units_cnt|s_value\(2) & (\m_units_cnt|s_value\(3) & !\m_units_cnt|s_value\(0))))) # (!\m_units_cnt|s_value\(1) & 
-- (!\m_units_cnt|s_value\(3) & (\m_units_cnt|s_value\(2) $ (\m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(2),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(3),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y4_N26
\m_units_decod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux2~0_combout\ = (\m_units_cnt|s_value\(1) & (((!\m_units_cnt|s_value\(3) & \m_units_cnt|s_value\(0))))) # (!\m_units_cnt|s_value\(1) & ((\m_units_cnt|s_value\(2) & (!\m_units_cnt|s_value\(3))) # (!\m_units_cnt|s_value\(2) & 
-- ((\m_units_cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(2),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(3),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y4_N20
\m_units_decod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux1~0_combout\ = (\m_units_cnt|s_value\(2) & (\m_units_cnt|s_value\(0) & (\m_units_cnt|s_value\(1) $ (\m_units_cnt|s_value\(3))))) # (!\m_units_cnt|s_value\(2) & (!\m_units_cnt|s_value\(3) & ((\m_units_cnt|s_value\(1)) # 
-- (\m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(2),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(3),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y4_N30
\m_units_decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux0~0_combout\ = (\m_units_cnt|s_value\(0) & ((\m_units_cnt|s_value\(3)) # (\m_units_cnt|s_value\(2) $ (\m_units_cnt|s_value\(1))))) # (!\m_units_cnt|s_value\(0) & ((\m_units_cnt|s_value\(1)) # (\m_units_cnt|s_value\(2) $ 
-- (\m_units_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(2),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(3),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux0~0_combout\);

-- Location: LCCOMB_X81_Y4_N26
\m_tens_cnt|s_value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|s_value~0_combout\ = (!\SW[0]~input_o\ & !\m_tens_cnt|s_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \m_tens_cnt|s_value\(0),
	combout => \m_tens_cnt|s_value~0_combout\);

-- Location: LCCOMB_X81_Y4_N20
\m_units_cnt|termCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|termCnt~1_combout\ = (!\m_units_cnt|s_value\(0) & (\m_units_cnt|termCnt~0_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_units_cnt|s_value\(0),
	datac => \m_units_cnt|termCnt~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \m_units_cnt|termCnt~1_combout\);

-- Location: FF_X81_Y4_N21
\m_units_cnt|termCnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_units_cnt|termCnt~1_combout\,
	ena => \m_units_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_units_cnt|termCnt~q\);

-- Location: LCCOMB_X82_Y4_N22
\m_tens_cnt|s_value[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|s_value[3]~1_combout\ = (\SW[0]~input_o\) # ((\m_units_cnt|termCnt~q\ & (!\clk_enb_gen|clkEnable~0_combout\ & \s_mUnitsEnb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \m_units_cnt|termCnt~q\,
	datac => \clk_enb_gen|clkEnable~0_combout\,
	datad => \s_mUnitsEnb~0_combout\,
	combout => \m_tens_cnt|s_value[3]~1_combout\);

-- Location: FF_X82_Y4_N29
\m_tens_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	asdata => \m_tens_cnt|s_value~0_combout\,
	sload => VCC,
	ena => \m_tens_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_tens_cnt|s_value\(0));

-- Location: LCCOMB_X81_Y4_N4
\m_tens_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|Add0~0_combout\ = \m_tens_cnt|s_value\(2) $ (((\m_tens_cnt|s_value\(1) & \m_tens_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_tens_cnt|s_value\(2),
	datac => \m_tens_cnt|s_value\(1),
	datad => \m_tens_cnt|s_value\(0),
	combout => \m_tens_cnt|Add0~0_combout\);

-- Location: LCCOMB_X81_Y4_N28
\m_tens_cnt|s_value~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|s_value~3_combout\ = (\m_tens_cnt|Add0~0_combout\ & (!\SW[0]~input_o\ & ((!\m_tens_cnt|s_value\(0)) # (!\m_tens_cnt|termCnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|termCnt~0_combout\,
	datab => \m_tens_cnt|s_value\(0),
	datac => \m_tens_cnt|Add0~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \m_tens_cnt|s_value~3_combout\);

-- Location: FF_X81_Y4_N29
\m_tens_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_tens_cnt|s_value~3_combout\,
	ena => \m_tens_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_tens_cnt|s_value\(2));

-- Location: LCCOMB_X81_Y4_N14
\m_tens_cnt|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|Add0~1_combout\ = \m_tens_cnt|s_value\(3) $ (((\m_tens_cnt|s_value\(1) & (\m_tens_cnt|s_value\(2) & \m_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(1),
	datab => \m_tens_cnt|s_value\(2),
	datac => \m_tens_cnt|s_value\(3),
	datad => \m_tens_cnt|s_value\(0),
	combout => \m_tens_cnt|Add0~1_combout\);

-- Location: LCCOMB_X82_Y4_N30
\m_tens_cnt|s_value~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|s_value~4_combout\ = (!\SW[0]~input_o\ & (\m_tens_cnt|Add0~1_combout\ & ((!\m_tens_cnt|s_value\(0)) # (!\m_tens_cnt|termCnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \m_tens_cnt|termCnt~0_combout\,
	datac => \m_tens_cnt|s_value\(0),
	datad => \m_tens_cnt|Add0~1_combout\,
	combout => \m_tens_cnt|s_value~4_combout\);

-- Location: FF_X82_Y4_N31
\m_tens_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_tens_cnt|s_value~4_combout\,
	ena => \m_tens_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_tens_cnt|s_value\(3));

-- Location: LCCOMB_X81_Y4_N22
\m_tens_cnt|termCnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|termCnt~0_combout\ = (!\m_tens_cnt|s_value\(1) & (\m_tens_cnt|s_value\(2) & !\m_tens_cnt|s_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(1),
	datab => \m_tens_cnt|s_value\(2),
	datac => \m_tens_cnt|s_value\(3),
	combout => \m_tens_cnt|termCnt~0_combout\);

-- Location: LCCOMB_X81_Y4_N30
\m_tens_cnt|s_value~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|s_value~2_combout\ = (!\SW[0]~input_o\ & ((\m_tens_cnt|s_value\(0) & (!\m_tens_cnt|termCnt~0_combout\ & !\m_tens_cnt|s_value\(1))) # (!\m_tens_cnt|s_value\(0) & ((\m_tens_cnt|s_value\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|termCnt~0_combout\,
	datab => \m_tens_cnt|s_value\(0),
	datac => \m_tens_cnt|s_value\(1),
	datad => \SW[0]~input_o\,
	combout => \m_tens_cnt|s_value~2_combout\);

-- Location: FF_X81_Y4_N31
\m_tens_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_tens_cnt|s_value~2_combout\,
	ena => \m_tens_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_tens_cnt|s_value\(1));

-- Location: LCCOMB_X81_Y4_N6
\m_tens_decod|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux6~0_combout\ = (\m_tens_cnt|s_value\(2) & (!\m_tens_cnt|s_value\(1) & (\m_tens_cnt|s_value\(3) $ (!\m_tens_cnt|s_value\(0))))) # (!\m_tens_cnt|s_value\(2) & (\m_tens_cnt|s_value\(0) & (\m_tens_cnt|s_value\(1) $ 
-- (!\m_tens_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(1),
	datab => \m_tens_cnt|s_value\(2),
	datac => \m_tens_cnt|s_value\(3),
	datad => \m_tens_cnt|s_value\(0),
	combout => \m_tens_decod|Mux6~0_combout\);

-- Location: LCCOMB_X80_Y4_N24
\m_tens_decod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux5~0_combout\ = (\m_tens_cnt|s_value\(1) & ((\m_tens_cnt|s_value\(0) & ((\m_tens_cnt|s_value\(3)))) # (!\m_tens_cnt|s_value\(0) & (\m_tens_cnt|s_value\(2))))) # (!\m_tens_cnt|s_value\(1) & (\m_tens_cnt|s_value\(2) & 
-- (\m_tens_cnt|s_value\(0) $ (\m_tens_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(1),
	datab => \m_tens_cnt|s_value\(2),
	datac => \m_tens_cnt|s_value\(0),
	datad => \m_tens_cnt|s_value\(3),
	combout => \m_tens_decod|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y4_N6
\m_tens_decod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux4~0_combout\ = (\m_tens_cnt|s_value\(2) & (\m_tens_cnt|s_value\(3) & ((\m_tens_cnt|s_value\(1)) # (!\m_tens_cnt|s_value\(0))))) # (!\m_tens_cnt|s_value\(2) & (\m_tens_cnt|s_value\(1) & (!\m_tens_cnt|s_value\(0) & 
-- !\m_tens_cnt|s_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(1),
	datab => \m_tens_cnt|s_value\(2),
	datac => \m_tens_cnt|s_value\(0),
	datad => \m_tens_cnt|s_value\(3),
	combout => \m_tens_decod|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y4_N12
\m_tens_decod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux3~0_combout\ = (\m_tens_cnt|s_value\(1) & ((\m_tens_cnt|s_value\(2) & (\m_tens_cnt|s_value\(0))) # (!\m_tens_cnt|s_value\(2) & (!\m_tens_cnt|s_value\(0) & \m_tens_cnt|s_value\(3))))) # (!\m_tens_cnt|s_value\(1) & (!\m_tens_cnt|s_value\(3) 
-- & (\m_tens_cnt|s_value\(2) $ (\m_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(1),
	datab => \m_tens_cnt|s_value\(2),
	datac => \m_tens_cnt|s_value\(0),
	datad => \m_tens_cnt|s_value\(3),
	combout => \m_tens_decod|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y4_N14
\m_tens_decod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux2~0_combout\ = (\m_tens_cnt|s_value\(1) & (((\m_tens_cnt|s_value\(0) & !\m_tens_cnt|s_value\(3))))) # (!\m_tens_cnt|s_value\(1) & ((\m_tens_cnt|s_value\(2) & ((!\m_tens_cnt|s_value\(3)))) # (!\m_tens_cnt|s_value\(2) & 
-- (\m_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(1),
	datab => \m_tens_cnt|s_value\(2),
	datac => \m_tens_cnt|s_value\(0),
	datad => \m_tens_cnt|s_value\(3),
	combout => \m_tens_decod|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y4_N16
\m_tens_decod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux1~0_combout\ = (\m_tens_cnt|s_value\(1) & (!\m_tens_cnt|s_value\(3) & ((\m_tens_cnt|s_value\(0)) # (!\m_tens_cnt|s_value\(2))))) # (!\m_tens_cnt|s_value\(1) & (\m_tens_cnt|s_value\(0) & (\m_tens_cnt|s_value\(2) $ 
-- (!\m_tens_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(1),
	datab => \m_tens_cnt|s_value\(2),
	datac => \m_tens_cnt|s_value\(0),
	datad => \m_tens_cnt|s_value\(3),
	combout => \m_tens_decod|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y4_N18
\m_tens_decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux0~0_combout\ = (\m_tens_cnt|s_value\(0) & ((\m_tens_cnt|s_value\(3)) # (\m_tens_cnt|s_value\(1) $ (\m_tens_cnt|s_value\(2))))) # (!\m_tens_cnt|s_value\(0) & ((\m_tens_cnt|s_value\(1)) # (\m_tens_cnt|s_value\(2) $ 
-- (\m_tens_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(1),
	datab => \m_tens_cnt|s_value\(2),
	datac => \m_tens_cnt|s_value\(0),
	datad => \m_tens_cnt|s_value\(3),
	combout => \m_tens_decod|Mux0~0_combout\);

-- Location: LCCOMB_X83_Y4_N0
\h_units_cnt|s_value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|s_value~0_combout\ = (!\h_units_cnt|s_value\(0) & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \h_units_cnt|s_value\(0),
	datad => \SW[0]~input_o\,
	combout => \h_units_cnt|s_value~0_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X82_Y4_N0
\m_tens_cnt|termCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|termCnt~1_combout\ = (!\SW[0]~input_o\ & (\m_tens_cnt|termCnt~0_combout\ & !\m_tens_cnt|s_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \m_tens_cnt|termCnt~0_combout\,
	datac => \m_tens_cnt|s_value\(0),
	combout => \m_tens_cnt|termCnt~1_combout\);

-- Location: FF_X82_Y4_N1
\m_tens_cnt|termCnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_tens_cnt|termCnt~1_combout\,
	ena => \m_tens_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_tens_cnt|termCnt~q\);

-- Location: LCCOMB_X82_Y4_N10
\s_hUnitsEnb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_hUnitsEnb~0_combout\ = (\KEY[1]~input_o\ & (((\s_units_cnt|termCnt~q\ & \m_tens_cnt|termCnt~q\)))) # (!\KEY[1]~input_o\ & (!\KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \s_units_cnt|termCnt~q\,
	datad => \m_tens_cnt|termCnt~q\,
	combout => \s_hUnitsEnb~0_combout\);

-- Location: LCCOMB_X82_Y4_N24
\s_hUnitsEnb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_hUnitsEnb~1_combout\ = (\s_hUnitsEnb~0_combout\ & (((\m_units_cnt|termCnt~q\ & \s_tens_cnt|termCnt~q\)) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \m_units_cnt|termCnt~q\,
	datac => \s_tens_cnt|termCnt~q\,
	datad => \s_hUnitsEnb~0_combout\,
	combout => \s_hUnitsEnb~1_combout\);

-- Location: LCCOMB_X83_Y4_N14
\h_units_cnt|s_value[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|s_value[3]~1_combout\ = (\SW[0]~input_o\) # ((!\clk_enb_gen|clkEnable~0_combout\ & \s_hUnitsEnb~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \clk_enb_gen|clkEnable~0_combout\,
	datad => \s_hUnitsEnb~1_combout\,
	combout => \h_units_cnt|s_value[3]~1_combout\);

-- Location: FF_X83_Y4_N1
\h_units_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_units_cnt|s_value~0_combout\,
	ena => \h_units_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_units_cnt|s_value\(0));

-- Location: LCCOMB_X83_Y4_N22
\h_units_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|Add0~0_combout\ = \h_units_cnt|s_value\(2) $ (((\h_units_cnt|s_value\(1) & \h_units_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \h_units_cnt|s_value\(1),
	datac => \h_units_cnt|s_value\(2),
	datad => \h_units_cnt|s_value\(0),
	combout => \h_units_cnt|Add0~0_combout\);

-- Location: LCCOMB_X83_Y4_N24
\h_units_cnt|s_value~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|s_value~3_combout\ = (\h_units_cnt|Add0~0_combout\ & (!\SW[0]~input_o\ & ((!\h_units_cnt|s_value\(0)) # (!\h_units_cnt|termCnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|termCnt~0_combout\,
	datab => \h_units_cnt|s_value\(0),
	datac => \h_units_cnt|Add0~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \h_units_cnt|s_value~3_combout\);

-- Location: FF_X83_Y4_N25
\h_units_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_units_cnt|s_value~3_combout\,
	ena => \h_units_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_units_cnt|s_value\(2));

-- Location: LCCOMB_X83_Y4_N16
\h_units_cnt|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|Add0~1_combout\ = \h_units_cnt|s_value\(3) $ (((\h_units_cnt|s_value\(2) & (\h_units_cnt|s_value\(1) & \h_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(2),
	datab => \h_units_cnt|s_value\(1),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(0),
	combout => \h_units_cnt|Add0~1_combout\);

-- Location: LCCOMB_X83_Y4_N30
\h_units_cnt|s_value~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|s_value~4_combout\ = (!\SW[0]~input_o\ & (\h_units_cnt|Add0~1_combout\ & ((!\h_units_cnt|s_value\(0)) # (!\h_units_cnt|termCnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|termCnt~0_combout\,
	datab => \h_units_cnt|s_value\(0),
	datac => \SW[0]~input_o\,
	datad => \h_units_cnt|Add0~1_combout\,
	combout => \h_units_cnt|s_value~4_combout\);

-- Location: FF_X83_Y4_N31
\h_units_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_units_cnt|s_value~4_combout\,
	ena => \h_units_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_units_cnt|s_value\(3));

-- Location: LCCOMB_X83_Y4_N12
\h_units_cnt|termCnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|termCnt~0_combout\ = (!\h_units_cnt|s_value\(2) & (!\h_units_cnt|s_value\(3) & \h_units_cnt|s_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \h_units_cnt|s_value\(2),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(1),
	combout => \h_units_cnt|termCnt~0_combout\);

-- Location: LCCOMB_X83_Y4_N18
\h_units_cnt|s_value~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|s_value~2_combout\ = (!\SW[0]~input_o\ & ((\h_units_cnt|s_value\(0) & (!\h_units_cnt|termCnt~0_combout\ & !\h_units_cnt|s_value\(1))) # (!\h_units_cnt|s_value\(0) & ((\h_units_cnt|s_value\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|termCnt~0_combout\,
	datab => \h_units_cnt|s_value\(0),
	datac => \h_units_cnt|s_value\(1),
	datad => \SW[0]~input_o\,
	combout => \h_units_cnt|s_value~2_combout\);

-- Location: FF_X83_Y4_N19
\h_units_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_units_cnt|s_value~2_combout\,
	ena => \h_units_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_units_cnt|s_value\(1));

-- Location: LCCOMB_X79_Y4_N20
\h_units_decod|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux6~0_combout\ = (\h_units_cnt|s_value\(3) & (\h_units_cnt|s_value\(0) & (\h_units_cnt|s_value\(1) $ (\h_units_cnt|s_value\(2))))) # (!\h_units_cnt|s_value\(3) & (!\h_units_cnt|s_value\(1) & (\h_units_cnt|s_value\(2) $ 
-- (\h_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(3),
	datac => \h_units_cnt|s_value\(2),
	datad => \h_units_cnt|s_value\(0),
	combout => \h_units_decod|Mux6~0_combout\);

-- Location: LCCOMB_X79_Y4_N2
\h_units_decod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux5~0_combout\ = (\h_units_cnt|s_value\(1) & ((\h_units_cnt|s_value\(0) & (\h_units_cnt|s_value\(3))) # (!\h_units_cnt|s_value\(0) & ((\h_units_cnt|s_value\(2)))))) # (!\h_units_cnt|s_value\(1) & (\h_units_cnt|s_value\(2) & 
-- (\h_units_cnt|s_value\(3) $ (\h_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(3),
	datac => \h_units_cnt|s_value\(2),
	datad => \h_units_cnt|s_value\(0),
	combout => \h_units_decod|Mux5~0_combout\);

-- Location: LCCOMB_X79_Y4_N12
\h_units_decod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux4~0_combout\ = (\h_units_cnt|s_value\(3) & (\h_units_cnt|s_value\(2) & ((\h_units_cnt|s_value\(1)) # (!\h_units_cnt|s_value\(0))))) # (!\h_units_cnt|s_value\(3) & (\h_units_cnt|s_value\(1) & (!\h_units_cnt|s_value\(2) & 
-- !\h_units_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(3),
	datac => \h_units_cnt|s_value\(2),
	datad => \h_units_cnt|s_value\(0),
	combout => \h_units_decod|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y4_N28
\h_units_decod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux3~0_combout\ = (\h_units_cnt|s_value\(1) & ((\h_units_cnt|s_value\(2) & ((\h_units_cnt|s_value\(0)))) # (!\h_units_cnt|s_value\(2) & (\h_units_cnt|s_value\(3) & !\h_units_cnt|s_value\(0))))) # (!\h_units_cnt|s_value\(1) & 
-- (!\h_units_cnt|s_value\(3) & (\h_units_cnt|s_value\(2) $ (\h_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(2),
	datab => \h_units_cnt|s_value\(1),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(0),
	combout => \h_units_decod|Mux3~0_combout\);

-- Location: LCCOMB_X79_Y4_N10
\h_units_decod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux2~0_combout\ = (\h_units_cnt|s_value\(1) & (!\h_units_cnt|s_value\(3) & ((\h_units_cnt|s_value\(0))))) # (!\h_units_cnt|s_value\(1) & ((\h_units_cnt|s_value\(2) & (!\h_units_cnt|s_value\(3))) # (!\h_units_cnt|s_value\(2) & 
-- ((\h_units_cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(3),
	datac => \h_units_cnt|s_value\(2),
	datad => \h_units_cnt|s_value\(0),
	combout => \h_units_decod|Mux2~0_combout\);

-- Location: LCCOMB_X79_Y4_N24
\h_units_decod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux1~0_combout\ = (\h_units_cnt|s_value\(1) & (!\h_units_cnt|s_value\(3) & ((\h_units_cnt|s_value\(0)) # (!\h_units_cnt|s_value\(2))))) # (!\h_units_cnt|s_value\(1) & (\h_units_cnt|s_value\(0) & (\h_units_cnt|s_value\(3) $ 
-- (!\h_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(3),
	datac => \h_units_cnt|s_value\(2),
	datad => \h_units_cnt|s_value\(0),
	combout => \h_units_decod|Mux1~0_combout\);

-- Location: LCCOMB_X79_Y4_N30
\h_units_decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux0~0_combout\ = (\h_units_cnt|s_value\(0) & ((\h_units_cnt|s_value\(3)) # (\h_units_cnt|s_value\(1) $ (\h_units_cnt|s_value\(2))))) # (!\h_units_cnt|s_value\(0) & ((\h_units_cnt|s_value\(1)) # (\h_units_cnt|s_value\(3) $ 
-- (\h_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(3),
	datac => \h_units_cnt|s_value\(2),
	datad => \h_units_cnt|s_value\(0),
	combout => \h_units_decod|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y4_N16
\h_tens_cnt|s_value~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value~1_combout\ = (\h_tens_cnt|s_value[3]~0_combout\ & (!\h_tens_cnt|s_value\(0) & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \h_tens_cnt|s_value[3]~0_combout\,
	datac => \h_tens_cnt|s_value\(0),
	datad => \SW[0]~input_o\,
	combout => \h_tens_cnt|s_value~1_combout\);

-- Location: LCCOMB_X83_Y4_N26
\h_units_cnt|termCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|termCnt~1_combout\ = (\h_units_cnt|termCnt~0_combout\ & (!\h_units_cnt|s_value\(0) & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|termCnt~0_combout\,
	datab => \h_units_cnt|s_value\(0),
	datad => \SW[0]~input_o\,
	combout => \h_units_cnt|termCnt~1_combout\);

-- Location: FF_X83_Y4_N27
\h_units_cnt|termCnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_units_cnt|termCnt~1_combout\,
	ena => \h_units_cnt|s_value[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_units_cnt|termCnt~q\);

-- Location: LCCOMB_X82_Y4_N6
\h_tens_cnt|s_value[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value[3]~2_combout\ = (\SW[0]~input_o\) # ((\h_units_cnt|termCnt~q\ & (!\clk_enb_gen|clkEnable~0_combout\ & \s_hUnitsEnb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \h_units_cnt|termCnt~q\,
	datac => \clk_enb_gen|clkEnable~0_combout\,
	datad => \s_hUnitsEnb~1_combout\,
	combout => \h_tens_cnt|s_value[3]~2_combout\);

-- Location: FF_X77_Y4_N17
\h_tens_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_tens_cnt|s_value~1_combout\,
	ena => \h_tens_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_tens_cnt|s_value\(0));

-- Location: LCCOMB_X77_Y4_N30
\h_tens_cnt|s_value~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value~3_combout\ = (!\SW[0]~input_o\ & (\h_tens_cnt|s_value[3]~0_combout\ & (\h_tens_cnt|s_value\(0) $ (\h_tens_cnt|s_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value[3]~0_combout\,
	combout => \h_tens_cnt|s_value~3_combout\);

-- Location: FF_X77_Y4_N31
\h_tens_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_tens_cnt|s_value~3_combout\,
	ena => \h_tens_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_tens_cnt|s_value\(1));

-- Location: LCCOMB_X77_Y4_N26
\h_tens_cnt|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|Add0~1_combout\ = \h_tens_cnt|s_value\(3) $ (((\h_tens_cnt|s_value\(2) & (\h_tens_cnt|s_value\(0) & \h_tens_cnt|s_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_cnt|Add0~1_combout\);

-- Location: LCCOMB_X77_Y4_N10
\h_tens_cnt|s_value~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value~5_combout\ = (\h_tens_cnt|s_value[3]~0_combout\ & (\h_tens_cnt|Add0~1_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \h_tens_cnt|s_value[3]~0_combout\,
	datac => \h_tens_cnt|Add0~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \h_tens_cnt|s_value~5_combout\);

-- Location: FF_X77_Y4_N11
\h_tens_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_tens_cnt|s_value~5_combout\,
	ena => \h_tens_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_tens_cnt|s_value\(3));

-- Location: LCCOMB_X77_Y4_N18
\h_tens_cnt|s_value[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value[3]~0_combout\ = (\h_tens_cnt|s_value\(2)) # ((\h_tens_cnt|s_value\(0)) # ((\h_tens_cnt|s_value\(3)) # (!\h_tens_cnt|s_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_cnt|s_value[3]~0_combout\);

-- Location: LCCOMB_X77_Y4_N20
\h_tens_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|Add0~0_combout\ = \h_tens_cnt|s_value\(2) $ (((\h_tens_cnt|s_value\(1) & \h_tens_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(0),
	combout => \h_tens_cnt|Add0~0_combout\);

-- Location: LCCOMB_X77_Y4_N12
\h_tens_cnt|s_value~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value~4_combout\ = (!\SW[0]~input_o\ & (\h_tens_cnt|s_value[3]~0_combout\ & \h_tens_cnt|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \h_tens_cnt|s_value[3]~0_combout\,
	datad => \h_tens_cnt|Add0~0_combout\,
	combout => \h_tens_cnt|s_value~4_combout\);

-- Location: FF_X77_Y4_N13
\h_tens_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_tens_cnt|s_value~4_combout\,
	ena => \h_tens_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_tens_cnt|s_value\(2));

-- Location: LCCOMB_X77_Y4_N0
\h_tens_decod|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|Mux6~0_combout\ = (\h_tens_cnt|s_value\(2) & (!\h_tens_cnt|s_value\(1) & (\h_tens_cnt|s_value\(0) $ (!\h_tens_cnt|s_value\(3))))) # (!\h_tens_cnt|s_value\(2) & (\h_tens_cnt|s_value\(0) & (\h_tens_cnt|s_value\(1) $ 
-- (!\h_tens_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y4_N14
\h_tens_decod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|Mux5~0_combout\ = (\h_tens_cnt|s_value\(1) & ((\h_tens_cnt|s_value\(0) & ((\h_tens_cnt|s_value\(3)))) # (!\h_tens_cnt|s_value\(0) & (\h_tens_cnt|s_value\(2))))) # (!\h_tens_cnt|s_value\(1) & (\h_tens_cnt|s_value\(2) & 
-- (\h_tens_cnt|s_value\(0) $ (\h_tens_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y4_N24
\h_tens_decod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|Mux4~0_combout\ = (\h_tens_cnt|s_value\(2) & (\h_tens_cnt|s_value\(3) & ((\h_tens_cnt|s_value\(1)) # (!\h_tens_cnt|s_value\(0))))) # (!\h_tens_cnt|s_value\(2) & (!\h_tens_cnt|s_value\(0) & (\h_tens_cnt|s_value\(1) & 
-- !\h_tens_cnt|s_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y4_N22
\h_tens_decod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|Mux3~0_combout\ = (\h_tens_cnt|s_value\(1) & ((\h_tens_cnt|s_value\(2) & (\h_tens_cnt|s_value\(0))) # (!\h_tens_cnt|s_value\(2) & (!\h_tens_cnt|s_value\(0) & \h_tens_cnt|s_value\(3))))) # (!\h_tens_cnt|s_value\(1) & (!\h_tens_cnt|s_value\(3) 
-- & (\h_tens_cnt|s_value\(2) $ (\h_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y4_N4
\h_tens_decod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|Mux2~0_combout\ = (\h_tens_cnt|s_value\(1) & (((\h_tens_cnt|s_value\(0) & !\h_tens_cnt|s_value\(3))))) # (!\h_tens_cnt|s_value\(1) & ((\h_tens_cnt|s_value\(2) & ((!\h_tens_cnt|s_value\(3)))) # (!\h_tens_cnt|s_value\(2) & 
-- (\h_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y4_N2
\h_tens_decod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|Mux1~0_combout\ = (\h_tens_cnt|s_value\(2) & (\h_tens_cnt|s_value\(0) & (\h_tens_cnt|s_value\(1) $ (\h_tens_cnt|s_value\(3))))) # (!\h_tens_cnt|s_value\(2) & (!\h_tens_cnt|s_value\(3) & ((\h_tens_cnt|s_value\(0)) # 
-- (\h_tens_cnt|s_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y4_N28
\h_tens_decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|Mux0~0_combout\ = (\h_tens_cnt|s_value\(0) & ((\h_tens_cnt|s_value\(3)) # (\h_tens_cnt|s_value\(2) $ (\h_tens_cnt|s_value\(1))))) # (!\h_tens_cnt|s_value\(0) & ((\h_tens_cnt|s_value\(1)) # (\h_tens_cnt|s_value\(2) $ 
-- (\h_tens_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|Mux0~0_combout\);

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


