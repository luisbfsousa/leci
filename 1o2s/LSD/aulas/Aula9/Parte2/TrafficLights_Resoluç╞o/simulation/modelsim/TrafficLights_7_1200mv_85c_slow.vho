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

-- DATE "05/31/2022 11:53:54"

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
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \KEY[1]~ibuf_o\ : std_logic;
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
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
SIGNAL KEY : std_logic_vector(0 DOWNTO 0);
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

ENTITY 	TrafficLightsTop IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END TrafficLightsTop;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TrafficLightsTop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_div_1hz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_div_1hz|Add0~0_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~1\ : std_logic;
SIGNAL \clk_div_1hz|Add0~2_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~10_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~47\ : std_logic;
SIGNAL \clk_div_1hz|Add0~48_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~49\ : std_logic;
SIGNAL \clk_div_1hz|Add0~50_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~0_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~51\ : std_logic;
SIGNAL \clk_div_1hz|Add0~52_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~53\ : std_logic;
SIGNAL \clk_div_1hz|Add0~54_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~55\ : std_logic;
SIGNAL \clk_div_1hz|Add0~56_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~57\ : std_logic;
SIGNAL \clk_div_1hz|Add0~58_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~59\ : std_logic;
SIGNAL \clk_div_1hz|Add0~60_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~3\ : std_logic;
SIGNAL \clk_div_1hz|Add0~4_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~5\ : std_logic;
SIGNAL \clk_div_1hz|Add0~6_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~7\ : std_logic;
SIGNAL \clk_div_1hz|Add0~8_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~9\ : std_logic;
SIGNAL \clk_div_1hz|Add0~10_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~11\ : std_logic;
SIGNAL \clk_div_1hz|Add0~12_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~13\ : std_logic;
SIGNAL \clk_div_1hz|Add0~14_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~11_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~15\ : std_logic;
SIGNAL \clk_div_1hz|Add0~16_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~17\ : std_logic;
SIGNAL \clk_div_1hz|Add0~18_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~19\ : std_logic;
SIGNAL \clk_div_1hz|Add0~20_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~21\ : std_logic;
SIGNAL \clk_div_1hz|Add0~22_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~23\ : std_logic;
SIGNAL \clk_div_1hz|Add0~24_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~10_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~25\ : std_logic;
SIGNAL \clk_div_1hz|Add0~26_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~9_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~27\ : std_logic;
SIGNAL \clk_div_1hz|Add0~28_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~8_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~29\ : std_logic;
SIGNAL \clk_div_1hz|Add0~30_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~3_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~31\ : std_logic;
SIGNAL \clk_div_1hz|Add0~32_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~33\ : std_logic;
SIGNAL \clk_div_1hz|Add0~34_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~2_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~35\ : std_logic;
SIGNAL \clk_div_1hz|Add0~36_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~37\ : std_logic;
SIGNAL \clk_div_1hz|Add0~38_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~7_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~39\ : std_logic;
SIGNAL \clk_div_1hz|Add0~40_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~6_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~41\ : std_logic;
SIGNAL \clk_div_1hz|Add0~42_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~5_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~1_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~2_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~3_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~4_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~7_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~8_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~9_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~5_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~11_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~43\ : std_logic;
SIGNAL \clk_div_1hz|Add0~44_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~4_combout\ : std_logic;
SIGNAL \clk_div_1hz|Add0~45\ : std_logic;
SIGNAL \clk_div_1hz|Add0~46_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter~1_combout\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~0_combout\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~1_combout\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~2_combout\ : std_logic;
SIGNAL \clk_div_1hz|Equal0~6_combout\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~3_combout\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~feeder_combout\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~q\ : std_logic;
SIGNAL \clk_div_1hz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~1_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TInit~q\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~3_combout\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~4_combout\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~2_combout\ : std_logic;
SIGNAL \main_fsm|Selector18~0_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~14_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TIntermit~q\ : std_logic;
SIGNAL \main_fsm|Selector18~1_combout\ : std_logic;
SIGNAL \main_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~13_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TYellow_per~q\ : std_logic;
SIGNAL \main_fsm|sync_proc~8_combout\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~0_combout\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~5_combout\ : std_logic;
SIGNAL \main_fsm|s_stateChanged~q\ : std_logic;
SIGNAL \main_fsm|WideOr9~combout\ : std_logic;
SIGNAL \main_fsm|WideOr7~0_combout\ : std_logic;
SIGNAL \timer_fsm|Add0~0_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~2_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~4_combout\ : std_logic;
SIGNAL \timer_fsm|s_cntZero~1_combout\ : std_logic;
SIGNAL \timer_fsm|s_cntZero~0_combout\ : std_logic;
SIGNAL \timer_fsm|s_counter[0]~0_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~3\ : std_logic;
SIGNAL \timer_fsm|Add1~5_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~27_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~7_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~6\ : std_logic;
SIGNAL \timer_fsm|Add1~9_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~8_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~11_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~10\ : std_logic;
SIGNAL \timer_fsm|Add1~12_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~23_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~13\ : std_logic;
SIGNAL \timer_fsm|Add1~14_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~24_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~15\ : std_logic;
SIGNAL \timer_fsm|Add1~16_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~25_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~17\ : std_logic;
SIGNAL \timer_fsm|Add1~18_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~26_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~19\ : std_logic;
SIGNAL \timer_fsm|Add1~20_combout\ : std_logic;
SIGNAL \timer_fsm|Add1~22_combout\ : std_logic;
SIGNAL \timer_fsm|s_cntZero~2_combout\ : std_logic;
SIGNAL \timer_fsm|s_cntZero~q\ : std_logic;
SIGNAL \main_fsm|Selector8~0_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~12_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TYellow2~q\ : std_logic;
SIGNAL \main_fsm|s_currentState~16_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TRed2~q\ : std_logic;
SIGNAL \main_fsm|Selector12~0_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~18_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TGreen1~q\ : std_logic;
SIGNAL \main_fsm|Selector14~0_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~17_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TYellow1~q\ : std_logic;
SIGNAL \main_fsm|Selector16~0_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~15_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TRed1~q\ : std_logic;
SIGNAL \main_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState~11_combout\ : std_logic;
SIGNAL \main_fsm|s_currentState.TGreen2~q\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \main_fsm|WideOr3~0_combout\ : std_logic;
SIGNAL \main_fsm|WideOr1~0_combout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \clk_div_1hz|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \timer_fsm|s_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clk_div_1hz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div_1hz|clkOut~q\);
\clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \clk_div_1hz|clkOut~clkctrl_outclk\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_fsm|s_currentState.TGreen2~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_fsm|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_fsm|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_fsm|s_currentState.TGreen1~q\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

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

-- Location: LCCOMB_X98_Y61_N2
\clk_div_1hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~0_combout\ = \clk_div_1hz|s_divCounter\(0) $ (VCC)
-- \clk_div_1hz|Add0~1\ = CARRY(\clk_div_1hz|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(0),
	datad => VCC,
	combout => \clk_div_1hz|Add0~0_combout\,
	cout => \clk_div_1hz|Add0~1\);

-- Location: FF_X98_Y61_N3
\clk_div_1hz|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(0));

-- Location: LCCOMB_X98_Y61_N4
\clk_div_1hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~2_combout\ = (\clk_div_1hz|s_divCounter\(1) & (!\clk_div_1hz|Add0~1\)) # (!\clk_div_1hz|s_divCounter\(1) & ((\clk_div_1hz|Add0~1\) # (GND)))
-- \clk_div_1hz|Add0~3\ = CARRY((!\clk_div_1hz|Add0~1\) # (!\clk_div_1hz|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(1),
	datad => VCC,
	cin => \clk_div_1hz|Add0~1\,
	combout => \clk_div_1hz|Add0~2_combout\,
	cout => \clk_div_1hz|Add0~3\);

-- Location: FF_X98_Y61_N5
\clk_div_1hz|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(1));

-- Location: LCCOMB_X99_Y60_N12
\clk_div_1hz|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~10_combout\ = (\clk_div_1hz|s_divCounter\(0) & \clk_div_1hz|s_divCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_1hz|s_divCounter\(0),
	datad => \clk_div_1hz|s_divCounter\(1),
	combout => \clk_div_1hz|Equal0~10_combout\);

-- Location: LCCOMB_X98_Y60_N16
\clk_div_1hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~46_combout\ = (\clk_div_1hz|s_divCounter\(23) & (!\clk_div_1hz|Add0~45\)) # (!\clk_div_1hz|s_divCounter\(23) & ((\clk_div_1hz|Add0~45\) # (GND)))
-- \clk_div_1hz|Add0~47\ = CARRY((!\clk_div_1hz|Add0~45\) # (!\clk_div_1hz|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(23),
	datad => VCC,
	cin => \clk_div_1hz|Add0~45\,
	combout => \clk_div_1hz|Add0~46_combout\,
	cout => \clk_div_1hz|Add0~47\);

