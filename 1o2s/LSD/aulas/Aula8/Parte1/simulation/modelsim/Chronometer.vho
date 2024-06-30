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

-- DATE "05/24/2022 10:13:00"

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
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \SW[0]~padout\ : std_logic;
SIGNAL \SW[10]~padout\ : std_logic;
SIGNAL \SW[11]~padout\ : std_logic;
SIGNAL \SW[12]~padout\ : std_logic;
SIGNAL \SW[13]~padout\ : std_logic;
SIGNAL \SW[14]~padout\ : std_logic;
SIGNAL \SW[15]~padout\ : std_logic;
SIGNAL \SW[16]~padout\ : std_logic;
SIGNAL \SW[17]~padout\ : std_logic;
SIGNAL \SW[1]~padout\ : std_logic;
SIGNAL \SW[2]~padout\ : std_logic;
SIGNAL \SW[3]~padout\ : std_logic;
SIGNAL \SW[4]~padout\ : std_logic;
SIGNAL \SW[5]~padout\ : std_logic;
SIGNAL \SW[6]~padout\ : std_logic;
SIGNAL \SW[7]~padout\ : std_logic;
SIGNAL \SW[8]~padout\ : std_logic;
SIGNAL \SW[9]~padout\ : std_logic;
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
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[0]~ibuf_o\ : std_logic;
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

ENTITY 	Chronometer IS
    PORT (
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 8)
	);
END Chronometer;

-- Design Ports Information
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Chronometer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 8);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_divider_50|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[0]~6_combout\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[3]~13\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[4]~14_combout\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[4]~15\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[5]~16_combout\ : std_logic;
SIGNAL \clk_divider_50|LessThan0~0_combout\ : std_logic;
SIGNAL \clk_divider_50|LessThan0~1_combout\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[0]~7\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[1]~8_combout\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[1]~9\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[2]~10_combout\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[2]~11\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[3]~12_combout\ : std_logic;
SIGNAL \clk_divider_50|LessThan1~0_combout\ : std_logic;
SIGNAL \clk_divider_50|clkOut~q\ : std_logic;
SIGNAL \clk_divider_50|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \laprst_debouncer|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \laprst_debouncer|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_dirtyIn~q\ : std_logic;
SIGNAL \laprst_debouncer|s_previousIn~q\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt[1]~10_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~11\ : std_logic;
SIGNAL \laprst_debouncer|Add0~12_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt[1]~2_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt[1]~3_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~13\ : std_logic;
SIGNAL \laprst_debouncer|Add0~14_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~15\ : std_logic;
SIGNAL \laprst_debouncer|Add0~16_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~17\ : std_logic;
SIGNAL \laprst_debouncer|Add0~18_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~19\ : std_logic;
SIGNAL \laprst_debouncer|Add0~20_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~21\ : std_logic;
SIGNAL \laprst_debouncer|Add0~22_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~23\ : std_logic;
SIGNAL \laprst_debouncer|Add0~24_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~25\ : std_logic;
SIGNAL \laprst_debouncer|Add0~26_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~27\ : std_logic;
SIGNAL \laprst_debouncer|Add0~28_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \laprst_debouncer|LessThan0~0_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~29\ : std_logic;
SIGNAL \laprst_debouncer|Add0~30_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt[15]~17_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt[15]~18_combout\ : std_logic;
SIGNAL \laprst_debouncer|LessThan0~1_combout\ : std_logic;
SIGNAL \laprst_debouncer|LessThan0~2_combout\ : std_logic;
SIGNAL \laprst_debouncer|LessThan0~3_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~31\ : std_logic;
SIGNAL \laprst_debouncer|Add0~32_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt[16]~4_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt[16]~5_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt[1]~0_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~1\ : std_logic;
SIGNAL \laprst_debouncer|Add0~2_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~3\ : std_logic;
SIGNAL \laprst_debouncer|Add0~4_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~5\ : std_logic;
SIGNAL \laprst_debouncer|Add0~6_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~7\ : std_logic;
SIGNAL \laprst_debouncer|Add0~8_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \laprst_debouncer|Add0~9\ : std_logic;
SIGNAL \laprst_debouncer|Add0~10_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \laprst_debouncer|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \statop_debouncer|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \statop_debouncer|s_dirtyIn~q\ : std_logic;
SIGNAL \statop_debouncer|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \statop_debouncer|s_previousIn~q\ : std_logic;
SIGNAL \statop_debouncer|Add0~0_combout\ : std_logic;
SIGNAL \statop_debouncer|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt[1]~2_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~23\ : std_logic;
SIGNAL \statop_debouncer|Add0~24_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt[1]~3_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~25\ : std_logic;
SIGNAL \statop_debouncer|Add0~26_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~27\ : std_logic;
SIGNAL \statop_debouncer|Add0~28_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~29\ : std_logic;
SIGNAL \statop_debouncer|Add0~30_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt[15]~17_combout\ : std_logic;
SIGNAL \statop_debouncer|LessThan0~1_combout\ : std_logic;
SIGNAL \statop_debouncer|LessThan0~2_combout\ : std_logic;
SIGNAL \statop_debouncer|LessThan0~3_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt[15]~18_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~31\ : std_logic;
SIGNAL \statop_debouncer|Add0~32_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt[16]~4_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt[16]~5_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt[1]~0_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~1\ : std_logic;
SIGNAL \statop_debouncer|Add0~2_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~3\ : std_logic;
SIGNAL \statop_debouncer|Add0~4_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~5\ : std_logic;
SIGNAL \statop_debouncer|Add0~6_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~7\ : std_logic;
SIGNAL \statop_debouncer|Add0~8_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~9\ : std_logic;
SIGNAL \statop_debouncer|Add0~10_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt[1]~10_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~11\ : std_logic;
SIGNAL \statop_debouncer|Add0~12_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~13\ : std_logic;
SIGNAL \statop_debouncer|Add0~14_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~15\ : std_logic;
SIGNAL \statop_debouncer|Add0~16_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~17\ : std_logic;
SIGNAL \statop_debouncer|Add0~18_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~19\ : std_logic;
SIGNAL \statop_debouncer|Add0~20_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \statop_debouncer|Add0~21\ : std_logic;
SIGNAL \statop_debouncer|Add0~22_combout\ : std_logic;
SIGNAL \statop_debouncer|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \statop_debouncer|LessThan0~0_combout\ : std_logic;
SIGNAL \statop_debouncer|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \statop_debouncer|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \statop_debouncer|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \statop_debouncer|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \statop_debouncer|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \statop_debouncer|s_pulsedOut~q\ : std_logic;
SIGNAL \control_unit|s_currentState~15_combout\ : std_logic;
SIGNAL \control_unit|s_currentState~9_combout\ : std_logic;
SIGNAL \control_unit|s_currentState~10_combout\ : std_logic;
SIGNAL \control_unit|s_currentState.STOPPED1~q\ : std_logic;
SIGNAL \control_unit|s_currentState~7_combout\ : std_logic;
SIGNAL \control_unit|s_currentState~8_combout\ : std_logic;
SIGNAL \control_unit|s_currentState.LAPVIEW~q\ : std_logic;
SIGNAL \control_unit|s_currentState~16_combout\ : std_logic;
SIGNAL \control_unit|s_currentState~17_combout\ : std_logic;
SIGNAL \control_unit|s_currentState.STARTED~q\ : std_logic;
SIGNAL \control_unit|s_currentState~13_combout\ : std_logic;
SIGNAL \control_unit|s_currentState~14_combout\ : std_logic;
SIGNAL \control_unit|s_currentState.STOPPED~q\ : std_logic;
SIGNAL \control_unit|s_currentState~11_combout\ : std_logic;
SIGNAL \control_unit|s_currentState~12_combout\ : std_logic;
SIGNAL \control_unit|s_currentState.CLEARED~q\ : std_logic;
SIGNAL \bcd_counter|s_count~0_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[0]~20_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[0]~21\ : std_logic;
SIGNAL \pulse_generator|s_counter[1]~22_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[1]~23\ : std_logic;
SIGNAL \pulse_generator|s_counter[2]~24_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[2]~25\ : std_logic;
SIGNAL \pulse_generator|s_counter[3]~26_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[3]~27\ : std_logic;
SIGNAL \pulse_generator|s_counter[4]~28_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[4]~29\ : std_logic;
SIGNAL \pulse_generator|s_counter[5]~30_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[5]~31\ : std_logic;
SIGNAL \pulse_generator|s_counter[6]~32_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[6]~33\ : std_logic;
SIGNAL \pulse_generator|s_counter[7]~34_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[7]~35\ : std_logic;
SIGNAL \pulse_generator|s_counter[8]~36_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[8]~37\ : std_logic;
SIGNAL \pulse_generator|s_counter[9]~38_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[9]~39\ : std_logic;
SIGNAL \pulse_generator|s_counter[10]~40_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[10]~41\ : std_logic;
SIGNAL \pulse_generator|s_counter[11]~42_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[11]~43\ : std_logic;
SIGNAL \pulse_generator|s_counter[12]~44_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[12]~45\ : std_logic;
SIGNAL \pulse_generator|s_counter[13]~46_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[13]~47\ : std_logic;
SIGNAL \pulse_generator|s_counter[14]~48_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[14]~49\ : std_logic;
SIGNAL \pulse_generator|s_counter[15]~50_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[15]~51\ : std_logic;
SIGNAL \pulse_generator|s_counter[16]~52_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[16]~53\ : std_logic;
SIGNAL \pulse_generator|s_counter[17]~54_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[17]~55\ : std_logic;
SIGNAL \pulse_generator|s_counter[18]~56_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[18]~57\ : std_logic;
SIGNAL \pulse_generator|s_counter[19]~58_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~1_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~3_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~2_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~4_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~5_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~0_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~6_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~14_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~1\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~255_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~254_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~257_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~256_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~258_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~259_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~261_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~260_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~262_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~263_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~264_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~265_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~267_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~266_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~269_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~268_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~270_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~271_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~0_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~273_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~272_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~275_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~274_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~1\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~3\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~5\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~7\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~9\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~11\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~13\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~15\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~17\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~19\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~21\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~427_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~20_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~276_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~428_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~18_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~277_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~429_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~16_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~278_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~14_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~279_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~430_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~12_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~280_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~431_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~10_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~281_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~432_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~433_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~8_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~282_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~434_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~6_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~283_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~435_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~4_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~284_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~436_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~2_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~285_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~0_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~287_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~286_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~288_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~289_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~1\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~3\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~5\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~7\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~9\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~11\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~13\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~15\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~17\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~19\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~21\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~22_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~23\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~290_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~374_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~20_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~291_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~375_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~376_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~18_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~292_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~377_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~16_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~293_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~14_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~294_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~378_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~12_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~295_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~379_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~10_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~296_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~380_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~8_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~297_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~381_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~382_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~6_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~298_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~4_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~299_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~383_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~2_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~300_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~437_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~0_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~301_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~438_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~302_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~303_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~24_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~439_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~440_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~1\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~3\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~5\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~7\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~9\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~11\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~13\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~15\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~17\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~19\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~21\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~23\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~24_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~25\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~384_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~304_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~22_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~305_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~385_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~20_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~306_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~386_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~18_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~307_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~387_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~388_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~16_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~308_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~389_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~14_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~309_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~12_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~310_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~390_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~10_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~311_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~391_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~392_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~8_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~312_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~6_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~313_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~393_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~4_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~314_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~394_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~445_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~2_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~315_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~316_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~0_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~317_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~319_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~320_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~26_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~321_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~318_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~26_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[302]~441_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~395_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~396_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~1\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~3\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~5\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~7\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~9\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~11\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~13\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~15\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~17\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~19\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~21\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~23\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~25\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~27\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~397_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~26_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~322_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~24_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~323_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~398_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~22_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~324_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~399_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~20_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~325_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~400_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~18_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~326_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~401_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~16_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~327_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~402_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~403_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~14_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~328_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~404_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~12_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~329_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~405_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~10_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~330_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~406_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~8_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~331_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~6_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~332_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~407_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~408_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~4_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~333_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~409_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~2_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~334_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~335_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~0_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~336_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~339_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~338_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~28_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[322]~442_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~340_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~337_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[2]~28_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~410_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~411_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~1\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~341_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~412_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~413_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~342_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~414_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~343_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~415_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~344_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~416_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~345_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~417_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~346_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~347_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~418_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~348_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~419_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~420_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~349_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~350_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~421_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~422_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~351_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~423_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~352_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~353_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~424_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~354_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~425_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~355_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~0_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~356_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~359_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~358_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[1]~30_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~443_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~360_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~357_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[2]~30_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~361_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[3]~32_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~362_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~426_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~1\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~3\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~5\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~7\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~9\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~11\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~13\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~15\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~17\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~19\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~21\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~23\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~25\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~27\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~29\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[19]~31\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[20]~32_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~373_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~372_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[1]~38_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~363_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~365_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~364_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[1]~32_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~366_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[2]~34_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~369_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~444_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[3]~34_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~370_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~367_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~368_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[1]~36_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~371_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[2]~36_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~15_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~26_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[19]~30_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~28_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~22_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~20_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~24_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~16_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~18_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~0_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~2_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~6_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~4_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~16_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~10_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~8_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~14_combout\ : std_logic;
SIGNAL \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~12_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~17_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~18_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~19_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~20_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~21_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~1_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~0_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~7_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~8_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~9_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~2_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~3_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~4_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~5_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~6_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~10_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~11_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~12_combout\ : std_logic;
SIGNAL \bcd_counter|count_proc~13_combout\ : std_logic;
SIGNAL \bcd_counter|s_count[3]~1_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~2_combout\ : std_logic;
SIGNAL \bcd_counter|Add3~1_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~4_combout\ : std_logic;
SIGNAL \bcd_counter|Equal0~0_combout\ : std_logic;
SIGNAL \bcd_counter|Add3~0_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~3_combout\ : std_logic;
SIGNAL \control_unit|regEnb~1_combout\ : std_logic;
SIGNAL \freeze_register|dataOut[0]~feeder_combout\ : std_logic;
SIGNAL \disp_0_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \disp_0_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \disp_0_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \disp_0_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \disp_0_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \disp_0_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \disp_0_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~5_combout\ : std_logic;
SIGNAL \bcd_counter|s_count[7]~6_combout\ : std_logic;
SIGNAL \bcd_counter|Add2~0_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~8_combout\ : std_logic;
SIGNAL \bcd_counter|Add2~1_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~9_combout\ : std_logic;
SIGNAL \bcd_counter|Equal1~0_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~7_combout\ : std_logic;
SIGNAL \freeze_register|dataOut[4]~feeder_combout\ : std_logic;
SIGNAL \disp_1_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \disp_1_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \disp_1_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \disp_1_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \disp_1_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \disp_1_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \disp_1_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~10_combout\ : std_logic;
SIGNAL \bcd_counter|s_count[7]~11_combout\ : std_logic;
SIGNAL \bcd_counter|s_count[11]~12_combout\ : std_logic;
SIGNAL \bcd_counter|Add1~1_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~16_combout\ : std_logic;
SIGNAL \bcd_counter|s_count[11]~13_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~14_combout\ : std_logic;
SIGNAL \bcd_counter|Add1~0_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~15_combout\ : std_logic;
SIGNAL \disp_2_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \disp_2_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \disp_2_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \disp_2_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \disp_2_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \disp_2_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \disp_2_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~17_combout\ : std_logic;
SIGNAL \bcd_counter|s_count[15]~18_combout\ : std_logic;
SIGNAL \bcd_counter|s_count[15]~19_combout\ : std_logic;
SIGNAL \bcd_counter|Add0~0_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~22_combout\ : std_logic;
SIGNAL \bcd_counter|Add0~1_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~23_combout\ : std_logic;
SIGNAL \bcd_counter|s_count[15]~20_combout\ : std_logic;
SIGNAL \bcd_counter|s_count~21_combout\ : std_logic;
SIGNAL \freeze_register|dataOut[12]~feeder_combout\ : std_logic;
SIGNAL \disp_3_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \disp_3_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \disp_3_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \disp_3_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \disp_3_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \disp_3_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \disp_3_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan1~1_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan1~0_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan1~2_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan1~3_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \clk_divider_50|s_divCounter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \laprst_debouncer|s_debounceCnt\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \statop_debouncer|s_debounceCnt\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \bcd_counter|s_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \freeze_register|dataOut\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \disp_3_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp_2_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp_1_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp_0_decoder|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX2 <= ww_HEX2;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clk_divider_50|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_divider_50|clkOut~q\);
\disp_3_decoder|ALT_INV_Mux0~0_combout\ <= NOT \disp_3_decoder|Mux0~0_combout\;
\disp_2_decoder|ALT_INV_Mux0~0_combout\ <= NOT \disp_2_decoder|Mux0~0_combout\;
\disp_1_decoder|ALT_INV_Mux0~0_combout\ <= NOT \disp_1_decoder|Mux0~0_combout\;
\disp_0_decoder|ALT_INV_Mux0~0_combout\ <= NOT \disp_0_decoder|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_0_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_0_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_0_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_0_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_0_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_0_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_0_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_1_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_1_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_1_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_1_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_1_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_1_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_1_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_2_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_2_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_2_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_2_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_2_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_2_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_2_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_3_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_3_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_3_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_3_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_3_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_3_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_3_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pulse_generator|LessThan1~3_combout\,
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

