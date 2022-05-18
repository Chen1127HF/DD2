-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "05/18/2022 12:41:47"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	acelerometro IS
    PORT (
	clk : IN std_logic;
	nRst : IN std_logic;
	SDO : IN std_logic;
	SDI : BUFFER std_logic;
	nCS : BUFFER std_logic;
	SPC : BUFFER std_logic;
	mux_disp : BUFFER std_logic_vector(7 DOWNTO 0);
	disp : BUFFER std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END acelerometro;

-- Design Ports Information
-- SDI	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- nCS	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SPC	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mux_disp[0]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mux_disp[1]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mux_disp[2]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mux_disp[3]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mux_disp[4]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mux_disp[5]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mux_disp[6]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mux_disp[7]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- disp[0]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- disp[1]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- disp[2]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- disp[3]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- disp[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- disp[5]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- disp[6]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- disp[7]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- leds[0]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- leds[1]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- leds[2]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- leds[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- leds[4]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- leds[5]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- leds[6]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- leds[7]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRst	=>  Location: PIN_H21,	 I/O Standard: 1.5 V Schmitt Trigger,	 Current Strength: Default
-- SDO	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF acelerometro IS
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
SIGNAL ww_nRst : std_logic;
SIGNAL ww_SDO : std_logic;
SIGNAL ww_SDI : std_logic;
SIGNAL ww_nCS : std_logic;
SIGNAL ww_SPC : std_logic;
SIGNAL ww_mux_disp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_disp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SDI~output_o\ : std_logic;
SIGNAL \nCS~output_o\ : std_logic;
SIGNAL \SPC~output_o\ : std_logic;
SIGNAL \mux_disp[0]~output_o\ : std_logic;
SIGNAL \mux_disp[1]~output_o\ : std_logic;
SIGNAL \mux_disp[2]~output_o\ : std_logic;
SIGNAL \mux_disp[3]~output_o\ : std_logic;
SIGNAL \mux_disp[4]~output_o\ : std_logic;
SIGNAL \mux_disp[5]~output_o\ : std_logic;
SIGNAL \mux_disp[6]~output_o\ : std_logic;
SIGNAL \mux_disp[7]~output_o\ : std_logic;
SIGNAL \disp[0]~output_o\ : std_logic;
SIGNAL \disp[1]~output_o\ : std_logic;
SIGNAL \disp[2]~output_o\ : std_logic;
SIGNAL \disp[3]~output_o\ : std_logic;
SIGNAL \disp[4]~output_o\ : std_logic;
SIGNAL \disp[5]~output_o\ : std_logic;
SIGNAL \disp[6]~output_o\ : std_logic;
SIGNAL \disp[7]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \master|cnt_byte~0_combout\ : std_logic;
SIGNAL \nRst~input_o\ : std_logic;
SIGNAL \master|cnt_byte[1]~2_combout\ : std_logic;
SIGNAL \master|Add2~0_combout\ : std_logic;
SIGNAL \master|cnt_byte[2]~1_combout\ : std_logic;
SIGNAL \controlador|cnt_reg[0]~2_combout\ : std_logic;
SIGNAL \controlador|cnt_reg[0]~feeder_combout\ : std_logic;
SIGNAL \controlador|cnt_reg[1]~0_combout\ : std_logic;
SIGNAL \controlador|cnt_reg[1]~1_combout\ : std_logic;
SIGNAL \controlador|Selector1~0_combout\ : std_logic;
SIGNAL \controlador|Selector1~1_combout\ : std_logic;
SIGNAL \controlador|estado.offset~q\ : std_logic;
SIGNAL \controlador|cnt_5ms[0]~6_combout\ : std_logic;
SIGNAL \controlador|Add0~1_cout\ : std_logic;
SIGNAL \controlador|Add0~2_combout\ : std_logic;
SIGNAL \controlador|Add0~3\ : std_logic;
SIGNAL \controlador|Add0~4_combout\ : std_logic;
SIGNAL \controlador|cnt_5ms~5_combout\ : std_logic;
SIGNAL \controlador|Add0~5\ : std_logic;
SIGNAL \controlador|Add0~6_combout\ : std_logic;
SIGNAL \controlador|Add0~7\ : std_logic;
SIGNAL \controlador|Add0~8_combout\ : std_logic;
SIGNAL \controlador|cnt_5ms~4_combout\ : std_logic;
SIGNAL \controlador|Add0~9\ : std_logic;
SIGNAL \controlador|Add0~10_combout\ : std_logic;
SIGNAL \controlador|cnt_5ms~3_combout\ : std_logic;
SIGNAL \controlador|Add0~11\ : std_logic;
SIGNAL \controlador|Add0~12_combout\ : std_logic;
SIGNAL \controlador|cnt_5ms~2_combout\ : std_logic;
SIGNAL \controlador|Add0~13\ : std_logic;
SIGNAL \controlador|Add0~14_combout\ : std_logic;
SIGNAL \controlador|cnt_5ms~1_combout\ : std_logic;
SIGNAL \controlador|Add0~15\ : std_logic;
SIGNAL \controlador|Add0~16_combout\ : std_logic;
SIGNAL \controlador|cnt_5ms~0_combout\ : std_logic;
SIGNAL \controlador|Add0~17\ : std_logic;
SIGNAL \controlador|Add0~18_combout\ : std_logic;
SIGNAL \controlador|Add0~19\ : std_logic;
SIGNAL \controlador|Add0~20_combout\ : std_logic;
SIGNAL \controlador|Add0~21\ : std_logic;
SIGNAL \controlador|Add0~22_combout\ : std_logic;
SIGNAL \controlador|Add0~23\ : std_logic;
SIGNAL \controlador|Add0~24_combout\ : std_logic;
SIGNAL \controlador|Add0~25\ : std_logic;
SIGNAL \controlador|Add0~26_combout\ : std_logic;
SIGNAL \controlador|Add0~27\ : std_logic;
SIGNAL \controlador|Add0~28_combout\ : std_logic;
SIGNAL \controlador|Add0~29\ : std_logic;
SIGNAL \controlador|Add0~30_combout\ : std_logic;
SIGNAL \controlador|Add0~31\ : std_logic;
SIGNAL \controlador|Add0~32_combout\ : std_logic;
SIGNAL \controlador|Add0~33\ : std_logic;
SIGNAL \controlador|Add0~34_combout\ : std_logic;
SIGNAL \controlador|Equal0~0_combout\ : std_logic;
SIGNAL \controlador|Equal0~3_combout\ : std_logic;
SIGNAL \controlador|Equal0~2_combout\ : std_logic;
SIGNAL \controlador|Equal0~1_combout\ : std_logic;
SIGNAL \controlador|Equal0~4_combout\ : std_logic;
SIGNAL \controlador|Equal0~5_combout\ : std_logic;
SIGNAL \controlador|Add1~0_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms[6]~7_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms~8_combout\ : std_logic;
SIGNAL \controlador|Add1~1\ : std_logic;
SIGNAL \controlador|Add1~2_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms~6_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms[1]~2_combout\ : std_logic;
SIGNAL \controlador|Add1~3\ : std_logic;
SIGNAL \controlador|Add1~4_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms~5_combout\ : std_logic;
SIGNAL \controlador|Add1~5\ : std_logic;
SIGNAL \controlador|Add1~6_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms~4_combout\ : std_logic;
SIGNAL \controlador|Add1~7\ : std_logic;
SIGNAL \controlador|Add1~8_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms~3_combout\ : std_logic;
SIGNAL \controlador|Add1~9\ : std_logic;
SIGNAL \controlador|Add1~10_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms~1_combout\ : std_logic;
SIGNAL \controlador|Add1~11\ : std_logic;
SIGNAL \controlador|Add1~12_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms[6]~0_combout\ : std_logic;
SIGNAL \controlador|ena_320ms~combout\ : std_logic;
SIGNAL \controlador|estado.config~0_combout\ : std_logic;
SIGNAL \controlador|estado.config~q\ : std_logic;
SIGNAL \controlador|ini_tx~0_combout\ : std_logic;
SIGNAL \controlador|ini_tx~q\ : std_logic;
SIGNAL \master|reg_nWR~q\ : std_logic;
SIGNAL \master|fin_tx~0_combout\ : std_logic;
SIGNAL \master|cnt_div[3]~17_combout\ : std_logic;
SIGNAL \master|cnt_div[3]~10_combout\ : std_logic;
SIGNAL \master|cnt_div[3]~12_combout\ : std_logic;
SIGNAL \master|cnt_div[0]~11_combout\ : std_logic;
SIGNAL \master|cnt_div[2]~18_combout\ : std_logic;
SIGNAL \master|cnt_div[2]~13_combout\ : std_logic;
SIGNAL \master|cnt_div[2]~14_combout\ : std_logic;
SIGNAL \master|cnt_div[1]~8_combout\ : std_logic;
SIGNAL \master|cnt_div[1]~16_combout\ : std_logic;
SIGNAL \master|cnt_div[1]~9_combout\ : std_logic;
SIGNAL \master|SPC_up~combout\ : std_logic;
SIGNAL \master|cnt_bit[0]~0_combout\ : std_logic;
SIGNAL \master|cnt_bit[1]~2_combout\ : std_logic;
SIGNAL \master|cnt_bit[2]~1_combout\ : std_logic;
SIGNAL \master|ena_bit~combout\ : std_logic;
SIGNAL \master|cnt_div[0]~19_combout\ : std_logic;
SIGNAL \master|cnt_div[0]~15_combout\ : std_logic;
SIGNAL \master|LessThan3~0_combout\ : std_logic;
SIGNAL \controlador|process_2~0_combout\ : std_logic;
SIGNAL \controlador|dato[15]~feeder_combout\ : std_logic;
SIGNAL \controlador|dato[15]~0_combout\ : std_logic;
SIGNAL \controlador|dato[14]~feeder_combout\ : std_logic;
SIGNAL \controlador|dato[12]~feeder_combout\ : std_logic;
SIGNAL \controlador|process_2~1_combout\ : std_logic;
SIGNAL \controlador|dato[9]~3_combout\ : std_logic;
SIGNAL \controlador|dato[8]~4_combout\ : std_logic;
SIGNAL \controlador|process_2~2_combout\ : std_logic;
SIGNAL \controlador|dato[7]~5_combout\ : std_logic;
SIGNAL \controlador|dato[6]~feeder_combout\ : std_logic;
SIGNAL \controlador|dato[5]~feeder_combout\ : std_logic;
SIGNAL \controlador|dato[4]~feeder_combout\ : std_logic;
SIGNAL \controlador|dato[1]~feeder_combout\ : std_logic;
SIGNAL \master|process_4~0_combout\ : std_logic;
SIGNAL \master|process_4~1_combout\ : std_logic;
SIGNAL \master|ena_SDI~2_combout\ : std_logic;
SIGNAL \master|ena_SDI~4_combout\ : std_logic;
SIGNAL \master|ena_SDI~3_combout\ : std_logic;
SIGNAL \master|reg_SDI~19_combout\ : std_logic;
SIGNAL \master|reg_SDI[0]~feeder_combout\ : std_logic;
SIGNAL \controlador|dato[0]~feeder_combout\ : std_logic;
SIGNAL \master|reg_SDI~18_combout\ : std_logic;
SIGNAL \master|reg_SDI[12]~2_combout\ : std_logic;
SIGNAL \master|reg_SDI[12]~3_combout\ : std_logic;
SIGNAL \master|reg_SDI[12]~1_combout\ : std_logic;
SIGNAL \master|reg_SDI[12]~4_combout\ : std_logic;
SIGNAL \master|reg_SDI~17_combout\ : std_logic;
SIGNAL \master|reg_SDI~16_combout\ : std_logic;
SIGNAL \master|reg_SDI~15_combout\ : std_logic;
SIGNAL \master|reg_SDI~14_combout\ : std_logic;
SIGNAL \master|reg_SDI~13_combout\ : std_logic;
SIGNAL \master|reg_SDI~12_combout\ : std_logic;
SIGNAL \master|reg_SDI~11_combout\ : std_logic;
SIGNAL \master|reg_SDI~10_combout\ : std_logic;
SIGNAL \controlador|dato[10]~feeder_combout\ : std_logic;
SIGNAL \master|reg_SDI~9_combout\ : std_logic;
SIGNAL \controlador|dato[11]~feeder_combout\ : std_logic;
SIGNAL \master|reg_SDI~8_combout\ : std_logic;
SIGNAL \master|reg_SDI~7_combout\ : std_logic;
SIGNAL \master|reg_SDI~6_combout\ : std_logic;
SIGNAL \master|reg_SDI~5_combout\ : std_logic;
SIGNAL \master|reg_SDI~0_combout\ : std_logic;
SIGNAL \master|SDI~combout\ : std_logic;
SIGNAL \master|SPC~0_combout\ : std_logic;
SIGNAL \cuantificador|mux_disp[1]~1_combout\ : std_logic;
SIGNAL \cuantificador|Add0~0_combout\ : std_logic;
SIGNAL \cuantificador|Add0~1\ : std_logic;
SIGNAL \cuantificador|Add0~2_combout\ : std_logic;
SIGNAL \cuantificador|Add0~3\ : std_logic;
SIGNAL \cuantificador|Add0~4_combout\ : std_logic;
SIGNAL \cuantificador|Add0~5\ : std_logic;
SIGNAL \cuantificador|Add0~6_combout\ : std_logic;
SIGNAL \cuantificador|Add0~7\ : std_logic;
SIGNAL \cuantificador|Add0~8_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~4_combout\ : std_logic;
SIGNAL \cuantificador|Add0~9\ : std_logic;
SIGNAL \cuantificador|Add0~10_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~5_combout\ : std_logic;
SIGNAL \cuantificador|Add0~11\ : std_logic;
SIGNAL \cuantificador|Add0~12_combout\ : std_logic;
SIGNAL \cuantificador|Add0~13\ : std_logic;
SIGNAL \cuantificador|Add0~14_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~4_combout\ : std_logic;
SIGNAL \cuantificador|Add0~15\ : std_logic;
SIGNAL \cuantificador|Add0~16_combout\ : std_logic;
SIGNAL \cuantificador|Add0~17\ : std_logic;
SIGNAL \cuantificador|Add0~18_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~3_combout\ : std_logic;
SIGNAL \cuantificador|Add0~19\ : std_logic;
SIGNAL \cuantificador|Add0~20_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~2_combout\ : std_logic;
SIGNAL \cuantificador|Add0~21\ : std_logic;
SIGNAL \cuantificador|Add0~22_combout\ : std_logic;
SIGNAL \cuantificador|Add0~23\ : std_logic;
SIGNAL \cuantificador|Add0~24_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~1_combout\ : std_logic;
SIGNAL \cuantificador|Add0~25\ : std_logic;
SIGNAL \cuantificador|Add0~26_combout\ : std_logic;
SIGNAL \cuantificador|Add0~27\ : std_logic;
SIGNAL \cuantificador|Add0~28_combout\ : std_logic;
SIGNAL \cuantificador|Add0~29\ : std_logic;
SIGNAL \cuantificador|Add0~30_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~1_combout\ : std_logic;
SIGNAL \cuantificador|Add0~31\ : std_logic;
SIGNAL \cuantificador|Add0~32_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~0_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~0_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~2_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~3_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~5_combout\ : std_logic;
SIGNAL \cuantificador|mux_disp[7]~feeder_combout\ : std_logic;
SIGNAL \cuantificador|mux_disp[0]~0_combout\ : std_logic;
SIGNAL \SDO~input_o\ : std_logic;
SIGNAL \master|reg_SDO[0]~feeder_combout\ : std_logic;
SIGNAL \master|ena_SDO~0_combout\ : std_logic;
SIGNAL \master|reg_SDO[1]~feeder_combout\ : std_logic;
SIGNAL \master|reg_SDO[2]~feeder_combout\ : std_logic;
SIGNAL \master|reg_SDO[3]~feeder_combout\ : std_logic;
SIGNAL \master|reg_SDO[4]~feeder_combout\ : std_logic;
SIGNAL \master|reg_SDO[5]~feeder_combout\ : std_logic;
SIGNAL \master|reg_SDO[6]~feeder_combout\ : std_logic;
SIGNAL \master|reg_SDO[7]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[9]~feeder_combout\ : std_logic;
SIGNAL \master|ena_rd~0_combout\ : std_logic;
SIGNAL \master|ena_rd~q\ : std_logic;
SIGNAL \calc_offset|cnt_rd[0]~4_combout\ : std_logic;
SIGNAL \calc_offset|cnt_rd[1]~3_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[9]~0_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[8]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[7]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[6]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[5]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[4]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[3]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[2]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[1]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[1]~1_combout\ : std_logic;
SIGNAL \calc_offset|muestra_X[0]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[0]~15_combout\ : std_logic;
SIGNAL \calc_offset|cnt_rd[7]~0_combout\ : std_logic;
SIGNAL \calc_offset|cnt_rd[2]~5_combout\ : std_logic;
SIGNAL \calc_offset|cnt_rd[2]~2_combout\ : std_logic;
SIGNAL \calc_offset|Add1~0_combout\ : std_logic;
SIGNAL \calc_offset|Add1~1\ : std_logic;
SIGNAL \calc_offset|Add1~2_combout\ : std_logic;
SIGNAL \calc_offset|Add1~3\ : std_logic;
SIGNAL \calc_offset|Add1~4_combout\ : std_logic;
SIGNAL \calc_offset|Add1~5\ : std_logic;
SIGNAL \calc_offset|Add1~6_combout\ : std_logic;
SIGNAL \calc_offset|Add1~7\ : std_logic;
SIGNAL \calc_offset|Add1~8_combout\ : std_logic;
SIGNAL \calc_offset|cnt_rd[7]~1_combout\ : std_logic;
SIGNAL \calc_offset|ena_calc~0_combout\ : std_logic;
SIGNAL \calc_offset|ena_calc~q\ : std_logic;
SIGNAL \calc_offset|acum_X[0]~16\ : std_logic;
SIGNAL \calc_offset|acum_X[1]~17_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[1]~18\ : std_logic;
SIGNAL \calc_offset|acum_X[2]~19_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[2]~20\ : std_logic;
SIGNAL \calc_offset|acum_X[3]~21_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[3]~22\ : std_logic;
SIGNAL \calc_offset|acum_X[4]~23_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[4]~24\ : std_logic;
SIGNAL \calc_offset|acum_X[5]~25_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[5]~26\ : std_logic;
SIGNAL \calc_offset|acum_X[6]~27_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[6]~28\ : std_logic;
SIGNAL \calc_offset|acum_X[7]~29_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[7]~30\ : std_logic;
SIGNAL \calc_offset|acum_X[8]~31_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[8]~32\ : std_logic;
SIGNAL \calc_offset|acum_X[9]~33_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[9]~34\ : std_logic;
SIGNAL \calc_offset|acum_X[10]~35_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[10]~36\ : std_logic;
SIGNAL \calc_offset|acum_X[11]~37_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[11]~38\ : std_logic;
SIGNAL \calc_offset|acum_X[12]~39_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[12]~40\ : std_logic;
SIGNAL \calc_offset|acum_X[13]~41_combout\ : std_logic;
SIGNAL \calc_offset|acum_X[13]~42\ : std_logic;
SIGNAL \calc_offset|acum_X[14]~43_combout\ : std_logic;
SIGNAL \calc_offset|X_out_bias[10]~0_combout\ : std_logic;
SIGNAL \calc_offset|muestra_bias_rdy~0_combout\ : std_logic;
SIGNAL \calc_offset|muestra_bias_rdy~q\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|dffe4~q\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ : std_logic;
SIGNAL \calc_offset|X_out_bias[8]~1_combout\ : std_logic;
SIGNAL \calc_offset|X_out_bias[7]~2_combout\ : std_logic;
SIGNAL \calc_offset|X_out_bias[6]~3_combout\ : std_logic;
SIGNAL \calc_offset|X_out_bias[5]~4_combout\ : std_logic;
SIGNAL \calc_offset|X_out_bias[4]~5_combout\ : std_logic;
SIGNAL \calc_offset|X_out_bias[3]~6_combout\ : std_logic;
SIGNAL \calc_offset|X_out_bias[2]~7_combout\ : std_logic;
SIGNAL \calc_offset|X_out_bias[1]~8_combout\ : std_logic;
SIGNAL \calc_offset|X_out_bias[0]~9_combout\ : std_logic;
SIGNAL \calc_offset|muestra_Y[9]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_Y[8]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_Y[7]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_Y[6]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_Y[5]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_Y[4]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_Y[3]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_Y[2]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_Y[1]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|muestra_Y[1]~0_combout\ : std_logic;
SIGNAL \calc_offset|muestra_Y[0]~feeder_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[0]~15_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[0]~16\ : std_logic;
SIGNAL \calc_offset|acum_Y[1]~17_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[1]~18\ : std_logic;
SIGNAL \calc_offset|acum_Y[2]~19_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[2]~20\ : std_logic;
SIGNAL \calc_offset|acum_Y[3]~21_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[3]~22\ : std_logic;
SIGNAL \calc_offset|acum_Y[4]~23_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[4]~24\ : std_logic;
SIGNAL \calc_offset|acum_Y[5]~25_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[5]~26\ : std_logic;
SIGNAL \calc_offset|acum_Y[6]~27_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[6]~28\ : std_logic;
SIGNAL \calc_offset|acum_Y[7]~29_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[7]~30\ : std_logic;
SIGNAL \calc_offset|acum_Y[8]~31_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[8]~32\ : std_logic;
SIGNAL \calc_offset|acum_Y[9]~33_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[9]~34\ : std_logic;
SIGNAL \calc_offset|acum_Y[10]~35_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[10]~36\ : std_logic;
SIGNAL \calc_offset|acum_Y[11]~37_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[11]~38\ : std_logic;
SIGNAL \calc_offset|acum_Y[12]~39_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[12]~40\ : std_logic;
SIGNAL \calc_offset|acum_Y[13]~41_combout\ : std_logic;
SIGNAL \calc_offset|acum_Y[13]~42\ : std_logic;
SIGNAL \calc_offset|acum_Y[14]~43_combout\ : std_logic;
SIGNAL \calc_offset|Y_out_bias[10]~0_combout\ : std_logic;
SIGNAL \calc_offset|Y_out_bias[8]~1_combout\ : std_logic;
SIGNAL \calc_offset|Y_out_bias[7]~2_combout\ : std_logic;
SIGNAL \calc_offset|Y_out_bias[6]~3_combout\ : std_logic;
SIGNAL \calc_offset|Y_out_bias[5]~4_combout\ : std_logic;
SIGNAL \calc_offset|Y_out_bias[4]~5_combout\ : std_logic;
SIGNAL \calc_offset|Y_out_bias[3]~6_combout\ : std_logic;
SIGNAL \calc_offset|Y_out_bias[2]~7_combout\ : std_logic;
SIGNAL \calc_offset|Y_out_bias[1]~8_combout\ : std_logic;
SIGNAL \calc_offset|Y_out_bias[0]~9_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a2\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a4\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a6\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a8\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[0]~1\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[1]~3\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[2]~5\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[3]~7\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[4]~9\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[5]~11\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[6]~13\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[7]~15\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[8]~17\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[9]~18_combout\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[8]~16_combout\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[7]~14_combout\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[6]~12_combout\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[5]~10_combout\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[4]~8_combout\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[3]~6_combout\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[2]~4_combout\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[1]~2_combout\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[0]~0_combout\ : std_logic;
SIGNAL \estimador|X_media_N[0]~16_combout\ : std_logic;
SIGNAL \estimador|X_media_N[0]~17\ : std_logic;
SIGNAL \estimador|X_media_N[1]~18_combout\ : std_logic;
SIGNAL \estimador|X_media_N[1]~19\ : std_logic;
SIGNAL \estimador|X_media_N[2]~20_combout\ : std_logic;
SIGNAL \estimador|X_media_N[2]~21\ : std_logic;
SIGNAL \estimador|X_media_N[3]~22_combout\ : std_logic;
SIGNAL \estimador|X_media_N[3]~23\ : std_logic;
SIGNAL \estimador|X_media_N[4]~24_combout\ : std_logic;
SIGNAL \estimador|X_media_N[4]~25\ : std_logic;
SIGNAL \estimador|X_media_N[5]~26_combout\ : std_logic;
SIGNAL \estimador|X_media_N[5]~27\ : std_logic;
SIGNAL \estimador|X_media_N[6]~28_combout\ : std_logic;
SIGNAL \estimador|X_media_N[6]~29\ : std_logic;
SIGNAL \estimador|X_media_N[7]~30_combout\ : std_logic;
SIGNAL \estimador|X_media_N[7]~31\ : std_logic;
SIGNAL \estimador|X_media_N[8]~32_combout\ : std_logic;
SIGNAL \estimador|X_media_N[8]~33\ : std_logic;
SIGNAL \estimador|X_media_N[9]~34_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~2_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[9]~19\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[10]~21\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[11]~22_combout\ : std_logic;
SIGNAL \estimador|dif_X_muestra_N[10]~20_combout\ : std_logic;
SIGNAL \estimador|X_media_N[9]~35\ : std_logic;
SIGNAL \estimador|X_media_N[10]~36_combout\ : std_logic;
SIGNAL \estimador|X_media_N[10]~37\ : std_logic;
SIGNAL \estimador|X_media_N[11]~38_combout\ : std_logic;
SIGNAL \estimador|X_media_N[11]~39\ : std_logic;
SIGNAL \estimador|X_media_N[12]~40_combout\ : std_logic;
SIGNAL \estimador|X_media_N[12]~41\ : std_logic;
SIGNAL \estimador|X_media_N[13]~42_combout\ : std_logic;
SIGNAL \estimador|X_media_N[13]~43\ : std_logic;
SIGNAL \estimador|X_media_N[14]~44_combout\ : std_logic;
SIGNAL \estimador|X_media_N[14]~45\ : std_logic;
SIGNAL \estimador|X_media_N[15]~46_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~0_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~1_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~1_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~2_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~3_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~4_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~5_combout\ : std_logic;
SIGNAL \cuantificador|digitos[0]~23_combout\ : std_logic;
SIGNAL \cuantificador|digitos[0]~24_combout\ : std_logic;
SIGNAL \cuantificador|digitos[0]~25_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~0_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~6_combout\ : std_logic;
SIGNAL \cuantificador|LessThan13~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan13~1_combout\ : std_logic;
SIGNAL \cuantificador|LessThan13~2_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~3_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~4_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~5_combout\ : std_logic;
SIGNAL \cuantificador|LessThan11~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan11~1_combout\ : std_logic;
SIGNAL \cuantificador|digitos~35_combout\ : std_logic;
SIGNAL \cuantificador|LessThan10~0_combout\ : std_logic;
SIGNAL \cuantificador|digitos~36_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~11_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~12_combout\ : std_logic;
SIGNAL \cuantificador|LessThan12~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan12~1_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~13_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~9_combout\ : std_logic;
SIGNAL \cuantificador|digitos~32_combout\ : std_logic;
SIGNAL \cuantificador|digitos~33_combout\ : std_logic;
SIGNAL \cuantificador|digitos~34_combout\ : std_logic;
SIGNAL \cuantificador|digitos~9_combout\ : std_logic;
SIGNAL \cuantificador|digitos~6_combout\ : std_logic;
SIGNAL \cuantificador|digitos~3_combout\ : std_logic;
SIGNAL \cuantificador|digitos~37_combout\ : std_logic;
SIGNAL \cuantificador|digitos~28_combout\ : std_logic;
SIGNAL \cuantificador|digitos~29_combout\ : std_logic;
SIGNAL \cuantificador|digitos~30_combout\ : std_logic;
SIGNAL \cuantificador|digitos~31_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~6_combout\ : std_logic;
SIGNAL \cuantificador|digitos~26_combout\ : std_logic;
SIGNAL \cuantificador|digitos~27_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~7_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~8_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~10_combout\ : std_logic;
SIGNAL \cuantificador|LessThan2~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan2~1_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~14_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~15_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~16_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~17_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~18_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~19_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~20_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~21_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~22_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~7_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a15\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a17\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a20\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a21\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[0]~1\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[1]~3\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[2]~5\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[3]~7\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[4]~9\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[5]~11\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[6]~13\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[7]~14_combout\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[6]~12_combout\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[5]~10_combout\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[4]~8_combout\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[3]~6_combout\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[2]~4_combout\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[1]~2_combout\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[0]~0_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[0]~16_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[0]~17\ : std_logic;
SIGNAL \estimador|Y_media_N[1]~18_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[1]~19\ : std_logic;
SIGNAL \estimador|Y_media_N[2]~20_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[2]~21\ : std_logic;
SIGNAL \estimador|Y_media_N[3]~22_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[3]~23\ : std_logic;
SIGNAL \estimador|Y_media_N[4]~24_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[4]~25\ : std_logic;
SIGNAL \estimador|Y_media_N[5]~26_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[5]~27\ : std_logic;
SIGNAL \estimador|Y_media_N[6]~28_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[6]~29\ : std_logic;
SIGNAL \estimador|Y_media_N[7]~30_combout\ : std_logic;
SIGNAL \cuantificador|leds[0]~7_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a13\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[7]~15\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[8]~17\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[9]~19\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[10]~21\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[11]~22_combout\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[10]~20_combout\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[9]~18_combout\ : std_logic;
SIGNAL \estimador|dif_Y_muestra_N[8]~16_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[7]~31\ : std_logic;
SIGNAL \estimador|Y_media_N[8]~32_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[8]~33\ : std_logic;
SIGNAL \estimador|Y_media_N[9]~34_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[9]~35\ : std_logic;
SIGNAL \estimador|Y_media_N[10]~36_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[10]~37\ : std_logic;
SIGNAL \estimador|Y_media_N[11]~38_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[11]~39\ : std_logic;
SIGNAL \estimador|Y_media_N[12]~40_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[12]~41\ : std_logic;
SIGNAL \estimador|Y_media_N[13]~42_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[13]~43\ : std_logic;
SIGNAL \estimador|Y_media_N[14]~44_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[14]~45\ : std_logic;
SIGNAL \estimador|Y_media_N[15]~46_combout\ : std_logic;
SIGNAL \cuantificador|leds[2]~5_combout\ : std_logic;
SIGNAL \cuantificador|LessThan25~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan23~0_combout\ : std_logic;
SIGNAL \cuantificador|leds[7]~4_combout\ : std_logic;
SIGNAL \cuantificador|leds[0]~6_combout\ : std_logic;
SIGNAL \cuantificador|leds[0]~8_combout\ : std_logic;
SIGNAL \cuantificador|leds[1]~12_combout\ : std_logic;
SIGNAL \cuantificador|LessThan28~0_combout\ : std_logic;
SIGNAL \cuantificador|leds[5]~11_combout\ : std_logic;
SIGNAL \cuantificador|leds[1]~13_combout\ : std_logic;
SIGNAL \cuantificador|LessThan29~0_combout\ : std_logic;
SIGNAL \cuantificador|leds[2]~9_combout\ : std_logic;
SIGNAL \cuantificador|leds[2]~10_combout\ : std_logic;
SIGNAL \cuantificador|leds[1]~14_combout\ : std_logic;
SIGNAL \cuantificador|leds[1]~38_combout\ : std_logic;
SIGNAL \cuantificador|LessThan28~1_combout\ : std_logic;
SIGNAL \cuantificador|LessThan28~2_combout\ : std_logic;
SIGNAL \cuantificador|leds~15_combout\ : std_logic;
SIGNAL \cuantificador|leds[2]~16_combout\ : std_logic;
SIGNAL \cuantificador|leds[2]~17_combout\ : std_logic;
SIGNAL \cuantificador|leds~20_combout\ : std_logic;
SIGNAL \cuantificador|leds[3]~21_combout\ : std_logic;
SIGNAL \cuantificador|leds[3]~22_combout\ : std_logic;
SIGNAL \cuantificador|leds[3]~23_combout\ : std_logic;
SIGNAL \cuantificador|leds~18_combout\ : std_logic;
SIGNAL \cuantificador|leds~19_combout\ : std_logic;
SIGNAL \cuantificador|leds[3]~24_combout\ : std_logic;
SIGNAL \cuantificador|LessThan24~0_combout\ : std_logic;
SIGNAL \cuantificador|leds[4]~25_combout\ : std_logic;
SIGNAL \cuantificador|leds[4]~26_combout\ : std_logic;
SIGNAL \cuantificador|LessThan26~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan26~1_combout\ : std_logic;
SIGNAL \cuantificador|leds[4]~27_combout\ : std_logic;
SIGNAL \cuantificador|LessThan17~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan17~1_combout\ : std_logic;
SIGNAL \cuantificador|LessThan25~1_combout\ : std_logic;
SIGNAL \cuantificador|leds[5]~28_combout\ : std_logic;
SIGNAL \cuantificador|leds[5]~29_combout\ : std_logic;
SIGNAL \cuantificador|leds[5]~39_combout\ : std_logic;
SIGNAL \cuantificador|LessThan24~1_combout\ : std_logic;
SIGNAL \cuantificador|leds~30_combout\ : std_logic;
SIGNAL \cuantificador|leds[7]~31_combout\ : std_logic;
SIGNAL \cuantificador|leds[6]~33_combout\ : std_logic;
SIGNAL \cuantificador|leds[6]~32_combout\ : std_logic;
SIGNAL \cuantificador|leds[6]~34_combout\ : std_logic;
SIGNAL \cuantificador|leds~35_combout\ : std_logic;
SIGNAL \cuantificador|leds[7]~36_combout\ : std_logic;
SIGNAL \cuantificador|leds[7]~37_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \calc_offset|cnt_rd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \estimador|X_media_N\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \calc_offset|muestra_X\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \estimador|Y_media_N\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \master|cnt_div\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \calc_offset|acum_X\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \master|reg_SDI\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \calc_offset|acum_Y\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \master|cnt_byte\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cuantificador|mux_disp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \master|cnt_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlador|cnt_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cuantificador|cnt_div_1ms\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \controlador|dato\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \controlador|cnt_5ms\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \calc_offset|muestra_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \controlador|cnt_320ms\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \master|reg_SDO\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|ALT_INV_dffe4~q\ : std_logic;
SIGNAL \master|ALT_INV_ena_rd~q\ : std_logic;
SIGNAL \cuantificador|ALT_INV_leds[3]~24_combout\ : std_logic;
SIGNAL \cuantificador|ALT_INV_mux_disp\ : std_logic_vector(7 DOWNTO 1);
SIGNAL \master|ALT_INV_SPC~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_nRst <= nRst;
ww_SDO <= SDO;
SDI <= ww_SDI;
nCS <= ww_nCS;
SPC <= ww_SPC;
mux_disp <= ww_mux_disp;
disp <= ww_disp;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \calc_offset|Y_out_bias[0]~9_combout\ & \calc_offset|Y_out_bias[1]~8_combout\ & 
\calc_offset|Y_out_bias[2]~7_combout\ & \calc_offset|Y_out_bias[3]~6_combout\ & \calc_offset|Y_out_bias[4]~5_combout\ & \calc_offset|Y_out_bias[5]~4_combout\ & \calc_offset|Y_out_bias[6]~3_combout\ & \calc_offset|Y_out_bias[7]~2_combout\ & 
\calc_offset|Y_out_bias[8]~1_combout\ & \calc_offset|Y_out_bias[10]~0_combout\ & \calc_offset|Y_out_bias[10]~0_combout\ & \calc_offset|X_out_bias[0]~9_combout\ & \calc_offset|X_out_bias[1]~8_combout\ & \calc_offset|X_out_bias[2]~7_combout\ & 
\calc_offset|X_out_bias[3]~6_combout\ & \calc_offset|X_out_bias[4]~5_combout\ & \calc_offset|X_out_bias[5]~4_combout\ & \calc_offset|X_out_bias[6]~3_combout\ & \calc_offset|X_out_bias[7]~2_combout\ & \calc_offset|X_out_bias[8]~1_combout\ & 
\calc_offset|X_out_bias[10]~0_combout\ & \calc_offset|X_out_bias[10]~0_combout\);

\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\ <= (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & 
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\ <= (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & 
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(0);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(1);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a2\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(2);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(3);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a4\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(4);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(5);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a6\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(6);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(7);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a8\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(8);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(9);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(10);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(11);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(12);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a13\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(13);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(14);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a15\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(15);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(16);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a17\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(17);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(18);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(19);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a20\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(20);
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a21\ <= \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(21);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\estimador|reg_muestra_rtl_0|auto_generated|ALT_INV_dffe4~q\ <= NOT \estimador|reg_muestra_rtl_0|auto_generated|dffe4~q\;
\master|ALT_INV_ena_rd~q\ <= NOT \master|ena_rd~q\;
\cuantificador|ALT_INV_leds[3]~24_combout\ <= NOT \cuantificador|leds[3]~24_combout\;
\cuantificador|ALT_INV_mux_disp\(7) <= NOT \cuantificador|mux_disp\(7);
\cuantificador|ALT_INV_mux_disp\(6) <= NOT \cuantificador|mux_disp\(6);
\cuantificador|ALT_INV_mux_disp\(5) <= NOT \cuantificador|mux_disp\(5);
\cuantificador|ALT_INV_mux_disp\(4) <= NOT \cuantificador|mux_disp\(4);
\cuantificador|ALT_INV_mux_disp\(3) <= NOT \cuantificador|mux_disp\(3);
\cuantificador|ALT_INV_mux_disp\(2) <= NOT \cuantificador|mux_disp\(2);
\cuantificador|ALT_INV_mux_disp\(1) <= NOT \cuantificador|mux_disp\(1);
\master|ALT_INV_SPC~0_combout\ <= NOT \master|SPC~0_combout\;

-- Location: LCCOMB_X44_Y43_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X29_Y39_N9
\SDI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master|SDI~combout\,
	devoe => ww_devoe,
	o => \SDI~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\nCS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master|LessThan3~0_combout\,
	devoe => ww_devoe,
	o => \nCS~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\SPC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master|ALT_INV_SPC~0_combout\,
	devoe => ww_devoe,
	o => \SPC~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\mux_disp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|mux_disp\(0),
	devoe => ww_devoe,
	o => \mux_disp[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\mux_disp[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|ALT_INV_mux_disp\(1),
	devoe => ww_devoe,
	o => \mux_disp[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\mux_disp[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|ALT_INV_mux_disp\(2),
	devoe => ww_devoe,
	o => \mux_disp[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\mux_disp[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|ALT_INV_mux_disp\(3),
	devoe => ww_devoe,
	o => \mux_disp[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\mux_disp[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|ALT_INV_mux_disp\(4),
	devoe => ww_devoe,
	o => \mux_disp[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\mux_disp[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|ALT_INV_mux_disp\(5),
	devoe => ww_devoe,
	o => \mux_disp[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\mux_disp[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|ALT_INV_mux_disp\(6),
	devoe => ww_devoe,
	o => \mux_disp[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\mux_disp[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|ALT_INV_mux_disp\(7),
	devoe => ww_devoe,
	o => \mux_disp[7]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\disp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|disp[0]~7_combout\,
	devoe => ww_devoe,
	o => \disp[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\disp[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|disp[0]~7_combout\,
	devoe => ww_devoe,
	o => \disp[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\disp[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|disp[0]~7_combout\,
	devoe => ww_devoe,
	o => \disp[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\disp[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|disp[0]~7_combout\,
	devoe => ww_devoe,
	o => \disp[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\disp[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|disp[0]~7_combout\,
	devoe => ww_devoe,
	o => \disp[4]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\disp[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|disp[0]~7_combout\,
	devoe => ww_devoe,
	o => \disp[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\disp[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|disp[0]~7_combout\,
	devoe => ww_devoe,
	o => \disp[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\disp[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp[7]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|leds[0]~8_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|leds[1]~14_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|leds[2]~17_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|ALT_INV_leds[3]~24_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|leds[4]~27_combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|leds[5]~39_combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|leds[6]~34_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuantificador|leds[7]~37_combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y29_N22
\master|cnt_byte~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_byte~0_combout\ = (\master|ena_bit~combout\ & ((\master|cnt_byte\(0)))) # (!\master|ena_bit~combout\ & (!\master|fin_tx~0_combout\ & !\master|cnt_byte\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|fin_tx~0_combout\,
	datab => \master|ena_bit~combout\,
	datad => \master|cnt_byte\(0),
	combout => \master|cnt_byte~0_combout\);

-- Location: IOIBUF_X78_Y29_N1
\nRst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRst,
	o => \nRst~input_o\);

-- Location: FF_X21_Y29_N15
\master|cnt_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \master|cnt_byte~0_combout\,
	clrn => \nRst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_byte\(0));

-- Location: LCCOMB_X21_Y29_N10
\master|cnt_byte[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_byte[1]~2_combout\ = (\master|ena_bit~combout\ & (((\master|cnt_byte\(1))))) # (!\master|ena_bit~combout\ & (!\master|fin_tx~0_combout\ & (\master|cnt_byte\(1) $ (!\master|cnt_byte\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|fin_tx~0_combout\,
	datab => \master|cnt_byte\(1),
	datac => \master|ena_bit~combout\,
	datad => \master|cnt_byte\(0),
	combout => \master|cnt_byte[1]~2_combout\);

-- Location: FF_X21_Y29_N3
\master|cnt_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \master|cnt_byte[1]~2_combout\,
	clrn => \nRst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_byte\(1));

-- Location: LCCOMB_X21_Y29_N2
\master|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|Add2~0_combout\ = \master|cnt_byte\(2) $ (((\master|cnt_byte\(1) & !\master|cnt_byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|cnt_byte\(2),
	datac => \master|cnt_byte\(1),
	datad => \master|cnt_byte\(0),
	combout => \master|Add2~0_combout\);

-- Location: LCCOMB_X21_Y29_N8
\master|cnt_byte[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_byte[2]~1_combout\ = (\master|ena_bit~combout\ & (\master|cnt_byte\(2))) # (!\master|ena_bit~combout\ & (((\master|Add2~0_combout\ & !\master|fin_tx~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_byte\(2),
	datab => \master|ena_bit~combout\,
	datac => \master|Add2~0_combout\,
	datad => \master|fin_tx~0_combout\,
	combout => \master|cnt_byte[2]~1_combout\);

-- Location: FF_X21_Y29_N17
\master|cnt_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \master|cnt_byte[2]~1_combout\,
	clrn => \nRst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_byte\(2));

-- Location: LCCOMB_X24_Y29_N30
\controlador|cnt_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_reg[0]~2_combout\ = \controlador|cnt_reg\(0) $ (((!\controlador|estado.config~q\ & (\master|fin_tx~0_combout\ & !\master|ena_bit~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado.config~q\,
	datab => \controlador|cnt_reg\(0),
	datac => \master|fin_tx~0_combout\,
	datad => \master|ena_bit~combout\,
	combout => \controlador|cnt_reg[0]~2_combout\);

-- Location: LCCOMB_X24_Y29_N16
\controlador|cnt_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_reg[0]~feeder_combout\ = \controlador|cnt_reg[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador|cnt_reg[0]~2_combout\,
	combout => \controlador|cnt_reg[0]~feeder_combout\);

-- Location: FF_X24_Y29_N17
\controlador|cnt_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_reg[0]~feeder_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_reg\(0));

-- Location: LCCOMB_X24_Y29_N8
\controlador|cnt_reg[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_reg[1]~0_combout\ = (\controlador|estado.config~q\) # ((\master|ena_bit~combout\) # (!\controlador|cnt_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado.config~q\,
	datab => \controlador|cnt_reg\(0),
	datad => \master|ena_bit~combout\,
	combout => \controlador|cnt_reg[1]~0_combout\);

-- Location: LCCOMB_X24_Y29_N24
\controlador|cnt_reg[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_reg[1]~1_combout\ = \controlador|cnt_reg\(1) $ (((!\controlador|cnt_reg[1]~0_combout\ & \master|fin_tx~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_reg\(1),
	datab => \controlador|cnt_reg[1]~0_combout\,
	datad => \master|fin_tx~0_combout\,
	combout => \controlador|cnt_reg[1]~1_combout\);

-- Location: FF_X24_Y29_N9
\controlador|cnt_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \controlador|cnt_reg[1]~1_combout\,
	clrn => \nRst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_reg\(1));

-- Location: LCCOMB_X24_Y29_N12
\controlador|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Selector1~0_combout\ = (\controlador|cnt_reg\(1) & !\controlador|cnt_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_reg\(1),
	datad => \controlador|cnt_reg\(0),
	combout => \controlador|Selector1~0_combout\);

-- Location: LCCOMB_X24_Y29_N6
\controlador|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Selector1~1_combout\ = (\controlador|estado.offset~q\ & (((\controlador|ena_320ms~combout\)))) # (!\controlador|estado.offset~q\ & (!\controlador|estado.config~q\ & ((\controlador|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado.config~q\,
	datab => \controlador|ena_320ms~combout\,
	datac => \controlador|estado.offset~q\,
	datad => \controlador|Selector1~0_combout\,
	combout => \controlador|Selector1~1_combout\);

-- Location: FF_X24_Y29_N7
\controlador|estado.offset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Selector1~1_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|estado.offset~q\);

-- Location: LCCOMB_X31_Y29_N26
\controlador|cnt_5ms[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms[0]~6_combout\ = !\controlador|cnt_5ms\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador|cnt_5ms\(0),
	combout => \controlador|cnt_5ms[0]~6_combout\);

-- Location: FF_X31_Y29_N27
\controlador|cnt_5ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms[0]~6_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(0));

-- Location: LCCOMB_X31_Y30_N14
\controlador|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~1_cout\ = CARRY(!\controlador|cnt_5ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(0),
	datad => VCC,
	cout => \controlador|Add0~1_cout\);

-- Location: LCCOMB_X31_Y30_N16
\controlador|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~2_combout\ = (\controlador|cnt_5ms\(1) & (!\controlador|Add0~1_cout\)) # (!\controlador|cnt_5ms\(1) & ((\controlador|Add0~1_cout\) # (GND)))
-- \controlador|Add0~3\ = CARRY((!\controlador|Add0~1_cout\) # (!\controlador|cnt_5ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(1),
	datad => VCC,
	cin => \controlador|Add0~1_cout\,
	combout => \controlador|Add0~2_combout\,
	cout => \controlador|Add0~3\);

-- Location: FF_X31_Y30_N17
\controlador|cnt_5ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~2_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(1));

-- Location: LCCOMB_X31_Y30_N18
\controlador|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~4_combout\ = (\controlador|cnt_5ms\(2) & (\controlador|Add0~3\ $ (GND))) # (!\controlador|cnt_5ms\(2) & (!\controlador|Add0~3\ & VCC))
-- \controlador|Add0~5\ = CARRY((\controlador|cnt_5ms\(2) & !\controlador|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(2),
	datad => VCC,
	cin => \controlador|Add0~3\,
	combout => \controlador|Add0~4_combout\,
	cout => \controlador|Add0~5\);

-- Location: LCCOMB_X31_Y30_N2
\controlador|cnt_5ms~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~5_combout\ = (\controlador|Add0~4_combout\ & ((\controlador|cnt_5ms\(1)) # ((!\controlador|cnt_5ms\(0)) # (!\controlador|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(1),
	datab => \controlador|Equal0~4_combout\,
	datac => \controlador|cnt_5ms\(0),
	datad => \controlador|Add0~4_combout\,
	combout => \controlador|cnt_5ms~5_combout\);

-- Location: FF_X31_Y30_N3
\controlador|cnt_5ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~5_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(2));

-- Location: LCCOMB_X31_Y30_N20
\controlador|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~6_combout\ = (\controlador|cnt_5ms\(3) & (!\controlador|Add0~5\)) # (!\controlador|cnt_5ms\(3) & ((\controlador|Add0~5\) # (GND)))
-- \controlador|Add0~7\ = CARRY((!\controlador|Add0~5\) # (!\controlador|cnt_5ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(3),
	datad => VCC,
	cin => \controlador|Add0~5\,
	combout => \controlador|Add0~6_combout\,
	cout => \controlador|Add0~7\);

-- Location: FF_X31_Y30_N21
\controlador|cnt_5ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~6_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(3));

-- Location: LCCOMB_X31_Y30_N22
\controlador|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~8_combout\ = (\controlador|cnt_5ms\(4) & (\controlador|Add0~7\ $ (GND))) # (!\controlador|cnt_5ms\(4) & (!\controlador|Add0~7\ & VCC))
-- \controlador|Add0~9\ = CARRY((\controlador|cnt_5ms\(4) & !\controlador|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(4),
	datad => VCC,
	cin => \controlador|Add0~7\,
	combout => \controlador|Add0~8_combout\,
	cout => \controlador|Add0~9\);

-- Location: LCCOMB_X31_Y30_N4
\controlador|cnt_5ms~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~4_combout\ = (\controlador|Add0~8_combout\ & (((\controlador|cnt_5ms\(1)) # (!\controlador|Equal0~4_combout\)) # (!\controlador|cnt_5ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~8_combout\,
	datab => \controlador|cnt_5ms\(0),
	datac => \controlador|cnt_5ms\(1),
	datad => \controlador|Equal0~4_combout\,
	combout => \controlador|cnt_5ms~4_combout\);

-- Location: FF_X31_Y30_N5
\controlador|cnt_5ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~4_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(4));

-- Location: LCCOMB_X31_Y30_N24
\controlador|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~10_combout\ = (\controlador|cnt_5ms\(5) & (!\controlador|Add0~9\)) # (!\controlador|cnt_5ms\(5) & ((\controlador|Add0~9\) # (GND)))
-- \controlador|Add0~11\ = CARRY((!\controlador|Add0~9\) # (!\controlador|cnt_5ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(5),
	datad => VCC,
	cin => \controlador|Add0~9\,
	combout => \controlador|Add0~10_combout\,
	cout => \controlador|Add0~11\);

-- Location: LCCOMB_X31_Y30_N10
\controlador|cnt_5ms~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~3_combout\ = (\controlador|Add0~10_combout\ & ((\controlador|cnt_5ms\(1)) # ((!\controlador|cnt_5ms\(0)) # (!\controlador|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(1),
	datab => \controlador|Equal0~4_combout\,
	datac => \controlador|cnt_5ms\(0),
	datad => \controlador|Add0~10_combout\,
	combout => \controlador|cnt_5ms~3_combout\);

-- Location: FF_X31_Y30_N11
\controlador|cnt_5ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~3_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(5));

-- Location: LCCOMB_X31_Y30_N26
\controlador|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~12_combout\ = (\controlador|cnt_5ms\(6) & (\controlador|Add0~11\ $ (GND))) # (!\controlador|cnt_5ms\(6) & (!\controlador|Add0~11\ & VCC))
-- \controlador|Add0~13\ = CARRY((\controlador|cnt_5ms\(6) & !\controlador|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(6),
	datad => VCC,
	cin => \controlador|Add0~11\,
	combout => \controlador|Add0~12_combout\,
	cout => \controlador|Add0~13\);

-- Location: LCCOMB_X31_Y30_N0
\controlador|cnt_5ms~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~2_combout\ = (\controlador|Add0~12_combout\ & (((\controlador|cnt_5ms\(1)) # (!\controlador|Equal0~4_combout\)) # (!\controlador|cnt_5ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~12_combout\,
	datab => \controlador|cnt_5ms\(0),
	datac => \controlador|cnt_5ms\(1),
	datad => \controlador|Equal0~4_combout\,
	combout => \controlador|cnt_5ms~2_combout\);

-- Location: FF_X31_Y30_N1
\controlador|cnt_5ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~2_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(6));

-- Location: LCCOMB_X31_Y30_N28
\controlador|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~14_combout\ = (\controlador|cnt_5ms\(7) & (!\controlador|Add0~13\)) # (!\controlador|cnt_5ms\(7) & ((\controlador|Add0~13\) # (GND)))
-- \controlador|Add0~15\ = CARRY((!\controlador|Add0~13\) # (!\controlador|cnt_5ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(7),
	datad => VCC,
	cin => \controlador|Add0~13\,
	combout => \controlador|Add0~14_combout\,
	cout => \controlador|Add0~15\);

-- Location: LCCOMB_X31_Y30_N6
\controlador|cnt_5ms~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~1_combout\ = (\controlador|Add0~14_combout\ & ((\controlador|cnt_5ms\(1)) # ((!\controlador|cnt_5ms\(0)) # (!\controlador|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(1),
	datab => \controlador|Equal0~4_combout\,
	datac => \controlador|cnt_5ms\(0),
	datad => \controlador|Add0~14_combout\,
	combout => \controlador|cnt_5ms~1_combout\);

-- Location: FF_X31_Y30_N7
\controlador|cnt_5ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~1_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(7));

-- Location: LCCOMB_X31_Y30_N30
\controlador|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~16_combout\ = (\controlador|cnt_5ms\(8) & (\controlador|Add0~15\ $ (GND))) # (!\controlador|cnt_5ms\(8) & (!\controlador|Add0~15\ & VCC))
-- \controlador|Add0~17\ = CARRY((\controlador|cnt_5ms\(8) & !\controlador|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(8),
	datad => VCC,
	cin => \controlador|Add0~15\,
	combout => \controlador|Add0~16_combout\,
	cout => \controlador|Add0~17\);

-- Location: LCCOMB_X31_Y30_N12
\controlador|cnt_5ms~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~0_combout\ = (\controlador|Add0~16_combout\ & (((\controlador|cnt_5ms\(1)) # (!\controlador|Equal0~4_combout\)) # (!\controlador|cnt_5ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~16_combout\,
	datab => \controlador|cnt_5ms\(0),
	datac => \controlador|cnt_5ms\(1),
	datad => \controlador|Equal0~4_combout\,
	combout => \controlador|cnt_5ms~0_combout\);

-- Location: FF_X31_Y30_N13
\controlador|cnt_5ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~0_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(8));

-- Location: LCCOMB_X31_Y29_N0
\controlador|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~18_combout\ = (\controlador|cnt_5ms\(9) & (!\controlador|Add0~17\)) # (!\controlador|cnt_5ms\(9) & ((\controlador|Add0~17\) # (GND)))
-- \controlador|Add0~19\ = CARRY((!\controlador|Add0~17\) # (!\controlador|cnt_5ms\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(9),
	datad => VCC,
	cin => \controlador|Add0~17\,
	combout => \controlador|Add0~18_combout\,
	cout => \controlador|Add0~19\);

-- Location: FF_X31_Y29_N1
\controlador|cnt_5ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~18_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(9));

-- Location: LCCOMB_X31_Y29_N2
\controlador|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~20_combout\ = (\controlador|cnt_5ms\(10) & (\controlador|Add0~19\ $ (GND))) # (!\controlador|cnt_5ms\(10) & (!\controlador|Add0~19\ & VCC))
-- \controlador|Add0~21\ = CARRY((\controlador|cnt_5ms\(10) & !\controlador|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(10),
	datad => VCC,
	cin => \controlador|Add0~19\,
	combout => \controlador|Add0~20_combout\,
	cout => \controlador|Add0~21\);

-- Location: FF_X31_Y29_N3
\controlador|cnt_5ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~20_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(10));

-- Location: LCCOMB_X31_Y29_N4
\controlador|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~22_combout\ = (\controlador|cnt_5ms\(11) & (!\controlador|Add0~21\)) # (!\controlador|cnt_5ms\(11) & ((\controlador|Add0~21\) # (GND)))
-- \controlador|Add0~23\ = CARRY((!\controlador|Add0~21\) # (!\controlador|cnt_5ms\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(11),
	datad => VCC,
	cin => \controlador|Add0~21\,
	combout => \controlador|Add0~22_combout\,
	cout => \controlador|Add0~23\);

-- Location: FF_X31_Y29_N5
\controlador|cnt_5ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~22_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(11));

-- Location: LCCOMB_X31_Y29_N6
\controlador|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~24_combout\ = (\controlador|cnt_5ms\(12) & (\controlador|Add0~23\ $ (GND))) # (!\controlador|cnt_5ms\(12) & (!\controlador|Add0~23\ & VCC))
-- \controlador|Add0~25\ = CARRY((\controlador|cnt_5ms\(12) & !\controlador|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(12),
	datad => VCC,
	cin => \controlador|Add0~23\,
	combout => \controlador|Add0~24_combout\,
	cout => \controlador|Add0~25\);

-- Location: FF_X31_Y29_N7
\controlador|cnt_5ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~24_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(12));

-- Location: LCCOMB_X31_Y29_N8
\controlador|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~26_combout\ = (\controlador|cnt_5ms\(13) & (!\controlador|Add0~25\)) # (!\controlador|cnt_5ms\(13) & ((\controlador|Add0~25\) # (GND)))
-- \controlador|Add0~27\ = CARRY((!\controlador|Add0~25\) # (!\controlador|cnt_5ms\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(13),
	datad => VCC,
	cin => \controlador|Add0~25\,
	combout => \controlador|Add0~26_combout\,
	cout => \controlador|Add0~27\);

-- Location: FF_X31_Y29_N9
\controlador|cnt_5ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~26_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(13));

-- Location: LCCOMB_X31_Y29_N10
\controlador|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~28_combout\ = (\controlador|cnt_5ms\(14) & (\controlador|Add0~27\ $ (GND))) # (!\controlador|cnt_5ms\(14) & (!\controlador|Add0~27\ & VCC))
-- \controlador|Add0~29\ = CARRY((\controlador|cnt_5ms\(14) & !\controlador|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(14),
	datad => VCC,
	cin => \controlador|Add0~27\,
	combout => \controlador|Add0~28_combout\,
	cout => \controlador|Add0~29\);

-- Location: FF_X31_Y29_N11
\controlador|cnt_5ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~28_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(14));

-- Location: LCCOMB_X31_Y29_N12
\controlador|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~30_combout\ = (\controlador|cnt_5ms\(15) & (!\controlador|Add0~29\)) # (!\controlador|cnt_5ms\(15) & ((\controlador|Add0~29\) # (GND)))
-- \controlador|Add0~31\ = CARRY((!\controlador|Add0~29\) # (!\controlador|cnt_5ms\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(15),
	datad => VCC,
	cin => \controlador|Add0~29\,
	combout => \controlador|Add0~30_combout\,
	cout => \controlador|Add0~31\);

-- Location: FF_X31_Y29_N13
\controlador|cnt_5ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~30_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(15));

-- Location: LCCOMB_X31_Y29_N14
\controlador|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~32_combout\ = (\controlador|cnt_5ms\(16) & (\controlador|Add0~31\ $ (GND))) # (!\controlador|cnt_5ms\(16) & (!\controlador|Add0~31\ & VCC))
-- \controlador|Add0~33\ = CARRY((\controlador|cnt_5ms\(16) & !\controlador|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(16),
	datad => VCC,
	cin => \controlador|Add0~31\,
	combout => \controlador|Add0~32_combout\,
	cout => \controlador|Add0~33\);

-- Location: FF_X31_Y29_N15
\controlador|cnt_5ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~32_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(16));

-- Location: LCCOMB_X31_Y29_N16
\controlador|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~34_combout\ = \controlador|Add0~33\ $ (\controlador|cnt_5ms\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controlador|cnt_5ms\(17),
	cin => \controlador|Add0~33\,
	combout => \controlador|Add0~34_combout\);

-- Location: FF_X31_Y29_N17
\controlador|cnt_5ms[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~34_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|estado.config~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(17));

-- Location: LCCOMB_X32_Y29_N4
\controlador|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~0_combout\ = (!\controlador|cnt_5ms\(14) & (!\controlador|cnt_5ms\(15) & (!\controlador|cnt_5ms\(17) & !\controlador|cnt_5ms\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(14),
	datab => \controlador|cnt_5ms\(15),
	datac => \controlador|cnt_5ms\(17),
	datad => \controlador|cnt_5ms\(16),
	combout => \controlador|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y30_N8
\controlador|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~3_combout\ = (\controlador|cnt_5ms\(5) & (\controlador|cnt_5ms\(2) & (\controlador|cnt_5ms\(4) & !\controlador|cnt_5ms\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(5),
	datab => \controlador|cnt_5ms\(2),
	datac => \controlador|cnt_5ms\(4),
	datad => \controlador|cnt_5ms\(3),
	combout => \controlador|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y29_N30
\controlador|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~2_combout\ = (\controlador|cnt_5ms\(6) & (!\controlador|cnt_5ms\(9) & (\controlador|cnt_5ms\(7) & \controlador|cnt_5ms\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(6),
	datab => \controlador|cnt_5ms\(9),
	datac => \controlador|cnt_5ms\(7),
	datad => \controlador|cnt_5ms\(8),
	combout => \controlador|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y29_N20
\controlador|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~1_combout\ = (!\controlador|cnt_5ms\(12) & (!\controlador|cnt_5ms\(13) & (!\controlador|cnt_5ms\(11) & !\controlador|cnt_5ms\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(12),
	datab => \controlador|cnt_5ms\(13),
	datac => \controlador|cnt_5ms\(11),
	datad => \controlador|cnt_5ms\(10),
	combout => \controlador|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y29_N24
\controlador|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~4_combout\ = (\controlador|Equal0~0_combout\ & (\controlador|Equal0~3_combout\ & (\controlador|Equal0~2_combout\ & \controlador|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Equal0~0_combout\,
	datab => \controlador|Equal0~3_combout\,
	datac => \controlador|Equal0~2_combout\,
	datad => \controlador|Equal0~1_combout\,
	combout => \controlador|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y29_N18
\controlador|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~5_combout\ = (\controlador|Equal0~4_combout\ & (!\controlador|cnt_5ms\(1) & \controlador|cnt_5ms\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Equal0~4_combout\,
	datac => \controlador|cnt_5ms\(1),
	datad => \controlador|cnt_5ms\(0),
	combout => \controlador|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y29_N6
\controlador|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~0_combout\ = \controlador|cnt_320ms\(0) $ (GND)
-- \controlador|Add1~1\ = CARRY(!\controlador|cnt_320ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_320ms\(0),
	datad => VCC,
	combout => \controlador|Add1~0_combout\,
	cout => \controlador|Add1~1\);

-- Location: LCCOMB_X31_Y29_N22
\controlador|cnt_320ms[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms[6]~7_combout\ = (\controlador|estado.offset~q\ & (\controlador|Equal0~4_combout\ & (!\controlador|cnt_5ms\(1) & \controlador|cnt_5ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado.offset~q\,
	datab => \controlador|Equal0~4_combout\,
	datac => \controlador|cnt_5ms\(1),
	datad => \controlador|cnt_5ms\(0),
	combout => \controlador|cnt_320ms[6]~7_combout\);

-- Location: LCCOMB_X32_Y29_N20
\controlador|cnt_320ms~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~8_combout\ = (\controlador|ena_320ms~combout\ & ((\controlador|cnt_320ms[6]~7_combout\ & (!\controlador|Add1~0_combout\)) # (!\controlador|cnt_320ms[6]~7_combout\ & ((\controlador|cnt_320ms\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add1~0_combout\,
	datab => \controlador|ena_320ms~combout\,
	datac => \controlador|cnt_320ms\(0),
	datad => \controlador|cnt_320ms[6]~7_combout\,
	combout => \controlador|cnt_320ms~8_combout\);

-- Location: FF_X32_Y29_N21
\controlador|cnt_320ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~8_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(0));

-- Location: LCCOMB_X32_Y29_N8
\controlador|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~2_combout\ = (\controlador|cnt_320ms\(1) & (!\controlador|Add1~1\)) # (!\controlador|cnt_320ms\(1) & ((\controlador|Add1~1\) # (GND)))
-- \controlador|Add1~3\ = CARRY((!\controlador|Add1~1\) # (!\controlador|cnt_320ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_320ms\(1),
	datad => VCC,
	cin => \controlador|Add1~1\,
	combout => \controlador|Add1~2_combout\,
	cout => \controlador|Add1~3\);

-- Location: LCCOMB_X32_Y29_N30
\controlador|cnt_320ms~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~6_combout\ = (\controlador|Add1~2_combout\ & \controlador|ena_320ms~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador|Add1~2_combout\,
	datad => \controlador|ena_320ms~combout\,
	combout => \controlador|cnt_320ms~6_combout\);

-- Location: LCCOMB_X32_Y29_N26
\controlador|cnt_320ms[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms[1]~2_combout\ = (\controlador|Equal0~5_combout\ & ((\controlador|cnt_320ms\(6)) # (\controlador|estado.offset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_320ms\(6),
	datab => \controlador|Equal0~5_combout\,
	datad => \controlador|estado.offset~q\,
	combout => \controlador|cnt_320ms[1]~2_combout\);

-- Location: FF_X32_Y29_N31
\controlador|cnt_320ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~6_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|cnt_320ms[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(1));

-- Location: LCCOMB_X32_Y29_N10
\controlador|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~4_combout\ = (\controlador|cnt_320ms\(2) & (\controlador|Add1~3\ $ (GND))) # (!\controlador|cnt_320ms\(2) & (!\controlador|Add1~3\ & VCC))
-- \controlador|Add1~5\ = CARRY((\controlador|cnt_320ms\(2) & !\controlador|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_320ms\(2),
	datad => VCC,
	cin => \controlador|Add1~3\,
	combout => \controlador|Add1~4_combout\,
	cout => \controlador|Add1~5\);

-- Location: LCCOMB_X32_Y29_N28
\controlador|cnt_320ms~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~5_combout\ = (\controlador|ena_320ms~combout\ & \controlador|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|ena_320ms~combout\,
	datad => \controlador|Add1~4_combout\,
	combout => \controlador|cnt_320ms~5_combout\);

-- Location: FF_X32_Y29_N29
\controlador|cnt_320ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~5_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|cnt_320ms[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(2));

-- Location: LCCOMB_X32_Y29_N12
\controlador|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~6_combout\ = (\controlador|cnt_320ms\(3) & (!\controlador|Add1~5\)) # (!\controlador|cnt_320ms\(3) & ((\controlador|Add1~5\) # (GND)))
-- \controlador|Add1~7\ = CARRY((!\controlador|Add1~5\) # (!\controlador|cnt_320ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_320ms\(3),
	datad => VCC,
	cin => \controlador|Add1~5\,
	combout => \controlador|Add1~6_combout\,
	cout => \controlador|Add1~7\);

-- Location: LCCOMB_X32_Y29_N22
\controlador|cnt_320ms~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~4_combout\ = (\controlador|ena_320ms~combout\ & \controlador|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|ena_320ms~combout\,
	datac => \controlador|Add1~6_combout\,
	combout => \controlador|cnt_320ms~4_combout\);

-- Location: FF_X32_Y29_N23
\controlador|cnt_320ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~4_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|cnt_320ms[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(3));

-- Location: LCCOMB_X32_Y29_N14
\controlador|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~8_combout\ = (\controlador|cnt_320ms\(4) & (\controlador|Add1~7\ $ (GND))) # (!\controlador|cnt_320ms\(4) & (!\controlador|Add1~7\ & VCC))
-- \controlador|Add1~9\ = CARRY((\controlador|cnt_320ms\(4) & !\controlador|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_320ms\(4),
	datad => VCC,
	cin => \controlador|Add1~7\,
	combout => \controlador|Add1~8_combout\,
	cout => \controlador|Add1~9\);

-- Location: LCCOMB_X32_Y29_N0
\controlador|cnt_320ms~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~3_combout\ = (\controlador|Add1~8_combout\ & \controlador|ena_320ms~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador|Add1~8_combout\,
	datad => \controlador|ena_320ms~combout\,
	combout => \controlador|cnt_320ms~3_combout\);

-- Location: FF_X32_Y29_N1
\controlador|cnt_320ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~3_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|cnt_320ms[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(4));

-- Location: LCCOMB_X32_Y29_N16
\controlador|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~10_combout\ = (\controlador|cnt_320ms\(5) & (!\controlador|Add1~9\)) # (!\controlador|cnt_320ms\(5) & ((\controlador|Add1~9\) # (GND)))
-- \controlador|Add1~11\ = CARRY((!\controlador|Add1~9\) # (!\controlador|cnt_320ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_320ms\(5),
	datad => VCC,
	cin => \controlador|Add1~9\,
	combout => \controlador|Add1~10_combout\,
	cout => \controlador|Add1~11\);

-- Location: LCCOMB_X32_Y29_N24
\controlador|cnt_320ms~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~1_combout\ = (\controlador|ena_320ms~combout\ & \controlador|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|ena_320ms~combout\,
	datad => \controlador|Add1~10_combout\,
	combout => \controlador|cnt_320ms~1_combout\);

-- Location: FF_X32_Y29_N25
\controlador|cnt_320ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~1_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|cnt_320ms[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(5));

-- Location: LCCOMB_X32_Y29_N18
\controlador|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~12_combout\ = \controlador|cnt_320ms\(6) $ (!\controlador|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_320ms\(6),
	cin => \controlador|Add1~11\,
	combout => \controlador|Add1~12_combout\);

-- Location: LCCOMB_X32_Y29_N2
\controlador|cnt_320ms[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms[6]~0_combout\ = (\controlador|Equal0~5_combout\ & (\controlador|estado.offset~q\ & (!\controlador|cnt_320ms\(6) & \controlador|Add1~12_combout\))) # (!\controlador|Equal0~5_combout\ & (((\controlador|cnt_320ms\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado.offset~q\,
	datab => \controlador|Equal0~5_combout\,
	datac => \controlador|cnt_320ms\(6),
	datad => \controlador|Add1~12_combout\,
	combout => \controlador|cnt_320ms[6]~0_combout\);

-- Location: FF_X32_Y29_N3
\controlador|cnt_320ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms[6]~0_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(6));

-- Location: LCCOMB_X31_Y29_N28
\controlador|ena_320ms\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|ena_320ms~combout\ = (((\controlador|cnt_5ms\(1)) # (!\controlador|cnt_5ms\(0))) # (!\controlador|Equal0~4_combout\)) # (!\controlador|cnt_320ms\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_320ms\(6),
	datab => \controlador|Equal0~4_combout\,
	datac => \controlador|cnt_5ms\(1),
	datad => \controlador|cnt_5ms\(0),
	combout => \controlador|ena_320ms~combout\);

-- Location: LCCOMB_X24_Y29_N22
\controlador|estado.config~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|estado.config~0_combout\ = (\controlador|Selector1~0_combout\) # ((\controlador|estado.config~q\) # ((!\controlador|ena_320ms~combout\ & \controlador|estado.offset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Selector1~0_combout\,
	datab => \controlador|ena_320ms~combout\,
	datac => \controlador|estado.config~q\,
	datad => \controlador|estado.offset~q\,
	combout => \controlador|estado.config~0_combout\);

-- Location: FF_X24_Y29_N23
\controlador|estado.config\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|estado.config~0_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|estado.config~q\);

-- Location: LCCOMB_X24_Y29_N4
\controlador|ini_tx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|ini_tx~0_combout\ = (\master|LessThan3~0_combout\ & ((\controlador|Equal0~5_combout\) # (!\controlador|estado.config~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado.config~q\,
	datac => \master|LessThan3~0_combout\,
	datad => \controlador|Equal0~5_combout\,
	combout => \controlador|ini_tx~0_combout\);

-- Location: FF_X24_Y29_N5
\controlador|ini_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|ini_tx~0_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|ini_tx~q\);

-- Location: FF_X22_Y29_N27
\master|reg_nWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \controlador|dato\(15),
	clrn => \nRst~input_o\,
	sload => VCC,
	ena => \controlador|ini_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_nWR~q\);

-- Location: LCCOMB_X21_Y29_N30
\master|fin_tx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|fin_tx~0_combout\ = (\master|cnt_byte\(2) & (\master|reg_nWR~q\ & (!\master|cnt_byte\(0) & !\master|cnt_byte\(1)))) # (!\master|cnt_byte\(2) & (!\master|reg_nWR~q\ & (\master|cnt_byte\(0) & \master|cnt_byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_byte\(2),
	datab => \master|reg_nWR~q\,
	datac => \master|cnt_byte\(0),
	datad => \master|cnt_byte\(1),
	combout => \master|fin_tx~0_combout\);

-- Location: LCCOMB_X24_Y29_N20
\master|cnt_div[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[3]~17_combout\ = (\master|cnt_div[0]~11_combout\ & (!\master|LessThan3~0_combout\ & !\controlador|ini_tx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|cnt_div[0]~11_combout\,
	datac => \master|LessThan3~0_combout\,
	datad => \controlador|ini_tx~q\,
	combout => \master|cnt_div[3]~17_combout\);

-- Location: LCCOMB_X20_Y29_N10
\master|cnt_div[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[3]~10_combout\ = \master|cnt_div\(3) $ (((\master|cnt_div\(0) & (\master|cnt_div\(1) & \master|cnt_div\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(0),
	datab => \master|cnt_div\(1),
	datac => \master|cnt_div\(2),
	datad => \master|cnt_div\(3),
	combout => \master|cnt_div[3]~10_combout\);

-- Location: LCCOMB_X21_Y29_N6
\master|cnt_div[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[3]~12_combout\ = (\master|cnt_div[3]~17_combout\ & (\master|cnt_div[3]~10_combout\ & ((\master|ena_bit~combout\) # (!\master|fin_tx~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|fin_tx~0_combout\,
	datab => \master|cnt_div[3]~17_combout\,
	datac => \master|ena_bit~combout\,
	datad => \master|cnt_div[3]~10_combout\,
	combout => \master|cnt_div[3]~12_combout\);

-- Location: FF_X21_Y29_N21
\master|cnt_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \master|cnt_div[3]~12_combout\,
	clrn => \nRst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_div\(3));

-- Location: LCCOMB_X21_Y29_N20
\master|cnt_div[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[0]~11_combout\ = ((!\master|cnt_div\(2) & ((!\master|cnt_div\(1)) # (!\master|cnt_div\(0))))) # (!\master|cnt_div\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(2),
	datab => \master|cnt_div\(0),
	datac => \master|cnt_div\(3),
	datad => \master|cnt_div\(1),
	combout => \master|cnt_div[0]~11_combout\);

-- Location: LCCOMB_X22_Y29_N26
\master|cnt_div[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[2]~18_combout\ = (\master|cnt_div[0]~11_combout\ & ((\controlador|ini_tx~q\) # (!\master|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|LessThan3~0_combout\,
	datab => \controlador|ini_tx~q\,
	datad => \master|cnt_div[0]~11_combout\,
	combout => \master|cnt_div[2]~18_combout\);

-- Location: LCCOMB_X20_Y29_N12
\master|cnt_div[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[2]~13_combout\ = (!\controlador|ini_tx~q\ & (\master|cnt_div\(2) $ (((\master|cnt_div\(1) & \master|cnt_div\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|ini_tx~q\,
	datab => \master|cnt_div\(1),
	datac => \master|cnt_div\(2),
	datad => \master|cnt_div\(0),
	combout => \master|cnt_div[2]~13_combout\);

-- Location: LCCOMB_X21_Y29_N18
\master|cnt_div[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[2]~14_combout\ = (\master|cnt_div[2]~18_combout\ & (\master|cnt_div[2]~13_combout\ & ((\master|ena_bit~combout\) # (!\master|fin_tx~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|fin_tx~0_combout\,
	datab => \master|cnt_div[2]~18_combout\,
	datac => \master|ena_bit~combout\,
	datad => \master|cnt_div[2]~13_combout\,
	combout => \master|cnt_div[2]~14_combout\);

-- Location: FF_X21_Y29_N13
\master|cnt_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \master|cnt_div[2]~14_combout\,
	clrn => \nRst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_div\(2));

-- Location: LCCOMB_X20_Y29_N24
\master|cnt_div[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[1]~8_combout\ = (\master|cnt_div\(0) & (((\master|cnt_div\(3))) # (!\master|cnt_div\(1)))) # (!\master|cnt_div\(0) & ((\master|cnt_div\(1)) # ((\master|cnt_div\(2) & \master|cnt_div\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(0),
	datab => \master|cnt_div\(1),
	datac => \master|cnt_div\(2),
	datad => \master|cnt_div\(3),
	combout => \master|cnt_div[1]~8_combout\);

-- Location: LCCOMB_X20_Y29_N14
\master|cnt_div[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[1]~16_combout\ = (!\master|LessThan3~0_combout\ & !\controlador|ini_tx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|LessThan3~0_combout\,
	datad => \controlador|ini_tx~q\,
	combout => \master|cnt_div[1]~16_combout\);

-- Location: LCCOMB_X21_Y29_N0
\master|cnt_div[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[1]~9_combout\ = (\master|cnt_div[1]~8_combout\ & (\master|cnt_div[1]~16_combout\ & ((\master|ena_bit~combout\) # (!\master|fin_tx~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|fin_tx~0_combout\,
	datab => \master|ena_bit~combout\,
	datac => \master|cnt_div[1]~8_combout\,
	datad => \master|cnt_div[1]~16_combout\,
	combout => \master|cnt_div[1]~9_combout\);

-- Location: FF_X21_Y29_N25
\master|cnt_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \master|cnt_div[1]~9_combout\,
	clrn => \nRst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_div\(1));

-- Location: LCCOMB_X20_Y29_N30
\master|SPC_up\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|SPC_up~combout\ = (\master|cnt_div\(0) & (\master|cnt_div\(1) & (\master|cnt_div\(2) & !\master|cnt_div\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(0),
	datab => \master|cnt_div\(1),
	datac => \master|cnt_div\(2),
	datad => \master|cnt_div\(3),
	combout => \master|SPC_up~combout\);

-- Location: LCCOMB_X20_Y29_N16
\master|cnt_bit[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_bit[0]~0_combout\ = \master|SPC_up~combout\ $ (\master|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|SPC_up~combout\,
	datac => \master|cnt_bit\(0),
	combout => \master|cnt_bit[0]~0_combout\);

-- Location: FF_X20_Y29_N17
\master|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_bit[0]~0_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_bit\(0));

-- Location: LCCOMB_X20_Y29_N8
\master|cnt_bit[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_bit[1]~2_combout\ = \master|cnt_bit\(1) $ (((\master|SPC_up~combout\ & \master|cnt_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|SPC_up~combout\,
	datac => \master|cnt_bit\(1),
	datad => \master|cnt_bit\(0),
	combout => \master|cnt_bit[1]~2_combout\);

-- Location: FF_X20_Y29_N9
\master|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_bit[1]~2_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_bit\(1));

-- Location: LCCOMB_X20_Y29_N18
\master|cnt_bit[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_bit[2]~1_combout\ = \master|cnt_bit\(2) $ (((\master|SPC_up~combout\ & (\master|cnt_bit\(1) & \master|cnt_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|SPC_up~combout\,
	datab => \master|cnt_bit\(1),
	datac => \master|cnt_bit\(2),
	datad => \master|cnt_bit\(0),
	combout => \master|cnt_bit[2]~1_combout\);

-- Location: FF_X20_Y29_N19
\master|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_bit[2]~1_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_bit\(2));

-- Location: LCCOMB_X20_Y29_N2
\master|ena_bit\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|ena_bit~combout\ = (((!\master|cnt_bit\(0)) # (!\master|cnt_bit\(1))) # (!\master|cnt_bit\(2))) # (!\master|SPC_up~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|SPC_up~combout\,
	datab => \master|cnt_bit\(2),
	datac => \master|cnt_bit\(1),
	datad => \master|cnt_bit\(0),
	combout => \master|ena_bit~combout\);

-- Location: LCCOMB_X24_Y29_N10
\master|cnt_div[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[0]~19_combout\ = (\controlador|ini_tx~q\) # ((!\master|LessThan3~0_combout\ & (\master|cnt_div[0]~11_combout\ & !\master|cnt_div\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|LessThan3~0_combout\,
	datab => \master|cnt_div[0]~11_combout\,
	datac => \master|cnt_div\(0),
	datad => \controlador|ini_tx~q\,
	combout => \master|cnt_div[0]~19_combout\);

-- Location: LCCOMB_X20_Y29_N22
\master|cnt_div[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[0]~15_combout\ = (\master|cnt_div[0]~19_combout\ & ((\master|ena_bit~combout\) # ((\controlador|ini_tx~q\) # (!\master|fin_tx~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|ena_bit~combout\,
	datab => \master|fin_tx~0_combout\,
	datac => \master|cnt_div[0]~19_combout\,
	datad => \controlador|ini_tx~q\,
	combout => \master|cnt_div[0]~15_combout\);

-- Location: FF_X21_Y29_N23
\master|cnt_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \master|cnt_div[0]~15_combout\,
	clrn => \nRst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_div\(0));

-- Location: LCCOMB_X20_Y29_N26
\master|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|LessThan3~0_combout\ = (!\master|cnt_div\(0) & (!\master|cnt_div\(1) & (!\master|cnt_div\(2) & !\master|cnt_div\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(0),
	datab => \master|cnt_div\(1),
	datac => \master|cnt_div\(2),
	datad => \master|cnt_div\(3),
	combout => \master|LessThan3~0_combout\);

-- Location: LCCOMB_X24_Y29_N2
\controlador|process_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|process_2~0_combout\ = (\controlador|cnt_reg\(1)) # (!\master|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|LessThan3~0_combout\,
	datad => \controlador|cnt_reg\(1),
	combout => \controlador|process_2~0_combout\);

-- Location: LCCOMB_X23_Y29_N8
\controlador|dato[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[15]~feeder_combout\ = \controlador|process_2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador|process_2~0_combout\,
	combout => \controlador|dato[15]~feeder_combout\);

-- Location: LCCOMB_X24_Y29_N26
\controlador|dato[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[15]~0_combout\ = (!\controlador|estado.config~q\ & ((\controlador|cnt_reg\(1) & (!\controlador|cnt_reg\(0))) # (!\controlador|cnt_reg\(1) & ((\master|LessThan3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado.config~q\,
	datab => \controlador|cnt_reg\(0),
	datac => \master|LessThan3~0_combout\,
	datad => \controlador|cnt_reg\(1),
	combout => \controlador|dato[15]~0_combout\);

-- Location: FF_X23_Y29_N9
\controlador|dato[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[15]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(15));

-- Location: LCCOMB_X23_Y29_N6
\controlador|dato[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controlador|dato[14]~feeder_combout\);

-- Location: FF_X23_Y29_N7
\controlador|dato[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[14]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(14));

-- Location: LCCOMB_X23_Y29_N20
\controlador|dato[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controlador|dato[12]~feeder_combout\);

-- Location: FF_X23_Y29_N21
\controlador|dato[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[12]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(12));

-- Location: LCCOMB_X24_Y29_N28
\controlador|process_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|process_2~1_combout\ = (\controlador|cnt_reg\(1)) # ((\controlador|cnt_reg\(0)) # (!\master|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_reg\(1),
	datac => \master|LessThan3~0_combout\,
	datad => \controlador|cnt_reg\(0),
	combout => \controlador|process_2~1_combout\);

-- Location: LCCOMB_X23_Y29_N28
\controlador|dato[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[9]~3_combout\ = !\controlador|process_2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador|process_2~1_combout\,
	combout => \controlador|dato[9]~3_combout\);

-- Location: FF_X23_Y29_N29
\controlador|dato[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[9]~3_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(9));

-- Location: LCCOMB_X23_Y29_N30
\controlador|dato[8]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[8]~4_combout\ = !\controlador|process_2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador|process_2~1_combout\,
	combout => \controlador|dato[8]~4_combout\);

-- Location: FF_X23_Y29_N31
\controlador|dato[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[8]~4_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(8));

-- Location: LCCOMB_X24_Y29_N18
\controlador|process_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|process_2~2_combout\ = (!\controlador|cnt_reg\(1) & (\master|LessThan3~0_combout\ & \controlador|cnt_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_reg\(1),
	datac => \master|LessThan3~0_combout\,
	datad => \controlador|cnt_reg\(0),
	combout => \controlador|process_2~2_combout\);

-- Location: LCCOMB_X23_Y29_N16
\controlador|dato[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[7]~5_combout\ = !\controlador|process_2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador|process_2~2_combout\,
	combout => \controlador|dato[7]~5_combout\);

-- Location: FF_X23_Y29_N17
\controlador|dato[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[7]~5_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(7));

-- Location: LCCOMB_X23_Y29_N10
\controlador|dato[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[6]~feeder_combout\ = \controlador|process_2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador|process_2~1_combout\,
	combout => \controlador|dato[6]~feeder_combout\);

-- Location: FF_X23_Y29_N11
\controlador|dato[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[6]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(6));

-- Location: LCCOMB_X23_Y29_N12
\controlador|dato[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[5]~feeder_combout\ = \controlador|process_2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador|process_2~1_combout\,
	combout => \controlador|dato[5]~feeder_combout\);

-- Location: FF_X23_Y29_N13
\controlador|dato[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[5]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(5));

-- Location: LCCOMB_X23_Y29_N14
\controlador|dato[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[4]~feeder_combout\ = \controlador|process_2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador|process_2~0_combout\,
	combout => \controlador|dato[4]~feeder_combout\);

-- Location: FF_X23_Y29_N15
\controlador|dato[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[4]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(4));

-- Location: LCCOMB_X23_Y29_N24
\controlador|dato[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[1]~feeder_combout\ = \controlador|process_2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador|process_2~2_combout\,
	combout => \controlador|dato[1]~feeder_combout\);

-- Location: FF_X23_Y29_N25
\controlador|dato[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[1]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(1));

-- Location: LCCOMB_X21_Y29_N16
\master|process_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|process_4~0_combout\ = (!\master|cnt_byte\(0) & (!\master|cnt_byte\(2) & !\master|cnt_byte\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|cnt_byte\(0),
	datac => \master|cnt_byte\(2),
	datad => \master|cnt_byte\(1),
	combout => \master|process_4~0_combout\);

-- Location: LCCOMB_X20_Y29_N6
\master|process_4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|process_4~1_combout\ = (\master|process_4~0_combout\ & (!\master|cnt_bit\(2) & (!\master|cnt_bit\(1) & !\master|cnt_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|process_4~0_combout\,
	datab => \master|cnt_bit\(2),
	datac => \master|cnt_bit\(1),
	datad => \master|cnt_bit\(0),
	combout => \master|process_4~1_combout\);

-- Location: LCCOMB_X21_Y29_N26
\master|ena_SDI~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|ena_SDI~2_combout\ = (!\master|cnt_byte\(1) & !\master|cnt_byte\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|cnt_byte\(1),
	datad => \master|cnt_byte\(2),
	combout => \master|ena_SDI~2_combout\);

-- Location: LCCOMB_X21_Y29_N28
\master|ena_SDI~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|ena_SDI~4_combout\ = (!\master|cnt_div\(2) & (\master|cnt_div\(1) & (!\master|cnt_div\(0) & !\master|cnt_div\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(2),
	datab => \master|cnt_div\(1),
	datac => \master|cnt_div\(0),
	datad => \master|cnt_div\(3),
	combout => \master|ena_SDI~4_combout\);

-- Location: LCCOMB_X21_Y29_N14
\master|ena_SDI~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|ena_SDI~3_combout\ = (\master|ena_SDI~4_combout\ & (((\master|ena_SDI~2_combout\ & !\master|cnt_byte\(0))) # (!\master|reg_nWR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|ena_SDI~2_combout\,
	datab => \master|reg_nWR~q\,
	datac => \master|cnt_byte\(0),
	datad => \master|ena_SDI~4_combout\,
	combout => \master|ena_SDI~3_combout\);

-- Location: LCCOMB_X20_Y29_N28
\master|reg_SDI~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~19_combout\ = (\master|reg_SDI\(0) & ((\master|process_4~1_combout\) # (!\master|ena_SDI~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|process_4~1_combout\,
	datac => \master|ena_SDI~3_combout\,
	datad => \master|reg_SDI\(0),
	combout => \master|reg_SDI~19_combout\);

-- Location: LCCOMB_X20_Y29_N20
\master|reg_SDI[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI[0]~feeder_combout\ = \master|reg_SDI~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDI~19_combout\,
	combout => \master|reg_SDI[0]~feeder_combout\);

-- Location: LCCOMB_X23_Y29_N2
\controlador|dato[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[0]~feeder_combout\ = \controlador|process_2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador|process_2~2_combout\,
	combout => \controlador|dato[0]~feeder_combout\);

-- Location: FF_X23_Y29_N3
\controlador|dato[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[0]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(0));

-- Location: FF_X20_Y29_N21
\master|reg_SDI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI[0]~feeder_combout\,
	asdata => \controlador|dato\(0),
	clrn => \nRst~input_o\,
	sload => \controlador|ini_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(0));

-- Location: LCCOMB_X22_Y29_N0
\master|reg_SDI~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~18_combout\ = (\controlador|ini_tx~q\ & (\controlador|dato\(1))) # (!\controlador|ini_tx~q\ & ((\master|reg_SDI\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|dato\(1),
	datac => \controlador|ini_tx~q\,
	datad => \master|reg_SDI\(0),
	combout => \master|reg_SDI~18_combout\);

-- Location: LCCOMB_X20_Y29_N0
\master|reg_SDI[12]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI[12]~2_combout\ = (\master|cnt_bit\(2)) # ((\master|cnt_bit\(1)) # (\master|cnt_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|cnt_bit\(2),
	datac => \master|cnt_bit\(1),
	datad => \master|cnt_bit\(0),
	combout => \master|reg_SDI[12]~2_combout\);

-- Location: LCCOMB_X21_Y29_N24
\master|reg_SDI[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI[12]~3_combout\ = (\master|process_4~0_combout\ & (!\master|reg_SDI[12]~2_combout\)) # (!\master|process_4~0_combout\ & ((\master|reg_nWR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|reg_SDI[12]~2_combout\,
	datab => \master|process_4~0_combout\,
	datad => \master|reg_nWR~q\,
	combout => \master|reg_SDI[12]~3_combout\);

-- Location: LCCOMB_X21_Y29_N12
\master|reg_SDI[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI[12]~1_combout\ = (\master|cnt_div\(3)) # ((\master|cnt_div\(2)) # (\master|cnt_div\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(3),
	datac => \master|cnt_div\(2),
	datad => \master|cnt_div\(0),
	combout => \master|reg_SDI[12]~1_combout\);

-- Location: LCCOMB_X22_Y29_N20
\master|reg_SDI[12]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI[12]~4_combout\ = (\controlador|ini_tx~q\) # ((!\master|reg_SDI[12]~3_combout\ & (!\master|LessThan3~0_combout\ & !\master|reg_SDI[12]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|reg_SDI[12]~3_combout\,
	datab => \master|LessThan3~0_combout\,
	datac => \controlador|ini_tx~q\,
	datad => \master|reg_SDI[12]~1_combout\,
	combout => \master|reg_SDI[12]~4_combout\);

-- Location: FF_X22_Y29_N1
\master|reg_SDI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~18_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(1));

-- Location: LCCOMB_X22_Y29_N22
\master|reg_SDI~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~17_combout\ = (!\controlador|ini_tx~q\ & \master|reg_SDI\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador|ini_tx~q\,
	datad => \master|reg_SDI\(1),
	combout => \master|reg_SDI~17_combout\);

-- Location: FF_X22_Y29_N23
\master|reg_SDI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~17_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(2));

-- Location: LCCOMB_X22_Y29_N16
\master|reg_SDI~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~16_combout\ = (\master|reg_SDI\(2) & !\controlador|ini_tx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|reg_SDI\(2),
	datac => \controlador|ini_tx~q\,
	combout => \master|reg_SDI~16_combout\);

-- Location: FF_X22_Y29_N17
\master|reg_SDI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~16_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(3));

-- Location: LCCOMB_X22_Y29_N12
\master|reg_SDI~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~15_combout\ = (\controlador|ini_tx~q\ & (\controlador|dato\(4))) # (!\controlador|ini_tx~q\ & ((\master|reg_SDI\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|dato\(4),
	datac => \controlador|ini_tx~q\,
	datad => \master|reg_SDI\(3),
	combout => \master|reg_SDI~15_combout\);

-- Location: FF_X22_Y29_N13
\master|reg_SDI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~15_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(4));

-- Location: LCCOMB_X22_Y29_N30
\master|reg_SDI~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~14_combout\ = (\controlador|ini_tx~q\ & (\controlador|dato\(5))) # (!\controlador|ini_tx~q\ & ((\master|reg_SDI\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|dato\(5),
	datac => \controlador|ini_tx~q\,
	datad => \master|reg_SDI\(4),
	combout => \master|reg_SDI~14_combout\);

-- Location: FF_X22_Y29_N31
\master|reg_SDI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~14_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(5));

-- Location: LCCOMB_X22_Y29_N18
\master|reg_SDI~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~13_combout\ = (\controlador|ini_tx~q\ & (\controlador|dato\(6))) # (!\controlador|ini_tx~q\ & ((\master|reg_SDI\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|dato\(6),
	datac => \controlador|ini_tx~q\,
	datad => \master|reg_SDI\(5),
	combout => \master|reg_SDI~13_combout\);

-- Location: FF_X22_Y29_N19
\master|reg_SDI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~13_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(6));

-- Location: LCCOMB_X22_Y29_N28
\master|reg_SDI~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~12_combout\ = (\controlador|ini_tx~q\ & (\controlador|dato\(7))) # (!\controlador|ini_tx~q\ & ((\master|reg_SDI\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|dato\(7),
	datac => \controlador|ini_tx~q\,
	datad => \master|reg_SDI\(6),
	combout => \master|reg_SDI~12_combout\);

-- Location: FF_X22_Y29_N29
\master|reg_SDI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~12_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(7));

-- Location: LCCOMB_X22_Y29_N10
\master|reg_SDI~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~11_combout\ = (\controlador|ini_tx~q\ & (\controlador|dato\(8))) # (!\controlador|ini_tx~q\ & ((\master|reg_SDI\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|dato\(8),
	datac => \controlador|ini_tx~q\,
	datad => \master|reg_SDI\(7),
	combout => \master|reg_SDI~11_combout\);

-- Location: FF_X22_Y29_N11
\master|reg_SDI[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~11_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(8));

-- Location: LCCOMB_X22_Y29_N14
\master|reg_SDI~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~10_combout\ = (\controlador|ini_tx~q\ & (\controlador|dato\(9))) # (!\controlador|ini_tx~q\ & ((\master|reg_SDI\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|dato\(9),
	datac => \controlador|ini_tx~q\,
	datad => \master|reg_SDI\(8),
	combout => \master|reg_SDI~10_combout\);

-- Location: FF_X22_Y29_N15
\master|reg_SDI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~10_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(9));

-- Location: LCCOMB_X23_Y29_N26
\controlador|dato[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controlador|dato[10]~feeder_combout\);

-- Location: FF_X23_Y29_N27
\controlador|dato[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[10]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(10));

-- Location: LCCOMB_X23_Y29_N4
\master|reg_SDI~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~9_combout\ = (\controlador|ini_tx~q\ & ((\controlador|dato\(10)))) # (!\controlador|ini_tx~q\ & (\master|reg_SDI\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|reg_SDI\(9),
	datac => \controlador|dato\(10),
	datad => \controlador|ini_tx~q\,
	combout => \master|reg_SDI~9_combout\);

-- Location: FF_X23_Y29_N5
\master|reg_SDI[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~9_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(10));

-- Location: LCCOMB_X23_Y29_N18
\controlador|dato[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[11]~feeder_combout\ = \controlador|process_2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador|process_2~0_combout\,
	combout => \controlador|dato[11]~feeder_combout\);

-- Location: FF_X23_Y29_N19
\controlador|dato[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[11]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \controlador|dato[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(11));

-- Location: LCCOMB_X22_Y29_N6
\master|reg_SDI~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~8_combout\ = (\controlador|ini_tx~q\ & ((\controlador|dato\(11)))) # (!\controlador|ini_tx~q\ & (\master|reg_SDI\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|reg_SDI\(10),
	datab => \controlador|dato\(11),
	datac => \controlador|ini_tx~q\,
	combout => \master|reg_SDI~8_combout\);

-- Location: FF_X22_Y29_N7
\master|reg_SDI[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~8_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(11));

-- Location: LCCOMB_X22_Y29_N8
\master|reg_SDI~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~7_combout\ = (\controlador|ini_tx~q\ & (\controlador|dato\(12))) # (!\controlador|ini_tx~q\ & ((\master|reg_SDI\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|dato\(12),
	datac => \controlador|ini_tx~q\,
	datad => \master|reg_SDI\(11),
	combout => \master|reg_SDI~7_combout\);

-- Location: FF_X22_Y29_N9
\master|reg_SDI[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~7_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(12));

-- Location: LCCOMB_X22_Y29_N4
\master|reg_SDI~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~6_combout\ = (\master|reg_SDI\(12) & !\controlador|ini_tx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|reg_SDI\(12),
	datac => \controlador|ini_tx~q\,
	combout => \master|reg_SDI~6_combout\);

-- Location: FF_X22_Y29_N5
\master|reg_SDI[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~6_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(13));

-- Location: LCCOMB_X23_Y29_N22
\master|reg_SDI~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~5_combout\ = (\controlador|ini_tx~q\ & (\controlador|dato\(14))) # (!\controlador|ini_tx~q\ & ((\master|reg_SDI\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|dato\(14),
	datac => \master|reg_SDI\(13),
	datad => \controlador|ini_tx~q\,
	combout => \master|reg_SDI~5_combout\);

-- Location: FF_X23_Y29_N23
\master|reg_SDI[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDI~5_combout\,
	clrn => \nRst~input_o\,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(14));

-- Location: LCCOMB_X23_Y29_N0
\master|reg_SDI~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDI~0_combout\ = (\controlador|ini_tx~q\ & (\controlador|dato\(15))) # (!\controlador|ini_tx~q\ & ((\master|reg_SDI\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|dato\(15),
	datac => \master|reg_SDI\(14),
	datad => \controlador|ini_tx~q\,
	combout => \master|reg_SDI~0_combout\);

-- Location: FF_X22_Y29_N25
\master|reg_SDI[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \master|reg_SDI~0_combout\,
	clrn => \nRst~input_o\,
	sload => VCC,
	ena => \master|reg_SDI[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDI\(15));

-- Location: LCCOMB_X22_Y29_N24
\master|SDI\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|SDI~combout\ = (\master|ena_SDI~3_combout\ & ((\master|reg_SDI\(15)))) # (!\master|ena_SDI~3_combout\ & (\master|SDI~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|SDI~combout\,
	datac => \master|reg_SDI\(15),
	datad => \master|ena_SDI~3_combout\,
	combout => \master|SDI~combout\);

-- Location: LCCOMB_X20_Y29_N4
\master|SPC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|SPC~0_combout\ = (!\master|cnt_div\(3) & ((\master|cnt_div\(1) & ((!\master|cnt_div\(2)) # (!\master|cnt_div\(0)))) # (!\master|cnt_div\(1) & ((\master|cnt_div\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(0),
	datab => \master|cnt_div\(1),
	datac => \master|cnt_div\(2),
	datad => \master|cnt_div\(3),
	combout => \master|SPC~0_combout\);

-- Location: LCCOMB_X50_Y23_N30
\cuantificador|mux_disp[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|mux_disp[1]~1_combout\ = !\cuantificador|mux_disp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuantificador|mux_disp\(0),
	combout => \cuantificador|mux_disp[1]~1_combout\);

-- Location: LCCOMB_X49_Y24_N16
\cuantificador|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~0_combout\ = \cuantificador|cnt_div_1ms\(0) $ (VCC)
-- \cuantificador|Add0~1\ = CARRY(\cuantificador|cnt_div_1ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(0),
	datad => VCC,
	combout => \cuantificador|Add0~0_combout\,
	cout => \cuantificador|Add0~1\);

-- Location: FF_X49_Y24_N17
\cuantificador|cnt_div_1ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~0_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(0));

-- Location: LCCOMB_X49_Y24_N18
\cuantificador|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~2_combout\ = (\cuantificador|cnt_div_1ms\(1) & (!\cuantificador|Add0~1\)) # (!\cuantificador|cnt_div_1ms\(1) & ((\cuantificador|Add0~1\) # (GND)))
-- \cuantificador|Add0~3\ = CARRY((!\cuantificador|Add0~1\) # (!\cuantificador|cnt_div_1ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(1),
	datad => VCC,
	cin => \cuantificador|Add0~1\,
	combout => \cuantificador|Add0~2_combout\,
	cout => \cuantificador|Add0~3\);

-- Location: FF_X49_Y24_N19
\cuantificador|cnt_div_1ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~2_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(1));

-- Location: LCCOMB_X49_Y24_N20
\cuantificador|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~4_combout\ = (\cuantificador|cnt_div_1ms\(2) & (\cuantificador|Add0~3\ $ (GND))) # (!\cuantificador|cnt_div_1ms\(2) & (!\cuantificador|Add0~3\ & VCC))
-- \cuantificador|Add0~5\ = CARRY((\cuantificador|cnt_div_1ms\(2) & !\cuantificador|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(2),
	datad => VCC,
	cin => \cuantificador|Add0~3\,
	combout => \cuantificador|Add0~4_combout\,
	cout => \cuantificador|Add0~5\);

-- Location: FF_X49_Y24_N21
\cuantificador|cnt_div_1ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~4_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(2));

-- Location: LCCOMB_X49_Y24_N22
\cuantificador|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~6_combout\ = (\cuantificador|cnt_div_1ms\(3) & (!\cuantificador|Add0~5\)) # (!\cuantificador|cnt_div_1ms\(3) & ((\cuantificador|Add0~5\) # (GND)))
-- \cuantificador|Add0~7\ = CARRY((!\cuantificador|Add0~5\) # (!\cuantificador|cnt_div_1ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(3),
	datad => VCC,
	cin => \cuantificador|Add0~5\,
	combout => \cuantificador|Add0~6_combout\,
	cout => \cuantificador|Add0~7\);

-- Location: FF_X49_Y24_N23
\cuantificador|cnt_div_1ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~6_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(3));

-- Location: LCCOMB_X49_Y24_N24
\cuantificador|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~8_combout\ = (\cuantificador|cnt_div_1ms\(4) & (\cuantificador|Add0~7\ $ (GND))) # (!\cuantificador|cnt_div_1ms\(4) & (!\cuantificador|Add0~7\ & VCC))
-- \cuantificador|Add0~9\ = CARRY((\cuantificador|cnt_div_1ms\(4) & !\cuantificador|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(4),
	datad => VCC,
	cin => \cuantificador|Add0~7\,
	combout => \cuantificador|Add0~8_combout\,
	cout => \cuantificador|Add0~9\);

-- Location: FF_X49_Y24_N25
\cuantificador|cnt_div_1ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~8_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(4));

-- Location: LCCOMB_X49_Y24_N10
\cuantificador|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~4_combout\ = (\cuantificador|cnt_div_1ms\(1) & (\cuantificador|cnt_div_1ms\(4) & (\cuantificador|cnt_div_1ms\(3) & \cuantificador|cnt_div_1ms\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(1),
	datab => \cuantificador|cnt_div_1ms\(4),
	datac => \cuantificador|cnt_div_1ms\(3),
	datad => \cuantificador|cnt_div_1ms\(2),
	combout => \cuantificador|Equal0~4_combout\);

-- Location: LCCOMB_X49_Y24_N26
\cuantificador|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~10_combout\ = (\cuantificador|cnt_div_1ms\(5) & (!\cuantificador|Add0~9\)) # (!\cuantificador|cnt_div_1ms\(5) & ((\cuantificador|Add0~9\) # (GND)))
-- \cuantificador|Add0~11\ = CARRY((!\cuantificador|Add0~9\) # (!\cuantificador|cnt_div_1ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(5),
	datad => VCC,
	cin => \cuantificador|Add0~9\,
	combout => \cuantificador|Add0~10_combout\,
	cout => \cuantificador|Add0~11\);

-- Location: LCCOMB_X49_Y24_N6
\cuantificador|cnt_div_1ms~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|cnt_div_1ms~5_combout\ = (!\cuantificador|Equal0~5_combout\ & \cuantificador|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|Equal0~5_combout\,
	datac => \cuantificador|Add0~10_combout\,
	combout => \cuantificador|cnt_div_1ms~5_combout\);

-- Location: FF_X49_Y24_N7
\cuantificador|cnt_div_1ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~5_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(5));

-- Location: LCCOMB_X49_Y24_N28
\cuantificador|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~12_combout\ = (\cuantificador|cnt_div_1ms\(6) & (\cuantificador|Add0~11\ $ (GND))) # (!\cuantificador|cnt_div_1ms\(6) & (!\cuantificador|Add0~11\ & VCC))
-- \cuantificador|Add0~13\ = CARRY((\cuantificador|cnt_div_1ms\(6) & !\cuantificador|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(6),
	datad => VCC,
	cin => \cuantificador|Add0~11\,
	combout => \cuantificador|Add0~12_combout\,
	cout => \cuantificador|Add0~13\);

-- Location: FF_X49_Y24_N29
\cuantificador|cnt_div_1ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~12_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(6));

-- Location: LCCOMB_X49_Y24_N30
\cuantificador|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~14_combout\ = (\cuantificador|cnt_div_1ms\(7) & (!\cuantificador|Add0~13\)) # (!\cuantificador|cnt_div_1ms\(7) & ((\cuantificador|Add0~13\) # (GND)))
-- \cuantificador|Add0~15\ = CARRY((!\cuantificador|Add0~13\) # (!\cuantificador|cnt_div_1ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(7),
	datad => VCC,
	cin => \cuantificador|Add0~13\,
	combout => \cuantificador|Add0~14_combout\,
	cout => \cuantificador|Add0~15\);

-- Location: LCCOMB_X49_Y24_N12
\cuantificador|cnt_div_1ms~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|cnt_div_1ms~4_combout\ = (!\cuantificador|Equal0~5_combout\ & \cuantificador|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|Equal0~5_combout\,
	datac => \cuantificador|Add0~14_combout\,
	combout => \cuantificador|cnt_div_1ms~4_combout\);

-- Location: FF_X49_Y24_N13
\cuantificador|cnt_div_1ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~4_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(7));

-- Location: LCCOMB_X49_Y23_N0
\cuantificador|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~16_combout\ = (\cuantificador|cnt_div_1ms\(8) & (\cuantificador|Add0~15\ $ (GND))) # (!\cuantificador|cnt_div_1ms\(8) & (!\cuantificador|Add0~15\ & VCC))
-- \cuantificador|Add0~17\ = CARRY((\cuantificador|cnt_div_1ms\(8) & !\cuantificador|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(8),
	datad => VCC,
	cin => \cuantificador|Add0~15\,
	combout => \cuantificador|Add0~16_combout\,
	cout => \cuantificador|Add0~17\);

-- Location: FF_X49_Y23_N1
\cuantificador|cnt_div_1ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~16_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(8));

-- Location: LCCOMB_X49_Y23_N2
\cuantificador|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~18_combout\ = (\cuantificador|cnt_div_1ms\(9) & (!\cuantificador|Add0~17\)) # (!\cuantificador|cnt_div_1ms\(9) & ((\cuantificador|Add0~17\) # (GND)))
-- \cuantificador|Add0~19\ = CARRY((!\cuantificador|Add0~17\) # (!\cuantificador|cnt_div_1ms\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(9),
	datad => VCC,
	cin => \cuantificador|Add0~17\,
	combout => \cuantificador|Add0~18_combout\,
	cout => \cuantificador|Add0~19\);

-- Location: LCCOMB_X49_Y23_N20
\cuantificador|cnt_div_1ms~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|cnt_div_1ms~3_combout\ = (\cuantificador|Add0~18_combout\ & !\cuantificador|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|Add0~18_combout\,
	datad => \cuantificador|Equal0~5_combout\,
	combout => \cuantificador|cnt_div_1ms~3_combout\);

-- Location: FF_X49_Y23_N21
\cuantificador|cnt_div_1ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~3_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(9));

-- Location: LCCOMB_X49_Y23_N4
\cuantificador|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~20_combout\ = (\cuantificador|cnt_div_1ms\(10) & (\cuantificador|Add0~19\ $ (GND))) # (!\cuantificador|cnt_div_1ms\(10) & (!\cuantificador|Add0~19\ & VCC))
-- \cuantificador|Add0~21\ = CARRY((\cuantificador|cnt_div_1ms\(10) & !\cuantificador|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(10),
	datad => VCC,
	cin => \cuantificador|Add0~19\,
	combout => \cuantificador|Add0~20_combout\,
	cout => \cuantificador|Add0~21\);

-- Location: LCCOMB_X49_Y23_N18
\cuantificador|cnt_div_1ms~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|cnt_div_1ms~2_combout\ = (\cuantificador|Add0~20_combout\ & !\cuantificador|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuantificador|Add0~20_combout\,
	datad => \cuantificador|Equal0~5_combout\,
	combout => \cuantificador|cnt_div_1ms~2_combout\);

-- Location: FF_X49_Y23_N19
\cuantificador|cnt_div_1ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~2_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(10));

-- Location: LCCOMB_X49_Y23_N6
\cuantificador|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~22_combout\ = (\cuantificador|cnt_div_1ms\(11) & (!\cuantificador|Add0~21\)) # (!\cuantificador|cnt_div_1ms\(11) & ((\cuantificador|Add0~21\) # (GND)))
-- \cuantificador|Add0~23\ = CARRY((!\cuantificador|Add0~21\) # (!\cuantificador|cnt_div_1ms\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(11),
	datad => VCC,
	cin => \cuantificador|Add0~21\,
	combout => \cuantificador|Add0~22_combout\,
	cout => \cuantificador|Add0~23\);

-- Location: FF_X49_Y23_N7
\cuantificador|cnt_div_1ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~22_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(11));

-- Location: LCCOMB_X49_Y23_N8
\cuantificador|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~24_combout\ = (\cuantificador|cnt_div_1ms\(12) & (\cuantificador|Add0~23\ $ (GND))) # (!\cuantificador|cnt_div_1ms\(12) & (!\cuantificador|Add0~23\ & VCC))
-- \cuantificador|Add0~25\ = CARRY((\cuantificador|cnt_div_1ms\(12) & !\cuantificador|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(12),
	datad => VCC,
	cin => \cuantificador|Add0~23\,
	combout => \cuantificador|Add0~24_combout\,
	cout => \cuantificador|Add0~25\);

-- Location: FF_X49_Y23_N9
\cuantificador|cnt_div_1ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~24_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(12));

-- Location: LCCOMB_X49_Y23_N24
\cuantificador|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~1_combout\ = (!\cuantificador|cnt_div_1ms\(12) & !\cuantificador|cnt_div_1ms\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuantificador|cnt_div_1ms\(12),
	datad => \cuantificador|cnt_div_1ms\(11),
	combout => \cuantificador|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y23_N10
\cuantificador|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~26_combout\ = (\cuantificador|cnt_div_1ms\(13) & (!\cuantificador|Add0~25\)) # (!\cuantificador|cnt_div_1ms\(13) & ((\cuantificador|Add0~25\) # (GND)))
-- \cuantificador|Add0~27\ = CARRY((!\cuantificador|Add0~25\) # (!\cuantificador|cnt_div_1ms\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(13),
	datad => VCC,
	cin => \cuantificador|Add0~25\,
	combout => \cuantificador|Add0~26_combout\,
	cout => \cuantificador|Add0~27\);

-- Location: FF_X49_Y23_N11
\cuantificador|cnt_div_1ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~26_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(13));

-- Location: LCCOMB_X49_Y23_N12
\cuantificador|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~28_combout\ = (\cuantificador|cnt_div_1ms\(14) & (\cuantificador|Add0~27\ $ (GND))) # (!\cuantificador|cnt_div_1ms\(14) & (!\cuantificador|Add0~27\ & VCC))
-- \cuantificador|Add0~29\ = CARRY((\cuantificador|cnt_div_1ms\(14) & !\cuantificador|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(14),
	datad => VCC,
	cin => \cuantificador|Add0~27\,
	combout => \cuantificador|Add0~28_combout\,
	cout => \cuantificador|Add0~29\);

-- Location: FF_X49_Y23_N13
\cuantificador|cnt_div_1ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~28_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(14));

-- Location: LCCOMB_X49_Y23_N14
\cuantificador|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~30_combout\ = (\cuantificador|cnt_div_1ms\(15) & (!\cuantificador|Add0~29\)) # (!\cuantificador|cnt_div_1ms\(15) & ((\cuantificador|Add0~29\) # (GND)))
-- \cuantificador|Add0~31\ = CARRY((!\cuantificador|Add0~29\) # (!\cuantificador|cnt_div_1ms\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(15),
	datad => VCC,
	cin => \cuantificador|Add0~29\,
	combout => \cuantificador|Add0~30_combout\,
	cout => \cuantificador|Add0~31\);

-- Location: LCCOMB_X49_Y23_N28
\cuantificador|cnt_div_1ms~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|cnt_div_1ms~1_combout\ = (\cuantificador|Add0~30_combout\ & !\cuantificador|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuantificador|Add0~30_combout\,
	datad => \cuantificador|Equal0~5_combout\,
	combout => \cuantificador|cnt_div_1ms~1_combout\);

-- Location: FF_X49_Y23_N29
\cuantificador|cnt_div_1ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~1_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(15));

-- Location: LCCOMB_X49_Y23_N16
\cuantificador|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~32_combout\ = \cuantificador|cnt_div_1ms\(16) $ (!\cuantificador|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(16),
	cin => \cuantificador|Add0~31\,
	combout => \cuantificador|Add0~32_combout\);

-- Location: LCCOMB_X49_Y23_N26
\cuantificador|cnt_div_1ms~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|cnt_div_1ms~0_combout\ = (\cuantificador|Add0~32_combout\ & !\cuantificador|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|Add0~32_combout\,
	datad => \cuantificador|Equal0~5_combout\,
	combout => \cuantificador|cnt_div_1ms~0_combout\);

-- Location: FF_X49_Y23_N27
\cuantificador|cnt_div_1ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~0_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(16));

-- Location: LCCOMB_X49_Y23_N22
\cuantificador|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~0_combout\ = (!\cuantificador|cnt_div_1ms\(14) & (\cuantificador|cnt_div_1ms\(15) & (\cuantificador|cnt_div_1ms\(16) & !\cuantificador|cnt_div_1ms\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(14),
	datab => \cuantificador|cnt_div_1ms\(15),
	datac => \cuantificador|cnt_div_1ms\(16),
	datad => \cuantificador|cnt_div_1ms\(13),
	combout => \cuantificador|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y23_N30
\cuantificador|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~2_combout\ = (\cuantificador|Equal0~1_combout\ & (\cuantificador|cnt_div_1ms\(9) & (\cuantificador|Equal0~0_combout\ & \cuantificador|cnt_div_1ms\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|Equal0~1_combout\,
	datab => \cuantificador|cnt_div_1ms\(9),
	datac => \cuantificador|Equal0~0_combout\,
	datad => \cuantificador|cnt_div_1ms\(10),
	combout => \cuantificador|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y24_N4
\cuantificador|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~3_combout\ = (\cuantificador|cnt_div_1ms\(7) & (!\cuantificador|cnt_div_1ms\(6) & (!\cuantificador|cnt_div_1ms\(8) & !\cuantificador|cnt_div_1ms\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(7),
	datab => \cuantificador|cnt_div_1ms\(6),
	datac => \cuantificador|cnt_div_1ms\(8),
	datad => \cuantificador|cnt_div_1ms\(5),
	combout => \cuantificador|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y24_N8
\cuantificador|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~5_combout\ = (\cuantificador|Equal0~4_combout\ & (\cuantificador|Equal0~2_combout\ & (\cuantificador|Equal0~3_combout\ & \cuantificador|cnt_div_1ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|Equal0~4_combout\,
	datab => \cuantificador|Equal0~2_combout\,
	datac => \cuantificador|Equal0~3_combout\,
	datad => \cuantificador|cnt_div_1ms\(0),
	combout => \cuantificador|Equal0~5_combout\);

-- Location: FF_X50_Y23_N31
\cuantificador|mux_disp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|mux_disp[1]~1_combout\,
	clrn => \nRst~input_o\,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(1));

-- Location: FF_X52_Y23_N1
\cuantificador|mux_disp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuantificador|mux_disp\(1),
	clrn => \nRst~input_o\,
	sload => VCC,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(2));

-- Location: FF_X52_Y23_N5
\cuantificador|mux_disp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuantificador|mux_disp\(2),
	clrn => \nRst~input_o\,
	sload => VCC,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(3));

-- Location: FF_X52_Y23_N21
\cuantificador|mux_disp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuantificador|mux_disp\(3),
	clrn => \nRst~input_o\,
	sload => VCC,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(4));

-- Location: FF_X52_Y23_N23
\cuantificador|mux_disp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuantificador|mux_disp\(4),
	clrn => \nRst~input_o\,
	sload => VCC,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(5));

-- Location: FF_X52_Y23_N17
\cuantificador|mux_disp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuantificador|mux_disp\(5),
	clrn => \nRst~input_o\,
	sload => VCC,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(6));

-- Location: LCCOMB_X50_Y23_N16
\cuantificador|mux_disp[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|mux_disp[7]~feeder_combout\ = \cuantificador|mux_disp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cuantificador|mux_disp\(6),
	combout => \cuantificador|mux_disp[7]~feeder_combout\);

-- Location: FF_X50_Y23_N17
\cuantificador|mux_disp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|mux_disp[7]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(7));

-- Location: LCCOMB_X50_Y23_N8
\cuantificador|mux_disp[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|mux_disp[0]~0_combout\ = !\cuantificador|mux_disp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cuantificador|mux_disp\(7),
	combout => \cuantificador|mux_disp[0]~0_combout\);

-- Location: FF_X50_Y23_N9
\cuantificador|mux_disp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|mux_disp[0]~0_combout\,
	clrn => \nRst~input_o\,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(0));

-- Location: IOIBUF_X24_Y39_N29
\SDO~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDO,
	o => \SDO~input_o\);

-- Location: LCCOMB_X58_Y31_N10
\master|reg_SDO[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDO[0]~feeder_combout\ = \SDO~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDO~input_o\,
	combout => \master|reg_SDO[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y29_N4
\master|ena_SDO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|ena_SDO~0_combout\ = (\master|SPC_up~combout\ & (\master|reg_nWR~q\ & ((\master|cnt_byte\(2)) # (\master|cnt_byte\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_byte\(2),
	datab => \master|SPC_up~combout\,
	datac => \master|cnt_byte\(1),
	datad => \master|reg_nWR~q\,
	combout => \master|ena_SDO~0_combout\);

-- Location: FF_X58_Y31_N11
\master|reg_SDO[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDO[0]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \master|ena_SDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDO\(0));

-- Location: LCCOMB_X58_Y31_N20
\master|reg_SDO[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDO[1]~feeder_combout\ = \master|reg_SDO\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDO\(0),
	combout => \master|reg_SDO[1]~feeder_combout\);

-- Location: FF_X58_Y31_N21
\master|reg_SDO[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDO[1]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \master|ena_SDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDO\(1));

-- Location: LCCOMB_X58_Y31_N22
\master|reg_SDO[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDO[2]~feeder_combout\ = \master|reg_SDO\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDO\(1),
	combout => \master|reg_SDO[2]~feeder_combout\);

-- Location: FF_X58_Y31_N23
\master|reg_SDO[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDO[2]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \master|ena_SDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDO\(2));

-- Location: LCCOMB_X58_Y31_N12
\master|reg_SDO[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDO[3]~feeder_combout\ = \master|reg_SDO\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(2),
	combout => \master|reg_SDO[3]~feeder_combout\);

-- Location: FF_X58_Y31_N13
\master|reg_SDO[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDO[3]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \master|ena_SDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDO\(3));

-- Location: LCCOMB_X58_Y31_N2
\master|reg_SDO[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDO[4]~feeder_combout\ = \master|reg_SDO\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDO\(3),
	combout => \master|reg_SDO[4]~feeder_combout\);

-- Location: FF_X58_Y31_N3
\master|reg_SDO[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDO[4]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \master|ena_SDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDO\(4));

-- Location: LCCOMB_X58_Y31_N24
\master|reg_SDO[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDO[5]~feeder_combout\ = \master|reg_SDO\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDO\(4),
	combout => \master|reg_SDO[5]~feeder_combout\);

-- Location: FF_X58_Y31_N25
\master|reg_SDO[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDO[5]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \master|ena_SDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDO\(5));

-- Location: LCCOMB_X58_Y31_N30
\master|reg_SDO[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDO[6]~feeder_combout\ = \master|reg_SDO\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDO\(5),
	combout => \master|reg_SDO[6]~feeder_combout\);

-- Location: FF_X58_Y31_N31
\master|reg_SDO[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDO[6]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \master|ena_SDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDO\(6));

-- Location: LCCOMB_X58_Y31_N4
\master|reg_SDO[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_SDO[7]~feeder_combout\ = \master|reg_SDO\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(6),
	combout => \master|reg_SDO[7]~feeder_combout\);

-- Location: FF_X58_Y31_N5
\master|reg_SDO[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_SDO[7]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \master|ena_SDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_SDO\(7));

-- Location: LCCOMB_X57_Y31_N24
\calc_offset|muestra_X[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[9]~feeder_combout\ = \master|reg_SDO\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(7),
	combout => \calc_offset|muestra_X[9]~feeder_combout\);

-- Location: LCCOMB_X29_Y29_N0
\master|ena_rd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|ena_rd~0_combout\ = (\master|ena_SDO~0_combout\ & ((\master|ena_rd~q\) # (!\master|ena_bit~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|ena_SDO~0_combout\,
	datac => \master|ena_rd~q\,
	datad => \master|ena_bit~combout\,
	combout => \master|ena_rd~0_combout\);

-- Location: FF_X29_Y29_N1
\master|ena_rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|ena_rd~0_combout\,
	ena => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|ena_rd~q\);

-- Location: LCCOMB_X57_Y30_N6
\calc_offset|cnt_rd[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|cnt_rd[0]~4_combout\ = \master|ena_rd~q\ $ (\calc_offset|cnt_rd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|ena_rd~q\,
	datac => \calc_offset|cnt_rd\(0),
	combout => \calc_offset|cnt_rd[0]~4_combout\);

-- Location: FF_X57_Y30_N7
\calc_offset|cnt_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|cnt_rd[0]~4_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(0));

-- Location: LCCOMB_X57_Y30_N24
\calc_offset|cnt_rd[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|cnt_rd[1]~3_combout\ = \calc_offset|cnt_rd\(1) $ (((\master|ena_rd~q\ & \calc_offset|cnt_rd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|ena_rd~q\,
	datac => \calc_offset|cnt_rd\(1),
	datad => \calc_offset|cnt_rd\(0),
	combout => \calc_offset|cnt_rd[1]~3_combout\);

-- Location: FF_X57_Y30_N25
\calc_offset|cnt_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|cnt_rd[1]~3_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(1));

-- Location: LCCOMB_X57_Y30_N26
\calc_offset|muestra_X[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[9]~0_combout\ = (!\calc_offset|cnt_rd\(1) & (\master|ena_rd~q\ & \calc_offset|cnt_rd\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|cnt_rd\(1),
	datac => \master|ena_rd~q\,
	datad => \calc_offset|cnt_rd\(0),
	combout => \calc_offset|muestra_X[9]~0_combout\);

-- Location: FF_X57_Y31_N25
\calc_offset|muestra_X[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_X[9]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_X[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_X\(9));

-- Location: LCCOMB_X57_Y31_N2
\calc_offset|muestra_X[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[8]~feeder_combout\ = \master|reg_SDO\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(6),
	combout => \calc_offset|muestra_X[8]~feeder_combout\);

-- Location: FF_X57_Y31_N3
\calc_offset|muestra_X[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_X[8]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_X[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_X\(8));

-- Location: LCCOMB_X57_Y31_N12
\calc_offset|muestra_X[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[7]~feeder_combout\ = \master|reg_SDO\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDO\(5),
	combout => \calc_offset|muestra_X[7]~feeder_combout\);

-- Location: FF_X57_Y31_N13
\calc_offset|muestra_X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_X[7]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_X[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_X\(7));

-- Location: LCCOMB_X57_Y31_N14
\calc_offset|muestra_X[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[6]~feeder_combout\ = \master|reg_SDO\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDO\(4),
	combout => \calc_offset|muestra_X[6]~feeder_combout\);

-- Location: FF_X57_Y31_N15
\calc_offset|muestra_X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_X[6]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_X[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_X\(6));

-- Location: LCCOMB_X57_Y31_N28
\calc_offset|muestra_X[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[5]~feeder_combout\ = \master|reg_SDO\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(3),
	combout => \calc_offset|muestra_X[5]~feeder_combout\);

-- Location: FF_X57_Y31_N29
\calc_offset|muestra_X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_X[5]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_X[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_X\(5));

-- Location: LCCOMB_X57_Y31_N18
\calc_offset|muestra_X[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[4]~feeder_combout\ = \master|reg_SDO\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDO\(2),
	combout => \calc_offset|muestra_X[4]~feeder_combout\);

-- Location: FF_X57_Y31_N19
\calc_offset|muestra_X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_X[4]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_X[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_X\(4));

-- Location: LCCOMB_X57_Y31_N0
\calc_offset|muestra_X[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[3]~feeder_combout\ = \master|reg_SDO\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(1),
	combout => \calc_offset|muestra_X[3]~feeder_combout\);

-- Location: FF_X57_Y31_N1
\calc_offset|muestra_X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_X[3]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_X[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_X\(3));

-- Location: LCCOMB_X57_Y31_N10
\calc_offset|muestra_X[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[2]~feeder_combout\ = \master|reg_SDO\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(0),
	combout => \calc_offset|muestra_X[2]~feeder_combout\);

-- Location: FF_X57_Y31_N11
\calc_offset|muestra_X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_X[2]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_X[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_X\(2));

-- Location: LCCOMB_X56_Y31_N0
\calc_offset|muestra_X[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[1]~feeder_combout\ = \master|reg_SDO\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(7),
	combout => \calc_offset|muestra_X[1]~feeder_combout\);

-- Location: LCCOMB_X57_Y30_N28
\calc_offset|muestra_X[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[1]~1_combout\ = (!\calc_offset|cnt_rd\(1) & (\master|ena_rd~q\ & !\calc_offset|cnt_rd\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|cnt_rd\(1),
	datac => \master|ena_rd~q\,
	datad => \calc_offset|cnt_rd\(0),
	combout => \calc_offset|muestra_X[1]~1_combout\);

-- Location: FF_X56_Y31_N1
\calc_offset|muestra_X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_X[1]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_X[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_X\(1));

-- Location: LCCOMB_X56_Y30_N0
\calc_offset|muestra_X[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_X[0]~feeder_combout\ = \master|reg_SDO\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(6),
	combout => \calc_offset|muestra_X[0]~feeder_combout\);

-- Location: FF_X56_Y30_N1
\calc_offset|muestra_X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_X[0]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_X[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_X\(0));

-- Location: LCCOMB_X55_Y31_N0
\calc_offset|acum_X[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[0]~15_combout\ = (\calc_offset|muestra_X\(0) & (\calc_offset|acum_X\(0) $ (VCC))) # (!\calc_offset|muestra_X\(0) & (\calc_offset|acum_X\(0) & VCC))
-- \calc_offset|acum_X[0]~16\ = CARRY((\calc_offset|muestra_X\(0) & \calc_offset|acum_X\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_X\(0),
	datab => \calc_offset|acum_X\(0),
	datad => VCC,
	combout => \calc_offset|acum_X[0]~15_combout\,
	cout => \calc_offset|acum_X[0]~16\);

-- Location: LCCOMB_X57_Y30_N30
\calc_offset|cnt_rd[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|cnt_rd[7]~0_combout\ = (\calc_offset|cnt_rd\(1) & (\master|ena_rd~q\ & \calc_offset|cnt_rd\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|cnt_rd\(1),
	datac => \master|ena_rd~q\,
	datad => \calc_offset|cnt_rd\(0),
	combout => \calc_offset|cnt_rd[7]~0_combout\);

-- Location: LCCOMB_X57_Y30_N2
\calc_offset|cnt_rd[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|cnt_rd[2]~5_combout\ = !\calc_offset|cnt_rd\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calc_offset|cnt_rd\(2),
	combout => \calc_offset|cnt_rd[2]~5_combout\);

-- Location: LCCOMB_X57_Y30_N4
\calc_offset|cnt_rd[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|cnt_rd[2]~2_combout\ = (\calc_offset|cnt_rd\(0) & (\calc_offset|cnt_rd\(1) & (\master|ena_rd~q\ & !\calc_offset|cnt_rd\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(0),
	datab => \calc_offset|cnt_rd\(1),
	datac => \master|ena_rd~q\,
	datad => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|cnt_rd[2]~2_combout\);

-- Location: FF_X57_Y30_N3
\calc_offset|cnt_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|cnt_rd[2]~5_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(2));

-- Location: LCCOMB_X57_Y30_N12
\calc_offset|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Add1~0_combout\ = (\calc_offset|cnt_rd\(3) & (\calc_offset|cnt_rd\(2) $ (VCC))) # (!\calc_offset|cnt_rd\(3) & (\calc_offset|cnt_rd\(2) & VCC))
-- \calc_offset|Add1~1\ = CARRY((\calc_offset|cnt_rd\(3) & \calc_offset|cnt_rd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(3),
	datab => \calc_offset|cnt_rd\(2),
	datad => VCC,
	combout => \calc_offset|Add1~0_combout\,
	cout => \calc_offset|Add1~1\);

-- Location: FF_X57_Y30_N13
\calc_offset|cnt_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|Add1~0_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(3));

-- Location: LCCOMB_X57_Y30_N14
\calc_offset|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Add1~2_combout\ = (\calc_offset|cnt_rd\(4) & (!\calc_offset|Add1~1\)) # (!\calc_offset|cnt_rd\(4) & ((\calc_offset|Add1~1\) # (GND)))
-- \calc_offset|Add1~3\ = CARRY((!\calc_offset|Add1~1\) # (!\calc_offset|cnt_rd\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|cnt_rd\(4),
	datad => VCC,
	cin => \calc_offset|Add1~1\,
	combout => \calc_offset|Add1~2_combout\,
	cout => \calc_offset|Add1~3\);

-- Location: FF_X57_Y30_N15
\calc_offset|cnt_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|Add1~2_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(4));

-- Location: LCCOMB_X57_Y30_N16
\calc_offset|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Add1~4_combout\ = (\calc_offset|cnt_rd\(5) & (\calc_offset|Add1~3\ $ (GND))) # (!\calc_offset|cnt_rd\(5) & (!\calc_offset|Add1~3\ & VCC))
-- \calc_offset|Add1~5\ = CARRY((\calc_offset|cnt_rd\(5) & !\calc_offset|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|cnt_rd\(5),
	datad => VCC,
	cin => \calc_offset|Add1~3\,
	combout => \calc_offset|Add1~4_combout\,
	cout => \calc_offset|Add1~5\);

-- Location: FF_X57_Y30_N17
\calc_offset|cnt_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|Add1~4_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(5));

-- Location: LCCOMB_X57_Y30_N18
\calc_offset|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Add1~6_combout\ = (\calc_offset|cnt_rd\(6) & (!\calc_offset|Add1~5\)) # (!\calc_offset|cnt_rd\(6) & ((\calc_offset|Add1~5\) # (GND)))
-- \calc_offset|Add1~7\ = CARRY((!\calc_offset|Add1~5\) # (!\calc_offset|cnt_rd\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|cnt_rd\(6),
	datad => VCC,
	cin => \calc_offset|Add1~5\,
	combout => \calc_offset|Add1~6_combout\,
	cout => \calc_offset|Add1~7\);

-- Location: FF_X57_Y30_N19
\calc_offset|cnt_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|Add1~6_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(6));

-- Location: LCCOMB_X57_Y30_N20
\calc_offset|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Add1~8_combout\ = \calc_offset|Add1~7\ $ (!\calc_offset|cnt_rd\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \calc_offset|cnt_rd\(7),
	cin => \calc_offset|Add1~7\,
	combout => \calc_offset|Add1~8_combout\);

-- Location: LCCOMB_X57_Y30_N0
\calc_offset|cnt_rd[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|cnt_rd[7]~1_combout\ = (\calc_offset|cnt_rd\(7)) # ((\calc_offset|cnt_rd[7]~0_combout\ & \calc_offset|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd[7]~0_combout\,
	datab => \calc_offset|Add1~8_combout\,
	datac => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|cnt_rd[7]~1_combout\);

-- Location: FF_X57_Y30_N1
\calc_offset|cnt_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|cnt_rd[7]~1_combout\,
	clrn => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(7));

-- Location: LCCOMB_X57_Y30_N10
\calc_offset|ena_calc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|ena_calc~0_combout\ = (\calc_offset|ena_calc~q\) # ((\calc_offset|cnt_rd\(0) & (\calc_offset|cnt_rd\(1) & !\calc_offset|cnt_rd\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(0),
	datab => \calc_offset|cnt_rd\(1),
	datac => \calc_offset|ena_calc~q\,
	datad => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|ena_calc~0_combout\);

-- Location: FF_X57_Y30_N11
\calc_offset|ena_calc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|ena_calc~0_combout\,
	clrn => \nRst~input_o\,
	sclr => \master|ALT_INV_ena_rd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|ena_calc~q\);

-- Location: FF_X55_Y31_N1
\calc_offset|acum_X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[0]~15_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(0));

-- Location: LCCOMB_X55_Y31_N2
\calc_offset|acum_X[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[1]~17_combout\ = (\calc_offset|muestra_X\(1) & ((\calc_offset|acum_X\(1) & (\calc_offset|acum_X[0]~16\ & VCC)) # (!\calc_offset|acum_X\(1) & (!\calc_offset|acum_X[0]~16\)))) # (!\calc_offset|muestra_X\(1) & ((\calc_offset|acum_X\(1) & 
-- (!\calc_offset|acum_X[0]~16\)) # (!\calc_offset|acum_X\(1) & ((\calc_offset|acum_X[0]~16\) # (GND)))))
-- \calc_offset|acum_X[1]~18\ = CARRY((\calc_offset|muestra_X\(1) & (!\calc_offset|acum_X\(1) & !\calc_offset|acum_X[0]~16\)) # (!\calc_offset|muestra_X\(1) & ((!\calc_offset|acum_X[0]~16\) # (!\calc_offset|acum_X\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_X\(1),
	datab => \calc_offset|acum_X\(1),
	datad => VCC,
	cin => \calc_offset|acum_X[0]~16\,
	combout => \calc_offset|acum_X[1]~17_combout\,
	cout => \calc_offset|acum_X[1]~18\);

-- Location: FF_X55_Y31_N3
\calc_offset|acum_X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[1]~17_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(1));

-- Location: LCCOMB_X55_Y31_N4
\calc_offset|acum_X[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[2]~19_combout\ = ((\calc_offset|muestra_X\(2) $ (\calc_offset|acum_X\(2) $ (!\calc_offset|acum_X[1]~18\)))) # (GND)
-- \calc_offset|acum_X[2]~20\ = CARRY((\calc_offset|muestra_X\(2) & ((\calc_offset|acum_X\(2)) # (!\calc_offset|acum_X[1]~18\))) # (!\calc_offset|muestra_X\(2) & (\calc_offset|acum_X\(2) & !\calc_offset|acum_X[1]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_X\(2),
	datab => \calc_offset|acum_X\(2),
	datad => VCC,
	cin => \calc_offset|acum_X[1]~18\,
	combout => \calc_offset|acum_X[2]~19_combout\,
	cout => \calc_offset|acum_X[2]~20\);

-- Location: FF_X55_Y31_N5
\calc_offset|acum_X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[2]~19_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(2));

-- Location: LCCOMB_X55_Y31_N6
\calc_offset|acum_X[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[3]~21_combout\ = (\calc_offset|acum_X\(3) & ((\calc_offset|muestra_X\(3) & (\calc_offset|acum_X[2]~20\ & VCC)) # (!\calc_offset|muestra_X\(3) & (!\calc_offset|acum_X[2]~20\)))) # (!\calc_offset|acum_X\(3) & ((\calc_offset|muestra_X\(3) 
-- & (!\calc_offset|acum_X[2]~20\)) # (!\calc_offset|muestra_X\(3) & ((\calc_offset|acum_X[2]~20\) # (GND)))))
-- \calc_offset|acum_X[3]~22\ = CARRY((\calc_offset|acum_X\(3) & (!\calc_offset|muestra_X\(3) & !\calc_offset|acum_X[2]~20\)) # (!\calc_offset|acum_X\(3) & ((!\calc_offset|acum_X[2]~20\) # (!\calc_offset|muestra_X\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_X\(3),
	datab => \calc_offset|muestra_X\(3),
	datad => VCC,
	cin => \calc_offset|acum_X[2]~20\,
	combout => \calc_offset|acum_X[3]~21_combout\,
	cout => \calc_offset|acum_X[3]~22\);

-- Location: FF_X55_Y31_N7
\calc_offset|acum_X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[3]~21_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(3));

-- Location: LCCOMB_X55_Y31_N8
\calc_offset|acum_X[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[4]~23_combout\ = ((\calc_offset|muestra_X\(4) $ (\calc_offset|acum_X\(4) $ (!\calc_offset|acum_X[3]~22\)))) # (GND)
-- \calc_offset|acum_X[4]~24\ = CARRY((\calc_offset|muestra_X\(4) & ((\calc_offset|acum_X\(4)) # (!\calc_offset|acum_X[3]~22\))) # (!\calc_offset|muestra_X\(4) & (\calc_offset|acum_X\(4) & !\calc_offset|acum_X[3]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_X\(4),
	datab => \calc_offset|acum_X\(4),
	datad => VCC,
	cin => \calc_offset|acum_X[3]~22\,
	combout => \calc_offset|acum_X[4]~23_combout\,
	cout => \calc_offset|acum_X[4]~24\);

-- Location: FF_X55_Y31_N9
\calc_offset|acum_X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[4]~23_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(4));

-- Location: LCCOMB_X55_Y31_N10
\calc_offset|acum_X[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[5]~25_combout\ = (\calc_offset|acum_X\(5) & ((\calc_offset|muestra_X\(5) & (\calc_offset|acum_X[4]~24\ & VCC)) # (!\calc_offset|muestra_X\(5) & (!\calc_offset|acum_X[4]~24\)))) # (!\calc_offset|acum_X\(5) & ((\calc_offset|muestra_X\(5) 
-- & (!\calc_offset|acum_X[4]~24\)) # (!\calc_offset|muestra_X\(5) & ((\calc_offset|acum_X[4]~24\) # (GND)))))
-- \calc_offset|acum_X[5]~26\ = CARRY((\calc_offset|acum_X\(5) & (!\calc_offset|muestra_X\(5) & !\calc_offset|acum_X[4]~24\)) # (!\calc_offset|acum_X\(5) & ((!\calc_offset|acum_X[4]~24\) # (!\calc_offset|muestra_X\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_X\(5),
	datab => \calc_offset|muestra_X\(5),
	datad => VCC,
	cin => \calc_offset|acum_X[4]~24\,
	combout => \calc_offset|acum_X[5]~25_combout\,
	cout => \calc_offset|acum_X[5]~26\);

-- Location: FF_X55_Y31_N11
\calc_offset|acum_X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[5]~25_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(5));

-- Location: LCCOMB_X55_Y31_N12
\calc_offset|acum_X[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[6]~27_combout\ = ((\calc_offset|muestra_X\(6) $ (\calc_offset|acum_X\(6) $ (!\calc_offset|acum_X[5]~26\)))) # (GND)
-- \calc_offset|acum_X[6]~28\ = CARRY((\calc_offset|muestra_X\(6) & ((\calc_offset|acum_X\(6)) # (!\calc_offset|acum_X[5]~26\))) # (!\calc_offset|muestra_X\(6) & (\calc_offset|acum_X\(6) & !\calc_offset|acum_X[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_X\(6),
	datab => \calc_offset|acum_X\(6),
	datad => VCC,
	cin => \calc_offset|acum_X[5]~26\,
	combout => \calc_offset|acum_X[6]~27_combout\,
	cout => \calc_offset|acum_X[6]~28\);

-- Location: FF_X55_Y31_N13
\calc_offset|acum_X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[6]~27_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(6));

-- Location: LCCOMB_X55_Y31_N14
\calc_offset|acum_X[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[7]~29_combout\ = (\calc_offset|acum_X\(7) & ((\calc_offset|muestra_X\(7) & (\calc_offset|acum_X[6]~28\ & VCC)) # (!\calc_offset|muestra_X\(7) & (!\calc_offset|acum_X[6]~28\)))) # (!\calc_offset|acum_X\(7) & ((\calc_offset|muestra_X\(7) 
-- & (!\calc_offset|acum_X[6]~28\)) # (!\calc_offset|muestra_X\(7) & ((\calc_offset|acum_X[6]~28\) # (GND)))))
-- \calc_offset|acum_X[7]~30\ = CARRY((\calc_offset|acum_X\(7) & (!\calc_offset|muestra_X\(7) & !\calc_offset|acum_X[6]~28\)) # (!\calc_offset|acum_X\(7) & ((!\calc_offset|acum_X[6]~28\) # (!\calc_offset|muestra_X\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_X\(7),
	datab => \calc_offset|muestra_X\(7),
	datad => VCC,
	cin => \calc_offset|acum_X[6]~28\,
	combout => \calc_offset|acum_X[7]~29_combout\,
	cout => \calc_offset|acum_X[7]~30\);

-- Location: FF_X55_Y31_N15
\calc_offset|acum_X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[7]~29_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(7));

-- Location: LCCOMB_X55_Y31_N16
\calc_offset|acum_X[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[8]~31_combout\ = ((\calc_offset|acum_X\(8) $ (\calc_offset|muestra_X\(8) $ (!\calc_offset|acum_X[7]~30\)))) # (GND)
-- \calc_offset|acum_X[8]~32\ = CARRY((\calc_offset|acum_X\(8) & ((\calc_offset|muestra_X\(8)) # (!\calc_offset|acum_X[7]~30\))) # (!\calc_offset|acum_X\(8) & (\calc_offset|muestra_X\(8) & !\calc_offset|acum_X[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_X\(8),
	datab => \calc_offset|muestra_X\(8),
	datad => VCC,
	cin => \calc_offset|acum_X[7]~30\,
	combout => \calc_offset|acum_X[8]~31_combout\,
	cout => \calc_offset|acum_X[8]~32\);

-- Location: FF_X55_Y31_N17
\calc_offset|acum_X[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[8]~31_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(8));

-- Location: LCCOMB_X55_Y31_N18
\calc_offset|acum_X[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[9]~33_combout\ = (\calc_offset|acum_X\(9) & ((\calc_offset|muestra_X\(9) & (\calc_offset|acum_X[8]~32\ & VCC)) # (!\calc_offset|muestra_X\(9) & (!\calc_offset|acum_X[8]~32\)))) # (!\calc_offset|acum_X\(9) & ((\calc_offset|muestra_X\(9) 
-- & (!\calc_offset|acum_X[8]~32\)) # (!\calc_offset|muestra_X\(9) & ((\calc_offset|acum_X[8]~32\) # (GND)))))
-- \calc_offset|acum_X[9]~34\ = CARRY((\calc_offset|acum_X\(9) & (!\calc_offset|muestra_X\(9) & !\calc_offset|acum_X[8]~32\)) # (!\calc_offset|acum_X\(9) & ((!\calc_offset|acum_X[8]~32\) # (!\calc_offset|muestra_X\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_X\(9),
	datab => \calc_offset|muestra_X\(9),
	datad => VCC,
	cin => \calc_offset|acum_X[8]~32\,
	combout => \calc_offset|acum_X[9]~33_combout\,
	cout => \calc_offset|acum_X[9]~34\);

-- Location: FF_X55_Y31_N19
\calc_offset|acum_X[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[9]~33_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(9));

-- Location: LCCOMB_X55_Y31_N20
\calc_offset|acum_X[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[10]~35_combout\ = ((\calc_offset|acum_X\(10) $ (\calc_offset|muestra_X\(9) $ (!\calc_offset|acum_X[9]~34\)))) # (GND)
-- \calc_offset|acum_X[10]~36\ = CARRY((\calc_offset|acum_X\(10) & ((\calc_offset|muestra_X\(9)) # (!\calc_offset|acum_X[9]~34\))) # (!\calc_offset|acum_X\(10) & (\calc_offset|muestra_X\(9) & !\calc_offset|acum_X[9]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_X\(10),
	datab => \calc_offset|muestra_X\(9),
	datad => VCC,
	cin => \calc_offset|acum_X[9]~34\,
	combout => \calc_offset|acum_X[10]~35_combout\,
	cout => \calc_offset|acum_X[10]~36\);

-- Location: FF_X55_Y31_N21
\calc_offset|acum_X[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[10]~35_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(10));

-- Location: LCCOMB_X55_Y31_N22
\calc_offset|acum_X[11]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[11]~37_combout\ = (\calc_offset|acum_X\(11) & ((\calc_offset|muestra_X\(9) & (\calc_offset|acum_X[10]~36\ & VCC)) # (!\calc_offset|muestra_X\(9) & (!\calc_offset|acum_X[10]~36\)))) # (!\calc_offset|acum_X\(11) & 
-- ((\calc_offset|muestra_X\(9) & (!\calc_offset|acum_X[10]~36\)) # (!\calc_offset|muestra_X\(9) & ((\calc_offset|acum_X[10]~36\) # (GND)))))
-- \calc_offset|acum_X[11]~38\ = CARRY((\calc_offset|acum_X\(11) & (!\calc_offset|muestra_X\(9) & !\calc_offset|acum_X[10]~36\)) # (!\calc_offset|acum_X\(11) & ((!\calc_offset|acum_X[10]~36\) # (!\calc_offset|muestra_X\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_X\(11),
	datab => \calc_offset|muestra_X\(9),
	datad => VCC,
	cin => \calc_offset|acum_X[10]~36\,
	combout => \calc_offset|acum_X[11]~37_combout\,
	cout => \calc_offset|acum_X[11]~38\);

-- Location: FF_X55_Y31_N23
\calc_offset|acum_X[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[11]~37_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(11));

-- Location: LCCOMB_X55_Y31_N24
\calc_offset|acum_X[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[12]~39_combout\ = ((\calc_offset|acum_X\(12) $ (\calc_offset|muestra_X\(9) $ (!\calc_offset|acum_X[11]~38\)))) # (GND)
-- \calc_offset|acum_X[12]~40\ = CARRY((\calc_offset|acum_X\(12) & ((\calc_offset|muestra_X\(9)) # (!\calc_offset|acum_X[11]~38\))) # (!\calc_offset|acum_X\(12) & (\calc_offset|muestra_X\(9) & !\calc_offset|acum_X[11]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_X\(12),
	datab => \calc_offset|muestra_X\(9),
	datad => VCC,
	cin => \calc_offset|acum_X[11]~38\,
	combout => \calc_offset|acum_X[12]~39_combout\,
	cout => \calc_offset|acum_X[12]~40\);

-- Location: FF_X55_Y31_N25
\calc_offset|acum_X[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[12]~39_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(12));

-- Location: LCCOMB_X55_Y31_N26
\calc_offset|acum_X[13]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[13]~41_combout\ = (\calc_offset|acum_X\(13) & ((\calc_offset|muestra_X\(9) & (\calc_offset|acum_X[12]~40\ & VCC)) # (!\calc_offset|muestra_X\(9) & (!\calc_offset|acum_X[12]~40\)))) # (!\calc_offset|acum_X\(13) & 
-- ((\calc_offset|muestra_X\(9) & (!\calc_offset|acum_X[12]~40\)) # (!\calc_offset|muestra_X\(9) & ((\calc_offset|acum_X[12]~40\) # (GND)))))
-- \calc_offset|acum_X[13]~42\ = CARRY((\calc_offset|acum_X\(13) & (!\calc_offset|muestra_X\(9) & !\calc_offset|acum_X[12]~40\)) # (!\calc_offset|acum_X\(13) & ((!\calc_offset|acum_X[12]~40\) # (!\calc_offset|muestra_X\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_X\(13),
	datab => \calc_offset|muestra_X\(9),
	datad => VCC,
	cin => \calc_offset|acum_X[12]~40\,
	combout => \calc_offset|acum_X[13]~41_combout\,
	cout => \calc_offset|acum_X[13]~42\);

-- Location: FF_X55_Y31_N27
\calc_offset|acum_X[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[13]~41_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(13));

-- Location: LCCOMB_X55_Y31_N28
\calc_offset|acum_X[14]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_X[14]~43_combout\ = \calc_offset|acum_X\(14) $ (\calc_offset|acum_X[13]~42\ $ (!\calc_offset|muestra_X\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|acum_X\(14),
	datad => \calc_offset|muestra_X\(9),
	cin => \calc_offset|acum_X[13]~42\,
	combout => \calc_offset|acum_X[14]~43_combout\);

-- Location: FF_X55_Y31_N29
\calc_offset|acum_X[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_X[14]~43_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_X\(14));

-- Location: LCCOMB_X54_Y31_N20
\calc_offset|X_out_bias[10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|X_out_bias[10]~0_combout\ = (\calc_offset|acum_X\(14) & \calc_offset|cnt_rd\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|acum_X\(14),
	datac => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|X_out_bias[10]~0_combout\);

-- Location: LCCOMB_X57_Y30_N8
\calc_offset|muestra_bias_rdy~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_bias_rdy~0_combout\ = (\calc_offset|muestra_bias_rdy~q\) # ((\calc_offset|cnt_rd\(0) & (\calc_offset|cnt_rd\(1) & \calc_offset|cnt_rd\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(0),
	datab => \calc_offset|cnt_rd\(1),
	datac => \calc_offset|muestra_bias_rdy~q\,
	datad => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|muestra_bias_rdy~0_combout\);

-- Location: FF_X57_Y30_N9
\calc_offset|muestra_bias_rdy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_bias_rdy~0_combout\,
	clrn => \nRst~input_o\,
	sclr => \master|ALT_INV_ena_rd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_bias_rdy~q\);

-- Location: LCCOMB_X59_Y31_N10
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\ = !\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(0)
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\ = CARRY(!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(0),
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X59_Y31_N22
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\ = (\calc_offset|muestra_bias_rdy~q\ & !\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calc_offset|muestra_bias_rdy~q\,
	datad => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~0_combout\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\);

-- Location: FF_X59_Y31_N11
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\,
	clrn => \nRst~input_o\,
	ena => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(0));

-- Location: LCCOMB_X59_Y31_N12
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(1) & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(1) & ((\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\) # (GND)))
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\) # (!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(1),
	datad => VCC,
	cin => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\);

-- Location: FF_X59_Y31_N13
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\,
	clrn => \nRst~input_o\,
	ena => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(1));

-- Location: LCCOMB_X59_Y31_N14
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & (\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ & VCC))
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & !\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(2),
	datad => VCC,
	cin => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\);

-- Location: FF_X59_Y31_N15
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\,
	clrn => \nRst~input_o\,
	ena => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(2));

-- Location: LCCOMB_X59_Y31_N16
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(3) & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(3) & ((\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\) # (GND)))
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\) # (!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(3),
	datad => VCC,
	cin => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\);

-- Location: FF_X59_Y31_N17
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~combout\,
	clrn => \nRst~input_o\,
	ena => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(3));

-- Location: LCCOMB_X59_Y31_N18
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~0_combout\ = !\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~0_combout\);

-- Location: FF_X59_Y31_N19
\estimador|reg_muestra_rtl_0|auto_generated|dffe4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~0_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|dffe4~q\);

-- Location: LCCOMB_X59_Y31_N0
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ = \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) $ (VCC)
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datad => VCC,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X59_Y31_N2
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & ((\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (GND)))
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datad => VCC,
	cin => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X59_Y31_N4
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ & VCC))
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & !\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(2),
	datad => VCC,
	cin => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X59_Y31_N24
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ & 
-- !\estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	datac => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\,
	datad => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\);

-- Location: FF_X59_Y31_N25
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(2));

-- Location: LCCOMB_X59_Y31_N6
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & ((\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (GND)))
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3),
	datad => VCC,
	cin => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X59_Y31_N30
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\ = (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\ & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ 
-- & \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	datac => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\,
	datad => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\);

-- Location: FF_X59_Y31_N31
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3));

-- Location: LCCOMB_X59_Y31_N8
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ = !\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X59_Y31_N26
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ = (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\ & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ 
-- & \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	datac => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\,
	datad => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\);

-- Location: FF_X59_Y31_N27
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: LCCOMB_X59_Y31_N20
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\ = (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & 
-- (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(2),
	datac => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3),
	datad => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X59_Y31_N28
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ = (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\ & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ 
-- & \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	datac => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\,
	datad => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\);

-- Location: FF_X59_Y31_N29
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: LCCOMB_X54_Y31_N18
\calc_offset|X_out_bias[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|X_out_bias[8]~1_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_X\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calc_offset|cnt_rd\(7),
	datad => \calc_offset|acum_X\(13),
	combout => \calc_offset|X_out_bias[8]~1_combout\);

-- Location: LCCOMB_X54_Y31_N24
\calc_offset|X_out_bias[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|X_out_bias[7]~2_combout\ = (\calc_offset|acum_X\(12) & \calc_offset|cnt_rd\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|acum_X\(12),
	datac => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|X_out_bias[7]~2_combout\);

-- Location: LCCOMB_X54_Y31_N30
\calc_offset|X_out_bias[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|X_out_bias[6]~3_combout\ = (\calc_offset|acum_X\(11) & \calc_offset|cnt_rd\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|acum_X\(11),
	datac => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|X_out_bias[6]~3_combout\);

-- Location: LCCOMB_X54_Y31_N12
\calc_offset|X_out_bias[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|X_out_bias[5]~4_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_X\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datac => \calc_offset|acum_X\(10),
	combout => \calc_offset|X_out_bias[5]~4_combout\);

-- Location: LCCOMB_X54_Y31_N22
\calc_offset|X_out_bias[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|X_out_bias[4]~5_combout\ = (\calc_offset|acum_X\(9) & \calc_offset|cnt_rd\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|acum_X\(9),
	datac => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|X_out_bias[4]~5_combout\);

-- Location: LCCOMB_X54_Y31_N8
\calc_offset|X_out_bias[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|X_out_bias[3]~6_combout\ = (\calc_offset|acum_X\(8) & \calc_offset|cnt_rd\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|acum_X\(8),
	datac => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|X_out_bias[3]~6_combout\);

-- Location: LCCOMB_X54_Y31_N6
\calc_offset|X_out_bias[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|X_out_bias[2]~7_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_X\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datac => \calc_offset|acum_X\(7),
	combout => \calc_offset|X_out_bias[2]~7_combout\);

-- Location: LCCOMB_X54_Y31_N4
\calc_offset|X_out_bias[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|X_out_bias[1]~8_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_X\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datac => \calc_offset|acum_X\(6),
	combout => \calc_offset|X_out_bias[1]~8_combout\);

-- Location: LCCOMB_X54_Y31_N14
\calc_offset|X_out_bias[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|X_out_bias[0]~9_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datac => \calc_offset|acum_X\(5),
	combout => \calc_offset|X_out_bias[0]~9_combout\);

-- Location: LCCOMB_X57_Y31_N20
\calc_offset|muestra_Y[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_Y[9]~feeder_combout\ = \master|reg_SDO\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(7),
	combout => \calc_offset|muestra_Y[9]~feeder_combout\);

-- Location: FF_X57_Y31_N21
\calc_offset|muestra_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_Y[9]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_Y\(9));

-- Location: LCCOMB_X57_Y31_N6
\calc_offset|muestra_Y[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_Y[8]~feeder_combout\ = \master|reg_SDO\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(6),
	combout => \calc_offset|muestra_Y[8]~feeder_combout\);

-- Location: FF_X57_Y31_N7
\calc_offset|muestra_Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_Y[8]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_Y\(8));

-- Location: LCCOMB_X57_Y31_N8
\calc_offset|muestra_Y[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_Y[7]~feeder_combout\ = \master|reg_SDO\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDO\(5),
	combout => \calc_offset|muestra_Y[7]~feeder_combout\);

-- Location: FF_X57_Y31_N9
\calc_offset|muestra_Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_Y[7]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_Y\(7));

-- Location: LCCOMB_X57_Y31_N30
\calc_offset|muestra_Y[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_Y[6]~feeder_combout\ = \master|reg_SDO\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDO\(4),
	combout => \calc_offset|muestra_Y[6]~feeder_combout\);

-- Location: FF_X57_Y31_N31
\calc_offset|muestra_Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_Y[6]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_Y\(6));

-- Location: LCCOMB_X57_Y31_N16
\calc_offset|muestra_Y[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_Y[5]~feeder_combout\ = \master|reg_SDO\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(3),
	combout => \calc_offset|muestra_Y[5]~feeder_combout\);

-- Location: FF_X57_Y31_N17
\calc_offset|muestra_Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_Y[5]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_Y\(5));

-- Location: LCCOMB_X57_Y31_N22
\calc_offset|muestra_Y[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_Y[4]~feeder_combout\ = \master|reg_SDO\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master|reg_SDO\(2),
	combout => \calc_offset|muestra_Y[4]~feeder_combout\);

-- Location: FF_X57_Y31_N23
\calc_offset|muestra_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_Y[4]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_Y\(4));

-- Location: LCCOMB_X57_Y31_N4
\calc_offset|muestra_Y[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_Y[3]~feeder_combout\ = \master|reg_SDO\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(1),
	combout => \calc_offset|muestra_Y[3]~feeder_combout\);

-- Location: FF_X57_Y31_N5
\calc_offset|muestra_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_Y[3]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_Y\(3));

-- Location: LCCOMB_X57_Y31_N26
\calc_offset|muestra_Y[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_Y[2]~feeder_combout\ = \master|reg_SDO\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(0),
	combout => \calc_offset|muestra_Y[2]~feeder_combout\);

-- Location: FF_X57_Y31_N27
\calc_offset|muestra_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_Y[2]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|cnt_rd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_Y\(2));

-- Location: LCCOMB_X58_Y31_N28
\calc_offset|muestra_Y[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_Y[1]~feeder_combout\ = \master|reg_SDO\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(7),
	combout => \calc_offset|muestra_Y[1]~feeder_combout\);

-- Location: LCCOMB_X57_Y30_N22
\calc_offset|muestra_Y[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_Y[1]~0_combout\ = (\calc_offset|cnt_rd\(1) & (\master|ena_rd~q\ & !\calc_offset|cnt_rd\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|cnt_rd\(1),
	datac => \master|ena_rd~q\,
	datad => \calc_offset|cnt_rd\(0),
	combout => \calc_offset|muestra_Y[1]~0_combout\);

-- Location: FF_X58_Y31_N29
\calc_offset|muestra_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_Y[1]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_Y[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_Y\(1));

-- Location: LCCOMB_X58_Y31_N6
\calc_offset|muestra_Y[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_Y[0]~feeder_combout\ = \master|reg_SDO\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|reg_SDO\(6),
	combout => \calc_offset|muestra_Y[0]~feeder_combout\);

-- Location: FF_X58_Y31_N7
\calc_offset|muestra_Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_Y[0]~feeder_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_Y[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_Y\(0));

-- Location: LCCOMB_X56_Y31_N2
\calc_offset|acum_Y[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[0]~15_combout\ = (\calc_offset|muestra_Y\(0) & (\calc_offset|acum_Y\(0) $ (VCC))) # (!\calc_offset|muestra_Y\(0) & (\calc_offset|acum_Y\(0) & VCC))
-- \calc_offset|acum_Y[0]~16\ = CARRY((\calc_offset|muestra_Y\(0) & \calc_offset|acum_Y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_Y\(0),
	datab => \calc_offset|acum_Y\(0),
	datad => VCC,
	combout => \calc_offset|acum_Y[0]~15_combout\,
	cout => \calc_offset|acum_Y[0]~16\);

-- Location: FF_X56_Y31_N3
\calc_offset|acum_Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[0]~15_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(0));

-- Location: LCCOMB_X56_Y31_N4
\calc_offset|acum_Y[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[1]~17_combout\ = (\calc_offset|muestra_Y\(1) & ((\calc_offset|acum_Y\(1) & (\calc_offset|acum_Y[0]~16\ & VCC)) # (!\calc_offset|acum_Y\(1) & (!\calc_offset|acum_Y[0]~16\)))) # (!\calc_offset|muestra_Y\(1) & ((\calc_offset|acum_Y\(1) & 
-- (!\calc_offset|acum_Y[0]~16\)) # (!\calc_offset|acum_Y\(1) & ((\calc_offset|acum_Y[0]~16\) # (GND)))))
-- \calc_offset|acum_Y[1]~18\ = CARRY((\calc_offset|muestra_Y\(1) & (!\calc_offset|acum_Y\(1) & !\calc_offset|acum_Y[0]~16\)) # (!\calc_offset|muestra_Y\(1) & ((!\calc_offset|acum_Y[0]~16\) # (!\calc_offset|acum_Y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_Y\(1),
	datab => \calc_offset|acum_Y\(1),
	datad => VCC,
	cin => \calc_offset|acum_Y[0]~16\,
	combout => \calc_offset|acum_Y[1]~17_combout\,
	cout => \calc_offset|acum_Y[1]~18\);

-- Location: FF_X56_Y31_N5
\calc_offset|acum_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[1]~17_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(1));

-- Location: LCCOMB_X56_Y31_N6
\calc_offset|acum_Y[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[2]~19_combout\ = ((\calc_offset|acum_Y\(2) $ (\calc_offset|muestra_Y\(2) $ (!\calc_offset|acum_Y[1]~18\)))) # (GND)
-- \calc_offset|acum_Y[2]~20\ = CARRY((\calc_offset|acum_Y\(2) & ((\calc_offset|muestra_Y\(2)) # (!\calc_offset|acum_Y[1]~18\))) # (!\calc_offset|acum_Y\(2) & (\calc_offset|muestra_Y\(2) & !\calc_offset|acum_Y[1]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_Y\(2),
	datab => \calc_offset|muestra_Y\(2),
	datad => VCC,
	cin => \calc_offset|acum_Y[1]~18\,
	combout => \calc_offset|acum_Y[2]~19_combout\,
	cout => \calc_offset|acum_Y[2]~20\);

-- Location: FF_X56_Y31_N7
\calc_offset|acum_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[2]~19_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(2));

-- Location: LCCOMB_X56_Y31_N8
\calc_offset|acum_Y[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[3]~21_combout\ = (\calc_offset|muestra_Y\(3) & ((\calc_offset|acum_Y\(3) & (\calc_offset|acum_Y[2]~20\ & VCC)) # (!\calc_offset|acum_Y\(3) & (!\calc_offset|acum_Y[2]~20\)))) # (!\calc_offset|muestra_Y\(3) & ((\calc_offset|acum_Y\(3) & 
-- (!\calc_offset|acum_Y[2]~20\)) # (!\calc_offset|acum_Y\(3) & ((\calc_offset|acum_Y[2]~20\) # (GND)))))
-- \calc_offset|acum_Y[3]~22\ = CARRY((\calc_offset|muestra_Y\(3) & (!\calc_offset|acum_Y\(3) & !\calc_offset|acum_Y[2]~20\)) # (!\calc_offset|muestra_Y\(3) & ((!\calc_offset|acum_Y[2]~20\) # (!\calc_offset|acum_Y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_Y\(3),
	datab => \calc_offset|acum_Y\(3),
	datad => VCC,
	cin => \calc_offset|acum_Y[2]~20\,
	combout => \calc_offset|acum_Y[3]~21_combout\,
	cout => \calc_offset|acum_Y[3]~22\);

-- Location: FF_X56_Y31_N9
\calc_offset|acum_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[3]~21_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(3));

-- Location: LCCOMB_X56_Y31_N10
\calc_offset|acum_Y[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[4]~23_combout\ = ((\calc_offset|acum_Y\(4) $ (\calc_offset|muestra_Y\(4) $ (!\calc_offset|acum_Y[3]~22\)))) # (GND)
-- \calc_offset|acum_Y[4]~24\ = CARRY((\calc_offset|acum_Y\(4) & ((\calc_offset|muestra_Y\(4)) # (!\calc_offset|acum_Y[3]~22\))) # (!\calc_offset|acum_Y\(4) & (\calc_offset|muestra_Y\(4) & !\calc_offset|acum_Y[3]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_Y\(4),
	datab => \calc_offset|muestra_Y\(4),
	datad => VCC,
	cin => \calc_offset|acum_Y[3]~22\,
	combout => \calc_offset|acum_Y[4]~23_combout\,
	cout => \calc_offset|acum_Y[4]~24\);

-- Location: FF_X56_Y31_N11
\calc_offset|acum_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[4]~23_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(4));

-- Location: LCCOMB_X56_Y31_N12
\calc_offset|acum_Y[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[5]~25_combout\ = (\calc_offset|acum_Y\(5) & ((\calc_offset|muestra_Y\(5) & (\calc_offset|acum_Y[4]~24\ & VCC)) # (!\calc_offset|muestra_Y\(5) & (!\calc_offset|acum_Y[4]~24\)))) # (!\calc_offset|acum_Y\(5) & ((\calc_offset|muestra_Y\(5) 
-- & (!\calc_offset|acum_Y[4]~24\)) # (!\calc_offset|muestra_Y\(5) & ((\calc_offset|acum_Y[4]~24\) # (GND)))))
-- \calc_offset|acum_Y[5]~26\ = CARRY((\calc_offset|acum_Y\(5) & (!\calc_offset|muestra_Y\(5) & !\calc_offset|acum_Y[4]~24\)) # (!\calc_offset|acum_Y\(5) & ((!\calc_offset|acum_Y[4]~24\) # (!\calc_offset|muestra_Y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_Y\(5),
	datab => \calc_offset|muestra_Y\(5),
	datad => VCC,
	cin => \calc_offset|acum_Y[4]~24\,
	combout => \calc_offset|acum_Y[5]~25_combout\,
	cout => \calc_offset|acum_Y[5]~26\);

-- Location: FF_X56_Y31_N13
\calc_offset|acum_Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[5]~25_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(5));

-- Location: LCCOMB_X56_Y31_N14
\calc_offset|acum_Y[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[6]~27_combout\ = ((\calc_offset|muestra_Y\(6) $ (\calc_offset|acum_Y\(6) $ (!\calc_offset|acum_Y[5]~26\)))) # (GND)
-- \calc_offset|acum_Y[6]~28\ = CARRY((\calc_offset|muestra_Y\(6) & ((\calc_offset|acum_Y\(6)) # (!\calc_offset|acum_Y[5]~26\))) # (!\calc_offset|muestra_Y\(6) & (\calc_offset|acum_Y\(6) & !\calc_offset|acum_Y[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_Y\(6),
	datab => \calc_offset|acum_Y\(6),
	datad => VCC,
	cin => \calc_offset|acum_Y[5]~26\,
	combout => \calc_offset|acum_Y[6]~27_combout\,
	cout => \calc_offset|acum_Y[6]~28\);

-- Location: FF_X56_Y31_N15
\calc_offset|acum_Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[6]~27_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(6));

-- Location: LCCOMB_X56_Y31_N16
\calc_offset|acum_Y[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[7]~29_combout\ = (\calc_offset|acum_Y\(7) & ((\calc_offset|muestra_Y\(7) & (\calc_offset|acum_Y[6]~28\ & VCC)) # (!\calc_offset|muestra_Y\(7) & (!\calc_offset|acum_Y[6]~28\)))) # (!\calc_offset|acum_Y\(7) & ((\calc_offset|muestra_Y\(7) 
-- & (!\calc_offset|acum_Y[6]~28\)) # (!\calc_offset|muestra_Y\(7) & ((\calc_offset|acum_Y[6]~28\) # (GND)))))
-- \calc_offset|acum_Y[7]~30\ = CARRY((\calc_offset|acum_Y\(7) & (!\calc_offset|muestra_Y\(7) & !\calc_offset|acum_Y[6]~28\)) # (!\calc_offset|acum_Y\(7) & ((!\calc_offset|acum_Y[6]~28\) # (!\calc_offset|muestra_Y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_Y\(7),
	datab => \calc_offset|muestra_Y\(7),
	datad => VCC,
	cin => \calc_offset|acum_Y[6]~28\,
	combout => \calc_offset|acum_Y[7]~29_combout\,
	cout => \calc_offset|acum_Y[7]~30\);

-- Location: FF_X56_Y31_N17
\calc_offset|acum_Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[7]~29_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(7));

-- Location: LCCOMB_X56_Y31_N18
\calc_offset|acum_Y[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[8]~31_combout\ = ((\calc_offset|muestra_Y\(8) $ (\calc_offset|acum_Y\(8) $ (!\calc_offset|acum_Y[7]~30\)))) # (GND)
-- \calc_offset|acum_Y[8]~32\ = CARRY((\calc_offset|muestra_Y\(8) & ((\calc_offset|acum_Y\(8)) # (!\calc_offset|acum_Y[7]~30\))) # (!\calc_offset|muestra_Y\(8) & (\calc_offset|acum_Y\(8) & !\calc_offset|acum_Y[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_Y\(8),
	datab => \calc_offset|acum_Y\(8),
	datad => VCC,
	cin => \calc_offset|acum_Y[7]~30\,
	combout => \calc_offset|acum_Y[8]~31_combout\,
	cout => \calc_offset|acum_Y[8]~32\);

-- Location: FF_X56_Y31_N19
\calc_offset|acum_Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[8]~31_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(8));

-- Location: LCCOMB_X56_Y31_N20
\calc_offset|acum_Y[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[9]~33_combout\ = (\calc_offset|muestra_Y\(9) & ((\calc_offset|acum_Y\(9) & (\calc_offset|acum_Y[8]~32\ & VCC)) # (!\calc_offset|acum_Y\(9) & (!\calc_offset|acum_Y[8]~32\)))) # (!\calc_offset|muestra_Y\(9) & ((\calc_offset|acum_Y\(9) & 
-- (!\calc_offset|acum_Y[8]~32\)) # (!\calc_offset|acum_Y\(9) & ((\calc_offset|acum_Y[8]~32\) # (GND)))))
-- \calc_offset|acum_Y[9]~34\ = CARRY((\calc_offset|muestra_Y\(9) & (!\calc_offset|acum_Y\(9) & !\calc_offset|acum_Y[8]~32\)) # (!\calc_offset|muestra_Y\(9) & ((!\calc_offset|acum_Y[8]~32\) # (!\calc_offset|acum_Y\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_Y\(9),
	datab => \calc_offset|acum_Y\(9),
	datad => VCC,
	cin => \calc_offset|acum_Y[8]~32\,
	combout => \calc_offset|acum_Y[9]~33_combout\,
	cout => \calc_offset|acum_Y[9]~34\);

-- Location: FF_X56_Y31_N21
\calc_offset|acum_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[9]~33_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(9));

-- Location: LCCOMB_X56_Y31_N22
\calc_offset|acum_Y[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[10]~35_combout\ = ((\calc_offset|muestra_Y\(9) $ (\calc_offset|acum_Y\(10) $ (!\calc_offset|acum_Y[9]~34\)))) # (GND)
-- \calc_offset|acum_Y[10]~36\ = CARRY((\calc_offset|muestra_Y\(9) & ((\calc_offset|acum_Y\(10)) # (!\calc_offset|acum_Y[9]~34\))) # (!\calc_offset|muestra_Y\(9) & (\calc_offset|acum_Y\(10) & !\calc_offset|acum_Y[9]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_Y\(9),
	datab => \calc_offset|acum_Y\(10),
	datad => VCC,
	cin => \calc_offset|acum_Y[9]~34\,
	combout => \calc_offset|acum_Y[10]~35_combout\,
	cout => \calc_offset|acum_Y[10]~36\);

-- Location: FF_X56_Y31_N23
\calc_offset|acum_Y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[10]~35_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(10));

-- Location: LCCOMB_X56_Y31_N24
\calc_offset|acum_Y[11]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[11]~37_combout\ = (\calc_offset|muestra_Y\(9) & ((\calc_offset|acum_Y\(11) & (\calc_offset|acum_Y[10]~36\ & VCC)) # (!\calc_offset|acum_Y\(11) & (!\calc_offset|acum_Y[10]~36\)))) # (!\calc_offset|muestra_Y\(9) & 
-- ((\calc_offset|acum_Y\(11) & (!\calc_offset|acum_Y[10]~36\)) # (!\calc_offset|acum_Y\(11) & ((\calc_offset|acum_Y[10]~36\) # (GND)))))
-- \calc_offset|acum_Y[11]~38\ = CARRY((\calc_offset|muestra_Y\(9) & (!\calc_offset|acum_Y\(11) & !\calc_offset|acum_Y[10]~36\)) # (!\calc_offset|muestra_Y\(9) & ((!\calc_offset|acum_Y[10]~36\) # (!\calc_offset|acum_Y\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_Y\(9),
	datab => \calc_offset|acum_Y\(11),
	datad => VCC,
	cin => \calc_offset|acum_Y[10]~36\,
	combout => \calc_offset|acum_Y[11]~37_combout\,
	cout => \calc_offset|acum_Y[11]~38\);

-- Location: FF_X56_Y31_N25
\calc_offset|acum_Y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[11]~37_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(11));

-- Location: LCCOMB_X56_Y31_N26
\calc_offset|acum_Y[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[12]~39_combout\ = ((\calc_offset|muestra_Y\(9) $ (\calc_offset|acum_Y\(12) $ (!\calc_offset|acum_Y[11]~38\)))) # (GND)
-- \calc_offset|acum_Y[12]~40\ = CARRY((\calc_offset|muestra_Y\(9) & ((\calc_offset|acum_Y\(12)) # (!\calc_offset|acum_Y[11]~38\))) # (!\calc_offset|muestra_Y\(9) & (\calc_offset|acum_Y\(12) & !\calc_offset|acum_Y[11]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_Y\(9),
	datab => \calc_offset|acum_Y\(12),
	datad => VCC,
	cin => \calc_offset|acum_Y[11]~38\,
	combout => \calc_offset|acum_Y[12]~39_combout\,
	cout => \calc_offset|acum_Y[12]~40\);

-- Location: FF_X56_Y31_N27
\calc_offset|acum_Y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[12]~39_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(12));

-- Location: LCCOMB_X56_Y31_N28
\calc_offset|acum_Y[13]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[13]~41_combout\ = (\calc_offset|muestra_Y\(9) & ((\calc_offset|acum_Y\(13) & (\calc_offset|acum_Y[12]~40\ & VCC)) # (!\calc_offset|acum_Y\(13) & (!\calc_offset|acum_Y[12]~40\)))) # (!\calc_offset|muestra_Y\(9) & 
-- ((\calc_offset|acum_Y\(13) & (!\calc_offset|acum_Y[12]~40\)) # (!\calc_offset|acum_Y\(13) & ((\calc_offset|acum_Y[12]~40\) # (GND)))))
-- \calc_offset|acum_Y[13]~42\ = CARRY((\calc_offset|muestra_Y\(9) & (!\calc_offset|acum_Y\(13) & !\calc_offset|acum_Y[12]~40\)) # (!\calc_offset|muestra_Y\(9) & ((!\calc_offset|acum_Y[12]~40\) # (!\calc_offset|acum_Y\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_Y\(9),
	datab => \calc_offset|acum_Y\(13),
	datad => VCC,
	cin => \calc_offset|acum_Y[12]~40\,
	combout => \calc_offset|acum_Y[13]~41_combout\,
	cout => \calc_offset|acum_Y[13]~42\);

-- Location: FF_X56_Y31_N29
\calc_offset|acum_Y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[13]~41_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(13));

-- Location: LCCOMB_X56_Y31_N30
\calc_offset|acum_Y[14]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|acum_Y[14]~43_combout\ = \calc_offset|muestra_Y\(9) $ (\calc_offset|acum_Y[13]~42\ $ (!\calc_offset|acum_Y\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_Y\(9),
	datad => \calc_offset|acum_Y\(14),
	cin => \calc_offset|acum_Y[13]~42\,
	combout => \calc_offset|acum_Y[14]~43_combout\);

-- Location: FF_X56_Y31_N31
\calc_offset|acum_Y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|acum_Y[14]~43_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|ena_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|acum_Y\(14));

-- Location: LCCOMB_X52_Y31_N24
\calc_offset|Y_out_bias[10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Y_out_bias[10]~0_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_Y\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datad => \calc_offset|acum_Y\(14),
	combout => \calc_offset|Y_out_bias[10]~0_combout\);

-- Location: LCCOMB_X52_Y31_N18
\calc_offset|Y_out_bias[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Y_out_bias[8]~1_combout\ = (\calc_offset|acum_Y\(13) & \calc_offset|cnt_rd\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_Y\(13),
	datac => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|Y_out_bias[8]~1_combout\);

-- Location: LCCOMB_X52_Y31_N8
\calc_offset|Y_out_bias[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Y_out_bias[7]~2_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_Y\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datac => \calc_offset|acum_Y\(12),
	combout => \calc_offset|Y_out_bias[7]~2_combout\);

-- Location: LCCOMB_X52_Y31_N22
\calc_offset|Y_out_bias[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Y_out_bias[6]~3_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_Y\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datad => \calc_offset|acum_Y\(11),
	combout => \calc_offset|Y_out_bias[6]~3_combout\);

-- Location: LCCOMB_X52_Y31_N12
\calc_offset|Y_out_bias[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Y_out_bias[5]~4_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_Y\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datac => \calc_offset|acum_Y\(10),
	combout => \calc_offset|Y_out_bias[5]~4_combout\);

-- Location: LCCOMB_X52_Y31_N30
\calc_offset|Y_out_bias[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Y_out_bias[4]~5_combout\ = (\calc_offset|acum_Y\(9) & \calc_offset|cnt_rd\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|acum_Y\(9),
	datac => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|Y_out_bias[4]~5_combout\);

-- Location: LCCOMB_X52_Y31_N20
\calc_offset|Y_out_bias[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Y_out_bias[3]~6_combout\ = (\calc_offset|acum_Y\(8) & \calc_offset|cnt_rd\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|acum_Y\(8),
	datac => \calc_offset|cnt_rd\(7),
	combout => \calc_offset|Y_out_bias[3]~6_combout\);

-- Location: LCCOMB_X52_Y31_N2
\calc_offset|Y_out_bias[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Y_out_bias[2]~7_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_Y\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datac => \calc_offset|acum_Y\(7),
	combout => \calc_offset|Y_out_bias[2]~7_combout\);

-- Location: LCCOMB_X52_Y31_N16
\calc_offset|Y_out_bias[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Y_out_bias[1]~8_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datac => \calc_offset|acum_Y\(6),
	combout => \calc_offset|Y_out_bias[1]~8_combout\);

-- Location: LCCOMB_X52_Y31_N10
\calc_offset|Y_out_bias[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Y_out_bias[0]~9_combout\ = (\calc_offset|cnt_rd\(7) & \calc_offset|acum_Y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datac => \calc_offset|acum_Y\(5),
	combout => \calc_offset|Y_out_bias[0]~9_combout\);

-- Location: M9K_X53_Y31_N0
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "estimador:estimador|altshift_taps:reg_muestra_rtl_0|shift_taps_2im:auto_generated|altsyncram_ofa1:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 22,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \calc_offset|muestra_bias_rdy~q\,
	clr0 => \estimador|reg_muestra_rtl_0|auto_generated|ALT_INV_dffe4~q\,
	portadatain => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\,
	portaaddr => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\,
	portbaddr => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y28_N2
\estimador|dif_X_muestra_N[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[0]~0_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\ & (\calc_offset|X_out_bias[0]~9_combout\ $ (VCC))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\ & 
-- ((\calc_offset|X_out_bias[0]~9_combout\) # (GND)))
-- \estimador|dif_X_muestra_N[0]~1\ = CARRY((\calc_offset|X_out_bias[0]~9_combout\) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\,
	datab => \calc_offset|X_out_bias[0]~9_combout\,
	datad => VCC,
	combout => \estimador|dif_X_muestra_N[0]~0_combout\,
	cout => \estimador|dif_X_muestra_N[0]~1\);

-- Location: LCCOMB_X54_Y28_N4
\estimador|dif_X_muestra_N[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[1]~2_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\ & ((\calc_offset|X_out_bias[1]~8_combout\ & (!\estimador|dif_X_muestra_N[0]~1\)) # (!\calc_offset|X_out_bias[1]~8_combout\ & 
-- ((\estimador|dif_X_muestra_N[0]~1\) # (GND))))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\ & ((\calc_offset|X_out_bias[1]~8_combout\ & (\estimador|dif_X_muestra_N[0]~1\ & VCC)) # (!\calc_offset|X_out_bias[1]~8_combout\ & 
-- (!\estimador|dif_X_muestra_N[0]~1\))))
-- \estimador|dif_X_muestra_N[1]~3\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\ & ((!\estimador|dif_X_muestra_N[0]~1\) # (!\calc_offset|X_out_bias[1]~8_combout\))) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\ & (!\calc_offset|X_out_bias[1]~8_combout\ & !\estimador|dif_X_muestra_N[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\,
	datab => \calc_offset|X_out_bias[1]~8_combout\,
	datad => VCC,
	cin => \estimador|dif_X_muestra_N[0]~1\,
	combout => \estimador|dif_X_muestra_N[1]~2_combout\,
	cout => \estimador|dif_X_muestra_N[1]~3\);

-- Location: LCCOMB_X54_Y28_N6
\estimador|dif_X_muestra_N[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[2]~4_combout\ = ((\calc_offset|X_out_bias[2]~7_combout\ $ (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a8\ $ (\estimador|dif_X_muestra_N[1]~3\)))) # (GND)
-- \estimador|dif_X_muestra_N[2]~5\ = CARRY((\calc_offset|X_out_bias[2]~7_combout\ & ((!\estimador|dif_X_muestra_N[1]~3\) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a8\))) # (!\calc_offset|X_out_bias[2]~7_combout\ & 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a8\ & !\estimador|dif_X_muestra_N[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|X_out_bias[2]~7_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a8\,
	datad => VCC,
	cin => \estimador|dif_X_muestra_N[1]~3\,
	combout => \estimador|dif_X_muestra_N[2]~4_combout\,
	cout => \estimador|dif_X_muestra_N[2]~5\);

-- Location: LCCOMB_X54_Y28_N8
\estimador|dif_X_muestra_N[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[3]~6_combout\ = (\calc_offset|X_out_bias[3]~6_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\ & (!\estimador|dif_X_muestra_N[2]~5\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\ & (\estimador|dif_X_muestra_N[2]~5\ & VCC)))) # (!\calc_offset|X_out_bias[3]~6_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\ & 
-- ((\estimador|dif_X_muestra_N[2]~5\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\ & (!\estimador|dif_X_muestra_N[2]~5\))))
-- \estimador|dif_X_muestra_N[3]~7\ = CARRY((\calc_offset|X_out_bias[3]~6_combout\ & (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\ & !\estimador|dif_X_muestra_N[2]~5\)) # (!\calc_offset|X_out_bias[3]~6_combout\ & 
-- ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\) # (!\estimador|dif_X_muestra_N[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|X_out_bias[3]~6_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\,
	datad => VCC,
	cin => \estimador|dif_X_muestra_N[2]~5\,
	combout => \estimador|dif_X_muestra_N[3]~6_combout\,
	cout => \estimador|dif_X_muestra_N[3]~7\);

-- Location: LCCOMB_X54_Y28_N10
\estimador|dif_X_muestra_N[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[4]~8_combout\ = ((\calc_offset|X_out_bias[4]~5_combout\ $ (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a6\ $ (\estimador|dif_X_muestra_N[3]~7\)))) # (GND)
-- \estimador|dif_X_muestra_N[4]~9\ = CARRY((\calc_offset|X_out_bias[4]~5_combout\ & ((!\estimador|dif_X_muestra_N[3]~7\) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a6\))) # (!\calc_offset|X_out_bias[4]~5_combout\ & 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a6\ & !\estimador|dif_X_muestra_N[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|X_out_bias[4]~5_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a6\,
	datad => VCC,
	cin => \estimador|dif_X_muestra_N[3]~7\,
	combout => \estimador|dif_X_muestra_N[4]~8_combout\,
	cout => \estimador|dif_X_muestra_N[4]~9\);

-- Location: LCCOMB_X54_Y28_N12
\estimador|dif_X_muestra_N[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[5]~10_combout\ = (\calc_offset|X_out_bias[5]~4_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\ & (!\estimador|dif_X_muestra_N[4]~9\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\ & (\estimador|dif_X_muestra_N[4]~9\ & VCC)))) # (!\calc_offset|X_out_bias[5]~4_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\ & 
-- ((\estimador|dif_X_muestra_N[4]~9\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\ & (!\estimador|dif_X_muestra_N[4]~9\))))
-- \estimador|dif_X_muestra_N[5]~11\ = CARRY((\calc_offset|X_out_bias[5]~4_combout\ & (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\ & !\estimador|dif_X_muestra_N[4]~9\)) # (!\calc_offset|X_out_bias[5]~4_combout\ & 
-- ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\) # (!\estimador|dif_X_muestra_N[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|X_out_bias[5]~4_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\,
	datad => VCC,
	cin => \estimador|dif_X_muestra_N[4]~9\,
	combout => \estimador|dif_X_muestra_N[5]~10_combout\,
	cout => \estimador|dif_X_muestra_N[5]~11\);

-- Location: LCCOMB_X54_Y28_N14
\estimador|dif_X_muestra_N[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[6]~12_combout\ = ((\calc_offset|X_out_bias[6]~3_combout\ $ (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a4\ $ (\estimador|dif_X_muestra_N[5]~11\)))) # (GND)
-- \estimador|dif_X_muestra_N[6]~13\ = CARRY((\calc_offset|X_out_bias[6]~3_combout\ & ((!\estimador|dif_X_muestra_N[5]~11\) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a4\))) # (!\calc_offset|X_out_bias[6]~3_combout\ & 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a4\ & !\estimador|dif_X_muestra_N[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|X_out_bias[6]~3_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a4\,
	datad => VCC,
	cin => \estimador|dif_X_muestra_N[5]~11\,
	combout => \estimador|dif_X_muestra_N[6]~12_combout\,
	cout => \estimador|dif_X_muestra_N[6]~13\);

-- Location: LCCOMB_X54_Y28_N16
\estimador|dif_X_muestra_N[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[7]~14_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\ & ((\calc_offset|X_out_bias[7]~2_combout\ & (!\estimador|dif_X_muestra_N[6]~13\)) # (!\calc_offset|X_out_bias[7]~2_combout\ & 
-- ((\estimador|dif_X_muestra_N[6]~13\) # (GND))))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\ & ((\calc_offset|X_out_bias[7]~2_combout\ & (\estimador|dif_X_muestra_N[6]~13\ & VCC)) # (!\calc_offset|X_out_bias[7]~2_combout\ & 
-- (!\estimador|dif_X_muestra_N[6]~13\))))
-- \estimador|dif_X_muestra_N[7]~15\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\ & ((!\estimador|dif_X_muestra_N[6]~13\) # (!\calc_offset|X_out_bias[7]~2_combout\))) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\ & (!\calc_offset|X_out_bias[7]~2_combout\ & !\estimador|dif_X_muestra_N[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\,
	datab => \calc_offset|X_out_bias[7]~2_combout\,
	datad => VCC,
	cin => \estimador|dif_X_muestra_N[6]~13\,
	combout => \estimador|dif_X_muestra_N[7]~14_combout\,
	cout => \estimador|dif_X_muestra_N[7]~15\);

-- Location: LCCOMB_X54_Y28_N18
\estimador|dif_X_muestra_N[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[8]~16_combout\ = ((\calc_offset|X_out_bias[8]~1_combout\ $ (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a2\ $ (\estimador|dif_X_muestra_N[7]~15\)))) # (GND)
-- \estimador|dif_X_muestra_N[8]~17\ = CARRY((\calc_offset|X_out_bias[8]~1_combout\ & ((!\estimador|dif_X_muestra_N[7]~15\) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a2\))) # (!\calc_offset|X_out_bias[8]~1_combout\ & 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a2\ & !\estimador|dif_X_muestra_N[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|X_out_bias[8]~1_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a2\,
	datad => VCC,
	cin => \estimador|dif_X_muestra_N[7]~15\,
	combout => \estimador|dif_X_muestra_N[8]~16_combout\,
	cout => \estimador|dif_X_muestra_N[8]~17\);

-- Location: LCCOMB_X54_Y28_N20
\estimador|dif_X_muestra_N[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[9]~18_combout\ = (\calc_offset|X_out_bias[10]~0_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\ & (!\estimador|dif_X_muestra_N[8]~17\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\ & (\estimador|dif_X_muestra_N[8]~17\ & VCC)))) # (!\calc_offset|X_out_bias[10]~0_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\ & 
-- ((\estimador|dif_X_muestra_N[8]~17\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\ & (!\estimador|dif_X_muestra_N[8]~17\))))
-- \estimador|dif_X_muestra_N[9]~19\ = CARRY((\calc_offset|X_out_bias[10]~0_combout\ & (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\ & !\estimador|dif_X_muestra_N[8]~17\)) # (!\calc_offset|X_out_bias[10]~0_combout\ & 
-- ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\) # (!\estimador|dif_X_muestra_N[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|X_out_bias[10]~0_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\,
	datad => VCC,
	cin => \estimador|dif_X_muestra_N[8]~17\,
	combout => \estimador|dif_X_muestra_N[9]~18_combout\,
	cout => \estimador|dif_X_muestra_N[9]~19\);

-- Location: LCCOMB_X54_Y24_N0
\estimador|X_media_N[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[0]~16_combout\ = (\estimador|X_media_N\(0) & (\estimador|dif_X_muestra_N[0]~0_combout\ $ (VCC))) # (!\estimador|X_media_N\(0) & (\estimador|dif_X_muestra_N[0]~0_combout\ & VCC))
-- \estimador|X_media_N[0]~17\ = CARRY((\estimador|X_media_N\(0) & \estimador|dif_X_muestra_N[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(0),
	datab => \estimador|dif_X_muestra_N[0]~0_combout\,
	datad => VCC,
	combout => \estimador|X_media_N[0]~16_combout\,
	cout => \estimador|X_media_N[0]~17\);

-- Location: FF_X54_Y24_N1
\estimador|X_media_N[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[0]~16_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(0));

-- Location: LCCOMB_X54_Y24_N2
\estimador|X_media_N[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[1]~18_combout\ = (\estimador|dif_X_muestra_N[1]~2_combout\ & ((\estimador|X_media_N\(1) & (\estimador|X_media_N[0]~17\ & VCC)) # (!\estimador|X_media_N\(1) & (!\estimador|X_media_N[0]~17\)))) # 
-- (!\estimador|dif_X_muestra_N[1]~2_combout\ & ((\estimador|X_media_N\(1) & (!\estimador|X_media_N[0]~17\)) # (!\estimador|X_media_N\(1) & ((\estimador|X_media_N[0]~17\) # (GND)))))
-- \estimador|X_media_N[1]~19\ = CARRY((\estimador|dif_X_muestra_N[1]~2_combout\ & (!\estimador|X_media_N\(1) & !\estimador|X_media_N[0]~17\)) # (!\estimador|dif_X_muestra_N[1]~2_combout\ & ((!\estimador|X_media_N[0]~17\) # (!\estimador|X_media_N\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|dif_X_muestra_N[1]~2_combout\,
	datab => \estimador|X_media_N\(1),
	datad => VCC,
	cin => \estimador|X_media_N[0]~17\,
	combout => \estimador|X_media_N[1]~18_combout\,
	cout => \estimador|X_media_N[1]~19\);

-- Location: FF_X54_Y24_N3
\estimador|X_media_N[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[1]~18_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(1));

-- Location: LCCOMB_X54_Y24_N4
\estimador|X_media_N[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[2]~20_combout\ = ((\estimador|dif_X_muestra_N[2]~4_combout\ $ (\estimador|X_media_N\(2) $ (!\estimador|X_media_N[1]~19\)))) # (GND)
-- \estimador|X_media_N[2]~21\ = CARRY((\estimador|dif_X_muestra_N[2]~4_combout\ & ((\estimador|X_media_N\(2)) # (!\estimador|X_media_N[1]~19\))) # (!\estimador|dif_X_muestra_N[2]~4_combout\ & (\estimador|X_media_N\(2) & !\estimador|X_media_N[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|dif_X_muestra_N[2]~4_combout\,
	datab => \estimador|X_media_N\(2),
	datad => VCC,
	cin => \estimador|X_media_N[1]~19\,
	combout => \estimador|X_media_N[2]~20_combout\,
	cout => \estimador|X_media_N[2]~21\);

-- Location: FF_X54_Y24_N5
\estimador|X_media_N[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[2]~20_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(2));

-- Location: LCCOMB_X54_Y24_N6
\estimador|X_media_N[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[3]~22_combout\ = (\estimador|X_media_N\(3) & ((\estimador|dif_X_muestra_N[3]~6_combout\ & (\estimador|X_media_N[2]~21\ & VCC)) # (!\estimador|dif_X_muestra_N[3]~6_combout\ & (!\estimador|X_media_N[2]~21\)))) # 
-- (!\estimador|X_media_N\(3) & ((\estimador|dif_X_muestra_N[3]~6_combout\ & (!\estimador|X_media_N[2]~21\)) # (!\estimador|dif_X_muestra_N[3]~6_combout\ & ((\estimador|X_media_N[2]~21\) # (GND)))))
-- \estimador|X_media_N[3]~23\ = CARRY((\estimador|X_media_N\(3) & (!\estimador|dif_X_muestra_N[3]~6_combout\ & !\estimador|X_media_N[2]~21\)) # (!\estimador|X_media_N\(3) & ((!\estimador|X_media_N[2]~21\) # (!\estimador|dif_X_muestra_N[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(3),
	datab => \estimador|dif_X_muestra_N[3]~6_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[2]~21\,
	combout => \estimador|X_media_N[3]~22_combout\,
	cout => \estimador|X_media_N[3]~23\);

-- Location: FF_X54_Y24_N7
\estimador|X_media_N[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[3]~22_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(3));

-- Location: LCCOMB_X54_Y24_N8
\estimador|X_media_N[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[4]~24_combout\ = ((\estimador|dif_X_muestra_N[4]~8_combout\ $ (\estimador|X_media_N\(4) $ (!\estimador|X_media_N[3]~23\)))) # (GND)
-- \estimador|X_media_N[4]~25\ = CARRY((\estimador|dif_X_muestra_N[4]~8_combout\ & ((\estimador|X_media_N\(4)) # (!\estimador|X_media_N[3]~23\))) # (!\estimador|dif_X_muestra_N[4]~8_combout\ & (\estimador|X_media_N\(4) & !\estimador|X_media_N[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|dif_X_muestra_N[4]~8_combout\,
	datab => \estimador|X_media_N\(4),
	datad => VCC,
	cin => \estimador|X_media_N[3]~23\,
	combout => \estimador|X_media_N[4]~24_combout\,
	cout => \estimador|X_media_N[4]~25\);

-- Location: FF_X54_Y24_N9
\estimador|X_media_N[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[4]~24_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(4));

-- Location: LCCOMB_X54_Y24_N10
\estimador|X_media_N[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[5]~26_combout\ = (\estimador|X_media_N\(5) & ((\estimador|dif_X_muestra_N[5]~10_combout\ & (\estimador|X_media_N[4]~25\ & VCC)) # (!\estimador|dif_X_muestra_N[5]~10_combout\ & (!\estimador|X_media_N[4]~25\)))) # 
-- (!\estimador|X_media_N\(5) & ((\estimador|dif_X_muestra_N[5]~10_combout\ & (!\estimador|X_media_N[4]~25\)) # (!\estimador|dif_X_muestra_N[5]~10_combout\ & ((\estimador|X_media_N[4]~25\) # (GND)))))
-- \estimador|X_media_N[5]~27\ = CARRY((\estimador|X_media_N\(5) & (!\estimador|dif_X_muestra_N[5]~10_combout\ & !\estimador|X_media_N[4]~25\)) # (!\estimador|X_media_N\(5) & ((!\estimador|X_media_N[4]~25\) # (!\estimador|dif_X_muestra_N[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(5),
	datab => \estimador|dif_X_muestra_N[5]~10_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[4]~25\,
	combout => \estimador|X_media_N[5]~26_combout\,
	cout => \estimador|X_media_N[5]~27\);

-- Location: FF_X54_Y24_N11
\estimador|X_media_N[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[5]~26_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(5));

-- Location: LCCOMB_X54_Y24_N12
\estimador|X_media_N[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[6]~28_combout\ = ((\estimador|X_media_N\(6) $ (\estimador|dif_X_muestra_N[6]~12_combout\ $ (!\estimador|X_media_N[5]~27\)))) # (GND)
-- \estimador|X_media_N[6]~29\ = CARRY((\estimador|X_media_N\(6) & ((\estimador|dif_X_muestra_N[6]~12_combout\) # (!\estimador|X_media_N[5]~27\))) # (!\estimador|X_media_N\(6) & (\estimador|dif_X_muestra_N[6]~12_combout\ & !\estimador|X_media_N[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|dif_X_muestra_N[6]~12_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[5]~27\,
	combout => \estimador|X_media_N[6]~28_combout\,
	cout => \estimador|X_media_N[6]~29\);

-- Location: FF_X54_Y24_N13
\estimador|X_media_N[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[6]~28_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(6));

-- Location: LCCOMB_X54_Y24_N14
\estimador|X_media_N[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[7]~30_combout\ = (\estimador|X_media_N\(7) & ((\estimador|dif_X_muestra_N[7]~14_combout\ & (\estimador|X_media_N[6]~29\ & VCC)) # (!\estimador|dif_X_muestra_N[7]~14_combout\ & (!\estimador|X_media_N[6]~29\)))) # 
-- (!\estimador|X_media_N\(7) & ((\estimador|dif_X_muestra_N[7]~14_combout\ & (!\estimador|X_media_N[6]~29\)) # (!\estimador|dif_X_muestra_N[7]~14_combout\ & ((\estimador|X_media_N[6]~29\) # (GND)))))
-- \estimador|X_media_N[7]~31\ = CARRY((\estimador|X_media_N\(7) & (!\estimador|dif_X_muestra_N[7]~14_combout\ & !\estimador|X_media_N[6]~29\)) # (!\estimador|X_media_N\(7) & ((!\estimador|X_media_N[6]~29\) # (!\estimador|dif_X_muestra_N[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(7),
	datab => \estimador|dif_X_muestra_N[7]~14_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[6]~29\,
	combout => \estimador|X_media_N[7]~30_combout\,
	cout => \estimador|X_media_N[7]~31\);

-- Location: FF_X54_Y24_N15
\estimador|X_media_N[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[7]~30_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(7));

-- Location: LCCOMB_X54_Y24_N16
\estimador|X_media_N[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[8]~32_combout\ = ((\estimador|X_media_N\(8) $ (\estimador|dif_X_muestra_N[8]~16_combout\ $ (!\estimador|X_media_N[7]~31\)))) # (GND)
-- \estimador|X_media_N[8]~33\ = CARRY((\estimador|X_media_N\(8) & ((\estimador|dif_X_muestra_N[8]~16_combout\) # (!\estimador|X_media_N[7]~31\))) # (!\estimador|X_media_N\(8) & (\estimador|dif_X_muestra_N[8]~16_combout\ & !\estimador|X_media_N[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(8),
	datab => \estimador|dif_X_muestra_N[8]~16_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[7]~31\,
	combout => \estimador|X_media_N[8]~32_combout\,
	cout => \estimador|X_media_N[8]~33\);

-- Location: FF_X54_Y24_N17
\estimador|X_media_N[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[8]~32_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(8));

-- Location: LCCOMB_X54_Y24_N18
\estimador|X_media_N[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[9]~34_combout\ = (\estimador|dif_X_muestra_N[9]~18_combout\ & ((\estimador|X_media_N\(9) & (\estimador|X_media_N[8]~33\ & VCC)) # (!\estimador|X_media_N\(9) & (!\estimador|X_media_N[8]~33\)))) # 
-- (!\estimador|dif_X_muestra_N[9]~18_combout\ & ((\estimador|X_media_N\(9) & (!\estimador|X_media_N[8]~33\)) # (!\estimador|X_media_N\(9) & ((\estimador|X_media_N[8]~33\) # (GND)))))
-- \estimador|X_media_N[9]~35\ = CARRY((\estimador|dif_X_muestra_N[9]~18_combout\ & (!\estimador|X_media_N\(9) & !\estimador|X_media_N[8]~33\)) # (!\estimador|dif_X_muestra_N[9]~18_combout\ & ((!\estimador|X_media_N[8]~33\) # (!\estimador|X_media_N\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|dif_X_muestra_N[9]~18_combout\,
	datab => \estimador|X_media_N\(9),
	datad => VCC,
	cin => \estimador|X_media_N[8]~33\,
	combout => \estimador|X_media_N[9]~34_combout\,
	cout => \estimador|X_media_N[9]~35\);

-- Location: FF_X54_Y24_N19
\estimador|X_media_N[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[9]~34_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(9));

-- Location: LCCOMB_X52_Y22_N10
\cuantificador|dig_activo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~2_combout\ = (\estimador|X_media_N\(7) & (\estimador|X_media_N\(6) & \estimador|X_media_N\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|X_media_N\(7),
	datac => \estimador|X_media_N\(6),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|dig_activo~2_combout\);

-- Location: LCCOMB_X54_Y28_N22
\estimador|dif_X_muestra_N[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[10]~20_combout\ = ((\calc_offset|X_out_bias[10]~0_combout\ $ (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ $ (\estimador|dif_X_muestra_N[9]~19\)))) # (GND)
-- \estimador|dif_X_muestra_N[10]~21\ = CARRY((\calc_offset|X_out_bias[10]~0_combout\ & ((!\estimador|dif_X_muestra_N[9]~19\) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\))) # (!\calc_offset|X_out_bias[10]~0_combout\ 
-- & (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ & !\estimador|dif_X_muestra_N[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|X_out_bias[10]~0_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\,
	datad => VCC,
	cin => \estimador|dif_X_muestra_N[9]~19\,
	combout => \estimador|dif_X_muestra_N[10]~20_combout\,
	cout => \estimador|dif_X_muestra_N[10]~21\);

-- Location: LCCOMB_X54_Y28_N24
\estimador|dif_X_muestra_N[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_X_muestra_N[11]~22_combout\ = \calc_offset|X_out_bias[10]~0_combout\ $ (\estimador|dif_X_muestra_N[10]~21\ $ (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|X_out_bias[10]~0_combout\,
	datad => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\,
	cin => \estimador|dif_X_muestra_N[10]~21\,
	combout => \estimador|dif_X_muestra_N[11]~22_combout\);

-- Location: LCCOMB_X54_Y24_N20
\estimador|X_media_N[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[10]~36_combout\ = ((\estimador|dif_X_muestra_N[10]~20_combout\ $ (\estimador|X_media_N\(10) $ (!\estimador|X_media_N[9]~35\)))) # (GND)
-- \estimador|X_media_N[10]~37\ = CARRY((\estimador|dif_X_muestra_N[10]~20_combout\ & ((\estimador|X_media_N\(10)) # (!\estimador|X_media_N[9]~35\))) # (!\estimador|dif_X_muestra_N[10]~20_combout\ & (\estimador|X_media_N\(10) & 
-- !\estimador|X_media_N[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|dif_X_muestra_N[10]~20_combout\,
	datab => \estimador|X_media_N\(10),
	datad => VCC,
	cin => \estimador|X_media_N[9]~35\,
	combout => \estimador|X_media_N[10]~36_combout\,
	cout => \estimador|X_media_N[10]~37\);

-- Location: FF_X54_Y24_N21
\estimador|X_media_N[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[10]~36_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(10));

-- Location: LCCOMB_X54_Y24_N22
\estimador|X_media_N[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[11]~38_combout\ = (\estimador|X_media_N\(11) & ((\estimador|dif_X_muestra_N[11]~22_combout\ & (\estimador|X_media_N[10]~37\ & VCC)) # (!\estimador|dif_X_muestra_N[11]~22_combout\ & (!\estimador|X_media_N[10]~37\)))) # 
-- (!\estimador|X_media_N\(11) & ((\estimador|dif_X_muestra_N[11]~22_combout\ & (!\estimador|X_media_N[10]~37\)) # (!\estimador|dif_X_muestra_N[11]~22_combout\ & ((\estimador|X_media_N[10]~37\) # (GND)))))
-- \estimador|X_media_N[11]~39\ = CARRY((\estimador|X_media_N\(11) & (!\estimador|dif_X_muestra_N[11]~22_combout\ & !\estimador|X_media_N[10]~37\)) # (!\estimador|X_media_N\(11) & ((!\estimador|X_media_N[10]~37\) # 
-- (!\estimador|dif_X_muestra_N[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(11),
	datab => \estimador|dif_X_muestra_N[11]~22_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[10]~37\,
	combout => \estimador|X_media_N[11]~38_combout\,
	cout => \estimador|X_media_N[11]~39\);

-- Location: FF_X54_Y24_N23
\estimador|X_media_N[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[11]~38_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(11));

-- Location: LCCOMB_X54_Y24_N24
\estimador|X_media_N[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[12]~40_combout\ = ((\estimador|X_media_N\(12) $ (\estimador|dif_X_muestra_N[11]~22_combout\ $ (!\estimador|X_media_N[11]~39\)))) # (GND)
-- \estimador|X_media_N[12]~41\ = CARRY((\estimador|X_media_N\(12) & ((\estimador|dif_X_muestra_N[11]~22_combout\) # (!\estimador|X_media_N[11]~39\))) # (!\estimador|X_media_N\(12) & (\estimador|dif_X_muestra_N[11]~22_combout\ & 
-- !\estimador|X_media_N[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(12),
	datab => \estimador|dif_X_muestra_N[11]~22_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[11]~39\,
	combout => \estimador|X_media_N[12]~40_combout\,
	cout => \estimador|X_media_N[12]~41\);

-- Location: FF_X54_Y24_N25
\estimador|X_media_N[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[12]~40_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(12));

-- Location: LCCOMB_X54_Y24_N26
\estimador|X_media_N[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[13]~42_combout\ = (\estimador|X_media_N\(13) & ((\estimador|dif_X_muestra_N[11]~22_combout\ & (\estimador|X_media_N[12]~41\ & VCC)) # (!\estimador|dif_X_muestra_N[11]~22_combout\ & (!\estimador|X_media_N[12]~41\)))) # 
-- (!\estimador|X_media_N\(13) & ((\estimador|dif_X_muestra_N[11]~22_combout\ & (!\estimador|X_media_N[12]~41\)) # (!\estimador|dif_X_muestra_N[11]~22_combout\ & ((\estimador|X_media_N[12]~41\) # (GND)))))
-- \estimador|X_media_N[13]~43\ = CARRY((\estimador|X_media_N\(13) & (!\estimador|dif_X_muestra_N[11]~22_combout\ & !\estimador|X_media_N[12]~41\)) # (!\estimador|X_media_N\(13) & ((!\estimador|X_media_N[12]~41\) # 
-- (!\estimador|dif_X_muestra_N[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(13),
	datab => \estimador|dif_X_muestra_N[11]~22_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[12]~41\,
	combout => \estimador|X_media_N[13]~42_combout\,
	cout => \estimador|X_media_N[13]~43\);

-- Location: FF_X54_Y24_N27
\estimador|X_media_N[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[13]~42_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(13));

-- Location: LCCOMB_X54_Y24_N28
\estimador|X_media_N[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[14]~44_combout\ = ((\estimador|X_media_N\(14) $ (\estimador|dif_X_muestra_N[11]~22_combout\ $ (!\estimador|X_media_N[13]~43\)))) # (GND)
-- \estimador|X_media_N[14]~45\ = CARRY((\estimador|X_media_N\(14) & ((\estimador|dif_X_muestra_N[11]~22_combout\) # (!\estimador|X_media_N[13]~43\))) # (!\estimador|X_media_N\(14) & (\estimador|dif_X_muestra_N[11]~22_combout\ & 
-- !\estimador|X_media_N[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(14),
	datab => \estimador|dif_X_muestra_N[11]~22_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[13]~43\,
	combout => \estimador|X_media_N[14]~44_combout\,
	cout => \estimador|X_media_N[14]~45\);

-- Location: FF_X54_Y24_N29
\estimador|X_media_N[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[14]~44_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(14));

-- Location: LCCOMB_X54_Y24_N30
\estimador|X_media_N[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[15]~46_combout\ = \estimador|X_media_N\(15) $ (\estimador|X_media_N[14]~45\ $ (\estimador|dif_X_muestra_N[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(15),
	datad => \estimador|dif_X_muestra_N[11]~22_combout\,
	cin => \estimador|X_media_N[14]~45\,
	combout => \estimador|X_media_N[15]~46_combout\);

-- Location: FF_X54_Y24_N31
\estimador|X_media_N[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[15]~46_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(15));

-- Location: LCCOMB_X54_Y23_N14
\cuantificador|dig_activo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~0_combout\ = (\estimador|X_media_N\(14) & (\estimador|X_media_N\(13) & \estimador|X_media_N\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|X_media_N\(14),
	datac => \estimador|X_media_N\(13),
	datad => \estimador|X_media_N\(11),
	combout => \cuantificador|dig_activo~0_combout\);

-- Location: LCCOMB_X54_Y23_N8
\cuantificador|dig_activo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~1_combout\ = (\estimador|X_media_N\(15) & (\estimador|X_media_N\(10) & (\cuantificador|dig_activo~0_combout\ & \estimador|X_media_N\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(15),
	datab => \estimador|X_media_N\(10),
	datac => \cuantificador|dig_activo~0_combout\,
	datad => \estimador|X_media_N\(12),
	combout => \cuantificador|dig_activo~1_combout\);

-- Location: LCCOMB_X52_Y22_N16
\cuantificador|disp[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~1_combout\ = (\cuantificador|dig_activo~1_combout\ & ((\estimador|X_media_N\(8)) # ((\cuantificador|dig_activo~2_combout\ & \estimador|X_media_N\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~2_combout\,
	datab => \estimador|X_media_N\(4),
	datac => \cuantificador|dig_activo~1_combout\,
	datad => \estimador|X_media_N\(8),
	combout => \cuantificador|disp[0]~1_combout\);

-- Location: LCCOMB_X52_Y22_N2
\cuantificador|disp[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~2_combout\ = (\estimador|X_media_N\(9) & (\estimador|X_media_N\(10) & ((\estimador|X_media_N\(6)) # (\estimador|X_media_N\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(5),
	datac => \estimador|X_media_N\(9),
	datad => \estimador|X_media_N\(10),
	combout => \cuantificador|disp[0]~2_combout\);

-- Location: LCCOMB_X52_Y22_N0
\cuantificador|disp[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~3_combout\ = (\estimador|X_media_N\(8) & (\estimador|X_media_N\(7) & (\estimador|X_media_N\(11) & \cuantificador|disp[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(8),
	datab => \estimador|X_media_N\(7),
	datac => \estimador|X_media_N\(11),
	datad => \cuantificador|disp[0]~2_combout\,
	combout => \cuantificador|disp[0]~3_combout\);

-- Location: LCCOMB_X54_Y23_N30
\cuantificador|disp[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~4_combout\ = (!\cuantificador|disp[0]~3_combout\ & (!\estimador|X_media_N\(14) & (!\estimador|X_media_N\(13) & !\estimador|X_media_N\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|disp[0]~3_combout\,
	datab => \estimador|X_media_N\(14),
	datac => \estimador|X_media_N\(13),
	datad => \estimador|X_media_N\(12),
	combout => \cuantificador|disp[0]~4_combout\);

-- Location: LCCOMB_X52_Y22_N14
\cuantificador|disp[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~5_combout\ = (\estimador|X_media_N\(9) & ((\cuantificador|disp[0]~1_combout\) # ((\cuantificador|disp[0]~4_combout\ & !\estimador|X_media_N\(15))))) # (!\estimador|X_media_N\(9) & (((\cuantificador|disp[0]~4_combout\ & 
-- !\estimador|X_media_N\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(9),
	datab => \cuantificador|disp[0]~1_combout\,
	datac => \cuantificador|disp[0]~4_combout\,
	datad => \estimador|X_media_N\(15),
	combout => \cuantificador|disp[0]~5_combout\);

-- Location: LCCOMB_X54_Y23_N24
\cuantificador|digitos[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos[0]~23_combout\ = (\estimador|X_media_N\(12)) # ((\estimador|X_media_N\(14)) # ((\estimador|X_media_N\(13)) # (\estimador|X_media_N\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(12),
	datab => \estimador|X_media_N\(14),
	datac => \estimador|X_media_N\(13),
	datad => \estimador|X_media_N\(10),
	combout => \cuantificador|digitos[0]~23_combout\);

-- Location: LCCOMB_X52_Y22_N20
\cuantificador|digitos[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos[0]~24_combout\ = (\estimador|X_media_N\(7)) # ((\estimador|X_media_N\(4)) # ((\estimador|X_media_N\(6)) # (\estimador|X_media_N\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(7),
	datab => \estimador|X_media_N\(4),
	datac => \estimador|X_media_N\(6),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|digitos[0]~24_combout\);

-- Location: LCCOMB_X52_Y22_N18
\cuantificador|digitos[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos[0]~25_combout\ = (\cuantificador|digitos[0]~23_combout\) # ((\estimador|X_media_N\(11)) # ((\cuantificador|digitos[0]~24_combout\ & \estimador|X_media_N\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos[0]~23_combout\,
	datab => \cuantificador|digitos[0]~24_combout\,
	datac => \estimador|X_media_N\(11),
	datad => \estimador|X_media_N\(8),
	combout => \cuantificador|digitos[0]~25_combout\);

-- Location: LCCOMB_X52_Y22_N28
\cuantificador|disp[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~0_combout\ = (!\cuantificador|mux_disp\(0) & (!\estimador|X_media_N\(15) & ((\cuantificador|digitos[0]~25_combout\) # (\estimador|X_media_N\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|mux_disp\(0),
	datab => \cuantificador|digitos[0]~25_combout\,
	datac => \estimador|X_media_N\(9),
	datad => \estimador|X_media_N\(15),
	combout => \cuantificador|disp[0]~0_combout\);

-- Location: LCCOMB_X52_Y22_N8
\cuantificador|disp[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~6_combout\ = (\cuantificador|disp[0]~0_combout\) # ((\cuantificador|mux_disp\(0) & (\cuantificador|disp[0]~5_combout\ & \cuantificador|mux_disp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|mux_disp\(0),
	datab => \cuantificador|disp[0]~5_combout\,
	datac => \cuantificador|mux_disp\(1),
	datad => \cuantificador|disp[0]~0_combout\,
	combout => \cuantificador|disp[0]~6_combout\);

-- Location: LCCOMB_X51_Y23_N12
\cuantificador|LessThan13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan13~0_combout\ = (\estimador|X_media_N\(4)) # ((\estimador|X_media_N\(6)) # (\estimador|X_media_N\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|X_media_N\(4),
	datac => \estimador|X_media_N\(6),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|LessThan13~0_combout\);

-- Location: LCCOMB_X51_Y23_N10
\cuantificador|LessThan13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan13~1_combout\ = (\cuantificador|LessThan13~0_combout\ & (\estimador|X_media_N\(8) & \estimador|X_media_N\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan13~0_combout\,
	datab => \estimador|X_media_N\(8),
	datac => \estimador|X_media_N\(7),
	combout => \cuantificador|LessThan13~1_combout\);

-- Location: LCCOMB_X52_Y23_N30
\cuantificador|LessThan13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan13~2_combout\ = (((!\estimador|X_media_N\(9) & !\cuantificador|LessThan13~1_combout\)) # (!\estimador|X_media_N\(10))) # (!\estimador|X_media_N\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(9),
	datab => \estimador|X_media_N\(11),
	datac => \estimador|X_media_N\(10),
	datad => \cuantificador|LessThan13~1_combout\,
	combout => \cuantificador|LessThan13~2_combout\);

-- Location: LCCOMB_X52_Y22_N22
\cuantificador|dig_activo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~3_combout\ = (\cuantificador|LessThan13~2_combout\ & (\cuantificador|disp[0]~4_combout\ & !\estimador|X_media_N\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|LessThan13~2_combout\,
	datac => \cuantificador|disp[0]~4_combout\,
	datad => \estimador|X_media_N\(15),
	combout => \cuantificador|dig_activo~3_combout\);

-- Location: LCCOMB_X52_Y22_N24
\cuantificador|dig_activo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~4_combout\ = (\cuantificador|dig_activo~2_combout\) # ((\estimador|X_media_N\(9)) # (\estimador|X_media_N\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~2_combout\,
	datac => \estimador|X_media_N\(9),
	datad => \estimador|X_media_N\(8),
	combout => \cuantificador|dig_activo~4_combout\);

-- Location: LCCOMB_X52_Y22_N30
\cuantificador|dig_activo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~5_combout\ = (\cuantificador|mux_disp\(2) & ((\cuantificador|dig_activo~3_combout\) # ((\cuantificador|dig_activo~1_combout\ & \cuantificador|dig_activo~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~1_combout\,
	datab => \cuantificador|mux_disp\(2),
	datac => \cuantificador|dig_activo~3_combout\,
	datad => \cuantificador|dig_activo~4_combout\,
	combout => \cuantificador|dig_activo~5_combout\);

-- Location: LCCOMB_X51_Y23_N4
\cuantificador|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan11~0_combout\ = (\estimador|X_media_N\(8) & ((\estimador|X_media_N\(7)) # ((\estimador|X_media_N\(6) & \estimador|X_media_N\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(7),
	datab => \estimador|X_media_N\(8),
	datac => \estimador|X_media_N\(6),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|LessThan11~0_combout\);

-- Location: LCCOMB_X51_Y23_N22
\cuantificador|LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan11~1_combout\ = ((!\estimador|X_media_N\(9) & (!\cuantificador|LessThan11~0_combout\ & !\estimador|X_media_N\(10)))) # (!\estimador|X_media_N\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(11),
	datab => \estimador|X_media_N\(9),
	datac => \cuantificador|LessThan11~0_combout\,
	datad => \estimador|X_media_N\(10),
	combout => \cuantificador|LessThan11~1_combout\);

-- Location: LCCOMB_X52_Y23_N18
\cuantificador|digitos~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~35_combout\ = (\estimador|X_media_N\(8) & \estimador|X_media_N\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(8),
	datac => \estimador|X_media_N\(9),
	combout => \cuantificador|digitos~35_combout\);

-- Location: LCCOMB_X51_Y23_N14
\cuantificador|LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan10~0_combout\ = (!\estimador|X_media_N\(7) & (((!\estimador|X_media_N\(4) & !\estimador|X_media_N\(5))) # (!\estimador|X_media_N\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(4),
	datac => \estimador|X_media_N\(7),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|LessThan10~0_combout\);

-- Location: LCCOMB_X52_Y23_N14
\cuantificador|digitos~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~36_combout\ = (!\estimador|X_media_N\(11) & (((\cuantificador|LessThan10~0_combout\) # (!\estimador|X_media_N\(10))) # (!\cuantificador|digitos~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos~35_combout\,
	datab => \estimador|X_media_N\(11),
	datac => \estimador|X_media_N\(10),
	datad => \cuantificador|LessThan10~0_combout\,
	combout => \cuantificador|digitos~36_combout\);

-- Location: LCCOMB_X52_Y23_N28
\cuantificador|dig_activo~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~11_combout\ = (\cuantificador|mux_disp\(4) & (\cuantificador|LessThan11~1_combout\)) # (!\cuantificador|mux_disp\(4) & (((\cuantificador|mux_disp\(5) & \cuantificador|digitos~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|mux_disp\(4),
	datab => \cuantificador|LessThan11~1_combout\,
	datac => \cuantificador|mux_disp\(5),
	datad => \cuantificador|digitos~36_combout\,
	combout => \cuantificador|dig_activo~11_combout\);

-- Location: LCCOMB_X52_Y23_N24
\cuantificador|dig_activo~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~12_combout\ = (\cuantificador|LessThan13~2_combout\ & (!\estimador|X_media_N\(15) & ((\cuantificador|mux_disp\(3)) # (\cuantificador|dig_activo~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan13~2_combout\,
	datab => \cuantificador|mux_disp\(3),
	datac => \estimador|X_media_N\(15),
	datad => \cuantificador|dig_activo~11_combout\,
	combout => \cuantificador|dig_activo~12_combout\);

-- Location: LCCOMB_X51_Y23_N20
\cuantificador|LessThan12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan12~0_combout\ = (!\estimador|X_media_N\(7) & (((!\estimador|X_media_N\(5)) # (!\estimador|X_media_N\(4))) # (!\estimador|X_media_N\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(4),
	datac => \estimador|X_media_N\(7),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|LessThan12~0_combout\);

-- Location: LCCOMB_X52_Y23_N6
\cuantificador|LessThan12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan12~1_combout\ = ((!\estimador|X_media_N\(10) & ((\cuantificador|LessThan12~0_combout\) # (!\cuantificador|digitos~35_combout\)))) # (!\estimador|X_media_N\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(10),
	datab => \estimador|X_media_N\(11),
	datac => \cuantificador|LessThan12~0_combout\,
	datad => \cuantificador|digitos~35_combout\,
	combout => \cuantificador|LessThan12~1_combout\);

-- Location: LCCOMB_X52_Y23_N2
\cuantificador|dig_activo~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~13_combout\ = (\cuantificador|dig_activo~12_combout\ & (\cuantificador|LessThan12~1_combout\ & (!\cuantificador|mux_disp\(2) & \cuantificador|disp[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~12_combout\,
	datab => \cuantificador|LessThan12~1_combout\,
	datac => \cuantificador|mux_disp\(2),
	datad => \cuantificador|disp[0]~4_combout\,
	combout => \cuantificador|dig_activo~13_combout\);

-- Location: LCCOMB_X52_Y23_N12
\cuantificador|dig_activo~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~9_combout\ = (\cuantificador|LessThan13~2_combout\ & (\cuantificador|LessThan11~1_combout\ & (\cuantificador|LessThan12~1_combout\ & \cuantificador|disp[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan13~2_combout\,
	datab => \cuantificador|LessThan11~1_combout\,
	datac => \cuantificador|LessThan12~1_combout\,
	datad => \cuantificador|disp[0]~4_combout\,
	combout => \cuantificador|dig_activo~9_combout\);

-- Location: LCCOMB_X52_Y22_N12
\cuantificador|digitos~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~32_combout\ = (!\estimador|X_media_N\(9) & (!\estimador|X_media_N\(10) & ((!\estimador|X_media_N\(5)) # (!\estimador|X_media_N\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(5),
	datac => \estimador|X_media_N\(9),
	datad => \estimador|X_media_N\(10),
	combout => \cuantificador|digitos~32_combout\);

-- Location: LCCOMB_X52_Y22_N26
\cuantificador|digitos~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~33_combout\ = (!\estimador|X_media_N\(8) & (!\estimador|X_media_N\(7) & (!\estimador|X_media_N\(11) & \cuantificador|digitos~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(8),
	datab => \estimador|X_media_N\(7),
	datac => \estimador|X_media_N\(11),
	datad => \cuantificador|digitos~32_combout\,
	combout => \cuantificador|digitos~33_combout\);

-- Location: LCCOMB_X54_Y23_N22
\cuantificador|digitos~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~34_combout\ = (\cuantificador|digitos~33_combout\) # (((!\estimador|X_media_N\(12)) # (!\estimador|X_media_N\(13))) # (!\estimador|X_media_N\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos~33_combout\,
	datab => \estimador|X_media_N\(14),
	datac => \estimador|X_media_N\(13),
	datad => \estimador|X_media_N\(12),
	combout => \cuantificador|digitos~34_combout\);

-- Location: LCCOMB_X51_Y23_N18
\cuantificador|digitos~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~9_combout\ = (!\estimador|X_media_N\(5)) # (!\estimador|X_media_N\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|X_media_N\(4),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|digitos~9_combout\);

-- Location: LCCOMB_X51_Y23_N8
\cuantificador|digitos~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~6_combout\ = ((!\estimador|X_media_N\(6) & (!\estimador|X_media_N\(7) & \cuantificador|digitos~9_combout\))) # (!\estimador|X_media_N\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(8),
	datac => \estimador|X_media_N\(7),
	datad => \cuantificador|digitos~9_combout\,
	combout => \cuantificador|digitos~6_combout\);

-- Location: LCCOMB_X54_Y23_N20
\cuantificador|digitos~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~3_combout\ = (!\estimador|X_media_N\(14) & (((!\estimador|X_media_N\(9) & \cuantificador|digitos~6_combout\)) # (!\estimador|X_media_N\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(9),
	datab => \cuantificador|digitos~6_combout\,
	datac => \estimador|X_media_N\(14),
	datad => \estimador|X_media_N\(10),
	combout => \cuantificador|digitos~3_combout\);

-- Location: LCCOMB_X54_Y23_N26
\cuantificador|digitos~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~37_combout\ = (!\estimador|X_media_N\(12) & (\cuantificador|digitos~3_combout\ & (!\estimador|X_media_N\(13) & !\estimador|X_media_N\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(12),
	datab => \cuantificador|digitos~3_combout\,
	datac => \estimador|X_media_N\(13),
	datad => \estimador|X_media_N\(11),
	combout => \cuantificador|digitos~37_combout\);

-- Location: LCCOMB_X54_Y23_N10
\cuantificador|digitos~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~28_combout\ = (\estimador|X_media_N\(14) & (\estimador|X_media_N\(13) & \estimador|X_media_N\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|X_media_N\(14),
	datac => \estimador|X_media_N\(13),
	datad => \estimador|X_media_N\(12),
	combout => \cuantificador|digitos~28_combout\);

-- Location: LCCOMB_X51_Y23_N6
\cuantificador|digitos~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~29_combout\ = (\estimador|X_media_N\(7) & ((\estimador|X_media_N\(6)) # ((\estimador|X_media_N\(4)) # (\estimador|X_media_N\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(4),
	datac => \estimador|X_media_N\(7),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|digitos~29_combout\);

-- Location: LCCOMB_X54_Y23_N4
\cuantificador|digitos~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~30_combout\ = (\estimador|X_media_N\(10) & ((\estimador|X_media_N\(9)) # ((\cuantificador|digitos~29_combout\) # (\estimador|X_media_N\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(9),
	datab => \cuantificador|digitos~29_combout\,
	datac => \estimador|X_media_N\(8),
	datad => \estimador|X_media_N\(10),
	combout => \cuantificador|digitos~30_combout\);

-- Location: LCCOMB_X54_Y23_N18
\cuantificador|digitos~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~31_combout\ = (\cuantificador|digitos~28_combout\ & ((\cuantificador|digitos~30_combout\) # (\estimador|X_media_N\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos~28_combout\,
	datac => \cuantificador|digitos~30_combout\,
	datad => \estimador|X_media_N\(11),
	combout => \cuantificador|digitos~31_combout\);

-- Location: LCCOMB_X54_Y23_N16
\cuantificador|dig_activo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~6_combout\ = (\cuantificador|mux_disp\(6) & ((\estimador|X_media_N\(15) & ((\cuantificador|digitos~31_combout\))) # (!\estimador|X_media_N\(15) & (\cuantificador|digitos~37_combout\)))) # (!\cuantificador|mux_disp\(6) & 
-- (((\estimador|X_media_N\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos~37_combout\,
	datab => \cuantificador|digitos~31_combout\,
	datac => \cuantificador|mux_disp\(6),
	datad => \estimador|X_media_N\(15),
	combout => \cuantificador|dig_activo~6_combout\);

-- Location: LCCOMB_X51_Y23_N16
\cuantificador|digitos~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~26_combout\ = (\estimador|X_media_N\(9) & ((\estimador|X_media_N\(7)) # ((\estimador|X_media_N\(6)) # (\estimador|X_media_N\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(7),
	datab => \estimador|X_media_N\(9),
	datac => \estimador|X_media_N\(6),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|digitos~26_combout\);

-- Location: LCCOMB_X54_Y23_N28
\cuantificador|digitos~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~27_combout\ = (\cuantificador|digitos[0]~23_combout\) # ((\estimador|X_media_N\(11)) # ((\cuantificador|digitos~26_combout\ & \estimador|X_media_N\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos~26_combout\,
	datab => \cuantificador|digitos[0]~23_combout\,
	datac => \estimador|X_media_N\(8),
	datad => \estimador|X_media_N\(11),
	combout => \cuantificador|digitos~27_combout\);

-- Location: LCCOMB_X54_Y23_N12
\cuantificador|dig_activo~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~7_combout\ = (\cuantificador|dig_activo~6_combout\ & (((\cuantificador|mux_disp\(6))) # (!\cuantificador|digitos~34_combout\))) # (!\cuantificador|dig_activo~6_combout\ & (((!\cuantificador|mux_disp\(6) & 
-- !\cuantificador|digitos~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos~34_combout\,
	datab => \cuantificador|dig_activo~6_combout\,
	datac => \cuantificador|mux_disp\(6),
	datad => \cuantificador|digitos~27_combout\,
	combout => \cuantificador|dig_activo~7_combout\);

-- Location: LCCOMB_X52_Y23_N16
\cuantificador|dig_activo~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~8_combout\ = (!\cuantificador|mux_disp\(2) & (!\cuantificador|mux_disp\(4) & (!\cuantificador|mux_disp\(5) & !\cuantificador|mux_disp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|mux_disp\(2),
	datab => \cuantificador|mux_disp\(4),
	datac => \cuantificador|mux_disp\(5),
	datad => \cuantificador|mux_disp\(3),
	combout => \cuantificador|dig_activo~8_combout\);

-- Location: LCCOMB_X52_Y23_N26
\cuantificador|dig_activo~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~10_combout\ = (\cuantificador|dig_activo~7_combout\ & (\cuantificador|dig_activo~8_combout\ & ((\cuantificador|dig_activo~9_combout\) # (\estimador|X_media_N\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~9_combout\,
	datab => \cuantificador|dig_activo~7_combout\,
	datac => \estimador|X_media_N\(15),
	datad => \cuantificador|dig_activo~8_combout\,
	combout => \cuantificador|dig_activo~10_combout\);

-- Location: LCCOMB_X51_Y23_N0
\cuantificador|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan2~0_combout\ = (!\estimador|X_media_N\(8) & (((!\estimador|X_media_N\(6) & !\estimador|X_media_N\(5))) # (!\estimador|X_media_N\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(7),
	datab => \estimador|X_media_N\(8),
	datac => \estimador|X_media_N\(6),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|LessThan2~0_combout\);

-- Location: LCCOMB_X51_Y23_N2
\cuantificador|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan2~1_combout\ = (!\estimador|X_media_N\(11) & ((\cuantificador|LessThan2~0_combout\) # ((!\estimador|X_media_N\(10)) # (!\estimador|X_media_N\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(11),
	datab => \cuantificador|LessThan2~0_combout\,
	datac => \estimador|X_media_N\(9),
	datad => \estimador|X_media_N\(10),
	combout => \cuantificador|LessThan2~1_combout\);

-- Location: LCCOMB_X52_Y23_N22
\cuantificador|dig_activo~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~14_combout\ = (!\cuantificador|mux_disp\(4) & (!\cuantificador|mux_disp\(3) & (\cuantificador|mux_disp\(5) & !\cuantificador|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|mux_disp\(4),
	datab => \cuantificador|mux_disp\(3),
	datac => \cuantificador|mux_disp\(5),
	datad => \cuantificador|LessThan2~1_combout\,
	combout => \cuantificador|dig_activo~14_combout\);

-- Location: LCCOMB_X51_Y23_N24
\cuantificador|dig_activo~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~15_combout\ = (\estimador|X_media_N\(6) & (\estimador|X_media_N\(7) & ((\estimador|X_media_N\(4)) # (\estimador|X_media_N\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(4),
	datac => \estimador|X_media_N\(7),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|dig_activo~15_combout\);

-- Location: LCCOMB_X52_Y23_N4
\cuantificador|dig_activo~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~16_combout\ = (\estimador|X_media_N\(9) & (\cuantificador|mux_disp\(3) & ((\cuantificador|dig_activo~15_combout\) # (\estimador|X_media_N\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(9),
	datab => \cuantificador|dig_activo~15_combout\,
	datac => \cuantificador|mux_disp\(3),
	datad => \estimador|X_media_N\(8),
	combout => \cuantificador|dig_activo~16_combout\);

-- Location: LCCOMB_X51_Y23_N30
\cuantificador|dig_activo~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~17_combout\ = (\estimador|X_media_N\(6)) # ((\estimador|X_media_N\(4) & \estimador|X_media_N\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|X_media_N\(4),
	datac => \estimador|X_media_N\(6),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|dig_activo~17_combout\);

-- Location: LCCOMB_X51_Y23_N28
\cuantificador|dig_activo~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~18_combout\ = (\estimador|X_media_N\(9)) # ((\estimador|X_media_N\(8)) # ((\estimador|X_media_N\(7) & \cuantificador|dig_activo~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(7),
	datab => \estimador|X_media_N\(9),
	datac => \estimador|X_media_N\(8),
	datad => \cuantificador|dig_activo~17_combout\,
	combout => \cuantificador|dig_activo~18_combout\);

-- Location: LCCOMB_X52_Y23_N20
\cuantificador|dig_activo~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~19_combout\ = (\cuantificador|mux_disp\(3) & (\estimador|X_media_N\(10))) # (!\cuantificador|mux_disp\(3) & (\cuantificador|mux_disp\(4) & ((\estimador|X_media_N\(10)) # (\cuantificador|dig_activo~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(10),
	datab => \cuantificador|mux_disp\(3),
	datac => \cuantificador|mux_disp\(4),
	datad => \cuantificador|dig_activo~18_combout\,
	combout => \cuantificador|dig_activo~19_combout\);

-- Location: LCCOMB_X52_Y23_N8
\cuantificador|dig_activo~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~20_combout\ = (\cuantificador|dig_activo~14_combout\) # ((\estimador|X_media_N\(11) & ((\cuantificador|dig_activo~16_combout\) # (\cuantificador|dig_activo~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~14_combout\,
	datab => \estimador|X_media_N\(11),
	datac => \cuantificador|dig_activo~16_combout\,
	datad => \cuantificador|dig_activo~19_combout\,
	combout => \cuantificador|dig_activo~20_combout\);

-- Location: LCCOMB_X52_Y23_N0
\cuantificador|dig_activo~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~21_combout\ = (\cuantificador|dig_activo~20_combout\ & (\estimador|X_media_N\(15) & (!\cuantificador|mux_disp\(2) & \cuantificador|digitos~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~20_combout\,
	datab => \estimador|X_media_N\(15),
	datac => \cuantificador|mux_disp\(2),
	datad => \cuantificador|digitos~28_combout\,
	combout => \cuantificador|dig_activo~21_combout\);

-- Location: LCCOMB_X52_Y23_N10
\cuantificador|dig_activo~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~22_combout\ = (\cuantificador|dig_activo~5_combout\) # ((\cuantificador|dig_activo~13_combout\) # ((\cuantificador|dig_activo~10_combout\) # (\cuantificador|dig_activo~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~5_combout\,
	datab => \cuantificador|dig_activo~13_combout\,
	datac => \cuantificador|dig_activo~10_combout\,
	datad => \cuantificador|dig_activo~21_combout\,
	combout => \cuantificador|dig_activo~22_combout\);

-- Location: LCCOMB_X52_Y22_N4
\cuantificador|disp[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~7_combout\ = (\cuantificador|disp[0]~6_combout\) # ((\cuantificador|mux_disp\(0) & (!\cuantificador|mux_disp\(1) & \cuantificador|dig_activo~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|mux_disp\(0),
	datab => \cuantificador|disp[0]~6_combout\,
	datac => \cuantificador|mux_disp\(1),
	datad => \cuantificador|dig_activo~22_combout\,
	combout => \cuantificador|disp[0]~7_combout\);

-- Location: LCCOMB_X50_Y31_N6
\estimador|dif_Y_muestra_N[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[0]~0_combout\ = (\calc_offset|Y_out_bias[0]~9_combout\ & ((GND) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a21\))) # (!\calc_offset|Y_out_bias[0]~9_combout\ & 
-- (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a21\ $ (GND)))
-- \estimador|dif_Y_muestra_N[0]~1\ = CARRY((\calc_offset|Y_out_bias[0]~9_combout\) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|Y_out_bias[0]~9_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a21\,
	datad => VCC,
	combout => \estimador|dif_Y_muestra_N[0]~0_combout\,
	cout => \estimador|dif_Y_muestra_N[0]~1\);

-- Location: LCCOMB_X50_Y31_N8
\estimador|dif_Y_muestra_N[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[1]~2_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a20\ & ((\calc_offset|Y_out_bias[1]~8_combout\ & (!\estimador|dif_Y_muestra_N[0]~1\)) # (!\calc_offset|Y_out_bias[1]~8_combout\ & 
-- ((\estimador|dif_Y_muestra_N[0]~1\) # (GND))))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a20\ & ((\calc_offset|Y_out_bias[1]~8_combout\ & (\estimador|dif_Y_muestra_N[0]~1\ & VCC)) # (!\calc_offset|Y_out_bias[1]~8_combout\ & 
-- (!\estimador|dif_Y_muestra_N[0]~1\))))
-- \estimador|dif_Y_muestra_N[1]~3\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a20\ & ((!\estimador|dif_Y_muestra_N[0]~1\) # (!\calc_offset|Y_out_bias[1]~8_combout\))) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a20\ & (!\calc_offset|Y_out_bias[1]~8_combout\ & !\estimador|dif_Y_muestra_N[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a20\,
	datab => \calc_offset|Y_out_bias[1]~8_combout\,
	datad => VCC,
	cin => \estimador|dif_Y_muestra_N[0]~1\,
	combout => \estimador|dif_Y_muestra_N[1]~2_combout\,
	cout => \estimador|dif_Y_muestra_N[1]~3\);

-- Location: LCCOMB_X50_Y31_N10
\estimador|dif_Y_muestra_N[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[2]~4_combout\ = ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\ $ (\calc_offset|Y_out_bias[2]~7_combout\ $ (\estimador|dif_Y_muestra_N[1]~3\)))) # (GND)
-- \estimador|dif_Y_muestra_N[2]~5\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\ & (\calc_offset|Y_out_bias[2]~7_combout\ & !\estimador|dif_Y_muestra_N[1]~3\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\ & ((\calc_offset|Y_out_bias[2]~7_combout\) # (!\estimador|dif_Y_muestra_N[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\,
	datab => \calc_offset|Y_out_bias[2]~7_combout\,
	datad => VCC,
	cin => \estimador|dif_Y_muestra_N[1]~3\,
	combout => \estimador|dif_Y_muestra_N[2]~4_combout\,
	cout => \estimador|dif_Y_muestra_N[2]~5\);

-- Location: LCCOMB_X50_Y31_N12
\estimador|dif_Y_muestra_N[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[3]~6_combout\ = (\calc_offset|Y_out_bias[3]~6_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\ & (!\estimador|dif_Y_muestra_N[2]~5\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\ & (\estimador|dif_Y_muestra_N[2]~5\ & VCC)))) # (!\calc_offset|Y_out_bias[3]~6_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\ & 
-- ((\estimador|dif_Y_muestra_N[2]~5\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\ & (!\estimador|dif_Y_muestra_N[2]~5\))))
-- \estimador|dif_Y_muestra_N[3]~7\ = CARRY((\calc_offset|Y_out_bias[3]~6_combout\ & (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\ & !\estimador|dif_Y_muestra_N[2]~5\)) # (!\calc_offset|Y_out_bias[3]~6_combout\ & 
-- ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\) # (!\estimador|dif_Y_muestra_N[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|Y_out_bias[3]~6_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\,
	datad => VCC,
	cin => \estimador|dif_Y_muestra_N[2]~5\,
	combout => \estimador|dif_Y_muestra_N[3]~6_combout\,
	cout => \estimador|dif_Y_muestra_N[3]~7\);

-- Location: LCCOMB_X50_Y31_N14
\estimador|dif_Y_muestra_N[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[4]~8_combout\ = ((\calc_offset|Y_out_bias[4]~5_combout\ $ (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a17\ $ (\estimador|dif_Y_muestra_N[3]~7\)))) # (GND)
-- \estimador|dif_Y_muestra_N[4]~9\ = CARRY((\calc_offset|Y_out_bias[4]~5_combout\ & ((!\estimador|dif_Y_muestra_N[3]~7\) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a17\))) # (!\calc_offset|Y_out_bias[4]~5_combout\ & 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a17\ & !\estimador|dif_Y_muestra_N[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|Y_out_bias[4]~5_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a17\,
	datad => VCC,
	cin => \estimador|dif_Y_muestra_N[3]~7\,
	combout => \estimador|dif_Y_muestra_N[4]~8_combout\,
	cout => \estimador|dif_Y_muestra_N[4]~9\);

-- Location: LCCOMB_X50_Y31_N16
\estimador|dif_Y_muestra_N[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[5]~10_combout\ = (\calc_offset|Y_out_bias[5]~4_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\ & (!\estimador|dif_Y_muestra_N[4]~9\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\ & (\estimador|dif_Y_muestra_N[4]~9\ & VCC)))) # (!\calc_offset|Y_out_bias[5]~4_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\ & 
-- ((\estimador|dif_Y_muestra_N[4]~9\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\ & (!\estimador|dif_Y_muestra_N[4]~9\))))
-- \estimador|dif_Y_muestra_N[5]~11\ = CARRY((\calc_offset|Y_out_bias[5]~4_combout\ & (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\ & !\estimador|dif_Y_muestra_N[4]~9\)) # (!\calc_offset|Y_out_bias[5]~4_combout\ & 
-- ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\) # (!\estimador|dif_Y_muestra_N[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|Y_out_bias[5]~4_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\,
	datad => VCC,
	cin => \estimador|dif_Y_muestra_N[4]~9\,
	combout => \estimador|dif_Y_muestra_N[5]~10_combout\,
	cout => \estimador|dif_Y_muestra_N[5]~11\);

-- Location: LCCOMB_X50_Y31_N18
\estimador|dif_Y_muestra_N[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[6]~12_combout\ = ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a15\ $ (\calc_offset|Y_out_bias[6]~3_combout\ $ (\estimador|dif_Y_muestra_N[5]~11\)))) # (GND)
-- \estimador|dif_Y_muestra_N[6]~13\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a15\ & (\calc_offset|Y_out_bias[6]~3_combout\ & !\estimador|dif_Y_muestra_N[5]~11\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a15\ & ((\calc_offset|Y_out_bias[6]~3_combout\) # (!\estimador|dif_Y_muestra_N[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a15\,
	datab => \calc_offset|Y_out_bias[6]~3_combout\,
	datad => VCC,
	cin => \estimador|dif_Y_muestra_N[5]~11\,
	combout => \estimador|dif_Y_muestra_N[6]~12_combout\,
	cout => \estimador|dif_Y_muestra_N[6]~13\);

-- Location: LCCOMB_X50_Y31_N20
\estimador|dif_Y_muestra_N[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[7]~14_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\ & ((\calc_offset|Y_out_bias[7]~2_combout\ & (!\estimador|dif_Y_muestra_N[6]~13\)) # (!\calc_offset|Y_out_bias[7]~2_combout\ & 
-- ((\estimador|dif_Y_muestra_N[6]~13\) # (GND))))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\ & ((\calc_offset|Y_out_bias[7]~2_combout\ & (\estimador|dif_Y_muestra_N[6]~13\ & VCC)) # (!\calc_offset|Y_out_bias[7]~2_combout\ & 
-- (!\estimador|dif_Y_muestra_N[6]~13\))))
-- \estimador|dif_Y_muestra_N[7]~15\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\ & ((!\estimador|dif_Y_muestra_N[6]~13\) # (!\calc_offset|Y_out_bias[7]~2_combout\))) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\ & (!\calc_offset|Y_out_bias[7]~2_combout\ & !\estimador|dif_Y_muestra_N[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\,
	datab => \calc_offset|Y_out_bias[7]~2_combout\,
	datad => VCC,
	cin => \estimador|dif_Y_muestra_N[6]~13\,
	combout => \estimador|dif_Y_muestra_N[7]~14_combout\,
	cout => \estimador|dif_Y_muestra_N[7]~15\);

-- Location: LCCOMB_X49_Y31_N0
\estimador|Y_media_N[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[0]~16_combout\ = (\estimador|dif_Y_muestra_N[0]~0_combout\ & (\estimador|Y_media_N\(0) $ (VCC))) # (!\estimador|dif_Y_muestra_N[0]~0_combout\ & (\estimador|Y_media_N\(0) & VCC))
-- \estimador|Y_media_N[0]~17\ = CARRY((\estimador|dif_Y_muestra_N[0]~0_combout\ & \estimador|Y_media_N\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|dif_Y_muestra_N[0]~0_combout\,
	datab => \estimador|Y_media_N\(0),
	datad => VCC,
	combout => \estimador|Y_media_N[0]~16_combout\,
	cout => \estimador|Y_media_N[0]~17\);

-- Location: FF_X49_Y31_N1
\estimador|Y_media_N[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[0]~16_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(0));

-- Location: LCCOMB_X49_Y31_N2
\estimador|Y_media_N[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[1]~18_combout\ = (\estimador|Y_media_N\(1) & ((\estimador|dif_Y_muestra_N[1]~2_combout\ & (\estimador|Y_media_N[0]~17\ & VCC)) # (!\estimador|dif_Y_muestra_N[1]~2_combout\ & (!\estimador|Y_media_N[0]~17\)))) # 
-- (!\estimador|Y_media_N\(1) & ((\estimador|dif_Y_muestra_N[1]~2_combout\ & (!\estimador|Y_media_N[0]~17\)) # (!\estimador|dif_Y_muestra_N[1]~2_combout\ & ((\estimador|Y_media_N[0]~17\) # (GND)))))
-- \estimador|Y_media_N[1]~19\ = CARRY((\estimador|Y_media_N\(1) & (!\estimador|dif_Y_muestra_N[1]~2_combout\ & !\estimador|Y_media_N[0]~17\)) # (!\estimador|Y_media_N\(1) & ((!\estimador|Y_media_N[0]~17\) # (!\estimador|dif_Y_muestra_N[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(1),
	datab => \estimador|dif_Y_muestra_N[1]~2_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[0]~17\,
	combout => \estimador|Y_media_N[1]~18_combout\,
	cout => \estimador|Y_media_N[1]~19\);

-- Location: FF_X49_Y31_N3
\estimador|Y_media_N[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[1]~18_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(1));

-- Location: LCCOMB_X49_Y31_N4
\estimador|Y_media_N[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[2]~20_combout\ = ((\estimador|dif_Y_muestra_N[2]~4_combout\ $ (\estimador|Y_media_N\(2) $ (!\estimador|Y_media_N[1]~19\)))) # (GND)
-- \estimador|Y_media_N[2]~21\ = CARRY((\estimador|dif_Y_muestra_N[2]~4_combout\ & ((\estimador|Y_media_N\(2)) # (!\estimador|Y_media_N[1]~19\))) # (!\estimador|dif_Y_muestra_N[2]~4_combout\ & (\estimador|Y_media_N\(2) & !\estimador|Y_media_N[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|dif_Y_muestra_N[2]~4_combout\,
	datab => \estimador|Y_media_N\(2),
	datad => VCC,
	cin => \estimador|Y_media_N[1]~19\,
	combout => \estimador|Y_media_N[2]~20_combout\,
	cout => \estimador|Y_media_N[2]~21\);

-- Location: FF_X49_Y31_N5
\estimador|Y_media_N[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[2]~20_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(2));

-- Location: LCCOMB_X49_Y31_N6
\estimador|Y_media_N[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[3]~22_combout\ = (\estimador|Y_media_N\(3) & ((\estimador|dif_Y_muestra_N[3]~6_combout\ & (\estimador|Y_media_N[2]~21\ & VCC)) # (!\estimador|dif_Y_muestra_N[3]~6_combout\ & (!\estimador|Y_media_N[2]~21\)))) # 
-- (!\estimador|Y_media_N\(3) & ((\estimador|dif_Y_muestra_N[3]~6_combout\ & (!\estimador|Y_media_N[2]~21\)) # (!\estimador|dif_Y_muestra_N[3]~6_combout\ & ((\estimador|Y_media_N[2]~21\) # (GND)))))
-- \estimador|Y_media_N[3]~23\ = CARRY((\estimador|Y_media_N\(3) & (!\estimador|dif_Y_muestra_N[3]~6_combout\ & !\estimador|Y_media_N[2]~21\)) # (!\estimador|Y_media_N\(3) & ((!\estimador|Y_media_N[2]~21\) # (!\estimador|dif_Y_muestra_N[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(3),
	datab => \estimador|dif_Y_muestra_N[3]~6_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[2]~21\,
	combout => \estimador|Y_media_N[3]~22_combout\,
	cout => \estimador|Y_media_N[3]~23\);

-- Location: FF_X49_Y31_N7
\estimador|Y_media_N[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[3]~22_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(3));

-- Location: LCCOMB_X49_Y31_N8
\estimador|Y_media_N[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[4]~24_combout\ = ((\estimador|Y_media_N\(4) $ (\estimador|dif_Y_muestra_N[4]~8_combout\ $ (!\estimador|Y_media_N[3]~23\)))) # (GND)
-- \estimador|Y_media_N[4]~25\ = CARRY((\estimador|Y_media_N\(4) & ((\estimador|dif_Y_muestra_N[4]~8_combout\) # (!\estimador|Y_media_N[3]~23\))) # (!\estimador|Y_media_N\(4) & (\estimador|dif_Y_muestra_N[4]~8_combout\ & !\estimador|Y_media_N[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(4),
	datab => \estimador|dif_Y_muestra_N[4]~8_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[3]~23\,
	combout => \estimador|Y_media_N[4]~24_combout\,
	cout => \estimador|Y_media_N[4]~25\);

-- Location: FF_X49_Y31_N9
\estimador|Y_media_N[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[4]~24_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(4));

-- Location: LCCOMB_X49_Y31_N10
\estimador|Y_media_N[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[5]~26_combout\ = (\estimador|Y_media_N\(5) & ((\estimador|dif_Y_muestra_N[5]~10_combout\ & (\estimador|Y_media_N[4]~25\ & VCC)) # (!\estimador|dif_Y_muestra_N[5]~10_combout\ & (!\estimador|Y_media_N[4]~25\)))) # 
-- (!\estimador|Y_media_N\(5) & ((\estimador|dif_Y_muestra_N[5]~10_combout\ & (!\estimador|Y_media_N[4]~25\)) # (!\estimador|dif_Y_muestra_N[5]~10_combout\ & ((\estimador|Y_media_N[4]~25\) # (GND)))))
-- \estimador|Y_media_N[5]~27\ = CARRY((\estimador|Y_media_N\(5) & (!\estimador|dif_Y_muestra_N[5]~10_combout\ & !\estimador|Y_media_N[4]~25\)) # (!\estimador|Y_media_N\(5) & ((!\estimador|Y_media_N[4]~25\) # (!\estimador|dif_Y_muestra_N[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(5),
	datab => \estimador|dif_Y_muestra_N[5]~10_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[4]~25\,
	combout => \estimador|Y_media_N[5]~26_combout\,
	cout => \estimador|Y_media_N[5]~27\);

-- Location: FF_X49_Y31_N11
\estimador|Y_media_N[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[5]~26_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(5));

-- Location: LCCOMB_X49_Y31_N12
\estimador|Y_media_N[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[6]~28_combout\ = ((\estimador|Y_media_N\(6) $ (\estimador|dif_Y_muestra_N[6]~12_combout\ $ (!\estimador|Y_media_N[5]~27\)))) # (GND)
-- \estimador|Y_media_N[6]~29\ = CARRY((\estimador|Y_media_N\(6) & ((\estimador|dif_Y_muestra_N[6]~12_combout\) # (!\estimador|Y_media_N[5]~27\))) # (!\estimador|Y_media_N\(6) & (\estimador|dif_Y_muestra_N[6]~12_combout\ & !\estimador|Y_media_N[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(6),
	datab => \estimador|dif_Y_muestra_N[6]~12_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[5]~27\,
	combout => \estimador|Y_media_N[6]~28_combout\,
	cout => \estimador|Y_media_N[6]~29\);

-- Location: FF_X49_Y31_N13
\estimador|Y_media_N[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[6]~28_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(6));

-- Location: LCCOMB_X49_Y31_N14
\estimador|Y_media_N[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[7]~30_combout\ = (\estimador|dif_Y_muestra_N[7]~14_combout\ & ((\estimador|Y_media_N\(7) & (\estimador|Y_media_N[6]~29\ & VCC)) # (!\estimador|Y_media_N\(7) & (!\estimador|Y_media_N[6]~29\)))) # 
-- (!\estimador|dif_Y_muestra_N[7]~14_combout\ & ((\estimador|Y_media_N\(7) & (!\estimador|Y_media_N[6]~29\)) # (!\estimador|Y_media_N\(7) & ((\estimador|Y_media_N[6]~29\) # (GND)))))
-- \estimador|Y_media_N[7]~31\ = CARRY((\estimador|dif_Y_muestra_N[7]~14_combout\ & (!\estimador|Y_media_N\(7) & !\estimador|Y_media_N[6]~29\)) # (!\estimador|dif_Y_muestra_N[7]~14_combout\ & ((!\estimador|Y_media_N[6]~29\) # (!\estimador|Y_media_N\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|dif_Y_muestra_N[7]~14_combout\,
	datab => \estimador|Y_media_N\(7),
	datad => VCC,
	cin => \estimador|Y_media_N[6]~29\,
	combout => \estimador|Y_media_N[7]~30_combout\,
	cout => \estimador|Y_media_N[7]~31\);

-- Location: FF_X49_Y31_N15
\estimador|Y_media_N[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[7]~30_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(7));

-- Location: LCCOMB_X41_Y35_N6
\cuantificador|leds[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[0]~7_combout\ = (\estimador|Y_media_N\(7)) # ((\estimador|Y_media_N\(6)) # ((\estimador|Y_media_N\(5)) # (\estimador|Y_media_N\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(4),
	combout => \cuantificador|leds[0]~7_combout\);

-- Location: LCCOMB_X50_Y31_N22
\estimador|dif_Y_muestra_N[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[8]~16_combout\ = ((\calc_offset|Y_out_bias[8]~1_combout\ $ (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a13\ $ (\estimador|dif_Y_muestra_N[7]~15\)))) # (GND)
-- \estimador|dif_Y_muestra_N[8]~17\ = CARRY((\calc_offset|Y_out_bias[8]~1_combout\ & ((!\estimador|dif_Y_muestra_N[7]~15\) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a13\))) # (!\calc_offset|Y_out_bias[8]~1_combout\ & 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a13\ & !\estimador|dif_Y_muestra_N[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|Y_out_bias[8]~1_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a13\,
	datad => VCC,
	cin => \estimador|dif_Y_muestra_N[7]~15\,
	combout => \estimador|dif_Y_muestra_N[8]~16_combout\,
	cout => \estimador|dif_Y_muestra_N[8]~17\);

-- Location: LCCOMB_X50_Y31_N24
\estimador|dif_Y_muestra_N[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[9]~18_combout\ = (\calc_offset|Y_out_bias[10]~0_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\ & (!\estimador|dif_Y_muestra_N[8]~17\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\ & (\estimador|dif_Y_muestra_N[8]~17\ & VCC)))) # (!\calc_offset|Y_out_bias[10]~0_combout\ & ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\ & 
-- ((\estimador|dif_Y_muestra_N[8]~17\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\ & (!\estimador|dif_Y_muestra_N[8]~17\))))
-- \estimador|dif_Y_muestra_N[9]~19\ = CARRY((\calc_offset|Y_out_bias[10]~0_combout\ & (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\ & !\estimador|dif_Y_muestra_N[8]~17\)) # (!\calc_offset|Y_out_bias[10]~0_combout\ & 
-- ((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\) # (!\estimador|dif_Y_muestra_N[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|Y_out_bias[10]~0_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\,
	datad => VCC,
	cin => \estimador|dif_Y_muestra_N[8]~17\,
	combout => \estimador|dif_Y_muestra_N[9]~18_combout\,
	cout => \estimador|dif_Y_muestra_N[9]~19\);

-- Location: LCCOMB_X50_Y31_N26
\estimador|dif_Y_muestra_N[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[10]~20_combout\ = ((\calc_offset|Y_out_bias[10]~0_combout\ $ (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\ $ (\estimador|dif_Y_muestra_N[9]~19\)))) # (GND)
-- \estimador|dif_Y_muestra_N[10]~21\ = CARRY((\calc_offset|Y_out_bias[10]~0_combout\ & ((!\estimador|dif_Y_muestra_N[9]~19\) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\))) # (!\calc_offset|Y_out_bias[10]~0_combout\ & 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\ & !\estimador|dif_Y_muestra_N[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|Y_out_bias[10]~0_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\,
	datad => VCC,
	cin => \estimador|dif_Y_muestra_N[9]~19\,
	combout => \estimador|dif_Y_muestra_N[10]~20_combout\,
	cout => \estimador|dif_Y_muestra_N[10]~21\);

-- Location: LCCOMB_X50_Y31_N28
\estimador|dif_Y_muestra_N[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|dif_Y_muestra_N[11]~22_combout\ = \calc_offset|Y_out_bias[10]~0_combout\ $ (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\ $ (!\estimador|dif_Y_muestra_N[10]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|Y_out_bias[10]~0_combout\,
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\,
	cin => \estimador|dif_Y_muestra_N[10]~21\,
	combout => \estimador|dif_Y_muestra_N[11]~22_combout\);

-- Location: LCCOMB_X49_Y31_N16
\estimador|Y_media_N[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[8]~32_combout\ = ((\estimador|Y_media_N\(8) $ (\estimador|dif_Y_muestra_N[8]~16_combout\ $ (!\estimador|Y_media_N[7]~31\)))) # (GND)
-- \estimador|Y_media_N[8]~33\ = CARRY((\estimador|Y_media_N\(8) & ((\estimador|dif_Y_muestra_N[8]~16_combout\) # (!\estimador|Y_media_N[7]~31\))) # (!\estimador|Y_media_N\(8) & (\estimador|dif_Y_muestra_N[8]~16_combout\ & !\estimador|Y_media_N[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(8),
	datab => \estimador|dif_Y_muestra_N[8]~16_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[7]~31\,
	combout => \estimador|Y_media_N[8]~32_combout\,
	cout => \estimador|Y_media_N[8]~33\);

-- Location: FF_X49_Y31_N17
\estimador|Y_media_N[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[8]~32_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(8));

-- Location: LCCOMB_X49_Y31_N18
\estimador|Y_media_N[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[9]~34_combout\ = (\estimador|Y_media_N\(9) & ((\estimador|dif_Y_muestra_N[9]~18_combout\ & (\estimador|Y_media_N[8]~33\ & VCC)) # (!\estimador|dif_Y_muestra_N[9]~18_combout\ & (!\estimador|Y_media_N[8]~33\)))) # 
-- (!\estimador|Y_media_N\(9) & ((\estimador|dif_Y_muestra_N[9]~18_combout\ & (!\estimador|Y_media_N[8]~33\)) # (!\estimador|dif_Y_muestra_N[9]~18_combout\ & ((\estimador|Y_media_N[8]~33\) # (GND)))))
-- \estimador|Y_media_N[9]~35\ = CARRY((\estimador|Y_media_N\(9) & (!\estimador|dif_Y_muestra_N[9]~18_combout\ & !\estimador|Y_media_N[8]~33\)) # (!\estimador|Y_media_N\(9) & ((!\estimador|Y_media_N[8]~33\) # (!\estimador|dif_Y_muestra_N[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(9),
	datab => \estimador|dif_Y_muestra_N[9]~18_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[8]~33\,
	combout => \estimador|Y_media_N[9]~34_combout\,
	cout => \estimador|Y_media_N[9]~35\);

-- Location: FF_X49_Y31_N19
\estimador|Y_media_N[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[9]~34_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(9));

-- Location: LCCOMB_X49_Y31_N20
\estimador|Y_media_N[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[10]~36_combout\ = ((\estimador|Y_media_N\(10) $ (\estimador|dif_Y_muestra_N[10]~20_combout\ $ (!\estimador|Y_media_N[9]~35\)))) # (GND)
-- \estimador|Y_media_N[10]~37\ = CARRY((\estimador|Y_media_N\(10) & ((\estimador|dif_Y_muestra_N[10]~20_combout\) # (!\estimador|Y_media_N[9]~35\))) # (!\estimador|Y_media_N\(10) & (\estimador|dif_Y_muestra_N[10]~20_combout\ & 
-- !\estimador|Y_media_N[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(10),
	datab => \estimador|dif_Y_muestra_N[10]~20_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[9]~35\,
	combout => \estimador|Y_media_N[10]~36_combout\,
	cout => \estimador|Y_media_N[10]~37\);

-- Location: FF_X49_Y31_N21
\estimador|Y_media_N[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[10]~36_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(10));

-- Location: LCCOMB_X49_Y31_N22
\estimador|Y_media_N[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[11]~38_combout\ = (\estimador|Y_media_N\(11) & ((\estimador|dif_Y_muestra_N[11]~22_combout\ & (\estimador|Y_media_N[10]~37\ & VCC)) # (!\estimador|dif_Y_muestra_N[11]~22_combout\ & (!\estimador|Y_media_N[10]~37\)))) # 
-- (!\estimador|Y_media_N\(11) & ((\estimador|dif_Y_muestra_N[11]~22_combout\ & (!\estimador|Y_media_N[10]~37\)) # (!\estimador|dif_Y_muestra_N[11]~22_combout\ & ((\estimador|Y_media_N[10]~37\) # (GND)))))
-- \estimador|Y_media_N[11]~39\ = CARRY((\estimador|Y_media_N\(11) & (!\estimador|dif_Y_muestra_N[11]~22_combout\ & !\estimador|Y_media_N[10]~37\)) # (!\estimador|Y_media_N\(11) & ((!\estimador|Y_media_N[10]~37\) # 
-- (!\estimador|dif_Y_muestra_N[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(11),
	datab => \estimador|dif_Y_muestra_N[11]~22_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[10]~37\,
	combout => \estimador|Y_media_N[11]~38_combout\,
	cout => \estimador|Y_media_N[11]~39\);

-- Location: FF_X49_Y31_N23
\estimador|Y_media_N[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[11]~38_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(11));

-- Location: LCCOMB_X49_Y31_N24
\estimador|Y_media_N[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[12]~40_combout\ = ((\estimador|Y_media_N\(12) $ (\estimador|dif_Y_muestra_N[11]~22_combout\ $ (!\estimador|Y_media_N[11]~39\)))) # (GND)
-- \estimador|Y_media_N[12]~41\ = CARRY((\estimador|Y_media_N\(12) & ((\estimador|dif_Y_muestra_N[11]~22_combout\) # (!\estimador|Y_media_N[11]~39\))) # (!\estimador|Y_media_N\(12) & (\estimador|dif_Y_muestra_N[11]~22_combout\ & 
-- !\estimador|Y_media_N[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(12),
	datab => \estimador|dif_Y_muestra_N[11]~22_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[11]~39\,
	combout => \estimador|Y_media_N[12]~40_combout\,
	cout => \estimador|Y_media_N[12]~41\);

-- Location: FF_X49_Y31_N25
\estimador|Y_media_N[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[12]~40_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(12));

-- Location: LCCOMB_X49_Y31_N26
\estimador|Y_media_N[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[13]~42_combout\ = (\estimador|Y_media_N\(13) & ((\estimador|dif_Y_muestra_N[11]~22_combout\ & (\estimador|Y_media_N[12]~41\ & VCC)) # (!\estimador|dif_Y_muestra_N[11]~22_combout\ & (!\estimador|Y_media_N[12]~41\)))) # 
-- (!\estimador|Y_media_N\(13) & ((\estimador|dif_Y_muestra_N[11]~22_combout\ & (!\estimador|Y_media_N[12]~41\)) # (!\estimador|dif_Y_muestra_N[11]~22_combout\ & ((\estimador|Y_media_N[12]~41\) # (GND)))))
-- \estimador|Y_media_N[13]~43\ = CARRY((\estimador|Y_media_N\(13) & (!\estimador|dif_Y_muestra_N[11]~22_combout\ & !\estimador|Y_media_N[12]~41\)) # (!\estimador|Y_media_N\(13) & ((!\estimador|Y_media_N[12]~41\) # 
-- (!\estimador|dif_Y_muestra_N[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(13),
	datab => \estimador|dif_Y_muestra_N[11]~22_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[12]~41\,
	combout => \estimador|Y_media_N[13]~42_combout\,
	cout => \estimador|Y_media_N[13]~43\);

-- Location: FF_X49_Y31_N27
\estimador|Y_media_N[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[13]~42_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(13));

-- Location: LCCOMB_X49_Y31_N28
\estimador|Y_media_N[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[14]~44_combout\ = ((\estimador|Y_media_N\(14) $ (\estimador|dif_Y_muestra_N[11]~22_combout\ $ (!\estimador|Y_media_N[13]~43\)))) # (GND)
-- \estimador|Y_media_N[14]~45\ = CARRY((\estimador|Y_media_N\(14) & ((\estimador|dif_Y_muestra_N[11]~22_combout\) # (!\estimador|Y_media_N[13]~43\))) # (!\estimador|Y_media_N\(14) & (\estimador|dif_Y_muestra_N[11]~22_combout\ & 
-- !\estimador|Y_media_N[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(14),
	datab => \estimador|dif_Y_muestra_N[11]~22_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[13]~43\,
	combout => \estimador|Y_media_N[14]~44_combout\,
	cout => \estimador|Y_media_N[14]~45\);

-- Location: FF_X49_Y31_N29
\estimador|Y_media_N[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[14]~44_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(14));

-- Location: LCCOMB_X49_Y31_N30
\estimador|Y_media_N[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[15]~46_combout\ = \estimador|Y_media_N\(15) $ (\estimador|Y_media_N[14]~45\ $ (\estimador|dif_Y_muestra_N[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(15),
	datad => \estimador|dif_Y_muestra_N[11]~22_combout\,
	cin => \estimador|Y_media_N[14]~45\,
	combout => \estimador|Y_media_N[15]~46_combout\);

-- Location: FF_X49_Y31_N31
\estimador|Y_media_N[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[15]~46_combout\,
	clrn => \nRst~input_o\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(15));

-- Location: LCCOMB_X42_Y35_N4
\cuantificador|leds[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[2]~5_combout\ = (!\estimador|Y_media_N\(13) & (!\estimador|Y_media_N\(14) & !\estimador|Y_media_N\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|Y_media_N\(13),
	datac => \estimador|Y_media_N\(14),
	datad => \estimador|Y_media_N\(12),
	combout => \cuantificador|leds[2]~5_combout\);

-- Location: LCCOMB_X40_Y35_N0
\cuantificador|LessThan25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan25~0_combout\ = (\estimador|Y_media_N\(8) & \estimador|Y_media_N\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estimador|Y_media_N\(8),
	datad => \estimador|Y_media_N\(9),
	combout => \cuantificador|LessThan25~0_combout\);

-- Location: LCCOMB_X41_Y35_N16
\cuantificador|LessThan23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan23~0_combout\ = (!\estimador|Y_media_N\(6) & (!\estimador|Y_media_N\(5) & !\estimador|Y_media_N\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(7),
	combout => \cuantificador|LessThan23~0_combout\);

-- Location: LCCOMB_X40_Y35_N18
\cuantificador|leds[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[7]~4_combout\ = (!\estimador|Y_media_N\(11) & (!\estimador|Y_media_N\(10) & ((\cuantificador|LessThan23~0_combout\) # (!\cuantificador|LessThan25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan25~0_combout\,
	datab => \estimador|Y_media_N\(11),
	datac => \estimador|Y_media_N\(10),
	datad => \cuantificador|LessThan23~0_combout\,
	combout => \cuantificador|leds[7]~4_combout\);

-- Location: LCCOMB_X40_Y35_N20
\cuantificador|leds[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[0]~6_combout\ = (\estimador|Y_media_N\(9)) # ((!\cuantificador|leds[7]~4_combout\) # (!\cuantificador|leds[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(9),
	datac => \cuantificador|leds[2]~5_combout\,
	datad => \cuantificador|leds[7]~4_combout\,
	combout => \cuantificador|leds[0]~6_combout\);

-- Location: LCCOMB_X40_Y35_N2
\cuantificador|leds[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[0]~8_combout\ = (!\estimador|Y_media_N\(15) & ((\cuantificador|leds[0]~6_combout\) # ((\cuantificador|leds[0]~7_combout\ & \estimador|Y_media_N\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[0]~7_combout\,
	datab => \estimador|Y_media_N\(15),
	datac => \estimador|Y_media_N\(8),
	datad => \cuantificador|leds[0]~6_combout\,
	combout => \cuantificador|leds[0]~8_combout\);

-- Location: LCCOMB_X41_Y35_N14
\cuantificador|leds[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[1]~12_combout\ = (\estimador|Y_media_N\(7) & (\estimador|Y_media_N\(6) & (\estimador|Y_media_N\(5) & \estimador|Y_media_N\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(4),
	combout => \cuantificador|leds[1]~12_combout\);

-- Location: LCCOMB_X42_Y35_N20
\cuantificador|LessThan28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan28~0_combout\ = (\estimador|Y_media_N\(10) & \estimador|Y_media_N\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|Y_media_N\(10),
	datac => \estimador|Y_media_N\(11),
	combout => \cuantificador|LessThan28~0_combout\);

-- Location: LCCOMB_X42_Y35_N8
\cuantificador|leds[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[5]~11_combout\ = (\estimador|Y_media_N\(14) & (\estimador|Y_media_N\(13) & (\estimador|Y_media_N\(15) & \estimador|Y_media_N\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(14),
	datab => \estimador|Y_media_N\(13),
	datac => \estimador|Y_media_N\(15),
	datad => \estimador|Y_media_N\(12),
	combout => \cuantificador|leds[5]~11_combout\);

-- Location: LCCOMB_X42_Y35_N2
\cuantificador|leds[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[1]~13_combout\ = (\cuantificador|LessThan28~0_combout\ & (\cuantificador|leds[5]~11_combout\ & ((\cuantificador|leds[1]~12_combout\) # (\estimador|Y_media_N\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[1]~12_combout\,
	datab => \cuantificador|LessThan28~0_combout\,
	datac => \estimador|Y_media_N\(8),
	datad => \cuantificador|leds[5]~11_combout\,
	combout => \cuantificador|leds[1]~13_combout\);

-- Location: LCCOMB_X41_Y35_N0
\cuantificador|LessThan29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan29~0_combout\ = (\estimador|Y_media_N\(7) & ((\estimador|Y_media_N\(6)) # (\estimador|Y_media_N\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(7),
	combout => \cuantificador|LessThan29~0_combout\);

-- Location: LCCOMB_X42_Y35_N6
\cuantificador|leds[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[2]~9_combout\ = (!\estimador|Y_media_N\(14) & (!\estimador|Y_media_N\(13) & (!\estimador|Y_media_N\(15) & !\estimador|Y_media_N\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(14),
	datab => \estimador|Y_media_N\(13),
	datac => \estimador|Y_media_N\(15),
	datad => \estimador|Y_media_N\(12),
	combout => \cuantificador|leds[2]~9_combout\);

-- Location: LCCOMB_X42_Y35_N14
\cuantificador|leds[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[2]~10_combout\ = (\cuantificador|leds[2]~9_combout\ & (((!\cuantificador|LessThan25~0_combout\) # (!\cuantificador|LessThan28~0_combout\)) # (!\cuantificador|LessThan29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan29~0_combout\,
	datab => \cuantificador|LessThan28~0_combout\,
	datac => \cuantificador|LessThan25~0_combout\,
	datad => \cuantificador|leds[2]~9_combout\,
	combout => \cuantificador|leds[2]~10_combout\);

-- Location: LCCOMB_X43_Y35_N4
\cuantificador|leds[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[1]~14_combout\ = (\cuantificador|leds[2]~10_combout\) # ((\cuantificador|leds[1]~13_combout\ & \estimador|Y_media_N\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[1]~13_combout\,
	datac => \estimador|Y_media_N\(9),
	datad => \cuantificador|leds[2]~10_combout\,
	combout => \cuantificador|leds[1]~14_combout\);

-- Location: LCCOMB_X42_Y35_N26
\cuantificador|leds[1]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[1]~38_combout\ = (\estimador|Y_media_N\(10) & (\estimador|Y_media_N\(11) & \cuantificador|leds[5]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|Y_media_N\(10),
	datac => \estimador|Y_media_N\(11),
	datad => \cuantificador|leds[5]~11_combout\,
	combout => \cuantificador|leds[1]~38_combout\);

-- Location: LCCOMB_X41_Y35_N12
\cuantificador|LessThan28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan28~1_combout\ = (\estimador|Y_media_N\(7) & ((\estimador|Y_media_N\(6)) # ((\estimador|Y_media_N\(5)) # (\estimador|Y_media_N\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(4),
	combout => \cuantificador|LessThan28~1_combout\);

-- Location: LCCOMB_X42_Y35_N28
\cuantificador|LessThan28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan28~2_combout\ = ((!\estimador|Y_media_N\(9) & ((!\cuantificador|LessThan28~1_combout\) # (!\estimador|Y_media_N\(8))))) # (!\cuantificador|LessThan28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(9),
	datab => \cuantificador|LessThan28~0_combout\,
	datac => \estimador|Y_media_N\(8),
	datad => \cuantificador|LessThan28~1_combout\,
	combout => \cuantificador|LessThan28~2_combout\);

-- Location: LCCOMB_X41_Y35_N28
\cuantificador|leds~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds~15_combout\ = (!\estimador|Y_media_N\(9) & !\estimador|Y_media_N\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|Y_media_N\(9),
	datac => \estimador|Y_media_N\(8),
	combout => \cuantificador|leds~15_combout\);

-- Location: LCCOMB_X41_Y35_N22
\cuantificador|leds[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[2]~16_combout\ = ((\estimador|Y_media_N\(7) & (\estimador|Y_media_N\(6) & \estimador|Y_media_N\(5)))) # (!\cuantificador|leds~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \cuantificador|leds~15_combout\,
	combout => \cuantificador|leds[2]~16_combout\);

-- Location: LCCOMB_X42_Y35_N22
\cuantificador|leds[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[2]~17_combout\ = (\cuantificador|leds[1]~38_combout\ & ((\cuantificador|leds[2]~16_combout\) # ((\cuantificador|LessThan28~2_combout\ & \cuantificador|leds[2]~10_combout\)))) # (!\cuantificador|leds[1]~38_combout\ & 
-- (\cuantificador|LessThan28~2_combout\ & (\cuantificador|leds[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[1]~38_combout\,
	datab => \cuantificador|LessThan28~2_combout\,
	datac => \cuantificador|leds[2]~10_combout\,
	datad => \cuantificador|leds[2]~16_combout\,
	combout => \cuantificador|leds[2]~17_combout\);

-- Location: LCCOMB_X42_Y35_N10
\cuantificador|leds~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds~20_combout\ = (((!\estimador|Y_media_N\(12)) # (!\estimador|Y_media_N\(11))) # (!\estimador|Y_media_N\(13))) # (!\estimador|Y_media_N\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(14),
	datab => \estimador|Y_media_N\(13),
	datac => \estimador|Y_media_N\(11),
	datad => \estimador|Y_media_N\(12),
	combout => \cuantificador|leds~20_combout\);

-- Location: LCCOMB_X41_Y35_N24
\cuantificador|leds[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[3]~21_combout\ = (!\estimador|Y_media_N\(7) & (((!\estimador|Y_media_N\(4)) # (!\estimador|Y_media_N\(5))) # (!\estimador|Y_media_N\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(4),
	combout => \cuantificador|leds[3]~21_combout\);

-- Location: LCCOMB_X40_Y35_N16
\cuantificador|leds[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[3]~22_combout\ = ((!\estimador|Y_media_N\(10) & ((\cuantificador|leds[3]~21_combout\) # (!\cuantificador|LessThan25~0_combout\)))) # (!\estimador|Y_media_N\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan25~0_combout\,
	datab => \estimador|Y_media_N\(11),
	datac => \estimador|Y_media_N\(10),
	datad => \cuantificador|leds[3]~21_combout\,
	combout => \cuantificador|leds[3]~22_combout\);

-- Location: LCCOMB_X40_Y35_N6
\cuantificador|leds[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[3]~23_combout\ = (\estimador|Y_media_N\(15)) # ((\cuantificador|leds[2]~5_combout\ & \cuantificador|leds[3]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|Y_media_N\(15),
	datac => \cuantificador|leds[2]~5_combout\,
	datad => \cuantificador|leds[3]~22_combout\,
	combout => \cuantificador|leds[3]~23_combout\);

-- Location: LCCOMB_X41_Y35_N10
\cuantificador|leds~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds~18_combout\ = (((!\estimador|Y_media_N\(5) & !\estimador|Y_media_N\(4))) # (!\estimador|Y_media_N\(6))) # (!\estimador|Y_media_N\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(4),
	combout => \cuantificador|leds~18_combout\);

-- Location: LCCOMB_X42_Y35_N16
\cuantificador|leds~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds~19_combout\ = (!\estimador|Y_media_N\(10) & (((!\estimador|Y_media_N\(8) & \cuantificador|leds~18_combout\)) # (!\estimador|Y_media_N\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(9),
	datab => \estimador|Y_media_N\(10),
	datac => \estimador|Y_media_N\(8),
	datad => \cuantificador|leds~18_combout\,
	combout => \cuantificador|leds~19_combout\);

-- Location: LCCOMB_X42_Y35_N12
\cuantificador|leds[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[3]~24_combout\ = ((\estimador|Y_media_N\(15) & ((\cuantificador|leds~20_combout\) # (\cuantificador|leds~19_combout\)))) # (!\cuantificador|leds[3]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds~20_combout\,
	datab => \cuantificador|leds[3]~23_combout\,
	datac => \estimador|Y_media_N\(15),
	datad => \cuantificador|leds~19_combout\,
	combout => \cuantificador|leds[3]~24_combout\);

-- Location: LCCOMB_X41_Y35_N26
\cuantificador|LessThan24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan24~0_combout\ = (!\estimador|Y_media_N\(6) & ((!\estimador|Y_media_N\(4)) # (!\estimador|Y_media_N\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(4),
	combout => \cuantificador|LessThan24~0_combout\);

-- Location: LCCOMB_X41_Y35_N8
\cuantificador|leds[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[4]~25_combout\ = ((\estimador|Y_media_N\(10)) # ((\estimador|Y_media_N\(7) & !\cuantificador|LessThan24~0_combout\))) # (!\cuantificador|leds~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \cuantificador|leds~15_combout\,
	datac => \cuantificador|LessThan24~0_combout\,
	datad => \estimador|Y_media_N\(10),
	combout => \cuantificador|leds[4]~25_combout\);

-- Location: LCCOMB_X42_Y35_N30
\cuantificador|leds[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[4]~26_combout\ = (\cuantificador|leds[4]~25_combout\ & (\estimador|Y_media_N\(11) & \cuantificador|leds[5]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[4]~25_combout\,
	datac => \estimador|Y_media_N\(11),
	datad => \cuantificador|leds[5]~11_combout\,
	combout => \cuantificador|leds[4]~26_combout\);

-- Location: LCCOMB_X41_Y35_N30
\cuantificador|LessThan26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan26~0_combout\ = ((!\estimador|Y_media_N\(7) & ((!\estimador|Y_media_N\(6)) # (!\estimador|Y_media_N\(5))))) # (!\estimador|Y_media_N\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(5),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(8),
	datad => \estimador|Y_media_N\(7),
	combout => \cuantificador|LessThan26~0_combout\);

-- Location: LCCOMB_X42_Y35_N24
\cuantificador|LessThan26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan26~1_combout\ = ((!\estimador|Y_media_N\(9) & (!\estimador|Y_media_N\(10) & \cuantificador|LessThan26~0_combout\))) # (!\estimador|Y_media_N\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(9),
	datab => \estimador|Y_media_N\(10),
	datac => \estimador|Y_media_N\(11),
	datad => \cuantificador|LessThan26~0_combout\,
	combout => \cuantificador|LessThan26~1_combout\);

-- Location: LCCOMB_X42_Y35_N18
\cuantificador|leds[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[4]~27_combout\ = (\cuantificador|leds[3]~23_combout\ & ((\cuantificador|leds[4]~26_combout\) # ((\cuantificador|LessThan26~1_combout\ & \cuantificador|leds[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[4]~26_combout\,
	datab => \cuantificador|LessThan26~1_combout\,
	datac => \cuantificador|leds[3]~23_combout\,
	datad => \cuantificador|leds[2]~9_combout\,
	combout => \cuantificador|leds[4]~27_combout\);

-- Location: LCCOMB_X41_Y35_N18
\cuantificador|LessThan17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan17~0_combout\ = (!\estimador|Y_media_N\(8) & (((!\estimador|Y_media_N\(5) & !\estimador|Y_media_N\(6))) # (!\estimador|Y_media_N\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(5),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(8),
	datad => \estimador|Y_media_N\(7),
	combout => \cuantificador|LessThan17~0_combout\);

-- Location: LCCOMB_X40_Y35_N10
\cuantificador|LessThan17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan17~1_combout\ = (!\estimador|Y_media_N\(11) & (((\cuantificador|LessThan17~0_combout\) # (!\estimador|Y_media_N\(10))) # (!\estimador|Y_media_N\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(9),
	datab => \estimador|Y_media_N\(11),
	datac => \estimador|Y_media_N\(10),
	datad => \cuantificador|LessThan17~0_combout\,
	combout => \cuantificador|LessThan17~1_combout\);

-- Location: LCCOMB_X41_Y35_N4
\cuantificador|LessThan25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan25~1_combout\ = (!\estimador|Y_media_N\(7) & (((!\estimador|Y_media_N\(5) & !\estimador|Y_media_N\(4))) # (!\estimador|Y_media_N\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(4),
	combout => \cuantificador|LessThan25~1_combout\);

-- Location: LCCOMB_X40_Y35_N24
\cuantificador|leds[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[5]~28_combout\ = (!\estimador|Y_media_N\(11) & (((\cuantificador|LessThan25~1_combout\) # (!\estimador|Y_media_N\(10))) # (!\cuantificador|LessThan25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan25~0_combout\,
	datab => \estimador|Y_media_N\(11),
	datac => \estimador|Y_media_N\(10),
	datad => \cuantificador|LessThan25~1_combout\,
	combout => \cuantificador|leds[5]~28_combout\);

-- Location: LCCOMB_X40_Y35_N4
\cuantificador|leds[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[5]~29_combout\ = (\cuantificador|LessThan17~1_combout\ & (((\cuantificador|leds[2]~9_combout\ & \cuantificador|leds[5]~28_combout\)))) # (!\cuantificador|LessThan17~1_combout\ & ((\cuantificador|leds[5]~11_combout\) # 
-- ((\cuantificador|leds[2]~9_combout\ & \cuantificador|leds[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan17~1_combout\,
	datab => \cuantificador|leds[5]~11_combout\,
	datac => \cuantificador|leds[2]~9_combout\,
	datad => \cuantificador|leds[5]~28_combout\,
	combout => \cuantificador|leds[5]~29_combout\);

-- Location: LCCOMB_X40_Y35_N22
\cuantificador|leds[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[5]~39_combout\ = (\cuantificador|leds[5]~29_combout\ & ((\estimador|Y_media_N\(15)) # ((\cuantificador|leds[3]~22_combout\ & \cuantificador|leds[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[3]~22_combout\,
	datab => \cuantificador|leds[5]~29_combout\,
	datac => \cuantificador|leds[2]~5_combout\,
	datad => \estimador|Y_media_N\(15),
	combout => \cuantificador|leds[5]~39_combout\);

-- Location: LCCOMB_X41_Y35_N20
\cuantificador|LessThan24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan24~1_combout\ = (!\estimador|Y_media_N\(9) & (((\cuantificador|LessThan24~0_combout\ & !\estimador|Y_media_N\(7))) # (!\estimador|Y_media_N\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan24~0_combout\,
	datab => \estimador|Y_media_N\(9),
	datac => \estimador|Y_media_N\(8),
	datad => \estimador|Y_media_N\(7),
	combout => \cuantificador|LessThan24~1_combout\);

-- Location: LCCOMB_X40_Y35_N26
\cuantificador|leds~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds~30_combout\ = (\cuantificador|leds[2]~5_combout\ & (\cuantificador|leds[5]~28_combout\ & ((\cuantificador|LessThan24~1_combout\) # (!\estimador|Y_media_N\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan24~1_combout\,
	datab => \estimador|Y_media_N\(10),
	datac => \cuantificador|leds[2]~5_combout\,
	datad => \cuantificador|leds[5]~28_combout\,
	combout => \cuantificador|leds~30_combout\);

-- Location: LCCOMB_X40_Y35_N12
\cuantificador|leds[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[7]~31_combout\ = (\estimador|Y_media_N\(15)) # ((\cuantificador|leds~30_combout\ & (\cuantificador|leds[2]~5_combout\ & \cuantificador|leds[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds~30_combout\,
	datab => \estimador|Y_media_N\(15),
	datac => \cuantificador|leds[2]~5_combout\,
	datad => \cuantificador|leds[3]~22_combout\,
	combout => \cuantificador|leds[7]~31_combout\);

-- Location: LCCOMB_X40_Y35_N30
\cuantificador|leds[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[6]~33_combout\ = ((\estimador|Y_media_N\(10) & ((\cuantificador|LessThan28~1_combout\) # (!\cuantificador|leds~15_combout\)))) # (!\cuantificador|LessThan17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan17~1_combout\,
	datab => \cuantificador|LessThan28~1_combout\,
	datac => \estimador|Y_media_N\(10),
	datad => \cuantificador|leds~15_combout\,
	combout => \cuantificador|leds[6]~33_combout\);

-- Location: LCCOMB_X42_Y35_N0
\cuantificador|leds[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[6]~32_combout\ = (\estimador|Y_media_N\(13) & (\estimador|Y_media_N\(14) & \estimador|Y_media_N\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|Y_media_N\(13),
	datac => \estimador|Y_media_N\(14),
	datad => \estimador|Y_media_N\(12),
	combout => \cuantificador|leds[6]~32_combout\);

-- Location: LCCOMB_X40_Y35_N28
\cuantificador|leds[6]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[6]~34_combout\ = (\cuantificador|leds[7]~31_combout\ & (((\cuantificador|leds[6]~33_combout\ & \cuantificador|leds[6]~32_combout\)) # (!\estimador|Y_media_N\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[7]~31_combout\,
	datab => \estimador|Y_media_N\(15),
	datac => \cuantificador|leds[6]~33_combout\,
	datad => \cuantificador|leds[6]~32_combout\,
	combout => \cuantificador|leds[6]~34_combout\);

-- Location: LCCOMB_X41_Y35_N2
\cuantificador|leds~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds~35_combout\ = (\estimador|Y_media_N\(7)) # ((\estimador|Y_media_N\(11)) # ((\estimador|Y_media_N\(5) & \estimador|Y_media_N\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Y_media_N\(11),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(6),
	combout => \cuantificador|leds~35_combout\);

-- Location: LCCOMB_X40_Y35_N14
\cuantificador|leds[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[7]~36_combout\ = (\cuantificador|leds[5]~11_combout\ & ((\cuantificador|leds~35_combout\) # ((\estimador|Y_media_N\(10)) # (!\cuantificador|leds~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds~35_combout\,
	datab => \estimador|Y_media_N\(10),
	datac => \cuantificador|leds[5]~11_combout\,
	datad => \cuantificador|leds~15_combout\,
	combout => \cuantificador|leds[7]~36_combout\);

-- Location: LCCOMB_X40_Y35_N8
\cuantificador|leds[7]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[7]~37_combout\ = (\cuantificador|leds[7]~31_combout\ & ((\cuantificador|leds[7]~36_combout\) # ((\cuantificador|leds[2]~9_combout\ & \cuantificador|leds[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[7]~31_combout\,
	datab => \cuantificador|leds[7]~36_combout\,
	datac => \cuantificador|leds[2]~9_combout\,
	datad => \cuantificador|leds[7]~4_combout\,
	combout => \cuantificador|leds[7]~37_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_SDI <= \SDI~output_o\;

ww_nCS <= \nCS~output_o\;

ww_SPC <= \SPC~output_o\;

ww_mux_disp(0) <= \mux_disp[0]~output_o\;

ww_mux_disp(1) <= \mux_disp[1]~output_o\;

ww_mux_disp(2) <= \mux_disp[2]~output_o\;

ww_mux_disp(3) <= \mux_disp[3]~output_o\;

ww_mux_disp(4) <= \mux_disp[4]~output_o\;

ww_mux_disp(5) <= \mux_disp[5]~output_o\;

ww_mux_disp(6) <= \mux_disp[6]~output_o\;

ww_mux_disp(7) <= \mux_disp[7]~output_o\;

ww_disp(0) <= \disp[0]~output_o\;

ww_disp(1) <= \disp[1]~output_o\;

ww_disp(2) <= \disp[2]~output_o\;

ww_disp(3) <= \disp[3]~output_o\;

ww_disp(4) <= \disp[4]~output_o\;

ww_disp(5) <= \disp[5]~output_o\;

ww_disp(6) <= \disp[6]~output_o\;

ww_disp(7) <= \disp[7]~output_o\;

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;
END structure;