-- Location: LCCOMB_X98_Y60_N18
\clk_div_1hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~48_combout\ = (\clk_div_1hz|s_divCounter\(24) & (\clk_div_1hz|Add0~47\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(24) & (!\clk_div_1hz|Add0~47\ & VCC))
-- \clk_div_1hz|Add0~49\ = CARRY((\clk_div_1hz|s_divCounter\(24) & !\clk_div_1hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(24),
	datad => VCC,
	cin => \clk_div_1hz|Add0~47\,
	combout => \clk_div_1hz|Add0~48_combout\,
	cout => \clk_div_1hz|Add0~49\);

-- Location: FF_X98_Y60_N19
\clk_div_1hz|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(24));

-- Location: LCCOMB_X98_Y60_N20
\clk_div_1hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~50_combout\ = (\clk_div_1hz|s_divCounter\(25) & (!\clk_div_1hz|Add0~49\)) # (!\clk_div_1hz|s_divCounter\(25) & ((\clk_div_1hz|Add0~49\) # (GND)))
-- \clk_div_1hz|Add0~51\ = CARRY((!\clk_div_1hz|Add0~49\) # (!\clk_div_1hz|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(25),
	datad => VCC,
	cin => \clk_div_1hz|Add0~49\,
	combout => \clk_div_1hz|Add0~50_combout\,
	cout => \clk_div_1hz|Add0~51\);

-- Location: LCCOMB_X99_Y60_N2
\clk_div_1hz|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~0_combout\ = (!\clk_div_1hz|Equal0~11_combout\ & \clk_div_1hz|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~11_combout\,
	datad => \clk_div_1hz|Add0~50_combout\,
	combout => \clk_div_1hz|s_divCounter~0_combout\);

-- Location: FF_X99_Y60_N3
\clk_div_1hz|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(25));

-- Location: LCCOMB_X98_Y60_N22
\clk_div_1hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~52_combout\ = (\clk_div_1hz|s_divCounter\(26) & (\clk_div_1hz|Add0~51\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(26) & (!\clk_div_1hz|Add0~51\ & VCC))
-- \clk_div_1hz|Add0~53\ = CARRY((\clk_div_1hz|s_divCounter\(26) & !\clk_div_1hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(26),
	datad => VCC,
	cin => \clk_div_1hz|Add0~51\,
	combout => \clk_div_1hz|Add0~52_combout\,
	cout => \clk_div_1hz|Add0~53\);

-- Location: FF_X98_Y60_N23
\clk_div_1hz|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(26));

-- Location: LCCOMB_X98_Y60_N24
\clk_div_1hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~54_combout\ = (\clk_div_1hz|s_divCounter\(27) & (!\clk_div_1hz|Add0~53\)) # (!\clk_div_1hz|s_divCounter\(27) & ((\clk_div_1hz|Add0~53\) # (GND)))
-- \clk_div_1hz|Add0~55\ = CARRY((!\clk_div_1hz|Add0~53\) # (!\clk_div_1hz|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(27),
	datad => VCC,
	cin => \clk_div_1hz|Add0~53\,
	combout => \clk_div_1hz|Add0~54_combout\,
	cout => \clk_div_1hz|Add0~55\);

-- Location: FF_X98_Y60_N25
\clk_div_1hz|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(27));

-- Location: LCCOMB_X98_Y60_N26
\clk_div_1hz|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~56_combout\ = (\clk_div_1hz|s_divCounter\(28) & (\clk_div_1hz|Add0~55\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(28) & (!\clk_div_1hz|Add0~55\ & VCC))
-- \clk_div_1hz|Add0~57\ = CARRY((\clk_div_1hz|s_divCounter\(28) & !\clk_div_1hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(28),
	datad => VCC,
	cin => \clk_div_1hz|Add0~55\,
	combout => \clk_div_1hz|Add0~56_combout\,
	cout => \clk_div_1hz|Add0~57\);

-- Location: FF_X98_Y60_N27
\clk_div_1hz|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(28));

-- Location: LCCOMB_X98_Y60_N28
\clk_div_1hz|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~58_combout\ = (\clk_div_1hz|s_divCounter\(29) & (!\clk_div_1hz|Add0~57\)) # (!\clk_div_1hz|s_divCounter\(29) & ((\clk_div_1hz|Add0~57\) # (GND)))
-- \clk_div_1hz|Add0~59\ = CARRY((!\clk_div_1hz|Add0~57\) # (!\clk_div_1hz|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(29),
	datad => VCC,
	cin => \clk_div_1hz|Add0~57\,
	combout => \clk_div_1hz|Add0~58_combout\,
	cout => \clk_div_1hz|Add0~59\);

-- Location: FF_X98_Y60_N29
\clk_div_1hz|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(29));

-- Location: LCCOMB_X98_Y60_N30
\clk_div_1hz|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~60_combout\ = \clk_div_1hz|s_divCounter\(30) $ (!\clk_div_1hz|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(30),
	cin => \clk_div_1hz|Add0~59\,
	combout => \clk_div_1hz|Add0~60_combout\);

-- Location: FF_X98_Y60_N31
\clk_div_1hz|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(30));