-- Location: LCCOMB_X59_Y1_N6
\clk_divider_50|s_divCounter[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[0]~6_combout\ = \clk_divider_50|s_divCounter\(0) $ (VCC)
-- \clk_divider_50|s_divCounter[0]~7\ = CARRY(\clk_divider_50|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_50|s_divCounter\(0),
	datad => VCC,
	combout => \clk_divider_50|s_divCounter[0]~6_combout\,
	cout => \clk_divider_50|s_divCounter[0]~7\);

-- Location: LCCOMB_X59_Y1_N12
\clk_divider_50|s_divCounter[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[3]~12_combout\ = (\clk_divider_50|s_divCounter\(3) & (!\clk_divider_50|s_divCounter[2]~11\)) # (!\clk_divider_50|s_divCounter\(3) & ((\clk_divider_50|s_divCounter[2]~11\) # (GND)))
-- \clk_divider_50|s_divCounter[3]~13\ = CARRY((!\clk_divider_50|s_divCounter[2]~11\) # (!\clk_divider_50|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_50|s_divCounter\(3),
	datad => VCC,
	cin => \clk_divider_50|s_divCounter[2]~11\,
	combout => \clk_divider_50|s_divCounter[3]~12_combout\,
	cout => \clk_divider_50|s_divCounter[3]~13\);

-- Location: LCCOMB_X59_Y1_N14
\clk_divider_50|s_divCounter[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[4]~14_combout\ = (\clk_divider_50|s_divCounter\(4) & (\clk_divider_50|s_divCounter[3]~13\ $ (GND))) # (!\clk_divider_50|s_divCounter\(4) & (!\clk_divider_50|s_divCounter[3]~13\ & VCC))
-- \clk_divider_50|s_divCounter[4]~15\ = CARRY((\clk_divider_50|s_divCounter\(4) & !\clk_divider_50|s_divCounter[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_50|s_divCounter\(4),
	datad => VCC,
	cin => \clk_divider_50|s_divCounter[3]~13\,
	combout => \clk_divider_50|s_divCounter[4]~14_combout\,
	cout => \clk_divider_50|s_divCounter[4]~15\);

-- Location: FF_X59_Y1_N15
\clk_divider_50|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[4]~14_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(4));

-- Location: LCCOMB_X59_Y1_N16
\clk_divider_50|s_divCounter[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[5]~16_combout\ = \clk_divider_50|s_divCounter[4]~15\ $ (\clk_divider_50|s_divCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider_50|s_divCounter\(5),
	cin => \clk_divider_50|s_divCounter[4]~15\,
	combout => \clk_divider_50|s_divCounter[5]~16_combout\);

-- Location: FF_X59_Y1_N17
\clk_divider_50|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[5]~16_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(5));

-- Location: LCCOMB_X59_Y1_N20
\clk_divider_50|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|LessThan0~0_combout\ = (!\clk_divider_50|s_divCounter\(2) & (!\clk_divider_50|s_divCounter\(0) & (!\clk_divider_50|s_divCounter\(1) & !\clk_divider_50|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_50|s_divCounter\(2),
	datab => \clk_divider_50|s_divCounter\(0),
	datac => \clk_divider_50|s_divCounter\(1),
	datad => \clk_divider_50|s_divCounter\(3),
	combout => \clk_divider_50|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y1_N18
\clk_divider_50|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|LessThan0~1_combout\ = (\clk_divider_50|s_divCounter\(5) & (\clk_divider_50|s_divCounter\(4) & !\clk_divider_50|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_50|s_divCounter\(5),
	datac => \clk_divider_50|s_divCounter\(4),
	datad => \clk_divider_50|LessThan0~0_combout\,
	combout => \clk_divider_50|LessThan0~1_combout\);

-- Location: FF_X59_Y1_N7
\clk_divider_50|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[0]~6_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(0));

-- Location: LCCOMB_X59_Y1_N8
\clk_divider_50|s_divCounter[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[1]~8_combout\ = (\clk_divider_50|s_divCounter\(1) & (!\clk_divider_50|s_divCounter[0]~7\)) # (!\clk_divider_50|s_divCounter\(1) & ((\clk_divider_50|s_divCounter[0]~7\) # (GND)))
-- \clk_divider_50|s_divCounter[1]~9\ = CARRY((!\clk_divider_50|s_divCounter[0]~7\) # (!\clk_divider_50|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_50|s_divCounter\(1),
	datad => VCC,
	cin => \clk_divider_50|s_divCounter[0]~7\,
	combout => \clk_divider_50|s_divCounter[1]~8_combout\,
	cout => \clk_divider_50|s_divCounter[1]~9\);

-- Location: FF_X59_Y1_N9
\clk_divider_50|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[1]~8_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(1));

-- Location: LCCOMB_X59_Y1_N10
\clk_divider_50|s_divCounter[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[2]~10_combout\ = (\clk_divider_50|s_divCounter\(2) & (\clk_divider_50|s_divCounter[1]~9\ $ (GND))) # (!\clk_divider_50|s_divCounter\(2) & (!\clk_divider_50|s_divCounter[1]~9\ & VCC))
-- \clk_divider_50|s_divCounter[2]~11\ = CARRY((\clk_divider_50|s_divCounter\(2) & !\clk_divider_50|s_divCounter[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_50|s_divCounter\(2),
	datad => VCC,
	cin => \clk_divider_50|s_divCounter[1]~9\,
	combout => \clk_divider_50|s_divCounter[2]~10_combout\,
	cout => \clk_divider_50|s_divCounter[2]~11\);

-- Location: FF_X59_Y1_N11
\clk_divider_50|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[2]~10_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(2));

-- Location: FF_X59_Y1_N13
\clk_divider_50|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[3]~12_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(3));

-- Location: LCCOMB_X59_Y1_N30
\clk_divider_50|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|LessThan1~0_combout\ = (\clk_divider_50|s_divCounter\(5)) # ((\clk_divider_50|s_divCounter\(3) & \clk_divider_50|s_divCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_50|s_divCounter\(3),
	datac => \clk_divider_50|s_divCounter\(4),
	datad => \clk_divider_50|s_divCounter\(5),
	combout => \clk_divider_50|LessThan1~0_combout\);

-- Location: FF_X59_Y1_N31
\clk_divider_50|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|clkOut~q\);

-- Location: CLKCTRL_G16
\clk_divider_50|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_divider_50|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_divider_50|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X108_Y28_N16
\laprst_debouncer|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~0_combout\ = \laprst_debouncer|s_debounceCnt\(0) $ (VCC)
-- \laprst_debouncer|Add0~1\ = CARRY(\laprst_debouncer|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(0),
	datad => VCC,
	combout => \laprst_debouncer|Add0~0_combout\,
	cout => \laprst_debouncer|Add0~1\);

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

-- Location: LCCOMB_X110_Y27_N24
\laprst_debouncer|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \laprst_debouncer|s_dirtyIn~0_combout\);

-- Location: FF_X110_Y27_N25
\laprst_debouncer|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_dirtyIn~q\);

-- Location: FF_X109_Y27_N23
\laprst_debouncer|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \laprst_debouncer|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_previousIn~q\);

-- Location: LCCOMB_X109_Y27_N20
\laprst_debouncer|s_debounceCnt[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt[1]~10_combout\ = (\laprst_debouncer|s_dirtyIn~q\ & ((!\laprst_debouncer|LessThan0~3_combout\) # (!\laprst_debouncer|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(16),
	datab => \laprst_debouncer|LessThan0~3_combout\,
	datad => \laprst_debouncer|s_dirtyIn~q\,
	combout => \laprst_debouncer|s_debounceCnt[1]~10_combout\);

-- Location: LCCOMB_X108_Y28_N26
\laprst_debouncer|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~10_combout\ = (\laprst_debouncer|s_debounceCnt\(5) & (\laprst_debouncer|Add0~9\ & VCC)) # (!\laprst_debouncer|s_debounceCnt\(5) & (!\laprst_debouncer|Add0~9\))
-- \laprst_debouncer|Add0~11\ = CARRY((!\laprst_debouncer|s_debounceCnt\(5) & !\laprst_debouncer|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(5),
	datad => VCC,
	cin => \laprst_debouncer|Add0~9\,
	combout => \laprst_debouncer|Add0~10_combout\,
	cout => \laprst_debouncer|Add0~11\);

-- Location: LCCOMB_X108_Y28_N28
\laprst_debouncer|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~12_combout\ = (\laprst_debouncer|s_debounceCnt\(6) & ((GND) # (!\laprst_debouncer|Add0~11\))) # (!\laprst_debouncer|s_debounceCnt\(6) & (\laprst_debouncer|Add0~11\ $ (GND)))
-- \laprst_debouncer|Add0~13\ = CARRY((\laprst_debouncer|s_debounceCnt\(6)) # (!\laprst_debouncer|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|s_debounceCnt\(6),
	datad => VCC,
	cin => \laprst_debouncer|Add0~11\,
	combout => \laprst_debouncer|Add0~12_combout\,
	cout => \laprst_debouncer|Add0~13\);

-- Location: LCCOMB_X108_Y28_N2
\laprst_debouncer|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~12_combout\ = (\laprst_debouncer|Add0~12_combout\ & \laprst_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|Add0~12_combout\,
	datad => \laprst_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \laprst_debouncer|s_debounceCnt~12_combout\);

-- Location: LCCOMB_X108_Y28_N4
\laprst_debouncer|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_pulsedOut~4_combout\ = (!\laprst_debouncer|s_debounceCnt\(4) & (!\laprst_debouncer|s_debounceCnt\(1) & (!\laprst_debouncer|s_debounceCnt\(3) & !\laprst_debouncer|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(4),
	datab => \laprst_debouncer|s_debounceCnt\(1),
	datac => \laprst_debouncer|s_debounceCnt\(3),
	datad => \laprst_debouncer|s_debounceCnt\(2),
	combout => \laprst_debouncer|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X109_Y27_N28
\laprst_debouncer|s_debounceCnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt[1]~2_combout\ = (\laprst_debouncer|s_debounceCnt\(0)) # ((!\laprst_debouncer|s_pulsedOut~3_combout\) # (!\laprst_debouncer|s_pulsedOut~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|s_debounceCnt\(0),
	datac => \laprst_debouncer|s_pulsedOut~4_combout\,
	datad => \laprst_debouncer|s_pulsedOut~3_combout\,
	combout => \laprst_debouncer|s_debounceCnt[1]~2_combout\);

-- Location: LCCOMB_X109_Y27_N14
\laprst_debouncer|s_debounceCnt[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt[1]~3_combout\ = (\laprst_debouncer|s_debounceCnt\(16)) # ((\laprst_debouncer|s_debounceCnt[1]~2_combout\) # ((!\laprst_debouncer|s_dirtyIn~q\) # (!\laprst_debouncer|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(16),
	datab => \laprst_debouncer|s_debounceCnt[1]~2_combout\,
	datac => \laprst_debouncer|s_previousIn~q\,
	datad => \laprst_debouncer|s_dirtyIn~q\,
	combout => \laprst_debouncer|s_debounceCnt[1]~3_combout\);

-- Location: FF_X108_Y28_N3
\laprst_debouncer|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~12_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(6));

-- Location: LCCOMB_X108_Y28_N30
\laprst_debouncer|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~14_combout\ = (\laprst_debouncer|s_debounceCnt\(7) & (\laprst_debouncer|Add0~13\ & VCC)) # (!\laprst_debouncer|s_debounceCnt\(7) & (!\laprst_debouncer|Add0~13\))
-- \laprst_debouncer|Add0~15\ = CARRY((!\laprst_debouncer|s_debounceCnt\(7) & !\laprst_debouncer|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(7),
	datad => VCC,
	cin => \laprst_debouncer|Add0~13\,
	combout => \laprst_debouncer|Add0~14_combout\,
	cout => \laprst_debouncer|Add0~15\);

-- Location: LCCOMB_X109_Y27_N0
\laprst_debouncer|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~13_combout\ = (\laprst_debouncer|s_debounceCnt[1]~10_combout\ & ((\laprst_debouncer|Add0~14_combout\) # (!\laprst_debouncer|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_previousIn~q\,
	datab => \laprst_debouncer|s_debounceCnt[1]~10_combout\,
	datac => \laprst_debouncer|Add0~14_combout\,
	combout => \laprst_debouncer|s_debounceCnt~13_combout\);

-- Location: FF_X109_Y27_N1
\laprst_debouncer|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~13_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(7));

-- Location: LCCOMB_X108_Y27_N0
\laprst_debouncer|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~16_combout\ = (\laprst_debouncer|s_debounceCnt\(8) & ((GND) # (!\laprst_debouncer|Add0~15\))) # (!\laprst_debouncer|s_debounceCnt\(8) & (\laprst_debouncer|Add0~15\ $ (GND)))
-- \laprst_debouncer|Add0~17\ = CARRY((\laprst_debouncer|s_debounceCnt\(8)) # (!\laprst_debouncer|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|s_debounceCnt\(8),
	datad => VCC,
	cin => \laprst_debouncer|Add0~15\,
	combout => \laprst_debouncer|Add0~16_combout\,
	cout => \laprst_debouncer|Add0~17\);

-- Location: LCCOMB_X108_Y27_N24
\laprst_debouncer|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~14_combout\ = (\laprst_debouncer|Add0~16_combout\ & \laprst_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|Add0~16_combout\,
	datad => \laprst_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \laprst_debouncer|s_debounceCnt~14_combout\);

-- Location: FF_X108_Y27_N25
\laprst_debouncer|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~14_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(8));

-- Location: LCCOMB_X108_Y27_N2
\laprst_debouncer|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~18_combout\ = (\laprst_debouncer|s_debounceCnt\(9) & (\laprst_debouncer|Add0~17\ & VCC)) # (!\laprst_debouncer|s_debounceCnt\(9) & (!\laprst_debouncer|Add0~17\))
-- \laprst_debouncer|Add0~19\ = CARRY((!\laprst_debouncer|s_debounceCnt\(9) & !\laprst_debouncer|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(9),
	datad => VCC,
	cin => \laprst_debouncer|Add0~17\,
	combout => \laprst_debouncer|Add0~18_combout\,
	cout => \laprst_debouncer|Add0~19\);

-- Location: LCCOMB_X109_Y27_N4
\laprst_debouncer|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~15_combout\ = (\laprst_debouncer|s_debounceCnt[1]~10_combout\ & ((\laprst_debouncer|Add0~18_combout\) # (!\laprst_debouncer|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_previousIn~q\,
	datab => \laprst_debouncer|s_debounceCnt[1]~10_combout\,
	datac => \laprst_debouncer|Add0~18_combout\,
	combout => \laprst_debouncer|s_debounceCnt~15_combout\);

-- Location: FF_X109_Y27_N5
\laprst_debouncer|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~15_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(9));

-- Location: LCCOMB_X108_Y27_N4
\laprst_debouncer|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~20_combout\ = (\laprst_debouncer|s_debounceCnt\(10) & ((GND) # (!\laprst_debouncer|Add0~19\))) # (!\laprst_debouncer|s_debounceCnt\(10) & (\laprst_debouncer|Add0~19\ $ (GND)))
-- \laprst_debouncer|Add0~21\ = CARRY((\laprst_debouncer|s_debounceCnt\(10)) # (!\laprst_debouncer|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|s_debounceCnt\(10),
	datad => VCC,
	cin => \laprst_debouncer|Add0~19\,
	combout => \laprst_debouncer|Add0~20_combout\,
	cout => \laprst_debouncer|Add0~21\);

-- Location: LCCOMB_X109_Y27_N26
\laprst_debouncer|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~16_combout\ = (\laprst_debouncer|s_debounceCnt[1]~10_combout\ & ((\laprst_debouncer|Add0~20_combout\) # (!\laprst_debouncer|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_previousIn~q\,
	datab => \laprst_debouncer|s_debounceCnt[1]~10_combout\,
	datac => \laprst_debouncer|Add0~20_combout\,
	combout => \laprst_debouncer|s_debounceCnt~16_combout\);

-- Location: FF_X109_Y27_N27
\laprst_debouncer|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~16_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(10));

-- Location: LCCOMB_X108_Y27_N6
\laprst_debouncer|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~22_combout\ = (\laprst_debouncer|s_debounceCnt\(11) & (\laprst_debouncer|Add0~21\ & VCC)) # (!\laprst_debouncer|s_debounceCnt\(11) & (!\laprst_debouncer|Add0~21\))
-- \laprst_debouncer|Add0~23\ = CARRY((!\laprst_debouncer|s_debounceCnt\(11) & !\laprst_debouncer|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(11),
	datad => VCC,
	cin => \laprst_debouncer|Add0~21\,
	combout => \laprst_debouncer|Add0~22_combout\,
	cout => \laprst_debouncer|Add0~23\);

-- Location: LCCOMB_X108_Y27_N30
\laprst_debouncer|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~6_combout\ = (\laprst_debouncer|Add0~22_combout\ & \laprst_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|Add0~22_combout\,
	datad => \laprst_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \laprst_debouncer|s_debounceCnt~6_combout\);

-- Location: FF_X108_Y27_N31
\laprst_debouncer|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~6_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(11));

-- Location: LCCOMB_X108_Y27_N8
\laprst_debouncer|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~24_combout\ = (\laprst_debouncer|s_debounceCnt\(12) & ((GND) # (!\laprst_debouncer|Add0~23\))) # (!\laprst_debouncer|s_debounceCnt\(12) & (\laprst_debouncer|Add0~23\ $ (GND)))
-- \laprst_debouncer|Add0~25\ = CARRY((\laprst_debouncer|s_debounceCnt\(12)) # (!\laprst_debouncer|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|s_debounceCnt\(12),
	datad => VCC,
	cin => \laprst_debouncer|Add0~23\,
	combout => \laprst_debouncer|Add0~24_combout\,
	cout => \laprst_debouncer|Add0~25\);

-- Location: LCCOMB_X108_Y27_N28
\laprst_debouncer|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~7_combout\ = (\laprst_debouncer|Add0~24_combout\ & \laprst_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \laprst_debouncer|Add0~24_combout\,
	datad => \laprst_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \laprst_debouncer|s_debounceCnt~7_combout\);

-- Location: FF_X108_Y27_N29
\laprst_debouncer|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~7_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(12));

-- Location: LCCOMB_X108_Y27_N10
\laprst_debouncer|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~26_combout\ = (\laprst_debouncer|s_debounceCnt\(13) & (\laprst_debouncer|Add0~25\ & VCC)) # (!\laprst_debouncer|s_debounceCnt\(13) & (!\laprst_debouncer|Add0~25\))
-- \laprst_debouncer|Add0~27\ = CARRY((!\laprst_debouncer|s_debounceCnt\(13) & !\laprst_debouncer|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(13),
	datad => VCC,
	cin => \laprst_debouncer|Add0~25\,
	combout => \laprst_debouncer|Add0~26_combout\,
	cout => \laprst_debouncer|Add0~27\);

-- Location: LCCOMB_X108_Y27_N22
\laprst_debouncer|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~8_combout\ = (\laprst_debouncer|Add0~26_combout\ & \laprst_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|Add0~26_combout\,
	datad => \laprst_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \laprst_debouncer|s_debounceCnt~8_combout\);

-- Location: FF_X108_Y27_N23
\laprst_debouncer|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~8_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(13));

-- Location: LCCOMB_X108_Y27_N12
\laprst_debouncer|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~28_combout\ = (\laprst_debouncer|s_debounceCnt\(14) & ((GND) # (!\laprst_debouncer|Add0~27\))) # (!\laprst_debouncer|s_debounceCnt\(14) & (\laprst_debouncer|Add0~27\ $ (GND)))
-- \laprst_debouncer|Add0~29\ = CARRY((\laprst_debouncer|s_debounceCnt\(14)) # (!\laprst_debouncer|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|s_debounceCnt\(14),
	datad => VCC,
	cin => \laprst_debouncer|Add0~27\,
	combout => \laprst_debouncer|Add0~28_combout\,
	cout => \laprst_debouncer|Add0~29\);

-- Location: LCCOMB_X108_Y27_N20
\laprst_debouncer|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~9_combout\ = (\laprst_debouncer|Add0~28_combout\ & \laprst_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|Add0~28_combout\,
	datad => \laprst_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \laprst_debouncer|s_debounceCnt~9_combout\);

-- Location: FF_X108_Y27_N21
\laprst_debouncer|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~9_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(14));

-- Location: LCCOMB_X108_Y27_N18
\laprst_debouncer|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|LessThan0~0_combout\ = (!\laprst_debouncer|s_debounceCnt\(11) & (!\laprst_debouncer|s_debounceCnt\(12) & (!\laprst_debouncer|s_debounceCnt\(13) & !\laprst_debouncer|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(11),
	datab => \laprst_debouncer|s_debounceCnt\(12),
	datac => \laprst_debouncer|s_debounceCnt\(13),
	datad => \laprst_debouncer|s_debounceCnt\(14),
	combout => \laprst_debouncer|LessThan0~0_combout\);

-- Location: LCCOMB_X108_Y27_N14
\laprst_debouncer|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~30_combout\ = (\laprst_debouncer|s_debounceCnt\(15) & (\laprst_debouncer|Add0~29\ & VCC)) # (!\laprst_debouncer|s_debounceCnt\(15) & (!\laprst_debouncer|Add0~29\))
-- \laprst_debouncer|Add0~31\ = CARRY((!\laprst_debouncer|s_debounceCnt\(15) & !\laprst_debouncer|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(15),
	datad => VCC,
	cin => \laprst_debouncer|Add0~29\,
	combout => \laprst_debouncer|Add0~30_combout\,
	cout => \laprst_debouncer|Add0~31\);

-- Location: LCCOMB_X110_Y27_N18
\laprst_debouncer|s_debounceCnt[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt[15]~17_combout\ = ((\laprst_debouncer|Add0~30_combout\ & ((\laprst_debouncer|s_debounceCnt\(16)) # (\laprst_debouncer|s_debounceCnt[1]~2_combout\)))) # (!\laprst_debouncer|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(16),
	datab => \laprst_debouncer|s_debounceCnt[1]~2_combout\,
	datac => \laprst_debouncer|Add0~30_combout\,
	datad => \laprst_debouncer|s_previousIn~q\,
	combout => \laprst_debouncer|s_debounceCnt[15]~17_combout\);

-- Location: LCCOMB_X110_Y27_N0
\laprst_debouncer|s_debounceCnt[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt[15]~18_combout\ = (\laprst_debouncer|s_dirtyIn~q\ & (\laprst_debouncer|s_debounceCnt[15]~17_combout\ & ((!\laprst_debouncer|LessThan0~3_combout\) # (!\laprst_debouncer|s_debounceCnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(16),
	datab => \laprst_debouncer|LessThan0~3_combout\,
	datac => \laprst_debouncer|s_dirtyIn~q\,
	datad => \laprst_debouncer|s_debounceCnt[15]~17_combout\,
	combout => \laprst_debouncer|s_debounceCnt[15]~18_combout\);

-- Location: FF_X109_Y27_N21
\laprst_debouncer|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \laprst_debouncer|s_debounceCnt[15]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(15));

-- Location: LCCOMB_X109_Y27_N12
\laprst_debouncer|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|LessThan0~1_combout\ = (\laprst_debouncer|s_debounceCnt\(6)) # ((\laprst_debouncer|s_debounceCnt\(5) & ((\laprst_debouncer|s_debounceCnt\(0)) # (!\laprst_debouncer|s_pulsedOut~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(6),
	datab => \laprst_debouncer|s_debounceCnt\(0),
	datac => \laprst_debouncer|s_pulsedOut~4_combout\,
	datad => \laprst_debouncer|s_debounceCnt\(5),
	combout => \laprst_debouncer|LessThan0~1_combout\);

-- Location: LCCOMB_X109_Y27_N2
\laprst_debouncer|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|LessThan0~2_combout\ = (\laprst_debouncer|s_debounceCnt\(9) & ((\laprst_debouncer|s_debounceCnt\(8)) # ((\laprst_debouncer|LessThan0~1_combout\ & \laprst_debouncer|s_debounceCnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|LessThan0~1_combout\,
	datab => \laprst_debouncer|s_debounceCnt\(8),
	datac => \laprst_debouncer|s_debounceCnt\(9),
	datad => \laprst_debouncer|s_debounceCnt\(7),
	combout => \laprst_debouncer|LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y27_N24
\laprst_debouncer|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|LessThan0~3_combout\ = (\laprst_debouncer|s_debounceCnt\(15) & (((\laprst_debouncer|s_debounceCnt\(10) & \laprst_debouncer|LessThan0~2_combout\)) # (!\laprst_debouncer|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(10),
	datab => \laprst_debouncer|LessThan0~0_combout\,
	datac => \laprst_debouncer|s_debounceCnt\(15),
	datad => \laprst_debouncer|LessThan0~2_combout\,
	combout => \laprst_debouncer|LessThan0~3_combout\);

-- Location: LCCOMB_X108_Y27_N16
\laprst_debouncer|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~32_combout\ = \laprst_debouncer|Add0~31\ $ (\laprst_debouncer|s_debounceCnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \laprst_debouncer|s_debounceCnt\(16),
	cin => \laprst_debouncer|Add0~31\,
	combout => \laprst_debouncer|Add0~32_combout\);

-- Location: LCCOMB_X110_Y27_N16
\laprst_debouncer|s_debounceCnt[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt[16]~4_combout\ = (\laprst_debouncer|s_previousIn~q\ & (((!\laprst_debouncer|s_debounceCnt\(16) & !\laprst_debouncer|s_debounceCnt[1]~2_combout\)) # (!\laprst_debouncer|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(16),
	datab => \laprst_debouncer|s_debounceCnt[1]~2_combout\,
	datac => \laprst_debouncer|Add0~32_combout\,
	datad => \laprst_debouncer|s_previousIn~q\,
	combout => \laprst_debouncer|s_debounceCnt[16]~4_combout\);

-- Location: LCCOMB_X110_Y27_N30
\laprst_debouncer|s_debounceCnt[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt[16]~5_combout\ = (\laprst_debouncer|s_dirtyIn~q\ & (!\laprst_debouncer|s_debounceCnt[16]~4_combout\ & ((!\laprst_debouncer|s_debounceCnt\(16)) # (!\laprst_debouncer|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_dirtyIn~q\,
	datab => \laprst_debouncer|LessThan0~3_combout\,
	datac => \laprst_debouncer|s_debounceCnt\(16),
	datad => \laprst_debouncer|s_debounceCnt[16]~4_combout\,
	combout => \laprst_debouncer|s_debounceCnt[16]~5_combout\);

-- Location: FF_X110_Y27_N31
\laprst_debouncer|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(16));

-- Location: LCCOMB_X109_Y27_N6
\laprst_debouncer|s_debounceCnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt[1]~0_combout\ = (\laprst_debouncer|s_previousIn~q\ & (\laprst_debouncer|s_dirtyIn~q\ & ((!\laprst_debouncer|LessThan0~3_combout\) # (!\laprst_debouncer|s_debounceCnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(16),
	datab => \laprst_debouncer|LessThan0~3_combout\,
	datac => \laprst_debouncer|s_previousIn~q\,
	datad => \laprst_debouncer|s_dirtyIn~q\,
	combout => \laprst_debouncer|s_debounceCnt[1]~0_combout\);

-- Location: LCCOMB_X108_Y28_N12
\laprst_debouncer|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~1_combout\ = (\laprst_debouncer|Add0~0_combout\ & \laprst_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|Add0~0_combout\,
	datad => \laprst_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \laprst_debouncer|s_debounceCnt~1_combout\);

-- Location: FF_X108_Y28_N13
\laprst_debouncer|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~1_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(0));

-- Location: LCCOMB_X108_Y28_N18
\laprst_debouncer|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~2_combout\ = (\laprst_debouncer|s_debounceCnt\(1) & (\laprst_debouncer|Add0~1\ & VCC)) # (!\laprst_debouncer|s_debounceCnt\(1) & (!\laprst_debouncer|Add0~1\))
-- \laprst_debouncer|Add0~3\ = CARRY((!\laprst_debouncer|s_debounceCnt\(1) & !\laprst_debouncer|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|s_debounceCnt\(1),
	datad => VCC,
	cin => \laprst_debouncer|Add0~1\,
	combout => \laprst_debouncer|Add0~2_combout\,
	cout => \laprst_debouncer|Add0~3\);

-- Location: LCCOMB_X108_Y28_N0
\laprst_debouncer|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~19_combout\ = (\laprst_debouncer|Add0~2_combout\ & \laprst_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|Add0~2_combout\,
	datad => \laprst_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \laprst_debouncer|s_debounceCnt~19_combout\);

-- Location: FF_X108_Y28_N1
\laprst_debouncer|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~19_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(1));

-- Location: LCCOMB_X108_Y28_N20
\laprst_debouncer|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~4_combout\ = (\laprst_debouncer|s_debounceCnt\(2) & ((GND) # (!\laprst_debouncer|Add0~3\))) # (!\laprst_debouncer|s_debounceCnt\(2) & (\laprst_debouncer|Add0~3\ $ (GND)))
-- \laprst_debouncer|Add0~5\ = CARRY((\laprst_debouncer|s_debounceCnt\(2)) # (!\laprst_debouncer|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(2),
	datad => VCC,
	cin => \laprst_debouncer|Add0~3\,
	combout => \laprst_debouncer|Add0~4_combout\,
	cout => \laprst_debouncer|Add0~5\);

-- Location: LCCOMB_X108_Y28_N6
\laprst_debouncer|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~20_combout\ = (\laprst_debouncer|Add0~4_combout\ & \laprst_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|Add0~4_combout\,
	datad => \laprst_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \laprst_debouncer|s_debounceCnt~20_combout\);

-- Location: FF_X108_Y28_N7
\laprst_debouncer|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~20_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(2));

-- Location: LCCOMB_X108_Y28_N22
\laprst_debouncer|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~6_combout\ = (\laprst_debouncer|s_debounceCnt\(3) & (\laprst_debouncer|Add0~5\ & VCC)) # (!\laprst_debouncer|s_debounceCnt\(3) & (!\laprst_debouncer|Add0~5\))
-- \laprst_debouncer|Add0~7\ = CARRY((!\laprst_debouncer|s_debounceCnt\(3) & !\laprst_debouncer|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|s_debounceCnt\(3),
	datad => VCC,
	cin => \laprst_debouncer|Add0~5\,
	combout => \laprst_debouncer|Add0~6_combout\,
	cout => \laprst_debouncer|Add0~7\);

-- Location: LCCOMB_X108_Y28_N8
\laprst_debouncer|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~21_combout\ = (\laprst_debouncer|Add0~6_combout\ & \laprst_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \laprst_debouncer|Add0~6_combout\,
	datad => \laprst_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \laprst_debouncer|s_debounceCnt~21_combout\);

-- Location: FF_X108_Y28_N9
\laprst_debouncer|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~21_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(3));

-- Location: LCCOMB_X108_Y28_N24
\laprst_debouncer|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|Add0~8_combout\ = (\laprst_debouncer|s_debounceCnt\(4) & ((GND) # (!\laprst_debouncer|Add0~7\))) # (!\laprst_debouncer|s_debounceCnt\(4) & (\laprst_debouncer|Add0~7\ $ (GND)))
-- \laprst_debouncer|Add0~9\ = CARRY((\laprst_debouncer|s_debounceCnt\(4)) # (!\laprst_debouncer|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(4),
	datad => VCC,
	cin => \laprst_debouncer|Add0~7\,
	combout => \laprst_debouncer|Add0~8_combout\,
	cout => \laprst_debouncer|Add0~9\);

-- Location: LCCOMB_X108_Y28_N10
\laprst_debouncer|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~22_combout\ = (\laprst_debouncer|Add0~8_combout\ & \laprst_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|Add0~8_combout\,
	datad => \laprst_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \laprst_debouncer|s_debounceCnt~22_combout\);

-- Location: FF_X108_Y28_N11
\laprst_debouncer|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~22_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(4));

-- Location: LCCOMB_X109_Y27_N30
\laprst_debouncer|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_debounceCnt~11_combout\ = (\laprst_debouncer|s_debounceCnt[1]~10_combout\ & ((\laprst_debouncer|Add0~10_combout\) # (!\laprst_debouncer|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|Add0~10_combout\,
	datac => \laprst_debouncer|s_previousIn~q\,
	datad => \laprst_debouncer|s_debounceCnt[1]~10_combout\,
	combout => \laprst_debouncer|s_debounceCnt~11_combout\);

-- Location: FF_X109_Y27_N31
\laprst_debouncer|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_debounceCnt~11_combout\,
	ena => \laprst_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_debounceCnt\(5));

-- Location: LCCOMB_X109_Y27_N10
\laprst_debouncer|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_pulsedOut~1_combout\ = (!\laprst_debouncer|s_debounceCnt\(5) & (!\laprst_debouncer|s_debounceCnt\(7) & (!\laprst_debouncer|s_debounceCnt\(6) & !\laprst_debouncer|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(5),
	datab => \laprst_debouncer|s_debounceCnt\(7),
	datac => \laprst_debouncer|s_debounceCnt\(6),
	datad => \laprst_debouncer|s_debounceCnt\(8),
	combout => \laprst_debouncer|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X109_Y27_N18
\laprst_debouncer|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_pulsedOut~2_combout\ = (!\laprst_debouncer|s_debounceCnt\(10) & (!\laprst_debouncer|s_debounceCnt\(9) & !\laprst_debouncer|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(10),
	datab => \laprst_debouncer|s_debounceCnt\(9),
	datac => \laprst_debouncer|s_debounceCnt\(15),
	combout => \laprst_debouncer|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X109_Y27_N22
\laprst_debouncer|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_pulsedOut~3_combout\ = (\laprst_debouncer|s_pulsedOut~1_combout\ & (\laprst_debouncer|s_pulsedOut~2_combout\ & \laprst_debouncer|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_pulsedOut~1_combout\,
	datab => \laprst_debouncer|s_pulsedOut~2_combout\,
	datad => \laprst_debouncer|LessThan0~0_combout\,
	combout => \laprst_debouncer|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X109_Y27_N16
\laprst_debouncer|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_pulsedOut~0_combout\ = (!\laprst_debouncer|s_debounceCnt\(16) & (\laprst_debouncer|s_debounceCnt\(0) & (\laprst_debouncer|s_previousIn~q\ & \laprst_debouncer|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_debounceCnt\(16),
	datab => \laprst_debouncer|s_debounceCnt\(0),
	datac => \laprst_debouncer|s_previousIn~q\,
	datad => \laprst_debouncer|s_dirtyIn~q\,
	combout => \laprst_debouncer|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X109_Y27_N8
\laprst_debouncer|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \laprst_debouncer|s_pulsedOut~5_combout\ = (\laprst_debouncer|s_pulsedOut~3_combout\ & (\laprst_debouncer|s_pulsedOut~4_combout\ & \laprst_debouncer|s_pulsedOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \laprst_debouncer|s_pulsedOut~3_combout\,
	datac => \laprst_debouncer|s_pulsedOut~4_combout\,
	datad => \laprst_debouncer|s_pulsedOut~0_combout\,
	combout => \laprst_debouncer|s_pulsedOut~5_combout\);

-- Location: FF_X109_Y27_N9
\laprst_debouncer|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \laprst_debouncer|s_pulsedOut~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \laprst_debouncer|s_pulsedOut~q\);

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

-- Location: LCCOMB_X111_Y22_N28
\statop_debouncer|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \statop_debouncer|s_dirtyIn~0_combout\);

-- Location: FF_X111_Y22_N29
\statop_debouncer|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_dirtyIn~q\);

-- Location: LCCOMB_X103_Y22_N2
\statop_debouncer|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_previousIn~feeder_combout\ = \statop_debouncer|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \statop_debouncer|s_dirtyIn~q\,
	combout => \statop_debouncer|s_previousIn~feeder_combout\);

-- Location: FF_X103_Y22_N3
\statop_debouncer|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_previousIn~q\);

-- Location: LCCOMB_X102_Y23_N16
\statop_debouncer|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~0_combout\ = \statop_debouncer|s_debounceCnt\(0) $ (VCC)
-- \statop_debouncer|Add0~1\ = CARRY(\statop_debouncer|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(0),
	datad => VCC,
	combout => \statop_debouncer|Add0~0_combout\,
	cout => \statop_debouncer|Add0~1\);

-- Location: LCCOMB_X102_Y23_N8
\statop_debouncer|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_pulsedOut~4_combout\ = (!\statop_debouncer|s_debounceCnt\(4) & (!\statop_debouncer|s_debounceCnt\(2) & (!\statop_debouncer|s_debounceCnt\(3) & !\statop_debouncer|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(4),
	datab => \statop_debouncer|s_debounceCnt\(2),
	datac => \statop_debouncer|s_debounceCnt\(3),
	datad => \statop_debouncer|s_debounceCnt\(1),
	combout => \statop_debouncer|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X103_Y22_N22
\statop_debouncer|s_debounceCnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt[1]~2_combout\ = (\statop_debouncer|s_debounceCnt\(0)) # ((!\statop_debouncer|s_pulsedOut~3_combout\) # (!\statop_debouncer|s_pulsedOut~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(0),
	datac => \statop_debouncer|s_pulsedOut~4_combout\,
	datad => \statop_debouncer|s_pulsedOut~3_combout\,
	combout => \statop_debouncer|s_debounceCnt[1]~2_combout\);

-- Location: LCCOMB_X102_Y22_N6
\statop_debouncer|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~22_combout\ = (\statop_debouncer|s_debounceCnt\(11) & (\statop_debouncer|Add0~21\ & VCC)) # (!\statop_debouncer|s_debounceCnt\(11) & (!\statop_debouncer|Add0~21\))
-- \statop_debouncer|Add0~23\ = CARRY((!\statop_debouncer|s_debounceCnt\(11) & !\statop_debouncer|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(11),
	datad => VCC,
	cin => \statop_debouncer|Add0~21\,
	combout => \statop_debouncer|Add0~22_combout\,
	cout => \statop_debouncer|Add0~23\);

-- Location: LCCOMB_X102_Y22_N8
\statop_debouncer|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~24_combout\ = (\statop_debouncer|s_debounceCnt\(12) & ((GND) # (!\statop_debouncer|Add0~23\))) # (!\statop_debouncer|s_debounceCnt\(12) & (\statop_debouncer|Add0~23\ $ (GND)))
-- \statop_debouncer|Add0~25\ = CARRY((\statop_debouncer|s_debounceCnt\(12)) # (!\statop_debouncer|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|s_debounceCnt\(12),
	datad => VCC,
	cin => \statop_debouncer|Add0~23\,
	combout => \statop_debouncer|Add0~24_combout\,
	cout => \statop_debouncer|Add0~25\);

-- Location: LCCOMB_X102_Y22_N20
\statop_debouncer|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~7_combout\ = (\statop_debouncer|Add0~24_combout\ & \statop_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \statop_debouncer|Add0~24_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \statop_debouncer|s_debounceCnt~7_combout\);

-- Location: LCCOMB_X103_Y22_N28
\statop_debouncer|s_debounceCnt[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt[1]~3_combout\ = (\statop_debouncer|s_debounceCnt\(16)) # (((\statop_debouncer|s_debounceCnt[1]~2_combout\) # (!\statop_debouncer|s_dirtyIn~q\)) # (!\statop_debouncer|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(16),
	datab => \statop_debouncer|s_previousIn~q\,
	datac => \statop_debouncer|s_debounceCnt[1]~2_combout\,
	datad => \statop_debouncer|s_dirtyIn~q\,
	combout => \statop_debouncer|s_debounceCnt[1]~3_combout\);

-- Location: FF_X102_Y22_N21
\statop_debouncer|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~7_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(12));

-- Location: LCCOMB_X102_Y22_N10
\statop_debouncer|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~26_combout\ = (\statop_debouncer|s_debounceCnt\(13) & (\statop_debouncer|Add0~25\ & VCC)) # (!\statop_debouncer|s_debounceCnt\(13) & (!\statop_debouncer|Add0~25\))
-- \statop_debouncer|Add0~27\ = CARRY((!\statop_debouncer|s_debounceCnt\(13) & !\statop_debouncer|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(13),
	datad => VCC,
	cin => \statop_debouncer|Add0~25\,
	combout => \statop_debouncer|Add0~26_combout\,
	cout => \statop_debouncer|Add0~27\);

-- Location: LCCOMB_X102_Y22_N22
\statop_debouncer|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~8_combout\ = (\statop_debouncer|Add0~26_combout\ & \statop_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|Add0~26_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \statop_debouncer|s_debounceCnt~8_combout\);

-- Location: FF_X102_Y22_N23
\statop_debouncer|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~8_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(13));

-- Location: LCCOMB_X102_Y22_N12
\statop_debouncer|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~28_combout\ = (\statop_debouncer|s_debounceCnt\(14) & ((GND) # (!\statop_debouncer|Add0~27\))) # (!\statop_debouncer|s_debounceCnt\(14) & (\statop_debouncer|Add0~27\ $ (GND)))
-- \statop_debouncer|Add0~29\ = CARRY((\statop_debouncer|s_debounceCnt\(14)) # (!\statop_debouncer|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|s_debounceCnt\(14),
	datad => VCC,
	cin => \statop_debouncer|Add0~27\,
	combout => \statop_debouncer|Add0~28_combout\,
	cout => \statop_debouncer|Add0~29\);

-- Location: LCCOMB_X102_Y22_N24
\statop_debouncer|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~9_combout\ = (\statop_debouncer|Add0~28_combout\ & \statop_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \statop_debouncer|Add0~28_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \statop_debouncer|s_debounceCnt~9_combout\);

-- Location: FF_X102_Y22_N25
\statop_debouncer|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~9_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(14));

-- Location: LCCOMB_X102_Y22_N14
\statop_debouncer|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~30_combout\ = (\statop_debouncer|s_debounceCnt\(15) & (\statop_debouncer|Add0~29\ & VCC)) # (!\statop_debouncer|s_debounceCnt\(15) & (!\statop_debouncer|Add0~29\))
-- \statop_debouncer|Add0~31\ = CARRY((!\statop_debouncer|s_debounceCnt\(15) & !\statop_debouncer|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|s_debounceCnt\(15),
	datad => VCC,
	cin => \statop_debouncer|Add0~29\,
	combout => \statop_debouncer|Add0~30_combout\,
	cout => \statop_debouncer|Add0~31\);

-- Location: LCCOMB_X103_Y22_N6
\statop_debouncer|s_debounceCnt[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt[15]~17_combout\ = ((\statop_debouncer|Add0~30_combout\ & ((\statop_debouncer|s_debounceCnt\(16)) # (\statop_debouncer|s_debounceCnt[1]~2_combout\)))) # (!\statop_debouncer|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|Add0~30_combout\,
	datab => \statop_debouncer|s_debounceCnt\(16),
	datac => \statop_debouncer|s_debounceCnt[1]~2_combout\,
	datad => \statop_debouncer|s_previousIn~q\,
	combout => \statop_debouncer|s_debounceCnt[15]~17_combout\);

-- Location: LCCOMB_X102_Y23_N14
\statop_debouncer|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|LessThan0~1_combout\ = (\statop_debouncer|s_debounceCnt\(6)) # ((\statop_debouncer|s_debounceCnt\(5) & ((\statop_debouncer|s_debounceCnt\(0)) # (!\statop_debouncer|s_pulsedOut~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(6),
	datab => \statop_debouncer|s_debounceCnt\(0),
	datac => \statop_debouncer|s_pulsedOut~4_combout\,
	datad => \statop_debouncer|s_debounceCnt\(5),
	combout => \statop_debouncer|LessThan0~1_combout\);

-- Location: LCCOMB_X103_Y23_N30
\statop_debouncer|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|LessThan0~2_combout\ = (\statop_debouncer|s_debounceCnt\(9) & ((\statop_debouncer|s_debounceCnt\(8)) # ((\statop_debouncer|LessThan0~1_combout\ & \statop_debouncer|s_debounceCnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|LessThan0~1_combout\,
	datab => \statop_debouncer|s_debounceCnt\(7),
	datac => \statop_debouncer|s_debounceCnt\(8),
	datad => \statop_debouncer|s_debounceCnt\(9),
	combout => \statop_debouncer|LessThan0~2_combout\);

-- Location: LCCOMB_X103_Y22_N14
\statop_debouncer|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|LessThan0~3_combout\ = (\statop_debouncer|s_debounceCnt\(15) & (((\statop_debouncer|s_debounceCnt\(10) & \statop_debouncer|LessThan0~2_combout\)) # (!\statop_debouncer|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(10),
	datab => \statop_debouncer|s_debounceCnt\(15),
	datac => \statop_debouncer|LessThan0~2_combout\,
	datad => \statop_debouncer|LessThan0~0_combout\,
	combout => \statop_debouncer|LessThan0~3_combout\);

-- Location: LCCOMB_X103_Y22_N8
\statop_debouncer|s_debounceCnt[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt[15]~18_combout\ = (\statop_debouncer|s_debounceCnt[15]~17_combout\ & (\statop_debouncer|s_dirtyIn~q\ & ((!\statop_debouncer|LessThan0~3_combout\) # (!\statop_debouncer|s_debounceCnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt[15]~17_combout\,
	datab => \statop_debouncer|s_debounceCnt\(16),
	datac => \statop_debouncer|LessThan0~3_combout\,
	datad => \statop_debouncer|s_dirtyIn~q\,
	combout => \statop_debouncer|s_debounceCnt[15]~18_combout\);

-- Location: FF_X103_Y22_N9
\statop_debouncer|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(15));

-- Location: LCCOMB_X102_Y22_N16
\statop_debouncer|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~32_combout\ = \statop_debouncer|Add0~31\ $ (\statop_debouncer|s_debounceCnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \statop_debouncer|s_debounceCnt\(16),
	cin => \statop_debouncer|Add0~31\,
	combout => \statop_debouncer|Add0~32_combout\);

-- Location: LCCOMB_X103_Y22_N10
\statop_debouncer|s_debounceCnt[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt[16]~4_combout\ = (\statop_debouncer|s_previousIn~q\ & (((!\statop_debouncer|s_debounceCnt[1]~2_combout\ & !\statop_debouncer|s_debounceCnt\(16))) # (!\statop_debouncer|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt[1]~2_combout\,
	datab => \statop_debouncer|s_debounceCnt\(16),
	datac => \statop_debouncer|Add0~32_combout\,
	datad => \statop_debouncer|s_previousIn~q\,
	combout => \statop_debouncer|s_debounceCnt[16]~4_combout\);

-- Location: LCCOMB_X103_Y22_N24
\statop_debouncer|s_debounceCnt[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt[16]~5_combout\ = (!\statop_debouncer|s_debounceCnt[16]~4_combout\ & (\statop_debouncer|s_dirtyIn~q\ & ((!\statop_debouncer|s_debounceCnt\(16)) # (!\statop_debouncer|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt[16]~4_combout\,
	datab => \statop_debouncer|LessThan0~3_combout\,
	datac => \statop_debouncer|s_debounceCnt\(16),
	datad => \statop_debouncer|s_dirtyIn~q\,
	combout => \statop_debouncer|s_debounceCnt[16]~5_combout\);

-- Location: FF_X103_Y22_N25
\statop_debouncer|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(16));

-- Location: LCCOMB_X103_Y22_N16
\statop_debouncer|s_debounceCnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt[1]~0_combout\ = (\statop_debouncer|s_previousIn~q\ & (\statop_debouncer|s_dirtyIn~q\ & ((!\statop_debouncer|LessThan0~3_combout\) # (!\statop_debouncer|s_debounceCnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(16),
	datab => \statop_debouncer|s_previousIn~q\,
	datac => \statop_debouncer|LessThan0~3_combout\,
	datad => \statop_debouncer|s_dirtyIn~q\,
	combout => \statop_debouncer|s_debounceCnt[1]~0_combout\);

-- Location: LCCOMB_X102_Y23_N12
\statop_debouncer|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~1_combout\ = (\statop_debouncer|Add0~0_combout\ & \statop_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|Add0~0_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \statop_debouncer|s_debounceCnt~1_combout\);

-- Location: FF_X102_Y23_N13
\statop_debouncer|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~1_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(0));

-- Location: LCCOMB_X102_Y23_N18
\statop_debouncer|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~2_combout\ = (\statop_debouncer|s_debounceCnt\(1) & (\statop_debouncer|Add0~1\ & VCC)) # (!\statop_debouncer|s_debounceCnt\(1) & (!\statop_debouncer|Add0~1\))
-- \statop_debouncer|Add0~3\ = CARRY((!\statop_debouncer|s_debounceCnt\(1) & !\statop_debouncer|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|s_debounceCnt\(1),
	datad => VCC,
	cin => \statop_debouncer|Add0~1\,
	combout => \statop_debouncer|Add0~2_combout\,
	cout => \statop_debouncer|Add0~3\);

-- Location: LCCOMB_X102_Y23_N0
\statop_debouncer|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~19_combout\ = (\statop_debouncer|Add0~2_combout\ & \statop_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|Add0~2_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \statop_debouncer|s_debounceCnt~19_combout\);

-- Location: FF_X102_Y23_N1
\statop_debouncer|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~19_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(1));

-- Location: LCCOMB_X102_Y23_N20
\statop_debouncer|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~4_combout\ = (\statop_debouncer|s_debounceCnt\(2) & ((GND) # (!\statop_debouncer|Add0~3\))) # (!\statop_debouncer|s_debounceCnt\(2) & (\statop_debouncer|Add0~3\ $ (GND)))
-- \statop_debouncer|Add0~5\ = CARRY((\statop_debouncer|s_debounceCnt\(2)) # (!\statop_debouncer|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|s_debounceCnt\(2),
	datad => VCC,
	cin => \statop_debouncer|Add0~3\,
	combout => \statop_debouncer|Add0~4_combout\,
	cout => \statop_debouncer|Add0~5\);

-- Location: LCCOMB_X102_Y23_N2
\statop_debouncer|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~20_combout\ = (\statop_debouncer|Add0~4_combout\ & \statop_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|Add0~4_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \statop_debouncer|s_debounceCnt~20_combout\);

-- Location: FF_X102_Y23_N3
\statop_debouncer|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~20_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(2));

-- Location: LCCOMB_X102_Y23_N22
\statop_debouncer|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~6_combout\ = (\statop_debouncer|s_debounceCnt\(3) & (\statop_debouncer|Add0~5\ & VCC)) # (!\statop_debouncer|s_debounceCnt\(3) & (!\statop_debouncer|Add0~5\))
-- \statop_debouncer|Add0~7\ = CARRY((!\statop_debouncer|s_debounceCnt\(3) & !\statop_debouncer|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|s_debounceCnt\(3),
	datad => VCC,
	cin => \statop_debouncer|Add0~5\,
	combout => \statop_debouncer|Add0~6_combout\,
	cout => \statop_debouncer|Add0~7\);

-- Location: LCCOMB_X102_Y23_N4
\statop_debouncer|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~21_combout\ = (\statop_debouncer|Add0~6_combout\ & \statop_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \statop_debouncer|Add0~6_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \statop_debouncer|s_debounceCnt~21_combout\);

-- Location: FF_X102_Y23_N5
\statop_debouncer|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~21_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(3));

-- Location: LCCOMB_X102_Y23_N24
\statop_debouncer|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~8_combout\ = (\statop_debouncer|s_debounceCnt\(4) & ((GND) # (!\statop_debouncer|Add0~7\))) # (!\statop_debouncer|s_debounceCnt\(4) & (\statop_debouncer|Add0~7\ $ (GND)))
-- \statop_debouncer|Add0~9\ = CARRY((\statop_debouncer|s_debounceCnt\(4)) # (!\statop_debouncer|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(4),
	datad => VCC,
	cin => \statop_debouncer|Add0~7\,
	combout => \statop_debouncer|Add0~8_combout\,
	cout => \statop_debouncer|Add0~9\);

-- Location: LCCOMB_X102_Y23_N10
\statop_debouncer|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~22_combout\ = (\statop_debouncer|Add0~8_combout\ & \statop_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|Add0~8_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \statop_debouncer|s_debounceCnt~22_combout\);

-- Location: FF_X102_Y23_N11
\statop_debouncer|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~22_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(4));

-- Location: LCCOMB_X102_Y23_N26
\statop_debouncer|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~10_combout\ = (\statop_debouncer|s_debounceCnt\(5) & (\statop_debouncer|Add0~9\ & VCC)) # (!\statop_debouncer|s_debounceCnt\(5) & (!\statop_debouncer|Add0~9\))
-- \statop_debouncer|Add0~11\ = CARRY((!\statop_debouncer|s_debounceCnt\(5) & !\statop_debouncer|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(5),
	datad => VCC,
	cin => \statop_debouncer|Add0~9\,
	combout => \statop_debouncer|Add0~10_combout\,
	cout => \statop_debouncer|Add0~11\);

-- Location: LCCOMB_X103_Y22_N0
\statop_debouncer|s_debounceCnt[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt[1]~10_combout\ = (\statop_debouncer|s_dirtyIn~q\ & ((!\statop_debouncer|LessThan0~3_combout\) # (!\statop_debouncer|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|s_debounceCnt\(16),
	datac => \statop_debouncer|LessThan0~3_combout\,
	datad => \statop_debouncer|s_dirtyIn~q\,
	combout => \statop_debouncer|s_debounceCnt[1]~10_combout\);

-- Location: LCCOMB_X103_Y23_N4
\statop_debouncer|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~11_combout\ = (\statop_debouncer|s_debounceCnt[1]~10_combout\ & ((\statop_debouncer|Add0~10_combout\) # (!\statop_debouncer|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_previousIn~q\,
	datac => \statop_debouncer|Add0~10_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~10_combout\,
	combout => \statop_debouncer|s_debounceCnt~11_combout\);

-- Location: FF_X103_Y23_N5
\statop_debouncer|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~11_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(5));

-- Location: LCCOMB_X102_Y23_N28
\statop_debouncer|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~12_combout\ = (\statop_debouncer|s_debounceCnt\(6) & ((GND) # (!\statop_debouncer|Add0~11\))) # (!\statop_debouncer|s_debounceCnt\(6) & (\statop_debouncer|Add0~11\ $ (GND)))
-- \statop_debouncer|Add0~13\ = CARRY((\statop_debouncer|s_debounceCnt\(6)) # (!\statop_debouncer|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(6),
	datad => VCC,
	cin => \statop_debouncer|Add0~11\,
	combout => \statop_debouncer|Add0~12_combout\,
	cout => \statop_debouncer|Add0~13\);

-- Location: LCCOMB_X102_Y23_N6
\statop_debouncer|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~12_combout\ = (\statop_debouncer|Add0~12_combout\ & \statop_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|Add0~12_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \statop_debouncer|s_debounceCnt~12_combout\);

-- Location: FF_X102_Y23_N7
\statop_debouncer|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~12_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(6));

-- Location: LCCOMB_X102_Y23_N30
\statop_debouncer|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~14_combout\ = (\statop_debouncer|s_debounceCnt\(7) & (\statop_debouncer|Add0~13\ & VCC)) # (!\statop_debouncer|s_debounceCnt\(7) & (!\statop_debouncer|Add0~13\))
-- \statop_debouncer|Add0~15\ = CARRY((!\statop_debouncer|s_debounceCnt\(7) & !\statop_debouncer|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|s_debounceCnt\(7),
	datad => VCC,
	cin => \statop_debouncer|Add0~13\,
	combout => \statop_debouncer|Add0~14_combout\,
	cout => \statop_debouncer|Add0~15\);

-- Location: LCCOMB_X103_Y23_N18
\statop_debouncer|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~13_combout\ = (\statop_debouncer|s_debounceCnt[1]~10_combout\ & ((\statop_debouncer|Add0~14_combout\) # (!\statop_debouncer|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_previousIn~q\,
	datab => \statop_debouncer|Add0~14_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~10_combout\,
	combout => \statop_debouncer|s_debounceCnt~13_combout\);

-- Location: FF_X103_Y23_N19
\statop_debouncer|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~13_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(7));

-- Location: LCCOMB_X102_Y22_N0
\statop_debouncer|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~16_combout\ = (\statop_debouncer|s_debounceCnt\(8) & ((GND) # (!\statop_debouncer|Add0~15\))) # (!\statop_debouncer|s_debounceCnt\(8) & (\statop_debouncer|Add0~15\ $ (GND)))
-- \statop_debouncer|Add0~17\ = CARRY((\statop_debouncer|s_debounceCnt\(8)) # (!\statop_debouncer|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|s_debounceCnt\(8),
	datad => VCC,
	cin => \statop_debouncer|Add0~15\,
	combout => \statop_debouncer|Add0~16_combout\,
	cout => \statop_debouncer|Add0~17\);

-- Location: LCCOMB_X102_Y22_N28
\statop_debouncer|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~14_combout\ = (\statop_debouncer|Add0~16_combout\ & \statop_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|Add0~16_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \statop_debouncer|s_debounceCnt~14_combout\);

-- Location: FF_X102_Y22_N29
\statop_debouncer|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~14_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(8));

-- Location: LCCOMB_X102_Y22_N2
\statop_debouncer|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~18_combout\ = (\statop_debouncer|s_debounceCnt\(9) & (\statop_debouncer|Add0~17\ & VCC)) # (!\statop_debouncer|s_debounceCnt\(9) & (!\statop_debouncer|Add0~17\))
-- \statop_debouncer|Add0~19\ = CARRY((!\statop_debouncer|s_debounceCnt\(9) & !\statop_debouncer|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(9),
	datad => VCC,
	cin => \statop_debouncer|Add0~17\,
	combout => \statop_debouncer|Add0~18_combout\,
	cout => \statop_debouncer|Add0~19\);

-- Location: LCCOMB_X103_Y22_N4
\statop_debouncer|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~15_combout\ = (\statop_debouncer|s_debounceCnt[1]~10_combout\ & ((\statop_debouncer|Add0~18_combout\) # (!\statop_debouncer|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|Add0~18_combout\,
	datab => \statop_debouncer|s_previousIn~q\,
	datad => \statop_debouncer|s_debounceCnt[1]~10_combout\,
	combout => \statop_debouncer|s_debounceCnt~15_combout\);

-- Location: FF_X103_Y22_N5
\statop_debouncer|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~15_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(9));

-- Location: LCCOMB_X102_Y22_N4
\statop_debouncer|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|Add0~20_combout\ = (\statop_debouncer|s_debounceCnt\(10) & ((GND) # (!\statop_debouncer|Add0~19\))) # (!\statop_debouncer|s_debounceCnt\(10) & (\statop_debouncer|Add0~19\ $ (GND)))
-- \statop_debouncer|Add0~21\ = CARRY((\statop_debouncer|s_debounceCnt\(10)) # (!\statop_debouncer|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(10),
	datad => VCC,
	cin => \statop_debouncer|Add0~19\,
	combout => \statop_debouncer|Add0~20_combout\,
	cout => \statop_debouncer|Add0~21\);

-- Location: LCCOMB_X103_Y22_N30
\statop_debouncer|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~16_combout\ = (\statop_debouncer|s_debounceCnt[1]~10_combout\ & ((\statop_debouncer|Add0~20_combout\) # (!\statop_debouncer|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|s_previousIn~q\,
	datac => \statop_debouncer|Add0~20_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~10_combout\,
	combout => \statop_debouncer|s_debounceCnt~16_combout\);

-- Location: FF_X103_Y22_N31
\statop_debouncer|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~16_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(10));

-- Location: LCCOMB_X102_Y22_N26
\statop_debouncer|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_debounceCnt~6_combout\ = (\statop_debouncer|Add0~22_combout\ & \statop_debouncer|s_debounceCnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|Add0~22_combout\,
	datad => \statop_debouncer|s_debounceCnt[1]~0_combout\,
	combout => \statop_debouncer|s_debounceCnt~6_combout\);

-- Location: FF_X102_Y22_N27
\statop_debouncer|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_debounceCnt~6_combout\,
	ena => \statop_debouncer|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_debounceCnt\(11));

-- Location: LCCOMB_X102_Y22_N18
\statop_debouncer|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|LessThan0~0_combout\ = (!\statop_debouncer|s_debounceCnt\(11) & (!\statop_debouncer|s_debounceCnt\(14) & (!\statop_debouncer|s_debounceCnt\(13) & !\statop_debouncer|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(11),
	datab => \statop_debouncer|s_debounceCnt\(14),
	datac => \statop_debouncer|s_debounceCnt\(13),
	datad => \statop_debouncer|s_debounceCnt\(12),
	combout => \statop_debouncer|LessThan0~0_combout\);

-- Location: LCCOMB_X103_Y22_N26
\statop_debouncer|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_pulsedOut~2_combout\ = (!\statop_debouncer|s_debounceCnt\(10) & (!\statop_debouncer|s_debounceCnt\(9) & !\statop_debouncer|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(10),
	datab => \statop_debouncer|s_debounceCnt\(9),
	datac => \statop_debouncer|s_debounceCnt\(15),
	combout => \statop_debouncer|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X103_Y23_N20
\statop_debouncer|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_pulsedOut~1_combout\ = (!\statop_debouncer|s_debounceCnt\(8) & (!\statop_debouncer|s_debounceCnt\(6) & (!\statop_debouncer|s_debounceCnt\(5) & !\statop_debouncer|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(8),
	datab => \statop_debouncer|s_debounceCnt\(6),
	datac => \statop_debouncer|s_debounceCnt\(5),
	datad => \statop_debouncer|s_debounceCnt\(7),
	combout => \statop_debouncer|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X103_Y22_N12
\statop_debouncer|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_pulsedOut~3_combout\ = (\statop_debouncer|LessThan0~0_combout\ & (\statop_debouncer|s_pulsedOut~2_combout\ & \statop_debouncer|s_pulsedOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \statop_debouncer|LessThan0~0_combout\,
	datac => \statop_debouncer|s_pulsedOut~2_combout\,
	datad => \statop_debouncer|s_pulsedOut~1_combout\,
	combout => \statop_debouncer|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X103_Y22_N18
\statop_debouncer|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_pulsedOut~0_combout\ = (!\statop_debouncer|s_debounceCnt\(16) & (\statop_debouncer|s_previousIn~q\ & (\statop_debouncer|s_debounceCnt\(0) & \statop_debouncer|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_debounceCnt\(16),
	datab => \statop_debouncer|s_previousIn~q\,
	datac => \statop_debouncer|s_debounceCnt\(0),
	datad => \statop_debouncer|s_dirtyIn~q\,
	combout => \statop_debouncer|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X103_Y22_N20
\statop_debouncer|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \statop_debouncer|s_pulsedOut~5_combout\ = (\statop_debouncer|s_pulsedOut~3_combout\ & (\statop_debouncer|s_pulsedOut~4_combout\ & \statop_debouncer|s_pulsedOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop_debouncer|s_pulsedOut~3_combout\,
	datac => \statop_debouncer|s_pulsedOut~4_combout\,
	datad => \statop_debouncer|s_pulsedOut~0_combout\,
	combout => \statop_debouncer|s_pulsedOut~5_combout\);

-- Location: FF_X103_Y22_N21
\statop_debouncer|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \statop_debouncer|s_pulsedOut~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statop_debouncer|s_pulsedOut~q\);

-- Location: LCCOMB_X94_Y16_N30
\control_unit|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|s_currentState~15_combout\ = (\statop_debouncer|s_pulsedOut~q\ & ((\control_unit|s_currentState.STOPPED~q\) # (!\control_unit|s_currentState.CLEARED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit|s_currentState.CLEARED~q\,
	datab => \control_unit|s_currentState.STOPPED~q\,
	datad => \statop_debouncer|s_pulsedOut~q\,
	combout => \control_unit|s_currentState~15_combout\);

-- Location: LCCOMB_X95_Y16_N12
\control_unit|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|s_currentState~9_combout\ = (\KEY[3]~input_o\ & ((\statop_debouncer|s_pulsedOut~q\ & ((\control_unit|s_currentState.LAPVIEW~q\))) # (!\statop_debouncer|s_pulsedOut~q\ & (\control_unit|s_currentState.STOPPED1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \control_unit|s_currentState.STOPPED1~q\,
	datac => \statop_debouncer|s_pulsedOut~q\,
	datad => \control_unit|s_currentState.LAPVIEW~q\,
	combout => \control_unit|s_currentState~9_combout\);

-- Location: LCCOMB_X95_Y16_N24
\control_unit|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|s_currentState~10_combout\ = (!\laprst_debouncer|s_pulsedOut~q\ & \control_unit|s_currentState~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \laprst_debouncer|s_pulsedOut~q\,
	datad => \control_unit|s_currentState~9_combout\,
	combout => \control_unit|s_currentState~10_combout\);

-- Location: FF_X95_Y16_N25
\control_unit|s_currentState.STOPPED1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \control_unit|s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit|s_currentState.STOPPED1~q\);

-- Location: LCCOMB_X94_Y16_N24
\control_unit|s_currentState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|s_currentState~7_combout\ = (\statop_debouncer|s_pulsedOut~q\ & (((\control_unit|s_currentState.STOPPED1~q\)))) # (!\statop_debouncer|s_pulsedOut~q\ & (\control_unit|s_currentState.LAPVIEW~q\ & (!\laprst_debouncer|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit|s_currentState.LAPVIEW~q\,
	datab => \laprst_debouncer|s_pulsedOut~q\,
	datac => \control_unit|s_currentState.STOPPED1~q\,
	datad => \statop_debouncer|s_pulsedOut~q\,
	combout => \control_unit|s_currentState~7_combout\);

-- Location: LCCOMB_X95_Y16_N6
\control_unit|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|s_currentState~8_combout\ = (\KEY[3]~input_o\ & ((\control_unit|s_currentState~7_combout\) # ((\control_unit|s_currentState.STARTED~q\ & \laprst_debouncer|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit|s_currentState.STARTED~q\,
	datab => \control_unit|s_currentState~7_combout\,
	datac => \laprst_debouncer|s_pulsedOut~q\,
	datad => \KEY[3]~input_o\,
	combout => \control_unit|s_currentState~8_combout\);

-- Location: FF_X95_Y16_N7
\control_unit|s_currentState.LAPVIEW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \control_unit|s_currentState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit|s_currentState.LAPVIEW~q\);

-- Location: LCCOMB_X95_Y16_N30
\control_unit|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|s_currentState~16_combout\ = (\laprst_debouncer|s_pulsedOut~q\ & (((\control_unit|s_currentState.LAPVIEW~q\)))) # (!\laprst_debouncer|s_pulsedOut~q\ & (\control_unit|s_currentState.STARTED~q\ & (!\statop_debouncer|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_pulsedOut~q\,
	datab => \control_unit|s_currentState.STARTED~q\,
	datac => \statop_debouncer|s_pulsedOut~q\,
	datad => \control_unit|s_currentState.LAPVIEW~q\,
	combout => \control_unit|s_currentState~16_combout\);

-- Location: LCCOMB_X95_Y16_N22
\control_unit|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|s_currentState~17_combout\ = (\KEY[3]~input_o\ & ((\control_unit|s_currentState~15_combout\) # (\control_unit|s_currentState~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \control_unit|s_currentState~15_combout\,
	datac => \control_unit|s_currentState~16_combout\,
	combout => \control_unit|s_currentState~17_combout\);

-- Location: FF_X95_Y16_N23
\control_unit|s_currentState.STARTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \control_unit|s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit|s_currentState.STARTED~q\);

-- Location: LCCOMB_X95_Y16_N28
\control_unit|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|s_currentState~13_combout\ = (\laprst_debouncer|s_pulsedOut~q\ & (((\statop_debouncer|s_pulsedOut~q\)))) # (!\laprst_debouncer|s_pulsedOut~q\ & ((\statop_debouncer|s_pulsedOut~q\ & ((\control_unit|s_currentState.STARTED~q\))) # 
-- (!\statop_debouncer|s_pulsedOut~q\ & (\control_unit|s_currentState.STOPPED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_pulsedOut~q\,
	datab => \control_unit|s_currentState.STOPPED~q\,
	datac => \statop_debouncer|s_pulsedOut~q\,
	datad => \control_unit|s_currentState.STARTED~q\,
	combout => \control_unit|s_currentState~13_combout\);

-- Location: LCCOMB_X95_Y16_N8
\control_unit|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|s_currentState~14_combout\ = (\KEY[3]~input_o\ & ((\control_unit|s_currentState~13_combout\ & (!\laprst_debouncer|s_pulsedOut~q\)) # (!\control_unit|s_currentState~13_combout\ & (\laprst_debouncer|s_pulsedOut~q\ & 
-- \control_unit|s_currentState.STOPPED1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \control_unit|s_currentState~13_combout\,
	datac => \laprst_debouncer|s_pulsedOut~q\,
	datad => \control_unit|s_currentState.STOPPED1~q\,
	combout => \control_unit|s_currentState~14_combout\);

-- Location: FF_X95_Y16_N9
\control_unit|s_currentState.STOPPED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \control_unit|s_currentState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit|s_currentState.STOPPED~q\);

-- Location: LCCOMB_X95_Y16_N18
\control_unit|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|s_currentState~11_combout\ = (!\statop_debouncer|s_pulsedOut~q\ & (((\laprst_debouncer|s_pulsedOut~q\ & \control_unit|s_currentState.STOPPED~q\)) # (!\control_unit|s_currentState.CLEARED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst_debouncer|s_pulsedOut~q\,
	datab => \control_unit|s_currentState.STOPPED~q\,
	datac => \statop_debouncer|s_pulsedOut~q\,
	datad => \control_unit|s_currentState.CLEARED~q\,
	combout => \control_unit|s_currentState~11_combout\);

-- Location: LCCOMB_X95_Y16_N2
\control_unit|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|s_currentState~12_combout\ = (\KEY[3]~input_o\ & !\control_unit|s_currentState~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datad => \control_unit|s_currentState~11_combout\,
	combout => \control_unit|s_currentState~12_combout\);

-- Location: FF_X95_Y16_N3
\control_unit|s_currentState.CLEARED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \control_unit|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit|s_currentState.CLEARED~q\);

-- Location: LCCOMB_X94_Y16_N0
\bcd_counter|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~0_combout\ = (!\bcd_counter|s_count\(0) & \control_unit|s_currentState.CLEARED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|s_count\(0),
	datad => \control_unit|s_currentState.CLEARED~q\,
	combout => \bcd_counter|s_count~0_combout\);

-- Location: LCCOMB_X87_Y15_N12
\pulse_generator|s_counter[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[0]~20_combout\ = \pulse_generator|s_counter\(0) $ (VCC)
-- \pulse_generator|s_counter[0]~21\ = CARRY(\pulse_generator|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(0),
	datad => VCC,
	combout => \pulse_generator|s_counter[0]~20_combout\,
	cout => \pulse_generator|s_counter[0]~21\);

-- Location: LCCOMB_X87_Y15_N14
\pulse_generator|s_counter[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[1]~22_combout\ = (\pulse_generator|s_counter\(1) & (!\pulse_generator|s_counter[0]~21\)) # (!\pulse_generator|s_counter\(1) & ((\pulse_generator|s_counter[0]~21\) # (GND)))
-- \pulse_generator|s_counter[1]~23\ = CARRY((!\pulse_generator|s_counter[0]~21\) # (!\pulse_generator|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(1),
	datad => VCC,
	cin => \pulse_generator|s_counter[0]~21\,
	combout => \pulse_generator|s_counter[1]~22_combout\,
	cout => \pulse_generator|s_counter[1]~23\);

-- Location: FF_X87_Y15_N15
\pulse_generator|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[1]~22_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(1));

-- Location: LCCOMB_X87_Y15_N16
\pulse_generator|s_counter[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[2]~24_combout\ = (\pulse_generator|s_counter\(2) & (\pulse_generator|s_counter[1]~23\ $ (GND))) # (!\pulse_generator|s_counter\(2) & (!\pulse_generator|s_counter[1]~23\ & VCC))
-- \pulse_generator|s_counter[2]~25\ = CARRY((\pulse_generator|s_counter\(2) & !\pulse_generator|s_counter[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(2),
	datad => VCC,
	cin => \pulse_generator|s_counter[1]~23\,
	combout => \pulse_generator|s_counter[2]~24_combout\,
	cout => \pulse_generator|s_counter[2]~25\);

-- Location: FF_X87_Y15_N17
\pulse_generator|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[2]~24_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(2));

-- Location: LCCOMB_X87_Y15_N18
\pulse_generator|s_counter[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[3]~26_combout\ = (\pulse_generator|s_counter\(3) & (!\pulse_generator|s_counter[2]~25\)) # (!\pulse_generator|s_counter\(3) & ((\pulse_generator|s_counter[2]~25\) # (GND)))
-- \pulse_generator|s_counter[3]~27\ = CARRY((!\pulse_generator|s_counter[2]~25\) # (!\pulse_generator|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(3),
	datad => VCC,
	cin => \pulse_generator|s_counter[2]~25\,
	combout => \pulse_generator|s_counter[3]~26_combout\,
	cout => \pulse_generator|s_counter[3]~27\);

-- Location: FF_X87_Y15_N19
\pulse_generator|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[3]~26_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(3));

-- Location: LCCOMB_X87_Y15_N20
\pulse_generator|s_counter[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[4]~28_combout\ = (\pulse_generator|s_counter\(4) & (\pulse_generator|s_counter[3]~27\ $ (GND))) # (!\pulse_generator|s_counter\(4) & (!\pulse_generator|s_counter[3]~27\ & VCC))
-- \pulse_generator|s_counter[4]~29\ = CARRY((\pulse_generator|s_counter\(4) & !\pulse_generator|s_counter[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(4),
	datad => VCC,
	cin => \pulse_generator|s_counter[3]~27\,
	combout => \pulse_generator|s_counter[4]~28_combout\,
	cout => \pulse_generator|s_counter[4]~29\);

-- Location: FF_X87_Y15_N21
\pulse_generator|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[4]~28_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(4));

-- Location: LCCOMB_X87_Y15_N22
\pulse_generator|s_counter[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[5]~30_combout\ = (\pulse_generator|s_counter\(5) & (!\pulse_generator|s_counter[4]~29\)) # (!\pulse_generator|s_counter\(5) & ((\pulse_generator|s_counter[4]~29\) # (GND)))
-- \pulse_generator|s_counter[5]~31\ = CARRY((!\pulse_generator|s_counter[4]~29\) # (!\pulse_generator|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(5),
	datad => VCC,
	cin => \pulse_generator|s_counter[4]~29\,
	combout => \pulse_generator|s_counter[5]~30_combout\,
	cout => \pulse_generator|s_counter[5]~31\);

-- Location: FF_X87_Y15_N23
\pulse_generator|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[5]~30_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(5));

-- Location: LCCOMB_X87_Y15_N24
\pulse_generator|s_counter[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[6]~32_combout\ = (\pulse_generator|s_counter\(6) & (\pulse_generator|s_counter[5]~31\ $ (GND))) # (!\pulse_generator|s_counter\(6) & (!\pulse_generator|s_counter[5]~31\ & VCC))
-- \pulse_generator|s_counter[6]~33\ = CARRY((\pulse_generator|s_counter\(6) & !\pulse_generator|s_counter[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(6),
	datad => VCC,
	cin => \pulse_generator|s_counter[5]~31\,
	combout => \pulse_generator|s_counter[6]~32_combout\,
	cout => \pulse_generator|s_counter[6]~33\);

-- Location: FF_X87_Y15_N25
\pulse_generator|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[6]~32_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(6));

-- Location: LCCOMB_X87_Y15_N26
\pulse_generator|s_counter[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[7]~34_combout\ = (\pulse_generator|s_counter\(7) & (!\pulse_generator|s_counter[6]~33\)) # (!\pulse_generator|s_counter\(7) & ((\pulse_generator|s_counter[6]~33\) # (GND)))
-- \pulse_generator|s_counter[7]~35\ = CARRY((!\pulse_generator|s_counter[6]~33\) # (!\pulse_generator|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(7),
	datad => VCC,
	cin => \pulse_generator|s_counter[6]~33\,
	combout => \pulse_generator|s_counter[7]~34_combout\,
	cout => \pulse_generator|s_counter[7]~35\);

-- Location: FF_X87_Y15_N27
\pulse_generator|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[7]~34_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(7));

-- Location: LCCOMB_X87_Y15_N28
\pulse_generator|s_counter[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[8]~36_combout\ = (\pulse_generator|s_counter\(8) & (\pulse_generator|s_counter[7]~35\ $ (GND))) # (!\pulse_generator|s_counter\(8) & (!\pulse_generator|s_counter[7]~35\ & VCC))
-- \pulse_generator|s_counter[8]~37\ = CARRY((\pulse_generator|s_counter\(8) & !\pulse_generator|s_counter[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(8),
	datad => VCC,
	cin => \pulse_generator|s_counter[7]~35\,
	combout => \pulse_generator|s_counter[8]~36_combout\,
	cout => \pulse_generator|s_counter[8]~37\);

-- Location: FF_X88_Y15_N29
\pulse_generator|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[8]~36_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(8));

-- Location: LCCOMB_X87_Y15_N30
\pulse_generator|s_counter[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[9]~38_combout\ = (\pulse_generator|s_counter\(9) & (!\pulse_generator|s_counter[8]~37\)) # (!\pulse_generator|s_counter\(9) & ((\pulse_generator|s_counter[8]~37\) # (GND)))
-- \pulse_generator|s_counter[9]~39\ = CARRY((!\pulse_generator|s_counter[8]~37\) # (!\pulse_generator|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(9),
	datad => VCC,
	cin => \pulse_generator|s_counter[8]~37\,
	combout => \pulse_generator|s_counter[9]~38_combout\,
	cout => \pulse_generator|s_counter[9]~39\);

-- Location: FF_X87_Y15_N31
\pulse_generator|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[9]~38_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(9));

-- Location: LCCOMB_X87_Y14_N0
\pulse_generator|s_counter[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[10]~40_combout\ = (\pulse_generator|s_counter\(10) & (\pulse_generator|s_counter[9]~39\ $ (GND))) # (!\pulse_generator|s_counter\(10) & (!\pulse_generator|s_counter[9]~39\ & VCC))
-- \pulse_generator|s_counter[10]~41\ = CARRY((\pulse_generator|s_counter\(10) & !\pulse_generator|s_counter[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(10),
	datad => VCC,
	cin => \pulse_generator|s_counter[9]~39\,
	combout => \pulse_generator|s_counter[10]~40_combout\,
	cout => \pulse_generator|s_counter[10]~41\);

-- Location: FF_X89_Y15_N5
\pulse_generator|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[10]~40_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(10));

-- Location: LCCOMB_X87_Y14_N2
\pulse_generator|s_counter[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[11]~42_combout\ = (\pulse_generator|s_counter\(11) & (!\pulse_generator|s_counter[10]~41\)) # (!\pulse_generator|s_counter\(11) & ((\pulse_generator|s_counter[10]~41\) # (GND)))
-- \pulse_generator|s_counter[11]~43\ = CARRY((!\pulse_generator|s_counter[10]~41\) # (!\pulse_generator|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(11),
	datad => VCC,
	cin => \pulse_generator|s_counter[10]~41\,
	combout => \pulse_generator|s_counter[11]~42_combout\,
	cout => \pulse_generator|s_counter[11]~43\);

-- Location: FF_X89_Y15_N7
\pulse_generator|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[11]~42_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(11));

-- Location: LCCOMB_X87_Y14_N4
\pulse_generator|s_counter[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[12]~44_combout\ = (\pulse_generator|s_counter\(12) & (\pulse_generator|s_counter[11]~43\ $ (GND))) # (!\pulse_generator|s_counter\(12) & (!\pulse_generator|s_counter[11]~43\ & VCC))
-- \pulse_generator|s_counter[12]~45\ = CARRY((\pulse_generator|s_counter\(12) & !\pulse_generator|s_counter[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(12),
	datad => VCC,
	cin => \pulse_generator|s_counter[11]~43\,
	combout => \pulse_generator|s_counter[12]~44_combout\,
	cout => \pulse_generator|s_counter[12]~45\);

-- Location: FF_X89_Y15_N9
\pulse_generator|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[12]~44_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(12));

-- Location: LCCOMB_X87_Y14_N6
\pulse_generator|s_counter[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[13]~46_combout\ = (\pulse_generator|s_counter\(13) & (!\pulse_generator|s_counter[12]~45\)) # (!\pulse_generator|s_counter\(13) & ((\pulse_generator|s_counter[12]~45\) # (GND)))
-- \pulse_generator|s_counter[13]~47\ = CARRY((!\pulse_generator|s_counter[12]~45\) # (!\pulse_generator|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(13),
	datad => VCC,
	cin => \pulse_generator|s_counter[12]~45\,
	combout => \pulse_generator|s_counter[13]~46_combout\,
	cout => \pulse_generator|s_counter[13]~47\);

-- Location: FF_X89_Y15_N11
\pulse_generator|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[13]~46_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(13));

-- Location: LCCOMB_X87_Y14_N8
\pulse_generator|s_counter[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[14]~48_combout\ = (\pulse_generator|s_counter\(14) & (\pulse_generator|s_counter[13]~47\ $ (GND))) # (!\pulse_generator|s_counter\(14) & (!\pulse_generator|s_counter[13]~47\ & VCC))
-- \pulse_generator|s_counter[14]~49\ = CARRY((\pulse_generator|s_counter\(14) & !\pulse_generator|s_counter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(14),
	datad => VCC,
	cin => \pulse_generator|s_counter[13]~47\,
	combout => \pulse_generator|s_counter[14]~48_combout\,
	cout => \pulse_generator|s_counter[14]~49\);

-- Location: FF_X89_Y15_N13
\pulse_generator|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[14]~48_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(14));

-- Location: LCCOMB_X87_Y14_N10
\pulse_generator|s_counter[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[15]~50_combout\ = (\pulse_generator|s_counter\(15) & (!\pulse_generator|s_counter[14]~49\)) # (!\pulse_generator|s_counter\(15) & ((\pulse_generator|s_counter[14]~49\) # (GND)))
-- \pulse_generator|s_counter[15]~51\ = CARRY((!\pulse_generator|s_counter[14]~49\) # (!\pulse_generator|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(15),
	datad => VCC,
	cin => \pulse_generator|s_counter[14]~49\,
	combout => \pulse_generator|s_counter[15]~50_combout\,
	cout => \pulse_generator|s_counter[15]~51\);

-- Location: FF_X89_Y15_N1
\pulse_generator|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[15]~50_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(15));

-- Location: LCCOMB_X87_Y14_N12
\pulse_generator|s_counter[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[16]~52_combout\ = (\pulse_generator|s_counter\(16) & (\pulse_generator|s_counter[15]~51\ $ (GND))) # (!\pulse_generator|s_counter\(16) & (!\pulse_generator|s_counter[15]~51\ & VCC))
-- \pulse_generator|s_counter[16]~53\ = CARRY((\pulse_generator|s_counter\(16) & !\pulse_generator|s_counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(16),
	datad => VCC,
	cin => \pulse_generator|s_counter[15]~51\,
	combout => \pulse_generator|s_counter[16]~52_combout\,
	cout => \pulse_generator|s_counter[16]~53\);

-- Location: FF_X89_Y15_N27
\pulse_generator|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[16]~52_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(16));

-- Location: LCCOMB_X87_Y14_N14
\pulse_generator|s_counter[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[17]~54_combout\ = (\pulse_generator|s_counter\(17) & (!\pulse_generator|s_counter[16]~53\)) # (!\pulse_generator|s_counter\(17) & ((\pulse_generator|s_counter[16]~53\) # (GND)))
-- \pulse_generator|s_counter[17]~55\ = CARRY((!\pulse_generator|s_counter[16]~53\) # (!\pulse_generator|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(17),
	datad => VCC,
	cin => \pulse_generator|s_counter[16]~53\,
	combout => \pulse_generator|s_counter[17]~54_combout\,
	cout => \pulse_generator|s_counter[17]~55\);

-- Location: FF_X89_Y15_N3
\pulse_generator|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[17]~54_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(17));

-- Location: LCCOMB_X87_Y14_N16
\pulse_generator|s_counter[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[18]~56_combout\ = (\pulse_generator|s_counter\(18) & (\pulse_generator|s_counter[17]~55\ $ (GND))) # (!\pulse_generator|s_counter\(18) & (!\pulse_generator|s_counter[17]~55\ & VCC))
-- \pulse_generator|s_counter[18]~57\ = CARRY((\pulse_generator|s_counter\(18) & !\pulse_generator|s_counter[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(18),
	datad => VCC,
	cin => \pulse_generator|s_counter[17]~55\,
	combout => \pulse_generator|s_counter[18]~56_combout\,
	cout => \pulse_generator|s_counter[18]~57\);

-- Location: FF_X89_Y15_N29
\pulse_generator|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[18]~56_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(18));

-- Location: LCCOMB_X87_Y14_N18
\pulse_generator|s_counter[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[19]~58_combout\ = \pulse_generator|s_counter[18]~57\ $ (\pulse_generator|s_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulse_generator|s_counter\(19),
	cin => \pulse_generator|s_counter[18]~57\,
	combout => \pulse_generator|s_counter[19]~58_combout\);

-- Location: FF_X89_Y15_N31
\pulse_generator|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[19]~58_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(19));

-- Location: LCCOMB_X87_Y14_N26
\pulse_generator|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~1_combout\ = (!\pulse_generator|s_counter\(11) & (!\pulse_generator|s_counter\(13) & (!\pulse_generator|s_counter\(10) & !\pulse_generator|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(11),
	datab => \pulse_generator|s_counter\(13),
	datac => \pulse_generator|s_counter\(10),
	datad => \pulse_generator|s_counter\(12),
	combout => \pulse_generator|LessThan0~1_combout\);

-- Location: LCCOMB_X87_Y18_N20
\pulse_generator|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~3_combout\ = (((!\pulse_generator|s_counter\(1)) # (!\pulse_generator|s_counter\(2))) # (!\pulse_generator|s_counter\(5))) # (!\pulse_generator|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(0),
	datab => \pulse_generator|s_counter\(5),
	datac => \pulse_generator|s_counter\(2),
	datad => \pulse_generator|s_counter\(1),
	combout => \pulse_generator|LessThan0~3_combout\);

-- Location: LCCOMB_X87_Y15_N8
\pulse_generator|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~2_combout\ = (!\pulse_generator|s_counter\(7) & (!\pulse_generator|s_counter\(6) & !\pulse_generator|s_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(7),
	datab => \pulse_generator|s_counter\(6),
	datac => \pulse_generator|s_counter\(8),
	combout => \pulse_generator|LessThan0~2_combout\);

-- Location: LCCOMB_X87_Y15_N2
\pulse_generator|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~4_combout\ = (\pulse_generator|LessThan0~2_combout\ & ((\pulse_generator|LessThan0~3_combout\) # ((!\pulse_generator|s_counter\(4)) # (!\pulse_generator|s_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|LessThan0~3_combout\,
	datab => \pulse_generator|s_counter\(3),
	datac => \pulse_generator|LessThan0~2_combout\,
	datad => \pulse_generator|s_counter\(4),
	combout => \pulse_generator|LessThan0~4_combout\);

-- Location: LCCOMB_X87_Y14_N20
\pulse_generator|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~5_combout\ = ((\pulse_generator|LessThan0~1_combout\ & ((\pulse_generator|LessThan0~4_combout\) # (!\pulse_generator|s_counter\(9))))) # (!\pulse_generator|s_counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|LessThan0~1_combout\,
	datab => \pulse_generator|s_counter\(9),
	datac => \pulse_generator|s_counter\(14),
	datad => \pulse_generator|LessThan0~4_combout\,
	combout => \pulse_generator|LessThan0~5_combout\);

-- Location: LCCOMB_X87_Y14_N24
\pulse_generator|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~0_combout\ = (\pulse_generator|s_counter\(16) & (\pulse_generator|s_counter\(18) & \pulse_generator|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(16),
	datac => \pulse_generator|s_counter\(18),
	datad => \pulse_generator|s_counter\(17),
	combout => \pulse_generator|LessThan0~0_combout\);

-- Location: LCCOMB_X87_Y14_N30
\pulse_generator|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~6_combout\ = (\pulse_generator|s_counter\(19) & (\pulse_generator|LessThan0~0_combout\ & ((\pulse_generator|s_counter\(15)) # (!\pulse_generator|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(19),
	datab => \pulse_generator|LessThan0~5_combout\,
	datac => \pulse_generator|s_counter\(15),
	datad => \pulse_generator|LessThan0~0_combout\,
	combout => \pulse_generator|LessThan0~6_combout\);

-- Location: FF_X87_Y15_N13
\pulse_generator|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[0]~20_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(0));

-- Location: LCCOMB_X94_Y16_N10
\bcd_counter|count_proc~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~14_combout\ = (\control_unit|s_currentState.STOPPED~q\) # ((\pulse_generator|s_counter\(0)) # (\control_unit|s_currentState.STOPPED1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit|s_currentState.STOPPED~q\,
	datac => \pulse_generator|s_counter\(0),
	datad => \control_unit|s_currentState.STOPPED1~q\,
	combout => \bcd_counter|count_proc~14_combout\);

-- Location: LCCOMB_X89_Y15_N4
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~0_combout\ = \pulse_generator|s_counter\(10) $ (VCC)
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~1\ = CARRY(\pulse_generator|s_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(10),
	datad => VCC,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~0_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~1\);

-- Location: LCCOMB_X89_Y15_N6
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\ = (\pulse_generator|s_counter\(11) & (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~1\ & VCC)) # (!\pulse_generator|s_counter\(11) & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~1\))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\ = CARRY((!\pulse_generator|s_counter\(11) & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(11),
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~1\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\);

-- Location: LCCOMB_X89_Y15_N8
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\ = (\pulse_generator|s_counter\(12) & ((GND) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\))) # 
-- (!\pulse_generator|s_counter\(12) & (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\ $ (GND)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\ = CARRY((\pulse_generator|s_counter\(12)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(12),
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\);

-- Location: LCCOMB_X89_Y15_N10
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\ = (\pulse_generator|s_counter\(13) & (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\ & VCC)) # (!\pulse_generator|s_counter\(13) & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\ = CARRY((!\pulse_generator|s_counter\(13) & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(13),
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\);

-- Location: LCCOMB_X89_Y15_N12
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\ = (\pulse_generator|s_counter\(14) & (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\ $ (GND))) # (!\pulse_generator|s_counter\(14) & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\ & VCC))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\ = CARRY((\pulse_generator|s_counter\(14) & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(14),
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\);

-- Location: LCCOMB_X89_Y15_N14
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\ = (\pulse_generator|s_counter\(15) & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\)) # (!\pulse_generator|s_counter\(15) & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\) # (GND)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\) # (!\pulse_generator|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(15),
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\);

-- Location: LCCOMB_X89_Y15_N16
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\ = (\pulse_generator|s_counter\(16) & (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\ $ (GND))) # 
-- (!\pulse_generator|s_counter\(16) & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\ & VCC))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\ = CARRY((\pulse_generator|s_counter\(16) & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(16),
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\);

-- Location: LCCOMB_X89_Y15_N18
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\ = (\pulse_generator|s_counter\(17) & (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\ & VCC)) # (!\pulse_generator|s_counter\(17) 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\ = CARRY((!\pulse_generator|s_counter\(17) & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(17),
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\);

-- Location: LCCOMB_X89_Y15_N20
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\ = (\pulse_generator|s_counter\(18) & ((GND) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\))) # 
-- (!\pulse_generator|s_counter\(18) & (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\ $ (GND)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\ = CARRY((\pulse_generator|s_counter\(18)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(18),
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\);

-- Location: LCCOMB_X89_Y15_N22
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\ = (\pulse_generator|s_counter\(19) & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\)) # (!\pulse_generator|s_counter\(19) & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\) # (GND)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\) # (!\pulse_generator|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(19),
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\);

-- Location: LCCOMB_X89_Y15_N24
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ = \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\);

-- Location: LCCOMB_X90_Y15_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~255_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~255_combout\);

-- Location: LCCOMB_X90_Y15_N4
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~254_combout\ = (\pulse_generator|s_counter\(19) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(19),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~254_combout\);

-- Location: LCCOMB_X89_Y15_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~257_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~257_combout\);

-- Location: LCCOMB_X90_Y15_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~256_combout\ = (\pulse_generator|s_counter\(18) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(18),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~256_combout\);

-- Location: LCCOMB_X89_Y15_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~258_combout\ = (\pulse_generator|s_counter\(17) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(17),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~258_combout\);

-- Location: LCCOMB_X89_Y15_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~259_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~259_combout\);

-- Location: LCCOMB_X89_Y15_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~261_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~261_combout\);

-- Location: LCCOMB_X89_Y15_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~260_combout\ = (\pulse_generator|s_counter\(16) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(16),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~260_combout\);

-- Location: LCCOMB_X88_Y15_N22
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~262_combout\ = (\pulse_generator|s_counter\(15) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(15),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~262_combout\);

-- Location: LCCOMB_X88_Y15_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~263_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~263_combout\);

-- Location: LCCOMB_X88_Y15_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~264_combout\ = (\pulse_generator|s_counter\(14) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(14),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~264_combout\);

-- Location: LCCOMB_X88_Y15_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~265_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~265_combout\);

-- Location: LCCOMB_X88_Y15_N8
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~267_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~267_combout\);

-- Location: LCCOMB_X88_Y15_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~266_combout\ = (\pulse_generator|s_counter\(13) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(13),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~266_combout\);

-- Location: LCCOMB_X88_Y15_N24
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~269_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~269_combout\);

-- Location: LCCOMB_X88_Y15_N18
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~268_combout\ = (\pulse_generator|s_counter\(12) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(12),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~268_combout\);

-- Location: LCCOMB_X88_Y15_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~270_combout\ = (\pulse_generator|s_counter\(11) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(11),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~270_combout\);

-- Location: LCCOMB_X88_Y15_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~271_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~271_combout\);

-- Location: LCCOMB_X88_Y15_N4
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~273_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~0_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~0_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~273_combout\);

-- Location: LCCOMB_X88_Y15_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~272_combout\ = (\pulse_generator|s_counter\(10) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(10),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~272_combout\);

-- Location: LCCOMB_X87_Y15_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~275_combout\ = (\pulse_generator|s_counter\(9) & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(9),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~275_combout\);

-- Location: LCCOMB_X87_Y15_N4
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~274_combout\ = (\pulse_generator|s_counter\(9) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(9),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~274_combout\);

-- Location: LCCOMB_X90_Y15_N8
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~0_combout\ = (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~275_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~274_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~1\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~275_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~274_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~275_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[263]~274_combout\,
	datad => VCC,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~0_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~1\);

-- Location: LCCOMB_X90_Y15_N10
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~2_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~1\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~273_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~272_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~1\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~273_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~272_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~3\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~273_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~272_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~273_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[264]~272_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~1\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~2_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~3\);

-- Location: LCCOMB_X90_Y15_N12
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~4_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~3\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~270_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~271_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~3\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~270_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~271_combout\) # 
-- (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~5\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~270_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~271_combout\) 
-- # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~270_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[265]~271_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~3\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~4_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~5\);

-- Location: LCCOMB_X90_Y15_N14
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~6_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~5\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~269_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~268_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~5\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~269_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~268_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~7\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~269_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~268_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~269_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[266]~268_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~5\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~6_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~7\);

-- Location: LCCOMB_X90_Y15_N16
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~8_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~7\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~267_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~266_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~7\ 
-- & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~267_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~266_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~9\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~7\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~267_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~267_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[267]~266_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~7\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~8_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~9\);

-- Location: LCCOMB_X90_Y15_N18
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~10_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~264_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~9\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~264_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~265_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~9\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~265_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~9\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~11\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~264_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~265_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~264_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[268]~265_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~9\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~10_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~11\);

-- Location: LCCOMB_X90_Y15_N20
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~12_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~11\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~262_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~263_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~11\ & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~262_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~263_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~13\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~11\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~262_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~262_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[269]~263_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~11\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~12_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~13\);

-- Location: LCCOMB_X90_Y15_N22
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~14_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~13\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~261_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~260_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~13\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~261_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~260_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~15\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~261_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~260_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~261_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[270]~260_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~13\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~14_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~15\);

-- Location: LCCOMB_X90_Y15_N24
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~16_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~15\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~258_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~259_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~15\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~258_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~259_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~17\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~258_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~259_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~258_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[271]~259_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~15\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~16_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~17\);

-- Location: LCCOMB_X90_Y15_N26
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~18_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~257_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~17\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~257_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~256_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~17\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~256_combout\ 
-- & ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~17\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~19\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~257_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~256_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~257_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[272]~256_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~17\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~18_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~19\);

-- Location: LCCOMB_X90_Y15_N28
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~20_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~19\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~255_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~254_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~19\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~255_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~254_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~21\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~255_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~254_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~255_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[273]~254_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~19\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~20_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~21\);

-- Location: LCCOMB_X90_Y15_N30
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ = !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~21\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\);

-- Location: LCCOMB_X91_Y15_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~427_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\pulse_generator|s_counter\(19))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(19),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~427_combout\);

-- Location: LCCOMB_X91_Y15_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~276_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~276_combout\);

-- Location: LCCOMB_X90_Y15_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~428_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\pulse_generator|s_counter\(18))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(18),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~428_combout\);

-- Location: LCCOMB_X92_Y15_N24
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~277_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~18_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~18_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~277_combout\);

-- Location: LCCOMB_X92_Y15_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~429_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\pulse_generator|s_counter\(17)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \pulse_generator|s_counter\(17),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~429_combout\);

-- Location: LCCOMB_X92_Y15_N18
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~278_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~16_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~16_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~278_combout\);

-- Location: LCCOMB_X92_Y15_N20
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~279_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~14_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~14_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~279_combout\);

-- Location: LCCOMB_X92_Y15_N8
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~430_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\pulse_generator|s_counter\(16)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \pulse_generator|s_counter\(16),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~430_combout\);

-- Location: LCCOMB_X92_Y15_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~280_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~12_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~12_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~280_combout\);

-- Location: LCCOMB_X90_Y17_N8
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~431_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\pulse_generator|s_counter\(15))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(15),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~431_combout\);

-- Location: LCCOMB_X92_Y15_N4
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~281_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~10_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~10_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~281_combout\);

-- Location: LCCOMB_X90_Y14_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~432_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\pulse_generator|s_counter\(14))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(14),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~432_combout\);

-- Location: LCCOMB_X88_Y15_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~433_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\pulse_generator|s_counter\(13))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(13),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~433_combout\);

-- Location: LCCOMB_X92_Y15_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~282_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~8_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~8_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~282_combout\);

-- Location: LCCOMB_X91_Y16_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~434_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\pulse_generator|s_counter\(12))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(12),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~434_combout\);

-- Location: LCCOMB_X92_Y15_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~283_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~6_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~6_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~283_combout\);

-- Location: LCCOMB_X90_Y14_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~435_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\pulse_generator|s_counter\(11)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|s_counter\(11),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~435_combout\);

-- Location: LCCOMB_X87_Y15_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~284_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~4_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~4_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~284_combout\);

-- Location: LCCOMB_X92_Y15_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~436_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\pulse_generator|s_counter\(10)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[4]~0_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \pulse_generator|s_counter\(10),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~436_combout\);

-- Location: LCCOMB_X88_Y15_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~285_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~2_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~2_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~285_combout\);

-- Location: LCCOMB_X91_Y16_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~287_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~0_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~287_combout\);

-- Location: LCCOMB_X87_Y15_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~286_combout\ = (\pulse_generator|s_counter\(9) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(9),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~286_combout\);

-- Location: LCCOMB_X88_Y15_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~288_combout\ = (\pulse_generator|s_counter\(8) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(8),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~288_combout\);

-- Location: LCCOMB_X88_Y15_N20
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~289_combout\ = (\pulse_generator|s_counter\(8) & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(8),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~289_combout\);

-- Location: LCCOMB_X91_Y15_N0
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~0_combout\ = (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~288_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~289_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~1\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~288_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~289_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~288_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[283]~289_combout\,
	datad => VCC,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~0_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~1\);

-- Location: LCCOMB_X91_Y15_N2
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~2_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~1\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~287_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~286_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~1\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~287_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~286_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~3\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~287_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~286_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~287_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[284]~286_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~1\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~2_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~3\);

-- Location: LCCOMB_X91_Y15_N4
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~4_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~3\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~436_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~285_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~3\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~436_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~285_combout\) # 
-- (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~5\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~436_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~285_combout\) 
-- # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~436_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~285_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~3\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~4_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~5\);

-- Location: LCCOMB_X91_Y15_N6
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~6_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~5\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~435_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~284_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~5\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~435_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~284_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~7\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~435_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~284_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~435_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~284_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~5\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~6_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~7\);

-- Location: LCCOMB_X91_Y15_N8
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~8_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~7\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~434_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~283_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~7\ 
-- & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~434_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~283_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~9\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~7\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~434_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~434_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~283_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~7\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~8_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~9\);

-- Location: LCCOMB_X91_Y15_N10
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~10_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~433_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~9\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~433_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~282_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~9\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~282_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~9\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~11\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~433_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~282_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~433_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~282_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~9\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~10_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~11\);

-- Location: LCCOMB_X91_Y15_N12
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~12_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~11\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~281_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~432_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~11\ & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~281_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~432_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~13\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~11\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~281_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~281_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~432_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~11\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~12_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~13\);

-- Location: LCCOMB_X91_Y15_N14
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~14_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~13\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~280_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~431_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~13\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~280_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~431_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~15\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~280_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~431_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~280_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~431_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~13\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~14_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~15\);

-- Location: LCCOMB_X91_Y15_N16
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~16_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~15\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~279_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~430_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~15\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~279_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~430_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~17\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~279_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~430_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~279_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~430_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~15\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~16_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~17\);

-- Location: LCCOMB_X91_Y15_N18
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~18_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~429_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~17\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~429_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~278_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~17\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~278_combout\ 
-- & ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~17\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~19\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~429_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~278_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~429_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~278_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~17\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~18_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~19\);

-- Location: LCCOMB_X91_Y15_N20
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~20_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~19\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~428_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~277_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~19\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~428_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~277_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~21\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~428_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~277_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~428_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~277_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~19\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~20_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~21\);

-- Location: LCCOMB_X91_Y15_N22
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~22_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~21\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~427_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~276_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~21\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~427_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~276_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~23\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~427_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~276_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~427_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~276_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~21\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~22_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~23\);

-- Location: LCCOMB_X91_Y15_N24
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ = \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~23\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\);

-- Location: LCCOMB_X91_Y17_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~290_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~22_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~290_combout\);

-- Location: LCCOMB_X91_Y15_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~374_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~427_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[294]~427_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~20_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~374_combout\);

-- Location: LCCOMB_X90_Y17_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~291_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~291_combout\);

-- Location: LCCOMB_X90_Y17_N20
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~375_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~428_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~18_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[293]~428_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~375_combout\);

-- Location: LCCOMB_X90_Y17_N22
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~376_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~429_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~16_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[292]~429_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~376_combout\);

-- Location: LCCOMB_X90_Y17_N18
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~292_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~18_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~18_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~292_combout\);

-- Location: LCCOMB_X92_Y15_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~377_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~430_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~14_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~14_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[291]~430_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~377_combout\);

-- Location: LCCOMB_X92_Y17_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~293_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~16_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~293_combout\);

-- Location: LCCOMB_X90_Y17_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~294_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~14_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~14_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~294_combout\);

-- Location: LCCOMB_X90_Y17_N4
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~378_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~431_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~12_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~12_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[290]~431_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~378_combout\);

-- Location: LCCOMB_X90_Y17_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~295_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~12_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~12_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~295_combout\);

-- Location: LCCOMB_X90_Y14_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~379_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~432_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[289]~432_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~10_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~379_combout\);

-- Location: LCCOMB_X92_Y17_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~296_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~10_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~10_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~296_combout\);

-- Location: LCCOMB_X92_Y17_N18
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~380_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~433_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~8_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[288]~433_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~380_combout\);

-- Location: LCCOMB_X92_Y17_N20
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~297_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~8_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~8_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~297_combout\);

-- Location: LCCOMB_X91_Y16_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~381_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~434_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~6_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[287]~434_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~381_combout\);

-- Location: LCCOMB_X90_Y14_N18
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~382_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~435_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~4_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~4_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[286]~435_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~382_combout\);

-- Location: LCCOMB_X90_Y17_N24
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~298_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~6_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~6_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~298_combout\);

-- Location: LCCOMB_X92_Y17_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~299_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~4_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~299_combout\);

-- Location: LCCOMB_X92_Y15_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~383_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~436_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[285]~436_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~2_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~383_combout\);

-- Location: LCCOMB_X92_Y17_N4
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~300_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~2_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~300_combout\);

-- Location: LCCOMB_X92_Y17_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~437_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & (\pulse_generator|s_counter\(9))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datab => \pulse_generator|s_counter\(9),
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~0_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~437_combout\);

-- Location: LCCOMB_X90_Y17_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~301_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~0_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~0_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~301_combout\);

-- Location: LCCOMB_X90_Y17_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~438_combout\ = (\pulse_generator|s_counter\(8) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(8),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~438_combout\);

-- Location: LCCOMB_X91_Y14_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~302_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & \pulse_generator|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \pulse_generator|s_counter\(7),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~302_combout\);

-- Location: LCCOMB_X91_Y16_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~303_combout\ = (\pulse_generator|s_counter\(7) & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(7),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~303_combout\);

-- Location: LCCOMB_X92_Y16_N20
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~24_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~302_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~303_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~302_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[261]~303_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~24_combout\);

-- Location: LCCOMB_X92_Y16_N18
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~439_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & (\pulse_generator|s_counter\(7))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(7),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~439_combout\);

-- Location: LCCOMB_X92_Y16_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~440_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & (\pulse_generator|s_counter\(7))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(7),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~440_combout\);

-- Location: LCCOMB_X91_Y17_N2
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~0_combout\ = (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~439_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~440_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~1\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~439_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~440_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~439_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~440_combout\,
	datad => VCC,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~0_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~1\);

-- Location: LCCOMB_X91_Y17_N4
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~2_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~1\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~301_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~438_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~1\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~301_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~438_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~3\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~301_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~438_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~301_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[304]~438_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~1\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~2_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~3\);

-- Location: LCCOMB_X91_Y17_N6
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~4_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~3\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~300_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~437_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~3\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~300_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~437_combout\) # 
-- (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~5\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~300_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~437_combout\) 
-- # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~300_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~437_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~3\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~4_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~5\);

-- Location: LCCOMB_X91_Y17_N8
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~6_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~5\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~299_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~383_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~5\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~299_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~383_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~7\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~299_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~383_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~299_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~383_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~5\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~6_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~7\);

-- Location: LCCOMB_X91_Y17_N10
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~8_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~7\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~382_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~298_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~7\ 
-- & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~382_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~298_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~9\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~7\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~382_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~382_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~298_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~7\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~8_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~9\);

-- Location: LCCOMB_X91_Y17_N12
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~10_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~297_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~9\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~297_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~381_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~9\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~381_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~9\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~11\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~297_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~381_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~297_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~381_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~9\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~10_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~11\);

-- Location: LCCOMB_X91_Y17_N14
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~12_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~11\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~296_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~380_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~11\ & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~296_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~380_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~13\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~11\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~296_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~296_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~380_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~11\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~12_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~13\);

-- Location: LCCOMB_X91_Y17_N16
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~14_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~13\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~295_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~379_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~13\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~295_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~379_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~15\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~295_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~379_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~295_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~379_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~13\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~14_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~15\);

-- Location: LCCOMB_X91_Y17_N18
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~16_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~15\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~294_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~378_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~15\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~294_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~378_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~17\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~294_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~378_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~294_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~378_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~15\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~16_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~17\);

-- Location: LCCOMB_X91_Y17_N20
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~18_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~377_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~17\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~377_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~293_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~17\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~293_combout\ 
-- & ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~17\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~19\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~377_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~293_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~377_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~293_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~17\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~18_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~19\);

-- Location: LCCOMB_X91_Y17_N22
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~20_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~19\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~376_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~292_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~19\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~376_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~292_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~21\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~376_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~292_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~376_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~292_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~19\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~20_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~21\);

-- Location: LCCOMB_X91_Y17_N24
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~22_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~21\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~291_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~375_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~21\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~291_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~375_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~23\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~291_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~375_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~291_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~375_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~21\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~22_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~23\);

