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

-- DATE "05/18/2022 00:02:19"

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
	ena_op : IN std_logic;
	mux_disp : BUFFER std_logic_vector(7 DOWNTO 0);
	disp : BUFFER std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END acelerometro;

-- Design Ports Information
-- mux_disp[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_disp[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_disp[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_disp[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_disp[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_disp[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_disp[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_disp[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena_op	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ena_op : std_logic;
SIGNAL ww_mux_disp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_disp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \nRst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
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
SIGNAL \cuantificador|mux_disp[1]~1_combout\ : std_logic;
SIGNAL \nRst~input_o\ : std_logic;
SIGNAL \nRst~inputclkctrl_outclk\ : std_logic;
SIGNAL \cuantificador|Add0~0_combout\ : std_logic;
SIGNAL \cuantificador|Add0~1\ : std_logic;
SIGNAL \cuantificador|Add0~2_combout\ : std_logic;
SIGNAL \cuantificador|Add0~3\ : std_logic;
SIGNAL \cuantificador|Add0~4_combout\ : std_logic;
SIGNAL \cuantificador|Add0~5\ : std_logic;
SIGNAL \cuantificador|Add0~6_combout\ : std_logic;
SIGNAL \cuantificador|Add0~7\ : std_logic;
SIGNAL \cuantificador|Add0~8_combout\ : std_logic;
SIGNAL \cuantificador|Add0~9\ : std_logic;
SIGNAL \cuantificador|Add0~10_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~1_combout\ : std_logic;
SIGNAL \cuantificador|Add0~11\ : std_logic;
SIGNAL \cuantificador|Add0~12_combout\ : std_logic;
SIGNAL \cuantificador|Add0~13\ : std_logic;
SIGNAL \cuantificador|Add0~14_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~0_combout\ : std_logic;
SIGNAL \cuantificador|Add0~15\ : std_logic;
SIGNAL \cuantificador|Add0~16_combout\ : std_logic;
SIGNAL \cuantificador|Add0~17\ : std_logic;
SIGNAL \cuantificador|Add0~18_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~3_combout\ : std_logic;
SIGNAL \cuantificador|Add0~19\ : std_logic;
SIGNAL \cuantificador|Add0~20_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~2_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~1_combout\ : std_logic;
SIGNAL \cuantificador|Add0~21\ : std_logic;
SIGNAL \cuantificador|Add0~22_combout\ : std_logic;
SIGNAL \cuantificador|Add0~23\ : std_logic;
SIGNAL \cuantificador|Add0~24_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~0_combout\ : std_logic;
SIGNAL \cuantificador|Add0~25\ : std_logic;
SIGNAL \cuantificador|Add0~26_combout\ : std_logic;
SIGNAL \cuantificador|Add0~27\ : std_logic;
SIGNAL \cuantificador|Add0~28_combout\ : std_logic;
SIGNAL \cuantificador|Add0~29\ : std_logic;
SIGNAL \cuantificador|Add0~30_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~5_combout\ : std_logic;
SIGNAL \cuantificador|Add0~31\ : std_logic;
SIGNAL \cuantificador|Add0~32_combout\ : std_logic;
SIGNAL \cuantificador|cnt_div_1ms~4_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~3_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~4_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~2_combout\ : std_logic;
SIGNAL \cuantificador|Equal0~5_combout\ : std_logic;
SIGNAL \cuantificador|mux_disp[4]~feeder_combout\ : std_logic;
SIGNAL \cuantificador|mux_disp[5]~feeder_combout\ : std_logic;
SIGNAL \cuantificador|mux_disp[0]~0_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~8_combout\ : std_logic;
SIGNAL \controlador|Selector3~0_combout\ : std_logic;
SIGNAL \controlador|cnt_5ms[0]~6_combout\ : std_logic;
SIGNAL \controlador|estado.medidas~0_combout\ : std_logic;
SIGNAL \controlador|estado.medidas~q\ : std_logic;
SIGNAL \controlador|process_4~0_combout\ : std_logic;
SIGNAL \controlador|Add0~1_cout\ : std_logic;
SIGNAL \controlador|Add0~2_combout\ : std_logic;
SIGNAL \controlador|Add1~0_combout\ : std_logic;
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
SIGNAL \controlador|Equal0~2_combout\ : std_logic;
SIGNAL \controlador|Add0~19\ : std_logic;
SIGNAL \controlador|Add0~20_combout\ : std_logic;
SIGNAL \controlador|Add0~21\ : std_logic;
SIGNAL \controlador|Add0~22_combout\ : std_logic;
SIGNAL \controlador|Add0~23\ : std_logic;
SIGNAL \controlador|Add0~24_combout\ : std_logic;
SIGNAL \controlador|Add0~25\ : std_logic;
SIGNAL \controlador|Add0~26_combout\ : std_logic;
SIGNAL \controlador|Equal0~1_combout\ : std_logic;
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
SIGNAL \controlador|Equal0~4_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms[6]~7_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms~8_combout\ : std_logic;
SIGNAL \controlador|Add1~1\ : std_logic;
SIGNAL \controlador|Add1~2_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms~6_combout\ : std_logic;
SIGNAL \controlador|Equal0~5_combout\ : std_logic;
SIGNAL \controlador|cnt_320ms[3]~2_combout\ : std_logic;
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
SIGNAL \controlador|estado.preconfig~0_combout\ : std_logic;
SIGNAL \controlador|estado.preconfig~q\ : std_logic;
SIGNAL \ena_op~input_o\ : std_logic;
SIGNAL \controlador|Selector3~1_combout\ : std_logic;
SIGNAL \controlador|Selector2~0_combout\ : std_logic;
SIGNAL \controlador|estado.offset~q\ : std_logic;
SIGNAL \controlador|Selector3~2_combout\ : std_logic;
SIGNAL \controlador|Selector1~0_combout\ : std_logic;
SIGNAL \controlador|estado.config~q\ : std_logic;
SIGNAL \controlador|ini_tx~0_combout\ : std_logic;
SIGNAL \controlador|ini_tx~1_combout\ : std_logic;
SIGNAL \controlador|ini_tx~q\ : std_logic;
SIGNAL \master|cnt_div[0]~7_combout\ : std_logic;
SIGNAL \master|Add0~0_combout\ : std_logic;
SIGNAL \master|cnt_div[0]~4_combout\ : std_logic;
SIGNAL \master|SPC_up~0_combout\ : std_logic;
SIGNAL \master|cnt_div[2]~8_combout\ : std_logic;
SIGNAL \master|cnt_div[0]~5_combout\ : std_logic;
SIGNAL \master|cnt_div[1]~9_combout\ : std_logic;
SIGNAL \master|cnt_div[0]~6_combout\ : std_logic;
SIGNAL \master|cnt_div[0]~10_combout\ : std_logic;
SIGNAL \master|Add0~1_combout\ : std_logic;
SIGNAL \master|cnt_div[3]~11_combout\ : std_logic;
SIGNAL \master|SPC_up~combout\ : std_logic;
SIGNAL \master|cnt_bit[0]~0_combout\ : std_logic;
SIGNAL \master|cnt_bit[1]~2_combout\ : std_logic;
SIGNAL \master|cnt_bit[2]~1_combout\ : std_logic;
SIGNAL \master|ena_bit~combout\ : std_logic;
SIGNAL \controlador|cnt_reg[0]~2_combout\ : std_logic;
SIGNAL \controlador|cnt_reg[1]~0_combout\ : std_logic;
SIGNAL \controlador|cnt_reg[1]~1_combout\ : std_logic;
SIGNAL \controlador|dato[15]~2_combout\ : std_logic;
SIGNAL \controlador|dato[15]~3_combout\ : std_logic;
SIGNAL \master|reg_nWR~0_combout\ : std_logic;
SIGNAL \master|reg_nWR~q\ : std_logic;
SIGNAL \master|Add2~0_combout\ : std_logic;
SIGNAL \master|cnt_byte[2]~0_combout\ : std_logic;
SIGNAL \master|fin_tx~0_combout\ : std_logic;
SIGNAL \master|cnt_byte~2_combout\ : std_logic;
SIGNAL \master|cnt_byte[1]~1_combout\ : std_logic;
SIGNAL \master|ena_rd~0_combout\ : std_logic;
SIGNAL \master|ena_rd~1_combout\ : std_logic;
SIGNAL \master|ena_rd~q\ : std_logic;
SIGNAL \calc_offset|cnt_rd[0]~3_combout\ : std_logic;
SIGNAL \calc_offset|cnt_rd[1]~2_combout\ : std_logic;
SIGNAL \calc_offset|cnt_rd[2]~0_combout\ : std_logic;
SIGNAL \calc_offset|cnt_rd[2]~5_combout\ : std_logic;
SIGNAL \calc_offset|cnt_rd[2]~4_combout\ : std_logic;
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
SIGNAL \calc_offset|muestra_bias_rdy~0_combout\ : std_logic;
SIGNAL \calc_offset|muestra_bias_rdy~1_combout\ : std_logic;
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
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a2\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a4\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a6\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a8\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\ : std_logic;
SIGNAL \estimador|Add0~1_cout\ : std_logic;
SIGNAL \estimador|Add0~3\ : std_logic;
SIGNAL \estimador|Add0~5\ : std_logic;
SIGNAL \estimador|Add0~7\ : std_logic;
SIGNAL \estimador|Add0~9\ : std_logic;
SIGNAL \estimador|Add0~11\ : std_logic;
SIGNAL \estimador|Add0~13\ : std_logic;
SIGNAL \estimador|Add0~15\ : std_logic;
SIGNAL \estimador|Add0~17\ : std_logic;
SIGNAL \estimador|Add0~19\ : std_logic;
SIGNAL \estimador|Add0~20_combout\ : std_logic;
SIGNAL \estimador|Add0~18_combout\ : std_logic;
SIGNAL \estimador|Add0~16_combout\ : std_logic;
SIGNAL \estimador|Add0~14_combout\ : std_logic;
SIGNAL \estimador|Add0~12_combout\ : std_logic;
SIGNAL \estimador|Add0~10_combout\ : std_logic;
SIGNAL \estimador|Add0~8_combout\ : std_logic;
SIGNAL \estimador|Add0~6_combout\ : std_logic;
SIGNAL \estimador|Add0~4_combout\ : std_logic;
SIGNAL \estimador|Add0~2_combout\ : std_logic;
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
SIGNAL \cuantificador|digitos[0]~23_combout\ : std_logic;
SIGNAL \cuantificador|digitos~26_combout\ : std_logic;
SIGNAL \cuantificador|digitos~27_combout\ : std_logic;
SIGNAL \cuantificador|digitos~32_combout\ : std_logic;
SIGNAL \cuantificador|digitos~33_combout\ : std_logic;
SIGNAL \cuantificador|digitos~34_combout\ : std_logic;
SIGNAL \cuantificador|digitos~9_combout\ : std_logic;
SIGNAL \cuantificador|digitos~6_combout\ : std_logic;
SIGNAL \cuantificador|digitos~3_combout\ : std_logic;
SIGNAL \cuantificador|digitos~37_combout\ : std_logic;
SIGNAL \cuantificador|digitos~29_combout\ : std_logic;
SIGNAL \cuantificador|digitos~30_combout\ : std_logic;
SIGNAL \cuantificador|digitos~28_combout\ : std_logic;
SIGNAL \cuantificador|digitos~31_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~6_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~7_combout\ : std_logic;
SIGNAL \cuantificador|digitos~35_combout\ : std_logic;
SIGNAL \cuantificador|LessThan12~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan12~1_combout\ : std_logic;
SIGNAL \cuantificador|LessThan13~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan13~1_combout\ : std_logic;
SIGNAL \cuantificador|LessThan13~2_combout\ : std_logic;
SIGNAL \cuantificador|LessThan11~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan11~1_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~2_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~3_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~4_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~9_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~10_combout\ : std_logic;
SIGNAL \cuantificador|LessThan10~0_combout\ : std_logic;
SIGNAL \cuantificador|digitos~36_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~11_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~12_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~13_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~2_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~4_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~3_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~0_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~1_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~5_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~15_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~16_combout\ : std_logic;
SIGNAL \cuantificador|LessThan2~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan2~1_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~14_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~17_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~18_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~19_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~20_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~21_combout\ : std_logic;
SIGNAL \cuantificador|dig_activo~22_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~1_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~5_combout\ : std_logic;
SIGNAL \cuantificador|digitos[0]~24_combout\ : std_logic;
SIGNAL \cuantificador|digitos[0]~25_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~0_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~6_combout\ : std_logic;
SIGNAL \cuantificador|disp[0]~7_combout\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a13\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a15\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a17\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\ : std_logic;
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\ : std_logic;
SIGNAL \estimador|Add1~1_cout\ : std_logic;
SIGNAL \estimador|Add1~3\ : std_logic;
SIGNAL \estimador|Add1~5\ : std_logic;
SIGNAL \estimador|Add1~7\ : std_logic;
SIGNAL \estimador|Add1~9\ : std_logic;
SIGNAL \estimador|Add1~11\ : std_logic;
SIGNAL \estimador|Add1~13\ : std_logic;
SIGNAL \estimador|Add1~15\ : std_logic;
SIGNAL \estimador|Add1~17\ : std_logic;
SIGNAL \estimador|Add1~18_combout\ : std_logic;
SIGNAL \estimador|Add1~16_combout\ : std_logic;
SIGNAL \estimador|Add1~14_combout\ : std_logic;
SIGNAL \estimador|Add1~12_combout\ : std_logic;
SIGNAL \estimador|Add1~10_combout\ : std_logic;
SIGNAL \estimador|Add1~8_combout\ : std_logic;
SIGNAL \estimador|Add1~6_combout\ : std_logic;
SIGNAL \estimador|Add1~4_combout\ : std_logic;
SIGNAL \estimador|Add1~2_combout\ : std_logic;
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
SIGNAL \estimador|Y_media_N[7]~31\ : std_logic;
SIGNAL \estimador|Y_media_N[8]~32_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[8]~33\ : std_logic;
SIGNAL \estimador|Y_media_N[9]~34_combout\ : std_logic;
SIGNAL \cuantificador|LessThan23~0_combout\ : std_logic;
SIGNAL \estimador|Add1~19\ : std_logic;
SIGNAL \estimador|Add1~20_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[9]~35\ : std_logic;
SIGNAL \estimador|Y_media_N[10]~36_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[10]~37\ : std_logic;
SIGNAL \estimador|Y_media_N[11]~38_combout\ : std_logic;
SIGNAL \cuantificador|LessThan25~0_combout\ : std_logic;
SIGNAL \cuantificador|leds[7]~4_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[11]~39\ : std_logic;
SIGNAL \estimador|Y_media_N[12]~40_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[12]~41\ : std_logic;
SIGNAL \estimador|Y_media_N[13]~42_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[13]~43\ : std_logic;
SIGNAL \estimador|Y_media_N[14]~44_combout\ : std_logic;
SIGNAL \cuantificador|leds[2]~5_combout\ : std_logic;
SIGNAL \cuantificador|leds[0]~6_combout\ : std_logic;
SIGNAL \estimador|Y_media_N[14]~45\ : std_logic;
SIGNAL \estimador|Y_media_N[15]~46_combout\ : std_logic;
SIGNAL \cuantificador|leds[0]~7_combout\ : std_logic;
SIGNAL \cuantificador|leds[0]~8_combout\ : std_logic;
SIGNAL \cuantificador|LessThan29~0_combout\ : std_logic;
SIGNAL \cuantificador|leds[2]~9_combout\ : std_logic;
SIGNAL \cuantificador|LessThan28~0_combout\ : std_logic;
SIGNAL \cuantificador|leds[2]~10_combout\ : std_logic;
SIGNAL \cuantificador|leds[1]~12_combout\ : std_logic;
SIGNAL \cuantificador|leds[5]~11_combout\ : std_logic;
SIGNAL \cuantificador|leds[1]~13_combout\ : std_logic;
SIGNAL \cuantificador|leds[1]~14_combout\ : std_logic;
SIGNAL \cuantificador|leds~15_combout\ : std_logic;
SIGNAL \cuantificador|leds[2]~16_combout\ : std_logic;
SIGNAL \cuantificador|leds[1]~38_combout\ : std_logic;
SIGNAL \cuantificador|LessThan28~1_combout\ : std_logic;
SIGNAL \cuantificador|LessThan28~2_combout\ : std_logic;
SIGNAL \cuantificador|leds[2]~17_combout\ : std_logic;
SIGNAL \cuantificador|leds~18_combout\ : std_logic;
SIGNAL \cuantificador|leds~19_combout\ : std_logic;
SIGNAL \cuantificador|leds~20_combout\ : std_logic;
SIGNAL \cuantificador|leds[3]~21_combout\ : std_logic;
SIGNAL \cuantificador|leds[3]~22_combout\ : std_logic;
SIGNAL \cuantificador|leds[3]~23_combout\ : std_logic;
SIGNAL \cuantificador|leds[3]~24_combout\ : std_logic;
SIGNAL \cuantificador|LessThan24~0_combout\ : std_logic;
SIGNAL \cuantificador|leds[4]~25_combout\ : std_logic;
SIGNAL \cuantificador|leds[4]~26_combout\ : std_logic;
SIGNAL \cuantificador|LessThan26~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan26~1_combout\ : std_logic;
SIGNAL \cuantificador|leds[4]~27_combout\ : std_logic;
SIGNAL \cuantificador|LessThan25~1_combout\ : std_logic;
SIGNAL \cuantificador|leds[5]~28_combout\ : std_logic;
SIGNAL \cuantificador|LessThan17~0_combout\ : std_logic;
SIGNAL \cuantificador|LessThan17~1_combout\ : std_logic;
SIGNAL \cuantificador|leds[5]~29_combout\ : std_logic;
SIGNAL \cuantificador|leds[5]~39_combout\ : std_logic;
SIGNAL \cuantificador|leds[6]~32_combout\ : std_logic;
SIGNAL \cuantificador|leds[6]~33_combout\ : std_logic;
SIGNAL \cuantificador|LessThan24~1_combout\ : std_logic;
SIGNAL \cuantificador|leds~30_combout\ : std_logic;
SIGNAL \cuantificador|leds[7]~31_combout\ : std_logic;
SIGNAL \cuantificador|leds[6]~34_combout\ : std_logic;
SIGNAL \cuantificador|leds~35_combout\ : std_logic;
SIGNAL \cuantificador|leds[7]~36_combout\ : std_logic;
SIGNAL \cuantificador|leds[7]~37_combout\ : std_logic;
SIGNAL \master|cnt_byte\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \estimador|X_media_N\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \master|cnt_div\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cuantificador|cnt_div_1ms\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \estimador|Y_media_N\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cuantificador|mux_disp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \calc_offset|cnt_rd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controlador|cnt_5ms\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \master|cnt_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlador|dato\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \controlador|cnt_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \controlador|cnt_320ms\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \estimador|reg_muestra_rtl_0|auto_generated|ALT_INV_dffe4~q\ : std_logic;
SIGNAL \cuantificador|ALT_INV_leds[3]~24_combout\ : std_logic;
SIGNAL \cuantificador|ALT_INV_mux_disp\ : std_logic_vector(7 DOWNTO 1);

BEGIN

ww_clk <= clk;
ww_nRst <= nRst;
ww_ena_op <= ena_op;
mux_disp <= ww_mux_disp;
disp <= ww_disp;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\);

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

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\nRst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nRst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\estimador|reg_muestra_rtl_0|auto_generated|ALT_INV_dffe4~q\ <= NOT \estimador|reg_muestra_rtl_0|auto_generated|dffe4~q\;
\cuantificador|ALT_INV_leds[3]~24_combout\ <= NOT \cuantificador|leds[3]~24_combout\;
\cuantificador|ALT_INV_mux_disp\(7) <= NOT \cuantificador|mux_disp\(7);
\cuantificador|ALT_INV_mux_disp\(6) <= NOT \cuantificador|mux_disp\(6);
\cuantificador|ALT_INV_mux_disp\(5) <= NOT \cuantificador|mux_disp\(5);
\cuantificador|ALT_INV_mux_disp\(4) <= NOT \cuantificador|mux_disp\(4);
\cuantificador|ALT_INV_mux_disp\(3) <= NOT \cuantificador|mux_disp\(3);
\cuantificador|ALT_INV_mux_disp\(2) <= NOT \cuantificador|mux_disp\(2);
\cuantificador|ALT_INV_mux_disp\(1) <= NOT \cuantificador|mux_disp\(1);

-- Location: IOOBUF_X46_Y54_N9
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

-- Location: IOOBUF_X46_Y54_N16
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

-- Location: IOOBUF_X51_Y54_N2
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

-- Location: IOOBUF_X49_Y54_N23
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

-- Location: IOOBUF_X46_Y54_N23
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

-- Location: IOOBUF_X49_Y54_N30
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

-- Location: IOOBUF_X51_Y54_N30
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

-- Location: IOOBUF_X51_Y54_N23
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

-- Location: IOOBUF_X49_Y54_N2
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

-- Location: IOOBUF_X54_Y54_N23
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

-- Location: IOOBUF_X49_Y54_N16
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

-- Location: IOOBUF_X51_Y54_N9
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

-- Location: IOOBUF_X49_Y54_N9
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

-- Location: IOOBUF_X51_Y54_N16
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

-- Location: IOOBUF_X54_Y54_N30
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

-- Location: IOOBUF_X66_Y54_N16
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

-- Location: IOOBUF_X56_Y54_N9
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

-- Location: IOOBUF_X54_Y54_N16
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

-- Location: IOOBUF_X54_Y54_N9
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

-- Location: IOOBUF_X54_Y54_N2
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

-- Location: IOOBUF_X56_Y54_N23
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

-- Location: IOOBUF_X56_Y54_N16
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

-- Location: IOOBUF_X56_Y54_N2
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

-- Location: IOOBUF_X56_Y54_N30
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

-- Location: LCCOMB_X50_Y47_N8
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

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
\nRst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nRst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nRst~inputclkctrl_outclk\);

-- Location: LCCOMB_X50_Y47_N16
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

-- Location: FF_X50_Y47_N17
\cuantificador|cnt_div_1ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(0));

-- Location: LCCOMB_X50_Y47_N18
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

-- Location: FF_X50_Y47_N19
\cuantificador|cnt_div_1ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~2_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(1));

-- Location: LCCOMB_X50_Y47_N20
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

-- Location: FF_X50_Y47_N21
\cuantificador|cnt_div_1ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~4_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(2));

-- Location: LCCOMB_X50_Y47_N22
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

-- Location: FF_X50_Y47_N23
\cuantificador|cnt_div_1ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~6_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(3));

-- Location: LCCOMB_X50_Y47_N24
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

-- Location: FF_X50_Y47_N25
\cuantificador|cnt_div_1ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~8_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(4));

-- Location: LCCOMB_X50_Y47_N26
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

-- Location: LCCOMB_X50_Y47_N12
\cuantificador|cnt_div_1ms~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|cnt_div_1ms~1_combout\ = (\cuantificador|Add0~10_combout\ & !\cuantificador|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuantificador|Add0~10_combout\,
	datad => \cuantificador|Equal0~5_combout\,
	combout => \cuantificador|cnt_div_1ms~1_combout\);

-- Location: FF_X50_Y47_N13
\cuantificador|cnt_div_1ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~1_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(5));