-- Location: LCCOMB_X97_Y60_N12
\clk_div_1hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~0_combout\ = (!\clk_div_1hz|s_divCounter\(30) & (!\clk_div_1hz|s_divCounter\(28) & (!\clk_div_1hz|s_divCounter\(29) & !\clk_div_1hz|s_divCounter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(30),
	datab => \clk_div_1hz|s_divCounter\(28),
	datac => \clk_div_1hz|s_divCounter\(29),
	datad => \clk_div_1hz|s_divCounter\(27),
	combout => \clk_div_1hz|Equal0~0_combout\);

-- Location: LCCOMB_X98_Y61_N6
\clk_div_1hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~4_combout\ = (\clk_div_1hz|s_divCounter\(2) & (\clk_div_1hz|Add0~3\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(2) & (!\clk_div_1hz|Add0~3\ & VCC))
-- \clk_div_1hz|Add0~5\ = CARRY((\clk_div_1hz|s_divCounter\(2) & !\clk_div_1hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(2),
	datad => VCC,
	cin => \clk_div_1hz|Add0~3\,
	combout => \clk_div_1hz|Add0~4_combout\,
	cout => \clk_div_1hz|Add0~5\);

-- Location: FF_X98_Y61_N7
\clk_div_1hz|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(2));

-- Location: LCCOMB_X98_Y61_N8
\clk_div_1hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~6_combout\ = (\clk_div_1hz|s_divCounter\(3) & (!\clk_div_1hz|Add0~5\)) # (!\clk_div_1hz|s_divCounter\(3) & ((\clk_div_1hz|Add0~5\) # (GND)))
-- \clk_div_1hz|Add0~7\ = CARRY((!\clk_div_1hz|Add0~5\) # (!\clk_div_1hz|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(3),
	datad => VCC,
	cin => \clk_div_1hz|Add0~5\,
	combout => \clk_div_1hz|Add0~6_combout\,
	cout => \clk_div_1hz|Add0~7\);

-- Location: FF_X98_Y61_N9
\clk_div_1hz|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(3));

-- Location: LCCOMB_X98_Y61_N10
\clk_div_1hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~8_combout\ = (\clk_div_1hz|s_divCounter\(4) & (\clk_div_1hz|Add0~7\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(4) & (!\clk_div_1hz|Add0~7\ & VCC))
-- \clk_div_1hz|Add0~9\ = CARRY((\clk_div_1hz|s_divCounter\(4) & !\clk_div_1hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(4),
	datad => VCC,
	cin => \clk_div_1hz|Add0~7\,
	combout => \clk_div_1hz|Add0~8_combout\,
	cout => \clk_div_1hz|Add0~9\);

-- Location: FF_X98_Y61_N11
\clk_div_1hz|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(4));

-- Location: LCCOMB_X98_Y61_N12
\clk_div_1hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~10_combout\ = (\clk_div_1hz|s_divCounter\(5) & (!\clk_div_1hz|Add0~9\)) # (!\clk_div_1hz|s_divCounter\(5) & ((\clk_div_1hz|Add0~9\) # (GND)))
-- \clk_div_1hz|Add0~11\ = CARRY((!\clk_div_1hz|Add0~9\) # (!\clk_div_1hz|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(5),
	datad => VCC,
	cin => \clk_div_1hz|Add0~9\,
	combout => \clk_div_1hz|Add0~10_combout\,
	cout => \clk_div_1hz|Add0~11\);

-- Location: FF_X98_Y61_N13
\clk_div_1hz|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(5));

-- Location: LCCOMB_X98_Y61_N14
\clk_div_1hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~12_combout\ = (\clk_div_1hz|s_divCounter\(6) & (\clk_div_1hz|Add0~11\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(6) & (!\clk_div_1hz|Add0~11\ & VCC))
-- \clk_div_1hz|Add0~13\ = CARRY((\clk_div_1hz|s_divCounter\(6) & !\clk_div_1hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(6),
	datad => VCC,
	cin => \clk_div_1hz|Add0~11\,
	combout => \clk_div_1hz|Add0~12_combout\,
	cout => \clk_div_1hz|Add0~13\);

-- Location: FF_X98_Y61_N15
\clk_div_1hz|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(6));

-- Location: LCCOMB_X98_Y61_N16
\clk_div_1hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~14_combout\ = (\clk_div_1hz|s_divCounter\(7) & (!\clk_div_1hz|Add0~13\)) # (!\clk_div_1hz|s_divCounter\(7) & ((\clk_div_1hz|Add0~13\) # (GND)))
-- \clk_div_1hz|Add0~15\ = CARRY((!\clk_div_1hz|Add0~13\) # (!\clk_div_1hz|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(7),
	datad => VCC,
	cin => \clk_div_1hz|Add0~13\,
	combout => \clk_div_1hz|Add0~14_combout\,
	cout => \clk_div_1hz|Add0~15\);

-- Location: LCCOMB_X97_Y60_N10
\clk_div_1hz|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~11_combout\ = (!\clk_div_1hz|Equal0~11_combout\ & \clk_div_1hz|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_1hz|Equal0~11_combout\,
	datad => \clk_div_1hz|Add0~14_combout\,
	combout => \clk_div_1hz|s_divCounter~11_combout\);

-- Location: FF_X97_Y60_N11
\clk_div_1hz|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(7));

-- Location: LCCOMB_X98_Y61_N18
\clk_div_1hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~16_combout\ = (\clk_div_1hz|s_divCounter\(8) & (\clk_div_1hz|Add0~15\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(8) & (!\clk_div_1hz|Add0~15\ & VCC))
-- \clk_div_1hz|Add0~17\ = CARRY((\clk_div_1hz|s_divCounter\(8) & !\clk_div_1hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(8),
	datad => VCC,
	cin => \clk_div_1hz|Add0~15\,
	combout => \clk_div_1hz|Add0~16_combout\,
	cout => \clk_div_1hz|Add0~17\);

-- Location: FF_X98_Y61_N19
\clk_div_1hz|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(8));

-- Location: LCCOMB_X98_Y61_N20
\clk_div_1hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~18_combout\ = (\clk_div_1hz|s_divCounter\(9) & (!\clk_div_1hz|Add0~17\)) # (!\clk_div_1hz|s_divCounter\(9) & ((\clk_div_1hz|Add0~17\) # (GND)))
-- \clk_div_1hz|Add0~19\ = CARRY((!\clk_div_1hz|Add0~17\) # (!\clk_div_1hz|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(9),
	datad => VCC,
	cin => \clk_div_1hz|Add0~17\,
	combout => \clk_div_1hz|Add0~18_combout\,
	cout => \clk_div_1hz|Add0~19\);

-- Location: FF_X98_Y61_N21
\clk_div_1hz|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(9));

-- Location: LCCOMB_X98_Y61_N22
\clk_div_1hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~20_combout\ = (\clk_div_1hz|s_divCounter\(10) & (\clk_div_1hz|Add0~19\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(10) & (!\clk_div_1hz|Add0~19\ & VCC))
-- \clk_div_1hz|Add0~21\ = CARRY((\clk_div_1hz|s_divCounter\(10) & !\clk_div_1hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(10),
	datad => VCC,
	cin => \clk_div_1hz|Add0~19\,
	combout => \clk_div_1hz|Add0~20_combout\,
	cout => \clk_div_1hz|Add0~21\);

-- Location: FF_X98_Y61_N23
\clk_div_1hz|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(10));

-- Location: LCCOMB_X98_Y61_N24
\clk_div_1hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~22_combout\ = (\clk_div_1hz|s_divCounter\(11) & (!\clk_div_1hz|Add0~21\)) # (!\clk_div_1hz|s_divCounter\(11) & ((\clk_div_1hz|Add0~21\) # (GND)))
-- \clk_div_1hz|Add0~23\ = CARRY((!\clk_div_1hz|Add0~21\) # (!\clk_div_1hz|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(11),
	datad => VCC,
	cin => \clk_div_1hz|Add0~21\,
	combout => \clk_div_1hz|Add0~22_combout\,
	cout => \clk_div_1hz|Add0~23\);

-- Location: FF_X98_Y61_N25
\clk_div_1hz|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(11));

-- Location: LCCOMB_X98_Y61_N26
\clk_div_1hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~24_combout\ = (\clk_div_1hz|s_divCounter\(12) & (\clk_div_1hz|Add0~23\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(12) & (!\clk_div_1hz|Add0~23\ & VCC))
-- \clk_div_1hz|Add0~25\ = CARRY((\clk_div_1hz|s_divCounter\(12) & !\clk_div_1hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(12),
	datad => VCC,
	cin => \clk_div_1hz|Add0~23\,
	combout => \clk_div_1hz|Add0~24_combout\,
	cout => \clk_div_1hz|Add0~25\);

-- Location: LCCOMB_X97_Y60_N14
\clk_div_1hz|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~10_combout\ = (!\clk_div_1hz|Equal0~11_combout\ & \clk_div_1hz|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~11_combout\,
	datac => \clk_div_1hz|Add0~24_combout\,
	combout => \clk_div_1hz|s_divCounter~10_combout\);

-- Location: FF_X97_Y60_N15
\clk_div_1hz|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(12));

-- Location: LCCOMB_X98_Y61_N28
\clk_div_1hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~26_combout\ = (\clk_div_1hz|s_divCounter\(13) & (!\clk_div_1hz|Add0~25\)) # (!\clk_div_1hz|s_divCounter\(13) & ((\clk_div_1hz|Add0~25\) # (GND)))
-- \clk_div_1hz|Add0~27\ = CARRY((!\clk_div_1hz|Add0~25\) # (!\clk_div_1hz|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(13),
	datad => VCC,
	cin => \clk_div_1hz|Add0~25\,
	combout => \clk_div_1hz|Add0~26_combout\,
	cout => \clk_div_1hz|Add0~27\);

-- Location: LCCOMB_X97_Y60_N0
\clk_div_1hz|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~9_combout\ = (!\clk_div_1hz|Equal0~11_combout\ & \clk_div_1hz|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_1hz|Equal0~11_combout\,
	datad => \clk_div_1hz|Add0~26_combout\,
	combout => \clk_div_1hz|s_divCounter~9_combout\);

-- Location: FF_X97_Y60_N1
\clk_div_1hz|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(13));

-- Location: LCCOMB_X98_Y61_N30
\clk_div_1hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~28_combout\ = (\clk_div_1hz|s_divCounter\(14) & (\clk_div_1hz|Add0~27\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(14) & (!\clk_div_1hz|Add0~27\ & VCC))
-- \clk_div_1hz|Add0~29\ = CARRY((\clk_div_1hz|s_divCounter\(14) & !\clk_div_1hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(14),
	datad => VCC,
	cin => \clk_div_1hz|Add0~27\,
	combout => \clk_div_1hz|Add0~28_combout\,
	cout => \clk_div_1hz|Add0~29\);

-- Location: LCCOMB_X98_Y61_N0
\clk_div_1hz|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~8_combout\ = (\clk_div_1hz|Add0~28_combout\ & !\clk_div_1hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_1hz|Add0~28_combout\,
	datad => \clk_div_1hz|Equal0~11_combout\,
	combout => \clk_div_1hz|s_divCounter~8_combout\);

-- Location: FF_X98_Y61_N1
\clk_div_1hz|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(14));

-- Location: LCCOMB_X98_Y60_N0
\clk_div_1hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~30_combout\ = (\clk_div_1hz|s_divCounter\(15) & (!\clk_div_1hz|Add0~29\)) # (!\clk_div_1hz|s_divCounter\(15) & ((\clk_div_1hz|Add0~29\) # (GND)))
-- \clk_div_1hz|Add0~31\ = CARRY((!\clk_div_1hz|Add0~29\) # (!\clk_div_1hz|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(15),
	datad => VCC,
	cin => \clk_div_1hz|Add0~29\,
	combout => \clk_div_1hz|Add0~30_combout\,
	cout => \clk_div_1hz|Add0~31\);

-- Location: LCCOMB_X99_Y60_N14
\clk_div_1hz|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~3_combout\ = (\clk_div_1hz|Add0~30_combout\ & !\clk_div_1hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_1hz|Add0~30_combout\,
	datad => \clk_div_1hz|Equal0~11_combout\,
	combout => \clk_div_1hz|s_divCounter~3_combout\);

-- Location: FF_X99_Y60_N15
\clk_div_1hz|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(15));

-- Location: LCCOMB_X98_Y60_N2
\clk_div_1hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~32_combout\ = (\clk_div_1hz|s_divCounter\(16) & (\clk_div_1hz|Add0~31\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(16) & (!\clk_div_1hz|Add0~31\ & VCC))
-- \clk_div_1hz|Add0~33\ = CARRY((\clk_div_1hz|s_divCounter\(16) & !\clk_div_1hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(16),
	datad => VCC,
	cin => \clk_div_1hz|Add0~31\,
	combout => \clk_div_1hz|Add0~32_combout\,
	cout => \clk_div_1hz|Add0~33\);

-- Location: FF_X98_Y60_N3
\clk_div_1hz|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(16));

-- Location: LCCOMB_X98_Y60_N4
\clk_div_1hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~34_combout\ = (\clk_div_1hz|s_divCounter\(17) & (!\clk_div_1hz|Add0~33\)) # (!\clk_div_1hz|s_divCounter\(17) & ((\clk_div_1hz|Add0~33\) # (GND)))
-- \clk_div_1hz|Add0~35\ = CARRY((!\clk_div_1hz|Add0~33\) # (!\clk_div_1hz|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(17),
	datad => VCC,
	cin => \clk_div_1hz|Add0~33\,
	combout => \clk_div_1hz|Add0~34_combout\,
	cout => \clk_div_1hz|Add0~35\);

-- Location: LCCOMB_X99_Y60_N26
\clk_div_1hz|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~2_combout\ = (\clk_div_1hz|Add0~34_combout\ & !\clk_div_1hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_1hz|Add0~34_combout\,
	datad => \clk_div_1hz|Equal0~11_combout\,
	combout => \clk_div_1hz|s_divCounter~2_combout\);

-- Location: FF_X99_Y60_N27
\clk_div_1hz|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(17));

-- Location: LCCOMB_X98_Y60_N6
\clk_div_1hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~36_combout\ = (\clk_div_1hz|s_divCounter\(18) & (\clk_div_1hz|Add0~35\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(18) & (!\clk_div_1hz|Add0~35\ & VCC))
-- \clk_div_1hz|Add0~37\ = CARRY((\clk_div_1hz|s_divCounter\(18) & !\clk_div_1hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(18),
	datad => VCC,
	cin => \clk_div_1hz|Add0~35\,
	combout => \clk_div_1hz|Add0~36_combout\,
	cout => \clk_div_1hz|Add0~37\);

-- Location: FF_X98_Y60_N7
\clk_div_1hz|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(18));

-- Location: LCCOMB_X98_Y60_N8
\clk_div_1hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~38_combout\ = (\clk_div_1hz|s_divCounter\(19) & (!\clk_div_1hz|Add0~37\)) # (!\clk_div_1hz|s_divCounter\(19) & ((\clk_div_1hz|Add0~37\) # (GND)))
-- \clk_div_1hz|Add0~39\ = CARRY((!\clk_div_1hz|Add0~37\) # (!\clk_div_1hz|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(19),
	datad => VCC,
	cin => \clk_div_1hz|Add0~37\,
	combout => \clk_div_1hz|Add0~38_combout\,
	cout => \clk_div_1hz|Add0~39\);

-- Location: LCCOMB_X97_Y60_N26
\clk_div_1hz|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~7_combout\ = (!\clk_div_1hz|Equal0~11_combout\ & \clk_div_1hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~11_combout\,
	datac => \clk_div_1hz|Add0~38_combout\,
	combout => \clk_div_1hz|s_divCounter~7_combout\);

-- Location: FF_X97_Y60_N27
\clk_div_1hz|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(19));

-- Location: LCCOMB_X98_Y60_N10
\clk_div_1hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~40_combout\ = (\clk_div_1hz|s_divCounter\(20) & (\clk_div_1hz|Add0~39\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(20) & (!\clk_div_1hz|Add0~39\ & VCC))
-- \clk_div_1hz|Add0~41\ = CARRY((\clk_div_1hz|s_divCounter\(20) & !\clk_div_1hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(20),
	datad => VCC,
	cin => \clk_div_1hz|Add0~39\,
	combout => \clk_div_1hz|Add0~40_combout\,
	cout => \clk_div_1hz|Add0~41\);

-- Location: LCCOMB_X97_Y60_N22
\clk_div_1hz|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~6_combout\ = (!\clk_div_1hz|Equal0~11_combout\ & \clk_div_1hz|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~11_combout\,
	datac => \clk_div_1hz|Add0~40_combout\,
	combout => \clk_div_1hz|s_divCounter~6_combout\);

-- Location: FF_X97_Y60_N23
\clk_div_1hz|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(20));

-- Location: LCCOMB_X98_Y60_N12
\clk_div_1hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~42_combout\ = (\clk_div_1hz|s_divCounter\(21) & (!\clk_div_1hz|Add0~41\)) # (!\clk_div_1hz|s_divCounter\(21) & ((\clk_div_1hz|Add0~41\) # (GND)))
-- \clk_div_1hz|Add0~43\ = CARRY((!\clk_div_1hz|Add0~41\) # (!\clk_div_1hz|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(21),
	datad => VCC,
	cin => \clk_div_1hz|Add0~41\,
	combout => \clk_div_1hz|Add0~42_combout\,
	cout => \clk_div_1hz|Add0~43\);

-- Location: LCCOMB_X97_Y60_N16
\clk_div_1hz|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~5_combout\ = (!\clk_div_1hz|Equal0~11_combout\ & \clk_div_1hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~11_combout\,
	datac => \clk_div_1hz|Add0~42_combout\,
	combout => \clk_div_1hz|s_divCounter~5_combout\);

-- Location: FF_X97_Y60_N17
\clk_div_1hz|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(21));

-- Location: LCCOMB_X97_Y60_N20
\clk_div_1hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~1_combout\ = (\clk_div_1hz|s_divCounter\(22) & (\clk_div_1hz|s_divCounter\(21) & (\clk_div_1hz|s_divCounter\(20) & !\clk_div_1hz|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(22),
	datab => \clk_div_1hz|s_divCounter\(21),
	datac => \clk_div_1hz|s_divCounter\(20),
	datad => \clk_div_1hz|s_divCounter\(26),
	combout => \clk_div_1hz|Equal0~1_combout\);

-- Location: LCCOMB_X97_Y60_N8
\clk_div_1hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~2_combout\ = (\clk_div_1hz|s_divCounter\(19) & (\clk_div_1hz|s_divCounter\(13) & (\clk_div_1hz|s_divCounter\(12) & \clk_div_1hz|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(19),
	datab => \clk_div_1hz|s_divCounter\(13),
	datac => \clk_div_1hz|s_divCounter\(12),
	datad => \clk_div_1hz|s_divCounter\(14),
	combout => \clk_div_1hz|Equal0~2_combout\);

-- Location: LCCOMB_X97_Y60_N28
\clk_div_1hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~3_combout\ = (!\clk_div_1hz|s_divCounter\(7) & (!\clk_div_1hz|s_divCounter\(8) & (!\clk_div_1hz|s_divCounter\(9) & !\clk_div_1hz|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(7),
	datab => \clk_div_1hz|s_divCounter\(8),
	datac => \clk_div_1hz|s_divCounter\(9),
	datad => \clk_div_1hz|s_divCounter\(10),
	combout => \clk_div_1hz|Equal0~3_combout\);

-- Location: LCCOMB_X97_Y60_N18
\clk_div_1hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~4_combout\ = (\clk_div_1hz|Equal0~0_combout\ & (\clk_div_1hz|Equal0~1_combout\ & (\clk_div_1hz|Equal0~2_combout\ & \clk_div_1hz|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|Equal0~0_combout\,
	datab => \clk_div_1hz|Equal0~1_combout\,
	datac => \clk_div_1hz|Equal0~2_combout\,
	datad => \clk_div_1hz|Equal0~3_combout\,
	combout => \clk_div_1hz|Equal0~4_combout\);

-- Location: LCCOMB_X99_Y60_N6
\clk_div_1hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~7_combout\ = (\clk_div_1hz|s_divCounter\(23) & (\clk_div_1hz|s_divCounter\(25) & (!\clk_div_1hz|s_divCounter\(18) & !\clk_div_1hz|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(23),
	datab => \clk_div_1hz|s_divCounter\(25),
	datac => \clk_div_1hz|s_divCounter\(18),
	datad => \clk_div_1hz|s_divCounter\(24),
	combout => \clk_div_1hz|Equal0~7_combout\);

-- Location: LCCOMB_X99_Y60_N10
\clk_div_1hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~8_combout\ = (!\clk_div_1hz|s_divCounter\(16) & (\clk_div_1hz|s_divCounter\(15) & (\clk_div_1hz|s_divCounter\(17) & !\clk_div_1hz|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(16),
	datab => \clk_div_1hz|s_divCounter\(15),
	datac => \clk_div_1hz|s_divCounter\(17),
	datad => \clk_div_1hz|s_divCounter\(11),
	combout => \clk_div_1hz|Equal0~8_combout\);

-- Location: LCCOMB_X99_Y60_N4
\clk_div_1hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~9_combout\ = (\clk_div_1hz|Equal0~7_combout\ & (\clk_div_1hz|s_divCounter\(6) & \clk_div_1hz|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|Equal0~7_combout\,
	datac => \clk_div_1hz|s_divCounter\(6),
	datad => \clk_div_1hz|Equal0~8_combout\,
	combout => \clk_div_1hz|Equal0~9_combout\);

-- Location: LCCOMB_X99_Y61_N16
\clk_div_1hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~5_combout\ = (\clk_div_1hz|s_divCounter\(4) & (\clk_div_1hz|s_divCounter\(2) & (\clk_div_1hz|s_divCounter\(3) & \clk_div_1hz|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(4),
	datab => \clk_div_1hz|s_divCounter\(2),
	datac => \clk_div_1hz|s_divCounter\(3),
	datad => \clk_div_1hz|s_divCounter\(5),
	combout => \clk_div_1hz|Equal0~5_combout\);

-- Location: LCCOMB_X99_Y60_N0
\clk_div_1hz|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~11_combout\ = (\clk_div_1hz|Equal0~10_combout\ & (\clk_div_1hz|Equal0~4_combout\ & (\clk_div_1hz|Equal0~9_combout\ & \clk_div_1hz|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|Equal0~10_combout\,
	datab => \clk_div_1hz|Equal0~4_combout\,
	datac => \clk_div_1hz|Equal0~9_combout\,
	datad => \clk_div_1hz|Equal0~5_combout\,
	combout => \clk_div_1hz|Equal0~11_combout\);

-- Location: LCCOMB_X98_Y60_N14
\clk_div_1hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Add0~44_combout\ = (\clk_div_1hz|s_divCounter\(22) & (\clk_div_1hz|Add0~43\ $ (GND))) # (!\clk_div_1hz|s_divCounter\(22) & (!\clk_div_1hz|Add0~43\ & VCC))
-- \clk_div_1hz|Add0~45\ = CARRY((\clk_div_1hz|s_divCounter\(22) & !\clk_div_1hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|s_divCounter\(22),
	datad => VCC,
	cin => \clk_div_1hz|Add0~43\,
	combout => \clk_div_1hz|Add0~44_combout\,
	cout => \clk_div_1hz|Add0~45\);

-- Location: LCCOMB_X97_Y60_N6
\clk_div_1hz|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~4_combout\ = (!\clk_div_1hz|Equal0~11_combout\ & \clk_div_1hz|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|Equal0~11_combout\,
	datac => \clk_div_1hz|Add0~44_combout\,
	combout => \clk_div_1hz|s_divCounter~4_combout\);

-- Location: FF_X97_Y60_N7
\clk_div_1hz|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(22));

-- Location: LCCOMB_X99_Y60_N8
\clk_div_1hz|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|s_divCounter~1_combout\ = (\clk_div_1hz|Add0~46_combout\ & !\clk_div_1hz|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_1hz|Add0~46_combout\,
	datad => \clk_div_1hz|Equal0~11_combout\,
	combout => \clk_div_1hz|s_divCounter~1_combout\);

-- Location: FF_X99_Y60_N9
\clk_div_1hz|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|s_divCounter\(23));

-- Location: LCCOMB_X99_Y60_N20
\clk_div_1hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|clkOut~0_combout\ = (!\clk_div_1hz|s_divCounter\(23) & (!\clk_div_1hz|s_divCounter\(25) & (\clk_div_1hz|s_divCounter\(18) & \clk_div_1hz|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(23),
	datab => \clk_div_1hz|s_divCounter\(25),
	datac => \clk_div_1hz|s_divCounter\(18),
	datad => \clk_div_1hz|s_divCounter\(24),
	combout => \clk_div_1hz|clkOut~0_combout\);

-- Location: LCCOMB_X99_Y60_N16
\clk_div_1hz|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|clkOut~1_combout\ = (\clk_div_1hz|s_divCounter\(16) & (!\clk_div_1hz|s_divCounter\(15) & (!\clk_div_1hz|s_divCounter\(17) & \clk_div_1hz|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(16),
	datab => \clk_div_1hz|s_divCounter\(15),
	datac => \clk_div_1hz|s_divCounter\(17),
	datad => \clk_div_1hz|s_divCounter\(11),
	combout => \clk_div_1hz|clkOut~1_combout\);

-- Location: LCCOMB_X99_Y60_N22
\clk_div_1hz|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|clkOut~2_combout\ = (\clk_div_1hz|clkOut~0_combout\ & (!\clk_div_1hz|s_divCounter\(6) & \clk_div_1hz|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_1hz|clkOut~0_combout\,
	datac => \clk_div_1hz|s_divCounter\(6),
	datad => \clk_div_1hz|clkOut~1_combout\,
	combout => \clk_div_1hz|clkOut~2_combout\);

-- Location: LCCOMB_X99_Y60_N28
\clk_div_1hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|Equal0~6_combout\ = (\clk_div_1hz|s_divCounter\(0) & (\clk_div_1hz|s_divCounter\(1) & (\clk_div_1hz|Equal0~4_combout\ & \clk_div_1hz|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|s_divCounter\(0),
	datab => \clk_div_1hz|s_divCounter\(1),
	datac => \clk_div_1hz|Equal0~4_combout\,
	datad => \clk_div_1hz|Equal0~5_combout\,
	combout => \clk_div_1hz|Equal0~6_combout\);

-- Location: LCCOMB_X99_Y60_N30
\clk_div_1hz|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|clkOut~3_combout\ = (\clk_div_1hz|Equal0~6_combout\ & (!\clk_div_1hz|Equal0~9_combout\ & ((\clk_div_1hz|clkOut~2_combout\) # (\clk_div_1hz|clkOut~q\)))) # (!\clk_div_1hz|Equal0~6_combout\ & (((\clk_div_1hz|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|clkOut~2_combout\,
	datab => \clk_div_1hz|clkOut~q\,
	datac => \clk_div_1hz|Equal0~9_combout\,
	datad => \clk_div_1hz|Equal0~6_combout\,
	combout => \clk_div_1hz|clkOut~3_combout\);

-- Location: LCCOMB_X99_Y60_N24
\clk_div_1hz|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_1hz|clkOut~feeder_combout\ = \clk_div_1hz|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_1hz|clkOut~3_combout\,
	combout => \clk_div_1hz|clkOut~feeder_combout\);

-- Location: FF_X99_Y60_N25
\clk_div_1hz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_1hz|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1hz|clkOut~q\);

-- Location: CLKCTRL_G6
\clk_div_1hz|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_1hz|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_1hz|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X103_Y62_N16
\main_fsm|s_stateChanged~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_stateChanged~1_combout\ = (\main_fsm|s_currentState.TGreen2~q\ & ((\main_fsm|s_currentState.TYellow2~q\ $ (\main_fsm|Selector8~0_combout\)) # (!\main_fsm|Selector1~0_combout\))) # (!\main_fsm|s_currentState.TGreen2~q\ & 
-- ((\main_fsm|Selector1~0_combout\) # (\main_fsm|s_currentState.TYellow2~q\ $ (\main_fsm|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen2~q\,
	datab => \main_fsm|s_currentState.TYellow2~q\,
	datac => \main_fsm|Selector8~0_combout\,
	datad => \main_fsm|Selector1~0_combout\,
	combout => \main_fsm|s_stateChanged~1_combout\);

-- Location: FF_X106_Y62_N11
\main_fsm|s_currentState.TInit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TInit~q\);

-- Location: LCCOMB_X103_Y62_N8
\main_fsm|s_stateChanged~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_stateChanged~3_combout\ = ((\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TYellow2~q\ $ (\main_fsm|s_currentState.TRed2~q\)))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \main_fsm|s_currentState.TYellow2~q\,
	datac => \main_fsm|s_currentState.TRed2~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|s_stateChanged~3_combout\);

-- Location: LCCOMB_X103_Y62_N10
\main_fsm|s_stateChanged~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_stateChanged~4_combout\ = ((\main_fsm|s_stateChanged~3_combout\) # (\main_fsm|s_currentState.TRed1~q\ $ (\main_fsm|Selector16~0_combout\))) # (!\main_fsm|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TRed1~q\,
	datab => \main_fsm|s_currentState.TInit~q\,
	datac => \main_fsm|s_stateChanged~3_combout\,
	datad => \main_fsm|Selector16~0_combout\,
	combout => \main_fsm|s_stateChanged~4_combout\);

-- Location: LCCOMB_X103_Y62_N26
\main_fsm|s_stateChanged~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_stateChanged~2_combout\ = (\main_fsm|s_currentState.TYellow1~q\ & ((\main_fsm|s_currentState.TGreen1~q\ $ (\main_fsm|Selector12~0_combout\)) # (!\main_fsm|Selector14~0_combout\))) # (!\main_fsm|s_currentState.TYellow1~q\ & 
-- ((\main_fsm|Selector14~0_combout\) # (\main_fsm|s_currentState.TGreen1~q\ $ (\main_fsm|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow1~q\,
	datab => \main_fsm|s_currentState.TGreen1~q\,
	datac => \main_fsm|Selector12~0_combout\,
	datad => \main_fsm|Selector14~0_combout\,
	combout => \main_fsm|s_stateChanged~2_combout\);

-- Location: LCCOMB_X103_Y62_N22
\main_fsm|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector18~0_combout\ = (\SW[0]~input_o\ & (\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TRed1~q\) # (\main_fsm|s_currentState.TRed2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TRed1~q\,
	datab => \SW[0]~input_o\,
	datac => \main_fsm|s_currentState.TRed2~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector18~0_combout\);

-- Location: LCCOMB_X103_Y62_N28
\main_fsm|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~14_combout\ = (\KEY[0]~input_o\ & ((\main_fsm|Selector18~0_combout\) # (\main_fsm|Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \main_fsm|Selector18~0_combout\,
	datad => \main_fsm|Selector18~1_combout\,
	combout => \main_fsm|s_currentState~14_combout\);

-- Location: FF_X103_Y62_N29
\main_fsm|s_currentState.TIntermit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TIntermit~q\);

-- Location: LCCOMB_X106_Y62_N10
\main_fsm|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector18~1_combout\ = ((\main_fsm|s_currentState.TIntermit~q\ & ((\SW[0]~input_o\) # (!\timer_fsm|s_cntZero~q\)))) # (!\main_fsm|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \main_fsm|s_currentState.TIntermit~q\,
	datac => \main_fsm|s_currentState.TInit~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector18~1_combout\);

-- Location: LCCOMB_X103_Y62_N0
\main_fsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector3~0_combout\ = (\timer_fsm|s_cntZero~q\ & (!\SW[0]~input_o\ & (\main_fsm|s_currentState.TIntermit~q\))) # (!\timer_fsm|s_cntZero~q\ & (((\main_fsm|s_currentState.TYellow_per~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \main_fsm|s_currentState.TIntermit~q\,
	datac => \main_fsm|s_currentState.TYellow_per~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector3~0_combout\);

-- Location: LCCOMB_X105_Y62_N18
\main_fsm|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~13_combout\ = (\KEY[0]~input_o\ & \main_fsm|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \main_fsm|Selector3~0_combout\,
	combout => \main_fsm|s_currentState~13_combout\);

-- Location: FF_X105_Y62_N19
\main_fsm|s_currentState.TYellow_per\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TYellow_per~q\);

-- Location: LCCOMB_X103_Y62_N18
\main_fsm|sync_proc~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|sync_proc~8_combout\ = (\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TYellow_per~q\ $ (((!\SW[0]~input_o\ & \main_fsm|s_currentState.TIntermit~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \main_fsm|s_currentState.TIntermit~q\,
	datac => \main_fsm|s_currentState.TYellow_per~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|sync_proc~8_combout\);

-- Location: LCCOMB_X106_Y62_N0
\main_fsm|s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_stateChanged~0_combout\ = (\main_fsm|sync_proc~8_combout\) # (\main_fsm|s_currentState.TIntermit~q\ $ (((\main_fsm|Selector18~1_combout\) # (\main_fsm|Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|Selector18~1_combout\,
	datab => \main_fsm|s_currentState.TIntermit~q\,
	datac => \main_fsm|Selector18~0_combout\,
	datad => \main_fsm|sync_proc~8_combout\,
	combout => \main_fsm|s_stateChanged~0_combout\);

-- Location: LCCOMB_X106_Y62_N20
\main_fsm|s_stateChanged~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_stateChanged~5_combout\ = (!\main_fsm|s_stateChanged~1_combout\ & (!\main_fsm|s_stateChanged~4_combout\ & (!\main_fsm|s_stateChanged~2_combout\ & !\main_fsm|s_stateChanged~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_stateChanged~1_combout\,
	datab => \main_fsm|s_stateChanged~4_combout\,
	datac => \main_fsm|s_stateChanged~2_combout\,
	datad => \main_fsm|s_stateChanged~0_combout\,
	combout => \main_fsm|s_stateChanged~5_combout\);

-- Location: FF_X106_Y62_N21
\main_fsm|s_stateChanged\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_stateChanged~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_stateChanged~q\);

-- Location: LCCOMB_X105_Y62_N10
\main_fsm|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|WideOr9~combout\ = (\main_fsm|s_currentState.TRed1~q\) # ((\main_fsm|s_currentState.TRed2~q\) # (\main_fsm|s_currentState.TYellow_per~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TRed1~q\,
	datac => \main_fsm|s_currentState.TRed2~q\,
	datad => \main_fsm|s_currentState.TYellow_per~q\,
	combout => \main_fsm|WideOr9~combout\);

-- Location: LCCOMB_X105_Y62_N12
\main_fsm|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|WideOr7~0_combout\ = (!\main_fsm|s_currentState.TYellow1~q\ & !\main_fsm|s_currentState.TYellow2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|s_currentState.TYellow1~q\,
	datad => \main_fsm|s_currentState.TYellow2~q\,
	combout => \main_fsm|WideOr7~0_combout\);

-- Location: LCCOMB_X106_Y62_N30
\timer_fsm|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add0~0_combout\ = (\main_fsm|s_currentState.TGreen2~q\ & (((\main_fsm|WideOr9~combout\ & \main_fsm|WideOr7~0_combout\)))) # (!\main_fsm|s_currentState.TGreen2~q\ & (!\main_fsm|s_currentState.TGreen1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen1~q\,
	datab => \main_fsm|s_currentState.TGreen2~q\,
	datac => \main_fsm|WideOr9~combout\,
	datad => \main_fsm|WideOr7~0_combout\,
	combout => \timer_fsm|Add0~0_combout\);

-- Location: LCCOMB_X107_Y62_N10
\timer_fsm|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~2_combout\ = \timer_fsm|s_counter\(0) $ (GND)
-- \timer_fsm|Add1~3\ = CARRY(!\timer_fsm|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_fsm|s_counter\(0),
	datad => VCC,
	combout => \timer_fsm|Add1~2_combout\,
	cout => \timer_fsm|Add1~3\);

-- Location: LCCOMB_X106_Y62_N6
\timer_fsm|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~4_combout\ = (\KEY[0]~input_o\ & ((\main_fsm|s_stateChanged~q\ & (!\timer_fsm|Add1~2_combout\)) # (!\main_fsm|s_stateChanged~q\ & ((!\main_fsm|WideOr7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \main_fsm|s_stateChanged~q\,
	datac => \timer_fsm|Add1~2_combout\,
	datad => \main_fsm|WideOr7~0_combout\,
	combout => \timer_fsm|Add1~4_combout\);

-- Location: LCCOMB_X107_Y62_N28
\timer_fsm|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|s_cntZero~1_combout\ = (\timer_fsm|s_counter\(3) & (\timer_fsm|s_counter\(6) & (\timer_fsm|s_counter\(5) & \timer_fsm|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(3),
	datab => \timer_fsm|s_counter\(6),
	datac => \timer_fsm|s_counter\(5),
	datad => \timer_fsm|s_counter\(4),
	combout => \timer_fsm|s_cntZero~1_combout\);

-- Location: LCCOMB_X106_Y62_N28
\timer_fsm|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|s_cntZero~0_combout\ = (\timer_fsm|s_counter\(0) & (\timer_fsm|s_counter\(1) & (\timer_fsm|s_counter\(2) & \main_fsm|s_stateChanged~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(0),
	datab => \timer_fsm|s_counter\(1),
	datac => \timer_fsm|s_counter\(2),
	datad => \main_fsm|s_stateChanged~q\,
	combout => \timer_fsm|s_cntZero~0_combout\);

-- Location: LCCOMB_X106_Y62_N2
\timer_fsm|s_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|s_counter[0]~0_combout\ = (((!\timer_fsm|s_cntZero~0_combout\) # (!\timer_fsm|s_counter\(7))) # (!\timer_fsm|s_cntZero~1_combout\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \timer_fsm|s_cntZero~1_combout\,
	datac => \timer_fsm|s_counter\(7),
	datad => \timer_fsm|s_cntZero~0_combout\,
	combout => \timer_fsm|s_counter[0]~0_combout\);

-- Location: FF_X106_Y62_N7
\timer_fsm|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~4_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(0));

-- Location: LCCOMB_X107_Y62_N12
\timer_fsm|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~5_combout\ = (\timer_fsm|s_counter\(1) & (!\timer_fsm|Add1~3\)) # (!\timer_fsm|s_counter\(1) & (\timer_fsm|Add1~3\ & VCC))
-- \timer_fsm|Add1~6\ = CARRY((\timer_fsm|s_counter\(1) & !\timer_fsm|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_fsm|s_counter\(1),
	datad => VCC,
	cin => \timer_fsm|Add1~3\,
	combout => \timer_fsm|Add1~5_combout\,
	cout => \timer_fsm|Add1~6\);

-- Location: LCCOMB_X105_Y62_N28
\timer_fsm|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~27_combout\ = (!\main_fsm|s_stateChanged~q\ & (\main_fsm|WideOr9~combout\ $ (((\main_fsm|s_currentState.TYellow1~q\) # (\main_fsm|s_currentState.TYellow2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow1~q\,
	datab => \main_fsm|s_currentState.TYellow2~q\,
	datac => \main_fsm|s_stateChanged~q\,
	datad => \main_fsm|WideOr9~combout\,
	combout => \timer_fsm|Add1~27_combout\);

-- Location: LCCOMB_X106_Y62_N24
\timer_fsm|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~7_combout\ = (\KEY[0]~input_o\ & (!\timer_fsm|Add1~27_combout\ & ((!\timer_fsm|Add1~5_combout\) # (!\main_fsm|s_stateChanged~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \main_fsm|s_stateChanged~q\,
	datac => \timer_fsm|Add1~5_combout\,
	datad => \timer_fsm|Add1~27_combout\,
	combout => \timer_fsm|Add1~7_combout\);

-- Location: FF_X106_Y62_N25
\timer_fsm|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~7_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(1));

-- Location: LCCOMB_X107_Y62_N14
\timer_fsm|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~9_combout\ = (\timer_fsm|s_counter\(2) & (\timer_fsm|Add1~6\ $ (GND))) # (!\timer_fsm|s_counter\(2) & ((GND) # (!\timer_fsm|Add1~6\)))
-- \timer_fsm|Add1~10\ = CARRY((!\timer_fsm|Add1~6\) # (!\timer_fsm|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(2),
	datad => VCC,
	cin => \timer_fsm|Add1~6\,
	combout => \timer_fsm|Add1~9_combout\,
	cout => \timer_fsm|Add1~10\);

-- Location: LCCOMB_X106_Y62_N12
\timer_fsm|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~8_combout\ = (!\main_fsm|s_stateChanged~q\ & (\main_fsm|WideOr7~0_combout\ & (\main_fsm|s_currentState.TGreen2~q\ $ (!\main_fsm|WideOr9~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen2~q\,
	datab => \main_fsm|s_stateChanged~q\,
	datac => \main_fsm|WideOr9~combout\,
	datad => \main_fsm|WideOr7~0_combout\,
	combout => \timer_fsm|Add1~8_combout\);

-- Location: LCCOMB_X106_Y62_N26
\timer_fsm|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~11_combout\ = (\KEY[0]~input_o\ & (!\timer_fsm|Add1~8_combout\ & ((!\timer_fsm|Add1~9_combout\) # (!\main_fsm|s_stateChanged~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \main_fsm|s_stateChanged~q\,
	datac => \timer_fsm|Add1~9_combout\,
	datad => \timer_fsm|Add1~8_combout\,
	combout => \timer_fsm|Add1~11_combout\);

-- Location: FF_X106_Y62_N27
\timer_fsm|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~11_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(2));

-- Location: LCCOMB_X107_Y62_N16
\timer_fsm|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~12_combout\ = (\timer_fsm|s_counter\(3) & (!\timer_fsm|Add1~10\)) # (!\timer_fsm|s_counter\(3) & (\timer_fsm|Add1~10\ & VCC))
-- \timer_fsm|Add1~13\ = CARRY((\timer_fsm|s_counter\(3) & !\timer_fsm|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(3),
	datad => VCC,
	cin => \timer_fsm|Add1~10\,
	combout => \timer_fsm|Add1~12_combout\,
	cout => \timer_fsm|Add1~13\);

-- Location: LCCOMB_X106_Y62_N16
\timer_fsm|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~23_combout\ = (\KEY[0]~input_o\ & ((\main_fsm|s_stateChanged~q\ & ((!\timer_fsm|Add1~12_combout\))) # (!\main_fsm|s_stateChanged~q\ & (\timer_fsm|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \main_fsm|s_stateChanged~q\,
	datac => \timer_fsm|Add0~0_combout\,
	datad => \timer_fsm|Add1~12_combout\,
	combout => \timer_fsm|Add1~23_combout\);

-- Location: FF_X106_Y62_N17
\timer_fsm|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~23_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(3));

-- Location: LCCOMB_X107_Y62_N18
\timer_fsm|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~14_combout\ = (\timer_fsm|s_counter\(4) & (\timer_fsm|Add1~13\ $ (GND))) # (!\timer_fsm|s_counter\(4) & ((GND) # (!\timer_fsm|Add1~13\)))
-- \timer_fsm|Add1~15\ = CARRY((!\timer_fsm|Add1~13\) # (!\timer_fsm|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(4),
	datad => VCC,
	cin => \timer_fsm|Add1~13\,
	combout => \timer_fsm|Add1~14_combout\,
	cout => \timer_fsm|Add1~15\);

-- Location: LCCOMB_X106_Y62_N14
\timer_fsm|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~24_combout\ = (\KEY[0]~input_o\ & ((!\timer_fsm|Add1~14_combout\) # (!\main_fsm|s_stateChanged~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|s_stateChanged~q\,
	datac => \KEY[0]~input_o\,
	datad => \timer_fsm|Add1~14_combout\,
	combout => \timer_fsm|Add1~24_combout\);

-- Location: FF_X106_Y62_N15
\timer_fsm|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~24_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(4));

-- Location: LCCOMB_X107_Y62_N20
\timer_fsm|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~16_combout\ = (\timer_fsm|s_counter\(5) & (!\timer_fsm|Add1~15\)) # (!\timer_fsm|s_counter\(5) & (\timer_fsm|Add1~15\ & VCC))
-- \timer_fsm|Add1~17\ = CARRY((\timer_fsm|s_counter\(5) & !\timer_fsm|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_fsm|s_counter\(5),
	datad => VCC,
	cin => \timer_fsm|Add1~15\,
	combout => \timer_fsm|Add1~16_combout\,
	cout => \timer_fsm|Add1~17\);

-- Location: LCCOMB_X106_Y62_N4
\timer_fsm|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~25_combout\ = (\KEY[0]~input_o\ & ((!\main_fsm|s_stateChanged~q\) # (!\timer_fsm|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \timer_fsm|Add1~16_combout\,
	datad => \main_fsm|s_stateChanged~q\,
	combout => \timer_fsm|Add1~25_combout\);

-- Location: FF_X106_Y62_N5
\timer_fsm|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~25_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(5));

-- Location: LCCOMB_X107_Y62_N22
\timer_fsm|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~18_combout\ = (\timer_fsm|s_counter\(6) & (\timer_fsm|Add1~17\ $ (GND))) # (!\timer_fsm|s_counter\(6) & ((GND) # (!\timer_fsm|Add1~17\)))
-- \timer_fsm|Add1~19\ = CARRY((!\timer_fsm|Add1~17\) # (!\timer_fsm|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_fsm|s_counter\(6),
	datad => VCC,
	cin => \timer_fsm|Add1~17\,
	combout => \timer_fsm|Add1~18_combout\,
	cout => \timer_fsm|Add1~19\);

-- Location: LCCOMB_X106_Y62_N18
\timer_fsm|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~26_combout\ = (\KEY[0]~input_o\ & ((!\timer_fsm|Add1~18_combout\) # (!\main_fsm|s_stateChanged~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|s_stateChanged~q\,
	datac => \KEY[0]~input_o\,
	datad => \timer_fsm|Add1~18_combout\,
	combout => \timer_fsm|Add1~26_combout\);

-- Location: FF_X106_Y62_N19
\timer_fsm|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~26_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(6));

-- Location: LCCOMB_X107_Y62_N24
\timer_fsm|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~20_combout\ = \timer_fsm|Add1~19\ $ (\timer_fsm|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_fsm|s_counter\(7),
	cin => \timer_fsm|Add1~19\,
	combout => \timer_fsm|Add1~20_combout\);

-- Location: LCCOMB_X106_Y62_N22
\timer_fsm|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|Add1~22_combout\ = (\KEY[0]~input_o\ & ((!\timer_fsm|Add1~20_combout\) # (!\main_fsm|s_stateChanged~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \main_fsm|s_stateChanged~q\,
	datad => \timer_fsm|Add1~20_combout\,
	combout => \timer_fsm|Add1~22_combout\);

-- Location: FF_X106_Y62_N23
\timer_fsm|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|Add1~22_combout\,
	ena => \timer_fsm|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_counter\(7));

-- Location: LCCOMB_X103_Y62_N20
\timer_fsm|s_cntZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_fsm|s_cntZero~2_combout\ = (\timer_fsm|s_counter\(7) & (\timer_fsm|s_cntZero~1_combout\ & \timer_fsm|s_cntZero~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fsm|s_counter\(7),
	datab => \timer_fsm|s_cntZero~1_combout\,
	datad => \timer_fsm|s_cntZero~0_combout\,
	combout => \timer_fsm|s_cntZero~2_combout\);

-- Location: FF_X103_Y62_N21
\timer_fsm|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_fsm|s_cntZero~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fsm|s_cntZero~q\);

-- Location: LCCOMB_X103_Y62_N30
\main_fsm|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector8~0_combout\ = (\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TGreen2~q\)) # (!\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TYellow2~q\) # ((\main_fsm|s_currentState.TGreen2~q\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen2~q\,
	datab => \SW[0]~input_o\,
	datac => \main_fsm|s_currentState.TYellow2~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector8~0_combout\);

-- Location: LCCOMB_X105_Y62_N20
\main_fsm|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~12_combout\ = (\main_fsm|Selector8~0_combout\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|Selector8~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \main_fsm|s_currentState~12_combout\);

-- Location: FF_X105_Y62_N21
\main_fsm|s_currentState.TYellow2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TYellow2~q\);

-- Location: LCCOMB_X105_Y62_N8
\main_fsm|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~16_combout\ = (\KEY[0]~input_o\ & ((\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TYellow2~q\)) # (!\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TRed2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \main_fsm|s_currentState.TYellow2~q\,
	datac => \main_fsm|s_currentState.TRed2~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|s_currentState~16_combout\);

-- Location: FF_X105_Y62_N9
\main_fsm|s_currentState.TRed2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TRed2~q\);

-- Location: LCCOMB_X103_Y62_N4
\main_fsm|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector12~0_combout\ = (!\SW[0]~input_o\ & ((\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TRed2~q\)) # (!\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TGreen1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \main_fsm|s_currentState.TRed2~q\,
	datac => \main_fsm|s_currentState.TGreen1~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector12~0_combout\);

-- Location: LCCOMB_X106_Y62_N8
\main_fsm|s_currentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~18_combout\ = (\main_fsm|Selector12~0_combout\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|Selector12~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \main_fsm|s_currentState~18_combout\);

-- Location: FF_X106_Y62_N9
\main_fsm|s_currentState.TGreen1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TGreen1~q\);

-- Location: LCCOMB_X103_Y62_N2
\main_fsm|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector14~0_combout\ = (\timer_fsm|s_cntZero~q\ & (((\main_fsm|s_currentState.TGreen1~q\)))) # (!\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TYellow1~q\) # ((\SW[0]~input_o\ & \main_fsm|s_currentState.TGreen1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow1~q\,
	datab => \SW[0]~input_o\,
	datac => \main_fsm|s_currentState.TGreen1~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector14~0_combout\);

-- Location: LCCOMB_X105_Y62_N22
\main_fsm|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~17_combout\ = (\KEY[0]~input_o\ & \main_fsm|Selector14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \main_fsm|Selector14~0_combout\,
	combout => \main_fsm|s_currentState~17_combout\);

-- Location: FF_X105_Y62_N23
\main_fsm|s_currentState.TYellow1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TYellow1~q\);

-- Location: LCCOMB_X103_Y62_N24
\main_fsm|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector16~0_combout\ = (\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TYellow1~q\) # ((\main_fsm|s_currentState.TYellow_per~q\)))) # (!\timer_fsm|s_cntZero~q\ & (((\main_fsm|s_currentState.TRed1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow1~q\,
	datab => \main_fsm|s_currentState.TYellow_per~q\,
	datac => \main_fsm|s_currentState.TRed1~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector16~0_combout\);

-- Location: LCCOMB_X105_Y62_N30
\main_fsm|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~15_combout\ = (\KEY[0]~input_o\ & \main_fsm|Selector16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \main_fsm|Selector16~0_combout\,
	combout => \main_fsm|s_currentState~15_combout\);

-- Location: FF_X105_Y62_N31
\main_fsm|s_currentState.TRed1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TRed1~q\);

-- Location: LCCOMB_X103_Y62_N12
\main_fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector1~0_combout\ = (!\SW[0]~input_o\ & ((\timer_fsm|s_cntZero~q\ & ((\main_fsm|s_currentState.TRed1~q\))) # (!\timer_fsm|s_cntZero~q\ & (\main_fsm|s_currentState.TGreen2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen2~q\,
	datab => \SW[0]~input_o\,
	datac => \main_fsm|s_currentState.TRed1~q\,
	datad => \timer_fsm|s_cntZero~q\,
	combout => \main_fsm|Selector1~0_combout\);

-- Location: LCCOMB_X103_Y62_N6
\main_fsm|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|s_currentState~11_combout\ = (\KEY[0]~input_o\ & \main_fsm|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \main_fsm|Selector1~0_combout\,
	combout => \main_fsm|s_currentState~11_combout\);

-- Location: FF_X103_Y62_N7
\main_fsm|s_currentState.TGreen2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1hz|clkOut~clkctrl_outclk\,
	d => \main_fsm|s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|s_currentState.TGreen2~q\);

-- Location: LCCOMB_X105_Y62_N24
\LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\main_fsm|s_currentState.TIntermit~q\ & (((\clk_div_1hz|clkOut~q\)))) # (!\main_fsm|s_currentState.TIntermit~q\ & ((\main_fsm|s_currentState.TYellow2~q\) # ((\main_fsm|s_currentState.TYellow_per~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow2~q\,
	datab => \main_fsm|s_currentState.TIntermit~q\,
	datac => \clk_div_1hz|clkOut~q\,
	datad => \main_fsm|s_currentState.TYellow_per~q\,
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X103_Y62_N14
\main_fsm|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|WideOr3~0_combout\ = (\main_fsm|s_currentState.TYellow1~q\) # ((\main_fsm|s_currentState.TRed1~q\) # ((\main_fsm|s_currentState.TRed2~q\) # (\main_fsm|s_currentState.TGreen1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow1~q\,
	datab => \main_fsm|s_currentState.TRed1~q\,
	datac => \main_fsm|s_currentState.TRed2~q\,
	datad => \main_fsm|s_currentState.TGreen1~q\,
	combout => \main_fsm|WideOr3~0_combout\);

-- Location: LCCOMB_X105_Y62_N16
\main_fsm|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|WideOr1~0_combout\ = (\main_fsm|s_currentState.TGreen2~q\) # ((\main_fsm|s_currentState.TRed2~q\) # ((\main_fsm|s_currentState.TRed1~q\) # (\main_fsm|s_currentState.TYellow2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TGreen2~q\,
	datab => \main_fsm|s_currentState.TRed2~q\,
	datac => \main_fsm|s_currentState.TRed1~q\,
	datad => \main_fsm|s_currentState.TYellow2~q\,
	combout => \main_fsm|WideOr1~0_combout\);

-- Location: LCCOMB_X105_Y62_N14
\LEDR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (\main_fsm|s_currentState.TIntermit~q\ & (((\clk_div_1hz|clkOut~q\)))) # (!\main_fsm|s_currentState.TIntermit~q\ & ((\main_fsm|s_currentState.TYellow1~q\) # ((\main_fsm|s_currentState.TYellow_per~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|s_currentState.TYellow1~q\,
	datab => \main_fsm|s_currentState.TIntermit~q\,
	datac => \clk_div_1hz|clkOut~q\,
	datad => \main_fsm|s_currentState.TYellow_per~q\,
	combout => \LEDR~1_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