-- Location: LCCOMB_X91_Y17_N26
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~24_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~23\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~290_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~374_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~23\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~290_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~374_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~25\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~290_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~374_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~290_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~374_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~23\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~24_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~25\);

-- Location: LCCOMB_X91_Y17_N28
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ = !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~25\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\);

-- Location: LCCOMB_X90_Y18_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~384_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~374_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~22_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~22_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[315]~374_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~384_combout\);

-- Location: LCCOMB_X91_Y18_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~304_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~24_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~24_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~304_combout\);

-- Location: LCCOMB_X92_Y18_N22
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~305_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~305_combout\);

-- Location: LCCOMB_X90_Y18_N18
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~385_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~375_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~20_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~20_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[314]~375_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~385_combout\);

-- Location: LCCOMB_X92_Y18_N4
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~306_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~306_combout\);

-- Location: LCCOMB_X90_Y17_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~386_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~376_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[313]~376_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~18_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~386_combout\);

-- Location: LCCOMB_X91_Y17_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~307_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~18_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~307_combout\);

-- Location: LCCOMB_X92_Y15_N22
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~387_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~377_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~16_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~16_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[312]~377_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~387_combout\);

-- Location: LCCOMB_X90_Y17_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~388_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~378_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[311]~378_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~14_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~388_combout\);