-- Location: LCCOMB_X50_Y47_N28
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

-- Location: FF_X50_Y47_N29
\cuantificador|cnt_div_1ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~12_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(6));

-- Location: LCCOMB_X50_Y47_N30
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

-- Location: LCCOMB_X50_Y47_N10
\cuantificador|cnt_div_1ms~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|cnt_div_1ms~0_combout\ = (\cuantificador|Add0~14_combout\ & !\cuantificador|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuantificador|Add0~14_combout\,
	datad => \cuantificador|Equal0~5_combout\,
	combout => \cuantificador|cnt_div_1ms~0_combout\);

-- Location: FF_X50_Y47_N11
\cuantificador|cnt_div_1ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(7));

-- Location: LCCOMB_X50_Y46_N0
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

-- Location: FF_X50_Y46_N1
\cuantificador|cnt_div_1ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~16_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(8));

-- Location: LCCOMB_X50_Y46_N2
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

-- Location: LCCOMB_X50_Y46_N24
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

-- Location: FF_X50_Y46_N25
\cuantificador|cnt_div_1ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~3_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(9));

-- Location: LCCOMB_X50_Y46_N4
\cuantificador|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~20_combout\ = (\cuantificador|cnt_div_1ms\(10) & (\cuantificador|Add0~19\ $ (GND))) # (!\cuantificador|cnt_div_1ms\(10) & (!\cuantificador|Add0~19\ & VCC))
-- \cuantificador|Add0~21\ = CARRY((\cuantificador|cnt_div_1ms\(10) & !\cuantificador|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(10),
	datad => VCC,
	cin => \cuantificador|Add0~19\,
	combout => \cuantificador|Add0~20_combout\,
	cout => \cuantificador|Add0~21\);

-- Location: LCCOMB_X50_Y46_N26
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

-- Location: FF_X50_Y46_N27
\cuantificador|cnt_div_1ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~2_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(10));

-- Location: LCCOMB_X50_Y47_N2
\cuantificador|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~1_combout\ = (\cuantificador|cnt_div_1ms\(9) & (\cuantificador|cnt_div_1ms\(0) & (\cuantificador|cnt_div_1ms\(10) & \cuantificador|cnt_div_1ms\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(9),
	datab => \cuantificador|cnt_div_1ms\(0),
	datac => \cuantificador|cnt_div_1ms\(10),
	datad => \cuantificador|cnt_div_1ms\(1),
	combout => \cuantificador|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y46_N6
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

-- Location: FF_X50_Y46_N7
\cuantificador|cnt_div_1ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~22_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(11));

-- Location: LCCOMB_X50_Y46_N8
\cuantificador|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~24_combout\ = (\cuantificador|cnt_div_1ms\(12) & (\cuantificador|Add0~23\ $ (GND))) # (!\cuantificador|cnt_div_1ms\(12) & (!\cuantificador|Add0~23\ & VCC))
-- \cuantificador|Add0~25\ = CARRY((\cuantificador|cnt_div_1ms\(12) & !\cuantificador|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(12),
	datad => VCC,
	cin => \cuantificador|Add0~23\,
	combout => \cuantificador|Add0~24_combout\,
	cout => \cuantificador|Add0~25\);

-- Location: FF_X50_Y46_N9
\cuantificador|cnt_div_1ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~24_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(12));

-- Location: LCCOMB_X50_Y47_N4
\cuantificador|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~0_combout\ = (\cuantificador|cnt_div_1ms\(7) & (!\cuantificador|cnt_div_1ms\(6) & (!\cuantificador|cnt_div_1ms\(12) & !\cuantificador|cnt_div_1ms\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(7),
	datab => \cuantificador|cnt_div_1ms\(6),
	datac => \cuantificador|cnt_div_1ms\(12),
	datad => \cuantificador|cnt_div_1ms\(5),
	combout => \cuantificador|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y46_N10
\cuantificador|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~26_combout\ = (\cuantificador|cnt_div_1ms\(13) & (!\cuantificador|Add0~25\)) # (!\cuantificador|cnt_div_1ms\(13) & ((\cuantificador|Add0~25\) # (GND)))
-- \cuantificador|Add0~27\ = CARRY((!\cuantificador|Add0~25\) # (!\cuantificador|cnt_div_1ms\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(13),
	datad => VCC,
	cin => \cuantificador|Add0~25\,
	combout => \cuantificador|Add0~26_combout\,
	cout => \cuantificador|Add0~27\);

-- Location: FF_X50_Y46_N11
\cuantificador|cnt_div_1ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~26_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(13));

-- Location: LCCOMB_X50_Y46_N12
\cuantificador|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Add0~28_combout\ = (\cuantificador|cnt_div_1ms\(14) & (\cuantificador|Add0~27\ $ (GND))) # (!\cuantificador|cnt_div_1ms\(14) & (!\cuantificador|Add0~27\ & VCC))
-- \cuantificador|Add0~29\ = CARRY((\cuantificador|cnt_div_1ms\(14) & !\cuantificador|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(14),
	datad => VCC,
	cin => \cuantificador|Add0~27\,
	combout => \cuantificador|Add0~28_combout\,
	cout => \cuantificador|Add0~29\);

-- Location: FF_X50_Y46_N13
\cuantificador|cnt_div_1ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|Add0~28_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(14));

-- Location: LCCOMB_X50_Y46_N14
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

-- Location: LCCOMB_X50_Y46_N28
\cuantificador|cnt_div_1ms~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|cnt_div_1ms~5_combout\ = (\cuantificador|Add0~30_combout\ & !\cuantificador|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuantificador|Add0~30_combout\,
	datad => \cuantificador|Equal0~5_combout\,
	combout => \cuantificador|cnt_div_1ms~5_combout\);

-- Location: FF_X50_Y46_N29
\cuantificador|cnt_div_1ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~5_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(15));

-- Location: LCCOMB_X50_Y46_N16
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

-- Location: LCCOMB_X50_Y46_N18
\cuantificador|cnt_div_1ms~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|cnt_div_1ms~4_combout\ = (!\cuantificador|Equal0~5_combout\ & \cuantificador|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuantificador|Equal0~5_combout\,
	datad => \cuantificador|Add0~32_combout\,
	combout => \cuantificador|cnt_div_1ms~4_combout\);

-- Location: FF_X50_Y46_N19
\cuantificador|cnt_div_1ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|cnt_div_1ms~4_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|cnt_div_1ms\(16));

-- Location: LCCOMB_X50_Y46_N30
\cuantificador|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~3_combout\ = (!\cuantificador|cnt_div_1ms\(14) & (\cuantificador|cnt_div_1ms\(15) & (!\cuantificador|cnt_div_1ms\(13) & \cuantificador|cnt_div_1ms\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(14),
	datab => \cuantificador|cnt_div_1ms\(15),
	datac => \cuantificador|cnt_div_1ms\(13),
	datad => \cuantificador|cnt_div_1ms\(16),
	combout => \cuantificador|Equal0~3_combout\);

-- Location: LCCOMB_X50_Y47_N14
\cuantificador|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~4_combout\ = (\cuantificador|cnt_div_1ms\(4) & \cuantificador|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|cnt_div_1ms\(4),
	datad => \cuantificador|Equal0~3_combout\,
	combout => \cuantificador|Equal0~4_combout\);

-- Location: LCCOMB_X50_Y47_N0
\cuantificador|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~2_combout\ = (\cuantificador|cnt_div_1ms\(3) & (\cuantificador|cnt_div_1ms\(2) & (!\cuantificador|cnt_div_1ms\(11) & !\cuantificador|cnt_div_1ms\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|cnt_div_1ms\(3),
	datab => \cuantificador|cnt_div_1ms\(2),
	datac => \cuantificador|cnt_div_1ms\(11),
	datad => \cuantificador|cnt_div_1ms\(8),
	combout => \cuantificador|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y47_N6
\cuantificador|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|Equal0~5_combout\ = (\cuantificador|Equal0~1_combout\ & (\cuantificador|Equal0~0_combout\ & (\cuantificador|Equal0~4_combout\ & \cuantificador|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|Equal0~1_combout\,
	datab => \cuantificador|Equal0~0_combout\,
	datac => \cuantificador|Equal0~4_combout\,
	datad => \cuantificador|Equal0~2_combout\,
	combout => \cuantificador|Equal0~5_combout\);

-- Location: FF_X50_Y47_N9
\cuantificador|mux_disp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|mux_disp[1]~1_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(1));

-- Location: FF_X50_Y47_N15
\cuantificador|mux_disp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuantificador|mux_disp\(1),
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(2));

-- Location: FF_X50_Y47_N27
\cuantificador|mux_disp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuantificador|mux_disp\(2),
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(3));

-- Location: LCCOMB_X49_Y47_N28
\cuantificador|mux_disp[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|mux_disp[4]~feeder_combout\ = \cuantificador|mux_disp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cuantificador|mux_disp\(3),
	combout => \cuantificador|mux_disp[4]~feeder_combout\);

-- Location: FF_X49_Y47_N29
\cuantificador|mux_disp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|mux_disp[4]~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(4));

-- Location: LCCOMB_X51_Y47_N26
\cuantificador|mux_disp[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|mux_disp[5]~feeder_combout\ = \cuantificador|mux_disp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuantificador|mux_disp\(4),
	combout => \cuantificador|mux_disp[5]~feeder_combout\);

-- Location: FF_X51_Y47_N27
\cuantificador|mux_disp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuantificador|mux_disp[5]~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(5));

-- Location: FF_X51_Y47_N9
\cuantificador|mux_disp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuantificador|mux_disp\(5),
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(6));

-- Location: FF_X51_Y47_N3
\cuantificador|mux_disp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuantificador|mux_disp\(6),
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(7));

-- Location: LCCOMB_X51_Y47_N2
\cuantificador|mux_disp[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|mux_disp[0]~0_combout\ = !\cuantificador|mux_disp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuantificador|mux_disp\(7),
	combout => \cuantificador|mux_disp[0]~0_combout\);

-- Location: FF_X50_Y47_N31
\cuantificador|mux_disp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuantificador|mux_disp[0]~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cuantificador|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuantificador|mux_disp\(0));

-- Location: LCCOMB_X52_Y47_N26
\cuantificador|dig_activo~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~8_combout\ = (!\cuantificador|mux_disp\(3) & (!\cuantificador|mux_disp\(2) & (!\cuantificador|mux_disp\(5) & !\cuantificador|mux_disp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|mux_disp\(3),
	datab => \cuantificador|mux_disp\(2),
	datac => \cuantificador|mux_disp\(5),
	datad => \cuantificador|mux_disp\(4),
	combout => \cuantificador|dig_activo~8_combout\);

-- Location: LCCOMB_X31_Y32_N20
\controlador|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Selector3~0_combout\ = (\controlador|cnt_reg\(1) & (\controlador|estado.config~q\ & !\controlador|cnt_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_reg\(1),
	datac => \controlador|estado.config~q\,
	datad => \controlador|cnt_reg\(0),
	combout => \controlador|Selector3~0_combout\);

-- Location: LCCOMB_X30_Y32_N24
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

-- Location: LCCOMB_X30_Y32_N22
\controlador|estado.medidas~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|estado.medidas~0_combout\ = (\controlador|estado.medidas~q\) # ((\controlador|estado.offset~q\ & \controlador|ena_320ms~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|estado.offset~q\,
	datac => \controlador|estado.medidas~q\,
	datad => \controlador|ena_320ms~combout\,
	combout => \controlador|estado.medidas~0_combout\);

-- Location: FF_X30_Y32_N23
\controlador|estado.medidas\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|estado.medidas~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|estado.medidas~q\);

-- Location: LCCOMB_X30_Y32_N0
\controlador|process_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|process_4~0_combout\ = (\controlador|estado.medidas~q\) # (\controlador|estado.offset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador|estado.medidas~q\,
	datad => \controlador|estado.offset~q\,
	combout => \controlador|process_4~0_combout\);

-- Location: FF_X30_Y32_N25
\controlador|cnt_5ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms[0]~6_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(0));

-- Location: LCCOMB_X27_Y33_N14
\controlador|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~1_cout\ = CARRY(!\controlador|cnt_5ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(0),
	datad => VCC,
	cout => \controlador|Add0~1_cout\);

-- Location: LCCOMB_X27_Y33_N16
\controlador|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~2_combout\ = (\controlador|cnt_5ms\(1) & (!\controlador|Add0~1_cout\)) # (!\controlador|cnt_5ms\(1) & ((\controlador|Add0~1_cout\) # (GND)))
-- \controlador|Add0~3\ = CARRY((!\controlador|Add0~1_cout\) # (!\controlador|cnt_5ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(1),
	datad => VCC,
	cin => \controlador|Add0~1_cout\,
	combout => \controlador|Add0~2_combout\,
	cout => \controlador|Add0~3\);

-- Location: FF_X27_Y33_N17
\controlador|cnt_5ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~2_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(1));

-- Location: LCCOMB_X29_Y32_N8
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

-- Location: LCCOMB_X27_Y33_N18
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

-- Location: LCCOMB_X27_Y33_N2
\controlador|cnt_5ms~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~5_combout\ = (\controlador|Add0~4_combout\ & (((\controlador|cnt_5ms\(1)) # (!\controlador|Equal0~4_combout\)) # (!\controlador|cnt_5ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(0),
	datab => \controlador|cnt_5ms\(1),
	datac => \controlador|Equal0~4_combout\,
	datad => \controlador|Add0~4_combout\,
	combout => \controlador|cnt_5ms~5_combout\);

-- Location: FF_X27_Y33_N3
\controlador|cnt_5ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~5_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(2));

-- Location: LCCOMB_X27_Y33_N20
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

-- Location: FF_X27_Y33_N21
\controlador|cnt_5ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~6_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(3));

-- Location: LCCOMB_X27_Y33_N22
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

-- Location: LCCOMB_X27_Y33_N4
\controlador|cnt_5ms~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~4_combout\ = (\controlador|Add0~8_combout\ & ((\controlador|cnt_5ms\(1)) # ((!\controlador|Equal0~4_combout\) # (!\controlador|cnt_5ms\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~8_combout\,
	datab => \controlador|cnt_5ms\(1),
	datac => \controlador|cnt_5ms\(0),
	datad => \controlador|Equal0~4_combout\,
	combout => \controlador|cnt_5ms~4_combout\);

-- Location: FF_X27_Y33_N5
\controlador|cnt_5ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~4_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(4));

-- Location: LCCOMB_X27_Y33_N24
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