-- Location: LCCOMB_X92_Y18_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~308_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~16_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~308_combout\);

-- Location: LCCOMB_X90_Y14_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~389_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~379_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[310]~379_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~12_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~389_combout\);

-- Location: LCCOMB_X92_Y18_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~309_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~14_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~14_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~309_combout\);

-- Location: LCCOMB_X92_Y17_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~310_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~12_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~12_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~310_combout\);

-- Location: LCCOMB_X92_Y17_N24
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~390_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~380_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[309]~380_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~10_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~390_combout\);

-- Location: LCCOMB_X92_Y18_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~311_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~10_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~311_combout\);

-- Location: LCCOMB_X91_Y16_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~391_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~381_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[308]~381_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~8_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~391_combout\);

-- Location: LCCOMB_X90_Y14_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~392_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~382_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[307]~382_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~6_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~392_combout\);

-- Location: LCCOMB_X92_Y18_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~312_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~8_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~312_combout\);

-- Location: LCCOMB_X92_Y18_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~313_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~6_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~313_combout\);

-- Location: LCCOMB_X92_Y15_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~393_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~383_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[306]~383_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~4_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~393_combout\);

-- Location: LCCOMB_X92_Y18_N20
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~314_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~4_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~314_combout\);

-- Location: LCCOMB_X92_Y17_N22
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~394_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~437_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~2_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~2_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[305]~437_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~394_combout\);

-- Location: LCCOMB_X90_Y18_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~445_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & (\pulse_generator|s_counter\(8))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(8),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~0_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~445_combout\);

-- Location: LCCOMB_X92_Y18_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~315_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~2_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~315_combout\);

-- Location: LCCOMB_X92_Y16_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~316_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~440_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~439_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~440_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[303]~439_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~316_combout\);

-- Location: LCCOMB_X92_Y16_N4
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~317_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~0_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~0_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~317_combout\);

-- Location: LCCOMB_X91_Y16_N4
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~319_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & \pulse_generator|s_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \pulse_generator|s_counter\(6),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~319_combout\);

-- Location: LCCOMB_X91_Y16_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~320_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & \pulse_generator|s_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \pulse_generator|s_counter\(6),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~320_combout\);

-- Location: LCCOMB_X91_Y16_N24
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~26_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~319_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~320_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~319_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[260]~320_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~26_combout\);

-- Location: LCCOMB_X91_Y16_N8
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~321_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~321_combout\);

-- Location: LCCOMB_X91_Y16_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~318_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & \pulse_generator|s_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|s_counter\(6),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~318_combout\);

-- Location: LCCOMB_X91_Y16_N22
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~26_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~321_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~318_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~321_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[281]~318_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~26_combout\);

-- Location: LCCOMB_X92_Y16_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[302]~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[302]~441_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & (\pulse_generator|s_counter\(6))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(6),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[302]~441_combout\);