-- Location: LCCOMB_X27_Y33_N6
\controlador|cnt_5ms~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~3_combout\ = (\controlador|Add0~10_combout\ & (((\controlador|cnt_5ms\(1)) # (!\controlador|Equal0~4_combout\)) # (!\controlador|cnt_5ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(0),
	datab => \controlador|cnt_5ms\(1),
	datac => \controlador|Equal0~4_combout\,
	datad => \controlador|Add0~10_combout\,
	combout => \controlador|cnt_5ms~3_combout\);

-- Location: FF_X27_Y33_N7
\controlador|cnt_5ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~3_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(5));

-- Location: LCCOMB_X27_Y33_N26
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

-- Location: LCCOMB_X27_Y33_N8
\controlador|cnt_5ms~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~2_combout\ = (\controlador|Add0~12_combout\ & ((\controlador|cnt_5ms\(1)) # ((!\controlador|Equal0~4_combout\) # (!\controlador|cnt_5ms\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~12_combout\,
	datab => \controlador|cnt_5ms\(1),
	datac => \controlador|cnt_5ms\(0),
	datad => \controlador|Equal0~4_combout\,
	combout => \controlador|cnt_5ms~2_combout\);

-- Location: FF_X27_Y33_N9
\controlador|cnt_5ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~2_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(6));

-- Location: LCCOMB_X27_Y33_N28
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

-- Location: LCCOMB_X27_Y33_N10
\controlador|cnt_5ms~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~1_combout\ = (\controlador|Add0~14_combout\ & (((\controlador|cnt_5ms\(1)) # (!\controlador|Equal0~4_combout\)) # (!\controlador|cnt_5ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(0),
	datab => \controlador|cnt_5ms\(1),
	datac => \controlador|Equal0~4_combout\,
	datad => \controlador|Add0~14_combout\,
	combout => \controlador|cnt_5ms~1_combout\);

-- Location: FF_X27_Y33_N11
\controlador|cnt_5ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~1_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(7));

-- Location: LCCOMB_X27_Y33_N30
\controlador|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~16_combout\ = (\controlador|cnt_5ms\(8) & (\controlador|Add0~15\ $ (GND))) # (!\controlador|cnt_5ms\(8) & (!\controlador|Add0~15\ & VCC))
-- \controlador|Add0~17\ = CARRY((\controlador|cnt_5ms\(8) & !\controlador|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(8),
	datad => VCC,
	cin => \controlador|Add0~15\,
	combout => \controlador|Add0~16_combout\,
	cout => \controlador|Add0~17\);

-- Location: LCCOMB_X27_Y33_N0
\controlador|cnt_5ms~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_5ms~0_combout\ = (\controlador|Add0~16_combout\ & ((\controlador|cnt_5ms\(1)) # ((!\controlador|Equal0~4_combout\) # (!\controlador|cnt_5ms\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~16_combout\,
	datab => \controlador|cnt_5ms\(1),
	datac => \controlador|cnt_5ms\(0),
	datad => \controlador|Equal0~4_combout\,
	combout => \controlador|cnt_5ms~0_combout\);

-- Location: FF_X27_Y33_N1
\controlador|cnt_5ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_5ms~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(8));

-- Location: LCCOMB_X27_Y32_N0
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

-- Location: FF_X27_Y32_N1
\controlador|cnt_5ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~18_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(9));

-- Location: LCCOMB_X27_Y32_N26
\controlador|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~2_combout\ = (\controlador|cnt_5ms\(7) & (!\controlador|cnt_5ms\(9) & (\controlador|cnt_5ms\(6) & \controlador|cnt_5ms\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(7),
	datab => \controlador|cnt_5ms\(9),
	datac => \controlador|cnt_5ms\(6),
	datad => \controlador|cnt_5ms\(8),
	combout => \controlador|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y32_N2
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

-- Location: FF_X27_Y32_N3
\controlador|cnt_5ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~20_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(10));

-- Location: LCCOMB_X27_Y32_N4
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

-- Location: FF_X27_Y32_N5
\controlador|cnt_5ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~22_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(11));

-- Location: LCCOMB_X27_Y32_N6
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

-- Location: FF_X27_Y32_N7
\controlador|cnt_5ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~24_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(12));

-- Location: LCCOMB_X27_Y32_N8
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

-- Location: FF_X27_Y32_N9
\controlador|cnt_5ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~26_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(13));

-- Location: LCCOMB_X27_Y32_N28
\controlador|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~1_combout\ = (!\controlador|cnt_5ms\(12) & (!\controlador|cnt_5ms\(11) & (!\controlador|cnt_5ms\(13) & !\controlador|cnt_5ms\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(12),
	datab => \controlador|cnt_5ms\(11),
	datac => \controlador|cnt_5ms\(13),
	datad => \controlador|cnt_5ms\(10),
	combout => \controlador|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y32_N10
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

-- Location: FF_X27_Y32_N11
\controlador|cnt_5ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~28_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(14));

-- Location: LCCOMB_X27_Y32_N12
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

-- Location: FF_X27_Y32_N13
\controlador|cnt_5ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~30_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(15));

-- Location: LCCOMB_X27_Y32_N14
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

-- Location: FF_X27_Y32_N15
\controlador|cnt_5ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~32_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(16));

-- Location: LCCOMB_X27_Y32_N16
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

-- Location: FF_X27_Y32_N17
\controlador|cnt_5ms[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Add0~34_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_5ms\(17));

-- Location: LCCOMB_X27_Y32_N30
\controlador|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~0_combout\ = (!\controlador|cnt_5ms\(15) & (!\controlador|cnt_5ms\(17) & (!\controlador|cnt_5ms\(16) & !\controlador|cnt_5ms\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(15),
	datab => \controlador|cnt_5ms\(17),
	datac => \controlador|cnt_5ms\(16),
	datad => \controlador|cnt_5ms\(14),
	combout => \controlador|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y33_N12
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

-- Location: LCCOMB_X27_Y32_N24
\controlador|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~4_combout\ = (\controlador|Equal0~2_combout\ & (\controlador|Equal0~1_combout\ & (\controlador|Equal0~0_combout\ & \controlador|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Equal0~2_combout\,
	datab => \controlador|Equal0~1_combout\,
	datac => \controlador|Equal0~0_combout\,
	datad => \controlador|Equal0~3_combout\,
	combout => \controlador|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y32_N10
\controlador|cnt_320ms[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms[6]~7_combout\ = (!\controlador|cnt_5ms\(1) & (\controlador|estado.offset~q\ & (\controlador|Equal0~4_combout\ & \controlador|cnt_5ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(1),
	datab => \controlador|estado.offset~q\,
	datac => \controlador|Equal0~4_combout\,
	datad => \controlador|cnt_5ms\(0),
	combout => \controlador|cnt_320ms[6]~7_combout\);

-- Location: LCCOMB_X29_Y32_N28
\controlador|cnt_320ms~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~8_combout\ = (!\controlador|ena_320ms~combout\ & ((\controlador|cnt_320ms[6]~7_combout\ & (!\controlador|Add1~0_combout\)) # (!\controlador|cnt_320ms[6]~7_combout\ & ((\controlador|cnt_320ms\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add1~0_combout\,
	datab => \controlador|cnt_320ms[6]~7_combout\,
	datac => \controlador|cnt_320ms\(0),
	datad => \controlador|ena_320ms~combout\,
	combout => \controlador|cnt_320ms~8_combout\);

-- Location: FF_X29_Y32_N29
\controlador|cnt_320ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~8_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(0));

-- Location: LCCOMB_X29_Y32_N10
\controlador|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~2_combout\ = (\controlador|cnt_320ms\(1) & (!\controlador|Add1~1\)) # (!\controlador|cnt_320ms\(1) & ((\controlador|Add1~1\) # (GND)))
-- \controlador|Add1~3\ = CARRY((!\controlador|Add1~1\) # (!\controlador|cnt_320ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_320ms\(1),
	datad => VCC,
	cin => \controlador|Add1~1\,
	combout => \controlador|Add1~2_combout\,
	cout => \controlador|Add1~3\);

-- Location: LCCOMB_X29_Y32_N2
\controlador|cnt_320ms~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~6_combout\ = (\controlador|Add1~2_combout\ & !\controlador|ena_320ms~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add1~2_combout\,
	datad => \controlador|ena_320ms~combout\,
	combout => \controlador|cnt_320ms~6_combout\);

-- Location: LCCOMB_X29_Y32_N24
\controlador|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~5_combout\ = (!\controlador|cnt_5ms\(1) & (\controlador|Equal0~4_combout\ & \controlador|cnt_5ms\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|cnt_5ms\(1),
	datac => \controlador|Equal0~4_combout\,
	datad => \controlador|cnt_5ms\(0),
	combout => \controlador|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y32_N30
\controlador|cnt_320ms[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms[3]~2_combout\ = (\controlador|Equal0~5_combout\ & ((\controlador|cnt_320ms\(6)) # (\controlador|estado.offset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_320ms\(6),
	datac => \controlador|estado.offset~q\,
	datad => \controlador|Equal0~5_combout\,
	combout => \controlador|cnt_320ms[3]~2_combout\);

-- Location: FF_X29_Y32_N3
\controlador|cnt_320ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~6_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|cnt_320ms[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(1));

-- Location: LCCOMB_X29_Y32_N12
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

-- Location: LCCOMB_X29_Y32_N4
\controlador|cnt_320ms~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~5_combout\ = (\controlador|Add1~4_combout\ & !\controlador|ena_320ms~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add1~4_combout\,
	datad => \controlador|ena_320ms~combout\,
	combout => \controlador|cnt_320ms~5_combout\);

-- Location: FF_X29_Y32_N5
\controlador|cnt_320ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~5_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|cnt_320ms[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(2));

-- Location: LCCOMB_X29_Y32_N14
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

-- Location: LCCOMB_X29_Y32_N26
\controlador|cnt_320ms~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~4_combout\ = (\controlador|Add1~6_combout\ & !\controlador|ena_320ms~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador|Add1~6_combout\,
	datad => \controlador|ena_320ms~combout\,
	combout => \controlador|cnt_320ms~4_combout\);

-- Location: FF_X29_Y32_N27
\controlador|cnt_320ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~4_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|cnt_320ms[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(3));

-- Location: LCCOMB_X29_Y32_N16
\controlador|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~8_combout\ = (\controlador|cnt_320ms\(4) & (\controlador|Add1~7\ $ (GND))) # (!\controlador|cnt_320ms\(4) & (!\controlador|Add1~7\ & VCC))
-- \controlador|Add1~9\ = CARRY((\controlador|cnt_320ms\(4) & !\controlador|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_320ms\(4),
	datad => VCC,
	cin => \controlador|Add1~7\,
	combout => \controlador|Add1~8_combout\,
	cout => \controlador|Add1~9\);

-- Location: LCCOMB_X29_Y32_N22
\controlador|cnt_320ms~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~3_combout\ = (\controlador|Add1~8_combout\ & !\controlador|ena_320ms~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Add1~8_combout\,
	datad => \controlador|ena_320ms~combout\,
	combout => \controlador|cnt_320ms~3_combout\);

-- Location: FF_X29_Y32_N23
\controlador|cnt_320ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~3_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|cnt_320ms[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(4));

-- Location: LCCOMB_X29_Y32_N18
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

-- Location: LCCOMB_X29_Y32_N0
\controlador|cnt_320ms~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms~1_combout\ = (\controlador|Add1~10_combout\ & !\controlador|ena_320ms~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Add1~10_combout\,
	datad => \controlador|ena_320ms~combout\,
	combout => \controlador|cnt_320ms~1_combout\);

-- Location: FF_X29_Y32_N1
\controlador|cnt_320ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms~1_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \controlador|cnt_320ms[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(5));

-- Location: LCCOMB_X29_Y32_N20
\controlador|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~12_combout\ = \controlador|Add1~11\ $ (!\controlador|cnt_320ms\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controlador|cnt_320ms\(6),
	cin => \controlador|Add1~11\,
	combout => \controlador|Add1~12_combout\);

-- Location: LCCOMB_X29_Y32_N6
\controlador|cnt_320ms[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_320ms[6]~0_combout\ = (\controlador|cnt_320ms\(6) & (((!\controlador|Equal0~5_combout\)))) # (!\controlador|cnt_320ms\(6) & (\controlador|estado.offset~q\ & (\controlador|Add1~12_combout\ & \controlador|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado.offset~q\,
	datab => \controlador|Add1~12_combout\,
	datac => \controlador|cnt_320ms\(6),
	datad => \controlador|Equal0~5_combout\,
	combout => \controlador|cnt_320ms[6]~0_combout\);

-- Location: FF_X29_Y32_N7
\controlador|cnt_320ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_320ms[6]~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_320ms\(6));

-- Location: LCCOMB_X30_Y32_N28
\controlador|ena_320ms\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|ena_320ms~combout\ = (!\controlador|cnt_5ms\(1) & (\controlador|cnt_320ms\(6) & (\controlador|Equal0~4_combout\ & \controlador|cnt_5ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_5ms\(1),
	datab => \controlador|cnt_320ms\(6),
	datac => \controlador|Equal0~4_combout\,
	datad => \controlador|cnt_5ms\(0),
	combout => \controlador|ena_320ms~combout\);

-- Location: LCCOMB_X30_Y32_N18
\controlador|estado.preconfig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|estado.preconfig~0_combout\ = ((\controlador|estado.preconfig~q\) # ((\controlador|estado.offset~q\ & \controlador|ena_320ms~combout\))) # (!\controlador|Selector3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Selector3~1_combout\,
	datab => \controlador|estado.offset~q\,
	datac => \controlador|estado.preconfig~q\,
	datad => \controlador|ena_320ms~combout\,
	combout => \controlador|estado.preconfig~0_combout\);

-- Location: FF_X30_Y32_N19
\controlador|estado.preconfig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|estado.preconfig~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|estado.preconfig~q\);

-- Location: IOIBUF_X31_Y39_N29
\ena_op~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ena_op,
	o => \ena_op~input_o\);

-- Location: LCCOMB_X30_Y32_N12
\controlador|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Selector3~1_combout\ = (!\controlador|Selector3~0_combout\ & ((\controlador|estado.preconfig~q\) # (!\ena_op~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|estado.preconfig~q\,
	datac => \controlador|Selector3~0_combout\,
	datad => \ena_op~input_o\,
	combout => \controlador|Selector3~1_combout\);

-- Location: LCCOMB_X30_Y32_N20
\controlador|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Selector2~0_combout\ = (\controlador|estado.offset~q\ & (!\controlador|ena_320ms~combout\ & ((\controlador|Selector3~0_combout\) # (\controlador|Selector3~1_combout\)))) # (!\controlador|estado.offset~q\ & (\controlador|Selector3~0_combout\ & 
-- ((!\controlador|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Selector3~0_combout\,
	datab => \controlador|ena_320ms~combout\,
	datac => \controlador|estado.offset~q\,
	datad => \controlador|Selector3~1_combout\,
	combout => \controlador|Selector2~0_combout\);

-- Location: FF_X30_Y32_N21
\controlador|estado.offset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Selector2~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|estado.offset~q\);

-- Location: LCCOMB_X30_Y32_N2
\controlador|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Selector3~2_combout\ = (\controlador|estado.offset~q\ & (\controlador|cnt_320ms\(6) & \controlador|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|estado.offset~q\,
	datac => \controlador|cnt_320ms\(6),
	datad => \controlador|Equal0~5_combout\,
	combout => \controlador|Selector3~2_combout\);

-- Location: LCCOMB_X30_Y32_N6
\controlador|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Selector1~0_combout\ = (!\controlador|Selector3~2_combout\ & ((\controlador|Selector3~1_combout\ & ((\controlador|estado.config~q\))) # (!\controlador|Selector3~1_combout\ & (!\controlador|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Selector3~0_combout\,
	datab => \controlador|Selector3~2_combout\,
	datac => \controlador|estado.config~q\,
	datad => \controlador|Selector3~1_combout\,
	combout => \controlador|Selector1~0_combout\);

-- Location: FF_X30_Y32_N7
\controlador|estado.config\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|Selector1~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|estado.config~q\);

-- Location: LCCOMB_X30_Y32_N30
\controlador|ini_tx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|ini_tx~0_combout\ = (!\controlador|process_4~0_combout\ & ((\controlador|estado.config~q\ & ((\master|cnt_div[0]~6_combout\))) # (!\controlador|estado.config~q\ & (\controlador|ini_tx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado.config~q\,
	datab => \controlador|process_4~0_combout\,
	datac => \controlador|ini_tx~q\,
	datad => \master|cnt_div[0]~6_combout\,
	combout => \controlador|ini_tx~0_combout\);

-- Location: LCCOMB_X30_Y32_N8
\controlador|ini_tx~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|ini_tx~1_combout\ = (\controlador|ini_tx~0_combout\) # ((\master|cnt_div[0]~6_combout\ & (\controlador|Equal0~5_combout\ & \controlador|process_4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div[0]~6_combout\,
	datab => \controlador|Equal0~5_combout\,
	datac => \controlador|ini_tx~0_combout\,
	datad => \controlador|process_4~0_combout\,
	combout => \controlador|ini_tx~1_combout\);

-- Location: FF_X30_Y32_N9
\controlador|ini_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|ini_tx~1_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|ini_tx~q\);

-- Location: LCCOMB_X32_Y32_N6
\master|cnt_div[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[0]~7_combout\ = (\controlador|ini_tx~q\) # (!\master|cnt_div[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|cnt_div[0]~6_combout\,
	datac => \controlador|ini_tx~q\,
	combout => \master|cnt_div[0]~7_combout\);

-- Location: LCCOMB_X32_Y32_N16
\master|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|Add0~0_combout\ = \master|cnt_div\(1) $ (\master|cnt_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|cnt_div\(1),
	datac => \master|cnt_div\(0),
	combout => \master|Add0~0_combout\);

-- Location: LCCOMB_X32_Y32_N22
\master|cnt_div[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[0]~4_combout\ = (!\controlador|ini_tx~q\ & ((\master|ena_bit~combout\) # (!\master|fin_tx~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|fin_tx~0_combout\,
	datac => \controlador|ini_tx~q\,
	datad => \master|ena_bit~combout\,
	combout => \master|cnt_div[0]~4_combout\);

-- Location: LCCOMB_X32_Y32_N0
\master|SPC_up~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|SPC_up~0_combout\ = (\master|cnt_div\(1) & \master|cnt_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|cnt_div\(1),
	datac => \master|cnt_div\(0),
	combout => \master|SPC_up~0_combout\);

-- Location: LCCOMB_X32_Y32_N20
\master|cnt_div[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[2]~8_combout\ = (\master|cnt_div[0]~7_combout\ & (\master|cnt_div[0]~5_combout\ & (\master|SPC_up~0_combout\ $ (\master|cnt_div\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div[0]~7_combout\,
	datab => \master|SPC_up~0_combout\,
	datac => \master|cnt_div\(2),
	datad => \master|cnt_div[0]~5_combout\,
	combout => \master|cnt_div[2]~8_combout\);

-- Location: FF_X32_Y32_N21
\master|cnt_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_div[2]~8_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_div\(2));

-- Location: LCCOMB_X32_Y32_N2
\master|cnt_div[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[0]~5_combout\ = (\master|cnt_div[0]~4_combout\ & (((!\master|cnt_div\(2) & !\master|SPC_up~0_combout\)) # (!\master|cnt_div\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(3),
	datab => \master|cnt_div\(2),
	datac => \master|cnt_div[0]~4_combout\,
	datad => \master|SPC_up~0_combout\,
	combout => \master|cnt_div[0]~5_combout\);

-- Location: LCCOMB_X32_Y32_N14
\master|cnt_div[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[1]~9_combout\ = (\master|cnt_div[0]~7_combout\ & ((\master|cnt_div[0]~5_combout\ & (\master|Add0~0_combout\)) # (!\master|cnt_div[0]~5_combout\ & ((\master|cnt_div[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div[0]~7_combout\,
	datab => \master|Add0~0_combout\,
	datac => \master|cnt_div[0]~4_combout\,
	datad => \master|cnt_div[0]~5_combout\,
	combout => \master|cnt_div[1]~9_combout\);

-- Location: FF_X32_Y32_N15
\master|cnt_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_div[1]~9_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_div\(1));

-- Location: LCCOMB_X32_Y32_N8
\master|cnt_div[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[0]~6_combout\ = (!\master|cnt_div\(3) & (!\master|cnt_div\(1) & (!\master|cnt_div\(0) & !\master|cnt_div\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(3),
	datab => \master|cnt_div\(1),
	datac => \master|cnt_div\(0),
	datad => \master|cnt_div\(2),
	combout => \master|cnt_div[0]~6_combout\);

-- Location: LCCOMB_X32_Y32_N4
\master|cnt_div[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[0]~10_combout\ = (\controlador|ini_tx~q\) # ((!\master|cnt_div[0]~6_combout\ & (!\master|cnt_div\(0) & \master|cnt_div[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div[0]~6_combout\,
	datab => \controlador|ini_tx~q\,
	datac => \master|cnt_div\(0),
	datad => \master|cnt_div[0]~5_combout\,
	combout => \master|cnt_div[0]~10_combout\);

-- Location: FF_X32_Y32_N5
\master|cnt_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_div[0]~10_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_div\(0));

-- Location: LCCOMB_X32_Y32_N26
\master|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|Add0~1_combout\ = \master|cnt_div\(3) $ (((\master|cnt_div\(0) & (\master|cnt_div\(1) & \master|cnt_div\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(3),
	datab => \master|cnt_div\(0),
	datac => \master|cnt_div\(1),
	datad => \master|cnt_div\(2),
	combout => \master|Add0~1_combout\);

-- Location: LCCOMB_X32_Y32_N10
\master|cnt_div[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_div[3]~11_combout\ = (\master|Add0~1_combout\ & (\master|cnt_div[0]~5_combout\ & ((\controlador|ini_tx~q\) # (!\master|cnt_div[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|Add0~1_combout\,
	datab => \controlador|ini_tx~q\,
	datac => \master|cnt_div[0]~6_combout\,
	datad => \master|cnt_div[0]~5_combout\,
	combout => \master|cnt_div[3]~11_combout\);

-- Location: FF_X32_Y32_N11
\master|cnt_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_div[3]~11_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_div\(3));

-- Location: LCCOMB_X32_Y32_N24
\master|SPC_up\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|SPC_up~combout\ = (!\master|cnt_div\(3) & (\master|cnt_div\(1) & (\master|cnt_div\(0) & \master|cnt_div\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_div\(3),
	datab => \master|cnt_div\(1),
	datac => \master|cnt_div\(0),
	datad => \master|cnt_div\(2),
	combout => \master|SPC_up~combout\);

-- Location: LCCOMB_X32_Y32_N18
\master|cnt_bit[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_bit[0]~0_combout\ = \master|cnt_bit\(0) $ (\master|SPC_up~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|cnt_bit\(0),
	datad => \master|SPC_up~combout\,
	combout => \master|cnt_bit[0]~0_combout\);

-- Location: FF_X32_Y32_N19
\master|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_bit[0]~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_bit\(0));

-- Location: LCCOMB_X32_Y32_N30
\master|cnt_bit[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_bit[1]~2_combout\ = \master|cnt_bit\(1) $ (((\master|cnt_bit\(0) & \master|SPC_up~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|cnt_bit\(0),
	datac => \master|cnt_bit\(1),
	datad => \master|SPC_up~combout\,
	combout => \master|cnt_bit[1]~2_combout\);

-- Location: FF_X32_Y32_N31
\master|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_bit[1]~2_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_bit\(1));

-- Location: LCCOMB_X32_Y32_N12
\master|cnt_bit[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_bit[2]~1_combout\ = \master|cnt_bit\(2) $ (((\master|cnt_bit\(1) & (\master|cnt_bit\(0) & \master|SPC_up~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_bit\(1),
	datab => \master|cnt_bit\(0),
	datac => \master|cnt_bit\(2),
	datad => \master|SPC_up~combout\,
	combout => \master|cnt_bit[2]~1_combout\);

-- Location: FF_X32_Y32_N13
\master|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_bit[2]~1_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_bit\(2));

-- Location: LCCOMB_X32_Y32_N28
\master|ena_bit\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|ena_bit~combout\ = (((!\master|SPC_up~combout\) # (!\master|cnt_bit\(1))) # (!\master|cnt_bit\(0))) # (!\master|cnt_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_bit\(2),
	datab => \master|cnt_bit\(0),
	datac => \master|cnt_bit\(1),
	datad => \master|SPC_up~combout\,
	combout => \master|ena_bit~combout\);

-- Location: LCCOMB_X31_Y32_N2
\controlador|cnt_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_reg[0]~2_combout\ = \controlador|cnt_reg\(0) $ (((\master|fin_tx~0_combout\ & (\controlador|estado.config~q\ & !\master|ena_bit~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|fin_tx~0_combout\,
	datab => \controlador|estado.config~q\,
	datac => \controlador|cnt_reg\(0),
	datad => \master|ena_bit~combout\,
	combout => \controlador|cnt_reg[0]~2_combout\);

-- Location: FF_X31_Y32_N3
\controlador|cnt_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_reg[0]~2_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_reg\(0));

-- Location: LCCOMB_X31_Y32_N26
\controlador|cnt_reg[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_reg[1]~0_combout\ = (\controlador|cnt_reg\(0) & (\master|fin_tx~0_combout\ & (\controlador|estado.config~q\ & !\master|ena_bit~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_reg\(0),
	datab => \master|fin_tx~0_combout\,
	datac => \controlador|estado.config~q\,
	datad => \master|ena_bit~combout\,
	combout => \controlador|cnt_reg[1]~0_combout\);

-- Location: LCCOMB_X31_Y32_N6
\controlador|cnt_reg[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|cnt_reg[1]~1_combout\ = \controlador|cnt_reg[1]~0_combout\ $ (\controlador|cnt_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_reg[1]~0_combout\,
	datac => \controlador|cnt_reg\(1),
	combout => \controlador|cnt_reg[1]~1_combout\);

-- Location: FF_X31_Y32_N7
\controlador|cnt_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|cnt_reg[1]~1_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|cnt_reg\(1));

-- Location: LCCOMB_X31_Y32_N16
\controlador|dato[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[15]~2_combout\ = (\controlador|dato\(15) & ((\controlador|cnt_reg\(1)) # ((!\master|cnt_div[0]~6_combout\) # (!\controlador|estado.config~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_reg\(1),
	datab => \controlador|dato\(15),
	datac => \controlador|estado.config~q\,
	datad => \master|cnt_div[0]~6_combout\,
	combout => \controlador|dato[15]~2_combout\);

-- Location: LCCOMB_X31_Y32_N14
\controlador|dato[15]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|dato[15]~3_combout\ = (\controlador|dato[15]~2_combout\) # ((\controlador|cnt_reg\(1) & (!\controlador|cnt_reg\(0) & \controlador|estado.config~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|cnt_reg\(1),
	datab => \controlador|cnt_reg\(0),
	datac => \controlador|estado.config~q\,
	datad => \controlador|dato[15]~2_combout\,
	combout => \controlador|dato[15]~3_combout\);

-- Location: FF_X31_Y32_N15
\controlador|dato[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlador|dato[15]~3_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|dato\(15));

-- Location: LCCOMB_X31_Y32_N22
\master|reg_nWR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|reg_nWR~0_combout\ = (\controlador|ini_tx~q\ & (\controlador|dato\(15))) # (!\controlador|ini_tx~q\ & ((\master|reg_nWR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|dato\(15),
	datac => \master|reg_nWR~q\,
	datad => \controlador|ini_tx~q\,
	combout => \master|reg_nWR~0_combout\);

-- Location: FF_X31_Y32_N23
\master|reg_nWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|reg_nWR~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|reg_nWR~q\);

-- Location: LCCOMB_X31_Y32_N10
\master|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|Add2~0_combout\ = \master|cnt_byte\(2) $ (((\master|cnt_byte\(1) & !\master|cnt_byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|cnt_byte\(1),
	datac => \master|cnt_byte\(0),
	datad => \master|cnt_byte\(2),
	combout => \master|Add2~0_combout\);

-- Location: LCCOMB_X31_Y32_N28
\master|cnt_byte[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_byte[2]~0_combout\ = (\master|ena_bit~combout\ & (((\master|cnt_byte\(2))))) # (!\master|ena_bit~combout\ & (\master|Add2~0_combout\ & (!\master|fin_tx~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|Add2~0_combout\,
	datab => \master|fin_tx~0_combout\,
	datac => \master|cnt_byte\(2),
	datad => \master|ena_bit~combout\,
	combout => \master|cnt_byte[2]~0_combout\);

-- Location: FF_X31_Y32_N29
\master|cnt_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_byte[2]~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_byte\(2));

-- Location: LCCOMB_X31_Y32_N24
\master|fin_tx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|fin_tx~0_combout\ = (\master|reg_nWR~q\ & (!\master|cnt_byte\(1) & (!\master|cnt_byte\(0) & \master|cnt_byte\(2)))) # (!\master|reg_nWR~q\ & (\master|cnt_byte\(1) & (\master|cnt_byte\(0) & !\master|cnt_byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|reg_nWR~q\,
	datab => \master|cnt_byte\(1),
	datac => \master|cnt_byte\(0),
	datad => \master|cnt_byte\(2),
	combout => \master|fin_tx~0_combout\);

-- Location: LCCOMB_X31_Y32_N8
\master|cnt_byte~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_byte~2_combout\ = (\master|cnt_byte\(0) & ((\master|ena_bit~combout\))) # (!\master|cnt_byte\(0) & (!\master|fin_tx~0_combout\ & !\master|ena_bit~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|fin_tx~0_combout\,
	datac => \master|cnt_byte\(0),
	datad => \master|ena_bit~combout\,
	combout => \master|cnt_byte~2_combout\);

-- Location: FF_X31_Y32_N9
\master|cnt_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_byte~2_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_byte\(0));

-- Location: LCCOMB_X31_Y32_N18
\master|cnt_byte[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|cnt_byte[1]~1_combout\ = (\master|ena_bit~combout\ & (((\master|cnt_byte\(1))))) # (!\master|ena_bit~combout\ & (!\master|fin_tx~0_combout\ & (\master|cnt_byte\(0) $ (!\master|cnt_byte\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|cnt_byte\(0),
	datab => \master|fin_tx~0_combout\,
	datac => \master|cnt_byte\(1),
	datad => \master|ena_bit~combout\,
	combout => \master|cnt_byte[1]~1_combout\);

-- Location: FF_X31_Y32_N19
\master|cnt_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|cnt_byte[1]~1_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|cnt_byte\(1));

-- Location: LCCOMB_X31_Y32_N12
\master|ena_rd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|ena_rd~0_combout\ = (\master|reg_nWR~q\ & ((\master|cnt_byte\(1)) # (\master|cnt_byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master|cnt_byte\(1),
	datac => \master|reg_nWR~q\,
	datad => \master|cnt_byte\(2),
	combout => \master|ena_rd~0_combout\);

-- Location: LCCOMB_X31_Y32_N4
\master|ena_rd~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master|ena_rd~1_combout\ = (\master|ena_rd~0_combout\ & (\master|SPC_up~combout\ & ((\master|ena_rd~q\) # (!\master|ena_bit~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|ena_rd~0_combout\,
	datab => \master|ena_bit~combout\,
	datac => \master|ena_rd~q\,
	datad => \master|SPC_up~combout\,
	combout => \master|ena_rd~1_combout\);

-- Location: FF_X31_Y32_N5
\master|ena_rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \master|ena_rd~1_combout\,
	ena => \nRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master|ena_rd~q\);

-- Location: LCCOMB_X49_Y39_N14
\calc_offset|cnt_rd[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|cnt_rd[0]~3_combout\ = \calc_offset|cnt_rd\(0) $ (\master|ena_rd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calc_offset|cnt_rd\(0),
	datad => \master|ena_rd~q\,
	combout => \calc_offset|cnt_rd[0]~3_combout\);

-- Location: FF_X49_Y39_N15
\calc_offset|cnt_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|cnt_rd[0]~3_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(0));

-- Location: LCCOMB_X49_Y39_N8
\calc_offset|cnt_rd[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|cnt_rd[1]~2_combout\ = \calc_offset|cnt_rd\(1) $ (((\calc_offset|cnt_rd\(0) & \master|ena_rd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|cnt_rd\(0),
	datac => \calc_offset|cnt_rd\(1),
	datad => \master|ena_rd~q\,
	combout => \calc_offset|cnt_rd[1]~2_combout\);

-- Location: FF_X49_Y39_N9
\calc_offset|cnt_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|cnt_rd[1]~2_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(1));

-- Location: LCCOMB_X49_Y39_N12
\calc_offset|cnt_rd[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|cnt_rd[2]~0_combout\ = (\calc_offset|cnt_rd\(1) & (\calc_offset|cnt_rd\(0) & \master|ena_rd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \calc_offset|cnt_rd\(1),
	datac => \calc_offset|cnt_rd\(0),
	datad => \master|ena_rd~q\,
	combout => \calc_offset|cnt_rd[2]~0_combout\);

-- Location: LCCOMB_X49_Y39_N26
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

-- Location: LCCOMB_X49_Y39_N30
\calc_offset|cnt_rd[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|cnt_rd[2]~4_combout\ = (!\calc_offset|cnt_rd\(7) & (\calc_offset|cnt_rd\(1) & (\calc_offset|cnt_rd\(0) & \master|ena_rd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datab => \calc_offset|cnt_rd\(1),
	datac => \calc_offset|cnt_rd\(0),
	datad => \master|ena_rd~q\,
	combout => \calc_offset|cnt_rd[2]~4_combout\);

-- Location: FF_X49_Y39_N27
\calc_offset|cnt_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|cnt_rd[2]~5_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|cnt_rd[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(2));

-- Location: LCCOMB_X49_Y39_N16
\calc_offset|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Add1~0_combout\ = (\calc_offset|cnt_rd\(2) & (\calc_offset|cnt_rd\(3) $ (VCC))) # (!\calc_offset|cnt_rd\(2) & (\calc_offset|cnt_rd\(3) & VCC))
-- \calc_offset|Add1~1\ = CARRY((\calc_offset|cnt_rd\(2) & \calc_offset|cnt_rd\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(2),
	datab => \calc_offset|cnt_rd\(3),
	datad => VCC,
	combout => \calc_offset|Add1~0_combout\,
	cout => \calc_offset|Add1~1\);

-- Location: FF_X49_Y39_N17
\calc_offset|cnt_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|Add1~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|cnt_rd[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(3));

-- Location: LCCOMB_X49_Y39_N18
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

-- Location: FF_X49_Y39_N19
\calc_offset|cnt_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|Add1~2_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|cnt_rd[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(4));

-- Location: LCCOMB_X49_Y39_N20
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

-- Location: FF_X49_Y39_N21
\calc_offset|cnt_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|Add1~4_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|cnt_rd[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(5));

-- Location: LCCOMB_X49_Y39_N22
\calc_offset|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|Add1~6_combout\ = (\calc_offset|cnt_rd\(6) & (!\calc_offset|Add1~5\)) # (!\calc_offset|cnt_rd\(6) & ((\calc_offset|Add1~5\) # (GND)))
-- \calc_offset|Add1~7\ = CARRY((!\calc_offset|Add1~5\) # (!\calc_offset|cnt_rd\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(6),
	datad => VCC,
	cin => \calc_offset|Add1~5\,
	combout => \calc_offset|Add1~6_combout\,
	cout => \calc_offset|Add1~7\);

-- Location: FF_X49_Y39_N23
\calc_offset|cnt_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|Add1~6_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|cnt_rd[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(6));

-- Location: LCCOMB_X49_Y39_N24
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

-- Location: LCCOMB_X49_Y39_N10
\calc_offset|cnt_rd[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|cnt_rd[7]~1_combout\ = (\calc_offset|cnt_rd\(7)) # ((\calc_offset|cnt_rd[2]~0_combout\ & \calc_offset|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd[2]~0_combout\,
	datac => \calc_offset|cnt_rd\(7),
	datad => \calc_offset|Add1~8_combout\,
	combout => \calc_offset|cnt_rd[7]~1_combout\);

-- Location: FF_X49_Y39_N11
\calc_offset|cnt_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|cnt_rd[7]~1_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|cnt_rd\(7));

-- Location: LCCOMB_X49_Y39_N4
\calc_offset|muestra_bias_rdy~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_bias_rdy~0_combout\ = (\calc_offset|muestra_bias_rdy~q\) # ((\calc_offset|cnt_rd\(7) & (\calc_offset|cnt_rd\(1) & \calc_offset|cnt_rd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|cnt_rd\(7),
	datab => \calc_offset|cnt_rd\(1),
	datac => \calc_offset|cnt_rd\(0),
	datad => \calc_offset|muestra_bias_rdy~q\,
	combout => \calc_offset|muestra_bias_rdy~0_combout\);

-- Location: LCCOMB_X49_Y39_N28
\calc_offset|muestra_bias_rdy~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \calc_offset|muestra_bias_rdy~1_combout\ = (\calc_offset|muestra_bias_rdy~0_combout\ & \master|ena_rd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \calc_offset|muestra_bias_rdy~0_combout\,
	datad => \master|ena_rd~q\,
	combout => \calc_offset|muestra_bias_rdy~1_combout\);

-- Location: FF_X49_Y39_N29
\calc_offset|muestra_bias_rdy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \calc_offset|muestra_bias_rdy~1_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \calc_offset|muestra_bias_rdy~q\);

-- Location: LCCOMB_X54_Y39_N8
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\ = !\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(0)
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\ = CARRY(!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(0),
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X54_Y39_N4
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\ = (\calc_offset|muestra_bias_rdy~q\ & !\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc_offset|muestra_bias_rdy~q\,
	datad => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~0_combout\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\);

-- Location: FF_X54_Y39_N9
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(0));

-- Location: LCCOMB_X54_Y39_N10
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

-- Location: FF_X54_Y39_N11
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(1));

-- Location: LCCOMB_X54_Y39_N12
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & (\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ & VCC))
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & !\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(2),
	datad => VCC,
	cin => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\);

-- Location: FF_X54_Y39_N13
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(2));

-- Location: LCCOMB_X54_Y39_N14
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

-- Location: FF_X54_Y39_N15
\estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_reg_bit\(3));

-- Location: LCCOMB_X54_Y39_N16
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

-- Location: FF_X54_Y39_N5
\estimador|reg_muestra_rtl_0|auto_generated|dffe4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estimador|reg_muestra_rtl_0|auto_generated|cntr3|counter_comb_bita3~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|reg_muestra_rtl_0|auto_generated|dffe4~q\);

-- Location: LCCOMB_X45_Y52_N16
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X54_Y39_N22
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ = \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) $ (VCC)
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datad => VCC,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X54_Y39_N24
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & ((\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (GND)))
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datad => VCC,
	cin => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X54_Y39_N20
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ & 
-- !\estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	datac => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\,
	datad => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\);

-- Location: FF_X54_Y39_N21
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

-- Location: LCCOMB_X54_Y39_N26
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

-- Location: LCCOMB_X54_Y39_N18
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\ = (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ & (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ & 
-- !\estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\,
	datac => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	datad => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\);

-- Location: FF_X54_Y39_N19
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

-- Location: LCCOMB_X54_Y39_N0
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & 
-- (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & !\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(2),
	datac => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3),
	datad => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X54_Y39_N28
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\)) # 
-- (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & ((\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (GND)))
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit\(3),
	datad => VCC,
	cin => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	cout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X54_Y39_N2
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

-- Location: FF_X54_Y39_N3
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

-- Location: LCCOMB_X54_Y39_N30
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

-- Location: LCCOMB_X54_Y39_N6
\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ = (!\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\ & (\estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ & 
-- !\estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita3~0_combout\,
	datac => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	datad => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	combout => \estimador|reg_muestra_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\);

-- Location: FF_X54_Y39_N7
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

-- Location: M9K_X53_Y39_N0
\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "estimador:estimador|altshift_taps:reg_muestra_rtl_0|shift_taps_0im:auto_generated|altsyncram_kfa1:altsyncram2|ALTSYNCRAM",
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
	port_a_logical_ram_width => 20,
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
	port_b_logical_ram_width => 20,
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

-- Location: LCCOMB_X52_Y39_N2
\estimador|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add0~1_cout\ = CARRY(!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\,
	datad => VCC,
	cout => \estimador|Add0~1_cout\);

-- Location: LCCOMB_X52_Y39_N4
\estimador|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add0~2_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a8\ & ((\estimador|Add0~1_cout\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a8\ & (!\estimador|Add0~1_cout\))
-- \estimador|Add0~3\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a8\) # (!\estimador|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a8\,
	datad => VCC,
	cin => \estimador|Add0~1_cout\,
	combout => \estimador|Add0~2_combout\,
	cout => \estimador|Add0~3\);

-- Location: LCCOMB_X52_Y39_N6
\estimador|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add0~4_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\ & (!\estimador|Add0~3\ & VCC)) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\ & (\estimador|Add0~3\ $ (GND)))
-- \estimador|Add0~5\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\ & !\estimador|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a7\,
	datad => VCC,
	cin => \estimador|Add0~3\,
	combout => \estimador|Add0~4_combout\,
	cout => \estimador|Add0~5\);

-- Location: LCCOMB_X52_Y39_N8
\estimador|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add0~6_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a6\ & ((\estimador|Add0~5\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a6\ & (!\estimador|Add0~5\))
-- \estimador|Add0~7\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a6\) # (!\estimador|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a6\,
	datad => VCC,
	cin => \estimador|Add0~5\,
	combout => \estimador|Add0~6_combout\,
	cout => \estimador|Add0~7\);

-- Location: LCCOMB_X52_Y39_N10
\estimador|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add0~8_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\ & (!\estimador|Add0~7\ & VCC)) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\ & (\estimador|Add0~7\ $ (GND)))
-- \estimador|Add0~9\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\ & !\estimador|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a5\,
	datad => VCC,
	cin => \estimador|Add0~7\,
	combout => \estimador|Add0~8_combout\,
	cout => \estimador|Add0~9\);

-- Location: LCCOMB_X52_Y39_N12
\estimador|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add0~10_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a4\ & ((\estimador|Add0~9\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a4\ & (!\estimador|Add0~9\))
-- \estimador|Add0~11\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a4\) # (!\estimador|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a4\,
	datad => VCC,
	cin => \estimador|Add0~9\,
	combout => \estimador|Add0~10_combout\,
	cout => \estimador|Add0~11\);

-- Location: LCCOMB_X52_Y39_N14
\estimador|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add0~12_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\ & (!\estimador|Add0~11\ & VCC)) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\ & (\estimador|Add0~11\ $ (GND)))
-- \estimador|Add0~13\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\ & !\estimador|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a3\,
	datad => VCC,
	cin => \estimador|Add0~11\,
	combout => \estimador|Add0~12_combout\,
	cout => \estimador|Add0~13\);

-- Location: LCCOMB_X52_Y39_N16
\estimador|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add0~14_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a2\ & ((\estimador|Add0~13\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a2\ & (!\estimador|Add0~13\))
-- \estimador|Add0~15\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a2\) # (!\estimador|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a2\,
	datad => VCC,
	cin => \estimador|Add0~13\,
	combout => \estimador|Add0~14_combout\,
	cout => \estimador|Add0~15\);

-- Location: LCCOMB_X52_Y39_N18
\estimador|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add0~16_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\ & (!\estimador|Add0~15\ & VCC)) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\ & (\estimador|Add0~15\ $ (GND)))
-- \estimador|Add0~17\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\ & !\estimador|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a1\,
	datad => VCC,
	cin => \estimador|Add0~15\,
	combout => \estimador|Add0~16_combout\,
	cout => \estimador|Add0~17\);

-- Location: LCCOMB_X52_Y39_N20
\estimador|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add0~18_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ & ((\estimador|Add0~17\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ & 
-- (!\estimador|Add0~17\))
-- \estimador|Add0~19\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\) # (!\estimador|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\,
	datad => VCC,
	cin => \estimador|Add0~17\,
	combout => \estimador|Add0~18_combout\,
	cout => \estimador|Add0~19\);

-- Location: LCCOMB_X52_Y39_N22
\estimador|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add0~20_combout\ = \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ $ (\estimador|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\,
	cin => \estimador|Add0~19\,
	combout => \estimador|Add0~20_combout\);

-- Location: LCCOMB_X51_Y39_N0
\estimador|X_media_N[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[0]~16_combout\ = (\estimador|X_media_N\(0) & (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\ $ (VCC))) # (!\estimador|X_media_N\(0) & (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\ & 
-- VCC))
-- \estimador|X_media_N[0]~17\ = CARRY((\estimador|X_media_N\(0) & \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(0),
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a9\,
	datad => VCC,
	combout => \estimador|X_media_N[0]~16_combout\,
	cout => \estimador|X_media_N[0]~17\);

-- Location: FF_X51_Y39_N1
\estimador|X_media_N[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[0]~16_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(0));

-- Location: LCCOMB_X51_Y39_N2
\estimador|X_media_N[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[1]~18_combout\ = (\estimador|Add0~2_combout\ & ((\estimador|X_media_N\(1) & (\estimador|X_media_N[0]~17\ & VCC)) # (!\estimador|X_media_N\(1) & (!\estimador|X_media_N[0]~17\)))) # (!\estimador|Add0~2_combout\ & 
-- ((\estimador|X_media_N\(1) & (!\estimador|X_media_N[0]~17\)) # (!\estimador|X_media_N\(1) & ((\estimador|X_media_N[0]~17\) # (GND)))))
-- \estimador|X_media_N[1]~19\ = CARRY((\estimador|Add0~2_combout\ & (!\estimador|X_media_N\(1) & !\estimador|X_media_N[0]~17\)) # (!\estimador|Add0~2_combout\ & ((!\estimador|X_media_N[0]~17\) # (!\estimador|X_media_N\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add0~2_combout\,
	datab => \estimador|X_media_N\(1),
	datad => VCC,
	cin => \estimador|X_media_N[0]~17\,
	combout => \estimador|X_media_N[1]~18_combout\,
	cout => \estimador|X_media_N[1]~19\);

-- Location: FF_X51_Y39_N3
\estimador|X_media_N[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[1]~18_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(1));

-- Location: LCCOMB_X51_Y39_N4
\estimador|X_media_N[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[2]~20_combout\ = ((\estimador|Add0~4_combout\ $ (\estimador|X_media_N\(2) $ (!\estimador|X_media_N[1]~19\)))) # (GND)
-- \estimador|X_media_N[2]~21\ = CARRY((\estimador|Add0~4_combout\ & ((\estimador|X_media_N\(2)) # (!\estimador|X_media_N[1]~19\))) # (!\estimador|Add0~4_combout\ & (\estimador|X_media_N\(2) & !\estimador|X_media_N[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add0~4_combout\,
	datab => \estimador|X_media_N\(2),
	datad => VCC,
	cin => \estimador|X_media_N[1]~19\,
	combout => \estimador|X_media_N[2]~20_combout\,
	cout => \estimador|X_media_N[2]~21\);

-- Location: FF_X51_Y39_N5
\estimador|X_media_N[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[2]~20_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(2));

-- Location: LCCOMB_X51_Y39_N6
\estimador|X_media_N[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[3]~22_combout\ = (\estimador|X_media_N\(3) & ((\estimador|Add0~6_combout\ & (\estimador|X_media_N[2]~21\ & VCC)) # (!\estimador|Add0~6_combout\ & (!\estimador|X_media_N[2]~21\)))) # (!\estimador|X_media_N\(3) & 
-- ((\estimador|Add0~6_combout\ & (!\estimador|X_media_N[2]~21\)) # (!\estimador|Add0~6_combout\ & ((\estimador|X_media_N[2]~21\) # (GND)))))
-- \estimador|X_media_N[3]~23\ = CARRY((\estimador|X_media_N\(3) & (!\estimador|Add0~6_combout\ & !\estimador|X_media_N[2]~21\)) # (!\estimador|X_media_N\(3) & ((!\estimador|X_media_N[2]~21\) # (!\estimador|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(3),
	datab => \estimador|Add0~6_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[2]~21\,
	combout => \estimador|X_media_N[3]~22_combout\,
	cout => \estimador|X_media_N[3]~23\);

-- Location: FF_X51_Y39_N7
\estimador|X_media_N[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[3]~22_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(3));

-- Location: LCCOMB_X51_Y39_N8
\estimador|X_media_N[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[4]~24_combout\ = ((\estimador|X_media_N\(4) $ (\estimador|Add0~8_combout\ $ (!\estimador|X_media_N[3]~23\)))) # (GND)
-- \estimador|X_media_N[4]~25\ = CARRY((\estimador|X_media_N\(4) & ((\estimador|Add0~8_combout\) # (!\estimador|X_media_N[3]~23\))) # (!\estimador|X_media_N\(4) & (\estimador|Add0~8_combout\ & !\estimador|X_media_N[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(4),
	datab => \estimador|Add0~8_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[3]~23\,
	combout => \estimador|X_media_N[4]~24_combout\,
	cout => \estimador|X_media_N[4]~25\);

-- Location: FF_X51_Y39_N9
\estimador|X_media_N[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[4]~24_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(4));

-- Location: LCCOMB_X51_Y39_N10
\estimador|X_media_N[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[5]~26_combout\ = (\estimador|X_media_N\(5) & ((\estimador|Add0~10_combout\ & (\estimador|X_media_N[4]~25\ & VCC)) # (!\estimador|Add0~10_combout\ & (!\estimador|X_media_N[4]~25\)))) # (!\estimador|X_media_N\(5) & 
-- ((\estimador|Add0~10_combout\ & (!\estimador|X_media_N[4]~25\)) # (!\estimador|Add0~10_combout\ & ((\estimador|X_media_N[4]~25\) # (GND)))))
-- \estimador|X_media_N[5]~27\ = CARRY((\estimador|X_media_N\(5) & (!\estimador|Add0~10_combout\ & !\estimador|X_media_N[4]~25\)) # (!\estimador|X_media_N\(5) & ((!\estimador|X_media_N[4]~25\) # (!\estimador|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(5),
	datab => \estimador|Add0~10_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[4]~25\,
	combout => \estimador|X_media_N[5]~26_combout\,
	cout => \estimador|X_media_N[5]~27\);

-- Location: FF_X51_Y39_N11
\estimador|X_media_N[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[5]~26_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(5));

-- Location: LCCOMB_X51_Y39_N12
\estimador|X_media_N[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[6]~28_combout\ = ((\estimador|X_media_N\(6) $ (\estimador|Add0~12_combout\ $ (!\estimador|X_media_N[5]~27\)))) # (GND)
-- \estimador|X_media_N[6]~29\ = CARRY((\estimador|X_media_N\(6) & ((\estimador|Add0~12_combout\) # (!\estimador|X_media_N[5]~27\))) # (!\estimador|X_media_N\(6) & (\estimador|Add0~12_combout\ & !\estimador|X_media_N[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|Add0~12_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[5]~27\,
	combout => \estimador|X_media_N[6]~28_combout\,
	cout => \estimador|X_media_N[6]~29\);

-- Location: FF_X51_Y39_N13
\estimador|X_media_N[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[6]~28_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(6));

-- Location: LCCOMB_X51_Y39_N14
\estimador|X_media_N[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[7]~30_combout\ = (\estimador|X_media_N\(7) & ((\estimador|Add0~14_combout\ & (\estimador|X_media_N[6]~29\ & VCC)) # (!\estimador|Add0~14_combout\ & (!\estimador|X_media_N[6]~29\)))) # (!\estimador|X_media_N\(7) & 
-- ((\estimador|Add0~14_combout\ & (!\estimador|X_media_N[6]~29\)) # (!\estimador|Add0~14_combout\ & ((\estimador|X_media_N[6]~29\) # (GND)))))
-- \estimador|X_media_N[7]~31\ = CARRY((\estimador|X_media_N\(7) & (!\estimador|Add0~14_combout\ & !\estimador|X_media_N[6]~29\)) # (!\estimador|X_media_N\(7) & ((!\estimador|X_media_N[6]~29\) # (!\estimador|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(7),
	datab => \estimador|Add0~14_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[6]~29\,
	combout => \estimador|X_media_N[7]~30_combout\,
	cout => \estimador|X_media_N[7]~31\);

-- Location: FF_X51_Y39_N15
\estimador|X_media_N[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[7]~30_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(7));

-- Location: LCCOMB_X51_Y39_N16
\estimador|X_media_N[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[8]~32_combout\ = ((\estimador|X_media_N\(8) $ (\estimador|Add0~16_combout\ $ (!\estimador|X_media_N[7]~31\)))) # (GND)
-- \estimador|X_media_N[8]~33\ = CARRY((\estimador|X_media_N\(8) & ((\estimador|Add0~16_combout\) # (!\estimador|X_media_N[7]~31\))) # (!\estimador|X_media_N\(8) & (\estimador|Add0~16_combout\ & !\estimador|X_media_N[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(8),
	datab => \estimador|Add0~16_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[7]~31\,
	combout => \estimador|X_media_N[8]~32_combout\,
	cout => \estimador|X_media_N[8]~33\);

-- Location: FF_X51_Y39_N17
\estimador|X_media_N[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[8]~32_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(8));

-- Location: LCCOMB_X51_Y39_N18
\estimador|X_media_N[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[9]~34_combout\ = (\estimador|Add0~18_combout\ & ((\estimador|X_media_N\(9) & (\estimador|X_media_N[8]~33\ & VCC)) # (!\estimador|X_media_N\(9) & (!\estimador|X_media_N[8]~33\)))) # (!\estimador|Add0~18_combout\ & 
-- ((\estimador|X_media_N\(9) & (!\estimador|X_media_N[8]~33\)) # (!\estimador|X_media_N\(9) & ((\estimador|X_media_N[8]~33\) # (GND)))))
-- \estimador|X_media_N[9]~35\ = CARRY((\estimador|Add0~18_combout\ & (!\estimador|X_media_N\(9) & !\estimador|X_media_N[8]~33\)) # (!\estimador|Add0~18_combout\ & ((!\estimador|X_media_N[8]~33\) # (!\estimador|X_media_N\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add0~18_combout\,
	datab => \estimador|X_media_N\(9),
	datad => VCC,
	cin => \estimador|X_media_N[8]~33\,
	combout => \estimador|X_media_N[9]~34_combout\,
	cout => \estimador|X_media_N[9]~35\);

-- Location: FF_X51_Y39_N19
\estimador|X_media_N[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[9]~34_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(9));

-- Location: LCCOMB_X51_Y39_N20
\estimador|X_media_N[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[10]~36_combout\ = ((\estimador|X_media_N\(10) $ (\estimador|Add0~20_combout\ $ (!\estimador|X_media_N[9]~35\)))) # (GND)
-- \estimador|X_media_N[10]~37\ = CARRY((\estimador|X_media_N\(10) & ((\estimador|Add0~20_combout\) # (!\estimador|X_media_N[9]~35\))) # (!\estimador|X_media_N\(10) & (\estimador|Add0~20_combout\ & !\estimador|X_media_N[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(10),
	datab => \estimador|Add0~20_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[9]~35\,
	combout => \estimador|X_media_N[10]~36_combout\,
	cout => \estimador|X_media_N[10]~37\);

-- Location: FF_X51_Y39_N21
\estimador|X_media_N[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[10]~36_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(10));

-- Location: LCCOMB_X51_Y39_N22
\estimador|X_media_N[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[11]~38_combout\ = (\estimador|X_media_N\(11) & ((\estimador|Add0~20_combout\ & (\estimador|X_media_N[10]~37\ & VCC)) # (!\estimador|Add0~20_combout\ & (!\estimador|X_media_N[10]~37\)))) # (!\estimador|X_media_N\(11) & 
-- ((\estimador|Add0~20_combout\ & (!\estimador|X_media_N[10]~37\)) # (!\estimador|Add0~20_combout\ & ((\estimador|X_media_N[10]~37\) # (GND)))))
-- \estimador|X_media_N[11]~39\ = CARRY((\estimador|X_media_N\(11) & (!\estimador|Add0~20_combout\ & !\estimador|X_media_N[10]~37\)) # (!\estimador|X_media_N\(11) & ((!\estimador|X_media_N[10]~37\) # (!\estimador|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(11),
	datab => \estimador|Add0~20_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[10]~37\,
	combout => \estimador|X_media_N[11]~38_combout\,
	cout => \estimador|X_media_N[11]~39\);

-- Location: FF_X51_Y39_N23
\estimador|X_media_N[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[11]~38_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(11));

-- Location: LCCOMB_X51_Y39_N24
\estimador|X_media_N[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[12]~40_combout\ = ((\estimador|X_media_N\(12) $ (\estimador|Add0~20_combout\ $ (!\estimador|X_media_N[11]~39\)))) # (GND)
-- \estimador|X_media_N[12]~41\ = CARRY((\estimador|X_media_N\(12) & ((\estimador|Add0~20_combout\) # (!\estimador|X_media_N[11]~39\))) # (!\estimador|X_media_N\(12) & (\estimador|Add0~20_combout\ & !\estimador|X_media_N[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(12),
	datab => \estimador|Add0~20_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[11]~39\,
	combout => \estimador|X_media_N[12]~40_combout\,
	cout => \estimador|X_media_N[12]~41\);

-- Location: FF_X51_Y39_N25
\estimador|X_media_N[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[12]~40_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(12));

-- Location: LCCOMB_X51_Y39_N26
\estimador|X_media_N[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[13]~42_combout\ = (\estimador|X_media_N\(13) & ((\estimador|Add0~20_combout\ & (\estimador|X_media_N[12]~41\ & VCC)) # (!\estimador|Add0~20_combout\ & (!\estimador|X_media_N[12]~41\)))) # (!\estimador|X_media_N\(13) & 
-- ((\estimador|Add0~20_combout\ & (!\estimador|X_media_N[12]~41\)) # (!\estimador|Add0~20_combout\ & ((\estimador|X_media_N[12]~41\) # (GND)))))
-- \estimador|X_media_N[13]~43\ = CARRY((\estimador|X_media_N\(13) & (!\estimador|Add0~20_combout\ & !\estimador|X_media_N[12]~41\)) # (!\estimador|X_media_N\(13) & ((!\estimador|X_media_N[12]~41\) # (!\estimador|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(13),
	datab => \estimador|Add0~20_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[12]~41\,
	combout => \estimador|X_media_N[13]~42_combout\,
	cout => \estimador|X_media_N[13]~43\);

-- Location: FF_X51_Y39_N27
\estimador|X_media_N[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[13]~42_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(13));

-- Location: LCCOMB_X51_Y39_N28
\estimador|X_media_N[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[14]~44_combout\ = ((\estimador|X_media_N\(14) $ (\estimador|Add0~20_combout\ $ (!\estimador|X_media_N[13]~43\)))) # (GND)
-- \estimador|X_media_N[14]~45\ = CARRY((\estimador|X_media_N\(14) & ((\estimador|Add0~20_combout\) # (!\estimador|X_media_N[13]~43\))) # (!\estimador|X_media_N\(14) & (\estimador|Add0~20_combout\ & !\estimador|X_media_N[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(14),
	datab => \estimador|Add0~20_combout\,
	datad => VCC,
	cin => \estimador|X_media_N[13]~43\,
	combout => \estimador|X_media_N[14]~44_combout\,
	cout => \estimador|X_media_N[14]~45\);

-- Location: FF_X51_Y39_N29
\estimador|X_media_N[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[14]~44_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(14));

-- Location: LCCOMB_X51_Y39_N30
\estimador|X_media_N[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|X_media_N[15]~46_combout\ = \estimador|X_media_N\(15) $ (\estimador|X_media_N[14]~45\ $ (\estimador|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(15),
	datad => \estimador|Add0~20_combout\,
	cin => \estimador|X_media_N[14]~45\,
	combout => \estimador|X_media_N[15]~46_combout\);

-- Location: FF_X51_Y39_N31
\estimador|X_media_N[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|X_media_N[15]~46_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|X_media_N\(15));

-- Location: LCCOMB_X51_Y47_N28
\cuantificador|digitos[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos[0]~23_combout\ = (\estimador|X_media_N\(13)) # ((\estimador|X_media_N\(12)) # ((\estimador|X_media_N\(14)) # (\estimador|X_media_N\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(13),
	datab => \estimador|X_media_N\(12),
	datac => \estimador|X_media_N\(14),
	datad => \estimador|X_media_N\(10),
	combout => \cuantificador|digitos[0]~23_combout\);

-- Location: LCCOMB_X51_Y44_N28
\cuantificador|digitos~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~26_combout\ = (\estimador|X_media_N\(9) & ((\estimador|X_media_N\(6)) # ((\estimador|X_media_N\(7)) # (\estimador|X_media_N\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(7),
	datac => \estimador|X_media_N\(5),
	datad => \estimador|X_media_N\(9),
	combout => \cuantificador|digitos~26_combout\);

-- Location: LCCOMB_X51_Y44_N2
\cuantificador|digitos~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~27_combout\ = (\cuantificador|digitos[0]~23_combout\) # ((\estimador|X_media_N\(11)) # ((\estimador|X_media_N\(8) & \cuantificador|digitos~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos[0]~23_combout\,
	datab => \estimador|X_media_N\(8),
	datac => \estimador|X_media_N\(11),
	datad => \cuantificador|digitos~26_combout\,
	combout => \cuantificador|digitos~27_combout\);

-- Location: LCCOMB_X51_Y47_N16
\cuantificador|digitos~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~32_combout\ = (!\estimador|X_media_N\(9) & (!\estimador|X_media_N\(10) & ((!\estimador|X_media_N\(6)) # (!\estimador|X_media_N\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(5),
	datab => \estimador|X_media_N\(9),
	datac => \estimador|X_media_N\(10),
	datad => \estimador|X_media_N\(6),
	combout => \cuantificador|digitos~32_combout\);

-- Location: LCCOMB_X51_Y47_N22
\cuantificador|digitos~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~33_combout\ = (!\estimador|X_media_N\(11) & (!\estimador|X_media_N\(8) & (!\estimador|X_media_N\(7) & \cuantificador|digitos~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(11),
	datab => \estimador|X_media_N\(8),
	datac => \estimador|X_media_N\(7),
	datad => \cuantificador|digitos~32_combout\,
	combout => \cuantificador|digitos~33_combout\);

-- Location: LCCOMB_X51_Y47_N20
\cuantificador|digitos~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~34_combout\ = (\cuantificador|digitos~33_combout\) # (((!\estimador|X_media_N\(13)) # (!\estimador|X_media_N\(14))) # (!\estimador|X_media_N\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos~33_combout\,
	datab => \estimador|X_media_N\(12),
	datac => \estimador|X_media_N\(14),
	datad => \estimador|X_media_N\(13),
	combout => \cuantificador|digitos~34_combout\);

-- Location: LCCOMB_X51_Y47_N30
\cuantificador|digitos~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~9_combout\ = (!\estimador|X_media_N\(4)) # (!\estimador|X_media_N\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(5),
	datad => \estimador|X_media_N\(4),
	combout => \cuantificador|digitos~9_combout\);

-- Location: LCCOMB_X51_Y47_N10
\cuantificador|digitos~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~6_combout\ = ((!\estimador|X_media_N\(7) & (\cuantificador|digitos~9_combout\ & !\estimador|X_media_N\(6)))) # (!\estimador|X_media_N\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(7),
	datab => \estimador|X_media_N\(8),
	datac => \cuantificador|digitos~9_combout\,
	datad => \estimador|X_media_N\(6),
	combout => \cuantificador|digitos~6_combout\);

-- Location: LCCOMB_X51_Y47_N4
\cuantificador|digitos~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~3_combout\ = (!\estimador|X_media_N\(14) & (((\cuantificador|digitos~6_combout\ & !\estimador|X_media_N\(9))) # (!\estimador|X_media_N\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos~6_combout\,
	datab => \estimador|X_media_N\(9),
	datac => \estimador|X_media_N\(14),
	datad => \estimador|X_media_N\(10),
	combout => \cuantificador|digitos~3_combout\);

-- Location: LCCOMB_X51_Y47_N0
\cuantificador|digitos~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~37_combout\ = (!\estimador|X_media_N\(11) & (!\estimador|X_media_N\(12) & (\cuantificador|digitos~3_combout\ & !\estimador|X_media_N\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(11),
	datab => \estimador|X_media_N\(12),
	datac => \cuantificador|digitos~3_combout\,
	datad => \estimador|X_media_N\(13),
	combout => \cuantificador|digitos~37_combout\);

-- Location: LCCOMB_X49_Y47_N6
\cuantificador|digitos~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~29_combout\ = (\estimador|X_media_N\(7) & ((\estimador|X_media_N\(5)) # ((\estimador|X_media_N\(6)) # (\estimador|X_media_N\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(5),
	datab => \estimador|X_media_N\(6),
	datac => \estimador|X_media_N\(7),
	datad => \estimador|X_media_N\(4),
	combout => \cuantificador|digitos~29_combout\);

-- Location: LCCOMB_X49_Y47_N20
\cuantificador|digitos~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~30_combout\ = (\estimador|X_media_N\(10) & ((\estimador|X_media_N\(9)) # ((\estimador|X_media_N\(8)) # (\cuantificador|digitos~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(10),
	datab => \estimador|X_media_N\(9),
	datac => \estimador|X_media_N\(8),
	datad => \cuantificador|digitos~29_combout\,
	combout => \cuantificador|digitos~30_combout\);

-- Location: LCCOMB_X51_Y47_N6
\cuantificador|digitos~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~28_combout\ = (\estimador|X_media_N\(13) & (\estimador|X_media_N\(14) & \estimador|X_media_N\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|X_media_N\(13),
	datac => \estimador|X_media_N\(14),
	datad => \estimador|X_media_N\(12),
	combout => \cuantificador|digitos~28_combout\);

-- Location: LCCOMB_X49_Y47_N18
\cuantificador|digitos~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~31_combout\ = (\cuantificador|digitos~28_combout\ & ((\cuantificador|digitos~30_combout\) # (\estimador|X_media_N\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|digitos~30_combout\,
	datac => \cuantificador|digitos~28_combout\,
	datad => \estimador|X_media_N\(11),
	combout => \cuantificador|digitos~31_combout\);

-- Location: LCCOMB_X51_Y47_N18
\cuantificador|dig_activo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~6_combout\ = (\estimador|X_media_N\(15) & (((\cuantificador|digitos~31_combout\) # (!\cuantificador|mux_disp\(6))))) # (!\estimador|X_media_N\(15) & (\cuantificador|digitos~37_combout\ & (\cuantificador|mux_disp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(15),
	datab => \cuantificador|digitos~37_combout\,
	datac => \cuantificador|mux_disp\(6),
	datad => \cuantificador|digitos~31_combout\,
	combout => \cuantificador|dig_activo~6_combout\);

-- Location: LCCOMB_X51_Y47_N8
\cuantificador|dig_activo~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~7_combout\ = (\cuantificador|mux_disp\(6) & (((\cuantificador|dig_activo~6_combout\)))) # (!\cuantificador|mux_disp\(6) & ((\cuantificador|dig_activo~6_combout\ & ((!\cuantificador|digitos~34_combout\))) # 
-- (!\cuantificador|dig_activo~6_combout\ & (!\cuantificador|digitos~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos~27_combout\,
	datab => \cuantificador|digitos~34_combout\,
	datac => \cuantificador|mux_disp\(6),
	datad => \cuantificador|dig_activo~6_combout\,
	combout => \cuantificador|dig_activo~7_combout\);

-- Location: LCCOMB_X51_Y44_N14
\cuantificador|digitos~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~35_combout\ = (\estimador|X_media_N\(9) & \estimador|X_media_N\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(9),
	datac => \estimador|X_media_N\(8),
	combout => \cuantificador|digitos~35_combout\);

-- Location: LCCOMB_X51_Y44_N20
\cuantificador|LessThan12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan12~0_combout\ = (!\estimador|X_media_N\(7) & (((!\estimador|X_media_N\(4)) # (!\estimador|X_media_N\(5))) # (!\estimador|X_media_N\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(7),
	datac => \estimador|X_media_N\(5),
	datad => \estimador|X_media_N\(4),
	combout => \cuantificador|LessThan12~0_combout\);

-- Location: LCCOMB_X51_Y44_N0
\cuantificador|LessThan12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan12~1_combout\ = ((!\estimador|X_media_N\(10) & ((\cuantificador|LessThan12~0_combout\) # (!\cuantificador|digitos~35_combout\)))) # (!\estimador|X_media_N\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(10),
	datab => \cuantificador|digitos~35_combout\,
	datac => \estimador|X_media_N\(11),
	datad => \cuantificador|LessThan12~0_combout\,
	combout => \cuantificador|LessThan12~1_combout\);

-- Location: LCCOMB_X51_Y44_N26
\cuantificador|LessThan13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan13~0_combout\ = (\estimador|X_media_N\(5)) # ((\estimador|X_media_N\(6)) # (\estimador|X_media_N\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|X_media_N\(5),
	datac => \estimador|X_media_N\(6),
	datad => \estimador|X_media_N\(4),
	combout => \cuantificador|LessThan13~0_combout\);

-- Location: LCCOMB_X51_Y44_N24
\cuantificador|LessThan13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan13~1_combout\ = (\estimador|X_media_N\(8) & (\cuantificador|LessThan13~0_combout\ & \estimador|X_media_N\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|X_media_N\(8),
	datac => \cuantificador|LessThan13~0_combout\,
	datad => \estimador|X_media_N\(7),
	combout => \cuantificador|LessThan13~1_combout\);

-- Location: LCCOMB_X51_Y44_N18
\cuantificador|LessThan13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan13~2_combout\ = (((!\cuantificador|LessThan13~1_combout\ & !\estimador|X_media_N\(9))) # (!\estimador|X_media_N\(11))) # (!\estimador|X_media_N\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(10),
	datab => \cuantificador|LessThan13~1_combout\,
	datac => \estimador|X_media_N\(11),
	datad => \estimador|X_media_N\(9),
	combout => \cuantificador|LessThan13~2_combout\);

-- Location: LCCOMB_X49_Y47_N24
\cuantificador|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan11~0_combout\ = (\estimador|X_media_N\(8) & ((\estimador|X_media_N\(7)) # ((\estimador|X_media_N\(6) & \estimador|X_media_N\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(8),
	datab => \estimador|X_media_N\(6),
	datac => \estimador|X_media_N\(7),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|LessThan11~0_combout\);

-- Location: LCCOMB_X49_Y47_N2
\cuantificador|LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan11~1_combout\ = ((!\estimador|X_media_N\(10) & (!\cuantificador|LessThan11~0_combout\ & !\estimador|X_media_N\(9)))) # (!\estimador|X_media_N\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(10),
	datab => \estimador|X_media_N\(11),
	datac => \cuantificador|LessThan11~0_combout\,
	datad => \estimador|X_media_N\(9),
	combout => \cuantificador|LessThan11~1_combout\);

-- Location: LCCOMB_X51_Y44_N10
\cuantificador|disp[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~2_combout\ = (\estimador|X_media_N\(10) & (\estimador|X_media_N\(9) & ((\estimador|X_media_N\(5)) # (\estimador|X_media_N\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(10),
	datab => \estimador|X_media_N\(5),
	datac => \estimador|X_media_N\(6),
	datad => \estimador|X_media_N\(9),
	combout => \cuantificador|disp[0]~2_combout\);

-- Location: LCCOMB_X51_Y44_N4
\cuantificador|disp[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~3_combout\ = (\cuantificador|disp[0]~2_combout\ & (\estimador|X_media_N\(11) & (\estimador|X_media_N\(8) & \estimador|X_media_N\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|disp[0]~2_combout\,
	datab => \estimador|X_media_N\(11),
	datac => \estimador|X_media_N\(8),
	datad => \estimador|X_media_N\(7),
	combout => \cuantificador|disp[0]~3_combout\);

-- Location: LCCOMB_X51_Y47_N24
\cuantificador|disp[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~4_combout\ = (!\cuantificador|disp[0]~3_combout\ & (!\estimador|X_media_N\(12) & (!\estimador|X_media_N\(14) & !\estimador|X_media_N\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|disp[0]~3_combout\,
	datab => \estimador|X_media_N\(12),
	datac => \estimador|X_media_N\(14),
	datad => \estimador|X_media_N\(13),
	combout => \cuantificador|disp[0]~4_combout\);

-- Location: LCCOMB_X52_Y47_N24
\cuantificador|dig_activo~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~9_combout\ = (\cuantificador|LessThan12~1_combout\ & (\cuantificador|LessThan13~2_combout\ & (\cuantificador|LessThan11~1_combout\ & \cuantificador|disp[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan12~1_combout\,
	datab => \cuantificador|LessThan13~2_combout\,
	datac => \cuantificador|LessThan11~1_combout\,
	datad => \cuantificador|disp[0]~4_combout\,
	combout => \cuantificador|dig_activo~9_combout\);

-- Location: LCCOMB_X52_Y47_N6
\cuantificador|dig_activo~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~10_combout\ = (\cuantificador|dig_activo~8_combout\ & (\cuantificador|dig_activo~7_combout\ & ((\estimador|X_media_N\(15)) # (\cuantificador|dig_activo~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~8_combout\,
	datab => \estimador|X_media_N\(15),
	datac => \cuantificador|dig_activo~7_combout\,
	datad => \cuantificador|dig_activo~9_combout\,
	combout => \cuantificador|dig_activo~10_combout\);

-- Location: LCCOMB_X51_Y44_N6
\cuantificador|LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan10~0_combout\ = (!\estimador|X_media_N\(7) & (((!\estimador|X_media_N\(5) & !\estimador|X_media_N\(4))) # (!\estimador|X_media_N\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(7),
	datac => \estimador|X_media_N\(5),
	datad => \estimador|X_media_N\(4),
	combout => \cuantificador|LessThan10~0_combout\);

-- Location: LCCOMB_X51_Y44_N16
\cuantificador|digitos~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos~36_combout\ = (!\estimador|X_media_N\(11) & (((\cuantificador|LessThan10~0_combout\) # (!\cuantificador|digitos~35_combout\)) # (!\estimador|X_media_N\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(10),
	datab => \cuantificador|digitos~35_combout\,
	datac => \estimador|X_media_N\(11),
	datad => \cuantificador|LessThan10~0_combout\,
	combout => \cuantificador|digitos~36_combout\);

-- Location: LCCOMB_X52_Y47_N12
\cuantificador|dig_activo~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~11_combout\ = (\cuantificador|mux_disp\(4) & (((\cuantificador|LessThan11~1_combout\)))) # (!\cuantificador|mux_disp\(4) & (\cuantificador|digitos~36_combout\ & ((\cuantificador|mux_disp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos~36_combout\,
	datab => \cuantificador|LessThan11~1_combout\,
	datac => \cuantificador|mux_disp\(5),
	datad => \cuantificador|mux_disp\(4),
	combout => \cuantificador|dig_activo~11_combout\);

-- Location: LCCOMB_X52_Y47_N10
\cuantificador|dig_activo~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~12_combout\ = (!\estimador|X_media_N\(15) & (\cuantificador|LessThan13~2_combout\ & ((\cuantificador|dig_activo~11_combout\) # (\cuantificador|mux_disp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~11_combout\,
	datab => \estimador|X_media_N\(15),
	datac => \cuantificador|mux_disp\(3),
	datad => \cuantificador|LessThan13~2_combout\,
	combout => \cuantificador|dig_activo~12_combout\);

-- Location: LCCOMB_X52_Y47_N0
\cuantificador|dig_activo~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~13_combout\ = (\cuantificador|dig_activo~12_combout\ & (!\cuantificador|mux_disp\(2) & (\cuantificador|LessThan12~1_combout\ & \cuantificador|disp[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~12_combout\,
	datab => \cuantificador|mux_disp\(2),
	datac => \cuantificador|LessThan12~1_combout\,
	datad => \cuantificador|disp[0]~4_combout\,
	combout => \cuantificador|dig_activo~13_combout\);

-- Location: LCCOMB_X51_Y44_N8
\cuantificador|dig_activo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~2_combout\ = (\estimador|X_media_N\(6) & (\estimador|X_media_N\(7) & \estimador|X_media_N\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(7),
	datac => \estimador|X_media_N\(5),
	combout => \cuantificador|dig_activo~2_combout\);

-- Location: LCCOMB_X52_Y47_N22
\cuantificador|dig_activo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~4_combout\ = (\estimador|X_media_N\(8)) # ((\estimador|X_media_N\(9)) # (\cuantificador|dig_activo~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|X_media_N\(8),
	datac => \estimador|X_media_N\(9),
	datad => \cuantificador|dig_activo~2_combout\,
	combout => \cuantificador|dig_activo~4_combout\);

-- Location: LCCOMB_X52_Y47_N8
\cuantificador|dig_activo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~3_combout\ = (\cuantificador|LessThan13~2_combout\ & (!\estimador|X_media_N\(15) & \cuantificador|disp[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuantificador|LessThan13~2_combout\,
	datac => \estimador|X_media_N\(15),
	datad => \cuantificador|disp[0]~4_combout\,
	combout => \cuantificador|dig_activo~3_combout\);

-- Location: LCCOMB_X51_Y47_N12
\cuantificador|dig_activo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~0_combout\ = (\estimador|X_media_N\(13) & (\estimador|X_media_N\(14) & \estimador|X_media_N\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|X_media_N\(13),
	datac => \estimador|X_media_N\(14),
	datad => \estimador|X_media_N\(11),
	combout => \cuantificador|dig_activo~0_combout\);

-- Location: LCCOMB_X51_Y47_N14
\cuantificador|dig_activo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~1_combout\ = (\cuantificador|dig_activo~0_combout\ & (\estimador|X_media_N\(12) & (\estimador|X_media_N\(15) & \estimador|X_media_N\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~0_combout\,
	datab => \estimador|X_media_N\(12),
	datac => \estimador|X_media_N\(15),
	datad => \estimador|X_media_N\(10),
	combout => \cuantificador|dig_activo~1_combout\);

-- Location: LCCOMB_X52_Y47_N4
\cuantificador|dig_activo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~5_combout\ = (\cuantificador|mux_disp\(2) & ((\cuantificador|dig_activo~3_combout\) # ((\cuantificador|dig_activo~4_combout\ & \cuantificador|dig_activo~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~4_combout\,
	datab => \cuantificador|mux_disp\(2),
	datac => \cuantificador|dig_activo~3_combout\,
	datad => \cuantificador|dig_activo~1_combout\,
	combout => \cuantificador|dig_activo~5_combout\);

-- Location: LCCOMB_X49_Y47_N22
\cuantificador|dig_activo~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~15_combout\ = (\estimador|X_media_N\(6) & (\estimador|X_media_N\(7) & ((\estimador|X_media_N\(5)) # (\estimador|X_media_N\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(5),
	datab => \estimador|X_media_N\(6),
	datac => \estimador|X_media_N\(7),
	datad => \estimador|X_media_N\(4),
	combout => \cuantificador|dig_activo~15_combout\);

-- Location: LCCOMB_X49_Y47_N12
\cuantificador|dig_activo~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~16_combout\ = (\cuantificador|mux_disp\(3) & (\estimador|X_media_N\(9) & ((\estimador|X_media_N\(8)) # (\cuantificador|dig_activo~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(8),
	datab => \cuantificador|mux_disp\(3),
	datac => \cuantificador|dig_activo~15_combout\,
	datad => \estimador|X_media_N\(9),
	combout => \cuantificador|dig_activo~16_combout\);

-- Location: LCCOMB_X49_Y47_N4
\cuantificador|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan2~0_combout\ = (!\estimador|X_media_N\(8) & (((!\estimador|X_media_N\(6) & !\estimador|X_media_N\(5))) # (!\estimador|X_media_N\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(8),
	datab => \estimador|X_media_N\(6),
	datac => \estimador|X_media_N\(7),
	datad => \estimador|X_media_N\(5),
	combout => \cuantificador|LessThan2~0_combout\);

-- Location: LCCOMB_X49_Y47_N14
\cuantificador|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan2~1_combout\ = (!\estimador|X_media_N\(11) & (((\cuantificador|LessThan2~0_combout\) # (!\estimador|X_media_N\(9))) # (!\estimador|X_media_N\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(10),
	datab => \estimador|X_media_N\(11),
	datac => \cuantificador|LessThan2~0_combout\,
	datad => \estimador|X_media_N\(9),
	combout => \cuantificador|LessThan2~1_combout\);

-- Location: LCCOMB_X49_Y47_N16
\cuantificador|dig_activo~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~14_combout\ = (!\cuantificador|mux_disp\(4) & (!\cuantificador|mux_disp\(3) & (!\cuantificador|LessThan2~1_combout\ & \cuantificador|mux_disp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|mux_disp\(4),
	datab => \cuantificador|mux_disp\(3),
	datac => \cuantificador|LessThan2~1_combout\,
	datad => \cuantificador|mux_disp\(5),
	combout => \cuantificador|dig_activo~14_combout\);

-- Location: LCCOMB_X49_Y47_N10
\cuantificador|dig_activo~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~17_combout\ = (\estimador|X_media_N\(6)) # ((\estimador|X_media_N\(5) & \estimador|X_media_N\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(5),
	datac => \estimador|X_media_N\(6),
	datad => \estimador|X_media_N\(4),
	combout => \cuantificador|dig_activo~17_combout\);

-- Location: LCCOMB_X49_Y47_N8
\cuantificador|dig_activo~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~18_combout\ = (\estimador|X_media_N\(8)) # ((\estimador|X_media_N\(9)) # ((\estimador|X_media_N\(7) & \cuantificador|dig_activo~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(8),
	datab => \estimador|X_media_N\(9),
	datac => \estimador|X_media_N\(7),
	datad => \cuantificador|dig_activo~17_combout\,
	combout => \cuantificador|dig_activo~18_combout\);

-- Location: LCCOMB_X49_Y47_N30
\cuantificador|dig_activo~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~19_combout\ = (\cuantificador|mux_disp\(3) & (\estimador|X_media_N\(10))) # (!\cuantificador|mux_disp\(3) & (\cuantificador|mux_disp\(4) & ((\estimador|X_media_N\(10)) # (\cuantificador|dig_activo~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(10),
	datab => \cuantificador|mux_disp\(4),
	datac => \cuantificador|dig_activo~18_combout\,
	datad => \cuantificador|mux_disp\(3),
	combout => \cuantificador|dig_activo~19_combout\);

-- Location: LCCOMB_X49_Y47_N0
\cuantificador|dig_activo~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~20_combout\ = (\cuantificador|dig_activo~14_combout\) # ((\estimador|X_media_N\(11) & ((\cuantificador|dig_activo~16_combout\) # (\cuantificador|dig_activo~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~16_combout\,
	datab => \cuantificador|dig_activo~14_combout\,
	datac => \cuantificador|dig_activo~19_combout\,
	datad => \estimador|X_media_N\(11),
	combout => \cuantificador|dig_activo~20_combout\);

-- Location: LCCOMB_X52_Y47_N2
\cuantificador|dig_activo~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~21_combout\ = (\cuantificador|dig_activo~20_combout\ & (\cuantificador|digitos~28_combout\ & (!\cuantificador|mux_disp\(2) & \estimador|X_media_N\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~20_combout\,
	datab => \cuantificador|digitos~28_combout\,
	datac => \cuantificador|mux_disp\(2),
	datad => \estimador|X_media_N\(15),
	combout => \cuantificador|dig_activo~21_combout\);

-- Location: LCCOMB_X52_Y47_N16
\cuantificador|dig_activo~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|dig_activo~22_combout\ = (\cuantificador|dig_activo~10_combout\) # ((\cuantificador|dig_activo~13_combout\) # ((\cuantificador|dig_activo~5_combout\) # (\cuantificador|dig_activo~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~10_combout\,
	datab => \cuantificador|dig_activo~13_combout\,
	datac => \cuantificador|dig_activo~5_combout\,
	datad => \cuantificador|dig_activo~21_combout\,
	combout => \cuantificador|dig_activo~22_combout\);

-- Location: LCCOMB_X52_Y47_N30
\cuantificador|disp[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~1_combout\ = (\cuantificador|dig_activo~1_combout\ & ((\estimador|X_media_N\(8)) # ((\estimador|X_media_N\(4) & \cuantificador|dig_activo~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|dig_activo~1_combout\,
	datab => \estimador|X_media_N\(8),
	datac => \estimador|X_media_N\(4),
	datad => \cuantificador|dig_activo~2_combout\,
	combout => \cuantificador|disp[0]~1_combout\);

-- Location: LCCOMB_X52_Y47_N20
\cuantificador|disp[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~5_combout\ = (\cuantificador|disp[0]~1_combout\ & ((\estimador|X_media_N\(9)) # ((!\estimador|X_media_N\(15) & \cuantificador|disp[0]~4_combout\)))) # (!\cuantificador|disp[0]~1_combout\ & (!\estimador|X_media_N\(15) & 
-- ((\cuantificador|disp[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|disp[0]~1_combout\,
	datab => \estimador|X_media_N\(15),
	datac => \estimador|X_media_N\(9),
	datad => \cuantificador|disp[0]~4_combout\,
	combout => \cuantificador|disp[0]~5_combout\);

-- Location: LCCOMB_X51_Y44_N12
\cuantificador|digitos[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos[0]~24_combout\ = (\estimador|X_media_N\(6)) # ((\estimador|X_media_N\(7)) # ((\estimador|X_media_N\(5)) # (\estimador|X_media_N\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|X_media_N\(6),
	datab => \estimador|X_media_N\(7),
	datac => \estimador|X_media_N\(5),
	datad => \estimador|X_media_N\(4),
	combout => \cuantificador|digitos[0]~24_combout\);

-- Location: LCCOMB_X51_Y44_N30
\cuantificador|digitos[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|digitos[0]~25_combout\ = (\cuantificador|digitos[0]~23_combout\) # ((\estimador|X_media_N\(11)) # ((\estimador|X_media_N\(8) & \cuantificador|digitos[0]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|digitos[0]~23_combout\,
	datab => \estimador|X_media_N\(8),
	datac => \estimador|X_media_N\(11),
	datad => \cuantificador|digitos[0]~24_combout\,
	combout => \cuantificador|digitos[0]~25_combout\);

-- Location: LCCOMB_X52_Y47_N28
\cuantificador|disp[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~0_combout\ = (!\cuantificador|mux_disp\(0) & (!\estimador|X_media_N\(15) & ((\estimador|X_media_N\(9)) # (\cuantificador|digitos[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|mux_disp\(0),
	datab => \estimador|X_media_N\(15),
	datac => \estimador|X_media_N\(9),
	datad => \cuantificador|digitos[0]~25_combout\,
	combout => \cuantificador|disp[0]~0_combout\);

-- Location: LCCOMB_X52_Y47_N18
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

-- Location: LCCOMB_X52_Y47_N14
\cuantificador|disp[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|disp[0]~7_combout\ = (\cuantificador|disp[0]~6_combout\) # ((\cuantificador|mux_disp\(0) & (\cuantificador|dig_activo~22_combout\ & !\cuantificador|mux_disp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|mux_disp\(0),
	datab => \cuantificador|dig_activo~22_combout\,
	datac => \cuantificador|mux_disp\(1),
	datad => \cuantificador|disp[0]~6_combout\,
	combout => \cuantificador|disp[0]~7_combout\);

-- Location: LCCOMB_X54_Y42_N6
\estimador|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add1~1_cout\ = CARRY(!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\,
	datad => VCC,
	cout => \estimador|Add1~1_cout\);

-- Location: LCCOMB_X54_Y42_N8
\estimador|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add1~2_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\ & ((\estimador|Add1~1_cout\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\ & (!\estimador|Add1~1_cout\))
-- \estimador|Add1~3\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\) # (!\estimador|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a18\,
	datad => VCC,
	cin => \estimador|Add1~1_cout\,
	combout => \estimador|Add1~2_combout\,
	cout => \estimador|Add1~3\);

-- Location: LCCOMB_X54_Y42_N10
\estimador|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add1~4_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a17\ & (!\estimador|Add1~3\ & VCC)) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a17\ & (\estimador|Add1~3\ $ (GND)))
-- \estimador|Add1~5\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a17\ & !\estimador|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a17\,
	datad => VCC,
	cin => \estimador|Add1~3\,
	combout => \estimador|Add1~4_combout\,
	cout => \estimador|Add1~5\);

-- Location: LCCOMB_X54_Y42_N12
\estimador|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add1~6_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\ & ((\estimador|Add1~5\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\ & (!\estimador|Add1~5\))
-- \estimador|Add1~7\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\) # (!\estimador|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a16\,
	datad => VCC,
	cin => \estimador|Add1~5\,
	combout => \estimador|Add1~6_combout\,
	cout => \estimador|Add1~7\);

-- Location: LCCOMB_X54_Y42_N14
\estimador|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add1~8_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a15\ & (!\estimador|Add1~7\ & VCC)) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a15\ & (\estimador|Add1~7\ $ (GND)))
-- \estimador|Add1~9\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a15\ & !\estimador|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a15\,
	datad => VCC,
	cin => \estimador|Add1~7\,
	combout => \estimador|Add1~8_combout\,
	cout => \estimador|Add1~9\);

-- Location: LCCOMB_X54_Y42_N16
\estimador|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add1~10_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\ & ((\estimador|Add1~9\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\ & (!\estimador|Add1~9\))
-- \estimador|Add1~11\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\) # (!\estimador|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a14\,
	datad => VCC,
	cin => \estimador|Add1~9\,
	combout => \estimador|Add1~10_combout\,
	cout => \estimador|Add1~11\);

-- Location: LCCOMB_X54_Y42_N18
\estimador|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add1~12_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a13\ & (!\estimador|Add1~11\ & VCC)) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a13\ & (\estimador|Add1~11\ $ (GND)))
-- \estimador|Add1~13\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a13\ & !\estimador|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a13\,
	datad => VCC,
	cin => \estimador|Add1~11\,
	combout => \estimador|Add1~12_combout\,
	cout => \estimador|Add1~13\);

-- Location: LCCOMB_X54_Y42_N20
\estimador|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add1~14_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\ & ((\estimador|Add1~13\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\ & (!\estimador|Add1~13\))
-- \estimador|Add1~15\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\) # (!\estimador|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a12\,
	datad => VCC,
	cin => \estimador|Add1~13\,
	combout => \estimador|Add1~14_combout\,
	cout => \estimador|Add1~15\);

-- Location: LCCOMB_X54_Y42_N22
\estimador|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add1~16_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\ & (!\estimador|Add1~15\ & VCC)) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\ & (\estimador|Add1~15\ $ (GND)))
-- \estimador|Add1~17\ = CARRY((!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\ & !\estimador|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a11\,
	datad => VCC,
	cin => \estimador|Add1~15\,
	combout => \estimador|Add1~16_combout\,
	cout => \estimador|Add1~17\);

-- Location: LCCOMB_X54_Y42_N24
\estimador|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add1~18_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\ & ((\estimador|Add1~17\) # (GND))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\ & (!\estimador|Add1~17\))
-- \estimador|Add1~19\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\) # (!\estimador|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\,
	datad => VCC,
	cin => \estimador|Add1~17\,
	combout => \estimador|Add1~18_combout\,
	cout => \estimador|Add1~19\);

-- Location: LCCOMB_X55_Y42_N0
\estimador|Y_media_N[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[0]~16_combout\ = (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\ & (\estimador|Y_media_N\(0) $ (VCC))) # (!\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\ & (\estimador|Y_media_N\(0) & 
-- VCC))
-- \estimador|Y_media_N[0]~17\ = CARRY((\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\ & \estimador|Y_media_N\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a19\,
	datab => \estimador|Y_media_N\(0),
	datad => VCC,
	combout => \estimador|Y_media_N[0]~16_combout\,
	cout => \estimador|Y_media_N[0]~17\);

-- Location: FF_X55_Y42_N1
\estimador|Y_media_N[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[0]~16_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(0));

-- Location: LCCOMB_X55_Y42_N2
\estimador|Y_media_N[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[1]~18_combout\ = (\estimador|Add1~2_combout\ & ((\estimador|Y_media_N\(1) & (\estimador|Y_media_N[0]~17\ & VCC)) # (!\estimador|Y_media_N\(1) & (!\estimador|Y_media_N[0]~17\)))) # (!\estimador|Add1~2_combout\ & 
-- ((\estimador|Y_media_N\(1) & (!\estimador|Y_media_N[0]~17\)) # (!\estimador|Y_media_N\(1) & ((\estimador|Y_media_N[0]~17\) # (GND)))))
-- \estimador|Y_media_N[1]~19\ = CARRY((\estimador|Add1~2_combout\ & (!\estimador|Y_media_N\(1) & !\estimador|Y_media_N[0]~17\)) # (!\estimador|Add1~2_combout\ & ((!\estimador|Y_media_N[0]~17\) # (!\estimador|Y_media_N\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add1~2_combout\,
	datab => \estimador|Y_media_N\(1),
	datad => VCC,
	cin => \estimador|Y_media_N[0]~17\,
	combout => \estimador|Y_media_N[1]~18_combout\,
	cout => \estimador|Y_media_N[1]~19\);

-- Location: FF_X55_Y42_N3
\estimador|Y_media_N[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[1]~18_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(1));

-- Location: LCCOMB_X55_Y42_N4
\estimador|Y_media_N[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[2]~20_combout\ = ((\estimador|Add1~4_combout\ $ (\estimador|Y_media_N\(2) $ (!\estimador|Y_media_N[1]~19\)))) # (GND)
-- \estimador|Y_media_N[2]~21\ = CARRY((\estimador|Add1~4_combout\ & ((\estimador|Y_media_N\(2)) # (!\estimador|Y_media_N[1]~19\))) # (!\estimador|Add1~4_combout\ & (\estimador|Y_media_N\(2) & !\estimador|Y_media_N[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add1~4_combout\,
	datab => \estimador|Y_media_N\(2),
	datad => VCC,
	cin => \estimador|Y_media_N[1]~19\,
	combout => \estimador|Y_media_N[2]~20_combout\,
	cout => \estimador|Y_media_N[2]~21\);

-- Location: FF_X55_Y42_N5
\estimador|Y_media_N[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[2]~20_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(2));

-- Location: LCCOMB_X55_Y42_N6
\estimador|Y_media_N[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[3]~22_combout\ = (\estimador|Add1~6_combout\ & ((\estimador|Y_media_N\(3) & (\estimador|Y_media_N[2]~21\ & VCC)) # (!\estimador|Y_media_N\(3) & (!\estimador|Y_media_N[2]~21\)))) # (!\estimador|Add1~6_combout\ & 
-- ((\estimador|Y_media_N\(3) & (!\estimador|Y_media_N[2]~21\)) # (!\estimador|Y_media_N\(3) & ((\estimador|Y_media_N[2]~21\) # (GND)))))
-- \estimador|Y_media_N[3]~23\ = CARRY((\estimador|Add1~6_combout\ & (!\estimador|Y_media_N\(3) & !\estimador|Y_media_N[2]~21\)) # (!\estimador|Add1~6_combout\ & ((!\estimador|Y_media_N[2]~21\) # (!\estimador|Y_media_N\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add1~6_combout\,
	datab => \estimador|Y_media_N\(3),
	datad => VCC,
	cin => \estimador|Y_media_N[2]~21\,
	combout => \estimador|Y_media_N[3]~22_combout\,
	cout => \estimador|Y_media_N[3]~23\);

-- Location: FF_X55_Y42_N7
\estimador|Y_media_N[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[3]~22_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(3));

-- Location: LCCOMB_X55_Y42_N8
\estimador|Y_media_N[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[4]~24_combout\ = ((\estimador|Add1~8_combout\ $ (\estimador|Y_media_N\(4) $ (!\estimador|Y_media_N[3]~23\)))) # (GND)
-- \estimador|Y_media_N[4]~25\ = CARRY((\estimador|Add1~8_combout\ & ((\estimador|Y_media_N\(4)) # (!\estimador|Y_media_N[3]~23\))) # (!\estimador|Add1~8_combout\ & (\estimador|Y_media_N\(4) & !\estimador|Y_media_N[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add1~8_combout\,
	datab => \estimador|Y_media_N\(4),
	datad => VCC,
	cin => \estimador|Y_media_N[3]~23\,
	combout => \estimador|Y_media_N[4]~24_combout\,
	cout => \estimador|Y_media_N[4]~25\);

-- Location: FF_X55_Y42_N9
\estimador|Y_media_N[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[4]~24_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(4));

-- Location: LCCOMB_X55_Y42_N10
\estimador|Y_media_N[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[5]~26_combout\ = (\estimador|Add1~10_combout\ & ((\estimador|Y_media_N\(5) & (\estimador|Y_media_N[4]~25\ & VCC)) # (!\estimador|Y_media_N\(5) & (!\estimador|Y_media_N[4]~25\)))) # (!\estimador|Add1~10_combout\ & 
-- ((\estimador|Y_media_N\(5) & (!\estimador|Y_media_N[4]~25\)) # (!\estimador|Y_media_N\(5) & ((\estimador|Y_media_N[4]~25\) # (GND)))))
-- \estimador|Y_media_N[5]~27\ = CARRY((\estimador|Add1~10_combout\ & (!\estimador|Y_media_N\(5) & !\estimador|Y_media_N[4]~25\)) # (!\estimador|Add1~10_combout\ & ((!\estimador|Y_media_N[4]~25\) # (!\estimador|Y_media_N\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add1~10_combout\,
	datab => \estimador|Y_media_N\(5),
	datad => VCC,
	cin => \estimador|Y_media_N[4]~25\,
	combout => \estimador|Y_media_N[5]~26_combout\,
	cout => \estimador|Y_media_N[5]~27\);

-- Location: FF_X55_Y42_N11
\estimador|Y_media_N[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[5]~26_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(5));

-- Location: LCCOMB_X55_Y42_N12
\estimador|Y_media_N[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[6]~28_combout\ = ((\estimador|Y_media_N\(6) $ (\estimador|Add1~12_combout\ $ (!\estimador|Y_media_N[5]~27\)))) # (GND)
-- \estimador|Y_media_N[6]~29\ = CARRY((\estimador|Y_media_N\(6) & ((\estimador|Add1~12_combout\) # (!\estimador|Y_media_N[5]~27\))) # (!\estimador|Y_media_N\(6) & (\estimador|Add1~12_combout\ & !\estimador|Y_media_N[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(6),
	datab => \estimador|Add1~12_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[5]~27\,
	combout => \estimador|Y_media_N[6]~28_combout\,
	cout => \estimador|Y_media_N[6]~29\);

-- Location: FF_X55_Y42_N13
\estimador|Y_media_N[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[6]~28_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(6));

-- Location: LCCOMB_X55_Y42_N14
\estimador|Y_media_N[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[7]~30_combout\ = (\estimador|Y_media_N\(7) & ((\estimador|Add1~14_combout\ & (\estimador|Y_media_N[6]~29\ & VCC)) # (!\estimador|Add1~14_combout\ & (!\estimador|Y_media_N[6]~29\)))) # (!\estimador|Y_media_N\(7) & 
-- ((\estimador|Add1~14_combout\ & (!\estimador|Y_media_N[6]~29\)) # (!\estimador|Add1~14_combout\ & ((\estimador|Y_media_N[6]~29\) # (GND)))))
-- \estimador|Y_media_N[7]~31\ = CARRY((\estimador|Y_media_N\(7) & (!\estimador|Add1~14_combout\ & !\estimador|Y_media_N[6]~29\)) # (!\estimador|Y_media_N\(7) & ((!\estimador|Y_media_N[6]~29\) # (!\estimador|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Add1~14_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[6]~29\,
	combout => \estimador|Y_media_N[7]~30_combout\,
	cout => \estimador|Y_media_N[7]~31\);

-- Location: FF_X55_Y42_N15
\estimador|Y_media_N[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[7]~30_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(7));

-- Location: LCCOMB_X55_Y42_N16
\estimador|Y_media_N[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[8]~32_combout\ = ((\estimador|Y_media_N\(8) $ (\estimador|Add1~16_combout\ $ (!\estimador|Y_media_N[7]~31\)))) # (GND)
-- \estimador|Y_media_N[8]~33\ = CARRY((\estimador|Y_media_N\(8) & ((\estimador|Add1~16_combout\) # (!\estimador|Y_media_N[7]~31\))) # (!\estimador|Y_media_N\(8) & (\estimador|Add1~16_combout\ & !\estimador|Y_media_N[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(8),
	datab => \estimador|Add1~16_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[7]~31\,
	combout => \estimador|Y_media_N[8]~32_combout\,
	cout => \estimador|Y_media_N[8]~33\);

-- Location: FF_X55_Y42_N17
\estimador|Y_media_N[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[8]~32_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(8));

-- Location: LCCOMB_X55_Y42_N18
\estimador|Y_media_N[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[9]~34_combout\ = (\estimador|Y_media_N\(9) & ((\estimador|Add1~18_combout\ & (\estimador|Y_media_N[8]~33\ & VCC)) # (!\estimador|Add1~18_combout\ & (!\estimador|Y_media_N[8]~33\)))) # (!\estimador|Y_media_N\(9) & 
-- ((\estimador|Add1~18_combout\ & (!\estimador|Y_media_N[8]~33\)) # (!\estimador|Add1~18_combout\ & ((\estimador|Y_media_N[8]~33\) # (GND)))))
-- \estimador|Y_media_N[9]~35\ = CARRY((\estimador|Y_media_N\(9) & (!\estimador|Add1~18_combout\ & !\estimador|Y_media_N[8]~33\)) # (!\estimador|Y_media_N\(9) & ((!\estimador|Y_media_N[8]~33\) # (!\estimador|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(9),
	datab => \estimador|Add1~18_combout\,
	datad => VCC,
	cin => \estimador|Y_media_N[8]~33\,
	combout => \estimador|Y_media_N[9]~34_combout\,
	cout => \estimador|Y_media_N[9]~35\);

-- Location: FF_X55_Y42_N19
\estimador|Y_media_N[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[9]~34_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(9));

-- Location: LCCOMB_X54_Y46_N0
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

-- Location: LCCOMB_X54_Y42_N26
\estimador|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Add1~20_combout\ = \estimador|Add1~19\ $ (\estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \estimador|reg_muestra_rtl_0|auto_generated|altsyncram2|ram_block5a10\,
	cin => \estimador|Add1~19\,
	combout => \estimador|Add1~20_combout\);

-- Location: LCCOMB_X55_Y42_N20
\estimador|Y_media_N[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[10]~36_combout\ = ((\estimador|Add1~20_combout\ $ (\estimador|Y_media_N\(10) $ (!\estimador|Y_media_N[9]~35\)))) # (GND)
-- \estimador|Y_media_N[10]~37\ = CARRY((\estimador|Add1~20_combout\ & ((\estimador|Y_media_N\(10)) # (!\estimador|Y_media_N[9]~35\))) # (!\estimador|Add1~20_combout\ & (\estimador|Y_media_N\(10) & !\estimador|Y_media_N[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add1~20_combout\,
	datab => \estimador|Y_media_N\(10),
	datad => VCC,
	cin => \estimador|Y_media_N[9]~35\,
	combout => \estimador|Y_media_N[10]~36_combout\,
	cout => \estimador|Y_media_N[10]~37\);

-- Location: FF_X55_Y42_N21
\estimador|Y_media_N[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[10]~36_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(10));

-- Location: LCCOMB_X55_Y42_N22
\estimador|Y_media_N[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[11]~38_combout\ = (\estimador|Add1~20_combout\ & ((\estimador|Y_media_N\(11) & (\estimador|Y_media_N[10]~37\ & VCC)) # (!\estimador|Y_media_N\(11) & (!\estimador|Y_media_N[10]~37\)))) # (!\estimador|Add1~20_combout\ & 
-- ((\estimador|Y_media_N\(11) & (!\estimador|Y_media_N[10]~37\)) # (!\estimador|Y_media_N\(11) & ((\estimador|Y_media_N[10]~37\) # (GND)))))
-- \estimador|Y_media_N[11]~39\ = CARRY((\estimador|Add1~20_combout\ & (!\estimador|Y_media_N\(11) & !\estimador|Y_media_N[10]~37\)) # (!\estimador|Add1~20_combout\ & ((!\estimador|Y_media_N[10]~37\) # (!\estimador|Y_media_N\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add1~20_combout\,
	datab => \estimador|Y_media_N\(11),
	datad => VCC,
	cin => \estimador|Y_media_N[10]~37\,
	combout => \estimador|Y_media_N[11]~38_combout\,
	cout => \estimador|Y_media_N[11]~39\);

-- Location: FF_X55_Y42_N23
\estimador|Y_media_N[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[11]~38_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(11));

-- Location: LCCOMB_X56_Y46_N28
\cuantificador|LessThan25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan25~0_combout\ = (\estimador|Y_media_N\(9) & \estimador|Y_media_N\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|Y_media_N\(9),
	datad => \estimador|Y_media_N\(8),
	combout => \cuantificador|LessThan25~0_combout\);

-- Location: LCCOMB_X55_Y46_N4
\cuantificador|leds[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[7]~4_combout\ = (!\estimador|Y_media_N\(11) & (!\estimador|Y_media_N\(10) & ((\cuantificador|LessThan23~0_combout\) # (!\cuantificador|LessThan25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan23~0_combout\,
	datab => \estimador|Y_media_N\(11),
	datac => \estimador|Y_media_N\(10),
	datad => \cuantificador|LessThan25~0_combout\,
	combout => \cuantificador|leds[7]~4_combout\);

-- Location: LCCOMB_X55_Y42_N24
\estimador|Y_media_N[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[12]~40_combout\ = ((\estimador|Add1~20_combout\ $ (\estimador|Y_media_N\(12) $ (!\estimador|Y_media_N[11]~39\)))) # (GND)
-- \estimador|Y_media_N[12]~41\ = CARRY((\estimador|Add1~20_combout\ & ((\estimador|Y_media_N\(12)) # (!\estimador|Y_media_N[11]~39\))) # (!\estimador|Add1~20_combout\ & (\estimador|Y_media_N\(12) & !\estimador|Y_media_N[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add1~20_combout\,
	datab => \estimador|Y_media_N\(12),
	datad => VCC,
	cin => \estimador|Y_media_N[11]~39\,
	combout => \estimador|Y_media_N[12]~40_combout\,
	cout => \estimador|Y_media_N[12]~41\);

-- Location: FF_X55_Y42_N25
\estimador|Y_media_N[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[12]~40_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(12));

-- Location: LCCOMB_X55_Y42_N26
\estimador|Y_media_N[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[13]~42_combout\ = (\estimador|Add1~20_combout\ & ((\estimador|Y_media_N\(13) & (\estimador|Y_media_N[12]~41\ & VCC)) # (!\estimador|Y_media_N\(13) & (!\estimador|Y_media_N[12]~41\)))) # (!\estimador|Add1~20_combout\ & 
-- ((\estimador|Y_media_N\(13) & (!\estimador|Y_media_N[12]~41\)) # (!\estimador|Y_media_N\(13) & ((\estimador|Y_media_N[12]~41\) # (GND)))))
-- \estimador|Y_media_N[13]~43\ = CARRY((\estimador|Add1~20_combout\ & (!\estimador|Y_media_N\(13) & !\estimador|Y_media_N[12]~41\)) # (!\estimador|Add1~20_combout\ & ((!\estimador|Y_media_N[12]~41\) # (!\estimador|Y_media_N\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add1~20_combout\,
	datab => \estimador|Y_media_N\(13),
	datad => VCC,
	cin => \estimador|Y_media_N[12]~41\,
	combout => \estimador|Y_media_N[13]~42_combout\,
	cout => \estimador|Y_media_N[13]~43\);

-- Location: FF_X55_Y42_N27
\estimador|Y_media_N[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[13]~42_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(13));

-- Location: LCCOMB_X55_Y42_N28
\estimador|Y_media_N[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[14]~44_combout\ = ((\estimador|Add1~20_combout\ $ (\estimador|Y_media_N\(14) $ (!\estimador|Y_media_N[13]~43\)))) # (GND)
-- \estimador|Y_media_N[14]~45\ = CARRY((\estimador|Add1~20_combout\ & ((\estimador|Y_media_N\(14)) # (!\estimador|Y_media_N[13]~43\))) # (!\estimador|Add1~20_combout\ & (\estimador|Y_media_N\(14) & !\estimador|Y_media_N[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add1~20_combout\,
	datab => \estimador|Y_media_N\(14),
	datad => VCC,
	cin => \estimador|Y_media_N[13]~43\,
	combout => \estimador|Y_media_N[14]~44_combout\,
	cout => \estimador|Y_media_N[14]~45\);

-- Location: FF_X55_Y42_N29
\estimador|Y_media_N[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[14]~44_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(14));

-- Location: LCCOMB_X55_Y46_N2
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

-- Location: LCCOMB_X56_Y46_N26
\cuantificador|leds[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[0]~6_combout\ = (\estimador|Y_media_N\(9)) # ((!\cuantificador|leds[2]~5_combout\) # (!\cuantificador|leds[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estimador|Y_media_N\(9),
	datac => \cuantificador|leds[7]~4_combout\,
	datad => \cuantificador|leds[2]~5_combout\,
	combout => \cuantificador|leds[0]~6_combout\);

-- Location: LCCOMB_X55_Y42_N30
\estimador|Y_media_N[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estimador|Y_media_N[15]~46_combout\ = \estimador|Add1~20_combout\ $ (\estimador|Y_media_N[14]~45\ $ (\estimador|Y_media_N\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Add1~20_combout\,
	datad => \estimador|Y_media_N\(15),
	cin => \estimador|Y_media_N[14]~45\,
	combout => \estimador|Y_media_N[15]~46_combout\);

-- Location: FF_X55_Y42_N31
\estimador|Y_media_N[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estimador|Y_media_N[15]~46_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	ena => \calc_offset|muestra_bias_rdy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estimador|Y_media_N\(15));

-- Location: LCCOMB_X54_Y46_N26
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

-- Location: LCCOMB_X56_Y46_N16
\cuantificador|leds[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[0]~8_combout\ = (!\estimador|Y_media_N\(15) & ((\cuantificador|leds[0]~6_combout\) # ((\cuantificador|leds[0]~7_combout\ & \estimador|Y_media_N\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[0]~6_combout\,
	datab => \estimador|Y_media_N\(15),
	datac => \cuantificador|leds[0]~7_combout\,
	datad => \estimador|Y_media_N\(8),
	combout => \cuantificador|leds[0]~8_combout\);

-- Location: LCCOMB_X54_Y46_N16
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

-- Location: LCCOMB_X55_Y46_N24
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

-- Location: LCCOMB_X55_Y45_N0
\cuantificador|LessThan28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan28~0_combout\ = (\estimador|Y_media_N\(11) & \estimador|Y_media_N\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estimador|Y_media_N\(11),
	datad => \estimador|Y_media_N\(10),
	combout => \cuantificador|LessThan28~0_combout\);

-- Location: LCCOMB_X55_Y46_N30
\cuantificador|leds[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[2]~10_combout\ = (\cuantificador|leds[2]~9_combout\ & (((!\cuantificador|LessThan25~0_combout\) # (!\cuantificador|LessThan28~0_combout\)) # (!\cuantificador|LessThan29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan29~0_combout\,
	datab => \cuantificador|leds[2]~9_combout\,
	datac => \cuantificador|LessThan28~0_combout\,
	datad => \cuantificador|LessThan25~0_combout\,
	combout => \cuantificador|leds[2]~10_combout\);

-- Location: LCCOMB_X54_Y46_N18
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

-- Location: LCCOMB_X55_Y46_N28
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

-- Location: LCCOMB_X55_Y46_N10
\cuantificador|leds[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[1]~13_combout\ = (\cuantificador|LessThan28~0_combout\ & (\cuantificador|leds[5]~11_combout\ & ((\cuantificador|leds[1]~12_combout\) # (\estimador|Y_media_N\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan28~0_combout\,
	datab => \cuantificador|leds[1]~12_combout\,
	datac => \estimador|Y_media_N\(8),
	datad => \cuantificador|leds[5]~11_combout\,
	combout => \cuantificador|leds[1]~13_combout\);

-- Location: LCCOMB_X55_Y46_N8
\cuantificador|leds[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[1]~14_combout\ = (\cuantificador|leds[2]~10_combout\) # ((\estimador|Y_media_N\(9) & \cuantificador|leds[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[2]~10_combout\,
	datac => \estimador|Y_media_N\(9),
	datad => \cuantificador|leds[1]~13_combout\,
	combout => \cuantificador|leds[1]~14_combout\);

-- Location: LCCOMB_X55_Y46_N18
\cuantificador|leds~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds~15_combout\ = (!\estimador|Y_media_N\(8) & !\estimador|Y_media_N\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(8),
	datac => \estimador|Y_media_N\(9),
	combout => \cuantificador|leds~15_combout\);

-- Location: LCCOMB_X54_Y46_N24
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

-- Location: LCCOMB_X56_Y46_N0
\cuantificador|leds[1]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[1]~38_combout\ = (\estimador|Y_media_N\(11) & (\estimador|Y_media_N\(10) & \cuantificador|leds[5]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(11),
	datac => \estimador|Y_media_N\(10),
	datad => \cuantificador|leds[5]~11_combout\,
	combout => \cuantificador|leds[1]~38_combout\);

-- Location: LCCOMB_X54_Y46_N30
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

-- Location: LCCOMB_X54_Y46_N12
\cuantificador|LessThan28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan28~2_combout\ = ((!\estimador|Y_media_N\(9) & ((!\estimador|Y_media_N\(8)) # (!\cuantificador|LessThan28~1_combout\)))) # (!\cuantificador|LessThan28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan28~1_combout\,
	datab => \estimador|Y_media_N\(9),
	datac => \cuantificador|LessThan28~0_combout\,
	datad => \estimador|Y_media_N\(8),
	combout => \cuantificador|LessThan28~2_combout\);

-- Location: LCCOMB_X55_Y46_N0
\cuantificador|leds[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[2]~17_combout\ = (\cuantificador|leds[2]~10_combout\ & ((\cuantificador|LessThan28~2_combout\) # ((\cuantificador|leds[2]~16_combout\ & \cuantificador|leds[1]~38_combout\)))) # (!\cuantificador|leds[2]~10_combout\ & 
-- (\cuantificador|leds[2]~16_combout\ & (\cuantificador|leds[1]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[2]~10_combout\,
	datab => \cuantificador|leds[2]~16_combout\,
	datac => \cuantificador|leds[1]~38_combout\,
	datad => \cuantificador|LessThan28~2_combout\,
	combout => \cuantificador|leds[2]~17_combout\);

-- Location: LCCOMB_X54_Y46_N22
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

-- Location: LCCOMB_X54_Y46_N4
\cuantificador|leds~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds~19_combout\ = (!\estimador|Y_media_N\(10) & (((\cuantificador|leds~18_combout\ & !\estimador|Y_media_N\(8))) # (!\estimador|Y_media_N\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds~18_combout\,
	datab => \estimador|Y_media_N\(9),
	datac => \estimador|Y_media_N\(10),
	datad => \estimador|Y_media_N\(8),
	combout => \cuantificador|leds~19_combout\);

-- Location: LCCOMB_X55_Y46_N14
\cuantificador|leds~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds~20_combout\ = (((!\estimador|Y_media_N\(11)) # (!\estimador|Y_media_N\(13))) # (!\estimador|Y_media_N\(12))) # (!\estimador|Y_media_N\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(14),
	datab => \estimador|Y_media_N\(12),
	datac => \estimador|Y_media_N\(13),
	datad => \estimador|Y_media_N\(11),
	combout => \cuantificador|leds~20_combout\);

-- Location: LCCOMB_X54_Y46_N10
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

-- Location: LCCOMB_X56_Y46_N2
\cuantificador|leds[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[3]~22_combout\ = ((!\estimador|Y_media_N\(10) & ((\cuantificador|leds[3]~21_combout\) # (!\cuantificador|LessThan25~0_combout\)))) # (!\estimador|Y_media_N\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(11),
	datab => \cuantificador|leds[3]~21_combout\,
	datac => \estimador|Y_media_N\(10),
	datad => \cuantificador|LessThan25~0_combout\,
	combout => \cuantificador|leds[3]~22_combout\);

-- Location: LCCOMB_X56_Y46_N24
\cuantificador|leds[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[3]~23_combout\ = (\estimador|Y_media_N\(15)) # ((\cuantificador|leds[2]~5_combout\ & \cuantificador|leds[3]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[2]~5_combout\,
	datab => \estimador|Y_media_N\(15),
	datad => \cuantificador|leds[3]~22_combout\,
	combout => \cuantificador|leds[3]~23_combout\);

-- Location: LCCOMB_X55_Y46_N16
\cuantificador|leds[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[3]~24_combout\ = ((\estimador|Y_media_N\(15) & ((\cuantificador|leds~19_combout\) # (\cuantificador|leds~20_combout\)))) # (!\cuantificador|leds[3]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(15),
	datab => \cuantificador|leds~19_combout\,
	datac => \cuantificador|leds~20_combout\,
	datad => \cuantificador|leds[3]~23_combout\,
	combout => \cuantificador|leds[3]~24_combout\);

-- Location: LCCOMB_X54_Y46_N28
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

-- Location: LCCOMB_X55_Y46_N22
\cuantificador|leds[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[4]~25_combout\ = (\estimador|Y_media_N\(10)) # (((!\cuantificador|LessThan24~0_combout\ & \estimador|Y_media_N\(7))) # (!\cuantificador|leds~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(10),
	datab => \cuantificador|LessThan24~0_combout\,
	datac => \estimador|Y_media_N\(7),
	datad => \cuantificador|leds~15_combout\,
	combout => \cuantificador|leds[4]~25_combout\);

-- Location: LCCOMB_X56_Y46_N6
\cuantificador|leds[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[4]~26_combout\ = (\estimador|Y_media_N\(11) & (\cuantificador|leds[4]~25_combout\ & \cuantificador|leds[5]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(11),
	datab => \cuantificador|leds[4]~25_combout\,
	datad => \cuantificador|leds[5]~11_combout\,
	combout => \cuantificador|leds[4]~26_combout\);

-- Location: LCCOMB_X54_Y46_N6
\cuantificador|LessThan26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan26~0_combout\ = ((!\estimador|Y_media_N\(7) & ((!\estimador|Y_media_N\(5)) # (!\estimador|Y_media_N\(6))))) # (!\estimador|Y_media_N\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(8),
	combout => \cuantificador|LessThan26~0_combout\);

-- Location: LCCOMB_X54_Y46_N20
\cuantificador|LessThan26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan26~1_combout\ = ((\cuantificador|LessThan26~0_combout\ & (!\estimador|Y_media_N\(9) & !\estimador|Y_media_N\(10)))) # (!\estimador|Y_media_N\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan26~0_combout\,
	datab => \estimador|Y_media_N\(9),
	datac => \estimador|Y_media_N\(10),
	datad => \estimador|Y_media_N\(11),
	combout => \cuantificador|LessThan26~1_combout\);

-- Location: LCCOMB_X56_Y46_N4
\cuantificador|leds[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[4]~27_combout\ = (\cuantificador|leds[3]~23_combout\ & ((\cuantificador|leds[4]~26_combout\) # ((\cuantificador|leds[2]~9_combout\ & \cuantificador|LessThan26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[4]~26_combout\,
	datab => \cuantificador|leds[2]~9_combout\,
	datac => \cuantificador|LessThan26~1_combout\,
	datad => \cuantificador|leds[3]~23_combout\,
	combout => \cuantificador|leds[4]~27_combout\);

-- Location: LCCOMB_X54_Y46_N14
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

-- Location: LCCOMB_X55_Y46_N20
\cuantificador|leds[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[5]~28_combout\ = (!\estimador|Y_media_N\(11) & ((\cuantificador|LessThan25~1_combout\) # ((!\cuantificador|LessThan25~0_combout\) # (!\estimador|Y_media_N\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|LessThan25~1_combout\,
	datab => \estimador|Y_media_N\(11),
	datac => \estimador|Y_media_N\(10),
	datad => \cuantificador|LessThan25~0_combout\,
	combout => \cuantificador|leds[5]~28_combout\);

-- Location: LCCOMB_X54_Y46_N8
\cuantificador|LessThan17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan17~0_combout\ = (!\estimador|Y_media_N\(8) & (((!\estimador|Y_media_N\(6) & !\estimador|Y_media_N\(5))) # (!\estimador|Y_media_N\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(8),
	combout => \cuantificador|LessThan17~0_combout\);

-- Location: LCCOMB_X56_Y46_N18
\cuantificador|LessThan17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan17~1_combout\ = (!\estimador|Y_media_N\(11) & ((\cuantificador|LessThan17~0_combout\) # ((!\estimador|Y_media_N\(9)) # (!\estimador|Y_media_N\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(11),
	datab => \cuantificador|LessThan17~0_combout\,
	datac => \estimador|Y_media_N\(10),
	datad => \estimador|Y_media_N\(9),
	combout => \cuantificador|LessThan17~1_combout\);

-- Location: LCCOMB_X56_Y46_N8
\cuantificador|leds[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[5]~29_combout\ = (\cuantificador|leds[5]~28_combout\ & ((\cuantificador|leds[2]~9_combout\) # ((\cuantificador|leds[5]~11_combout\ & !\cuantificador|LessThan17~1_combout\)))) # (!\cuantificador|leds[5]~28_combout\ & 
-- (\cuantificador|leds[5]~11_combout\ & (!\cuantificador|LessThan17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[5]~28_combout\,
	datab => \cuantificador|leds[5]~11_combout\,
	datac => \cuantificador|LessThan17~1_combout\,
	datad => \cuantificador|leds[2]~9_combout\,
	combout => \cuantificador|leds[5]~29_combout\);

-- Location: LCCOMB_X56_Y46_N14
\cuantificador|leds[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[5]~39_combout\ = (\cuantificador|leds[5]~29_combout\ & ((\estimador|Y_media_N\(15)) # ((\cuantificador|leds[2]~5_combout\ & \cuantificador|leds[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[2]~5_combout\,
	datab => \estimador|Y_media_N\(15),
	datac => \cuantificador|leds[5]~29_combout\,
	datad => \cuantificador|leds[3]~22_combout\,
	combout => \cuantificador|leds[5]~39_combout\);

-- Location: LCCOMB_X55_Y46_N12
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

-- Location: LCCOMB_X55_Y46_N6
\cuantificador|leds[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[6]~33_combout\ = ((\estimador|Y_media_N\(10) & ((\cuantificador|LessThan28~1_combout\) # (!\cuantificador|leds~15_combout\)))) # (!\cuantificador|LessThan17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(10),
	datab => \cuantificador|leds~15_combout\,
	datac => \cuantificador|LessThan28~1_combout\,
	datad => \cuantificador|LessThan17~1_combout\,
	combout => \cuantificador|leds[6]~33_combout\);

-- Location: LCCOMB_X55_Y46_N26
\cuantificador|LessThan24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|LessThan24~1_combout\ = (!\estimador|Y_media_N\(9) & (((!\estimador|Y_media_N\(7) & \cuantificador|LessThan24~0_combout\)) # (!\estimador|Y_media_N\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(9),
	datab => \estimador|Y_media_N\(7),
	datac => \estimador|Y_media_N\(8),
	datad => \cuantificador|LessThan24~0_combout\,
	combout => \cuantificador|LessThan24~1_combout\);

-- Location: LCCOMB_X56_Y46_N30
\cuantificador|leds~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds~30_combout\ = (\cuantificador|leds[5]~28_combout\ & (\cuantificador|leds[2]~5_combout\ & ((\cuantificador|LessThan24~1_combout\) # (!\estimador|Y_media_N\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(10),
	datab => \cuantificador|leds[5]~28_combout\,
	datac => \cuantificador|LessThan24~1_combout\,
	datad => \cuantificador|leds[2]~5_combout\,
	combout => \cuantificador|leds~30_combout\);

-- Location: LCCOMB_X56_Y46_N20
\cuantificador|leds[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[7]~31_combout\ = (\estimador|Y_media_N\(15)) # ((\cuantificador|leds[2]~5_combout\ & (\cuantificador|leds~30_combout\ & \cuantificador|leds[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[2]~5_combout\,
	datab => \estimador|Y_media_N\(15),
	datac => \cuantificador|leds~30_combout\,
	datad => \cuantificador|leds[3]~22_combout\,
	combout => \cuantificador|leds[7]~31_combout\);

-- Location: LCCOMB_X56_Y46_N10
\cuantificador|leds[6]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[6]~34_combout\ = (\cuantificador|leds[7]~31_combout\ & (((\cuantificador|leds[6]~32_combout\ & \cuantificador|leds[6]~33_combout\)) # (!\estimador|Y_media_N\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[6]~32_combout\,
	datab => \estimador|Y_media_N\(15),
	datac => \cuantificador|leds[6]~33_combout\,
	datad => \cuantificador|leds[7]~31_combout\,
	combout => \cuantificador|leds[6]~34_combout\);

-- Location: LCCOMB_X54_Y46_N2
\cuantificador|leds~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds~35_combout\ = (\estimador|Y_media_N\(7)) # ((\estimador|Y_media_N\(11)) # ((\estimador|Y_media_N\(6) & \estimador|Y_media_N\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(7),
	datab => \estimador|Y_media_N\(6),
	datac => \estimador|Y_media_N\(5),
	datad => \estimador|Y_media_N\(11),
	combout => \cuantificador|leds~35_combout\);

-- Location: LCCOMB_X56_Y46_N12
\cuantificador|leds[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[7]~36_combout\ = (\cuantificador|leds[5]~11_combout\ & ((\estimador|Y_media_N\(10)) # ((\cuantificador|leds~35_combout\) # (!\cuantificador|leds~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estimador|Y_media_N\(10),
	datab => \cuantificador|leds[5]~11_combout\,
	datac => \cuantificador|leds~35_combout\,
	datad => \cuantificador|leds~15_combout\,
	combout => \cuantificador|leds[7]~36_combout\);

-- Location: LCCOMB_X56_Y46_N22
\cuantificador|leds[7]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuantificador|leds[7]~37_combout\ = (\cuantificador|leds[7]~31_combout\ & ((\cuantificador|leds[7]~36_combout\) # ((\cuantificador|leds[2]~9_combout\ & \cuantificador|leds[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuantificador|leds[7]~36_combout\,
	datab => \cuantificador|leds[2]~9_combout\,
	datac => \cuantificador|leds[7]~4_combout\,
	datad => \cuantificador|leds[7]~31_combout\,
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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

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