-- Location: LCCOMB_X92_Y16_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~395_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[302]~441_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[302]~441_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~395_combout\);

-- Location: LCCOMB_X92_Y16_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~396_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[302]~441_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[302]~441_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~396_combout\);

-- Location: LCCOMB_X91_Y18_N2
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~0_combout\ = (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~395_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~396_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~1\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~395_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~396_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~395_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~396_combout\,
	datad => VCC,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~0_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~1\);

-- Location: LCCOMB_X91_Y18_N4
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~2_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~1\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~316_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~317_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~1\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~316_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~317_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~3\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~316_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~317_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~316_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~317_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~1\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~2_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~3\);

-- Location: LCCOMB_X91_Y18_N6
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~4_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~3\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~445_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~315_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~3\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~445_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~315_combout\) # 
-- (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~5\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~445_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~315_combout\) 
-- # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~445_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~315_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~3\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~4_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~5\);

-- Location: LCCOMB_X91_Y18_N8
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~6_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~5\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~314_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~394_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~5\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~314_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~394_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~7\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~314_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~394_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~314_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~394_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~5\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~6_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~7\);

-- Location: LCCOMB_X91_Y18_N10
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~8_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~7\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~313_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~393_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~7\ 
-- & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~313_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~393_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~9\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~7\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~313_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~313_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~393_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~7\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~8_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~9\);

-- Location: LCCOMB_X91_Y18_N12
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~10_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~392_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~9\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~392_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~312_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~9\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~312_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~9\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~11\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~392_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~312_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~392_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~312_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~9\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~10_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~11\);

-- Location: LCCOMB_X91_Y18_N14
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~12_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~11\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~311_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~391_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~11\ & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~311_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~391_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~13\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~11\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~311_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~311_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~391_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~11\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~12_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~13\);

-- Location: LCCOMB_X91_Y18_N16
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~14_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~13\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~310_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~390_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~13\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~310_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~390_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~15\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~310_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~390_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~310_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~390_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~13\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~14_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~15\);

-- Location: LCCOMB_X91_Y18_N18
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~16_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~15\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~389_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~309_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~15\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~389_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~309_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~17\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~389_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~309_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~389_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~309_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~15\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~16_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~17\);

-- Location: LCCOMB_X91_Y18_N20
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~18_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~388_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~17\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~388_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~308_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~17\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~308_combout\ 
-- & ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~17\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~19\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~388_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~308_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~388_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~308_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~17\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~18_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~19\);

-- Location: LCCOMB_X91_Y18_N22
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~20_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~19\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~307_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~387_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~19\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~307_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~387_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~21\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~307_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~387_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~307_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~387_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~19\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~20_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~21\);

-- Location: LCCOMB_X91_Y18_N24
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~22_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~21\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~306_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~386_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~21\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~306_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~386_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~23\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~306_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~386_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~306_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~386_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~21\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~22_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~23\);

-- Location: LCCOMB_X91_Y18_N26
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~24_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~23\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~305_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~385_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~23\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~305_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~385_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~25\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~305_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~385_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~305_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~385_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~23\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~24_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~25\);

-- Location: LCCOMB_X91_Y18_N28
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~26_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~25\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~384_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~304_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~25\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~384_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~304_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~27\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~384_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~304_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~384_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~304_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~25\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~26_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~27\);

-- Location: LCCOMB_X91_Y18_N30
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ = \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~27\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\);

-- Location: LCCOMB_X90_Y18_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~397_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~384_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~24_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[16]~24_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[336]~384_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~397_combout\);

-- Location: LCCOMB_X90_Y18_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~322_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~322_combout\);

-- Location: LCCOMB_X90_Y18_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~323_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~323_combout\);

-- Location: LCCOMB_X90_Y18_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~398_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~385_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~22_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[15]~22_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[335]~385_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~398_combout\);

-- Location: LCCOMB_X90_Y18_N20
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~324_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~22_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~324_combout\);

-- Location: LCCOMB_X90_Y17_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~399_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~386_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[334]~386_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[14]~20_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~399_combout\);

-- Location: LCCOMB_X90_Y18_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~325_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~20_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~325_combout\);

-- Location: LCCOMB_X92_Y16_N22
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~400_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~387_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[13]~18_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[333]~387_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~400_combout\);

-- Location: LCCOMB_X90_Y18_N4
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~326_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~18_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~326_combout\);

-- Location: LCCOMB_X90_Y17_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~401_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~388_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~16_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[12]~16_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[332]~388_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~401_combout\);

-- Location: LCCOMB_X88_Y18_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~327_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~16_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~327_combout\);

-- Location: LCCOMB_X90_Y14_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~402_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~389_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~14_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[331]~389_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[11]~14_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~402_combout\);

-- Location: LCCOMB_X92_Y17_N8
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~403_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~390_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~12_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[10]~12_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[330]~390_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~403_combout\);

-- Location: LCCOMB_X88_Y18_N18
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~328_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~14_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~14_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~328_combout\);

-- Location: LCCOMB_X91_Y16_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~404_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~391_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[9]~10_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[329]~391_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~404_combout\);

-- Location: LCCOMB_X88_Y18_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~329_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~12_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~329_combout\);

-- Location: LCCOMB_X90_Y14_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~405_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~392_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~8_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[328]~392_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[8]~8_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~405_combout\);

-- Location: LCCOMB_X90_Y18_N22
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~330_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~10_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~330_combout\);

-- Location: LCCOMB_X92_Y15_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~406_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~393_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[327]~393_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[7]~6_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~406_combout\);

-- Location: LCCOMB_X88_Y18_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~331_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~8_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~8_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~331_combout\);

-- Location: LCCOMB_X88_Y18_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~332_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~6_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~6_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~332_combout\);

-- Location: LCCOMB_X92_Y17_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~407_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~394_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[326]~394_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[6]~4_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~407_combout\);

-- Location: LCCOMB_X90_Y18_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~408_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~445_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[325]~445_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[5]~2_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~408_combout\);

-- Location: LCCOMB_X90_Y18_N24
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~333_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~4_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~333_combout\);

-- Location: LCCOMB_X92_Y16_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~409_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~316_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[324]~316_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[4]~0_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~409_combout\);

-- Location: LCCOMB_X88_Y18_N22
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~334_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~2_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~334_combout\);

-- Location: LCCOMB_X92_Y16_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~335_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~396_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~395_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~396_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[323]~395_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~335_combout\);

-- Location: LCCOMB_X88_Y18_N20
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~336_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~0_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~0_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~336_combout\);

-- Location: LCCOMB_X91_Y16_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~339_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & \pulse_generator|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|s_counter\(5),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~339_combout\);

-- Location: LCCOMB_X91_Y16_N20
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~338_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\ & \pulse_generator|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~22_combout\,
	datad => \pulse_generator|s_counter\(5),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~338_combout\);

-- Location: LCCOMB_X91_Y16_N28
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~28_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~339_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~338_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~339_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[280]~338_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~28_combout\);

-- Location: LCCOMB_X92_Y18_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[322]~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[322]~442_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & ((\pulse_generator|s_counter\(5)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~28_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datac => \pulse_generator|s_counter\(5),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[322]~442_combout\);

-- Location: LCCOMB_X92_Y18_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~340_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~28_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~340_combout\);

-- Location: LCCOMB_X92_Y18_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~337_combout\ = (\pulse_generator|s_counter\(5) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(5),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~337_combout\);

-- Location: LCCOMB_X92_Y18_N8
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[2]~28_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~340_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~337_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~340_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[301]~337_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[2]~28_combout\);

-- Location: LCCOMB_X92_Y18_N18
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~410_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[322]~442_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[2]~28_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[322]~442_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[2]~28_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~410_combout\);

-- Location: LCCOMB_X92_Y18_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~411_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[322]~442_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[2]~28_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[322]~442_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[2]~28_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~411_combout\);

-- Location: LCCOMB_X89_Y18_N0
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~0_combout\ = (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~410_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~411_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~1\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~410_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~411_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~410_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~411_combout\,
	datad => VCC,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~0_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~1\);

-- Location: LCCOMB_X89_Y18_N2
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~1\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~335_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~336_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~1\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~335_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~336_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~335_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~336_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~335_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~336_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~1\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\);

-- Location: LCCOMB_X89_Y18_N4
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~409_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~334_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~409_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~334_combout\) # 
-- (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~409_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~334_combout\) 
-- # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~409_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~334_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\);

-- Location: LCCOMB_X89_Y18_N6
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~408_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~333_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~408_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~333_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~408_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~333_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~408_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~333_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\);

-- Location: LCCOMB_X89_Y18_N8
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~332_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~407_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\ 
-- & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~332_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~407_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~332_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~332_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~407_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\);

-- Location: LCCOMB_X89_Y18_N10
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~406_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~406_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~331_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~331_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~406_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~331_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~406_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~331_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\);

-- Location: LCCOMB_X89_Y18_N12
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~405_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~330_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\ & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~405_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~330_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~405_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~405_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~330_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\);

-- Location: LCCOMB_X89_Y18_N14
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~404_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~329_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~404_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~329_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~404_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~329_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~404_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~329_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\);

-- Location: LCCOMB_X89_Y18_N16
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~403_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~328_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~403_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~328_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~403_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~328_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~403_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~328_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\);

-- Location: LCCOMB_X89_Y18_N18
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~327_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~327_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~402_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~402_combout\ 
-- & ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~327_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~402_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~327_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~402_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\);

-- Location: LCCOMB_X89_Y18_N20
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~326_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~401_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~326_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~401_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~326_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~401_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~326_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~401_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\);

-- Location: LCCOMB_X89_Y18_N22
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~325_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~400_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~325_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~400_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~325_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~400_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~325_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~400_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\);

-- Location: LCCOMB_X89_Y18_N24
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~324_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~399_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~324_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~399_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~324_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~399_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~324_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~399_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\);

-- Location: LCCOMB_X89_Y18_N26
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~323_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~398_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~323_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~398_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~323_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~398_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~323_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~398_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\);

-- Location: LCCOMB_X89_Y18_N28
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~397_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~322_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~397_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~322_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~397_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~322_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~397_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~322_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\);

-- Location: LCCOMB_X89_Y18_N30
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ = !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\);

-- Location: LCCOMB_X88_Y16_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~341_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~341_combout\);

-- Location: LCCOMB_X90_Y18_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~412_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~397_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~26_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[357]~397_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[17]~26_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~412_combout\);

-- Location: LCCOMB_X90_Y18_N8
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~413_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~398_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~24_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[356]~398_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[16]~24_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~413_combout\);

-- Location: LCCOMB_X88_Y16_N20
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~342_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~342_combout\);

-- Location: LCCOMB_X92_Y16_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~414_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~399_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~22_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[15]~22_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[355]~399_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~414_combout\);

-- Location: LCCOMB_X90_Y16_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~343_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~343_combout\);

-- Location: LCCOMB_X92_Y16_N8
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~415_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~400_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[354]~400_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[14]~20_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~415_combout\);

-- Location: LCCOMB_X90_Y16_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~344_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~344_combout\);

-- Location: LCCOMB_X90_Y17_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~416_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~401_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~18_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[13]~18_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[353]~401_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~416_combout\);

-- Location: LCCOMB_X90_Y16_N24
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~345_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~345_combout\);

-- Location: LCCOMB_X90_Y16_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~417_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~402_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~16_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[12]~16_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[352]~402_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~417_combout\);

-- Location: LCCOMB_X89_Y16_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~346_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~346_combout\);

-- Location: LCCOMB_X89_Y16_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~347_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~347_combout\);

-- Location: LCCOMB_X92_Y17_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~418_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~403_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~14_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[11]~14_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[351]~403_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~418_combout\);

-- Location: LCCOMB_X88_Y16_N22
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~348_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~348_combout\);

-- Location: LCCOMB_X92_Y17_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~419_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~404_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~12_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[10]~12_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[350]~404_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~419_combout\);

-- Location: LCCOMB_X90_Y14_N24
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~420_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~405_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[349]~405_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[9]~10_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~420_combout\);

-- Location: LCCOMB_X88_Y17_N8
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~349_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~349_combout\);

-- Location: LCCOMB_X88_Y17_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~350_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~350_combout\);

-- Location: LCCOMB_X92_Y15_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~421_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~406_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~8_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[8]~8_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[348]~406_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~421_combout\);

-- Location: LCCOMB_X92_Y17_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~422_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~407_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~6_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[347]~407_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[7]~6_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~422_combout\);

-- Location: LCCOMB_X88_Y17_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~351_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~351_combout\);

-- Location: LCCOMB_X88_Y18_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~423_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~408_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[6]~4_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[346]~408_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~423_combout\);

-- Location: LCCOMB_X88_Y17_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~352_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~352_combout\);

-- Location: LCCOMB_X88_Y17_N12
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~353_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~353_combout\);

-- Location: LCCOMB_X92_Y16_N2
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~424_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~409_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~2_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[5]~2_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[345]~409_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~424_combout\);

-- Location: LCCOMB_X88_Y17_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~354_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~354_combout\);

-- Location: LCCOMB_X92_Y16_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~425_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~335_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[344]~335_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[4]~0_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~425_combout\);

-- Location: LCCOMB_X92_Y18_N24
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~355_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~411_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~410_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~411_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[343]~410_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~355_combout\);

-- Location: LCCOMB_X89_Y17_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~356_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~0_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~0_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~356_combout\);

-- Location: LCCOMB_X89_Y17_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~359_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & \pulse_generator|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datad => \pulse_generator|s_counter\(4),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~359_combout\);

-- Location: LCCOMB_X89_Y17_N18
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~358_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\ & \pulse_generator|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~24_combout\,
	datad => \pulse_generator|s_counter\(4),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~358_combout\);

-- Location: LCCOMB_X89_Y17_N20
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[1]~30_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~359_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~358_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~359_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[300]~358_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[1]~30_combout\);

-- Location: LCCOMB_X89_Y17_N26
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~443_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & (\pulse_generator|s_counter\(4))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[1]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(4),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[1]~30_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~443_combout\);

-- Location: LCCOMB_X89_Y17_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~360_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[1]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[1]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~360_combout\);

-- Location: LCCOMB_X89_Y17_N24
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~357_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\ & \pulse_generator|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	datad => \pulse_generator|s_counter\(4),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~357_combout\);

-- Location: LCCOMB_X89_Y17_N22
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[2]~30_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~360_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~357_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~360_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[321]~357_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[2]~30_combout\);

-- Location: LCCOMB_X89_Y17_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~361_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[2]~30_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[2]~30_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~361_combout\);

-- Location: LCCOMB_X89_Y17_N4
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[3]~32_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~443_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~361_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~443_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~361_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[3]~32_combout\);

-- Location: LCCOMB_X89_Y17_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~362_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[3]~32_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[3]~32_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~362_combout\);

-- Location: LCCOMB_X89_Y17_N8
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~426_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~443_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[2]~30_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[2]~30_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[342]~443_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~426_combout\);

-- Location: LCCOMB_X88_Y17_N16
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~0_combout\ = (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~362_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~426_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~1\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~362_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~426_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~362_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~426_combout\,
	datad => VCC,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~0_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~1\);

-- Location: LCCOMB_X88_Y17_N18
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~2_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~1\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~355_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~356_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~1\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~355_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~356_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~3\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~355_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~356_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~355_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~356_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~1\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~2_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~3\);

-- Location: LCCOMB_X88_Y17_N20
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~4_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~3\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~354_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~425_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~3\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~354_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~425_combout\) # 
-- (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~5\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~354_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~425_combout\) 
-- # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~354_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~425_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~3\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~4_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~5\);

-- Location: LCCOMB_X88_Y17_N22
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~6_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~5\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~353_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~424_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~5\ 
-- & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~353_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~424_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~7\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~353_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~424_combout\ 
-- & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~353_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~424_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~5\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~6_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~7\);

-- Location: LCCOMB_X88_Y17_N24
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~8_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~7\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~423_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~352_combout\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~7\ 
-- & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~423_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~352_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~9\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~7\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~423_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~423_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~352_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~7\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~8_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~9\);

-- Location: LCCOMB_X88_Y17_N26
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~10_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~422_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~9\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~422_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~351_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~9\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~351_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~9\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~11\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~422_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~351_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~422_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~351_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~9\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~10_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~11\);

-- Location: LCCOMB_X88_Y17_N28
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~12_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~11\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~350_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~421_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~11\ & ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~350_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~421_combout\)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~13\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~11\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~350_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~350_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~421_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~11\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~12_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~13\);

-- Location: LCCOMB_X88_Y17_N30
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~14_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~13\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~420_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~349_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~13\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~420_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~349_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~15\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~420_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~349_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~420_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~349_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~13\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~14_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~15\);

-- Location: LCCOMB_X88_Y16_N0
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~16_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~15\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~348_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~419_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~15\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~348_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~419_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~17\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~348_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~419_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~348_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~419_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~15\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~16_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~17\);

-- Location: LCCOMB_X88_Y16_N2
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~18_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~347_combout\ & 
-- (((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~17\)))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~347_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~418_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~17\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~418_combout\ 
-- & ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~17\) # (GND)))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~19\ = CARRY(((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~347_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~418_combout\)) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~347_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~418_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~17\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~18_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~19\);

-- Location: LCCOMB_X88_Y16_N4
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~20_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~19\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~417_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~346_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~19\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~417_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~346_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~21\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~417_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~346_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~417_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~346_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~19\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~20_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~21\);

-- Location: LCCOMB_X88_Y16_N6
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~22_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~21\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~416_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~345_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~21\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~416_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~345_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~23\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~416_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~345_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~416_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~345_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~21\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~22_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~23\);

-- Location: LCCOMB_X88_Y16_N8
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~24_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~23\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~415_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~344_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~23\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~415_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~344_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~25\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~415_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~344_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~415_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~344_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~23\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~24_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~25\);

-- Location: LCCOMB_X88_Y16_N10
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~26_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~25\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~414_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~343_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~25\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~414_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~343_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~27\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~414_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~343_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~414_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~343_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~25\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~26_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~27\);

-- Location: LCCOMB_X88_Y16_N12
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~28_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~27\ & 
-- ((((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~413_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~342_combout\))))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~27\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~413_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~342_combout\) 
-- # (GND))))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~29\ = CARRY((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~413_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~342_combout\) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~413_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~342_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~27\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~28_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~29\);

-- Location: LCCOMB_X88_Y16_N14
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[19]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[19]~30_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~29\ & 
-- (((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~341_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~412_combout\)))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~29\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~341_combout\ & (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~412_combout\)))
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[19]~31\ = CARRY((!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~341_combout\ & 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~412_combout\ & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~341_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~412_combout\,
	datad => VCC,
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~29\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[19]~30_combout\,
	cout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[19]~31\);

-- Location: LCCOMB_X88_Y16_N16
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[20]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[20]~32_combout\ = \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[19]~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[19]~31\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[20]~32_combout\);

-- Location: LCCOMB_X87_Y18_N30
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~373_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & \pulse_generator|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \pulse_generator|s_counter\(1),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~373_combout\);

-- Location: LCCOMB_X87_Y18_N16
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~372_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & \pulse_generator|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \pulse_generator|s_counter\(1),
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~372_combout\);

-- Location: LCCOMB_X87_Y18_N2
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[1]~38_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~373_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~372_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~373_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[360]~372_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[1]~38_combout\);

-- Location: LCCOMB_X88_Y18_N6
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~363_combout\ = (\pulse_generator|s_counter\(3) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(3),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~363_combout\);

-- Location: LCCOMB_X88_Y18_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~365_combout\ = (\pulse_generator|s_counter\(3) & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(3),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~365_combout\);

-- Location: LCCOMB_X88_Y18_N0
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~364_combout\ = (\pulse_generator|s_counter\(3) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(3),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_16_result_int[17]~26_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~364_combout\);

-- Location: LCCOMB_X88_Y18_N24
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[1]~32_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~365_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~364_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~365_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[320]~364_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[1]~32_combout\);

-- Location: LCCOMB_X88_Y18_N8
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~366_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[1]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[1]~32_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~366_combout\);

-- Location: LCCOMB_X88_Y18_N10
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[2]~34_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~363_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~366_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~363_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[341]~366_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[2]~34_combout\);

-- Location: LCCOMB_X87_Y18_N14
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~369_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[2]~34_combout\ & 
-- !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[2]~34_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~369_combout\);

-- Location: LCCOMB_X87_Y18_N18
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~444_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & (\pulse_generator|s_counter\(3))) # (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\ & 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[1]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(3),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[1]~32_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~444_combout\);

-- Location: LCCOMB_X87_Y18_N26
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[3]~34_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~369_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~444_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~369_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~444_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[3]~34_combout\);

-- Location: LCCOMB_X87_Y18_N4
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~370_combout\ = (\pulse_generator|s_counter\(2) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(2),
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~370_combout\);

-- Location: LCCOMB_X87_Y18_N22
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~367_combout\ = (\pulse_generator|s_counter\(2) & \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(2),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~367_combout\);

-- Location: LCCOMB_X87_Y18_N28
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~368_combout\ = (\pulse_generator|s_counter\(2) & !\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|s_counter\(2),
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_17_result_int[18]~28_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~368_combout\);

-- Location: LCCOMB_X87_Y18_N0
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[1]~36_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~367_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~368_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~367_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[340]~368_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[1]~36_combout\);

-- Location: LCCOMB_X87_Y18_N10
\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~371_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[1]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[1]~36_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~371_combout\);

-- Location: LCCOMB_X87_Y18_N24
\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[2]~36_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~370_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~371_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~370_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[361]~371_combout\,
	combout => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[2]~36_combout\);

-- Location: LCCOMB_X87_Y18_N12
\bcd_counter|count_proc~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~15_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[1]~38_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[3]~34_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[2]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[1]~38_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[3]~34_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[2]~36_combout\,
	combout => \bcd_counter|count_proc~15_combout\);

-- Location: LCCOMB_X88_Y17_N4
\bcd_counter|count_proc~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~16_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~0_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~2_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~6_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[4]~0_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[5]~2_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[7]~6_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[6]~4_combout\,
	combout => \bcd_counter|count_proc~16_combout\);

-- Location: LCCOMB_X88_Y17_N10
\bcd_counter|count_proc~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~17_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~10_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~8_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~14_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[9]~10_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[8]~8_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[11]~14_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[10]~12_combout\,
	combout => \bcd_counter|count_proc~17_combout\);

-- Location: LCCOMB_X88_Y16_N24
\bcd_counter|count_proc~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~18_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~16_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~18_combout\) # 
-- ((\bcd_counter|count_proc~16_combout\) # (\bcd_counter|count_proc~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[12]~16_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[13]~18_combout\,
	datac => \bcd_counter|count_proc~16_combout\,
	datad => \bcd_counter|count_proc~17_combout\,
	combout => \bcd_counter|count_proc~18_combout\);

-- Location: LCCOMB_X88_Y16_N18
\bcd_counter|count_proc~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~19_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~22_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~20_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~24_combout\) # (\bcd_counter|count_proc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[15]~22_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[14]~20_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[16]~24_combout\,
	datad => \bcd_counter|count_proc~18_combout\,
	combout => \bcd_counter|count_proc~19_combout\);

-- Location: LCCOMB_X88_Y16_N28
\bcd_counter|count_proc~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~20_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~26_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[19]~30_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~28_combout\) # (\bcd_counter|count_proc~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[17]~26_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[19]~30_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[18]~28_combout\,
	datad => \bcd_counter|count_proc~19_combout\,
	combout => \bcd_counter|count_proc~20_combout\);

-- Location: LCCOMB_X88_Y16_N26
\bcd_counter|count_proc~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~21_combout\ = (\bcd_counter|count_proc~14_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[20]~32_combout\ & ((\bcd_counter|count_proc~15_combout\) # (\bcd_counter|count_proc~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|count_proc~14_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[20]~32_combout\,
	datac => \bcd_counter|count_proc~15_combout\,
	datad => \bcd_counter|count_proc~20_combout\,
	combout => \bcd_counter|count_proc~21_combout\);

-- Location: LCCOMB_X92_Y16_N24
\bcd_counter|count_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~1_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~424_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~425_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~414_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~415_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[366]~424_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[365]~425_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~414_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~415_combout\,
	combout => \bcd_counter|count_proc~1_combout\);

-- Location: LCCOMB_X90_Y18_N14
\bcd_counter|count_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~0_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~423_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~412_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~413_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~422_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[367]~423_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[378]~412_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[377]~413_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~422_combout\,
	combout => \bcd_counter|count_proc~0_combout\);

-- Location: LCCOMB_X90_Y16_N20
\bcd_counter|count_proc~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~7_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[3]~32_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[1]~36_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[2]~34_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[3]~32_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[1]~36_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[2]~34_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[4]~0_combout\,
	combout => \bcd_counter|count_proc~7_combout\);

-- Location: LCCOMB_X90_Y16_N22
\bcd_counter|count_proc~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~8_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\) # ((\bcd_counter|count_proc~7_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\,
	datab => \bcd_counter|count_proc~7_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\,
	combout => \bcd_counter|count_proc~8_combout\);

-- Location: LCCOMB_X90_Y16_N4
\bcd_counter|count_proc~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~9_combout\ = (\pulse_generator|s_counter\(1)) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~417_combout\) # ((!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- \bcd_counter|count_proc~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(1),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \bcd_counter|count_proc~8_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[373]~417_combout\,
	combout => \bcd_counter|count_proc~9_combout\);

-- Location: LCCOMB_X90_Y16_N30
\bcd_counter|count_proc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~2_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\pulse_generator|s_counter\(2))) # 
-- (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(2),
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\,
	combout => \bcd_counter|count_proc~2_combout\);

-- Location: LCCOMB_X90_Y16_N12
\bcd_counter|count_proc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~3_combout\ = (\bcd_counter|count_proc~2_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~345_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~344_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~343_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|count_proc~2_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~345_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[375]~344_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[376]~343_combout\,
	combout => \bcd_counter|count_proc~3_combout\);

-- Location: LCCOMB_X90_Y16_N18
\bcd_counter|count_proc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~4_combout\ = (!\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\) # 
-- ((\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\,
	combout => \bcd_counter|count_proc~4_combout\);

-- Location: LCCOMB_X90_Y16_N0
\bcd_counter|count_proc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~5_combout\ = (\bcd_counter|count_proc~4_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~349_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~351_combout\) # 
-- (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~350_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|count_proc~4_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~349_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[368]~351_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~350_combout\,
	combout => \bcd_counter|count_proc~5_combout\);

-- Location: LCCOMB_X90_Y16_N6
\bcd_counter|count_proc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~6_combout\ = (\bcd_counter|count_proc~3_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~444_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~426_combout\) # 
-- (\bcd_counter|count_proc~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|count_proc~3_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[362]~444_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[363]~426_combout\,
	datad => \bcd_counter|count_proc~5_combout\,
	combout => \bcd_counter|count_proc~6_combout\);

-- Location: LCCOMB_X90_Y16_N26
\bcd_counter|count_proc~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~10_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~355_combout\) # ((\bcd_counter|count_proc~9_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~416_combout\) # 
-- (\bcd_counter|count_proc~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[364]~355_combout\,
	datab => \bcd_counter|count_proc~9_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[374]~416_combout\,
	datad => \bcd_counter|count_proc~6_combout\,
	combout => \bcd_counter|count_proc~10_combout\);

-- Location: LCCOMB_X92_Y17_N0
\bcd_counter|count_proc~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~11_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~419_combout\) # (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~418_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[371]~419_combout\,
	datad => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[372]~418_combout\,
	combout => \bcd_counter|count_proc~11_combout\);

-- Location: LCCOMB_X90_Y16_N28
\bcd_counter|count_proc~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~12_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~420_combout\) # ((\pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~421_combout\) # ((\bcd_counter|count_proc~10_combout\) # 
-- (\bcd_counter|count_proc~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[370]~420_combout\,
	datab => \pulse_generator|Mod0|auto_generated|divider|divider|StageOut[369]~421_combout\,
	datac => \bcd_counter|count_proc~10_combout\,
	datad => \bcd_counter|count_proc~11_combout\,
	combout => \bcd_counter|count_proc~12_combout\);

-- Location: LCCOMB_X89_Y16_N28
\bcd_counter|count_proc~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|count_proc~13_combout\ = (\pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[20]~32_combout\ & ((\bcd_counter|count_proc~1_combout\) # ((\bcd_counter|count_proc~0_combout\) # (\bcd_counter|count_proc~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|count_proc~1_combout\,
	datab => \bcd_counter|count_proc~0_combout\,
	datac => \pulse_generator|Mod0|auto_generated|divider|divider|add_sub_19_result_int[20]~32_combout\,
	datad => \bcd_counter|count_proc~12_combout\,
	combout => \bcd_counter|count_proc~13_combout\);

-- Location: LCCOMB_X89_Y16_N18
\bcd_counter|s_count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count[3]~1_combout\ = ((!\bcd_counter|count_proc~21_combout\ & !\bcd_counter|count_proc~13_combout\)) # (!\control_unit|s_currentState.CLEARED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit|s_currentState.CLEARED~q\,
	datac => \bcd_counter|count_proc~21_combout\,
	datad => \bcd_counter|count_proc~13_combout\,
	combout => \bcd_counter|s_count[3]~1_combout\);

-- Location: FF_X89_Y16_N1
\bcd_counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count~0_combout\,
	sload => VCC,
	ena => \bcd_counter|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(0));

-- Location: LCCOMB_X89_Y16_N30
\bcd_counter|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~2_combout\ = (\bcd_counter|Equal0~0_combout\ & (\control_unit|s_currentState.CLEARED~q\ & (\bcd_counter|s_count\(0) $ (\bcd_counter|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|Equal0~0_combout\,
	datab => \bcd_counter|s_count\(0),
	datac => \bcd_counter|s_count\(1),
	datad => \control_unit|s_currentState.CLEARED~q\,
	combout => \bcd_counter|s_count~2_combout\);

-- Location: FF_X89_Y16_N31
\bcd_counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~2_combout\,
	ena => \bcd_counter|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(1));

-- Location: LCCOMB_X89_Y16_N20
\bcd_counter|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|Add3~1_combout\ = \bcd_counter|s_count\(3) $ (((\bcd_counter|s_count\(1) & (\bcd_counter|s_count\(2) & \bcd_counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|s_count\(1),
	datab => \bcd_counter|s_count\(2),
	datac => \bcd_counter|s_count\(0),
	datad => \bcd_counter|s_count\(3),
	combout => \bcd_counter|Add3~1_combout\);

-- Location: LCCOMB_X89_Y16_N10
\bcd_counter|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~4_combout\ = (\bcd_counter|Equal0~0_combout\ & (\control_unit|s_currentState.CLEARED~q\ & \bcd_counter|Add3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|Equal0~0_combout\,
	datab => \control_unit|s_currentState.CLEARED~q\,
	datad => \bcd_counter|Add3~1_combout\,
	combout => \bcd_counter|s_count~4_combout\);

-- Location: FF_X89_Y16_N11
\bcd_counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~4_combout\,
	ena => \bcd_counter|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(3));

-- Location: LCCOMB_X91_Y16_N18
\bcd_counter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|Equal0~0_combout\ = (\bcd_counter|s_count\(2)) # (((\bcd_counter|s_count\(1)) # (!\bcd_counter|s_count\(3))) # (!\bcd_counter|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|s_count\(2),
	datab => \bcd_counter|s_count\(0),
	datac => \bcd_counter|s_count\(3),
	datad => \bcd_counter|s_count\(1),
	combout => \bcd_counter|Equal0~0_combout\);

-- Location: LCCOMB_X89_Y16_N0
\bcd_counter|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|Add3~0_combout\ = \bcd_counter|s_count\(2) $ (((\bcd_counter|s_count\(1) & \bcd_counter|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|s_count\(1),
	datab => \bcd_counter|s_count\(2),
	datac => \bcd_counter|s_count\(0),
	combout => \bcd_counter|Add3~0_combout\);

-- Location: LCCOMB_X89_Y16_N24
\bcd_counter|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~3_combout\ = (\control_unit|s_currentState.CLEARED~q\ & (\bcd_counter|Equal0~0_combout\ & \bcd_counter|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit|s_currentState.CLEARED~q\,
	datac => \bcd_counter|Equal0~0_combout\,
	datad => \bcd_counter|Add3~0_combout\,
	combout => \bcd_counter|s_count~3_combout\);

-- Location: FF_X89_Y16_N25
\bcd_counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~3_combout\,
	ena => \bcd_counter|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(2));

-- Location: LCCOMB_X94_Y16_N2
\control_unit|regEnb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_unit|regEnb~1_combout\ = (!\control_unit|s_currentState.STOPPED1~q\ & !\control_unit|s_currentState.LAPVIEW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit|s_currentState.STOPPED1~q\,
	datad => \control_unit|s_currentState.LAPVIEW~q\,
	combout => \control_unit|regEnb~1_combout\);

-- Location: FF_X91_Y16_N21
\freeze_register|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(2),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(2));

-- Location: FF_X91_Y16_N7
\freeze_register|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(1),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(1));

-- Location: FF_X91_Y16_N19
\freeze_register|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(3),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(3));

-- Location: LCCOMB_X94_Y16_N28
\freeze_register|dataOut[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freeze_register|dataOut[0]~feeder_combout\ = \bcd_counter|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcd_counter|s_count\(0),
	combout => \freeze_register|dataOut[0]~feeder_combout\);

-- Location: FF_X94_Y16_N29
\freeze_register|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \freeze_register|dataOut[0]~feeder_combout\,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(0));

-- Location: LCCOMB_X95_Y16_N20
\disp_0_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_0_decoder|Mux0~0_combout\ = (\freeze_register|dataOut\(0) & ((\freeze_register|dataOut\(3)) # (\freeze_register|dataOut\(2) $ (\freeze_register|dataOut\(1))))) # (!\freeze_register|dataOut\(0) & ((\freeze_register|dataOut\(1)) # 
-- (\freeze_register|dataOut\(2) $ (\freeze_register|dataOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(2),
	datab => \freeze_register|dataOut\(1),
	datac => \freeze_register|dataOut\(3),
	datad => \freeze_register|dataOut\(0),
	combout => \disp_0_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X95_Y16_N26
\disp_0_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_0_decoder|Mux1~0_combout\ = (\freeze_register|dataOut\(2) & (\freeze_register|dataOut\(0) & (\freeze_register|dataOut\(1) $ (\freeze_register|dataOut\(3))))) # (!\freeze_register|dataOut\(2) & (!\freeze_register|dataOut\(3) & 
-- ((\freeze_register|dataOut\(1)) # (\freeze_register|dataOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(2),
	datab => \freeze_register|dataOut\(1),
	datac => \freeze_register|dataOut\(3),
	datad => \freeze_register|dataOut\(0),
	combout => \disp_0_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X95_Y16_N4
\disp_0_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_0_decoder|Mux2~0_combout\ = (\freeze_register|dataOut\(1) & (((!\freeze_register|dataOut\(3) & \freeze_register|dataOut\(0))))) # (!\freeze_register|dataOut\(1) & ((\freeze_register|dataOut\(2) & (!\freeze_register|dataOut\(3))) # 
-- (!\freeze_register|dataOut\(2) & ((\freeze_register|dataOut\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(2),
	datab => \freeze_register|dataOut\(1),
	datac => \freeze_register|dataOut\(3),
	datad => \freeze_register|dataOut\(0),
	combout => \disp_0_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X95_Y16_N14
\disp_0_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_0_decoder|Mux3~0_combout\ = (\freeze_register|dataOut\(1) & ((\freeze_register|dataOut\(2) & ((\freeze_register|dataOut\(0)))) # (!\freeze_register|dataOut\(2) & (\freeze_register|dataOut\(3) & !\freeze_register|dataOut\(0))))) # 
-- (!\freeze_register|dataOut\(1) & (!\freeze_register|dataOut\(3) & (\freeze_register|dataOut\(2) $ (\freeze_register|dataOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(2),
	datab => \freeze_register|dataOut\(1),
	datac => \freeze_register|dataOut\(3),
	datad => \freeze_register|dataOut\(0),
	combout => \disp_0_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X95_Y16_N16
\disp_0_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_0_decoder|Mux4~0_combout\ = (\freeze_register|dataOut\(2) & (\freeze_register|dataOut\(3) & ((\freeze_register|dataOut\(1)) # (!\freeze_register|dataOut\(0))))) # (!\freeze_register|dataOut\(2) & (\freeze_register|dataOut\(1) & 
-- (!\freeze_register|dataOut\(3) & !\freeze_register|dataOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(2),
	datab => \freeze_register|dataOut\(1),
	datac => \freeze_register|dataOut\(3),
	datad => \freeze_register|dataOut\(0),
	combout => \disp_0_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X95_Y16_N10
\disp_0_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_0_decoder|Mux5~0_combout\ = (\freeze_register|dataOut\(1) & ((\freeze_register|dataOut\(0) & ((\freeze_register|dataOut\(3)))) # (!\freeze_register|dataOut\(0) & (\freeze_register|dataOut\(2))))) # (!\freeze_register|dataOut\(1) & 
-- (\freeze_register|dataOut\(2) & (\freeze_register|dataOut\(3) $ (\freeze_register|dataOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(2),
	datab => \freeze_register|dataOut\(1),
	datac => \freeze_register|dataOut\(3),
	datad => \freeze_register|dataOut\(0),
	combout => \disp_0_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X95_Y16_N0
\disp_0_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_0_decoder|Mux6~0_combout\ = (\freeze_register|dataOut\(2) & (!\freeze_register|dataOut\(1) & (\freeze_register|dataOut\(3) $ (!\freeze_register|dataOut\(0))))) # (!\freeze_register|dataOut\(2) & (\freeze_register|dataOut\(0) & 
-- (\freeze_register|dataOut\(1) $ (!\freeze_register|dataOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(2),
	datab => \freeze_register|dataOut\(1),
	datac => \freeze_register|dataOut\(3),
	datad => \freeze_register|dataOut\(0),
	combout => \disp_0_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X89_Y16_N8
\bcd_counter|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~5_combout\ = (!\bcd_counter|s_count\(4) & \control_unit|s_currentState.CLEARED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_counter|s_count\(4),
	datad => \control_unit|s_currentState.CLEARED~q\,
	combout => \bcd_counter|s_count~5_combout\);

-- Location: LCCOMB_X89_Y16_N14
\bcd_counter|s_count[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count[7]~6_combout\ = ((!\bcd_counter|Equal0~0_combout\ & (!\bcd_counter|count_proc~21_combout\ & !\bcd_counter|count_proc~13_combout\))) # (!\control_unit|s_currentState.CLEARED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|Equal0~0_combout\,
	datab => \control_unit|s_currentState.CLEARED~q\,
	datac => \bcd_counter|count_proc~21_combout\,
	datad => \bcd_counter|count_proc~13_combout\,
	combout => \bcd_counter|s_count[7]~6_combout\);

-- Location: FF_X89_Y16_N9
\bcd_counter|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~5_combout\,
	ena => \bcd_counter|s_count[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(4));

-- Location: LCCOMB_X90_Y16_N2
\bcd_counter|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|Add2~0_combout\ = \bcd_counter|s_count\(6) $ (((\bcd_counter|s_count\(5) & \bcd_counter|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_counter|s_count\(6),
	datac => \bcd_counter|s_count\(5),
	datad => \bcd_counter|s_count\(4),
	combout => \bcd_counter|Add2~0_combout\);

-- Location: LCCOMB_X89_Y16_N16
\bcd_counter|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~8_combout\ = (\control_unit|s_currentState.CLEARED~q\ & (\bcd_counter|Equal1~0_combout\ & \bcd_counter|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit|s_currentState.CLEARED~q\,
	datab => \bcd_counter|Equal1~0_combout\,
	datad => \bcd_counter|Add2~0_combout\,
	combout => \bcd_counter|s_count~8_combout\);

-- Location: FF_X89_Y16_N17
\bcd_counter|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~8_combout\,
	ena => \bcd_counter|s_count[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(6));

-- Location: LCCOMB_X89_Y16_N22
\bcd_counter|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|Add2~1_combout\ = \bcd_counter|s_count\(7) $ (((\bcd_counter|s_count\(4) & (\bcd_counter|s_count\(5) & \bcd_counter|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|s_count\(4),
	datab => \bcd_counter|s_count\(5),
	datac => \bcd_counter|s_count\(7),
	datad => \bcd_counter|s_count\(6),
	combout => \bcd_counter|Add2~1_combout\);

-- Location: LCCOMB_X89_Y16_N26
\bcd_counter|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~9_combout\ = (\bcd_counter|Equal1~0_combout\ & (\bcd_counter|Add2~1_combout\ & \control_unit|s_currentState.CLEARED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_counter|Equal1~0_combout\,
	datac => \bcd_counter|Add2~1_combout\,
	datad => \control_unit|s_currentState.CLEARED~q\,
	combout => \bcd_counter|s_count~9_combout\);

-- Location: FF_X89_Y16_N27
\bcd_counter|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~9_combout\,
	ena => \bcd_counter|s_count[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(7));

-- Location: LCCOMB_X89_Y16_N4
\bcd_counter|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|Equal1~0_combout\ = ((\bcd_counter|s_count\(5)) # ((\bcd_counter|s_count\(6)) # (!\bcd_counter|s_count\(4)))) # (!\bcd_counter|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|s_count\(7),
	datab => \bcd_counter|s_count\(5),
	datac => \bcd_counter|s_count\(4),
	datad => \bcd_counter|s_count\(6),
	combout => \bcd_counter|Equal1~0_combout\);

-- Location: LCCOMB_X89_Y16_N2
\bcd_counter|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~7_combout\ = (\control_unit|s_currentState.CLEARED~q\ & (\bcd_counter|Equal1~0_combout\ & (\bcd_counter|s_count\(5) $ (\bcd_counter|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit|s_currentState.CLEARED~q\,
	datab => \bcd_counter|Equal1~0_combout\,
	datac => \bcd_counter|s_count\(5),
	datad => \bcd_counter|s_count\(4),
	combout => \bcd_counter|s_count~7_combout\);

-- Location: FF_X89_Y16_N3
\bcd_counter|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~7_combout\,
	ena => \bcd_counter|s_count[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(5));

-- Location: FF_X90_Y16_N3
\freeze_register|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(5),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(5));

-- Location: LCCOMB_X90_Y16_N8
\freeze_register|dataOut[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freeze_register|dataOut[4]~feeder_combout\ = \bcd_counter|s_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcd_counter|s_count\(4),
	combout => \freeze_register|dataOut[4]~feeder_combout\);

-- Location: FF_X90_Y16_N9
\freeze_register|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \freeze_register|dataOut[4]~feeder_combout\,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(4));

-- Location: FF_X94_Y16_N23
\freeze_register|dataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(7),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(7));

-- Location: FF_X90_Y16_N17
\freeze_register|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(6),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(6));

-- Location: LCCOMB_X94_Y16_N20
\disp_1_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_1_decoder|Mux0~0_combout\ = (\freeze_register|dataOut\(4) & ((\freeze_register|dataOut\(7)) # (\freeze_register|dataOut\(5) $ (\freeze_register|dataOut\(6))))) # (!\freeze_register|dataOut\(4) & ((\freeze_register|dataOut\(5)) # 
-- (\freeze_register|dataOut\(7) $ (\freeze_register|dataOut\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(5),
	datab => \freeze_register|dataOut\(4),
	datac => \freeze_register|dataOut\(7),
	datad => \freeze_register|dataOut\(6),
	combout => \disp_1_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X94_Y16_N14
\disp_1_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_1_decoder|Mux1~0_combout\ = (\freeze_register|dataOut\(5) & (!\freeze_register|dataOut\(7) & ((\freeze_register|dataOut\(4)) # (!\freeze_register|dataOut\(6))))) # (!\freeze_register|dataOut\(5) & (\freeze_register|dataOut\(4) & 
-- (\freeze_register|dataOut\(7) $ (!\freeze_register|dataOut\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(5),
	datab => \freeze_register|dataOut\(4),
	datac => \freeze_register|dataOut\(7),
	datad => \freeze_register|dataOut\(6),
	combout => \disp_1_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X94_Y16_N12
\disp_1_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_1_decoder|Mux2~0_combout\ = (\freeze_register|dataOut\(5) & (\freeze_register|dataOut\(4) & (!\freeze_register|dataOut\(7)))) # (!\freeze_register|dataOut\(5) & ((\freeze_register|dataOut\(6) & ((!\freeze_register|dataOut\(7)))) # 
-- (!\freeze_register|dataOut\(6) & (\freeze_register|dataOut\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(5),
	datab => \freeze_register|dataOut\(4),
	datac => \freeze_register|dataOut\(7),
	datad => \freeze_register|dataOut\(6),
	combout => \disp_1_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X94_Y16_N18
\disp_1_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_1_decoder|Mux3~0_combout\ = (\freeze_register|dataOut\(5) & ((\freeze_register|dataOut\(4) & ((\freeze_register|dataOut\(6)))) # (!\freeze_register|dataOut\(4) & (\freeze_register|dataOut\(7) & !\freeze_register|dataOut\(6))))) # 
-- (!\freeze_register|dataOut\(5) & (!\freeze_register|dataOut\(7) & (\freeze_register|dataOut\(4) $ (\freeze_register|dataOut\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(5),
	datab => \freeze_register|dataOut\(4),
	datac => \freeze_register|dataOut\(7),
	datad => \freeze_register|dataOut\(6),
	combout => \disp_1_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X94_Y16_N16
\disp_1_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_1_decoder|Mux4~0_combout\ = (\freeze_register|dataOut\(7) & (\freeze_register|dataOut\(6) & ((\freeze_register|dataOut\(5)) # (!\freeze_register|dataOut\(4))))) # (!\freeze_register|dataOut\(7) & (\freeze_register|dataOut\(5) & 
-- (!\freeze_register|dataOut\(4) & !\freeze_register|dataOut\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(5),
	datab => \freeze_register|dataOut\(4),
	datac => \freeze_register|dataOut\(7),
	datad => \freeze_register|dataOut\(6),
	combout => \disp_1_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X94_Y16_N26
\disp_1_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_1_decoder|Mux5~0_combout\ = (\freeze_register|dataOut\(5) & ((\freeze_register|dataOut\(4) & (\freeze_register|dataOut\(7))) # (!\freeze_register|dataOut\(4) & ((\freeze_register|dataOut\(6)))))) # (!\freeze_register|dataOut\(5) & 
-- (\freeze_register|dataOut\(6) & (\freeze_register|dataOut\(4) $ (\freeze_register|dataOut\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(5),
	datab => \freeze_register|dataOut\(4),
	datac => \freeze_register|dataOut\(7),
	datad => \freeze_register|dataOut\(6),
	combout => \disp_1_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X94_Y16_N8
\disp_1_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_1_decoder|Mux6~0_combout\ = (\freeze_register|dataOut\(7) & (\freeze_register|dataOut\(4) & (\freeze_register|dataOut\(5) $ (\freeze_register|dataOut\(6))))) # (!\freeze_register|dataOut\(7) & (!\freeze_register|dataOut\(5) & 
-- (\freeze_register|dataOut\(4) $ (\freeze_register|dataOut\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(5),
	datab => \freeze_register|dataOut\(4),
	datac => \freeze_register|dataOut\(7),
	datad => \freeze_register|dataOut\(6),
	combout => \disp_1_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y14_N10
\bcd_counter|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~10_combout\ = (!\bcd_counter|s_count\(8) & \control_unit|s_currentState.CLEARED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_counter|s_count\(8),
	datad => \control_unit|s_currentState.CLEARED~q\,
	combout => \bcd_counter|s_count~10_combout\);

-- Location: LCCOMB_X87_Y16_N16
\bcd_counter|s_count[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count[7]~11_combout\ = (!\bcd_counter|Equal0~0_combout\ & (!\bcd_counter|count_proc~13_combout\ & !\bcd_counter|count_proc~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|Equal0~0_combout\,
	datac => \bcd_counter|count_proc~13_combout\,
	datad => \bcd_counter|count_proc~21_combout\,
	combout => \bcd_counter|s_count[7]~11_combout\);

-- Location: LCCOMB_X87_Y16_N20
\bcd_counter|s_count[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count[11]~12_combout\ = ((!\bcd_counter|Equal1~0_combout\ & \bcd_counter|s_count[7]~11_combout\)) # (!\control_unit|s_currentState.CLEARED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit|s_currentState.CLEARED~q\,
	datac => \bcd_counter|Equal1~0_combout\,
	datad => \bcd_counter|s_count[7]~11_combout\,
	combout => \bcd_counter|s_count[11]~12_combout\);

-- Location: FF_X87_Y16_N15
\bcd_counter|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count~10_combout\,
	sload => VCC,
	ena => \bcd_counter|s_count[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(8));

-- Location: FF_X87_Y16_N7
\freeze_register|dataOut[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(8),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(8));

-- Location: LCCOMB_X87_Y16_N4
\bcd_counter|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|Add1~1_combout\ = \bcd_counter|s_count\(11) $ (((\bcd_counter|s_count\(9) & (\bcd_counter|s_count\(8) & \bcd_counter|s_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|s_count\(9),
	datab => \bcd_counter|s_count\(11),
	datac => \bcd_counter|s_count\(8),
	datad => \bcd_counter|s_count\(10),
	combout => \bcd_counter|Add1~1_combout\);

-- Location: LCCOMB_X87_Y16_N8
\bcd_counter|s_count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~16_combout\ = (!\bcd_counter|s_count[11]~13_combout\ & (\bcd_counter|Add1~1_combout\ & \control_unit|s_currentState.CLEARED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|s_count[11]~13_combout\,
	datac => \bcd_counter|Add1~1_combout\,
	datad => \control_unit|s_currentState.CLEARED~q\,
	combout => \bcd_counter|s_count~16_combout\);

-- Location: FF_X87_Y16_N9
\bcd_counter|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~16_combout\,
	ena => \bcd_counter|s_count[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(11));

-- Location: LCCOMB_X87_Y16_N12
\bcd_counter|s_count[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count[11]~13_combout\ = (!\bcd_counter|s_count\(9) & (\bcd_counter|s_count\(11) & (\bcd_counter|s_count\(8) & !\bcd_counter|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|s_count\(9),
	datab => \bcd_counter|s_count\(11),
	datac => \bcd_counter|s_count\(8),
	datad => \bcd_counter|s_count\(10),
	combout => \bcd_counter|s_count[11]~13_combout\);

-- Location: LCCOMB_X87_Y16_N0
\bcd_counter|s_count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~14_combout\ = (\control_unit|s_currentState.CLEARED~q\ & (!\bcd_counter|s_count[11]~13_combout\ & (\bcd_counter|s_count\(8) $ (\bcd_counter|s_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit|s_currentState.CLEARED~q\,
	datab => \bcd_counter|s_count\(8),
	datac => \bcd_counter|s_count\(9),
	datad => \bcd_counter|s_count[11]~13_combout\,
	combout => \bcd_counter|s_count~14_combout\);

-- Location: FF_X87_Y16_N1
\bcd_counter|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~14_combout\,
	ena => \bcd_counter|s_count[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(9));

-- Location: LCCOMB_X87_Y16_N14
\bcd_counter|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|Add1~0_combout\ = \bcd_counter|s_count\(10) $ (((\bcd_counter|s_count\(8) & \bcd_counter|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_counter|s_count\(10),
	datac => \bcd_counter|s_count\(8),
	datad => \bcd_counter|s_count\(9),
	combout => \bcd_counter|Add1~0_combout\);

-- Location: LCCOMB_X87_Y16_N10
\bcd_counter|s_count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~15_combout\ = (\bcd_counter|Add1~0_combout\ & (\control_unit|s_currentState.CLEARED~q\ & !\bcd_counter|s_count[11]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|Add1~0_combout\,
	datab => \control_unit|s_currentState.CLEARED~q\,
	datad => \bcd_counter|s_count[11]~13_combout\,
	combout => \bcd_counter|s_count~15_combout\);

-- Location: FF_X87_Y16_N11
\bcd_counter|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~15_combout\,
	ena => \bcd_counter|s_count[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(10));

-- Location: FF_X87_Y16_N25
\freeze_register|dataOut[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(10),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(10));

-- Location: FF_X87_Y16_N19
\freeze_register|dataOut[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(9),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(9));

-- Location: FF_X87_Y16_N3
\freeze_register|dataOut[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(11),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(11));

-- Location: LCCOMB_X87_Y16_N22
\disp_2_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_2_decoder|Mux0~0_combout\ = (\freeze_register|dataOut\(8) & ((\freeze_register|dataOut\(11)) # (\freeze_register|dataOut\(10) $ (\freeze_register|dataOut\(9))))) # (!\freeze_register|dataOut\(8) & ((\freeze_register|dataOut\(9)) # 
-- (\freeze_register|dataOut\(10) $ (\freeze_register|dataOut\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(8),
	datab => \freeze_register|dataOut\(10),
	datac => \freeze_register|dataOut\(9),
	datad => \freeze_register|dataOut\(11),
	combout => \disp_2_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y16_N30
\disp_2_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_2_decoder|Mux1~0_combout\ = (\freeze_register|dataOut\(8) & (\freeze_register|dataOut\(11) $ (((\freeze_register|dataOut\(9)) # (!\freeze_register|dataOut\(10)))))) # (!\freeze_register|dataOut\(8) & (!\freeze_register|dataOut\(10) & 
-- (\freeze_register|dataOut\(9) & !\freeze_register|dataOut\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(8),
	datab => \freeze_register|dataOut\(10),
	datac => \freeze_register|dataOut\(9),
	datad => \freeze_register|dataOut\(11),
	combout => \disp_2_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X87_Y16_N28
\disp_2_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_2_decoder|Mux2~0_combout\ = (\freeze_register|dataOut\(9) & (\freeze_register|dataOut\(8) & ((!\freeze_register|dataOut\(11))))) # (!\freeze_register|dataOut\(9) & ((\freeze_register|dataOut\(10) & ((!\freeze_register|dataOut\(11)))) # 
-- (!\freeze_register|dataOut\(10) & (\freeze_register|dataOut\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(8),
	datab => \freeze_register|dataOut\(10),
	datac => \freeze_register|dataOut\(9),
	datad => \freeze_register|dataOut\(11),
	combout => \disp_2_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X87_Y16_N6
\disp_2_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_2_decoder|Mux3~0_combout\ = (\freeze_register|dataOut\(9) & ((\freeze_register|dataOut\(10) & (\freeze_register|dataOut\(8))) # (!\freeze_register|dataOut\(10) & (!\freeze_register|dataOut\(8) & \freeze_register|dataOut\(11))))) # 
-- (!\freeze_register|dataOut\(9) & (!\freeze_register|dataOut\(11) & (\freeze_register|dataOut\(10) $ (\freeze_register|dataOut\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(9),
	datab => \freeze_register|dataOut\(10),
	datac => \freeze_register|dataOut\(8),
	datad => \freeze_register|dataOut\(11),
	combout => \disp_2_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X87_Y16_N18
\disp_2_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_2_decoder|Mux4~0_combout\ = (\freeze_register|dataOut\(11) & (\freeze_register|dataOut\(10) & ((\freeze_register|dataOut\(9)) # (!\freeze_register|dataOut\(8))))) # (!\freeze_register|dataOut\(11) & (!\freeze_register|dataOut\(8) & 
-- (\freeze_register|dataOut\(9) & !\freeze_register|dataOut\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(8),
	datab => \freeze_register|dataOut\(11),
	datac => \freeze_register|dataOut\(9),
	datad => \freeze_register|dataOut\(10),
	combout => \disp_2_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X87_Y16_N24
\disp_2_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_2_decoder|Mux5~0_combout\ = (\freeze_register|dataOut\(11) & ((\freeze_register|dataOut\(8) & ((\freeze_register|dataOut\(9)))) # (!\freeze_register|dataOut\(8) & (\freeze_register|dataOut\(10))))) # (!\freeze_register|dataOut\(11) & 
-- (\freeze_register|dataOut\(10) & (\freeze_register|dataOut\(8) $ (\freeze_register|dataOut\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(8),
	datab => \freeze_register|dataOut\(11),
	datac => \freeze_register|dataOut\(10),
	datad => \freeze_register|dataOut\(9),
	combout => \disp_2_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X87_Y16_N2
\disp_2_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_2_decoder|Mux6~0_combout\ = (\freeze_register|dataOut\(10) & (!\freeze_register|dataOut\(9) & (\freeze_register|dataOut\(8) $ (!\freeze_register|dataOut\(11))))) # (!\freeze_register|dataOut\(10) & (\freeze_register|dataOut\(8) & 
-- (\freeze_register|dataOut\(11) $ (!\freeze_register|dataOut\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(8),
	datab => \freeze_register|dataOut\(10),
	datac => \freeze_register|dataOut\(11),
	datad => \freeze_register|dataOut\(9),
	combout => \disp_2_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y14_N0
\bcd_counter|s_count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~17_combout\ = (!\bcd_counter|s_count\(12) & \control_unit|s_currentState.CLEARED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_counter|s_count\(12),
	datad => \control_unit|s_currentState.CLEARED~q\,
	combout => \bcd_counter|s_count~17_combout\);

-- Location: LCCOMB_X87_Y16_N26
\bcd_counter|s_count[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count[15]~18_combout\ = (\bcd_counter|Equal0~0_combout\) # ((\bcd_counter|Equal1~0_combout\) # (!\bcd_counter|s_count[11]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|Equal0~0_combout\,
	datac => \bcd_counter|Equal1~0_combout\,
	datad => \bcd_counter|s_count[11]~13_combout\,
	combout => \bcd_counter|s_count[15]~18_combout\);

-- Location: LCCOMB_X88_Y14_N2
\bcd_counter|s_count[15]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count[15]~19_combout\ = ((!\bcd_counter|count_proc~13_combout\ & (!\bcd_counter|s_count[15]~18_combout\ & !\bcd_counter|count_proc~21_combout\))) # (!\control_unit|s_currentState.CLEARED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|count_proc~13_combout\,
	datab => \control_unit|s_currentState.CLEARED~q\,
	datac => \bcd_counter|s_count[15]~18_combout\,
	datad => \bcd_counter|count_proc~21_combout\,
	combout => \bcd_counter|s_count[15]~19_combout\);

-- Location: FF_X88_Y14_N1
\bcd_counter|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~17_combout\,
	ena => \bcd_counter|s_count[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(12));

-- Location: LCCOMB_X88_Y14_N16
\bcd_counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|Add0~0_combout\ = \bcd_counter|s_count\(14) $ (((\bcd_counter|s_count\(13) & \bcd_counter|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_counter|s_count\(13),
	datac => \bcd_counter|s_count\(14),
	datad => \bcd_counter|s_count\(12),
	combout => \bcd_counter|Add0~0_combout\);

-- Location: LCCOMB_X88_Y14_N30
\bcd_counter|s_count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~22_combout\ = (\bcd_counter|Add0~0_combout\ & (\bcd_counter|s_count[15]~20_combout\ & \control_unit|s_currentState.CLEARED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_counter|Add0~0_combout\,
	datac => \bcd_counter|s_count[15]~20_combout\,
	datad => \control_unit|s_currentState.CLEARED~q\,
	combout => \bcd_counter|s_count~22_combout\);

-- Location: FF_X88_Y14_N31
\bcd_counter|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~22_combout\,
	ena => \bcd_counter|s_count[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(14));

-- Location: LCCOMB_X88_Y14_N6
\bcd_counter|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|Add0~1_combout\ = \bcd_counter|s_count\(15) $ (((\bcd_counter|s_count\(14) & (\bcd_counter|s_count\(13) & \bcd_counter|s_count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|s_count\(14),
	datab => \bcd_counter|s_count\(13),
	datac => \bcd_counter|s_count\(15),
	datad => \bcd_counter|s_count\(12),
	combout => \bcd_counter|Add0~1_combout\);

-- Location: LCCOMB_X88_Y14_N26
\bcd_counter|s_count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~23_combout\ = (\bcd_counter|Add0~1_combout\ & (\bcd_counter|s_count[15]~20_combout\ & \control_unit|s_currentState.CLEARED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|Add0~1_combout\,
	datac => \bcd_counter|s_count[15]~20_combout\,
	datad => \control_unit|s_currentState.CLEARED~q\,
	combout => \bcd_counter|s_count~23_combout\);

-- Location: FF_X88_Y14_N27
\bcd_counter|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~23_combout\,
	ena => \bcd_counter|s_count[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(15));

-- Location: LCCOMB_X88_Y14_N14
\bcd_counter|s_count[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count[15]~20_combout\ = (\bcd_counter|s_count\(14)) # ((\bcd_counter|s_count\(13)) # ((!\bcd_counter|s_count\(12)) # (!\bcd_counter|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|s_count\(14),
	datab => \bcd_counter|s_count\(13),
	datac => \bcd_counter|s_count\(15),
	datad => \bcd_counter|s_count\(12),
	combout => \bcd_counter|s_count[15]~20_combout\);

-- Location: LCCOMB_X88_Y14_N8
\bcd_counter|s_count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_counter|s_count~21_combout\ = (\control_unit|s_currentState.CLEARED~q\ & (\bcd_counter|s_count[15]~20_combout\ & (\bcd_counter|s_count\(13) $ (\bcd_counter|s_count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit|s_currentState.CLEARED~q\,
	datab => \bcd_counter|s_count[15]~20_combout\,
	datac => \bcd_counter|s_count\(13),
	datad => \bcd_counter|s_count\(12),
	combout => \bcd_counter|s_count~21_combout\);

-- Location: FF_X88_Y14_N9
\bcd_counter|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \bcd_counter|s_count~21_combout\,
	ena => \bcd_counter|s_count[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|s_count\(13));

-- Location: FF_X88_Y14_N13
\freeze_register|dataOut[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(13),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(13));

-- Location: FF_X88_Y14_N19
\freeze_register|dataOut[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(14),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(14));

-- Location: FF_X88_Y14_N15
\freeze_register|dataOut[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \bcd_counter|s_count\(15),
	sload => VCC,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(15));

-- Location: LCCOMB_X88_Y14_N28
\freeze_register|dataOut[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freeze_register|dataOut[12]~feeder_combout\ = \bcd_counter|s_count\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcd_counter|s_count\(12),
	combout => \freeze_register|dataOut[12]~feeder_combout\);

-- Location: FF_X88_Y14_N29
\freeze_register|dataOut[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \freeze_register|dataOut[12]~feeder_combout\,
	ena => \control_unit|regEnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_register|dataOut\(12));

-- Location: LCCOMB_X88_Y14_N4
\disp_3_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_3_decoder|Mux0~0_combout\ = (\freeze_register|dataOut\(12) & ((\freeze_register|dataOut\(15)) # (\freeze_register|dataOut\(13) $ (\freeze_register|dataOut\(14))))) # (!\freeze_register|dataOut\(12) & ((\freeze_register|dataOut\(13)) # 
-- (\freeze_register|dataOut\(14) $ (\freeze_register|dataOut\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(13),
	datab => \freeze_register|dataOut\(14),
	datac => \freeze_register|dataOut\(15),
	datad => \freeze_register|dataOut\(12),
	combout => \disp_3_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y14_N28
\disp_3_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_3_decoder|Mux1~0_combout\ = (\freeze_register|dataOut\(14) & (\freeze_register|dataOut\(12) & (\freeze_register|dataOut\(15) $ (\freeze_register|dataOut\(13))))) # (!\freeze_register|dataOut\(14) & (!\freeze_register|dataOut\(15) & 
-- ((\freeze_register|dataOut\(13)) # (\freeze_register|dataOut\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(15),
	datab => \freeze_register|dataOut\(14),
	datac => \freeze_register|dataOut\(13),
	datad => \freeze_register|dataOut\(12),
	combout => \disp_3_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X88_Y14_N22
\disp_3_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_3_decoder|Mux2~0_combout\ = (\freeze_register|dataOut\(13) & (((!\freeze_register|dataOut\(15) & \freeze_register|dataOut\(12))))) # (!\freeze_register|dataOut\(13) & ((\freeze_register|dataOut\(14) & (!\freeze_register|dataOut\(15))) # 
-- (!\freeze_register|dataOut\(14) & ((\freeze_register|dataOut\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(13),
	datab => \freeze_register|dataOut\(14),
	datac => \freeze_register|dataOut\(15),
	datad => \freeze_register|dataOut\(12),
	combout => \disp_3_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y14_N24
\disp_3_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_3_decoder|Mux3~0_combout\ = (\freeze_register|dataOut\(13) & ((\freeze_register|dataOut\(14) & ((\freeze_register|dataOut\(12)))) # (!\freeze_register|dataOut\(14) & (\freeze_register|dataOut\(15) & !\freeze_register|dataOut\(12))))) # 
-- (!\freeze_register|dataOut\(13) & (!\freeze_register|dataOut\(15) & (\freeze_register|dataOut\(14) $ (\freeze_register|dataOut\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(13),
	datab => \freeze_register|dataOut\(14),
	datac => \freeze_register|dataOut\(15),
	datad => \freeze_register|dataOut\(12),
	combout => \disp_3_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X88_Y14_N12
\disp_3_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_3_decoder|Mux4~0_combout\ = (\freeze_register|dataOut\(15) & (\freeze_register|dataOut\(14) & ((\freeze_register|dataOut\(13)) # (!\freeze_register|dataOut\(12))))) # (!\freeze_register|dataOut\(15) & (!\freeze_register|dataOut\(14) & 
-- (\freeze_register|dataOut\(13) & !\freeze_register|dataOut\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(15),
	datab => \freeze_register|dataOut\(14),
	datac => \freeze_register|dataOut\(13),
	datad => \freeze_register|dataOut\(12),
	combout => \disp_3_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X88_Y14_N18
\disp_3_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_3_decoder|Mux5~0_combout\ = (\freeze_register|dataOut\(15) & ((\freeze_register|dataOut\(12) & ((\freeze_register|dataOut\(13)))) # (!\freeze_register|dataOut\(12) & (\freeze_register|dataOut\(14))))) # (!\freeze_register|dataOut\(15) & 
-- (\freeze_register|dataOut\(14) & (\freeze_register|dataOut\(12) $ (\freeze_register|dataOut\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(15),
	datab => \freeze_register|dataOut\(12),
	datac => \freeze_register|dataOut\(14),
	datad => \freeze_register|dataOut\(13),
	combout => \disp_3_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X87_Y14_N22
\disp_3_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_3_decoder|Mux6~0_combout\ = (\freeze_register|dataOut\(15) & (\freeze_register|dataOut\(12) & (\freeze_register|dataOut\(14) $ (\freeze_register|dataOut\(13))))) # (!\freeze_register|dataOut\(15) & (!\freeze_register|dataOut\(13) & 
-- (\freeze_register|dataOut\(14) $ (\freeze_register|dataOut\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_register|dataOut\(15),
	datab => \freeze_register|dataOut\(14),
	datac => \freeze_register|dataOut\(13),
	datad => \freeze_register|dataOut\(12),
	combout => \disp_3_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X89_Y14_N10
\pulse_generator|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan1~1_combout\ = (!\pulse_generator|s_counter\(12) & (!\pulse_generator|s_counter\(9) & (!\pulse_generator|s_counter\(10) & !\pulse_generator|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(12),
	datab => \pulse_generator|s_counter\(9),
	datac => \pulse_generator|s_counter\(10),
	datad => \pulse_generator|s_counter\(11),
	combout => \pulse_generator|LessThan1~1_combout\);

-- Location: LCCOMB_X89_Y14_N28
\pulse_generator|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan1~0_combout\ = ((!\pulse_generator|s_counter\(5) & (!\pulse_generator|s_counter\(7) & !\pulse_generator|s_counter\(6)))) # (!\pulse_generator|s_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(5),
	datab => \pulse_generator|s_counter\(8),
	datac => \pulse_generator|s_counter\(7),
	datad => \pulse_generator|s_counter\(6),
	combout => \pulse_generator|LessThan1~0_combout\);

-- Location: LCCOMB_X89_Y14_N24
\pulse_generator|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan1~2_combout\ = (!\pulse_generator|s_counter\(14) & (((\pulse_generator|LessThan1~1_combout\ & \pulse_generator|LessThan1~0_combout\)) # (!\pulse_generator|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|LessThan1~1_combout\,
	datab => \pulse_generator|LessThan1~0_combout\,
	datac => \pulse_generator|s_counter\(13),
	datad => \pulse_generator|s_counter\(14),
	combout => \pulse_generator|LessThan1~2_combout\);

-- Location: LCCOMB_X88_Y14_N20
\pulse_generator|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan1~3_combout\ = (!\pulse_generator|s_counter\(19) & (((\pulse_generator|LessThan1~2_combout\) # (!\pulse_generator|LessThan0~0_combout\)) # (!\pulse_generator|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(15),
	datab => \pulse_generator|LessThan1~2_combout\,
	datac => \pulse_generator|s_counter\(19),
	datad => \pulse_generator|LessThan0~0_combout\,
	combout => \pulse_generator|LessThan1~3_combout\);

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

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


