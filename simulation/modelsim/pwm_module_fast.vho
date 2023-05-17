-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/16/2023 14:20:08"

-- 
-- Device: Altera EP2C15AF484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pwm_module IS
    PORT (
	clock_50 : IN std_logic;
	key_n : IN std_logic_vector(3 DOWNTO 0);
	fpga_in_rx : IN std_logic;
	fpga_out_tx : OUT std_logic;
	hex0_n : OUT std_logic_vector(6 DOWNTO 0);
	hex1_n : OUT std_logic_vector(6 DOWNTO 0);
	hex2_n : OUT std_logic_vector(6 DOWNTO 0);
	ledr : OUT std_logic_vector(9 DOWNTO 0);
	ledg : OUT std_logic_vector(7 DOWNTO 0)
	);
END pwm_module;

-- Design Ports Information
-- fpga_out_tx	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fpga_in_rx	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pwm_module IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_key_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_fpga_in_rx : std_logic;
SIGNAL ww_fpga_out_tx : std_logic;
SIGNAL ww_hex0_n : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1_n : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2_n : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk0\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk1\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk2\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~6_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[3]~22_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[5]~20_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[6]~22_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[7]~24_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_en~regout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[1]~7_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[5]~16\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[6]~17_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~16_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~22_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[1]~12_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[6]~22_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[0]~20\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[0]~19_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[1]~22\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[1]~21_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[2]~24\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[2]~23_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[3]~26\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[3]~25_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[4]~28\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[4]~27_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[5]~30\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[5]~29_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[6]~32\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[6]~31_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[7]~34\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[7]~33_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[8]~36\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[8]~35_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[9]~38\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[9]~37_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[10]~41\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[10]~40_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[11]~43\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[11]~42_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[12]~45\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[12]~44_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[13]~47\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[13]~46_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[14]~49\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[14]~48_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[15]~51\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[15]~50_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[16]~53\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[16]~52_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[17]~55\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[17]~54_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[18]~56_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[1]~21_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[3]~25_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[12]~43_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[14]~47_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[15]~50_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[0]~20\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[0]~19_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[1]~22\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[1]~21_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[2]~24\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[2]~23_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[3]~26\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[3]~25_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[4]~28\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[4]~27_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[5]~30\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[5]~29_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[6]~32\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[6]~31_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[7]~34\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[7]~33_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[8]~36\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[8]~35_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[9]~38\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[9]~37_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[10]~41\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[10]~40_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[11]~43\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[11]~42_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[12]~45\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[12]~44_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[13]~47\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[13]~46_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[14]~49\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[14]~48_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[15]~51\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[15]~50_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[16]~53\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[16]~52_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[17]~55\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[17]~54_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[18]~56_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[1]~21_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[3]~25_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[12]~43_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[15]~50_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|seven_seg_vector2[2]~3_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector28~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|LessThan0~3_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|send_data_state.s_idle~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~42_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector31~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux14~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_down_out~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~17_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|previous_dc[6]~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector9~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~22_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~23_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~2_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector22~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector12~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal3~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal3~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan3~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan3~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan3~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_in_states~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_off_out~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal2~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal2~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan2~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan2~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan2~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_down_out~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_down_out~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector21~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector11~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector11~1_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector11~2_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector11~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal2~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal2~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal2~4_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal2~5_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_in_states~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal3~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal3~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal3~4_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal3~5_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal3~6_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal1~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal1~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal1~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal1~4_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal1~5_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal0~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal0~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal0~4_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal0~5_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_in_states~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_in_states~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_in_states~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_in_states~4_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_in_states~5_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~5_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~6_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~7_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector20~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector8~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector10~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector10~1_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector10~2_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector10~3_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector5~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector11~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector19~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector9~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector9~1_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector9~2_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector8~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|previous_dc[2]~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|previous_dc[6]~5_combout\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~9_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[7]~25\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[8]~26_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[3]~16_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[4]~18_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~1_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[4]~11_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~10\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[1]~13\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[2]~14_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[2]~15\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[3]~17\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[4]~19\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[5]~20_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[5]~21\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[6]~23\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[7]~24_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_no~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector33~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Add1~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_no[1]~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector32~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector29~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector29~1_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[3]~11_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_locked\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|LessThan0~2_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[0]~6_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[2]~9_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[4]~13_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[5]~15_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_out~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_out~regout\ : std_logic;
SIGNAL \i_serial_uart|reset_r~0_combout\ : std_logic;
SIGNAL \i_serial_uart|reset_r~regout\ : std_logic;
SIGNAL \i_serial_uart|reset_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_state~7_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state~8_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector27~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_start_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector28~1_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_tx_data~regout\ : std_logic;
SIGNAL \clock_50~clkctrl_outclk\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[0]~8_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~9_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~15\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~17\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~19\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~20_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~21\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~23\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~24_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~25\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[8]~26_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_no~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector14~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Equal0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_rx_data~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector4~3_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector1~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_state~10_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_en~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~11_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~10\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~13\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~14_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~12_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~18_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector4~2_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector10~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector9~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~2_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data[1]~10_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector8~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~4_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector10~1_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~3_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_up_out~0_combout\ : std_logic;
SIGNAL \fpga_in_rx~combout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_2r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|received_valid~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_valid~regout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_up_out~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector7~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~8_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_up_out~2_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_up_out~regout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[0]~19_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off_r~feeder_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off_r~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_off_2r~regout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[0]~20\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[1]~22\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[2]~23_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[2]~24\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[3]~26\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[4]~27_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[4]~28\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[5]~30\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[6]~31_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[6]~32\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[7]~33_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[7]~34\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[8]~35_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[8]~36\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[9]~37_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[9]~38\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[10]~39_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[10]~40\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[11]~41_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[5]~29_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off_out~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[11]~42\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[12]~44\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[13]~45_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[13]~46\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[14]~48\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[15]~51\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[16]~52_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[16]~53\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[17]~54_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[17]~55\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[18]~56_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off_out~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off_out~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off_out~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_up_r~feeder_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_up_r~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_up_2r~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_down_r~feeder_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_down_r~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_down_2r~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_up_out~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_up_out~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_up_out~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~21_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~24_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_up~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[0]~9\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[1]~11\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[2]~12_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[1]~10_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[2]~13\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[3]~14_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[3]~15\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[4]~19_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~5\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~7\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~8_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector3~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~25_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_down~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[5]~22\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[6]~23_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~9\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~11\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~12_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector6~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~9_combout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux1~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux1~1_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_down_out~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_down_out~regout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_off_out~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux0~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_off_out~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~19_combout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux1~2_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_on_out~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_on_r~feeder_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_on_r~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_on_2r~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_on_out~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[0]~19_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[17]~55\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[18]~56_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[0]~20\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[1]~22\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[2]~23_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[2]~24\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[3]~26\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[4]~27_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[4]~28\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[5]~30\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[6]~31_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[6]~32\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[7]~33_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[7]~34\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[8]~35_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[8]~36\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[9]~37_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[9]~38\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[10]~39_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[10]~40\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[11]~41_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[11]~42\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[12]~44\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[13]~45_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[13]~46\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[14]~48\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[15]~51\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[16]~52_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[16]~53\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[17]~54_combout\ : std_logic;
SIGNAL \i_key_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[14]~47_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan1~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[5]~29_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan1~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan1~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan1~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_on_out~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_on_out~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~18_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~15_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_idle~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~14_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~16_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~20_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_on~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector1~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[6]~24\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[7]~25_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~13\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~14_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[5]~16_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector9~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[7]~17_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[4]~20\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[5]~21_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~10_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector2~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|previous_dc[5]~6_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan2~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan2~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector4~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector4~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan4~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state~26_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_off~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector9~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector9~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector9~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector6~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector6~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~1\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~3\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[5]~18_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector5~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|previous_dc[6]~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~43_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|previous_dc[6]~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|previous_dc[6]~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector7~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector7~1_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|bcd_input_vector[0]~feeder_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|bcd_input_vector[0]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|bcd_input_vector[1]~feeder_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|rom_addr[1]~feeder_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|bcd_input_vector[3]~feeder_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|rom_addr[3]~feeder_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|bcd_input_vector[4]~feeder_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|rom_addr[4]~feeder_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|rom_addr[5]~feeder_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|bcd_input_vector[6]~feeder_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|rom_addr[7]~feeder_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector8~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|update_dc~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[0]~16_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[0]~17\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[1]~18_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[1]~19\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[2]~20_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[2]~21\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[3]~23\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[4]~24_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[4]~25\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[5]~27\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[6]~29\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[7]~30_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[7]~31\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[8]~33\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[9]~34_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[9]~35\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[10]~37\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[11]~38_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[11]~39\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[12]~41\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[13]~42_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[10]~36_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan1~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[6]~28_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[5]~26_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan1~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[8]~32_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan1~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[13]~43\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[14]~44_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[14]~45\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[15]~46_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan1~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|update_dc_now~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|update_dc_now~regout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|send_data_state~16_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|bcd_0_in[3]~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector25~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|send_data_state.s_send_procent~regout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|send_data_state.s_send_cr~regout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|byte_vector[0]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|byte_vector[0]~1_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector5~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|transmit_valid_out~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector25~1_combout\ : std_logic;
SIGNAL \i_serial_uart|transmit_ready~regout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector13~0_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \i_dc_disp_ctrl|bcd_2_in[1]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector12~1_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector12~2_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|byte_vector[0]~2_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector23~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_byte_saved[4]~0_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux25~0_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \i_dc_disp_ctrl|process_0~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector13~1_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector13~2_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector24~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector34~0_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux32~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux31~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux30~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux29~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux28~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux27~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux26~0_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \i_dc_disp_ctrl|bcd_1_in[3]~0_combout\ : std_logic;
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux21~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux20~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux19~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux18~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux17~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux16~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Mux15~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|seven_seg_vector2[2]~2_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector17~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|process_0~1_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|seven_seg_vector2[2]~5_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector19~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|seven_seg_vector2[1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|seven_seg_vector2[1]~4_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector18~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|LessThan0~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|LessThan0~1_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector16~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector15~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|Selector14~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_error~_Duplicate_1_regout\ : std_logic;
SIGNAL \i_serial_uart|received_error~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~14_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[8]~26_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[4]~18_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~44_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal1~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~45_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~46_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~47_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~15\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[3]~17\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[4]~19\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[5]~21\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[6]~23\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[7]~25\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[8]~27\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[9]~28_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[9]~29\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[10]~30_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[10]~31\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[11]~32_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[11]~33\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[12]~34_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[12]~35\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[13]~36_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[13]~37\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[14]~38_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[14]~39\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[15]~40_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt[12]~40_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[3]~16_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~1_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~3_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~5_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~7_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~9_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~11_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~13_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~15_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~17_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~19_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~21_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~23_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~25_cout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan0~26_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_byte_saved\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_serial_uart|tx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart|tx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_serial_uart|rx_byte_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_serial_uart|received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \key_n~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_pwm_ctrl|new_dc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_dc_disp_ctrl|bcd_1_in\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_dc_disp_ctrl|bcd_0_in\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_bcd_decode_rom|rom_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_dc_disp_ctrl|bcd_2_in\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_dc_disp_ctrl|bcd_input_vector\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_pwm_ctrl|one_ms_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_dc_disp_ctrl|byte_vector\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_pwm_ctrl|previous_dc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_pwm_ctrl|dc_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_key_ctrl|ten_ms_up_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \i_key_ctrl|ten_ms_on_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \i_key_ctrl|ten_ms_off_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \i_key_ctrl|ten_ms_down_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_seven_seg_vector2[1]~4_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\ : std_logic;
SIGNAL \i_serial_uart|ALT_INV_tx_state.s_tx_data~regout\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_key_n <= key_n;
ww_fpga_in_rx <= fpga_in_rx;
fpga_out_tx <= ww_fpga_out_tx;
hex0_n <= ww_hex0_n;
hex1_n <= ww_hex1_n;
hex2_n <= ww_hex2_n;
ledr <= ww_ledr;
ledg <= ww_ledg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i_bcd_decode_rom|rom_addr\(7) & \i_bcd_decode_rom|rom_addr\(6) & \i_bcd_decode_rom|rom_addr\(5) & \i_bcd_decode_rom|rom_addr\(4) & \i_bcd_decode_rom|rom_addr\(3) & 
\i_bcd_decode_rom|rom_addr\(2) & \i_bcd_decode_rom|rom_addr\(1) & \i_bcd_decode_rom|rom_addr\(0));

\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\ <= \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\ <= \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\ <= \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\ <= \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\ <= \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\ <= \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\ <= \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\ <= \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\ <= \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);

\b_gen_pll:i_altera_pll|altpll_component|pll_INCLK_bus\ <= (gnd & \clock_50~combout\);

\b_gen_pll:i_altera_pll|altpll_component|_clk0\ <= \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\(0);
\b_gen_pll:i_altera_pll|altpll_component|_clk1\ <= \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\(1);
\b_gen_pll:i_altera_pll|altpll_component|_clk2\ <= \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\(2);

\b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \b_gen_pll:i_altera_pll|altpll_component|_clk1\);

\clock_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_50~combout\);
\i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\ <= NOT \i_pwm_ctrl|pwm_state.s_down~regout\;
\i_dc_disp_ctrl|ALT_INV_Selector14~0_combout\ <= NOT \i_dc_disp_ctrl|Selector14~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Selector15~0_combout\ <= NOT \i_dc_disp_ctrl|Selector15~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Selector16~0_combout\ <= NOT \i_dc_disp_ctrl|Selector16~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Selector18~0_combout\ <= NOT \i_dc_disp_ctrl|Selector18~0_combout\;
\i_dc_disp_ctrl|ALT_INV_seven_seg_vector2[1]~4_combout\ <= NOT \i_dc_disp_ctrl|seven_seg_vector2[1]~4_combout\;
\i_dc_disp_ctrl|ALT_INV_Selector17~0_combout\ <= NOT \i_dc_disp_ctrl|Selector17~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux15~0_combout\ <= NOT \i_dc_disp_ctrl|Mux15~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux16~0_combout\ <= NOT \i_dc_disp_ctrl|Mux16~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux17~0_combout\ <= NOT \i_dc_disp_ctrl|Mux17~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux18~0_combout\ <= NOT \i_dc_disp_ctrl|Mux18~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux19~0_combout\ <= NOT \i_dc_disp_ctrl|Mux19~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux20~0_combout\ <= NOT \i_dc_disp_ctrl|Mux20~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux21~0_combout\ <= NOT \i_dc_disp_ctrl|Mux21~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux26~0_combout\ <= NOT \i_dc_disp_ctrl|Mux26~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux27~0_combout\ <= NOT \i_dc_disp_ctrl|Mux27~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux28~0_combout\ <= NOT \i_dc_disp_ctrl|Mux28~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux29~0_combout\ <= NOT \i_dc_disp_ctrl|Mux29~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux30~0_combout\ <= NOT \i_dc_disp_ctrl|Mux30~0_combout\;
\i_dc_disp_ctrl|ALT_INV_Mux31~0_combout\ <= NOT \i_dc_disp_ctrl|Mux31~0_combout\;
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\ <= NOT \b_gen_pll:i_reset_ctrl|reset_out~regout\;
\i_dc_disp_ctrl|ALT_INV_Mux32~0_combout\ <= NOT \i_dc_disp_ctrl|Mux32~0_combout\;
\b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\ <= NOT \b_gen_pll:i_altera_pll|altpll_component|_locked\;
\i_serial_uart|ALT_INV_tx_state.s_tx_data~regout\ <= NOT \i_serial_uart|tx_state.s_tx_data~regout\;

-- Location: LCFF_X30_Y23_N15
\i_pwm_ctrl|dc_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[7]~24_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(7));

-- Location: LCFF_X30_Y23_N13
\i_pwm_ctrl|dc_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[6]~22_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(6));

-- Location: LCFF_X30_Y23_N11
\i_pwm_ctrl|dc_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[5]~20_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(5));

-- Location: LCFF_X32_Y23_N7
\i_pwm_ctrl|one_ms_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[3]~22_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(3));

-- Location: LCFF_X1_Y8_N17
\b_gen_pll:i_reset_ctrl|reset_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[1]~7_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(1));

-- Location: LCFF_X1_Y8_N27
\b_gen_pll:i_reset_ctrl|reset_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[6]~17_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(6));

-- Location: PLL_1
\b_gen_pll:i_altera_pll|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 8,
	c0_initial => 1,
	c0_low => 8,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_duty_cycle => 50,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 1,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk1",
	gate_lock_counter => 1000,
	gate_lock_signal => "yes",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 4185,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => GND,
	inclk => \b_gen_pll:i_altera_pll|altpll_component|pll_INCLK_bus\,
	locked => \b_gen_pll:i_altera_pll|altpll_component|_locked\,
	clk => \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\);

-- Location: LCCOMB_X20_Y23_N10
\i_pwm_ctrl|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~0_combout\ = \i_pwm_ctrl|new_dc\(0) $ (VCC)
-- \i_pwm_ctrl|Add1~1\ = CARRY(\i_pwm_ctrl|new_dc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(0),
	datad => VCC,
	combout => \i_pwm_ctrl|Add1~0_combout\,
	cout => \i_pwm_ctrl|Add1~1\);

-- Location: LCCOMB_X20_Y23_N12
\i_pwm_ctrl|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~2_combout\ = (\i_pwm_ctrl|new_dc\(1) & (!\i_pwm_ctrl|Add1~1\)) # (!\i_pwm_ctrl|new_dc\(1) & ((\i_pwm_ctrl|Add1~1\) # (GND)))
-- \i_pwm_ctrl|Add1~3\ = CARRY((!\i_pwm_ctrl|Add1~1\) # (!\i_pwm_ctrl|new_dc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(1),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~1\,
	combout => \i_pwm_ctrl|Add1~2_combout\,
	cout => \i_pwm_ctrl|Add1~3\);

-- Location: LCCOMB_X20_Y23_N16
\i_pwm_ctrl|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~6_combout\ = (\i_pwm_ctrl|new_dc\(3) & (!\i_pwm_ctrl|Add1~5\)) # (!\i_pwm_ctrl|new_dc\(3) & ((\i_pwm_ctrl|Add1~5\) # (GND)))
-- \i_pwm_ctrl|Add1~7\ = CARRY((!\i_pwm_ctrl|Add1~5\) # (!\i_pwm_ctrl|new_dc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(3),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~5\,
	combout => \i_pwm_ctrl|Add1~6_combout\,
	cout => \i_pwm_ctrl|Add1~7\);

-- Location: LCFF_X32_Y22_N11
\i_serial_uart|rx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[3]~16_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(3));

-- Location: LCFF_X32_Y22_N17
\i_serial_uart|rx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[6]~22_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(6));

-- Location: LCCOMB_X32_Y23_N6
\i_pwm_ctrl|one_ms_cnt[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[3]~22_combout\ = (\i_pwm_ctrl|one_ms_cnt\(3) & (!\i_pwm_ctrl|one_ms_cnt[2]~21\)) # (!\i_pwm_ctrl|one_ms_cnt\(3) & ((\i_pwm_ctrl|one_ms_cnt[2]~21\) # (GND)))
-- \i_pwm_ctrl|one_ms_cnt[3]~23\ = CARRY((!\i_pwm_ctrl|one_ms_cnt[2]~21\) # (!\i_pwm_ctrl|one_ms_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(3),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[2]~21\,
	combout => \i_pwm_ctrl|one_ms_cnt[3]~22_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[3]~23\);

-- Location: LCCOMB_X30_Y23_N10
\i_pwm_ctrl|dc_cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[5]~20_combout\ = (\i_pwm_ctrl|dc_cnt\(5) & ((\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt[4]~19\)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & (\i_pwm_ctrl|dc_cnt[4]~19\ & VCC)))) # (!\i_pwm_ctrl|dc_cnt\(5) & 
-- ((\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt[4]~19\) # (GND))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt[4]~19\))))
-- \i_pwm_ctrl|dc_cnt[5]~21\ = CARRY((\i_pwm_ctrl|dc_cnt\(5) & (\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|dc_cnt[4]~19\)) # (!\i_pwm_ctrl|dc_cnt\(5) & ((\i_pwm_ctrl|pwm_state.s_down~regout\) # (!\i_pwm_ctrl|dc_cnt[4]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(5),
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[4]~19\,
	combout => \i_pwm_ctrl|dc_cnt[5]~20_combout\,
	cout => \i_pwm_ctrl|dc_cnt[5]~21\);

-- Location: LCCOMB_X30_Y23_N12
\i_pwm_ctrl|dc_cnt[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[6]~22_combout\ = ((\i_pwm_ctrl|dc_cnt\(6) $ (\i_pwm_ctrl|pwm_state.s_down~regout\ $ (\i_pwm_ctrl|dc_cnt[5]~21\)))) # (GND)
-- \i_pwm_ctrl|dc_cnt[6]~23\ = CARRY((\i_pwm_ctrl|dc_cnt\(6) & ((!\i_pwm_ctrl|dc_cnt[5]~21\) # (!\i_pwm_ctrl|pwm_state.s_down~regout\))) # (!\i_pwm_ctrl|dc_cnt\(6) & (!\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|dc_cnt[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(6),
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[5]~21\,
	combout => \i_pwm_ctrl|dc_cnt[6]~22_combout\,
	cout => \i_pwm_ctrl|dc_cnt[6]~23\);

-- Location: LCCOMB_X30_Y23_N14
\i_pwm_ctrl|dc_cnt[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[7]~24_combout\ = (\i_pwm_ctrl|dc_cnt\(7) & ((\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt[6]~23\)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & (\i_pwm_ctrl|dc_cnt[6]~23\ & VCC)))) # (!\i_pwm_ctrl|dc_cnt\(7) & 
-- ((\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt[6]~23\) # (GND))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt[6]~23\))))
-- \i_pwm_ctrl|dc_cnt[7]~25\ = CARRY((\i_pwm_ctrl|dc_cnt\(7) & (\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|dc_cnt[6]~23\)) # (!\i_pwm_ctrl|dc_cnt\(7) & ((\i_pwm_ctrl|pwm_state.s_down~regout\) # (!\i_pwm_ctrl|dc_cnt[6]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(7),
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[6]~23\,
	combout => \i_pwm_ctrl|dc_cnt[7]~24_combout\,
	cout => \i_pwm_ctrl|dc_cnt[7]~25\);

-- Location: LCFF_X12_Y22_N7
\i_serial_uart|tx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[1]~12_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(1));

-- Location: LCFF_X12_Y22_N17
\i_serial_uart|tx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[6]~22_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(6));

-- Location: LCFF_X11_Y22_N17
\i_serial_uart|tx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_state~7_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt_en~regout\);

-- Location: LCCOMB_X1_Y8_N16
\b_gen_pll:i_reset_ctrl|reset_cnt[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[1]~7_combout\ = (\b_gen_pll:i_reset_ctrl|reset_cnt\(1) & (\b_gen_pll:i_reset_ctrl|reset_cnt\(0) $ (VCC))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(1) & (\b_gen_pll:i_reset_ctrl|reset_cnt\(0) & VCC))
-- \b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\ = CARRY((\b_gen_pll:i_reset_ctrl|reset_cnt\(1) & \b_gen_pll:i_reset_ctrl|reset_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|reset_cnt\(1),
	datab => \b_gen_pll:i_reset_ctrl|reset_cnt\(0),
	datad => VCC,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[1]~7_combout\,
	cout => \b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\);

-- Location: LCCOMB_X1_Y8_N24
\b_gen_pll:i_reset_ctrl|reset_cnt[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[5]~15_combout\ = (\b_gen_pll:i_reset_ctrl|reset_cnt\(5) & (\b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\ $ (GND))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(5) & (!\b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\ & VCC))
-- \b_gen_pll:i_reset_ctrl|reset_cnt[5]~16\ = CARRY((\b_gen_pll:i_reset_ctrl|reset_cnt\(5) & !\b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|reset_cnt\(5),
	datad => VCC,
	cin => \b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[5]~15_combout\,
	cout => \b_gen_pll:i_reset_ctrl|reset_cnt[5]~16\);

-- Location: LCCOMB_X1_Y8_N26
\b_gen_pll:i_reset_ctrl|reset_cnt[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[6]~17_combout\ = \b_gen_pll:i_reset_ctrl|reset_cnt[5]~16\ $ (\b_gen_pll:i_reset_ctrl|reset_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_reset_ctrl|reset_cnt\(6),
	cin => \b_gen_pll:i_reset_ctrl|reset_cnt[5]~16\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[6]~17_combout\);

-- Location: LCCOMB_X32_Y22_N10
\i_serial_uart|rx_bit_cnt[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[3]~16_combout\ = (\i_serial_uart|rx_bit_cnt\(3) & (!\i_serial_uart|rx_bit_cnt[2]~15\)) # (!\i_serial_uart|rx_bit_cnt\(3) & ((\i_serial_uart|rx_bit_cnt[2]~15\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[3]~17\ = CARRY((!\i_serial_uart|rx_bit_cnt[2]~15\) # (!\i_serial_uart|rx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(3),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[2]~15\,
	combout => \i_serial_uart|rx_bit_cnt[3]~16_combout\,
	cout => \i_serial_uart|rx_bit_cnt[3]~17\);

-- Location: LCCOMB_X32_Y22_N16
\i_serial_uart|rx_bit_cnt[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[6]~22_combout\ = (\i_serial_uart|rx_bit_cnt\(6) & (\i_serial_uart|rx_bit_cnt[5]~21\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(6) & (!\i_serial_uart|rx_bit_cnt[5]~21\ & VCC))
-- \i_serial_uart|rx_bit_cnt[6]~23\ = CARRY((\i_serial_uart|rx_bit_cnt\(6) & !\i_serial_uart|rx_bit_cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(6),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[5]~21\,
	combout => \i_serial_uart|rx_bit_cnt[6]~22_combout\,
	cout => \i_serial_uart|rx_bit_cnt[6]~23\);

-- Location: LCCOMB_X12_Y22_N6
\i_serial_uart|tx_bit_cnt[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[1]~12_combout\ = (\i_serial_uart|tx_bit_cnt\(1) & (!\i_serial_uart|tx_bit_cnt[0]~10\)) # (!\i_serial_uart|tx_bit_cnt\(1) & ((\i_serial_uart|tx_bit_cnt[0]~10\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[1]~13\ = CARRY((!\i_serial_uart|tx_bit_cnt[0]~10\) # (!\i_serial_uart|tx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(1),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[0]~10\,
	combout => \i_serial_uart|tx_bit_cnt[1]~12_combout\,
	cout => \i_serial_uart|tx_bit_cnt[1]~13\);

-- Location: LCCOMB_X12_Y22_N16
\i_serial_uart|tx_bit_cnt[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[6]~22_combout\ = (\i_serial_uart|tx_bit_cnt\(6) & (\i_serial_uart|tx_bit_cnt[5]~21\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(6) & (!\i_serial_uart|tx_bit_cnt[5]~21\ & VCC))
-- \i_serial_uart|tx_bit_cnt[6]~23\ = CARRY((\i_serial_uart|tx_bit_cnt\(6) & !\i_serial_uart|tx_bit_cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(6),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[5]~21\,
	combout => \i_serial_uart|tx_bit_cnt[6]~22_combout\,
	cout => \i_serial_uart|tx_bit_cnt[6]~23\);

-- Location: LCFF_X36_Y13_N1
\i_key_ctrl|ten_ms_up_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[9]~37_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(9));

-- Location: LCFF_X36_Y13_N3
\i_key_ctrl|ten_ms_up_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[10]~40_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(10));

-- Location: LCFF_X36_Y13_N5
\i_key_ctrl|ten_ms_up_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[11]~42_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(11));

-- Location: LCFF_X36_Y13_N7
\i_key_ctrl|ten_ms_up_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[12]~44_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(12));

-- Location: LCFF_X36_Y14_N25
\i_key_ctrl|ten_ms_up_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[5]~29_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(5));

-- Location: LCFF_X36_Y14_N27
\i_key_ctrl|ten_ms_up_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[6]~31_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(6));

-- Location: LCFF_X36_Y14_N29
\i_key_ctrl|ten_ms_up_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[7]~33_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(7));

-- Location: LCFF_X36_Y14_N31
\i_key_ctrl|ten_ms_up_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[8]~35_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(8));

-- Location: LCFF_X36_Y13_N11
\i_key_ctrl|ten_ms_up_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[14]~48_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(14));

-- Location: LCFF_X36_Y13_N9
\i_key_ctrl|ten_ms_up_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[13]~46_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(13));

-- Location: LCFF_X36_Y13_N13
\i_key_ctrl|ten_ms_up_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[15]~50_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(15));

-- Location: LCFF_X36_Y13_N15
\i_key_ctrl|ten_ms_up_cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[16]~52_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(16));

-- Location: LCFF_X36_Y13_N17
\i_key_ctrl|ten_ms_up_cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[17]~54_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(17));

-- Location: LCFF_X36_Y13_N19
\i_key_ctrl|ten_ms_up_cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[18]~56_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(18));

-- Location: LCFF_X33_Y13_N11
\i_key_ctrl|ten_ms_off_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[14]~47_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(14));

-- Location: LCFF_X33_Y13_N7
\i_key_ctrl|ten_ms_off_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[12]~43_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(12));

-- Location: LCFF_X33_Y13_N13
\i_key_ctrl|ten_ms_off_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[15]~50_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(15));

-- Location: LCFF_X37_Y13_N1
\i_key_ctrl|ten_ms_down_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[9]~37_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(9));

-- Location: LCFF_X37_Y13_N3
\i_key_ctrl|ten_ms_down_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[10]~40_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(10));

-- Location: LCFF_X37_Y13_N5
\i_key_ctrl|ten_ms_down_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[11]~42_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(11));

-- Location: LCFF_X37_Y13_N7
\i_key_ctrl|ten_ms_down_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[12]~44_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(12));

-- Location: LCFF_X37_Y14_N25
\i_key_ctrl|ten_ms_down_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[5]~29_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(5));

-- Location: LCFF_X37_Y14_N27
\i_key_ctrl|ten_ms_down_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[6]~31_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(6));

-- Location: LCFF_X37_Y14_N29
\i_key_ctrl|ten_ms_down_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[7]~33_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(7));

-- Location: LCFF_X37_Y14_N31
\i_key_ctrl|ten_ms_down_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[8]~35_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(8));

-- Location: LCFF_X37_Y13_N11
\i_key_ctrl|ten_ms_down_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[14]~48_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(14));

-- Location: LCFF_X37_Y13_N9
\i_key_ctrl|ten_ms_down_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[13]~46_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(13));

-- Location: LCFF_X37_Y13_N13
\i_key_ctrl|ten_ms_down_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[15]~50_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(15));

-- Location: LCFF_X37_Y13_N15
\i_key_ctrl|ten_ms_down_cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[16]~52_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(16));

-- Location: LCFF_X37_Y13_N17
\i_key_ctrl|ten_ms_down_cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[17]~54_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(17));

-- Location: LCFF_X37_Y13_N19
\i_key_ctrl|ten_ms_down_cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[18]~56_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(18));

-- Location: LCFF_X35_Y13_N13
\i_key_ctrl|ten_ms_on_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[15]~50_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(15));

-- Location: LCFF_X35_Y13_N7
\i_key_ctrl|ten_ms_on_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[12]~43_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(12));

-- Location: LCFF_X36_Y14_N23
\i_key_ctrl|ten_ms_up_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[4]~27_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(4));

-- Location: LCFF_X36_Y14_N21
\i_key_ctrl|ten_ms_up_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[3]~25_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(3));

-- Location: LCFF_X36_Y14_N19
\i_key_ctrl|ten_ms_up_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[2]~23_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(2));

-- Location: LCFF_X36_Y14_N17
\i_key_ctrl|ten_ms_up_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[1]~21_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(1));

-- Location: LCFF_X36_Y14_N15
\i_key_ctrl|ten_ms_up_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[0]~19_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(0));

-- Location: LCCOMB_X36_Y14_N14
\i_key_ctrl|ten_ms_up_cnt[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[0]~19_combout\ = \i_key_ctrl|ten_ms_up_cnt\(0) $ (VCC)
-- \i_key_ctrl|ten_ms_up_cnt[0]~20\ = CARRY(\i_key_ctrl|ten_ms_up_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(0),
	datad => VCC,
	combout => \i_key_ctrl|ten_ms_up_cnt[0]~19_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[0]~20\);

-- Location: LCCOMB_X36_Y14_N16
\i_key_ctrl|ten_ms_up_cnt[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[1]~21_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(1) & (!\i_key_ctrl|ten_ms_up_cnt[0]~20\)) # (!\i_key_ctrl|ten_ms_up_cnt\(1) & ((\i_key_ctrl|ten_ms_up_cnt[0]~20\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[1]~22\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[0]~20\) # (!\i_key_ctrl|ten_ms_up_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(1),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[0]~20\,
	combout => \i_key_ctrl|ten_ms_up_cnt[1]~21_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[1]~22\);

-- Location: LCCOMB_X36_Y14_N18
\i_key_ctrl|ten_ms_up_cnt[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[2]~23_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(2) & (\i_key_ctrl|ten_ms_up_cnt[1]~22\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(2) & (!\i_key_ctrl|ten_ms_up_cnt[1]~22\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[2]~24\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(2) & !\i_key_ctrl|ten_ms_up_cnt[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(2),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[1]~22\,
	combout => \i_key_ctrl|ten_ms_up_cnt[2]~23_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[2]~24\);

-- Location: LCCOMB_X36_Y14_N20
\i_key_ctrl|ten_ms_up_cnt[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[3]~25_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(3) & (!\i_key_ctrl|ten_ms_up_cnt[2]~24\)) # (!\i_key_ctrl|ten_ms_up_cnt\(3) & ((\i_key_ctrl|ten_ms_up_cnt[2]~24\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[3]~26\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[2]~24\) # (!\i_key_ctrl|ten_ms_up_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(3),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[2]~24\,
	combout => \i_key_ctrl|ten_ms_up_cnt[3]~25_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[3]~26\);

-- Location: LCCOMB_X36_Y14_N22
\i_key_ctrl|ten_ms_up_cnt[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[4]~27_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(4) & (\i_key_ctrl|ten_ms_up_cnt[3]~26\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(4) & (!\i_key_ctrl|ten_ms_up_cnt[3]~26\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[4]~28\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(4) & !\i_key_ctrl|ten_ms_up_cnt[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(4),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[3]~26\,
	combout => \i_key_ctrl|ten_ms_up_cnt[4]~27_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[4]~28\);

-- Location: LCCOMB_X36_Y14_N24
\i_key_ctrl|ten_ms_up_cnt[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[5]~29_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(5) & (!\i_key_ctrl|ten_ms_up_cnt[4]~28\)) # (!\i_key_ctrl|ten_ms_up_cnt\(5) & ((\i_key_ctrl|ten_ms_up_cnt[4]~28\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[5]~30\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[4]~28\) # (!\i_key_ctrl|ten_ms_up_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(5),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[4]~28\,
	combout => \i_key_ctrl|ten_ms_up_cnt[5]~29_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[5]~30\);

-- Location: LCCOMB_X36_Y14_N26
\i_key_ctrl|ten_ms_up_cnt[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[6]~31_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(6) & (\i_key_ctrl|ten_ms_up_cnt[5]~30\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(6) & (!\i_key_ctrl|ten_ms_up_cnt[5]~30\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[6]~32\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(6) & !\i_key_ctrl|ten_ms_up_cnt[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(6),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[5]~30\,
	combout => \i_key_ctrl|ten_ms_up_cnt[6]~31_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[6]~32\);

-- Location: LCCOMB_X36_Y14_N28
\i_key_ctrl|ten_ms_up_cnt[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[7]~33_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(7) & (!\i_key_ctrl|ten_ms_up_cnt[6]~32\)) # (!\i_key_ctrl|ten_ms_up_cnt\(7) & ((\i_key_ctrl|ten_ms_up_cnt[6]~32\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[7]~34\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[6]~32\) # (!\i_key_ctrl|ten_ms_up_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(7),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[6]~32\,
	combout => \i_key_ctrl|ten_ms_up_cnt[7]~33_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[7]~34\);

-- Location: LCCOMB_X36_Y14_N30
\i_key_ctrl|ten_ms_up_cnt[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[8]~35_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(8) & (\i_key_ctrl|ten_ms_up_cnt[7]~34\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(8) & (!\i_key_ctrl|ten_ms_up_cnt[7]~34\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[8]~36\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(8) & !\i_key_ctrl|ten_ms_up_cnt[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(8),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[7]~34\,
	combout => \i_key_ctrl|ten_ms_up_cnt[8]~35_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[8]~36\);

-- Location: LCCOMB_X36_Y13_N0
\i_key_ctrl|ten_ms_up_cnt[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[9]~37_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(9) & (!\i_key_ctrl|ten_ms_up_cnt[8]~36\)) # (!\i_key_ctrl|ten_ms_up_cnt\(9) & ((\i_key_ctrl|ten_ms_up_cnt[8]~36\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[9]~38\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[8]~36\) # (!\i_key_ctrl|ten_ms_up_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(9),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[8]~36\,
	combout => \i_key_ctrl|ten_ms_up_cnt[9]~37_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[9]~38\);

-- Location: LCCOMB_X36_Y13_N2
\i_key_ctrl|ten_ms_up_cnt[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[10]~40_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(10) & (\i_key_ctrl|ten_ms_up_cnt[9]~38\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(10) & (!\i_key_ctrl|ten_ms_up_cnt[9]~38\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[10]~41\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(10) & !\i_key_ctrl|ten_ms_up_cnt[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(10),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[9]~38\,
	combout => \i_key_ctrl|ten_ms_up_cnt[10]~40_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[10]~41\);

-- Location: LCCOMB_X36_Y13_N4
\i_key_ctrl|ten_ms_up_cnt[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[11]~42_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(11) & (!\i_key_ctrl|ten_ms_up_cnt[10]~41\)) # (!\i_key_ctrl|ten_ms_up_cnt\(11) & ((\i_key_ctrl|ten_ms_up_cnt[10]~41\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[11]~43\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[10]~41\) # (!\i_key_ctrl|ten_ms_up_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(11),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[10]~41\,
	combout => \i_key_ctrl|ten_ms_up_cnt[11]~42_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[11]~43\);

-- Location: LCCOMB_X36_Y13_N6
\i_key_ctrl|ten_ms_up_cnt[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[12]~44_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(12) & (\i_key_ctrl|ten_ms_up_cnt[11]~43\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(12) & (!\i_key_ctrl|ten_ms_up_cnt[11]~43\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[12]~45\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(12) & !\i_key_ctrl|ten_ms_up_cnt[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(12),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[11]~43\,
	combout => \i_key_ctrl|ten_ms_up_cnt[12]~44_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[12]~45\);

-- Location: LCCOMB_X36_Y13_N8
\i_key_ctrl|ten_ms_up_cnt[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[13]~46_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(13) & (!\i_key_ctrl|ten_ms_up_cnt[12]~45\)) # (!\i_key_ctrl|ten_ms_up_cnt\(13) & ((\i_key_ctrl|ten_ms_up_cnt[12]~45\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[13]~47\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[12]~45\) # (!\i_key_ctrl|ten_ms_up_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(13),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[12]~45\,
	combout => \i_key_ctrl|ten_ms_up_cnt[13]~46_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[13]~47\);

-- Location: LCCOMB_X36_Y13_N10
\i_key_ctrl|ten_ms_up_cnt[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[14]~48_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(14) & (\i_key_ctrl|ten_ms_up_cnt[13]~47\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(14) & (!\i_key_ctrl|ten_ms_up_cnt[13]~47\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[14]~49\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(14) & !\i_key_ctrl|ten_ms_up_cnt[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(14),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[13]~47\,
	combout => \i_key_ctrl|ten_ms_up_cnt[14]~48_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[14]~49\);

-- Location: LCCOMB_X36_Y13_N12
\i_key_ctrl|ten_ms_up_cnt[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[15]~50_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(15) & (!\i_key_ctrl|ten_ms_up_cnt[14]~49\)) # (!\i_key_ctrl|ten_ms_up_cnt\(15) & ((\i_key_ctrl|ten_ms_up_cnt[14]~49\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[15]~51\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[14]~49\) # (!\i_key_ctrl|ten_ms_up_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(15),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[14]~49\,
	combout => \i_key_ctrl|ten_ms_up_cnt[15]~50_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[15]~51\);

-- Location: LCCOMB_X36_Y13_N14
\i_key_ctrl|ten_ms_up_cnt[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[16]~52_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(16) & (\i_key_ctrl|ten_ms_up_cnt[15]~51\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(16) & (!\i_key_ctrl|ten_ms_up_cnt[15]~51\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[16]~53\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(16) & !\i_key_ctrl|ten_ms_up_cnt[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(16),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[15]~51\,
	combout => \i_key_ctrl|ten_ms_up_cnt[16]~52_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[16]~53\);

-- Location: LCCOMB_X36_Y13_N16
\i_key_ctrl|ten_ms_up_cnt[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[17]~54_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(17) & (!\i_key_ctrl|ten_ms_up_cnt[16]~53\)) # (!\i_key_ctrl|ten_ms_up_cnt\(17) & ((\i_key_ctrl|ten_ms_up_cnt[16]~53\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[17]~55\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[16]~53\) # (!\i_key_ctrl|ten_ms_up_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(17),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[16]~53\,
	combout => \i_key_ctrl|ten_ms_up_cnt[17]~54_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[17]~55\);

-- Location: LCCOMB_X36_Y13_N18
\i_key_ctrl|ten_ms_up_cnt[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[18]~56_combout\ = \i_key_ctrl|ten_ms_up_cnt[17]~55\ $ (!\i_key_ctrl|ten_ms_up_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|ten_ms_up_cnt\(18),
	cin => \i_key_ctrl|ten_ms_up_cnt[17]~55\,
	combout => \i_key_ctrl|ten_ms_up_cnt[18]~56_combout\);

-- Location: LCFF_X37_Y14_N15
\i_key_ctrl|ten_ms_down_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[0]~19_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(0));

-- Location: LCFF_X37_Y14_N17
\i_key_ctrl|ten_ms_down_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[1]~21_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(1));

-- Location: LCFF_X37_Y14_N19
\i_key_ctrl|ten_ms_down_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[2]~23_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(2));

-- Location: LCFF_X37_Y14_N21
\i_key_ctrl|ten_ms_down_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[3]~25_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(3));

-- Location: LCFF_X37_Y14_N23
\i_key_ctrl|ten_ms_down_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[4]~27_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(4));

-- Location: LCFF_X35_Y14_N17
\i_key_ctrl|ten_ms_on_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[1]~21_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(1));

-- Location: LCFF_X35_Y14_N21
\i_key_ctrl|ten_ms_on_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[3]~25_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(3));

-- Location: LCFF_X33_Y14_N17
\i_key_ctrl|ten_ms_off_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[1]~21_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(1));

-- Location: LCFF_X33_Y14_N21
\i_key_ctrl|ten_ms_off_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[3]~25_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(3));

-- Location: LCCOMB_X33_Y14_N16
\i_key_ctrl|ten_ms_off_cnt[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[1]~21_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(1) & (!\i_key_ctrl|ten_ms_off_cnt[0]~20\)) # (!\i_key_ctrl|ten_ms_off_cnt\(1) & ((\i_key_ctrl|ten_ms_off_cnt[0]~20\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[1]~22\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[0]~20\) # (!\i_key_ctrl|ten_ms_off_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(1),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[0]~20\,
	combout => \i_key_ctrl|ten_ms_off_cnt[1]~21_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[1]~22\);

-- Location: LCCOMB_X33_Y14_N20
\i_key_ctrl|ten_ms_off_cnt[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[3]~25_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(3) & (!\i_key_ctrl|ten_ms_off_cnt[2]~24\)) # (!\i_key_ctrl|ten_ms_off_cnt\(3) & ((\i_key_ctrl|ten_ms_off_cnt[2]~24\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[3]~26\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[2]~24\) # (!\i_key_ctrl|ten_ms_off_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(3),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[2]~24\,
	combout => \i_key_ctrl|ten_ms_off_cnt[3]~25_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[3]~26\);

-- Location: LCCOMB_X33_Y13_N6
\i_key_ctrl|ten_ms_off_cnt[12]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[12]~43_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(12) & (\i_key_ctrl|ten_ms_off_cnt[11]~42\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(12) & (!\i_key_ctrl|ten_ms_off_cnt[11]~42\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[12]~44\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(12) & !\i_key_ctrl|ten_ms_off_cnt[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(12),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[11]~42\,
	combout => \i_key_ctrl|ten_ms_off_cnt[12]~43_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[12]~44\);

-- Location: LCCOMB_X33_Y13_N10
\i_key_ctrl|ten_ms_off_cnt[14]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[14]~47_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(14) & (\i_key_ctrl|ten_ms_off_cnt[13]~46\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(14) & (!\i_key_ctrl|ten_ms_off_cnt[13]~46\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[14]~48\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(14) & !\i_key_ctrl|ten_ms_off_cnt[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(14),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[13]~46\,
	combout => \i_key_ctrl|ten_ms_off_cnt[14]~47_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[14]~48\);

-- Location: LCCOMB_X33_Y13_N12
\i_key_ctrl|ten_ms_off_cnt[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[15]~50_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(15) & (!\i_key_ctrl|ten_ms_off_cnt[14]~48\)) # (!\i_key_ctrl|ten_ms_off_cnt\(15) & ((\i_key_ctrl|ten_ms_off_cnt[14]~48\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[15]~51\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[14]~48\) # (!\i_key_ctrl|ten_ms_off_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(15),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[14]~48\,
	combout => \i_key_ctrl|ten_ms_off_cnt[15]~50_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[15]~51\);

-- Location: LCCOMB_X37_Y14_N14
\i_key_ctrl|ten_ms_down_cnt[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[0]~19_combout\ = \i_key_ctrl|ten_ms_down_cnt\(0) $ (VCC)
-- \i_key_ctrl|ten_ms_down_cnt[0]~20\ = CARRY(\i_key_ctrl|ten_ms_down_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(0),
	datad => VCC,
	combout => \i_key_ctrl|ten_ms_down_cnt[0]~19_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[0]~20\);

-- Location: LCCOMB_X37_Y14_N16
\i_key_ctrl|ten_ms_down_cnt[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[1]~21_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(1) & (!\i_key_ctrl|ten_ms_down_cnt[0]~20\)) # (!\i_key_ctrl|ten_ms_down_cnt\(1) & ((\i_key_ctrl|ten_ms_down_cnt[0]~20\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[1]~22\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[0]~20\) # (!\i_key_ctrl|ten_ms_down_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(1),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[0]~20\,
	combout => \i_key_ctrl|ten_ms_down_cnt[1]~21_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[1]~22\);

-- Location: LCCOMB_X37_Y14_N18
\i_key_ctrl|ten_ms_down_cnt[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[2]~23_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(2) & (\i_key_ctrl|ten_ms_down_cnt[1]~22\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(2) & (!\i_key_ctrl|ten_ms_down_cnt[1]~22\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[2]~24\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(2) & !\i_key_ctrl|ten_ms_down_cnt[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(2),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[1]~22\,
	combout => \i_key_ctrl|ten_ms_down_cnt[2]~23_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[2]~24\);

-- Location: LCCOMB_X37_Y14_N20
\i_key_ctrl|ten_ms_down_cnt[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[3]~25_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(3) & (!\i_key_ctrl|ten_ms_down_cnt[2]~24\)) # (!\i_key_ctrl|ten_ms_down_cnt\(3) & ((\i_key_ctrl|ten_ms_down_cnt[2]~24\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[3]~26\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[2]~24\) # (!\i_key_ctrl|ten_ms_down_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(3),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[2]~24\,
	combout => \i_key_ctrl|ten_ms_down_cnt[3]~25_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[3]~26\);

-- Location: LCCOMB_X37_Y14_N22
\i_key_ctrl|ten_ms_down_cnt[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[4]~27_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(4) & (\i_key_ctrl|ten_ms_down_cnt[3]~26\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(4) & (!\i_key_ctrl|ten_ms_down_cnt[3]~26\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[4]~28\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(4) & !\i_key_ctrl|ten_ms_down_cnt[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(4),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[3]~26\,
	combout => \i_key_ctrl|ten_ms_down_cnt[4]~27_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[4]~28\);

-- Location: LCCOMB_X37_Y14_N24
\i_key_ctrl|ten_ms_down_cnt[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[5]~29_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(5) & (!\i_key_ctrl|ten_ms_down_cnt[4]~28\)) # (!\i_key_ctrl|ten_ms_down_cnt\(5) & ((\i_key_ctrl|ten_ms_down_cnt[4]~28\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[5]~30\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[4]~28\) # (!\i_key_ctrl|ten_ms_down_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(5),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[4]~28\,
	combout => \i_key_ctrl|ten_ms_down_cnt[5]~29_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[5]~30\);

-- Location: LCCOMB_X37_Y14_N26
\i_key_ctrl|ten_ms_down_cnt[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[6]~31_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(6) & (\i_key_ctrl|ten_ms_down_cnt[5]~30\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(6) & (!\i_key_ctrl|ten_ms_down_cnt[5]~30\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[6]~32\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(6) & !\i_key_ctrl|ten_ms_down_cnt[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(6),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[5]~30\,
	combout => \i_key_ctrl|ten_ms_down_cnt[6]~31_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[6]~32\);

-- Location: LCCOMB_X37_Y14_N28
\i_key_ctrl|ten_ms_down_cnt[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[7]~33_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(7) & (!\i_key_ctrl|ten_ms_down_cnt[6]~32\)) # (!\i_key_ctrl|ten_ms_down_cnt\(7) & ((\i_key_ctrl|ten_ms_down_cnt[6]~32\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[7]~34\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[6]~32\) # (!\i_key_ctrl|ten_ms_down_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(7),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[6]~32\,
	combout => \i_key_ctrl|ten_ms_down_cnt[7]~33_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[7]~34\);

-- Location: LCCOMB_X37_Y14_N30
\i_key_ctrl|ten_ms_down_cnt[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[8]~35_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(8) & (\i_key_ctrl|ten_ms_down_cnt[7]~34\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(8) & (!\i_key_ctrl|ten_ms_down_cnt[7]~34\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[8]~36\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(8) & !\i_key_ctrl|ten_ms_down_cnt[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(8),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[7]~34\,
	combout => \i_key_ctrl|ten_ms_down_cnt[8]~35_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[8]~36\);

-- Location: LCCOMB_X37_Y13_N0
\i_key_ctrl|ten_ms_down_cnt[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[9]~37_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(9) & (!\i_key_ctrl|ten_ms_down_cnt[8]~36\)) # (!\i_key_ctrl|ten_ms_down_cnt\(9) & ((\i_key_ctrl|ten_ms_down_cnt[8]~36\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[9]~38\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[8]~36\) # (!\i_key_ctrl|ten_ms_down_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(9),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[8]~36\,
	combout => \i_key_ctrl|ten_ms_down_cnt[9]~37_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[9]~38\);

-- Location: LCCOMB_X37_Y13_N2
\i_key_ctrl|ten_ms_down_cnt[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[10]~40_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(10) & (\i_key_ctrl|ten_ms_down_cnt[9]~38\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(10) & (!\i_key_ctrl|ten_ms_down_cnt[9]~38\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[10]~41\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(10) & !\i_key_ctrl|ten_ms_down_cnt[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(10),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[9]~38\,
	combout => \i_key_ctrl|ten_ms_down_cnt[10]~40_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[10]~41\);

-- Location: LCCOMB_X37_Y13_N4
\i_key_ctrl|ten_ms_down_cnt[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[11]~42_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(11) & (!\i_key_ctrl|ten_ms_down_cnt[10]~41\)) # (!\i_key_ctrl|ten_ms_down_cnt\(11) & ((\i_key_ctrl|ten_ms_down_cnt[10]~41\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[11]~43\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[10]~41\) # (!\i_key_ctrl|ten_ms_down_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(11),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[10]~41\,
	combout => \i_key_ctrl|ten_ms_down_cnt[11]~42_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[11]~43\);

-- Location: LCCOMB_X37_Y13_N6
\i_key_ctrl|ten_ms_down_cnt[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[12]~44_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(12) & (\i_key_ctrl|ten_ms_down_cnt[11]~43\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(12) & (!\i_key_ctrl|ten_ms_down_cnt[11]~43\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[12]~45\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(12) & !\i_key_ctrl|ten_ms_down_cnt[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(12),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[11]~43\,
	combout => \i_key_ctrl|ten_ms_down_cnt[12]~44_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[12]~45\);

-- Location: LCCOMB_X37_Y13_N8
\i_key_ctrl|ten_ms_down_cnt[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[13]~46_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(13) & (!\i_key_ctrl|ten_ms_down_cnt[12]~45\)) # (!\i_key_ctrl|ten_ms_down_cnt\(13) & ((\i_key_ctrl|ten_ms_down_cnt[12]~45\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[13]~47\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[12]~45\) # (!\i_key_ctrl|ten_ms_down_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(13),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[12]~45\,
	combout => \i_key_ctrl|ten_ms_down_cnt[13]~46_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[13]~47\);

-- Location: LCCOMB_X37_Y13_N10
\i_key_ctrl|ten_ms_down_cnt[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[14]~48_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(14) & (\i_key_ctrl|ten_ms_down_cnt[13]~47\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(14) & (!\i_key_ctrl|ten_ms_down_cnt[13]~47\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[14]~49\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(14) & !\i_key_ctrl|ten_ms_down_cnt[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(14),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[13]~47\,
	combout => \i_key_ctrl|ten_ms_down_cnt[14]~48_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[14]~49\);

-- Location: LCCOMB_X37_Y13_N12
\i_key_ctrl|ten_ms_down_cnt[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[15]~50_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(15) & (!\i_key_ctrl|ten_ms_down_cnt[14]~49\)) # (!\i_key_ctrl|ten_ms_down_cnt\(15) & ((\i_key_ctrl|ten_ms_down_cnt[14]~49\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[15]~51\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[14]~49\) # (!\i_key_ctrl|ten_ms_down_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(15),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[14]~49\,
	combout => \i_key_ctrl|ten_ms_down_cnt[15]~50_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[15]~51\);

-- Location: LCCOMB_X37_Y13_N14
\i_key_ctrl|ten_ms_down_cnt[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[16]~52_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(16) & (\i_key_ctrl|ten_ms_down_cnt[15]~51\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(16) & (!\i_key_ctrl|ten_ms_down_cnt[15]~51\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[16]~53\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(16) & !\i_key_ctrl|ten_ms_down_cnt[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(16),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[15]~51\,
	combout => \i_key_ctrl|ten_ms_down_cnt[16]~52_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[16]~53\);

-- Location: LCCOMB_X37_Y13_N16
\i_key_ctrl|ten_ms_down_cnt[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[17]~54_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(17) & (!\i_key_ctrl|ten_ms_down_cnt[16]~53\)) # (!\i_key_ctrl|ten_ms_down_cnt\(17) & ((\i_key_ctrl|ten_ms_down_cnt[16]~53\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[17]~55\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[16]~53\) # (!\i_key_ctrl|ten_ms_down_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(17),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[16]~53\,
	combout => \i_key_ctrl|ten_ms_down_cnt[17]~54_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[17]~55\);

-- Location: LCCOMB_X37_Y13_N18
\i_key_ctrl|ten_ms_down_cnt[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[18]~56_combout\ = \i_key_ctrl|ten_ms_down_cnt[17]~55\ $ (!\i_key_ctrl|ten_ms_down_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|ten_ms_down_cnt\(18),
	cin => \i_key_ctrl|ten_ms_down_cnt[17]~55\,
	combout => \i_key_ctrl|ten_ms_down_cnt[18]~56_combout\);

-- Location: LCCOMB_X35_Y14_N16
\i_key_ctrl|ten_ms_on_cnt[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[1]~21_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(1) & (!\i_key_ctrl|ten_ms_on_cnt[0]~20\)) # (!\i_key_ctrl|ten_ms_on_cnt\(1) & ((\i_key_ctrl|ten_ms_on_cnt[0]~20\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[1]~22\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[0]~20\) # (!\i_key_ctrl|ten_ms_on_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(1),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[0]~20\,
	combout => \i_key_ctrl|ten_ms_on_cnt[1]~21_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[1]~22\);

-- Location: LCCOMB_X35_Y14_N20
\i_key_ctrl|ten_ms_on_cnt[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[3]~25_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(3) & (!\i_key_ctrl|ten_ms_on_cnt[2]~24\)) # (!\i_key_ctrl|ten_ms_on_cnt\(3) & ((\i_key_ctrl|ten_ms_on_cnt[2]~24\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[3]~26\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[2]~24\) # (!\i_key_ctrl|ten_ms_on_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(3),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[2]~24\,
	combout => \i_key_ctrl|ten_ms_on_cnt[3]~25_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[3]~26\);

-- Location: LCCOMB_X35_Y13_N6
\i_key_ctrl|ten_ms_on_cnt[12]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[12]~43_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(12) & (\i_key_ctrl|ten_ms_on_cnt[11]~42\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(12) & (!\i_key_ctrl|ten_ms_on_cnt[11]~42\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[12]~44\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(12) & !\i_key_ctrl|ten_ms_on_cnt[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(12),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[11]~42\,
	combout => \i_key_ctrl|ten_ms_on_cnt[12]~43_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[12]~44\);

-- Location: LCCOMB_X35_Y13_N12
\i_key_ctrl|ten_ms_on_cnt[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[15]~50_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(15) & (!\i_key_ctrl|ten_ms_on_cnt[14]~48\)) # (!\i_key_ctrl|ten_ms_on_cnt\(15) & ((\i_key_ctrl|ten_ms_on_cnt[14]~48\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[15]~51\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[14]~48\) # (!\i_key_ctrl|ten_ms_on_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(15),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[14]~48\,
	combout => \i_key_ctrl|ten_ms_on_cnt[15]~50_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[15]~51\);

-- Location: LCCOMB_X9_Y22_N4
\i_dc_disp_ctrl|seven_seg_vector2[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|seven_seg_vector2[2]~3_combout\ = (!\i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\ & !\i_dc_disp_ctrl|send_data_state.s_send_tens~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\,
	datac => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\,
	combout => \i_dc_disp_ctrl|seven_seg_vector2[2]~3_combout\);

-- Location: LCFF_X11_Y22_N7
\i_serial_uart|tx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(2));

-- Location: LCCOMB_X11_Y22_N30
\i_serial_uart|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector28~0_combout\ = (\i_serial_uart|tx_bit_no\(2) & (\i_serial_uart|tx_bit_no\(1) & (\i_serial_uart|tx_bit_no\(0) & \i_serial_uart|tx_bit_cnt_wrap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no\(2),
	datab => \i_serial_uart|tx_bit_no\(1),
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector28~0_combout\);

-- Location: LCCOMB_X1_Y8_N6
\b_gen_pll:i_reset_ctrl|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|LessThan0~3_combout\ = ((!\b_gen_pll:i_reset_ctrl|reset_cnt\(4)) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(5))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b_gen_pll:i_reset_ctrl|reset_cnt\(6),
	datac => \b_gen_pll:i_reset_ctrl|reset_cnt\(5),
	datad => \b_gen_pll:i_reset_ctrl|reset_cnt\(4),
	combout => \b_gen_pll:i_reset_ctrl|LessThan0~3_combout\);

-- Location: LCFF_X19_Y23_N17
\i_pwm_ctrl|previous_dc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|previous_dc[2]~4_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|previous_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|previous_dc\(2));

-- Location: LCFF_X19_Y23_N13
\i_pwm_ctrl|previous_dc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|previous_dc[6]~5_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|previous_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|previous_dc\(6));

-- Location: LCFF_X9_Y22_N13
\i_dc_disp_ctrl|send_data_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|Selector0~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|send_data_state.s_idle~regout\);

-- Location: LCFF_X33_Y22_N13
\i_serial_uart|rx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(1));

-- Location: LCCOMB_X29_Y23_N30
\i_pwm_ctrl|dc_cnt[2]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~42_combout\ = ((\i_pwm_ctrl|Equal0~2_combout\) # (!\i_pwm_ctrl|pwm_state.s_up~regout\)) # (!\i_dc_disp_ctrl|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|LessThan0~1_combout\,
	datab => \i_pwm_ctrl|Equal0~2_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|dc_cnt[2]~42_combout\);

-- Location: LCCOMB_X31_Y23_N30
\i_pwm_ctrl|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal1~0_combout\ = (!\i_pwm_ctrl|dc_cnt\(7) & (!\i_pwm_ctrl|dc_cnt\(3) & (!\i_pwm_ctrl|dc_cnt\(2) & !\i_pwm_ctrl|dc_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(7),
	datab => \i_pwm_ctrl|dc_cnt\(3),
	datac => \i_pwm_ctrl|dc_cnt\(2),
	datad => \i_pwm_ctrl|dc_cnt\(5),
	combout => \i_pwm_ctrl|Equal1~0_combout\);

-- Location: LCCOMB_X11_Y22_N6
\i_serial_uart|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector31~0_combout\ = (\i_serial_uart|Selector29~0_combout\) # ((\i_serial_uart|tx_bit_no\(2) & ((\i_serial_uart|tx_state.s_tx_data~regout\) # (\i_serial_uart|tx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_tx_data~regout\,
	datab => \i_serial_uart|Selector29~0_combout\,
	datac => \i_serial_uart|tx_bit_no\(2),
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector31~0_combout\);

-- Location: LCFF_X10_Y22_N7
\i_serial_uart|tx_byte_saved[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector22~0_combout\,
	ena => \i_serial_uart|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_byte_saved\(2));

-- Location: LCCOMB_X7_Y22_N6
\i_dc_disp_ctrl|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux14~0_combout\ = (\i_dc_disp_ctrl|bcd_1_in\(0) & (((!\i_dc_disp_ctrl|bcd_1_in\(2) & !\i_dc_disp_ctrl|bcd_1_in\(1))) # (!\i_dc_disp_ctrl|bcd_1_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_1_in\(2),
	datab => \i_dc_disp_ctrl|bcd_1_in\(1),
	datac => \i_dc_disp_ctrl|bcd_1_in\(3),
	datad => \i_dc_disp_ctrl|bcd_1_in\(0),
	combout => \i_dc_disp_ctrl|Mux14~0_combout\);

-- Location: LCFF_X34_Y14_N17
\i_key_ctrl|key_down_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_down_out~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_down_out~regout\);

-- Location: LCCOMB_X30_Y22_N12
\i_pwm_ctrl|pwm_state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~17_combout\ = (\i_key_ctrl|key_down_out~regout\) # ((\i_key_ctrl|key_off_out~regout\) # ((\i_pwm_ctrl|pwm_state~15_combout\) # (\i_key_ctrl|key_up_out~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_down_out~regout\,
	datab => \i_key_ctrl|key_off_out~regout\,
	datac => \i_pwm_ctrl|pwm_state~15_combout\,
	datad => \i_key_ctrl|key_up_out~regout\,
	combout => \i_pwm_ctrl|pwm_state~17_combout\);

-- Location: LCCOMB_X19_Y23_N24
\i_pwm_ctrl|previous_dc[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|previous_dc[6]~0_combout\ = (\i_pwm_ctrl|pwm_state.s_on~regout\ & ((\i_pwm_ctrl|previous_dc\(7)) # ((\i_pwm_ctrl|LessThan2~1_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_on~regout\ & (((\i_dc_disp_ctrl|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_on~regout\,
	datab => \i_pwm_ctrl|previous_dc\(7),
	datac => \i_dc_disp_ctrl|LessThan0~1_combout\,
	datad => \i_pwm_ctrl|LessThan2~1_combout\,
	combout => \i_pwm_ctrl|previous_dc[6]~0_combout\);

-- Location: LCCOMB_X19_Y23_N6
\i_pwm_ctrl|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector9~1_combout\ = (\i_pwm_ctrl|new_dc\(7) & ((\i_pwm_ctrl|pwm_state.s_down~regout\) # ((\i_pwm_ctrl|pwm_state.s_on~regout\ & !\i_pwm_ctrl|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_on~regout\,
	datab => \i_pwm_ctrl|LessThan2~1_combout\,
	datac => \i_pwm_ctrl|new_dc\(7),
	datad => \i_pwm_ctrl|pwm_state.s_down~regout\,
	combout => \i_pwm_ctrl|Selector9~1_combout\);

-- Location: LCCOMB_X30_Y22_N28
\i_pwm_ctrl|pwm_state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~22_combout\ = (\i_pwm_ctrl|pwm_state~17_combout\ & ((\i_key_ctrl|key_off_out~regout\) # ((\i_key_ctrl|key_on_out~regout\)))) # (!\i_pwm_ctrl|pwm_state~17_combout\ & (((\i_serial_ctrl|serial_on_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state~17_combout\,
	datab => \i_key_ctrl|key_off_out~regout\,
	datac => \i_serial_ctrl|serial_on_out~regout\,
	datad => \i_key_ctrl|key_on_out~regout\,
	combout => \i_pwm_ctrl|pwm_state~22_combout\);

-- Location: LCCOMB_X30_Y22_N6
\i_pwm_ctrl|pwm_state~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~23_combout\ = (!\i_pwm_ctrl|pwm_state~16_combout\ & (!\i_pwm_ctrl|pwm_state~22_combout\ & ((\i_pwm_ctrl|pwm_state~17_combout\) # (!\i_serial_ctrl|serial_off_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state~17_combout\,
	datab => \i_serial_ctrl|serial_off_out~regout\,
	datac => \i_pwm_ctrl|pwm_state~16_combout\,
	datad => \i_pwm_ctrl|pwm_state~22_combout\,
	combout => \i_pwm_ctrl|pwm_state~23_combout\);

-- Location: LCCOMB_X9_Y22_N12
\i_dc_disp_ctrl|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector0~0_combout\ = (!\i_dc_disp_ctrl|send_data_state.s_send_cr~regout\ & ((\i_dc_disp_ctrl|send_data_state.s_idle~regout\) # (\i_pwm_ctrl|update_dc_now~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_ctrl|send_data_state.s_send_cr~regout\,
	datac => \i_dc_disp_ctrl|send_data_state.s_idle~regout\,
	datad => \i_pwm_ctrl|update_dc_now~regout\,
	combout => \i_dc_disp_ctrl|Selector0~0_combout\);

-- Location: LCCOMB_X33_Y22_N20
\i_serial_uart|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector2~0_combout\ = (\i_serial_uart|rx_bit_cnt_half~regout\ & !\i_serial_uart|rx_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt_half~regout\,
	datac => \i_serial_uart|rx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector2~0_combout\);

-- Location: LCCOMB_X33_Y22_N12
\i_serial_uart|Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~2_combout\ = (\i_serial_uart|rx_bit_no\(1) & ((\i_serial_uart|rx_state.s_stop_bit~regout\) # ((\i_serial_uart|rx_state.s_rx_data~regout\ & !\i_serial_uart|Selector13~3_combout\)))) # (!\i_serial_uart|rx_bit_no\(1) & 
-- (((\i_serial_uart|rx_state.s_rx_data~regout\ & \i_serial_uart|Selector13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_no\(1),
	datad => \i_serial_uart|Selector13~3_combout\,
	combout => \i_serial_uart|Selector13~2_combout\);

-- Location: LCFF_X10_Y22_N1
\i_serial_uart|tx_byte_saved[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector21~0_combout\,
	ena => \i_serial_uart|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_byte_saved\(3));

-- Location: LCFF_X7_Y22_N13
\i_dc_disp_ctrl|byte_vector[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|Selector11~3_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|byte_vector\(2));

-- Location: LCCOMB_X10_Y22_N6
\i_serial_uart|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector22~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_byte_saved\(3))) # (!\i_serial_uart|tx_state.s_tx_data~regout\ & ((\i_dc_disp_ctrl|byte_vector\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_byte_saved\(3),
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	datad => \i_dc_disp_ctrl|byte_vector\(2),
	combout => \i_serial_uart|Selector22~0_combout\);

-- Location: LCCOMB_X7_Y22_N2
\i_dc_disp_ctrl|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector12~0_combout\ = (\i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\ & (\i_dc_disp_ctrl|send_data_state.s_send_tens~regout\ & (\i_dc_disp_ctrl|bcd_1_in\(1) & !\i_dc_disp_ctrl|bcd_1_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	datab => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\,
	datac => \i_dc_disp_ctrl|bcd_1_in\(1),
	datad => \i_dc_disp_ctrl|bcd_1_in\(3),
	combout => \i_dc_disp_ctrl|Selector12~0_combout\);

-- Location: LCCOMB_X36_Y13_N28
\i_key_ctrl|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal3~0_combout\ = (!\i_key_ctrl|ten_ms_up_cnt\(12) & (!\i_key_ctrl|ten_ms_up_cnt\(9) & (!\i_key_ctrl|ten_ms_up_cnt\(11) & !\i_key_ctrl|ten_ms_up_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(12),
	datab => \i_key_ctrl|ten_ms_up_cnt\(9),
	datac => \i_key_ctrl|ten_ms_up_cnt\(11),
	datad => \i_key_ctrl|ten_ms_up_cnt\(10),
	combout => \i_key_ctrl|Equal3~0_combout\);

-- Location: LCCOMB_X36_Y14_N0
\i_key_ctrl|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal3~1_combout\ = (!\i_key_ctrl|ten_ms_up_cnt\(7) & (!\i_key_ctrl|ten_ms_up_cnt\(5) & !\i_key_ctrl|ten_ms_up_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(7),
	datac => \i_key_ctrl|ten_ms_up_cnt\(5),
	datad => \i_key_ctrl|ten_ms_up_cnt\(6),
	combout => \i_key_ctrl|Equal3~1_combout\);

-- Location: LCCOMB_X36_Y14_N2
\i_key_ctrl|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan3~0_combout\ = (!\i_key_ctrl|ten_ms_up_cnt\(14) & (\i_key_ctrl|Equal3~0_combout\ & ((\i_key_ctrl|Equal3~1_combout\) # (!\i_key_ctrl|ten_ms_up_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(14),
	datab => \i_key_ctrl|Equal3~1_combout\,
	datac => \i_key_ctrl|Equal3~0_combout\,
	datad => \i_key_ctrl|ten_ms_up_cnt\(8),
	combout => \i_key_ctrl|LessThan3~0_combout\);

-- Location: LCCOMB_X36_Y13_N22
\i_key_ctrl|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan3~1_combout\ = (((!\i_key_ctrl|ten_ms_up_cnt\(13) & !\i_key_ctrl|ten_ms_up_cnt\(14))) # (!\i_key_ctrl|ten_ms_up_cnt\(16))) # (!\i_key_ctrl|ten_ms_up_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(15),
	datab => \i_key_ctrl|ten_ms_up_cnt\(16),
	datac => \i_key_ctrl|ten_ms_up_cnt\(13),
	datad => \i_key_ctrl|ten_ms_up_cnt\(14),
	combout => \i_key_ctrl|LessThan3~1_combout\);

-- Location: LCCOMB_X36_Y13_N24
\i_key_ctrl|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan3~2_combout\ = (\i_key_ctrl|LessThan3~0_combout\) # ((\i_key_ctrl|LessThan3~1_combout\) # ((!\i_key_ctrl|ten_ms_up_cnt\(18)) # (!\i_key_ctrl|ten_ms_up_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|LessThan3~0_combout\,
	datab => \i_key_ctrl|LessThan3~1_combout\,
	datac => \i_key_ctrl|ten_ms_up_cnt\(17),
	datad => \i_key_ctrl|ten_ms_up_cnt\(18),
	combout => \i_key_ctrl|LessThan3~2_combout\);

-- Location: LCFF_X34_Y14_N21
\i_key_ctrl|key_in_states\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_in_states~5_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_in_states~regout\);

-- Location: LCCOMB_X33_Y13_N24
\i_key_ctrl|key_off_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_off_out~1_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(15) & (\i_key_ctrl|ten_ms_off_cnt\(16) & ((\i_key_ctrl|ten_ms_off_cnt\(13)) # (\i_key_ctrl|ten_ms_off_cnt\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(15),
	datab => \i_key_ctrl|ten_ms_off_cnt\(16),
	datac => \i_key_ctrl|ten_ms_off_cnt\(13),
	datad => \i_key_ctrl|ten_ms_off_cnt\(14),
	combout => \i_key_ctrl|key_off_out~1_combout\);

-- Location: LCCOMB_X37_Y13_N28
\i_key_ctrl|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal2~0_combout\ = (!\i_key_ctrl|ten_ms_down_cnt\(12) & (!\i_key_ctrl|ten_ms_down_cnt\(10) & (!\i_key_ctrl|ten_ms_down_cnt\(11) & !\i_key_ctrl|ten_ms_down_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(12),
	datab => \i_key_ctrl|ten_ms_down_cnt\(10),
	datac => \i_key_ctrl|ten_ms_down_cnt\(11),
	datad => \i_key_ctrl|ten_ms_down_cnt\(9),
	combout => \i_key_ctrl|Equal2~0_combout\);

-- Location: LCCOMB_X37_Y14_N0
\i_key_ctrl|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal2~1_combout\ = (!\i_key_ctrl|ten_ms_down_cnt\(7) & (!\i_key_ctrl|ten_ms_down_cnt\(5) & !\i_key_ctrl|ten_ms_down_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(7),
	datac => \i_key_ctrl|ten_ms_down_cnt\(5),
	datad => \i_key_ctrl|ten_ms_down_cnt\(6),
	combout => \i_key_ctrl|Equal2~1_combout\);

-- Location: LCCOMB_X37_Y14_N2
\i_key_ctrl|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan2~0_combout\ = (!\i_key_ctrl|ten_ms_down_cnt\(14) & (\i_key_ctrl|Equal2~0_combout\ & ((\i_key_ctrl|Equal2~1_combout\) # (!\i_key_ctrl|ten_ms_down_cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(8),
	datab => \i_key_ctrl|Equal2~1_combout\,
	datac => \i_key_ctrl|ten_ms_down_cnt\(14),
	datad => \i_key_ctrl|Equal2~0_combout\,
	combout => \i_key_ctrl|LessThan2~0_combout\);

-- Location: LCCOMB_X37_Y13_N22
\i_key_ctrl|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan2~1_combout\ = (((!\i_key_ctrl|ten_ms_down_cnt\(13) & !\i_key_ctrl|ten_ms_down_cnt\(14))) # (!\i_key_ctrl|ten_ms_down_cnt\(16))) # (!\i_key_ctrl|ten_ms_down_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(15),
	datab => \i_key_ctrl|ten_ms_down_cnt\(16),
	datac => \i_key_ctrl|ten_ms_down_cnt\(13),
	datad => \i_key_ctrl|ten_ms_down_cnt\(14),
	combout => \i_key_ctrl|LessThan2~1_combout\);

-- Location: LCCOMB_X37_Y13_N24
\i_key_ctrl|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan2~2_combout\ = (\i_key_ctrl|LessThan2~0_combout\) # ((\i_key_ctrl|LessThan2~1_combout\) # ((!\i_key_ctrl|ten_ms_down_cnt\(18)) # (!\i_key_ctrl|ten_ms_down_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|LessThan2~0_combout\,
	datab => \i_key_ctrl|LessThan2~1_combout\,
	datac => \i_key_ctrl|ten_ms_down_cnt\(17),
	datad => \i_key_ctrl|ten_ms_down_cnt\(18),
	combout => \i_key_ctrl|LessThan2~2_combout\);

-- Location: LCCOMB_X34_Y14_N10
\i_key_ctrl|key_down_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_down_out~0_combout\ = (\i_key_ctrl|key_in_states~regout\ & ((\i_key_ctrl|key_down_out~regout\) # ((\i_key_ctrl|key_up_2r~regout\ & \i_key_ctrl|key_off_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_in_states~regout\,
	datab => \i_key_ctrl|key_down_out~regout\,
	datac => \i_key_ctrl|key_up_2r~regout\,
	datad => \i_key_ctrl|key_off_2r~regout\,
	combout => \i_key_ctrl|key_down_out~0_combout\);

-- Location: LCCOMB_X34_Y14_N16
\i_key_ctrl|key_down_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_down_out~1_combout\ = (\i_key_ctrl|key_down_out~regout\ & (((\i_key_ctrl|key_down_out~0_combout\)))) # (!\i_key_ctrl|key_down_out~regout\ & (!\i_key_ctrl|key_down_2r~regout\ & ((\i_key_ctrl|key_down_out~0_combout\) # 
-- (!\i_key_ctrl|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_down_2r~regout\,
	datab => \i_key_ctrl|LessThan2~2_combout\,
	datac => \i_key_ctrl|key_down_out~regout\,
	datad => \i_key_ctrl|key_down_out~0_combout\,
	combout => \i_key_ctrl|key_down_out~1_combout\);

-- Location: LCFF_X31_Y22_N7
\i_serial_uart|received_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~5_combout\,
	ena => \i_serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(7));

-- Location: LCFF_X31_Y22_N3
\i_serial_uart|received_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~6_combout\,
	ena => \i_serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(6));

-- Location: LCFF_X31_Y22_N5
\i_serial_uart|received_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~7_combout\,
	ena => \i_serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(0));

-- Location: LCCOMB_X32_Y22_N22
\i_serial_uart|rx_bit_cnt_half~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~0_combout\ = (\i_serial_uart|rx_bit_cnt\(6) & ((\i_serial_uart|rx_bit_cnt\(5)) # ((\i_serial_uart|rx_bit_cnt\(4) & \i_serial_uart|rx_bit_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(4),
	datab => \i_serial_uart|rx_bit_cnt\(5),
	datac => \i_serial_uart|rx_bit_cnt\(6),
	datad => \i_serial_uart|rx_bit_cnt\(3),
	combout => \i_serial_uart|rx_bit_cnt_half~0_combout\);

-- Location: LCFF_X10_Y22_N3
\i_serial_uart|tx_byte_saved[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector20~0_combout\,
	ena => \i_serial_uart|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_byte_saved\(4));

-- Location: LCFF_X9_Y22_N17
\i_dc_disp_ctrl|byte_vector[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|Selector10~3_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|byte_vector\(3));

-- Location: LCCOMB_X10_Y22_N0
\i_serial_uart|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector21~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & ((\i_serial_uart|tx_byte_saved\(4)))) # (!\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_dc_disp_ctrl|byte_vector\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_ctrl|byte_vector\(3),
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	datad => \i_serial_uart|tx_byte_saved\(4),
	combout => \i_serial_uart|Selector21~0_combout\);

-- Location: LCCOMB_X9_Y22_N30
\i_dc_disp_ctrl|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector11~0_combout\ = (((\i_dc_disp_ctrl|send_data_state.s_send_ones~regout\ & !\i_serial_uart|transmit_ready~regout\)) # (!\i_dc_disp_ctrl|byte_vector[0]~0_combout\)) # (!\i_dc_disp_ctrl|send_data_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|send_data_state.s_idle~regout\,
	datab => \i_dc_disp_ctrl|byte_vector[0]~0_combout\,
	datac => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	datad => \i_serial_uart|transmit_ready~regout\,
	combout => \i_dc_disp_ctrl|Selector11~0_combout\);

-- Location: LCCOMB_X8_Y22_N12
\i_dc_disp_ctrl|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector11~1_combout\ = ((\i_dc_disp_ctrl|send_data_state.s_send_ones~regout\ & (\i_dc_disp_ctrl|bcd_0_in\(2) & !\i_dc_disp_ctrl|bcd_0_in\(3)))) # (!\i_dc_disp_ctrl|byte_vector[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	datab => \i_dc_disp_ctrl|byte_vector[0]~0_combout\,
	datac => \i_dc_disp_ctrl|bcd_0_in\(2),
	datad => \i_dc_disp_ctrl|bcd_0_in\(3),
	combout => \i_dc_disp_ctrl|Selector11~1_combout\);

-- Location: LCCOMB_X7_Y22_N30
\i_dc_disp_ctrl|Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector11~2_combout\ = (\i_dc_disp_ctrl|byte_vector\(2) & ((\i_dc_disp_ctrl|Selector11~0_combout\) # ((\i_serial_uart|transmit_ready~regout\ & \i_dc_disp_ctrl|Selector11~1_combout\)))) # (!\i_dc_disp_ctrl|byte_vector\(2) & 
-- (\i_serial_uart|transmit_ready~regout\ & (\i_dc_disp_ctrl|Selector11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|byte_vector\(2),
	datab => \i_serial_uart|transmit_ready~regout\,
	datac => \i_dc_disp_ctrl|Selector11~1_combout\,
	datad => \i_dc_disp_ctrl|Selector11~0_combout\,
	combout => \i_dc_disp_ctrl|Selector11~2_combout\);

-- Location: LCCOMB_X7_Y22_N12
\i_dc_disp_ctrl|Selector11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector11~3_combout\ = (\i_dc_disp_ctrl|Selector11~2_combout\) # ((!\i_dc_disp_ctrl|bcd_1_in\(3) & (\i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\ & \i_dc_disp_ctrl|bcd_1_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_1_in\(3),
	datab => \i_dc_disp_ctrl|Selector11~2_combout\,
	datac => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	datad => \i_dc_disp_ctrl|bcd_1_in\(2),
	combout => \i_dc_disp_ctrl|Selector11~3_combout\);

-- Location: LCCOMB_X36_Y13_N26
\i_key_ctrl|ten_ms_up_cnt[0]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\ = (\i_key_ctrl|key_up_2r~regout\) # (!\i_key_ctrl|LessThan3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|LessThan3~2_combout\,
	datac => \i_key_ctrl|key_up_2r~regout\,
	combout => \i_key_ctrl|ten_ms_up_cnt[0]~39_combout\);

-- Location: LCCOMB_X37_Y14_N12
\i_key_ctrl|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal2~2_combout\ = (!\i_key_ctrl|ten_ms_down_cnt\(1) & (!\i_key_ctrl|ten_ms_down_cnt\(18) & (!\i_key_ctrl|ten_ms_down_cnt\(0) & !\i_key_ctrl|ten_ms_down_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(1),
	datab => \i_key_ctrl|ten_ms_down_cnt\(18),
	datac => \i_key_ctrl|ten_ms_down_cnt\(0),
	datad => \i_key_ctrl|ten_ms_down_cnt\(2),
	combout => \i_key_ctrl|Equal2~2_combout\);

-- Location: LCCOMB_X37_Y14_N6
\i_key_ctrl|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal2~3_combout\ = (!\i_key_ctrl|ten_ms_down_cnt\(7) & (!\i_key_ctrl|ten_ms_down_cnt\(6) & (!\i_key_ctrl|ten_ms_down_cnt\(5) & !\i_key_ctrl|ten_ms_down_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(7),
	datab => \i_key_ctrl|ten_ms_down_cnt\(6),
	datac => \i_key_ctrl|ten_ms_down_cnt\(5),
	datad => \i_key_ctrl|ten_ms_down_cnt\(8),
	combout => \i_key_ctrl|Equal2~3_combout\);

-- Location: LCCOMB_X37_Y13_N26
\i_key_ctrl|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal2~4_combout\ = (!\i_key_ctrl|ten_ms_down_cnt\(17) & (!\i_key_ctrl|ten_ms_down_cnt\(16) & (!\i_key_ctrl|ten_ms_down_cnt\(13) & !\i_key_ctrl|ten_ms_down_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(17),
	datab => \i_key_ctrl|ten_ms_down_cnt\(16),
	datac => \i_key_ctrl|ten_ms_down_cnt\(13),
	datad => \i_key_ctrl|ten_ms_down_cnt\(15),
	combout => \i_key_ctrl|Equal2~4_combout\);

-- Location: LCCOMB_X37_Y14_N8
\i_key_ctrl|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal2~5_combout\ = (\i_key_ctrl|Equal2~4_combout\ & (\i_key_ctrl|Equal2~0_combout\ & (!\i_key_ctrl|ten_ms_down_cnt\(14) & \i_key_ctrl|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|Equal2~4_combout\,
	datab => \i_key_ctrl|Equal2~0_combout\,
	datac => \i_key_ctrl|ten_ms_down_cnt\(14),
	datad => \i_key_ctrl|Equal2~3_combout\,
	combout => \i_key_ctrl|Equal2~5_combout\);

-- Location: LCCOMB_X37_Y14_N10
\i_key_ctrl|key_in_states~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_in_states~0_combout\ = (((\i_key_ctrl|ten_ms_down_cnt\(3)) # (\i_key_ctrl|ten_ms_down_cnt\(4))) # (!\i_key_ctrl|Equal2~5_combout\)) # (!\i_key_ctrl|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|Equal2~2_combout\,
	datab => \i_key_ctrl|Equal2~5_combout\,
	datac => \i_key_ctrl|ten_ms_down_cnt\(3),
	datad => \i_key_ctrl|ten_ms_down_cnt\(4),
	combout => \i_key_ctrl|key_in_states~0_combout\);

-- Location: LCCOMB_X36_Y14_N12
\i_key_ctrl|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal3~2_combout\ = (!\i_key_ctrl|ten_ms_up_cnt\(7) & (!\i_key_ctrl|ten_ms_up_cnt\(6) & (!\i_key_ctrl|ten_ms_up_cnt\(5) & !\i_key_ctrl|ten_ms_up_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(7),
	datab => \i_key_ctrl|ten_ms_up_cnt\(6),
	datac => \i_key_ctrl|ten_ms_up_cnt\(5),
	datad => \i_key_ctrl|ten_ms_up_cnt\(8),
	combout => \i_key_ctrl|Equal3~2_combout\);

-- Location: LCCOMB_X36_Y13_N20
\i_key_ctrl|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal3~3_combout\ = (!\i_key_ctrl|ten_ms_up_cnt\(17) & (!\i_key_ctrl|ten_ms_up_cnt\(16) & (!\i_key_ctrl|ten_ms_up_cnt\(13) & !\i_key_ctrl|ten_ms_up_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(17),
	datab => \i_key_ctrl|ten_ms_up_cnt\(16),
	datac => \i_key_ctrl|ten_ms_up_cnt\(13),
	datad => \i_key_ctrl|ten_ms_up_cnt\(15),
	combout => \i_key_ctrl|Equal3~3_combout\);

-- Location: LCCOMB_X36_Y14_N6
\i_key_ctrl|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal3~4_combout\ = (!\i_key_ctrl|ten_ms_up_cnt\(14) & (\i_key_ctrl|Equal3~3_combout\ & (\i_key_ctrl|Equal3~0_combout\ & \i_key_ctrl|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(14),
	datab => \i_key_ctrl|Equal3~3_combout\,
	datac => \i_key_ctrl|Equal3~0_combout\,
	datad => \i_key_ctrl|Equal3~2_combout\,
	combout => \i_key_ctrl|Equal3~4_combout\);

-- Location: LCCOMB_X36_Y14_N8
\i_key_ctrl|Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal3~5_combout\ = (!\i_key_ctrl|ten_ms_up_cnt\(18) & (!\i_key_ctrl|ten_ms_up_cnt\(0) & (!\i_key_ctrl|ten_ms_up_cnt\(1) & !\i_key_ctrl|ten_ms_up_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(18),
	datab => \i_key_ctrl|ten_ms_up_cnt\(0),
	datac => \i_key_ctrl|ten_ms_up_cnt\(1),
	datad => \i_key_ctrl|ten_ms_up_cnt\(2),
	combout => \i_key_ctrl|Equal3~5_combout\);

-- Location: LCCOMB_X36_Y14_N10
\i_key_ctrl|Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal3~6_combout\ = (\i_key_ctrl|Equal3~4_combout\ & (\i_key_ctrl|Equal3~5_combout\ & (!\i_key_ctrl|ten_ms_up_cnt\(3) & !\i_key_ctrl|ten_ms_up_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|Equal3~4_combout\,
	datab => \i_key_ctrl|Equal3~5_combout\,
	datac => \i_key_ctrl|ten_ms_up_cnt\(3),
	datad => \i_key_ctrl|ten_ms_up_cnt\(4),
	combout => \i_key_ctrl|Equal3~6_combout\);

-- Location: LCCOMB_X35_Y14_N10
\i_key_ctrl|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal1~1_combout\ = (!\i_key_ctrl|ten_ms_on_cnt\(7) & (!\i_key_ctrl|ten_ms_on_cnt\(8) & (!\i_key_ctrl|ten_ms_on_cnt\(5) & !\i_key_ctrl|ten_ms_on_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(7),
	datab => \i_key_ctrl|ten_ms_on_cnt\(8),
	datac => \i_key_ctrl|ten_ms_on_cnt\(5),
	datad => \i_key_ctrl|ten_ms_on_cnt\(6),
	combout => \i_key_ctrl|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y13_N26
\i_key_ctrl|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal1~2_combout\ = (!\i_key_ctrl|ten_ms_on_cnt\(17) & (!\i_key_ctrl|ten_ms_on_cnt\(13) & (!\i_key_ctrl|ten_ms_on_cnt\(16) & !\i_key_ctrl|ten_ms_on_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(17),
	datab => \i_key_ctrl|ten_ms_on_cnt\(13),
	datac => \i_key_ctrl|ten_ms_on_cnt\(16),
	datad => \i_key_ctrl|ten_ms_on_cnt\(15),
	combout => \i_key_ctrl|Equal1~2_combout\);

-- Location: LCCOMB_X35_Y13_N28
\i_key_ctrl|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal1~3_combout\ = (!\i_key_ctrl|ten_ms_on_cnt\(14) & (\i_key_ctrl|Equal1~0_combout\ & (\i_key_ctrl|Equal1~1_combout\ & \i_key_ctrl|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(14),
	datab => \i_key_ctrl|Equal1~0_combout\,
	datac => \i_key_ctrl|Equal1~1_combout\,
	datad => \i_key_ctrl|Equal1~2_combout\,
	combout => \i_key_ctrl|Equal1~3_combout\);

-- Location: LCCOMB_X35_Y14_N12
\i_key_ctrl|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal1~4_combout\ = (!\i_key_ctrl|ten_ms_on_cnt\(18) & (!\i_key_ctrl|ten_ms_on_cnt\(0) & (!\i_key_ctrl|ten_ms_on_cnt\(1) & !\i_key_ctrl|ten_ms_on_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(18),
	datab => \i_key_ctrl|ten_ms_on_cnt\(0),
	datac => \i_key_ctrl|ten_ms_on_cnt\(1),
	datad => \i_key_ctrl|ten_ms_on_cnt\(2),
	combout => \i_key_ctrl|Equal1~4_combout\);

-- Location: LCCOMB_X35_Y14_N6
\i_key_ctrl|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal1~5_combout\ = (\i_key_ctrl|Equal1~4_combout\ & (\i_key_ctrl|Equal1~3_combout\ & (!\i_key_ctrl|ten_ms_on_cnt\(3) & !\i_key_ctrl|ten_ms_on_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|Equal1~4_combout\,
	datab => \i_key_ctrl|Equal1~3_combout\,
	datac => \i_key_ctrl|ten_ms_on_cnt\(3),
	datad => \i_key_ctrl|ten_ms_on_cnt\(4),
	combout => \i_key_ctrl|Equal1~5_combout\);

-- Location: LCCOMB_X33_Y13_N20
\i_key_ctrl|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal0~2_combout\ = (!\i_key_ctrl|ten_ms_off_cnt\(8) & (!\i_key_ctrl|ten_ms_off_cnt\(16) & (!\i_key_ctrl|ten_ms_off_cnt\(13) & !\i_key_ctrl|ten_ms_off_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(8),
	datab => \i_key_ctrl|ten_ms_off_cnt\(16),
	datac => \i_key_ctrl|ten_ms_off_cnt\(13),
	datad => \i_key_ctrl|ten_ms_off_cnt\(15),
	combout => \i_key_ctrl|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y13_N22
\i_key_ctrl|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal0~3_combout\ = (!\i_key_ctrl|ten_ms_off_cnt\(14) & (\i_key_ctrl|Equal0~1_combout\ & (\i_key_ctrl|Equal0~2_combout\ & \i_key_ctrl|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(14),
	datab => \i_key_ctrl|Equal0~1_combout\,
	datac => \i_key_ctrl|Equal0~2_combout\,
	datad => \i_key_ctrl|Equal0~0_combout\,
	combout => \i_key_ctrl|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y14_N2
\i_key_ctrl|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal0~4_combout\ = (!\i_key_ctrl|ten_ms_off_cnt\(1) & (!\i_key_ctrl|ten_ms_off_cnt\(17) & (!\i_key_ctrl|ten_ms_off_cnt\(0) & !\i_key_ctrl|ten_ms_off_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(1),
	datab => \i_key_ctrl|ten_ms_off_cnt\(17),
	datac => \i_key_ctrl|ten_ms_off_cnt\(0),
	datad => \i_key_ctrl|ten_ms_off_cnt\(18),
	combout => \i_key_ctrl|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y14_N12
\i_key_ctrl|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal0~5_combout\ = (!\i_key_ctrl|ten_ms_off_cnt\(4) & (!\i_key_ctrl|ten_ms_off_cnt\(2) & (!\i_key_ctrl|ten_ms_off_cnt\(3) & \i_key_ctrl|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(4),
	datab => \i_key_ctrl|ten_ms_off_cnt\(2),
	datac => \i_key_ctrl|ten_ms_off_cnt\(3),
	datad => \i_key_ctrl|Equal0~4_combout\,
	combout => \i_key_ctrl|Equal0~5_combout\);

-- Location: LCCOMB_X34_Y14_N30
\i_key_ctrl|key_in_states~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_in_states~1_combout\ = (\i_key_ctrl|Equal0~3_combout\ & (!\i_key_ctrl|key_off_2r~regout\ & \i_key_ctrl|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|Equal0~3_combout\,
	datac => \i_key_ctrl|key_off_2r~regout\,
	datad => \i_key_ctrl|Equal0~5_combout\,
	combout => \i_key_ctrl|key_in_states~1_combout\);

-- Location: LCCOMB_X34_Y14_N26
\i_key_ctrl|key_in_states~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_in_states~2_combout\ = (!\i_key_ctrl|key_in_states~1_combout\ & ((\i_key_ctrl|key_on_2r~regout\) # ((!\i_key_ctrl|Equal1~5_combout\ & \i_key_ctrl|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|Equal1~5_combout\,
	datab => \i_key_ctrl|key_in_states~1_combout\,
	datac => \i_key_ctrl|key_on_2r~regout\,
	datad => \i_key_ctrl|LessThan1~3_combout\,
	combout => \i_key_ctrl|key_in_states~2_combout\);

-- Location: LCCOMB_X34_Y14_N14
\i_key_ctrl|key_in_states~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_in_states~3_combout\ = (\i_key_ctrl|key_in_states~2_combout\ & ((\i_key_ctrl|key_up_2r~regout\) # ((\i_key_ctrl|LessThan3~2_combout\ & !\i_key_ctrl|Equal3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|LessThan3~2_combout\,
	datab => \i_key_ctrl|key_in_states~2_combout\,
	datac => \i_key_ctrl|key_up_2r~regout\,
	datad => \i_key_ctrl|Equal3~6_combout\,
	combout => \i_key_ctrl|key_in_states~3_combout\);

-- Location: LCCOMB_X34_Y14_N6
\i_key_ctrl|key_in_states~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_in_states~4_combout\ = (\i_key_ctrl|key_in_states~3_combout\ & ((\i_key_ctrl|key_down_2r~regout\) # ((\i_key_ctrl|LessThan2~2_combout\ & \i_key_ctrl|key_in_states~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_down_2r~regout\,
	datab => \i_key_ctrl|key_in_states~3_combout\,
	datac => \i_key_ctrl|LessThan2~2_combout\,
	datad => \i_key_ctrl|key_in_states~0_combout\,
	combout => \i_key_ctrl|key_in_states~4_combout\);

-- Location: LCCOMB_X34_Y14_N20
\i_key_ctrl|key_in_states~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_in_states~5_combout\ = (!\i_key_ctrl|key_in_states~regout\ & (((\i_key_ctrl|key_off_out~2_combout\ & !\i_key_ctrl|key_off_2r~regout\)) # (!\i_key_ctrl|key_in_states~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_in_states~4_combout\,
	datab => \i_key_ctrl|key_off_out~2_combout\,
	datac => \i_key_ctrl|key_in_states~regout\,
	datad => \i_key_ctrl|key_off_2r~regout\,
	combout => \i_key_ctrl|key_in_states~5_combout\);

-- Location: LCCOMB_X37_Y13_N20
\i_key_ctrl|ten_ms_down_cnt[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\ = (\i_key_ctrl|key_down_2r~regout\) # (!\i_key_ctrl|LessThan2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_down_2r~regout\,
	datac => \i_key_ctrl|LessThan2~2_combout\,
	combout => \i_key_ctrl|ten_ms_down_cnt[12]~39_combout\);

-- Location: LCCOMB_X31_Y22_N6
\i_serial_uart|received_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~5_combout\ = (!\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_2r~regout\,
	combout => \i_serial_uart|received_data~5_combout\);

-- Location: LCFF_X31_Y22_N1
\i_serial_uart|rx_byte_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(6));

-- Location: LCCOMB_X31_Y22_N2
\i_serial_uart|received_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~6_combout\ = (!\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(6),
	combout => \i_serial_uart|received_data~6_combout\);

-- Location: LCFF_X31_Y22_N11
\i_serial_uart|rx_byte_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(0));

-- Location: LCCOMB_X31_Y22_N4
\i_serial_uart|received_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~7_combout\ = (!\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(0),
	combout => \i_serial_uart|received_data~7_combout\);

-- Location: LCFF_X10_Y22_N13
\i_serial_uart|tx_byte_saved[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector19~0_combout\,
	ena => \i_serial_uart|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_byte_saved\(5));

-- Location: LCFF_X9_Y22_N21
\i_dc_disp_ctrl|byte_vector[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|Selector9~2_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|byte_vector\(4));

-- Location: LCCOMB_X10_Y22_N2
\i_serial_uart|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector20~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_byte_saved\(5))) # (!\i_serial_uart|tx_state.s_tx_data~regout\ & ((\i_dc_disp_ctrl|byte_vector\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_byte_saved\(5),
	datab => \i_serial_uart|tx_state.s_tx_data~regout\,
	datac => \i_dc_disp_ctrl|byte_vector\(4),
	combout => \i_serial_uart|Selector20~0_combout\);

-- Location: LCCOMB_X9_Y22_N2
\i_dc_disp_ctrl|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector8~0_combout\ = (\i_dc_disp_ctrl|send_data_state.s_idle~regout\ & ((\i_serial_uart|transmit_ready~regout\) # ((!\i_dc_disp_ctrl|send_data_state.s_send_ones~regout\ & !\i_dc_disp_ctrl|send_data_state.s_send_procent~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|send_data_state.s_idle~regout\,
	datab => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	datac => \i_dc_disp_ctrl|send_data_state.s_send_procent~regout\,
	datad => \i_serial_uart|transmit_ready~regout\,
	combout => \i_dc_disp_ctrl|Selector8~0_combout\);

-- Location: LCCOMB_X7_Y22_N24
\i_dc_disp_ctrl|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector10~0_combout\ = (\i_dc_disp_ctrl|bcd_1_in\(3) & (!\i_dc_disp_ctrl|bcd_1_in\(1) & (\i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\ & !\i_dc_disp_ctrl|bcd_1_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_1_in\(3),
	datab => \i_dc_disp_ctrl|bcd_1_in\(1),
	datac => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	datad => \i_dc_disp_ctrl|bcd_1_in\(2),
	combout => \i_dc_disp_ctrl|Selector10~0_combout\);

-- Location: LCCOMB_X8_Y22_N2
\i_dc_disp_ctrl|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector10~1_combout\ = (!\i_dc_disp_ctrl|bcd_0_in\(2) & (\i_dc_disp_ctrl|bcd_0_in\(3) & (!\i_dc_disp_ctrl|bcd_0_in\(1) & \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_0_in\(2),
	datab => \i_dc_disp_ctrl|bcd_0_in\(3),
	datac => \i_dc_disp_ctrl|bcd_0_in\(1),
	datad => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	combout => \i_dc_disp_ctrl|Selector10~1_combout\);

-- Location: LCCOMB_X9_Y22_N26
\i_dc_disp_ctrl|Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector10~2_combout\ = (\i_dc_disp_ctrl|send_data_state.s_send_cr~regout\ & ((\i_dc_disp_ctrl|byte_vector\(3)) # ((\i_serial_uart|transmit_ready~regout\)))) # (!\i_dc_disp_ctrl|send_data_state.s_send_cr~regout\ & 
-- (((\i_dc_disp_ctrl|Selector10~1_combout\ & \i_serial_uart|transmit_ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|byte_vector\(3),
	datab => \i_dc_disp_ctrl|Selector10~1_combout\,
	datac => \i_dc_disp_ctrl|send_data_state.s_send_cr~regout\,
	datad => \i_serial_uart|transmit_ready~regout\,
	combout => \i_dc_disp_ctrl|Selector10~2_combout\);

-- Location: LCCOMB_X9_Y22_N16
\i_dc_disp_ctrl|Selector10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector10~3_combout\ = (\i_dc_disp_ctrl|Selector10~2_combout\) # ((\i_dc_disp_ctrl|Selector10~0_combout\) # ((\i_dc_disp_ctrl|byte_vector\(3) & !\i_dc_disp_ctrl|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|Selector10~2_combout\,
	datab => \i_dc_disp_ctrl|Selector10~0_combout\,
	datac => \i_dc_disp_ctrl|byte_vector\(3),
	datad => \i_dc_disp_ctrl|Selector8~0_combout\,
	combout => \i_dc_disp_ctrl|Selector10~3_combout\);

-- Location: LCCOMB_X31_Y22_N0
\i_serial_uart|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector5~0_combout\ = (\i_serial_uart|rx_2r~regout\ & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(6) & \i_serial_uart|Selector10~0_combout\)))) # (!\i_serial_uart|rx_2r~regout\ & (((\i_serial_uart|rx_byte_int\(6) 
-- & \i_serial_uart|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(6),
	datad => \i_serial_uart|Selector10~0_combout\,
	combout => \i_serial_uart|Selector5~0_combout\);

-- Location: LCCOMB_X31_Y22_N10
\i_serial_uart|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector11~0_combout\ = (\i_serial_uart|rx_byte_int\(1) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(0) & \i_serial_uart|Selector10~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(1) & 
-- (((\i_serial_uart|rx_byte_int\(0) & \i_serial_uart|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(1),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(0),
	datad => \i_serial_uart|Selector10~0_combout\,
	combout => \i_serial_uart|Selector11~0_combout\);

-- Location: LCFF_X9_Y22_N29
\i_dc_disp_ctrl|byte_vector[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|Selector8~1_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|byte_vector\(5));

-- Location: LCCOMB_X10_Y22_N12
\i_serial_uart|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector19~0_combout\ = (!\i_serial_uart|tx_state.s_tx_data~regout\ & \i_dc_disp_ctrl|byte_vector\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	datad => \i_dc_disp_ctrl|byte_vector\(5),
	combout => \i_serial_uart|Selector19~0_combout\);

-- Location: LCCOMB_X9_Y22_N14
\i_dc_disp_ctrl|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector9~0_combout\ = ((\i_dc_disp_ctrl|send_data_state.s_send_ones~regout\) # ((!\i_dc_disp_ctrl|byte_vector[0]~0_combout\ & !\i_serial_uart|transmit_ready~regout\))) # (!\i_dc_disp_ctrl|send_data_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|send_data_state.s_idle~regout\,
	datab => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	datac => \i_dc_disp_ctrl|byte_vector[0]~0_combout\,
	datad => \i_serial_uart|transmit_ready~regout\,
	combout => \i_dc_disp_ctrl|Selector9~0_combout\);

-- Location: LCCOMB_X9_Y22_N24
\i_dc_disp_ctrl|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector9~1_combout\ = (\i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\) # ((\i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\) # ((\i_dc_disp_ctrl|Selector9~0_combout\ & \i_dc_disp_ctrl|byte_vector\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\,
	datab => \i_dc_disp_ctrl|Selector9~0_combout\,
	datac => \i_dc_disp_ctrl|byte_vector\(4),
	datad => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	combout => \i_dc_disp_ctrl|Selector9~1_combout\);

-- Location: LCCOMB_X9_Y22_N20
\i_dc_disp_ctrl|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector9~2_combout\ = (\i_dc_disp_ctrl|Selector9~1_combout\) # ((\i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\ & ((!\i_dc_disp_ctrl|LessThan0~1_combout\) # (!\i_serial_uart|transmit_ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|transmit_ready~regout\,
	datab => \i_dc_disp_ctrl|LessThan0~1_combout\,
	datac => \i_dc_disp_ctrl|Selector9~1_combout\,
	datad => \i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\,
	combout => \i_dc_disp_ctrl|Selector9~2_combout\);

-- Location: LCCOMB_X9_Y22_N28
\i_dc_disp_ctrl|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector8~1_combout\ = (\i_dc_disp_ctrl|send_data_state.s_send_cr~regout\ & (((\i_dc_disp_ctrl|byte_vector\(5) & !\i_serial_uart|transmit_ready~regout\)))) # (!\i_dc_disp_ctrl|send_data_state.s_send_cr~regout\ & 
-- ((\i_dc_disp_ctrl|Selector8~0_combout\) # ((\i_dc_disp_ctrl|byte_vector\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|Selector8~0_combout\,
	datab => \i_dc_disp_ctrl|send_data_state.s_send_cr~regout\,
	datac => \i_dc_disp_ctrl|byte_vector\(5),
	datad => \i_serial_uart|transmit_ready~regout\,
	combout => \i_dc_disp_ctrl|Selector8~1_combout\);

-- Location: LCCOMB_X33_Y22_N22
\i_serial_uart|Selector13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~3_combout\ = (\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|rx_bit_cnt_wrap~regout\ & ((!\i_serial_uart|rx_bit_no\(2)) # (!\i_serial_uart|rx_bit_no\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|rx_bit_no\(2),
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector13~3_combout\);

-- Location: LCCOMB_X19_Y23_N16
\i_pwm_ctrl|previous_dc[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|previous_dc[2]~4_combout\ = !\i_pwm_ctrl|new_dc\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pwm_ctrl|new_dc\(2),
	combout => \i_pwm_ctrl|previous_dc[2]~4_combout\);

-- Location: LCCOMB_X19_Y23_N12
\i_pwm_ctrl|previous_dc[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|previous_dc[6]~5_combout\ = !\i_pwm_ctrl|new_dc\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pwm_ctrl|new_dc\(6),
	combout => \i_pwm_ctrl|previous_dc[6]~5_combout\);

-- Location: CLKCTRL_G3
\b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y22_N4
\i_serial_uart|tx_bit_cnt[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[0]~9_combout\ = \i_serial_uart|tx_bit_cnt\(0) $ (VCC)
-- \i_serial_uart|tx_bit_cnt[0]~10\ = CARRY(\i_serial_uart|tx_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(0),
	datad => VCC,
	combout => \i_serial_uart|tx_bit_cnt[0]~9_combout\,
	cout => \i_serial_uart|tx_bit_cnt[0]~10\);

-- Location: LCCOMB_X12_Y22_N18
\i_serial_uart|tx_bit_cnt[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[7]~24_combout\ = (\i_serial_uart|tx_bit_cnt\(7) & (!\i_serial_uart|tx_bit_cnt[6]~23\)) # (!\i_serial_uart|tx_bit_cnt\(7) & ((\i_serial_uart|tx_bit_cnt[6]~23\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[7]~25\ = CARRY((!\i_serial_uart|tx_bit_cnt[6]~23\) # (!\i_serial_uart|tx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(7),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[6]~23\,
	combout => \i_serial_uart|tx_bit_cnt[7]~24_combout\,
	cout => \i_serial_uart|tx_bit_cnt[7]~25\);

-- Location: LCCOMB_X12_Y22_N20
\i_serial_uart|tx_bit_cnt[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[8]~26_combout\ = \i_serial_uart|tx_bit_cnt\(8) $ (!\i_serial_uart|tx_bit_cnt[7]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(8),
	cin => \i_serial_uart|tx_bit_cnt[7]~25\,
	combout => \i_serial_uart|tx_bit_cnt[8]~26_combout\);

-- Location: LCFF_X12_Y22_N21
\i_serial_uart|tx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[8]~26_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(8));

-- Location: LCCOMB_X12_Y22_N10
\i_serial_uart|tx_bit_cnt[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[3]~16_combout\ = (\i_serial_uart|tx_bit_cnt\(3) & (!\i_serial_uart|tx_bit_cnt[2]~15\)) # (!\i_serial_uart|tx_bit_cnt\(3) & ((\i_serial_uart|tx_bit_cnt[2]~15\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[3]~17\ = CARRY((!\i_serial_uart|tx_bit_cnt[2]~15\) # (!\i_serial_uart|tx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(3),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[2]~15\,
	combout => \i_serial_uart|tx_bit_cnt[3]~16_combout\,
	cout => \i_serial_uart|tx_bit_cnt[3]~17\);

-- Location: LCFF_X12_Y22_N11
\i_serial_uart|tx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[3]~16_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(3));

-- Location: LCCOMB_X12_Y22_N2
\i_serial_uart|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~0_combout\ = (!\i_serial_uart|tx_bit_cnt\(1) & (!\i_serial_uart|tx_bit_cnt\(2) & (!\i_serial_uart|tx_bit_cnt\(0) & !\i_serial_uart|tx_bit_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(1),
	datab => \i_serial_uart|tx_bit_cnt\(2),
	datac => \i_serial_uart|tx_bit_cnt\(0),
	datad => \i_serial_uart|tx_bit_cnt\(3),
	combout => \i_serial_uart|LessThan2~0_combout\);

-- Location: LCCOMB_X12_Y22_N12
\i_serial_uart|tx_bit_cnt[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[4]~18_combout\ = (\i_serial_uart|tx_bit_cnt\(4) & (\i_serial_uart|tx_bit_cnt[3]~17\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(4) & (!\i_serial_uart|tx_bit_cnt[3]~17\ & VCC))
-- \i_serial_uart|tx_bit_cnt[4]~19\ = CARRY((\i_serial_uart|tx_bit_cnt\(4) & !\i_serial_uart|tx_bit_cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(4),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[3]~17\,
	combout => \i_serial_uart|tx_bit_cnt[4]~18_combout\,
	cout => \i_serial_uart|tx_bit_cnt[4]~19\);

-- Location: LCFF_X12_Y22_N13
\i_serial_uart|tx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[4]~18_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(4));

-- Location: LCCOMB_X12_Y22_N22
\i_serial_uart|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~1_combout\ = (!\i_serial_uart|tx_bit_cnt\(6) & ((\i_serial_uart|LessThan2~0_combout\) # ((!\i_serial_uart|tx_bit_cnt\(4)) # (!\i_serial_uart|tx_bit_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(6),
	datab => \i_serial_uart|LessThan2~0_combout\,
	datac => \i_serial_uart|tx_bit_cnt\(5),
	datad => \i_serial_uart|tx_bit_cnt\(4),
	combout => \i_serial_uart|LessThan2~1_combout\);

-- Location: LCCOMB_X12_Y22_N0
\i_serial_uart|tx_bit_cnt[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[4]~11_combout\ = ((\i_serial_uart|tx_bit_cnt\(7) & (\i_serial_uart|tx_bit_cnt\(8) & !\i_serial_uart|LessThan2~1_combout\))) # (!\i_serial_uart|tx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_en~regout\,
	datab => \i_serial_uart|tx_bit_cnt\(7),
	datac => \i_serial_uart|tx_bit_cnt\(8),
	datad => \i_serial_uart|LessThan2~1_combout\,
	combout => \i_serial_uart|tx_bit_cnt[4]~11_combout\);

-- Location: LCFF_X12_Y22_N5
\i_serial_uart|tx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[0]~9_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(0));

-- Location: LCCOMB_X12_Y22_N8
\i_serial_uart|tx_bit_cnt[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[2]~14_combout\ = (\i_serial_uart|tx_bit_cnt\(2) & (\i_serial_uart|tx_bit_cnt[1]~13\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(2) & (!\i_serial_uart|tx_bit_cnt[1]~13\ & VCC))
-- \i_serial_uart|tx_bit_cnt[2]~15\ = CARRY((\i_serial_uart|tx_bit_cnt\(2) & !\i_serial_uart|tx_bit_cnt[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(2),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[1]~13\,
	combout => \i_serial_uart|tx_bit_cnt[2]~14_combout\,
	cout => \i_serial_uart|tx_bit_cnt[2]~15\);

-- Location: LCFF_X12_Y22_N9
\i_serial_uart|tx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[2]~14_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(2));

-- Location: LCCOMB_X12_Y22_N14
\i_serial_uart|tx_bit_cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[5]~20_combout\ = (\i_serial_uart|tx_bit_cnt\(5) & (!\i_serial_uart|tx_bit_cnt[4]~19\)) # (!\i_serial_uart|tx_bit_cnt\(5) & ((\i_serial_uart|tx_bit_cnt[4]~19\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[5]~21\ = CARRY((!\i_serial_uart|tx_bit_cnt[4]~19\) # (!\i_serial_uart|tx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(5),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[4]~19\,
	combout => \i_serial_uart|tx_bit_cnt[5]~20_combout\,
	cout => \i_serial_uart|tx_bit_cnt[5]~21\);

-- Location: LCFF_X12_Y22_N15
\i_serial_uart|tx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[5]~20_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(5));

-- Location: LCFF_X12_Y22_N19
\i_serial_uart|tx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[7]~24_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(7));

-- Location: LCCOMB_X12_Y22_N24
\i_serial_uart|tx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt_wrap~0_combout\ = (\i_serial_uart|tx_bit_cnt_en~regout\ & (\i_serial_uart|tx_bit_cnt\(7) & (\i_serial_uart|tx_bit_cnt\(8) & !\i_serial_uart|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_en~regout\,
	datab => \i_serial_uart|tx_bit_cnt\(7),
	datac => \i_serial_uart|tx_bit_cnt\(8),
	datad => \i_serial_uart|LessThan2~1_combout\,
	combout => \i_serial_uart|tx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X12_Y22_N25
\i_serial_uart|tx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X11_Y22_N2
\i_serial_uart|tx_bit_no~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_no~1_combout\ = ((\i_serial_uart|tx_bit_no\(2) & (\i_serial_uart|tx_bit_no\(1) & \i_serial_uart|tx_bit_no\(0)))) # (!\i_serial_uart|tx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no\(2),
	datab => \i_serial_uart|tx_bit_no\(1),
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|tx_bit_no~1_combout\);

-- Location: LCCOMB_X11_Y22_N8
\i_serial_uart|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector33~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & ((\i_serial_uart|tx_bit_no\(0) $ (!\i_serial_uart|tx_bit_no~1_combout\)))) # (!\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_state.s_idle~regout\ & 
-- (\i_serial_uart|tx_bit_no\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_tx_data~regout\,
	datab => \i_serial_uart|tx_state.s_idle~regout\,
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_bit_no~1_combout\,
	combout => \i_serial_uart|Selector33~0_combout\);

-- Location: LCFF_X11_Y22_N9
\i_serial_uart|tx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(0));

-- Location: LCCOMB_X11_Y22_N28
\i_serial_uart|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Add1~0_combout\ = \i_serial_uart|tx_bit_no\(1) $ (\i_serial_uart|tx_bit_no\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_no\(1),
	datac => \i_serial_uart|tx_bit_no\(0),
	combout => \i_serial_uart|Add1~0_combout\);

-- Location: LCCOMB_X10_Y22_N16
\i_serial_uart|tx_bit_no[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_no[1]~0_combout\ = (\i_serial_uart|tx_bit_no~1_combout\ & ((\i_serial_uart|tx_bit_no\(1)))) # (!\i_serial_uart|tx_bit_no~1_combout\ & (\i_serial_uart|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|Add1~0_combout\,
	datac => \i_serial_uart|tx_bit_no\(1),
	datad => \i_serial_uart|tx_bit_no~1_combout\,
	combout => \i_serial_uart|tx_bit_no[1]~0_combout\);

-- Location: LCCOMB_X11_Y22_N14
\i_serial_uart|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector32~0_combout\ = (\i_serial_uart|tx_bit_no\(1) & \i_serial_uart|tx_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_no\(1),
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector32~0_combout\);

-- Location: LCFF_X10_Y22_N17
\i_serial_uart|tx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_no[1]~0_combout\,
	sdata => \i_serial_uart|Selector32~0_combout\,
	sload => \i_serial_uart|ALT_INV_tx_state.s_tx_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(1));

-- Location: LCCOMB_X11_Y22_N26
\i_serial_uart|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector29~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_bit_no\(1) & (\i_serial_uart|tx_bit_no\(0) & \i_serial_uart|tx_bit_cnt_wrap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_tx_data~regout\,
	datab => \i_serial_uart|tx_bit_no\(1),
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector29~0_combout\);

-- Location: LCCOMB_X11_Y22_N24
\i_serial_uart|Selector29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector29~1_combout\ = (\i_serial_uart|tx_bit_no\(2) & ((\i_serial_uart|Selector29~0_combout\) # ((\i_serial_uart|tx_state.s_stop_bit~regout\ & !\i_serial_uart|tx_bit_cnt_wrap~regout\)))) # (!\i_serial_uart|tx_bit_no\(2) & 
-- (((\i_serial_uart|tx_state.s_stop_bit~regout\ & !\i_serial_uart|tx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no\(2),
	datab => \i_serial_uart|Selector29~0_combout\,
	datac => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector29~1_combout\);

-- Location: LCCOMB_X1_Y8_N20
\b_gen_pll:i_reset_ctrl|reset_cnt[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[3]~11_combout\ = (\b_gen_pll:i_reset_ctrl|reset_cnt\(3) & (\b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\ $ (GND))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(3) & (!\b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\ & VCC))
-- \b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\ = CARRY((\b_gen_pll:i_reset_ctrl|reset_cnt\(3) & !\b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|reset_cnt\(3),
	datad => VCC,
	cin => \b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[3]~11_combout\,
	cout => \b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock_50,
	combout => \clock_50~combout\);

-- Location: LCFF_X1_Y8_N21
\b_gen_pll:i_reset_ctrl|reset_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[3]~11_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(3));

-- Location: LCCOMB_X1_Y8_N28
\b_gen_pll:i_reset_ctrl|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|LessThan0~2_combout\ = (((!\b_gen_pll:i_reset_ctrl|reset_cnt\(0)) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(3))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(2))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|reset_cnt\(1),
	datab => \b_gen_pll:i_reset_ctrl|reset_cnt\(2),
	datac => \b_gen_pll:i_reset_ctrl|reset_cnt\(3),
	datad => \b_gen_pll:i_reset_ctrl|reset_cnt\(0),
	combout => \b_gen_pll:i_reset_ctrl|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y8_N2
\b_gen_pll:i_reset_ctrl|reset_cnt[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[0]~6_combout\ = \b_gen_pll:i_reset_ctrl|reset_cnt\(0) $ (((\b_gen_pll:i_reset_ctrl|LessThan0~3_combout\) # (\b_gen_pll:i_reset_ctrl|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|LessThan0~3_combout\,
	datac => \b_gen_pll:i_reset_ctrl|reset_cnt\(0),
	datad => \b_gen_pll:i_reset_ctrl|LessThan0~2_combout\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[0]~6_combout\);

-- Location: LCFF_X1_Y8_N3
\b_gen_pll:i_reset_ctrl|reset_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[0]~6_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(0));

-- Location: LCCOMB_X1_Y8_N18
\b_gen_pll:i_reset_ctrl|reset_cnt[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[2]~9_combout\ = (\b_gen_pll:i_reset_ctrl|reset_cnt\(2) & (!\b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\)) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(2) & ((\b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\) # (GND)))
-- \b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\ = CARRY((!\b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b_gen_pll:i_reset_ctrl|reset_cnt\(2),
	datad => VCC,
	cin => \b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[2]~9_combout\,
	cout => \b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\);

-- Location: LCFF_X1_Y8_N19
\b_gen_pll:i_reset_ctrl|reset_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[2]~9_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(2));

-- Location: LCCOMB_X1_Y8_N22
\b_gen_pll:i_reset_ctrl|reset_cnt[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[4]~13_combout\ = (\b_gen_pll:i_reset_ctrl|reset_cnt\(4) & (!\b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\)) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(4) & ((\b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\) # (GND)))
-- \b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\ = CARRY((!\b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b_gen_pll:i_reset_ctrl|reset_cnt\(4),
	datad => VCC,
	cin => \b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[4]~13_combout\,
	cout => \b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\);

-- Location: LCFF_X1_Y8_N23
\b_gen_pll:i_reset_ctrl|reset_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[4]~13_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(4));

-- Location: LCFF_X1_Y8_N25
\b_gen_pll:i_reset_ctrl|reset_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[5]~15_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(5));

-- Location: LCCOMB_X1_Y8_N8
\b_gen_pll:i_reset_ctrl|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\ = (((\b_gen_pll:i_reset_ctrl|LessThan0~2_combout\) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(5))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(4))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|reset_cnt\(6),
	datab => \b_gen_pll:i_reset_ctrl|reset_cnt\(4),
	datac => \b_gen_pll:i_reset_ctrl|reset_cnt\(5),
	datad => \b_gen_pll:i_reset_ctrl|LessThan0~2_combout\,
	combout => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\);

-- Location: LCCOMB_X1_Y8_N0
\b_gen_pll:i_reset_ctrl|reset_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_out~0_combout\ = !\b_gen_pll:i_reset_ctrl|LessThan0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	combout => \b_gen_pll:i_reset_ctrl|reset_out~0_combout\);

-- Location: LCFF_X1_Y8_N1
\b_gen_pll:i_reset_ctrl|reset_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_out~0_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_out~regout\);

-- Location: LCCOMB_X29_Y22_N18
\i_serial_uart|reset_r~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|reset_r~0_combout\ = !\b_gen_pll:i_reset_ctrl|reset_out~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	combout => \i_serial_uart|reset_r~0_combout\);

-- Location: LCFF_X29_Y22_N19
\i_serial_uart|reset_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|reset_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|reset_r~regout\);

-- Location: LCFF_X29_Y22_N17
\i_serial_uart|reset_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|reset_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|reset_2r~regout\);

-- Location: LCFF_X11_Y22_N25
\i_serial_uart|tx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector29~1_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X11_Y22_N16
\i_serial_uart|tx_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_state~7_combout\ = (\i_dc_disp_ctrl|transmit_valid_out~regout\ & (\i_serial_uart|tx_state.s_idle~regout\ & ((!\i_serial_uart|tx_bit_cnt_wrap~regout\) # (!\i_serial_uart|tx_state.s_stop_bit~regout\)))) # 
-- (!\i_dc_disp_ctrl|transmit_valid_out~regout\ & (((!\i_serial_uart|tx_bit_cnt_wrap~regout\) # (!\i_serial_uart|tx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|transmit_valid_out~regout\,
	datab => \i_serial_uart|tx_state.s_idle~regout\,
	datac => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|tx_state~7_combout\);

-- Location: LCCOMB_X11_Y22_N18
\i_serial_uart|tx_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_state~8_combout\ = (!\i_serial_uart|reset_2r~regout\ & \i_serial_uart|tx_state~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datac => \i_serial_uart|tx_state~7_combout\,
	combout => \i_serial_uart|tx_state~8_combout\);

-- Location: LCFF_X11_Y22_N19
\i_serial_uart|tx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_idle~regout\);

-- Location: LCCOMB_X11_Y22_N22
\i_serial_uart|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector27~0_combout\ = (\i_dc_disp_ctrl|transmit_valid_out~regout\ & (((\i_serial_uart|tx_state.s_start_bit~regout\ & !\i_serial_uart|tx_bit_cnt_wrap~regout\)))) # (!\i_dc_disp_ctrl|transmit_valid_out~regout\ & 
-- (((\i_serial_uart|tx_state.s_start_bit~regout\ & !\i_serial_uart|tx_bit_cnt_wrap~regout\)) # (!\i_serial_uart|tx_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|transmit_valid_out~regout\,
	datab => \i_serial_uart|tx_state.s_idle~regout\,
	datac => \i_serial_uart|tx_state.s_start_bit~regout\,
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector27~0_combout\);

-- Location: LCFF_X11_Y22_N23
\i_serial_uart|tx_state.s_start_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector27~0_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_start_bit~regout\);

-- Location: LCCOMB_X11_Y22_N10
\i_serial_uart|Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector28~1_combout\ = (\i_serial_uart|Selector28~0_combout\ & (\i_serial_uart|tx_state.s_start_bit~regout\ & ((\i_serial_uart|tx_bit_cnt_wrap~regout\)))) # (!\i_serial_uart|Selector28~0_combout\ & 
-- ((\i_serial_uart|tx_state.s_tx_data~regout\) # ((\i_serial_uart|tx_state.s_start_bit~regout\ & \i_serial_uart|tx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector28~0_combout\,
	datab => \i_serial_uart|tx_state.s_start_bit~regout\,
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector28~1_combout\);

-- Location: LCFF_X11_Y22_N11
\i_serial_uart|tx_state.s_tx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector28~1_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_tx_data~regout\);

-- Location: CLKCTRL_G2
\clock_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y23_N10
\i_pwm_ctrl|new_dc[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[0]~8_combout\ = \i_pwm_ctrl|new_dc\(0) $ (VCC)
-- \i_pwm_ctrl|new_dc[0]~9\ = CARRY(\i_pwm_ctrl|new_dc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(0),
	datad => VCC,
	combout => \i_pwm_ctrl|new_dc[0]~8_combout\,
	cout => \i_pwm_ctrl|new_dc[0]~9\);

-- Location: LCCOMB_X32_Y22_N4
\i_serial_uart|rx_bit_cnt[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[0]~9_combout\ = \i_serial_uart|rx_bit_cnt\(0) $ (VCC)
-- \i_serial_uart|rx_bit_cnt[0]~10\ = CARRY(\i_serial_uart|rx_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(0),
	datad => VCC,
	combout => \i_serial_uart|rx_bit_cnt[0]~9_combout\,
	cout => \i_serial_uart|rx_bit_cnt[0]~10\);

-- Location: LCCOMB_X32_Y22_N8
\i_serial_uart|rx_bit_cnt[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[2]~14_combout\ = (\i_serial_uart|rx_bit_cnt\(2) & (\i_serial_uart|rx_bit_cnt[1]~13\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(2) & (!\i_serial_uart|rx_bit_cnt[1]~13\ & VCC))
-- \i_serial_uart|rx_bit_cnt[2]~15\ = CARRY((\i_serial_uart|rx_bit_cnt\(2) & !\i_serial_uart|rx_bit_cnt[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(2),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[1]~13\,
	combout => \i_serial_uart|rx_bit_cnt[2]~14_combout\,
	cout => \i_serial_uart|rx_bit_cnt[2]~15\);

-- Location: LCCOMB_X32_Y22_N12
\i_serial_uart|rx_bit_cnt[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[4]~18_combout\ = (\i_serial_uart|rx_bit_cnt\(4) & (\i_serial_uart|rx_bit_cnt[3]~17\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(4) & (!\i_serial_uart|rx_bit_cnt[3]~17\ & VCC))
-- \i_serial_uart|rx_bit_cnt[4]~19\ = CARRY((\i_serial_uart|rx_bit_cnt\(4) & !\i_serial_uart|rx_bit_cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(4),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[3]~17\,
	combout => \i_serial_uart|rx_bit_cnt[4]~18_combout\,
	cout => \i_serial_uart|rx_bit_cnt[4]~19\);

-- Location: LCCOMB_X32_Y22_N14
\i_serial_uart|rx_bit_cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[5]~20_combout\ = (\i_serial_uart|rx_bit_cnt\(5) & (!\i_serial_uart|rx_bit_cnt[4]~19\)) # (!\i_serial_uart|rx_bit_cnt\(5) & ((\i_serial_uart|rx_bit_cnt[4]~19\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[5]~21\ = CARRY((!\i_serial_uart|rx_bit_cnt[4]~19\) # (!\i_serial_uart|rx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(5),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[4]~19\,
	combout => \i_serial_uart|rx_bit_cnt[5]~20_combout\,
	cout => \i_serial_uart|rx_bit_cnt[5]~21\);

-- Location: LCFF_X32_Y22_N15
\i_serial_uart|rx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[5]~20_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(5));

-- Location: LCCOMB_X32_Y22_N18
\i_serial_uart|rx_bit_cnt[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[7]~24_combout\ = (\i_serial_uart|rx_bit_cnt\(7) & (!\i_serial_uart|rx_bit_cnt[6]~23\)) # (!\i_serial_uart|rx_bit_cnt\(7) & ((\i_serial_uart|rx_bit_cnt[6]~23\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[7]~25\ = CARRY((!\i_serial_uart|rx_bit_cnt[6]~23\) # (!\i_serial_uart|rx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(7),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[6]~23\,
	combout => \i_serial_uart|rx_bit_cnt[7]~24_combout\,
	cout => \i_serial_uart|rx_bit_cnt[7]~25\);

-- Location: LCFF_X32_Y22_N19
\i_serial_uart|rx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[7]~24_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(7));

-- Location: LCCOMB_X32_Y22_N20
\i_serial_uart|rx_bit_cnt[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[8]~26_combout\ = \i_serial_uart|rx_bit_cnt\(8) $ (!\i_serial_uart|rx_bit_cnt[7]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(8),
	cin => \i_serial_uart|rx_bit_cnt[7]~25\,
	combout => \i_serial_uart|rx_bit_cnt[8]~26_combout\);

-- Location: LCFF_X32_Y22_N21
\i_serial_uart|rx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[8]~26_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(8));

-- Location: LCCOMB_X33_Y22_N0
\i_serial_uart|rx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_no~0_combout\ = (\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|rx_bit_cnt_wrap~regout\ & ((!\i_serial_uart|rx_bit_no\(2)) # (!\i_serial_uart|rx_bit_no\(1))))) # (!\i_serial_uart|rx_bit_no\(0) & 
-- (((!\i_serial_uart|rx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|rx_bit_no\(2),
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|rx_bit_no~0_combout\);

-- Location: LCCOMB_X33_Y22_N2
\i_serial_uart|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector14~0_combout\ = (\i_serial_uart|rx_state.s_stop_bit~regout\ & ((\i_serial_uart|rx_bit_no\(0)) # ((\i_serial_uart|rx_state.s_rx_data~regout\ & !\i_serial_uart|rx_bit_no~0_combout\)))) # (!\i_serial_uart|rx_state.s_stop_bit~regout\ & 
-- (\i_serial_uart|rx_state.s_rx_data~regout\ & ((!\i_serial_uart|rx_bit_no~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_bit_no~0_combout\,
	combout => \i_serial_uart|Selector14~0_combout\);

-- Location: LCFF_X33_Y22_N3
\i_serial_uart|rx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(0));

-- Location: LCCOMB_X33_Y22_N14
\i_serial_uart|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector12~0_combout\ = (\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|rx_state.s_rx_data~regout\ & \i_serial_uart|rx_bit_cnt_wrap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector12~0_combout\);

-- Location: LCCOMB_X33_Y22_N8
\i_serial_uart|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector12~1_combout\ = (\i_serial_uart|Selector12~0_combout\) # ((\i_serial_uart|rx_bit_no\(2) & ((\i_serial_uart|rx_state.s_stop_bit~regout\) # (\i_serial_uart|rx_state.s_rx_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_no\(2),
	datad => \i_serial_uart|Selector12~0_combout\,
	combout => \i_serial_uart|Selector12~1_combout\);

-- Location: LCFF_X33_Y22_N9
\i_serial_uart|rx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(2));

-- Location: LCCOMB_X33_Y22_N6
\i_serial_uart|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Equal0~0_combout\ = (\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_no\(2) & \i_serial_uart|rx_bit_no\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datac => \i_serial_uart|rx_bit_no\(2),
	datad => \i_serial_uart|rx_bit_no\(0),
	combout => \i_serial_uart|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y22_N4
\i_serial_uart|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector2~1_combout\ = (\i_serial_uart|Selector2~0_combout\) # ((\i_serial_uart|rx_state.s_rx_data~regout\ & ((!\i_serial_uart|Equal0~0_combout\) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector2~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|Equal0~0_combout\,
	combout => \i_serial_uart|Selector2~1_combout\);

-- Location: LCFF_X33_Y22_N5
\i_serial_uart|rx_state.s_rx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector2~1_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_rx_data~regout\);

-- Location: LCCOMB_X33_Y22_N10
\i_serial_uart|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector4~3_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & (\i_serial_uart|Equal0~0_combout\ & (\i_serial_uart|rx_state.s_rx_data~regout\))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & 
-- (((\i_serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Equal0~0_combout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector4~3_combout\);

-- Location: LCFF_X33_Y22_N11
\i_serial_uart|rx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector4~3_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X33_Y22_N18
\i_serial_uart|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector1~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_stop_bit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector1~0_combout\);

-- Location: LCCOMB_X32_Y22_N28
\i_serial_uart|rx_bit_cnt_half~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~1_combout\ = (\i_serial_uart|rx_bit_cnt_en~regout\ & ((\i_serial_uart|rx_bit_cnt\(8)) # ((\i_serial_uart|rx_bit_cnt_half~0_combout\ & \i_serial_uart|rx_bit_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_half~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt\(7),
	datac => \i_serial_uart|rx_bit_cnt\(8),
	datad => \i_serial_uart|rx_bit_cnt_en~regout\,
	combout => \i_serial_uart|rx_bit_cnt_half~1_combout\);

-- Location: LCFF_X32_Y22_N29
\i_serial_uart|rx_bit_cnt_half\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_half~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_half~regout\);

-- Location: LCCOMB_X33_Y22_N16
\i_serial_uart|rx_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_state~10_combout\ = (!\i_serial_uart|reset_2r~regout\ & (!\i_serial_uart|Selector1~0_combout\ & ((\i_serial_uart|rx_bit_cnt_half~regout\) # (\i_serial_uart|rx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datab => \i_serial_uart|rx_bit_cnt_half~regout\,
	datac => \i_serial_uart|rx_state.s_idle~regout\,
	datad => \i_serial_uart|Selector1~0_combout\,
	combout => \i_serial_uart|rx_state~10_combout\);

-- Location: LCFF_X33_Y22_N17
\i_serial_uart|rx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_idle~regout\);

-- Location: LCCOMB_X33_Y22_N30
\i_serial_uart|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector0~0_combout\ = (!\i_serial_uart|Selector1~0_combout\ & ((\i_serial_uart|rx_state.s_idle~regout\) # ((!\i_serial_uart|rx_2r~regout\ & !\i_serial_uart|rx_bit_cnt_half~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datab => \i_serial_uart|Selector1~0_combout\,
	datac => \i_serial_uart|rx_state.s_idle~regout\,
	datad => \i_serial_uart|rx_bit_cnt_half~regout\,
	combout => \i_serial_uart|Selector0~0_combout\);

-- Location: LCFF_X33_Y22_N31
\i_serial_uart|rx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_en~regout\);

-- Location: LCCOMB_X32_Y22_N26
\i_serial_uart|rx_bit_cnt[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[3]~11_combout\ = ((\i_serial_uart|rx_bit_cnt\(7) & (!\i_serial_uart|LessThan0~1_combout\ & \i_serial_uart|rx_bit_cnt\(8)))) # (!\i_serial_uart|rx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(7),
	datab => \i_serial_uart|LessThan0~1_combout\,
	datac => \i_serial_uart|rx_bit_cnt\(8),
	datad => \i_serial_uart|rx_bit_cnt_en~regout\,
	combout => \i_serial_uart|rx_bit_cnt[3]~11_combout\);

-- Location: LCFF_X32_Y22_N5
\i_serial_uart|rx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[0]~9_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(0));

-- Location: LCCOMB_X32_Y22_N6
\i_serial_uart|rx_bit_cnt[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[1]~12_combout\ = (\i_serial_uart|rx_bit_cnt\(1) & (!\i_serial_uart|rx_bit_cnt[0]~10\)) # (!\i_serial_uart|rx_bit_cnt\(1) & ((\i_serial_uart|rx_bit_cnt[0]~10\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[1]~13\ = CARRY((!\i_serial_uart|rx_bit_cnt[0]~10\) # (!\i_serial_uart|rx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(1),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[0]~10\,
	combout => \i_serial_uart|rx_bit_cnt[1]~12_combout\,
	cout => \i_serial_uart|rx_bit_cnt[1]~13\);

-- Location: LCFF_X32_Y22_N9
\i_serial_uart|rx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[2]~14_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(2));

-- Location: LCFF_X32_Y22_N7
\i_serial_uart|rx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[1]~12_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(1));

-- Location: LCCOMB_X32_Y22_N2
\i_serial_uart|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~0_combout\ = (!\i_serial_uart|rx_bit_cnt\(3) & (!\i_serial_uart|rx_bit_cnt\(2) & (!\i_serial_uart|rx_bit_cnt\(0) & !\i_serial_uart|rx_bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(3),
	datab => \i_serial_uart|rx_bit_cnt\(2),
	datac => \i_serial_uart|rx_bit_cnt\(0),
	datad => \i_serial_uart|rx_bit_cnt\(1),
	combout => \i_serial_uart|LessThan0~0_combout\);

-- Location: LCFF_X32_Y22_N13
\i_serial_uart|rx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[4]~18_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(4));

-- Location: LCCOMB_X32_Y22_N30
\i_serial_uart|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~1_combout\ = (!\i_serial_uart|rx_bit_cnt\(6) & ((\i_serial_uart|LessThan0~0_combout\) # ((!\i_serial_uart|rx_bit_cnt\(4)) # (!\i_serial_uart|rx_bit_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(6),
	datab => \i_serial_uart|LessThan0~0_combout\,
	datac => \i_serial_uart|rx_bit_cnt\(5),
	datad => \i_serial_uart|rx_bit_cnt\(4),
	combout => \i_serial_uart|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y22_N24
\i_serial_uart|rx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_wrap~0_combout\ = (\i_serial_uart|rx_bit_cnt\(7) & (!\i_serial_uart|LessThan0~1_combout\ & (\i_serial_uart|rx_bit_cnt\(8) & \i_serial_uart|rx_bit_cnt_en~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(7),
	datab => \i_serial_uart|LessThan0~1_combout\,
	datac => \i_serial_uart|rx_bit_cnt\(8),
	datad => \i_serial_uart|rx_bit_cnt_en~regout\,
	combout => \i_serial_uart|rx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X32_Y22_N25
\i_serial_uart|rx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X32_Y22_N0
\i_serial_uart|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector4~2_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_rx_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector4~2_combout\);

-- Location: LCCOMB_X33_Y22_N28
\i_serial_uart|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector10~0_combout\ = (\i_serial_uart|rx_state.s_stop_bit~regout\) # ((!\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_rx_data~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector10~0_combout\);

-- Location: LCCOMB_X31_Y22_N18
\i_serial_uart|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector9~0_combout\ = (\i_serial_uart|rx_byte_int\(3) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(2) & \i_serial_uart|Selector10~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(3) & 
-- (((\i_serial_uart|rx_byte_int\(2) & \i_serial_uart|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(3),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(2),
	datad => \i_serial_uart|Selector10~0_combout\,
	combout => \i_serial_uart|Selector9~0_combout\);

-- Location: LCFF_X31_Y22_N19
\i_serial_uart|rx_byte_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(2));

-- Location: LCCOMB_X31_Y22_N8
\i_serial_uart|received_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~2_combout\ = (!\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(2),
	combout => \i_serial_uart|received_data~2_combout\);

-- Location: LCCOMB_X29_Y22_N16
\i_serial_uart|received_data[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data[1]~10_combout\ = (\i_serial_uart|reset_2r~regout\) # ((\i_serial_uart|rx_bit_cnt_wrap~regout\ & (\i_serial_uart|Equal0~0_combout\ & \i_serial_uart|rx_state.s_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|Equal0~0_combout\,
	datac => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|received_data[1]~10_combout\);

-- Location: LCFF_X31_Y22_N9
\i_serial_uart|received_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~2_combout\,
	ena => \i_serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(2));

-- Location: LCCOMB_X31_Y22_N14
\i_serial_uart|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector8~0_combout\ = (\i_serial_uart|rx_byte_int\(4) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(3) & \i_serial_uart|Selector10~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(4) & 
-- (((\i_serial_uart|rx_byte_int\(3) & \i_serial_uart|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(4),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(3),
	datad => \i_serial_uart|Selector10~0_combout\,
	combout => \i_serial_uart|Selector8~0_combout\);

-- Location: LCFF_X31_Y22_N15
\i_serial_uart|rx_byte_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(3));

-- Location: LCCOMB_X31_Y22_N20
\i_serial_uart|received_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~4_combout\ = (!\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|reset_2r~regout\,
	datac => \i_serial_uart|rx_byte_int\(3),
	combout => \i_serial_uart|received_data~4_combout\);

-- Location: LCFF_X31_Y22_N21
\i_serial_uart|received_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~4_combout\,
	ena => \i_serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(3));

-- Location: LCCOMB_X31_Y22_N12
\i_serial_uart|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector10~1_combout\ = (\i_serial_uart|rx_byte_int\(2) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(1) & \i_serial_uart|Selector10~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(2) & 
-- (((\i_serial_uart|rx_byte_int\(1) & \i_serial_uart|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(2),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(1),
	datad => \i_serial_uart|Selector10~0_combout\,
	combout => \i_serial_uart|Selector10~1_combout\);

-- Location: LCFF_X31_Y22_N13
\i_serial_uart|rx_byte_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(1));

-- Location: LCCOMB_X31_Y22_N26
\i_serial_uart|received_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~3_combout\ = (!\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(1),
	combout => \i_serial_uart|received_data~3_combout\);

-- Location: LCFF_X31_Y22_N27
\i_serial_uart|received_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~3_combout\,
	ena => \i_serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(1));

-- Location: LCCOMB_X31_Y22_N24
\i_serial_ctrl|serial_up_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|serial_up_out~0_combout\ = (!\i_serial_uart|received_data\(7) & (\i_serial_uart|received_data\(2) & (!\i_serial_uart|received_data\(3) & !\i_serial_uart|received_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(7),
	datab => \i_serial_uart|received_data\(2),
	datac => \i_serial_uart|received_data\(3),
	datad => \i_serial_uart|received_data\(1),
	combout => \i_serial_ctrl|serial_up_out~0_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fpga_in_rx~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_fpga_in_rx,
	combout => \fpga_in_rx~combout\);

-- Location: LCCOMB_X35_Y22_N2
\i_serial_uart|rx_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_r~feeder_combout\ = \fpga_in_rx~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fpga_in_rx~combout\,
	combout => \i_serial_uart|rx_r~feeder_combout\);

-- Location: LCFF_X35_Y22_N3
\i_serial_uart|rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_r~regout\);

-- Location: LCCOMB_X35_Y22_N8
\i_serial_uart|rx_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_2r~feeder_combout\ = \i_serial_uart|rx_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|rx_r~regout\,
	combout => \i_serial_uart|rx_2r~feeder_combout\);

-- Location: LCFF_X35_Y22_N9
\i_serial_uart|rx_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_2r~regout\);

-- Location: LCCOMB_X33_Y22_N26
\i_serial_uart|received_valid~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_valid~0_combout\ = (\i_serial_uart|rx_state.s_stop_bit~regout\ & (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_2r~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_2r~regout\,
	combout => \i_serial_uart|received_valid~0_combout\);

-- Location: LCFF_X33_Y22_N27
\i_serial_uart|received_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_valid~regout\);

-- Location: LCCOMB_X30_Y22_N8
\i_serial_ctrl|serial_up_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|serial_up_out~1_combout\ = (\i_serial_uart|received_data\(6) & (\i_serial_ctrl|serial_up_out~0_combout\ & \i_serial_uart|received_valid~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(6),
	datab => \i_serial_ctrl|serial_up_out~0_combout\,
	datad => \i_serial_uart|received_valid~regout\,
	combout => \i_serial_ctrl|serial_up_out~1_combout\);

-- Location: LCCOMB_X31_Y22_N28
\i_serial_uart|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector7~0_combout\ = (\i_serial_uart|rx_byte_int\(5) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(4) & \i_serial_uart|Selector10~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(5) & 
-- (((\i_serial_uart|rx_byte_int\(4) & \i_serial_uart|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(5),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(4),
	datad => \i_serial_uart|Selector10~0_combout\,
	combout => \i_serial_uart|Selector7~0_combout\);

-- Location: LCFF_X31_Y22_N29
\i_serial_uart|rx_byte_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(4));

-- Location: LCCOMB_X31_Y22_N30
\i_serial_uart|received_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~8_combout\ = (!\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(4),
	combout => \i_serial_uart|received_data~8_combout\);

-- Location: LCFF_X31_Y22_N31
\i_serial_uart|received_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~8_combout\,
	ena => \i_serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(4));

-- Location: LCCOMB_X30_Y22_N26
\i_serial_ctrl|serial_up_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|serial_up_out~2_combout\ = (\i_serial_ctrl|serial_up_out~regout\) # ((\i_serial_uart|received_data\(0) & (\i_serial_ctrl|serial_up_out~1_combout\ & \i_serial_uart|received_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(0),
	datab => \i_serial_ctrl|serial_up_out~1_combout\,
	datac => \i_serial_ctrl|serial_up_out~regout\,
	datad => \i_serial_uart|received_data\(4),
	combout => \i_serial_ctrl|serial_up_out~2_combout\);

-- Location: LCFF_X30_Y22_N27
\i_serial_ctrl|serial_up_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_ctrl|serial_up_out~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_ctrl|serial_up_out~regout\);

-- Location: LCCOMB_X33_Y14_N14
\i_key_ctrl|ten_ms_off_cnt[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[0]~19_combout\ = \i_key_ctrl|ten_ms_off_cnt\(0) $ (VCC)
-- \i_key_ctrl|ten_ms_off_cnt[0]~20\ = CARRY(\i_key_ctrl|ten_ms_off_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(0),
	datad => VCC,
	combout => \i_key_ctrl|ten_ms_off_cnt[0]~19_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[0]~20\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_n[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_n(0),
	combout => \key_n~combout\(0));

-- Location: LCCOMB_X34_Y14_N18
\i_key_ctrl|key_off_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_off_r~feeder_combout\ = \key_n~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(0),
	combout => \i_key_ctrl|key_off_r~feeder_combout\);

-- Location: LCFF_X34_Y14_N19
\i_key_ctrl|key_off_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_off_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_off_r~regout\);

-- Location: LCFF_X34_Y14_N31
\i_key_ctrl|key_off_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_key_ctrl|key_off_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_off_2r~regout\);

-- Location: LCCOMB_X33_Y14_N6
\i_key_ctrl|ten_ms_off_cnt[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\ = (\i_key_ctrl|key_off_out~2_combout\) # (\i_key_ctrl|key_off_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl|key_off_out~2_combout\,
	datad => \i_key_ctrl|key_off_2r~regout\,
	combout => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\);

-- Location: LCFF_X33_Y14_N15
\i_key_ctrl|ten_ms_off_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[0]~19_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(0));

-- Location: LCCOMB_X33_Y14_N18
\i_key_ctrl|ten_ms_off_cnt[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[2]~23_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(2) & (\i_key_ctrl|ten_ms_off_cnt[1]~22\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(2) & (!\i_key_ctrl|ten_ms_off_cnt[1]~22\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[2]~24\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(2) & !\i_key_ctrl|ten_ms_off_cnt[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(2),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[1]~22\,
	combout => \i_key_ctrl|ten_ms_off_cnt[2]~23_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[2]~24\);

-- Location: LCFF_X33_Y14_N19
\i_key_ctrl|ten_ms_off_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[2]~23_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(2));

-- Location: LCCOMB_X33_Y14_N22
\i_key_ctrl|ten_ms_off_cnt[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[4]~27_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(4) & (\i_key_ctrl|ten_ms_off_cnt[3]~26\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(4) & (!\i_key_ctrl|ten_ms_off_cnt[3]~26\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[4]~28\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(4) & !\i_key_ctrl|ten_ms_off_cnt[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(4),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[3]~26\,
	combout => \i_key_ctrl|ten_ms_off_cnt[4]~27_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[4]~28\);

-- Location: LCFF_X33_Y14_N23
\i_key_ctrl|ten_ms_off_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[4]~27_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(4));

-- Location: LCCOMB_X33_Y14_N24
\i_key_ctrl|ten_ms_off_cnt[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[5]~29_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(5) & (!\i_key_ctrl|ten_ms_off_cnt[4]~28\)) # (!\i_key_ctrl|ten_ms_off_cnt\(5) & ((\i_key_ctrl|ten_ms_off_cnt[4]~28\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[5]~30\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[4]~28\) # (!\i_key_ctrl|ten_ms_off_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(5),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[4]~28\,
	combout => \i_key_ctrl|ten_ms_off_cnt[5]~29_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[5]~30\);

-- Location: LCCOMB_X33_Y14_N26
\i_key_ctrl|ten_ms_off_cnt[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[6]~31_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(6) & (\i_key_ctrl|ten_ms_off_cnt[5]~30\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(6) & (!\i_key_ctrl|ten_ms_off_cnt[5]~30\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[6]~32\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(6) & !\i_key_ctrl|ten_ms_off_cnt[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(6),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[5]~30\,
	combout => \i_key_ctrl|ten_ms_off_cnt[6]~31_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[6]~32\);

-- Location: LCFF_X33_Y14_N27
\i_key_ctrl|ten_ms_off_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[6]~31_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(6));

-- Location: LCCOMB_X33_Y14_N28
\i_key_ctrl|ten_ms_off_cnt[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[7]~33_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(7) & (!\i_key_ctrl|ten_ms_off_cnt[6]~32\)) # (!\i_key_ctrl|ten_ms_off_cnt\(7) & ((\i_key_ctrl|ten_ms_off_cnt[6]~32\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[7]~34\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[6]~32\) # (!\i_key_ctrl|ten_ms_off_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(7),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[6]~32\,
	combout => \i_key_ctrl|ten_ms_off_cnt[7]~33_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[7]~34\);

-- Location: LCFF_X33_Y14_N29
\i_key_ctrl|ten_ms_off_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[7]~33_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(7));

-- Location: LCCOMB_X33_Y14_N30
\i_key_ctrl|ten_ms_off_cnt[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[8]~35_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(8) & (\i_key_ctrl|ten_ms_off_cnt[7]~34\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(8) & (!\i_key_ctrl|ten_ms_off_cnt[7]~34\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[8]~36\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(8) & !\i_key_ctrl|ten_ms_off_cnt[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(8),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[7]~34\,
	combout => \i_key_ctrl|ten_ms_off_cnt[8]~35_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[8]~36\);

-- Location: LCFF_X33_Y14_N31
\i_key_ctrl|ten_ms_off_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[8]~35_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(8));

-- Location: LCCOMB_X33_Y13_N0
\i_key_ctrl|ten_ms_off_cnt[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[9]~37_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(9) & (!\i_key_ctrl|ten_ms_off_cnt[8]~36\)) # (!\i_key_ctrl|ten_ms_off_cnt\(9) & ((\i_key_ctrl|ten_ms_off_cnt[8]~36\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[9]~38\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[8]~36\) # (!\i_key_ctrl|ten_ms_off_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(9),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[8]~36\,
	combout => \i_key_ctrl|ten_ms_off_cnt[9]~37_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[9]~38\);

-- Location: LCFF_X33_Y13_N1
\i_key_ctrl|ten_ms_off_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[9]~37_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(9));

-- Location: LCCOMB_X33_Y13_N2
\i_key_ctrl|ten_ms_off_cnt[10]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[10]~39_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(10) & (\i_key_ctrl|ten_ms_off_cnt[9]~38\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(10) & (!\i_key_ctrl|ten_ms_off_cnt[9]~38\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[10]~40\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(10) & !\i_key_ctrl|ten_ms_off_cnt[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(10),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[9]~38\,
	combout => \i_key_ctrl|ten_ms_off_cnt[10]~39_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[10]~40\);

-- Location: LCFF_X33_Y13_N3
\i_key_ctrl|ten_ms_off_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[10]~39_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(10));

-- Location: LCCOMB_X33_Y13_N4
\i_key_ctrl|ten_ms_off_cnt[11]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[11]~41_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(11) & (!\i_key_ctrl|ten_ms_off_cnt[10]~40\)) # (!\i_key_ctrl|ten_ms_off_cnt\(11) & ((\i_key_ctrl|ten_ms_off_cnt[10]~40\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[11]~42\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[10]~40\) # (!\i_key_ctrl|ten_ms_off_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(11),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[10]~40\,
	combout => \i_key_ctrl|ten_ms_off_cnt[11]~41_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[11]~42\);

-- Location: LCFF_X33_Y13_N5
\i_key_ctrl|ten_ms_off_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[11]~41_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(11));

-- Location: LCCOMB_X33_Y13_N28
\i_key_ctrl|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal0~1_combout\ = (!\i_key_ctrl|ten_ms_off_cnt\(12) & (!\i_key_ctrl|ten_ms_off_cnt\(10) & (!\i_key_ctrl|ten_ms_off_cnt\(11) & !\i_key_ctrl|ten_ms_off_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(12),
	datab => \i_key_ctrl|ten_ms_off_cnt\(10),
	datac => \i_key_ctrl|ten_ms_off_cnt\(11),
	datad => \i_key_ctrl|ten_ms_off_cnt\(9),
	combout => \i_key_ctrl|Equal0~1_combout\);

-- Location: LCFF_X33_Y14_N25
\i_key_ctrl|ten_ms_off_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[5]~29_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(5));

-- Location: LCCOMB_X33_Y14_N8
\i_key_ctrl|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal0~0_combout\ = (!\i_key_ctrl|ten_ms_off_cnt\(7) & (!\i_key_ctrl|ten_ms_off_cnt\(5) & !\i_key_ctrl|ten_ms_off_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(7),
	datac => \i_key_ctrl|ten_ms_off_cnt\(5),
	datad => \i_key_ctrl|ten_ms_off_cnt\(6),
	combout => \i_key_ctrl|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y13_N30
\i_key_ctrl|key_off_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_off_out~0_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(14)) # (((\i_key_ctrl|ten_ms_off_cnt\(8) & !\i_key_ctrl|Equal0~0_combout\)) # (!\i_key_ctrl|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(14),
	datab => \i_key_ctrl|Equal0~1_combout\,
	datac => \i_key_ctrl|ten_ms_off_cnt\(8),
	datad => \i_key_ctrl|Equal0~0_combout\,
	combout => \i_key_ctrl|key_off_out~0_combout\);

-- Location: LCCOMB_X33_Y13_N8
\i_key_ctrl|ten_ms_off_cnt[13]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[13]~45_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(13) & (!\i_key_ctrl|ten_ms_off_cnt[12]~44\)) # (!\i_key_ctrl|ten_ms_off_cnt\(13) & ((\i_key_ctrl|ten_ms_off_cnt[12]~44\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[13]~46\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[12]~44\) # (!\i_key_ctrl|ten_ms_off_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(13),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[12]~44\,
	combout => \i_key_ctrl|ten_ms_off_cnt[13]~45_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[13]~46\);

-- Location: LCFF_X33_Y13_N9
\i_key_ctrl|ten_ms_off_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[13]~45_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(13));

-- Location: LCCOMB_X33_Y13_N14
\i_key_ctrl|ten_ms_off_cnt[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[16]~52_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(16) & (\i_key_ctrl|ten_ms_off_cnt[15]~51\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(16) & (!\i_key_ctrl|ten_ms_off_cnt[15]~51\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[16]~53\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(16) & !\i_key_ctrl|ten_ms_off_cnt[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(16),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[15]~51\,
	combout => \i_key_ctrl|ten_ms_off_cnt[16]~52_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[16]~53\);

-- Location: LCFF_X33_Y13_N15
\i_key_ctrl|ten_ms_off_cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[16]~52_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(16));

-- Location: LCCOMB_X33_Y13_N16
\i_key_ctrl|ten_ms_off_cnt[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[17]~54_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(17) & (!\i_key_ctrl|ten_ms_off_cnt[16]~53\)) # (!\i_key_ctrl|ten_ms_off_cnt\(17) & ((\i_key_ctrl|ten_ms_off_cnt[16]~53\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[17]~55\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[16]~53\) # (!\i_key_ctrl|ten_ms_off_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(17),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[16]~53\,
	combout => \i_key_ctrl|ten_ms_off_cnt[17]~54_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[17]~55\);

-- Location: LCFF_X33_Y13_N17
\i_key_ctrl|ten_ms_off_cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[17]~54_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(17));

-- Location: LCCOMB_X33_Y13_N18
\i_key_ctrl|ten_ms_off_cnt[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[18]~56_combout\ = \i_key_ctrl|ten_ms_off_cnt[17]~55\ $ (!\i_key_ctrl|ten_ms_off_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|ten_ms_off_cnt\(18),
	cin => \i_key_ctrl|ten_ms_off_cnt[17]~55\,
	combout => \i_key_ctrl|ten_ms_off_cnt[18]~56_combout\);

-- Location: LCFF_X33_Y13_N19
\i_key_ctrl|ten_ms_off_cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[18]~56_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[13]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(18));

-- Location: LCCOMB_X33_Y13_N26
\i_key_ctrl|key_off_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_off_out~2_combout\ = (\i_key_ctrl|key_off_out~1_combout\ & (\i_key_ctrl|key_off_out~0_combout\ & (\i_key_ctrl|ten_ms_off_cnt\(17) & \i_key_ctrl|ten_ms_off_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_off_out~1_combout\,
	datab => \i_key_ctrl|key_off_out~0_combout\,
	datac => \i_key_ctrl|ten_ms_off_cnt\(17),
	datad => \i_key_ctrl|ten_ms_off_cnt\(18),
	combout => \i_key_ctrl|key_off_out~2_combout\);

-- Location: LCCOMB_X34_Y14_N12
\i_key_ctrl|key_off_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_off_out~3_combout\ = (\i_key_ctrl|key_off_out~regout\ & (\i_key_ctrl|key_in_states~regout\)) # (!\i_key_ctrl|key_off_out~regout\ & (!\i_key_ctrl|key_off_2r~regout\ & ((\i_key_ctrl|key_in_states~regout\) # 
-- (\i_key_ctrl|key_off_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_in_states~regout\,
	datab => \i_key_ctrl|key_off_out~2_combout\,
	datac => \i_key_ctrl|key_off_out~regout\,
	datad => \i_key_ctrl|key_off_2r~regout\,
	combout => \i_key_ctrl|key_off_out~3_combout\);

-- Location: LCFF_X34_Y14_N13
\i_key_ctrl|key_off_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_off_out~3_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_off_out~regout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_n[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_n(3),
	combout => \key_n~combout\(3));

-- Location: LCCOMB_X34_Y14_N8
\i_key_ctrl|key_up_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_up_r~feeder_combout\ = \key_n~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(3),
	combout => \i_key_ctrl|key_up_r~feeder_combout\);

-- Location: LCFF_X34_Y14_N9
\i_key_ctrl|key_up_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_up_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_up_r~regout\);

-- Location: LCFF_X34_Y14_N15
\i_key_ctrl|key_up_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_key_ctrl|key_up_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_up_2r~regout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_n[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_n(2),
	combout => \key_n~combout\(2));

-- Location: LCCOMB_X34_Y14_N24
\i_key_ctrl|key_down_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_down_r~feeder_combout\ = \key_n~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(2),
	combout => \i_key_ctrl|key_down_r~feeder_combout\);

-- Location: LCFF_X34_Y14_N25
\i_key_ctrl|key_down_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_down_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_down_r~regout\);

-- Location: LCFF_X34_Y14_N3
\i_key_ctrl|key_down_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_key_ctrl|key_down_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_down_2r~regout\);

-- Location: LCCOMB_X34_Y14_N2
\i_key_ctrl|key_up_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_up_out~0_combout\ = (\i_key_ctrl|key_in_states~regout\ & ((\i_key_ctrl|key_up_out~regout\) # ((\i_key_ctrl|key_down_2r~regout\ & \i_key_ctrl|key_off_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_in_states~regout\,
	datab => \i_key_ctrl|key_up_out~regout\,
	datac => \i_key_ctrl|key_down_2r~regout\,
	datad => \i_key_ctrl|key_off_2r~regout\,
	combout => \i_key_ctrl|key_up_out~0_combout\);

-- Location: LCCOMB_X34_Y14_N22
\i_key_ctrl|key_up_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_up_out~1_combout\ = (\i_key_ctrl|key_up_out~regout\ & (((\i_key_ctrl|key_up_out~0_combout\)))) # (!\i_key_ctrl|key_up_out~regout\ & (!\i_key_ctrl|key_up_2r~regout\ & ((\i_key_ctrl|key_up_out~0_combout\) # 
-- (!\i_key_ctrl|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|LessThan3~2_combout\,
	datab => \i_key_ctrl|key_up_2r~regout\,
	datac => \i_key_ctrl|key_up_out~regout\,
	datad => \i_key_ctrl|key_up_out~0_combout\,
	combout => \i_key_ctrl|key_up_out~1_combout\);

-- Location: LCFF_X34_Y14_N23
\i_key_ctrl|key_up_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_up_out~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_up_out~regout\);

-- Location: LCCOMB_X30_Y22_N2
\i_pwm_ctrl|pwm_state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~21_combout\ = (\i_key_ctrl|key_up_out~regout\) # ((!\i_key_ctrl|key_down_out~regout\ & (\i_serial_ctrl|serial_up_out~regout\ & !\i_key_ctrl|key_off_out~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_down_out~regout\,
	datab => \i_serial_ctrl|serial_up_out~regout\,
	datac => \i_key_ctrl|key_off_out~regout\,
	datad => \i_key_ctrl|key_up_out~regout\,
	combout => \i_pwm_ctrl|pwm_state~21_combout\);

-- Location: LCCOMB_X29_Y23_N10
\i_pwm_ctrl|pwm_state~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~24_combout\ = (\i_pwm_ctrl|pwm_state~23_combout\ & \i_pwm_ctrl|pwm_state~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state~23_combout\,
	datac => \i_pwm_ctrl|pwm_state~21_combout\,
	combout => \i_pwm_ctrl|pwm_state~24_combout\);

-- Location: LCFF_X29_Y23_N11
\i_pwm_ctrl|pwm_state.s_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|pwm_state~24_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_up~regout\);

-- Location: LCCOMB_X21_Y23_N12
\i_pwm_ctrl|new_dc[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[1]~10_combout\ = (\i_pwm_ctrl|new_dc\(1) & (\i_pwm_ctrl|new_dc[0]~9\ & VCC)) # (!\i_pwm_ctrl|new_dc\(1) & (!\i_pwm_ctrl|new_dc[0]~9\))
-- \i_pwm_ctrl|new_dc[1]~11\ = CARRY((!\i_pwm_ctrl|new_dc\(1) & !\i_pwm_ctrl|new_dc[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(1),
	datad => VCC,
	cin => \i_pwm_ctrl|new_dc[0]~9\,
	combout => \i_pwm_ctrl|new_dc[1]~10_combout\,
	cout => \i_pwm_ctrl|new_dc[1]~11\);

-- Location: LCCOMB_X21_Y23_N14
\i_pwm_ctrl|new_dc[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[2]~12_combout\ = (\i_pwm_ctrl|new_dc\(2) & ((GND) # (!\i_pwm_ctrl|new_dc[1]~11\))) # (!\i_pwm_ctrl|new_dc\(2) & (\i_pwm_ctrl|new_dc[1]~11\ $ (GND)))
-- \i_pwm_ctrl|new_dc[2]~13\ = CARRY((\i_pwm_ctrl|new_dc\(2)) # (!\i_pwm_ctrl|new_dc[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(2),
	datad => VCC,
	cin => \i_pwm_ctrl|new_dc[1]~11\,
	combout => \i_pwm_ctrl|new_dc[2]~12_combout\,
	cout => \i_pwm_ctrl|new_dc[2]~13\);

-- Location: LCCOMB_X21_Y23_N16
\i_pwm_ctrl|new_dc[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[3]~14_combout\ = (\i_pwm_ctrl|new_dc\(3) & (\i_pwm_ctrl|new_dc[2]~13\ & VCC)) # (!\i_pwm_ctrl|new_dc\(3) & (!\i_pwm_ctrl|new_dc[2]~13\))
-- \i_pwm_ctrl|new_dc[3]~15\ = CARRY((!\i_pwm_ctrl|new_dc\(3) & !\i_pwm_ctrl|new_dc[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(3),
	datad => VCC,
	cin => \i_pwm_ctrl|new_dc[2]~13\,
	combout => \i_pwm_ctrl|new_dc[3]~14_combout\,
	cout => \i_pwm_ctrl|new_dc[3]~15\);

-- Location: LCCOMB_X21_Y23_N18
\i_pwm_ctrl|new_dc[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[4]~19_combout\ = (\i_pwm_ctrl|new_dc\(4) & ((GND) # (!\i_pwm_ctrl|new_dc[3]~15\))) # (!\i_pwm_ctrl|new_dc\(4) & (\i_pwm_ctrl|new_dc[3]~15\ $ (GND)))
-- \i_pwm_ctrl|new_dc[4]~20\ = CARRY((\i_pwm_ctrl|new_dc\(4)) # (!\i_pwm_ctrl|new_dc[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|new_dc[3]~15\,
	combout => \i_pwm_ctrl|new_dc[4]~19_combout\,
	cout => \i_pwm_ctrl|new_dc[4]~20\);

-- Location: LCCOMB_X20_Y23_N14
\i_pwm_ctrl|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~4_combout\ = (\i_pwm_ctrl|new_dc\(2) & (\i_pwm_ctrl|Add1~3\ $ (GND))) # (!\i_pwm_ctrl|new_dc\(2) & (!\i_pwm_ctrl|Add1~3\ & VCC))
-- \i_pwm_ctrl|Add1~5\ = CARRY((\i_pwm_ctrl|new_dc\(2) & !\i_pwm_ctrl|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(2),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~3\,
	combout => \i_pwm_ctrl|Add1~4_combout\,
	cout => \i_pwm_ctrl|Add1~5\);

-- Location: LCCOMB_X20_Y23_N18
\i_pwm_ctrl|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~8_combout\ = (\i_pwm_ctrl|new_dc\(4) & (\i_pwm_ctrl|Add1~7\ $ (GND))) # (!\i_pwm_ctrl|new_dc\(4) & (!\i_pwm_ctrl|Add1~7\ & VCC))
-- \i_pwm_ctrl|Add1~9\ = CARRY((\i_pwm_ctrl|new_dc\(4) & !\i_pwm_ctrl|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~7\,
	combout => \i_pwm_ctrl|Add1~8_combout\,
	cout => \i_pwm_ctrl|Add1~9\);

-- Location: LCFF_X19_Y23_N19
\i_pwm_ctrl|previous_dc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_pwm_ctrl|new_dc\(4),
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \i_pwm_ctrl|previous_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|previous_dc\(4));

-- Location: LCCOMB_X20_Y23_N4
\i_pwm_ctrl|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector3~0_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & (((\i_pwm_ctrl|Add1~8_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_up~regout\ & (\i_pwm_ctrl|pwm_state.s_on~regout\ & ((\i_pwm_ctrl|previous_dc\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_on~regout\,
	datab => \i_pwm_ctrl|Add1~8_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|previous_dc\(4),
	combout => \i_pwm_ctrl|Selector3~0_combout\);

-- Location: LCCOMB_X29_Y23_N28
\i_pwm_ctrl|pwm_state~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~25_combout\ = (\i_pwm_ctrl|pwm_state~23_combout\ & !\i_pwm_ctrl|pwm_state~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state~23_combout\,
	datac => \i_pwm_ctrl|pwm_state~21_combout\,
	combout => \i_pwm_ctrl|pwm_state~25_combout\);

-- Location: LCFF_X29_Y23_N29
\i_pwm_ctrl|pwm_state.s_down\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|pwm_state~25_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_down~regout\);

-- Location: LCCOMB_X21_Y23_N20
\i_pwm_ctrl|new_dc[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[5]~21_combout\ = (\i_pwm_ctrl|new_dc\(5) & (\i_pwm_ctrl|new_dc[4]~20\ & VCC)) # (!\i_pwm_ctrl|new_dc\(5) & (!\i_pwm_ctrl|new_dc[4]~20\))
-- \i_pwm_ctrl|new_dc[5]~22\ = CARRY((!\i_pwm_ctrl|new_dc\(5) & !\i_pwm_ctrl|new_dc[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(5),
	datad => VCC,
	cin => \i_pwm_ctrl|new_dc[4]~20\,
	combout => \i_pwm_ctrl|new_dc[5]~21_combout\,
	cout => \i_pwm_ctrl|new_dc[5]~22\);

-- Location: LCCOMB_X21_Y23_N22
\i_pwm_ctrl|new_dc[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[6]~23_combout\ = (\i_pwm_ctrl|new_dc\(6) & ((GND) # (!\i_pwm_ctrl|new_dc[5]~22\))) # (!\i_pwm_ctrl|new_dc\(6) & (\i_pwm_ctrl|new_dc[5]~22\ $ (GND)))
-- \i_pwm_ctrl|new_dc[6]~24\ = CARRY((\i_pwm_ctrl|new_dc\(6)) # (!\i_pwm_ctrl|new_dc[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(6),
	datad => VCC,
	cin => \i_pwm_ctrl|new_dc[5]~22\,
	combout => \i_pwm_ctrl|new_dc[6]~23_combout\,
	cout => \i_pwm_ctrl|new_dc[6]~24\);

-- Location: LCCOMB_X20_Y23_N20
\i_pwm_ctrl|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~10_combout\ = (\i_pwm_ctrl|new_dc\(5) & (!\i_pwm_ctrl|Add1~9\)) # (!\i_pwm_ctrl|new_dc\(5) & ((\i_pwm_ctrl|Add1~9\) # (GND)))
-- \i_pwm_ctrl|Add1~11\ = CARRY((!\i_pwm_ctrl|Add1~9\) # (!\i_pwm_ctrl|new_dc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(5),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~9\,
	combout => \i_pwm_ctrl|Add1~10_combout\,
	cout => \i_pwm_ctrl|Add1~11\);

-- Location: LCCOMB_X20_Y23_N22
\i_pwm_ctrl|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~12_combout\ = (\i_pwm_ctrl|new_dc\(6) & (\i_pwm_ctrl|Add1~11\ $ (GND))) # (!\i_pwm_ctrl|new_dc\(6) & (!\i_pwm_ctrl|Add1~11\ & VCC))
-- \i_pwm_ctrl|Add1~13\ = CARRY((\i_pwm_ctrl|new_dc\(6) & !\i_pwm_ctrl|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(6),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~11\,
	combout => \i_pwm_ctrl|Add1~12_combout\,
	cout => \i_pwm_ctrl|Add1~13\);

-- Location: LCCOMB_X31_Y22_N22
\i_serial_uart|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector6~0_combout\ = (\i_serial_uart|rx_byte_int\(6) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(5) & \i_serial_uart|Selector10~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(6) & 
-- (((\i_serial_uart|rx_byte_int\(5) & \i_serial_uart|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(6),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(5),
	datad => \i_serial_uart|Selector10~0_combout\,
	combout => \i_serial_uart|Selector6~0_combout\);

-- Location: LCFF_X31_Y22_N23
\i_serial_uart|rx_byte_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(5));

-- Location: LCCOMB_X29_Y22_N28
\i_serial_uart|received_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~9_combout\ = (!\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(5),
	combout => \i_serial_uart|received_data~9_combout\);

-- Location: LCFF_X29_Y22_N29
\i_serial_uart|received_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~9_combout\,
	ena => \i_serial_uart|received_data[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(5));

-- Location: LCCOMB_X31_Y22_N16
\i_serial_ctrl|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux1~0_combout\ = (!\i_serial_uart|received_data\(7) & (!\i_serial_uart|received_data\(2) & (!\i_serial_uart|received_data\(3) & !\i_serial_uart|received_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(7),
	datab => \i_serial_uart|received_data\(2),
	datac => \i_serial_uart|received_data\(3),
	datad => \i_serial_uart|received_data\(1),
	combout => \i_serial_ctrl|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y22_N4
\i_serial_ctrl|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux1~1_combout\ = (!\i_serial_uart|received_data\(6) & (!\i_serial_uart|received_data\(5) & (\i_serial_ctrl|Mux1~0_combout\ & !\i_serial_uart|received_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(6),
	datab => \i_serial_uart|received_data\(5),
	datac => \i_serial_ctrl|Mux1~0_combout\,
	datad => \i_serial_uart|received_data\(4),
	combout => \i_serial_ctrl|Mux1~1_combout\);

-- Location: LCCOMB_X30_Y22_N20
\i_serial_ctrl|serial_down_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|serial_down_out~0_combout\ = (\i_serial_ctrl|serial_down_out~regout\) # ((!\i_serial_uart|received_data\(0) & (\i_serial_ctrl|serial_up_out~1_combout\ & !\i_serial_uart|received_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(0),
	datab => \i_serial_ctrl|serial_up_out~1_combout\,
	datac => \i_serial_ctrl|serial_down_out~regout\,
	datad => \i_serial_uart|received_data\(4),
	combout => \i_serial_ctrl|serial_down_out~0_combout\);

-- Location: LCFF_X30_Y22_N21
\i_serial_ctrl|serial_down_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_ctrl|serial_down_out~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_ctrl|serial_down_out~regout\);

-- Location: LCCOMB_X30_Y22_N18
\i_serial_ctrl|serial_off_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|serial_off_out~0_combout\ = (!\i_serial_ctrl|serial_up_out~regout\ & !\i_serial_ctrl|serial_down_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_ctrl|serial_up_out~regout\,
	datac => \i_serial_ctrl|serial_down_out~regout\,
	combout => \i_serial_ctrl|serial_off_out~0_combout\);

-- Location: LCCOMB_X30_Y22_N14
\i_serial_ctrl|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux0~0_combout\ = (\i_serial_uart|received_data\(0) & (((\i_serial_ctrl|serial_off_out~regout\ & \i_serial_ctrl|serial_off_out~0_combout\)))) # (!\i_serial_uart|received_data\(0) & ((\i_serial_ctrl|Mux1~1_combout\) # 
-- ((\i_serial_ctrl|serial_off_out~regout\ & \i_serial_ctrl|serial_off_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(0),
	datab => \i_serial_ctrl|Mux1~1_combout\,
	datac => \i_serial_ctrl|serial_off_out~regout\,
	datad => \i_serial_ctrl|serial_off_out~0_combout\,
	combout => \i_serial_ctrl|Mux0~0_combout\);

-- Location: LCFF_X30_Y22_N15
\i_serial_ctrl|serial_off_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_ctrl|Mux0~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_serial_uart|received_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_ctrl|serial_off_out~regout\);

-- Location: LCCOMB_X30_Y22_N16
\i_pwm_ctrl|pwm_state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~19_combout\ = (\i_key_ctrl|key_off_out~regout\) # ((!\i_key_ctrl|key_down_out~regout\ & (\i_serial_ctrl|serial_off_out~regout\ & !\i_key_ctrl|key_up_out~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_down_out~regout\,
	datab => \i_key_ctrl|key_off_out~regout\,
	datac => \i_serial_ctrl|serial_off_out~regout\,
	datad => \i_key_ctrl|key_up_out~regout\,
	combout => \i_pwm_ctrl|pwm_state~19_combout\);

-- Location: LCCOMB_X30_Y22_N24
\i_serial_ctrl|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux1~2_combout\ = (\i_serial_uart|received_data\(0) & ((\i_serial_ctrl|Mux1~1_combout\) # ((\i_serial_ctrl|serial_on_out~regout\ & \i_serial_ctrl|serial_off_out~0_combout\)))) # (!\i_serial_uart|received_data\(0) & 
-- (((\i_serial_ctrl|serial_on_out~regout\ & \i_serial_ctrl|serial_off_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(0),
	datab => \i_serial_ctrl|Mux1~1_combout\,
	datac => \i_serial_ctrl|serial_on_out~regout\,
	datad => \i_serial_ctrl|serial_off_out~0_combout\,
	combout => \i_serial_ctrl|Mux1~2_combout\);

-- Location: LCFF_X30_Y22_N25
\i_serial_ctrl|serial_on_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_ctrl|Mux1~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_serial_uart|received_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_ctrl|serial_on_out~regout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_n[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_n(1),
	combout => \key_n~combout\(1));

-- Location: LCCOMB_X38_Y14_N16
\i_key_ctrl|key_on_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_on_r~feeder_combout\ = \key_n~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(1),
	combout => \i_key_ctrl|key_on_r~feeder_combout\);

-- Location: LCFF_X38_Y14_N17
\i_key_ctrl|key_on_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_on_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_on_r~regout\);

-- Location: LCFF_X34_Y14_N27
\i_key_ctrl|key_on_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_key_ctrl|key_on_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_on_2r~regout\);

-- Location: LCCOMB_X34_Y14_N0
\i_key_ctrl|key_on_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_on_out~0_combout\ = (\i_key_ctrl|key_in_states~regout\ & ((\i_key_ctrl|key_on_out~regout\) # ((!\i_key_ctrl|key_on_2r~regout\ & \i_key_ctrl|key_off_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_in_states~regout\,
	datab => \i_key_ctrl|key_on_out~regout\,
	datac => \i_key_ctrl|key_on_2r~regout\,
	datad => \i_key_ctrl|key_off_2r~regout\,
	combout => \i_key_ctrl|key_on_out~0_combout\);

-- Location: LCCOMB_X35_Y14_N14
\i_key_ctrl|ten_ms_on_cnt[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[0]~19_combout\ = \i_key_ctrl|ten_ms_on_cnt\(0) $ (VCC)
-- \i_key_ctrl|ten_ms_on_cnt[0]~20\ = CARRY(\i_key_ctrl|ten_ms_on_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(0),
	datad => VCC,
	combout => \i_key_ctrl|ten_ms_on_cnt[0]~19_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[0]~20\);

-- Location: LCCOMB_X35_Y13_N16
\i_key_ctrl|ten_ms_on_cnt[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[17]~54_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(17) & (!\i_key_ctrl|ten_ms_on_cnt[16]~53\)) # (!\i_key_ctrl|ten_ms_on_cnt\(17) & ((\i_key_ctrl|ten_ms_on_cnt[16]~53\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[17]~55\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[16]~53\) # (!\i_key_ctrl|ten_ms_on_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(17),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[16]~53\,
	combout => \i_key_ctrl|ten_ms_on_cnt[17]~54_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[17]~55\);

-- Location: LCCOMB_X35_Y13_N18
\i_key_ctrl|ten_ms_on_cnt[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[18]~56_combout\ = \i_key_ctrl|ten_ms_on_cnt[17]~55\ $ (!\i_key_ctrl|ten_ms_on_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|ten_ms_on_cnt\(18),
	cin => \i_key_ctrl|ten_ms_on_cnt[17]~55\,
	combout => \i_key_ctrl|ten_ms_on_cnt[18]~56_combout\);

-- Location: LCFF_X35_Y13_N19
\i_key_ctrl|ten_ms_on_cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[18]~56_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(18));

-- Location: LCCOMB_X35_Y13_N22
\i_key_ctrl|ten_ms_on_cnt[17]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\ = (\i_key_ctrl|key_on_2r~regout\) # ((!\i_key_ctrl|LessThan1~2_combout\ & (\i_key_ctrl|ten_ms_on_cnt\(17) & \i_key_ctrl|ten_ms_on_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|LessThan1~2_combout\,
	datab => \i_key_ctrl|key_on_2r~regout\,
	datac => \i_key_ctrl|ten_ms_on_cnt\(17),
	datad => \i_key_ctrl|ten_ms_on_cnt\(18),
	combout => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\);

-- Location: LCFF_X35_Y14_N15
\i_key_ctrl|ten_ms_on_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[0]~19_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(0));

-- Location: LCCOMB_X35_Y14_N18
\i_key_ctrl|ten_ms_on_cnt[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[2]~23_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(2) & (\i_key_ctrl|ten_ms_on_cnt[1]~22\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(2) & (!\i_key_ctrl|ten_ms_on_cnt[1]~22\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[2]~24\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(2) & !\i_key_ctrl|ten_ms_on_cnt[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(2),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[1]~22\,
	combout => \i_key_ctrl|ten_ms_on_cnt[2]~23_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[2]~24\);

-- Location: LCFF_X35_Y14_N19
\i_key_ctrl|ten_ms_on_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[2]~23_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(2));

-- Location: LCCOMB_X35_Y14_N22
\i_key_ctrl|ten_ms_on_cnt[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[4]~27_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(4) & (\i_key_ctrl|ten_ms_on_cnt[3]~26\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(4) & (!\i_key_ctrl|ten_ms_on_cnt[3]~26\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[4]~28\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(4) & !\i_key_ctrl|ten_ms_on_cnt[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(4),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[3]~26\,
	combout => \i_key_ctrl|ten_ms_on_cnt[4]~27_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[4]~28\);

-- Location: LCFF_X35_Y14_N23
\i_key_ctrl|ten_ms_on_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[4]~27_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(4));

-- Location: LCCOMB_X35_Y14_N24
\i_key_ctrl|ten_ms_on_cnt[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[5]~29_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(5) & (!\i_key_ctrl|ten_ms_on_cnt[4]~28\)) # (!\i_key_ctrl|ten_ms_on_cnt\(5) & ((\i_key_ctrl|ten_ms_on_cnt[4]~28\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[5]~30\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[4]~28\) # (!\i_key_ctrl|ten_ms_on_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(5),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[4]~28\,
	combout => \i_key_ctrl|ten_ms_on_cnt[5]~29_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[5]~30\);

-- Location: LCCOMB_X35_Y14_N26
\i_key_ctrl|ten_ms_on_cnt[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[6]~31_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(6) & (\i_key_ctrl|ten_ms_on_cnt[5]~30\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(6) & (!\i_key_ctrl|ten_ms_on_cnt[5]~30\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[6]~32\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(6) & !\i_key_ctrl|ten_ms_on_cnt[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(6),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[5]~30\,
	combout => \i_key_ctrl|ten_ms_on_cnt[6]~31_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[6]~32\);

-- Location: LCFF_X35_Y14_N27
\i_key_ctrl|ten_ms_on_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[6]~31_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(6));

-- Location: LCCOMB_X35_Y14_N28
\i_key_ctrl|ten_ms_on_cnt[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[7]~33_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(7) & (!\i_key_ctrl|ten_ms_on_cnt[6]~32\)) # (!\i_key_ctrl|ten_ms_on_cnt\(7) & ((\i_key_ctrl|ten_ms_on_cnt[6]~32\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[7]~34\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[6]~32\) # (!\i_key_ctrl|ten_ms_on_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(7),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[6]~32\,
	combout => \i_key_ctrl|ten_ms_on_cnt[7]~33_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[7]~34\);

-- Location: LCFF_X35_Y14_N29
\i_key_ctrl|ten_ms_on_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[7]~33_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(7));

-- Location: LCCOMB_X35_Y14_N30
\i_key_ctrl|ten_ms_on_cnt[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[8]~35_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(8) & (\i_key_ctrl|ten_ms_on_cnt[7]~34\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(8) & (!\i_key_ctrl|ten_ms_on_cnt[7]~34\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[8]~36\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(8) & !\i_key_ctrl|ten_ms_on_cnt[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(8),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[7]~34\,
	combout => \i_key_ctrl|ten_ms_on_cnt[8]~35_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[8]~36\);

-- Location: LCFF_X35_Y14_N31
\i_key_ctrl|ten_ms_on_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[8]~35_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(8));

-- Location: LCCOMB_X35_Y13_N0
\i_key_ctrl|ten_ms_on_cnt[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[9]~37_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(9) & (!\i_key_ctrl|ten_ms_on_cnt[8]~36\)) # (!\i_key_ctrl|ten_ms_on_cnt\(9) & ((\i_key_ctrl|ten_ms_on_cnt[8]~36\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[9]~38\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[8]~36\) # (!\i_key_ctrl|ten_ms_on_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(9),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[8]~36\,
	combout => \i_key_ctrl|ten_ms_on_cnt[9]~37_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[9]~38\);

-- Location: LCFF_X35_Y13_N1
\i_key_ctrl|ten_ms_on_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[9]~37_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(9));

-- Location: LCCOMB_X35_Y13_N2
\i_key_ctrl|ten_ms_on_cnt[10]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[10]~39_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(10) & (\i_key_ctrl|ten_ms_on_cnt[9]~38\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(10) & (!\i_key_ctrl|ten_ms_on_cnt[9]~38\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[10]~40\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(10) & !\i_key_ctrl|ten_ms_on_cnt[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(10),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[9]~38\,
	combout => \i_key_ctrl|ten_ms_on_cnt[10]~39_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[10]~40\);

-- Location: LCFF_X35_Y13_N3
\i_key_ctrl|ten_ms_on_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[10]~39_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(10));

-- Location: LCCOMB_X35_Y13_N4
\i_key_ctrl|ten_ms_on_cnt[11]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[11]~41_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(11) & (!\i_key_ctrl|ten_ms_on_cnt[10]~40\)) # (!\i_key_ctrl|ten_ms_on_cnt\(11) & ((\i_key_ctrl|ten_ms_on_cnt[10]~40\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[11]~42\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[10]~40\) # (!\i_key_ctrl|ten_ms_on_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(11),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[10]~40\,
	combout => \i_key_ctrl|ten_ms_on_cnt[11]~41_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[11]~42\);

-- Location: LCFF_X35_Y13_N5
\i_key_ctrl|ten_ms_on_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[11]~41_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(11));

-- Location: LCCOMB_X35_Y13_N8
\i_key_ctrl|ten_ms_on_cnt[13]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[13]~45_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(13) & (!\i_key_ctrl|ten_ms_on_cnt[12]~44\)) # (!\i_key_ctrl|ten_ms_on_cnt\(13) & ((\i_key_ctrl|ten_ms_on_cnt[12]~44\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[13]~46\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[12]~44\) # (!\i_key_ctrl|ten_ms_on_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(13),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[12]~44\,
	combout => \i_key_ctrl|ten_ms_on_cnt[13]~45_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[13]~46\);

-- Location: LCFF_X35_Y13_N9
\i_key_ctrl|ten_ms_on_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[13]~45_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(13));

-- Location: LCCOMB_X35_Y13_N10
\i_key_ctrl|ten_ms_on_cnt[14]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[14]~47_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(14) & (\i_key_ctrl|ten_ms_on_cnt[13]~46\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(14) & (!\i_key_ctrl|ten_ms_on_cnt[13]~46\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[14]~48\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(14) & !\i_key_ctrl|ten_ms_on_cnt[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(14),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[13]~46\,
	combout => \i_key_ctrl|ten_ms_on_cnt[14]~47_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[14]~48\);

-- Location: LCCOMB_X35_Y13_N14
\i_key_ctrl|ten_ms_on_cnt[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[16]~52_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(16) & (\i_key_ctrl|ten_ms_on_cnt[15]~51\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(16) & (!\i_key_ctrl|ten_ms_on_cnt[15]~51\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[16]~53\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(16) & !\i_key_ctrl|ten_ms_on_cnt[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(16),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[15]~51\,
	combout => \i_key_ctrl|ten_ms_on_cnt[16]~52_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[16]~53\);

-- Location: LCFF_X35_Y13_N15
\i_key_ctrl|ten_ms_on_cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[16]~52_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(16));

-- Location: LCFF_X35_Y13_N17
\i_key_ctrl|ten_ms_on_cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[17]~54_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(17));

-- Location: LCCOMB_X35_Y13_N30
\i_key_ctrl|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Equal1~0_combout\ = (!\i_key_ctrl|ten_ms_on_cnt\(12) & (!\i_key_ctrl|ten_ms_on_cnt\(10) & (!\i_key_ctrl|ten_ms_on_cnt\(11) & !\i_key_ctrl|ten_ms_on_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(12),
	datab => \i_key_ctrl|ten_ms_on_cnt\(10),
	datac => \i_key_ctrl|ten_ms_on_cnt\(11),
	datad => \i_key_ctrl|ten_ms_on_cnt\(9),
	combout => \i_key_ctrl|Equal1~0_combout\);

-- Location: LCFF_X35_Y13_N11
\i_key_ctrl|ten_ms_on_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[14]~47_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(14));

-- Location: LCCOMB_X35_Y13_N20
\i_key_ctrl|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan1~0_combout\ = (((!\i_key_ctrl|ten_ms_on_cnt\(13) & !\i_key_ctrl|ten_ms_on_cnt\(14))) # (!\i_key_ctrl|ten_ms_on_cnt\(16))) # (!\i_key_ctrl|ten_ms_on_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(15),
	datab => \i_key_ctrl|ten_ms_on_cnt\(13),
	datac => \i_key_ctrl|ten_ms_on_cnt\(16),
	datad => \i_key_ctrl|ten_ms_on_cnt\(14),
	combout => \i_key_ctrl|LessThan1~0_combout\);

-- Location: LCFF_X35_Y14_N25
\i_key_ctrl|ten_ms_on_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[5]~29_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[17]~49_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(5));

-- Location: LCCOMB_X35_Y14_N8
\i_key_ctrl|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan1~1_combout\ = ((!\i_key_ctrl|ten_ms_on_cnt\(7) & (!\i_key_ctrl|ten_ms_on_cnt\(5) & !\i_key_ctrl|ten_ms_on_cnt\(6)))) # (!\i_key_ctrl|ten_ms_on_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(7),
	datab => \i_key_ctrl|ten_ms_on_cnt\(8),
	datac => \i_key_ctrl|ten_ms_on_cnt\(5),
	datad => \i_key_ctrl|ten_ms_on_cnt\(6),
	combout => \i_key_ctrl|LessThan1~1_combout\);

-- Location: LCCOMB_X35_Y13_N24
\i_key_ctrl|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan1~2_combout\ = (\i_key_ctrl|LessThan1~0_combout\) # ((!\i_key_ctrl|ten_ms_on_cnt\(14) & (\i_key_ctrl|Equal1~0_combout\ & \i_key_ctrl|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(14),
	datab => \i_key_ctrl|Equal1~0_combout\,
	datac => \i_key_ctrl|LessThan1~0_combout\,
	datad => \i_key_ctrl|LessThan1~1_combout\,
	combout => \i_key_ctrl|LessThan1~2_combout\);

-- Location: LCCOMB_X34_Y14_N28
\i_key_ctrl|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan1~3_combout\ = ((\i_key_ctrl|LessThan1~2_combout\) # (!\i_key_ctrl|ten_ms_on_cnt\(18))) # (!\i_key_ctrl|ten_ms_on_cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(17),
	datac => \i_key_ctrl|ten_ms_on_cnt\(18),
	datad => \i_key_ctrl|LessThan1~2_combout\,
	combout => \i_key_ctrl|LessThan1~3_combout\);

-- Location: LCCOMB_X34_Y14_N4
\i_key_ctrl|key_on_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_on_out~1_combout\ = (\i_key_ctrl|key_on_out~0_combout\) # ((!\i_key_ctrl|key_on_2r~regout\ & (!\i_key_ctrl|key_on_out~regout\ & !\i_key_ctrl|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_on_2r~regout\,
	datab => \i_key_ctrl|key_on_out~0_combout\,
	datac => \i_key_ctrl|key_on_out~regout\,
	datad => \i_key_ctrl|LessThan1~3_combout\,
	combout => \i_key_ctrl|key_on_out~1_combout\);

-- Location: LCFF_X34_Y14_N5
\i_key_ctrl|key_on_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_on_out~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_on_out~regout\);

-- Location: LCCOMB_X30_Y22_N30
\i_pwm_ctrl|pwm_state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~18_combout\ = (\i_pwm_ctrl|pwm_state~17_combout\ & ((\i_key_ctrl|key_on_out~regout\))) # (!\i_pwm_ctrl|pwm_state~17_combout\ & (\i_serial_ctrl|serial_on_out~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state~17_combout\,
	datac => \i_serial_ctrl|serial_on_out~regout\,
	datad => \i_key_ctrl|key_on_out~regout\,
	combout => \i_pwm_ctrl|pwm_state~18_combout\);

-- Location: LCCOMB_X30_Y22_N10
\i_pwm_ctrl|pwm_state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~15_combout\ = (!\i_serial_ctrl|serial_down_out~regout\ & (!\i_serial_ctrl|serial_off_out~regout\ & (!\i_serial_ctrl|serial_on_out~regout\ & !\i_serial_ctrl|serial_up_out~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_ctrl|serial_down_out~regout\,
	datab => \i_serial_ctrl|serial_off_out~regout\,
	datac => \i_serial_ctrl|serial_on_out~regout\,
	datad => \i_serial_ctrl|serial_up_out~regout\,
	combout => \i_pwm_ctrl|pwm_state~15_combout\);

-- Location: LCFF_X29_Y23_N7
\i_pwm_ctrl|pwm_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|pwm_state~16_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_idle~regout\);

-- Location: LCCOMB_X30_Y22_N0
\i_pwm_ctrl|pwm_state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~14_combout\ = (\i_key_ctrl|key_down_out~regout\) # ((\i_key_ctrl|key_up_out~regout\) # ((\i_key_ctrl|key_off_out~regout\) # (\i_key_ctrl|key_on_out~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_down_out~regout\,
	datab => \i_key_ctrl|key_up_out~regout\,
	datac => \i_key_ctrl|key_off_out~regout\,
	datad => \i_key_ctrl|key_on_out~regout\,
	combout => \i_pwm_ctrl|pwm_state~14_combout\);

-- Location: LCCOMB_X29_Y23_N6
\i_pwm_ctrl|pwm_state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~16_combout\ = ((\i_pwm_ctrl|pwm_state~15_combout\ & !\i_pwm_ctrl|pwm_state~14_combout\)) # (!\i_pwm_ctrl|pwm_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|pwm_state~15_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_idle~regout\,
	datad => \i_pwm_ctrl|pwm_state~14_combout\,
	combout => \i_pwm_ctrl|pwm_state~16_combout\);

-- Location: LCCOMB_X29_Y23_N8
\i_pwm_ctrl|pwm_state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~20_combout\ = (!\i_pwm_ctrl|pwm_state~19_combout\ & (\i_pwm_ctrl|pwm_state~18_combout\ & !\i_pwm_ctrl|pwm_state~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|pwm_state~19_combout\,
	datac => \i_pwm_ctrl|pwm_state~18_combout\,
	datad => \i_pwm_ctrl|pwm_state~16_combout\,
	combout => \i_pwm_ctrl|pwm_state~20_combout\);

-- Location: LCFF_X29_Y23_N9
\i_pwm_ctrl|pwm_state.s_on\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|pwm_state~20_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_on~regout\);

-- Location: LCCOMB_X20_Y23_N0
\i_pwm_ctrl|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector1~0_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & (((\i_pwm_ctrl|Add1~12_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_up~regout\ & (!\i_pwm_ctrl|previous_dc\(6) & ((\i_pwm_ctrl|pwm_state.s_on~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|previous_dc\(6),
	datab => \i_pwm_ctrl|Add1~12_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|pwm_state.s_on~regout\,
	combout => \i_pwm_ctrl|Selector1~0_combout\);

-- Location: LCFF_X21_Y23_N23
\i_pwm_ctrl|new_dc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[6]~23_combout\,
	sdata => \i_pwm_ctrl|Selector1~0_combout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(6));

-- Location: LCCOMB_X21_Y23_N24
\i_pwm_ctrl|new_dc[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[7]~25_combout\ = \i_pwm_ctrl|new_dc\(7) $ (!\i_pwm_ctrl|new_dc[6]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(7),
	cin => \i_pwm_ctrl|new_dc[6]~24\,
	combout => \i_pwm_ctrl|new_dc[7]~25_combout\);

-- Location: LCCOMB_X20_Y23_N24
\i_pwm_ctrl|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~14_combout\ = \i_pwm_ctrl|Add1~13\ $ (\i_pwm_ctrl|new_dc\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_pwm_ctrl|new_dc\(7),
	cin => \i_pwm_ctrl|Add1~13\,
	combout => \i_pwm_ctrl|Add1~14_combout\);

-- Location: LCCOMB_X19_Y23_N22
\i_pwm_ctrl|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector0~0_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & (((\i_pwm_ctrl|Add1~14_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_up~regout\ & (\i_pwm_ctrl|pwm_state.s_on~regout\ & ((\i_pwm_ctrl|previous_dc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_on~regout\,
	datab => \i_pwm_ctrl|Add1~14_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|previous_dc\(7),
	combout => \i_pwm_ctrl|Selector0~0_combout\);

-- Location: LCFF_X21_Y23_N25
\i_pwm_ctrl|new_dc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[7]~25_combout\,
	sdata => \i_pwm_ctrl|Selector0~0_combout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(7));

-- Location: LCCOMB_X21_Y23_N0
\i_pwm_ctrl|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~0_combout\ = (!\i_pwm_ctrl|new_dc\(6) & (!\i_pwm_ctrl|new_dc\(5) & !\i_pwm_ctrl|new_dc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(6),
	datac => \i_pwm_ctrl|new_dc\(5),
	datad => \i_pwm_ctrl|new_dc\(4),
	combout => \i_pwm_ctrl|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y23_N8
\i_pwm_ctrl|new_dc[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[5]~16_combout\ = (\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|LessThan4~0_combout\ & (!\i_pwm_ctrl|new_dc\(7) & \i_pwm_ctrl|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|LessThan4~0_combout\,
	datac => \i_pwm_ctrl|new_dc\(7),
	datad => \i_pwm_ctrl|Equal0~0_combout\,
	combout => \i_pwm_ctrl|new_dc[5]~16_combout\);

-- Location: LCCOMB_X29_Y23_N24
\i_pwm_ctrl|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector9~0_combout\ = (!\i_pwm_ctrl|pwm_state.s_idle~regout\ & ((\i_dc_disp_ctrl|LessThan0~1_combout\) # (!\i_pwm_ctrl|pwm_state.s_up~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|LessThan0~1_combout\,
	datab => \i_pwm_ctrl|pwm_state.s_idle~regout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|Selector9~0_combout\);

-- Location: LCCOMB_X29_Y23_N18
\i_pwm_ctrl|new_dc[7]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[7]~17_combout\ = (!\i_pwm_ctrl|new_dc[5]~16_combout\ & (\b_gen_pll:i_reset_ctrl|reset_out~regout\ & \i_pwm_ctrl|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc[5]~16_combout\,
	datac => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	datad => \i_pwm_ctrl|Selector9~0_combout\,
	combout => \i_pwm_ctrl|new_dc[7]~17_combout\);

-- Location: LCFF_X21_Y23_N19
\i_pwm_ctrl|new_dc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[4]~19_combout\,
	sdata => \i_pwm_ctrl|Selector3~0_combout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(4));

-- Location: LCCOMB_X20_Y23_N30
\i_pwm_ctrl|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector2~0_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & (((\i_pwm_ctrl|Add1~10_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_up~regout\ & (!\i_pwm_ctrl|previous_dc\(5) & ((\i_pwm_ctrl|pwm_state.s_on~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|previous_dc\(5),
	datab => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datac => \i_pwm_ctrl|Add1~10_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_on~regout\,
	combout => \i_pwm_ctrl|Selector2~0_combout\);

-- Location: LCFF_X21_Y23_N21
\i_pwm_ctrl|new_dc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[5]~21_combout\,
	sdata => \i_pwm_ctrl|Selector2~0_combout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(5));

-- Location: LCCOMB_X19_Y23_N14
\i_pwm_ctrl|previous_dc[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|previous_dc[5]~6_combout\ = !\i_pwm_ctrl|new_dc\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl|new_dc\(5),
	combout => \i_pwm_ctrl|previous_dc[5]~6_combout\);

-- Location: LCFF_X19_Y23_N15
\i_pwm_ctrl|previous_dc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|previous_dc[5]~6_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|previous_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|previous_dc\(5));

-- Location: LCFF_X19_Y23_N29
\i_pwm_ctrl|previous_dc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_pwm_ctrl|new_dc\(1),
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \i_pwm_ctrl|previous_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|previous_dc\(1));

-- Location: LCFF_X19_Y23_N1
\i_pwm_ctrl|previous_dc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_pwm_ctrl|new_dc\(3),
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \i_pwm_ctrl|previous_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|previous_dc\(3));

-- Location: LCCOMB_X19_Y23_N0
\i_pwm_ctrl|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan2~0_combout\ = (\i_pwm_ctrl|previous_dc\(3) & (((\i_pwm_ctrl|previous_dc\(1) & \i_pwm_ctrl|previous_dc\(0))) # (!\i_pwm_ctrl|previous_dc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|previous_dc\(2),
	datab => \i_pwm_ctrl|previous_dc\(1),
	datac => \i_pwm_ctrl|previous_dc\(3),
	datad => \i_pwm_ctrl|previous_dc\(0),
	combout => \i_pwm_ctrl|LessThan2~0_combout\);

-- Location: LCCOMB_X19_Y23_N18
\i_pwm_ctrl|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan2~1_combout\ = (((\i_pwm_ctrl|previous_dc\(4)) # (\i_pwm_ctrl|LessThan2~0_combout\)) # (!\i_pwm_ctrl|previous_dc\(5))) # (!\i_pwm_ctrl|previous_dc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|previous_dc\(6),
	datab => \i_pwm_ctrl|previous_dc\(5),
	datac => \i_pwm_ctrl|previous_dc\(4),
	datad => \i_pwm_ctrl|LessThan2~0_combout\,
	combout => \i_pwm_ctrl|LessThan2~1_combout\);

-- Location: LCCOMB_X19_Y23_N8
\i_pwm_ctrl|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector4~0_combout\ = (\i_pwm_ctrl|pwm_state.s_on~regout\ & ((\i_pwm_ctrl|previous_dc\(3)) # ((!\i_pwm_ctrl|LessThan2~1_combout\ & !\i_pwm_ctrl|previous_dc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|previous_dc\(3),
	datab => \i_pwm_ctrl|LessThan2~1_combout\,
	datac => \i_pwm_ctrl|previous_dc\(7),
	datad => \i_pwm_ctrl|pwm_state.s_on~regout\,
	combout => \i_pwm_ctrl|Selector4~0_combout\);

-- Location: LCCOMB_X20_Y23_N8
\i_pwm_ctrl|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector4~1_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & ((\i_pwm_ctrl|Add1~6_combout\) # ((\i_pwm_ctrl|Equal0~2_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_up~regout\ & (((\i_pwm_ctrl|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Add1~6_combout\,
	datab => \i_pwm_ctrl|Selector4~0_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|Equal0~2_combout\,
	combout => \i_pwm_ctrl|Selector4~1_combout\);

-- Location: LCFF_X21_Y23_N17
\i_pwm_ctrl|new_dc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[3]~14_combout\,
	sdata => \i_pwm_ctrl|Selector4~1_combout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(3));

-- Location: LCCOMB_X21_Y23_N30
\i_pwm_ctrl|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan4~0_combout\ = (\i_pwm_ctrl|new_dc\(3) & ((\i_pwm_ctrl|new_dc\(2)) # ((\i_pwm_ctrl|new_dc\(1) & \i_pwm_ctrl|new_dc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(1),
	datab => \i_pwm_ctrl|new_dc\(2),
	datac => \i_pwm_ctrl|new_dc\(3),
	datad => \i_pwm_ctrl|new_dc\(0),
	combout => \i_pwm_ctrl|LessThan4~0_combout\);

-- Location: LCCOMB_X29_Y23_N4
\i_pwm_ctrl|pwm_state~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|pwm_state~26_combout\ = (((\i_pwm_ctrl|pwm_state~15_combout\ & !\i_pwm_ctrl|pwm_state~14_combout\)) # (!\i_pwm_ctrl|pwm_state.s_idle~regout\)) # (!\i_pwm_ctrl|pwm_state~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state~19_combout\,
	datab => \i_pwm_ctrl|pwm_state.s_idle~regout\,
	datac => \i_pwm_ctrl|pwm_state~15_combout\,
	datad => \i_pwm_ctrl|pwm_state~14_combout\,
	combout => \i_pwm_ctrl|pwm_state~26_combout\);

-- Location: LCFF_X29_Y23_N5
\i_pwm_ctrl|pwm_state.s_off\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|pwm_state~26_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_off~regout\);

-- Location: LCCOMB_X21_Y23_N4
\i_pwm_ctrl|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector9~2_combout\ = (\i_pwm_ctrl|pwm_state.s_on~regout\) # (!\i_pwm_ctrl|pwm_state.s_off~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|pwm_state.s_off~regout\,
	datad => \i_pwm_ctrl|pwm_state.s_on~regout\,
	combout => \i_pwm_ctrl|Selector9~2_combout\);

-- Location: LCCOMB_X21_Y23_N6
\i_pwm_ctrl|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector9~3_combout\ = (\i_pwm_ctrl|Selector9~2_combout\) # ((\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|LessThan4~0_combout\ & \i_pwm_ctrl|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|LessThan4~0_combout\,
	datac => \i_pwm_ctrl|Selector9~2_combout\,
	datad => \i_pwm_ctrl|Equal0~0_combout\,
	combout => \i_pwm_ctrl|Selector9~3_combout\);

-- Location: LCCOMB_X19_Y23_N2
\i_pwm_ctrl|Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector9~4_combout\ = (\i_pwm_ctrl|Selector9~1_combout\) # ((\i_pwm_ctrl|previous_dc\(7) & ((\i_pwm_ctrl|Selector9~3_combout\) # (!\i_pwm_ctrl|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Selector9~1_combout\,
	datab => \i_pwm_ctrl|Selector9~3_combout\,
	datac => \i_pwm_ctrl|previous_dc\(7),
	datad => \i_pwm_ctrl|Selector9~0_combout\,
	combout => \i_pwm_ctrl|Selector9~4_combout\);

-- Location: LCFF_X19_Y23_N3
\i_pwm_ctrl|previous_dc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Selector9~4_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|previous_dc\(7));

-- Location: LCCOMB_X19_Y23_N28
\i_pwm_ctrl|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector6~0_combout\ = (\i_pwm_ctrl|pwm_state.s_on~regout\ & ((\i_pwm_ctrl|previous_dc\(1)) # ((!\i_pwm_ctrl|previous_dc\(7) & !\i_pwm_ctrl|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_on~regout\,
	datab => \i_pwm_ctrl|previous_dc\(7),
	datac => \i_pwm_ctrl|previous_dc\(1),
	datad => \i_pwm_ctrl|LessThan2~1_combout\,
	combout => \i_pwm_ctrl|Selector6~0_combout\);

-- Location: LCCOMB_X20_Y23_N26
\i_pwm_ctrl|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector6~1_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & ((\i_pwm_ctrl|Add1~2_combout\) # ((\i_pwm_ctrl|Equal0~2_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_up~regout\ & (((\i_pwm_ctrl|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Add1~2_combout\,
	datab => \i_pwm_ctrl|Selector6~0_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|Equal0~2_combout\,
	combout => \i_pwm_ctrl|Selector6~1_combout\);

-- Location: LCFF_X21_Y23_N13
\i_pwm_ctrl|new_dc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[1]~10_combout\,
	sdata => \i_pwm_ctrl|Selector6~1_combout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(1));

-- Location: LCCOMB_X19_Y23_N10
\i_pwm_ctrl|new_dc[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[5]~18_combout\ = (\i_pwm_ctrl|pwm_state.s_on~regout\ & ((\i_pwm_ctrl|previous_dc\(7)) # (\i_pwm_ctrl|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_on~regout\,
	datab => \i_pwm_ctrl|previous_dc\(7),
	datad => \i_pwm_ctrl|LessThan2~1_combout\,
	combout => \i_pwm_ctrl|new_dc[5]~18_combout\);

-- Location: LCCOMB_X19_Y23_N20
\i_pwm_ctrl|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector5~0_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & (((\i_pwm_ctrl|Add1~4_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_up~regout\ & (!\i_pwm_ctrl|previous_dc\(2) & ((\i_pwm_ctrl|new_dc[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|previous_dc\(2),
	datab => \i_pwm_ctrl|Add1~4_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|new_dc[5]~18_combout\,
	combout => \i_pwm_ctrl|Selector5~0_combout\);

-- Location: LCFF_X21_Y23_N15
\i_pwm_ctrl|new_dc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[2]~12_combout\,
	sdata => \i_pwm_ctrl|Selector5~0_combout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(2));

-- Location: LCCOMB_X21_Y23_N26
\i_pwm_ctrl|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~1_combout\ = (!\i_pwm_ctrl|new_dc\(7) & (!\i_pwm_ctrl|new_dc\(2) & (!\i_pwm_ctrl|new_dc\(3) & !\i_pwm_ctrl|new_dc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(7),
	datab => \i_pwm_ctrl|new_dc\(2),
	datac => \i_pwm_ctrl|new_dc\(3),
	datad => \i_pwm_ctrl|new_dc\(0),
	combout => \i_pwm_ctrl|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y23_N28
\i_pwm_ctrl|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~2_combout\ = (!\i_pwm_ctrl|new_dc\(1) & (\i_pwm_ctrl|Equal0~1_combout\ & \i_pwm_ctrl|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(1),
	datab => \i_pwm_ctrl|Equal0~1_combout\,
	datad => \i_pwm_ctrl|Equal0~0_combout\,
	combout => \i_pwm_ctrl|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y23_N26
\i_pwm_ctrl|previous_dc[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|previous_dc[6]~2_combout\ = (\i_pwm_ctrl|dc_cnt[2]~43_combout\ & (((\i_pwm_ctrl|pwm_state.s_up~regout\) # (\i_pwm_ctrl|pwm_state.s_down~regout\)))) # (!\i_pwm_ctrl|dc_cnt[2]~43_combout\ & (\i_pwm_ctrl|Equal0~2_combout\ & 
-- (\i_pwm_ctrl|pwm_state.s_up~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt[2]~43_combout\,
	datab => \i_pwm_ctrl|Equal0~2_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|pwm_state.s_down~regout\,
	combout => \i_pwm_ctrl|previous_dc[6]~2_combout\);

-- Location: LCCOMB_X21_Y23_N2
\i_pwm_ctrl|dc_cnt[2]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~43_combout\ = (\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|LessThan4~0_combout\) # ((\i_pwm_ctrl|new_dc\(7)) # (!\i_pwm_ctrl|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|LessThan4~0_combout\,
	datac => \i_pwm_ctrl|new_dc\(7),
	datad => \i_pwm_ctrl|Equal0~0_combout\,
	combout => \i_pwm_ctrl|dc_cnt[2]~43_combout\);

-- Location: LCCOMB_X20_Y23_N28
\i_pwm_ctrl|previous_dc[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|previous_dc[6]~1_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & ((\i_pwm_ctrl|Equal0~2_combout\) # ((!\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|dc_cnt[2]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|dc_cnt[2]~43_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|Equal0~2_combout\,
	combout => \i_pwm_ctrl|previous_dc[6]~1_combout\);

-- Location: LCCOMB_X19_Y23_N4
\i_pwm_ctrl|previous_dc[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|previous_dc[6]~3_combout\ = (\i_pwm_ctrl|previous_dc[6]~1_combout\ & ((\i_pwm_ctrl|previous_dc[6]~2_combout\) # (\i_pwm_ctrl|previous_dc[6]~0_combout\ $ (\i_pwm_ctrl|pwm_state.s_on~regout\)))) # (!\i_pwm_ctrl|previous_dc[6]~1_combout\ & 
-- ((\i_pwm_ctrl|pwm_state.s_on~regout\ & (!\i_pwm_ctrl|previous_dc[6]~0_combout\)) # (!\i_pwm_ctrl|pwm_state.s_on~regout\ & ((\i_pwm_ctrl|previous_dc[6]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|previous_dc[6]~0_combout\,
	datab => \i_pwm_ctrl|previous_dc[6]~2_combout\,
	datac => \i_pwm_ctrl|previous_dc[6]~1_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_on~regout\,
	combout => \i_pwm_ctrl|previous_dc[6]~3_combout\);

-- Location: LCFF_X19_Y23_N31
\i_pwm_ctrl|previous_dc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_pwm_ctrl|new_dc\(0),
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	ena => \i_pwm_ctrl|previous_dc[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|previous_dc\(0));

-- Location: LCCOMB_X20_Y23_N2
\i_pwm_ctrl|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector7~0_combout\ = (\i_pwm_ctrl|Add1~0_combout\ & (!\i_pwm_ctrl|Equal0~2_combout\ & \i_pwm_ctrl|pwm_state.s_up~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Add1~0_combout\,
	datab => \i_pwm_ctrl|Equal0~2_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|Selector7~0_combout\);

-- Location: LCCOMB_X19_Y23_N30
\i_pwm_ctrl|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector7~1_combout\ = (\i_pwm_ctrl|Selector7~0_combout\) # ((\i_pwm_ctrl|new_dc[5]~18_combout\ & (!\i_pwm_ctrl|pwm_state.s_up~regout\ & \i_pwm_ctrl|previous_dc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc[5]~18_combout\,
	datab => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datac => \i_pwm_ctrl|previous_dc\(0),
	datad => \i_pwm_ctrl|Selector7~0_combout\,
	combout => \i_pwm_ctrl|Selector7~1_combout\);

-- Location: LCFF_X21_Y23_N11
\i_pwm_ctrl|new_dc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[0]~8_combout\,
	sdata => \i_pwm_ctrl|Selector7~1_combout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(0));

-- Location: LCCOMB_X18_Y23_N8
\i_dc_disp_ctrl|bcd_input_vector[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|bcd_input_vector[0]~feeder_combout\ = \i_pwm_ctrl|new_dc\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pwm_ctrl|new_dc\(0),
	combout => \i_dc_disp_ctrl|bcd_input_vector[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y22_N22
\i_dc_disp_ctrl|bcd_input_vector[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|bcd_input_vector[0]~0_combout\ = (\b_gen_pll:i_reset_ctrl|reset_out~regout\ & !\i_serial_uart|reset_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	datad => \i_serial_uart|reset_r~regout\,
	combout => \i_dc_disp_ctrl|bcd_input_vector[0]~0_combout\);

-- Location: LCFF_X18_Y23_N9
\i_dc_disp_ctrl|bcd_input_vector[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|bcd_input_vector[0]~feeder_combout\,
	ena => \i_dc_disp_ctrl|bcd_input_vector[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_input_vector\(0));

-- Location: LCFF_X18_Y23_N17
\i_bcd_decode_rom|rom_addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_dc_disp_ctrl|bcd_input_vector\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_bcd_decode_rom|rom_addr\(0));

-- Location: LCCOMB_X18_Y23_N2
\i_dc_disp_ctrl|bcd_input_vector[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|bcd_input_vector[1]~feeder_combout\ = \i_pwm_ctrl|new_dc\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pwm_ctrl|new_dc\(1),
	combout => \i_dc_disp_ctrl|bcd_input_vector[1]~feeder_combout\);

-- Location: LCFF_X18_Y23_N3
\i_dc_disp_ctrl|bcd_input_vector[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|bcd_input_vector[1]~feeder_combout\,
	ena => \i_dc_disp_ctrl|bcd_input_vector[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_input_vector\(1));

-- Location: LCCOMB_X18_Y23_N10
\i_bcd_decode_rom|rom_addr[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_bcd_decode_rom|rom_addr[1]~feeder_combout\ = \i_dc_disp_ctrl|bcd_input_vector\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_dc_disp_ctrl|bcd_input_vector\(1),
	combout => \i_bcd_decode_rom|rom_addr[1]~feeder_combout\);

-- Location: LCFF_X18_Y23_N11
\i_bcd_decode_rom|rom_addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_bcd_decode_rom|rom_addr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_bcd_decode_rom|rom_addr\(1));

-- Location: LCFF_X18_Y23_N5
\i_dc_disp_ctrl|bcd_input_vector[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_pwm_ctrl|new_dc\(2),
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_input_vector[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_input_vector\(2));

-- Location: LCFF_X18_Y23_N29
\i_bcd_decode_rom|rom_addr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_dc_disp_ctrl|bcd_input_vector\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_bcd_decode_rom|rom_addr\(2));

-- Location: LCCOMB_X18_Y23_N6
\i_dc_disp_ctrl|bcd_input_vector[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|bcd_input_vector[3]~feeder_combout\ = \i_pwm_ctrl|new_dc\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pwm_ctrl|new_dc\(3),
	combout => \i_dc_disp_ctrl|bcd_input_vector[3]~feeder_combout\);

-- Location: LCFF_X18_Y23_N7
\i_dc_disp_ctrl|bcd_input_vector[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|bcd_input_vector[3]~feeder_combout\,
	ena => \i_dc_disp_ctrl|bcd_input_vector[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_input_vector\(3));

-- Location: LCCOMB_X18_Y23_N14
\i_bcd_decode_rom|rom_addr[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_bcd_decode_rom|rom_addr[3]~feeder_combout\ = \i_dc_disp_ctrl|bcd_input_vector\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_dc_disp_ctrl|bcd_input_vector\(3),
	combout => \i_bcd_decode_rom|rom_addr[3]~feeder_combout\);

-- Location: LCFF_X18_Y23_N15
\i_bcd_decode_rom|rom_addr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_bcd_decode_rom|rom_addr[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_bcd_decode_rom|rom_addr\(3));

-- Location: LCCOMB_X18_Y23_N0
\i_dc_disp_ctrl|bcd_input_vector[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|bcd_input_vector[4]~feeder_combout\ = \i_pwm_ctrl|new_dc\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pwm_ctrl|new_dc\(4),
	combout => \i_dc_disp_ctrl|bcd_input_vector[4]~feeder_combout\);

-- Location: LCFF_X18_Y23_N1
\i_dc_disp_ctrl|bcd_input_vector[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|bcd_input_vector[4]~feeder_combout\,
	ena => \i_dc_disp_ctrl|bcd_input_vector[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_input_vector\(4));

-- Location: LCCOMB_X18_Y23_N24
\i_bcd_decode_rom|rom_addr[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_bcd_decode_rom|rom_addr[4]~feeder_combout\ = \i_dc_disp_ctrl|bcd_input_vector\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_dc_disp_ctrl|bcd_input_vector\(4),
	combout => \i_bcd_decode_rom|rom_addr[4]~feeder_combout\);

-- Location: LCFF_X18_Y23_N25
\i_bcd_decode_rom|rom_addr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_bcd_decode_rom|rom_addr[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_bcd_decode_rom|rom_addr\(4));

-- Location: LCFF_X18_Y23_N19
\i_dc_disp_ctrl|bcd_input_vector[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_pwm_ctrl|new_dc\(5),
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_input_vector[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_input_vector\(5));

-- Location: LCCOMB_X18_Y23_N26
\i_bcd_decode_rom|rom_addr[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_bcd_decode_rom|rom_addr[5]~feeder_combout\ = \i_dc_disp_ctrl|bcd_input_vector\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_dc_disp_ctrl|bcd_input_vector\(5),
	combout => \i_bcd_decode_rom|rom_addr[5]~feeder_combout\);

-- Location: LCFF_X18_Y23_N27
\i_bcd_decode_rom|rom_addr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_bcd_decode_rom|rom_addr[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_bcd_decode_rom|rom_addr\(5));

-- Location: LCCOMB_X18_Y23_N20
\i_dc_disp_ctrl|bcd_input_vector[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|bcd_input_vector[6]~feeder_combout\ = \i_pwm_ctrl|new_dc\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pwm_ctrl|new_dc\(6),
	combout => \i_dc_disp_ctrl|bcd_input_vector[6]~feeder_combout\);

-- Location: LCFF_X18_Y23_N21
\i_dc_disp_ctrl|bcd_input_vector[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|bcd_input_vector[6]~feeder_combout\,
	ena => \i_dc_disp_ctrl|bcd_input_vector[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_input_vector\(6));

-- Location: LCFF_X18_Y23_N13
\i_bcd_decode_rom|rom_addr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_dc_disp_ctrl|bcd_input_vector\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_bcd_decode_rom|rom_addr\(6));

-- Location: LCFF_X18_Y23_N31
\i_dc_disp_ctrl|bcd_input_vector[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_pwm_ctrl|new_dc\(7),
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_input_vector[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_input_vector\(7));

-- Location: LCCOMB_X18_Y23_N22
\i_bcd_decode_rom|rom_addr[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_bcd_decode_rom|rom_addr[7]~feeder_combout\ = \i_dc_disp_ctrl|bcd_input_vector\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_dc_disp_ctrl|bcd_input_vector\(7),
	combout => \i_bcd_decode_rom|rom_addr[7]~feeder_combout\);

-- Location: LCFF_X18_Y23_N23
\i_bcd_decode_rom|rom_addr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_bcd_decode_rom|rom_addr[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_bcd_decode_rom|rom_addr\(7));

-- Location: M4K_X17_Y23
\i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"9565494E52946509264891E469164490E42906408E6388DE368D6348CE328C6308A62889E268962488E22886208661885E168561484E12846108260881E06816",
	mem_init0 => X"0480E02806006659865D966559464D92645906258861D866158460D82605805E5785DD765D5745CD725C5705A56859D665956458D62585605655855D565555454D52545505254851D465154450D42505404E5384DD364D5344CD324C5304A52849D264952448D22485204651845D164551444D12445104250841D064150440D02405002649825C962549424C92244902248821C862148420C82204801E4781DC761D4741CC721C4701A46819C661946418C62184601645815C561545414C52144501244811C461144410C42104400E4380DC360D4340CC320C4300A42809C260942408C22084200641805C160541404C12044100240801C060140400C0200400",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/pwm_module.ram0_bcd_decode_rom_eb028e2c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "bcd_decode_rom:i_bcd_decode_rom|altsyncram:bcd_rom_rtl_0|altsyncram_as71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 10,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clock_50~clkctrl_outclk\,
	portaaddr => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y23_N22
\i_pwm_ctrl|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector8~0_combout\ = (\i_pwm_ctrl|LessThan1~3_combout\ & (!\i_pwm_ctrl|new_dc[5]~16_combout\ & ((\i_pwm_ctrl|Selector9~0_combout\)))) # (!\i_pwm_ctrl|LessThan1~3_combout\ & ((\i_pwm_ctrl|update_dc~regout\) # 
-- ((!\i_pwm_ctrl|new_dc[5]~16_combout\ & \i_pwm_ctrl|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|LessThan1~3_combout\,
	datab => \i_pwm_ctrl|new_dc[5]~16_combout\,
	datac => \i_pwm_ctrl|update_dc~regout\,
	datad => \i_pwm_ctrl|Selector9~0_combout\,
	combout => \i_pwm_ctrl|Selector8~0_combout\);

-- Location: LCFF_X29_Y23_N23
\i_pwm_ctrl|update_dc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Selector8~0_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|update_dc~regout\);

-- Location: LCCOMB_X32_Y23_N0
\i_pwm_ctrl|one_ms_cnt[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[0]~16_combout\ = \i_pwm_ctrl|one_ms_cnt\(0) $ (VCC)
-- \i_pwm_ctrl|one_ms_cnt[0]~17\ = CARRY(\i_pwm_ctrl|one_ms_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(0),
	datad => VCC,
	combout => \i_pwm_ctrl|one_ms_cnt[0]~16_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[0]~17\);

-- Location: LCFF_X32_Y23_N1
\i_pwm_ctrl|one_ms_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[0]~16_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(0));

-- Location: LCCOMB_X32_Y23_N2
\i_pwm_ctrl|one_ms_cnt[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[1]~18_combout\ = (\i_pwm_ctrl|one_ms_cnt\(1) & (!\i_pwm_ctrl|one_ms_cnt[0]~17\)) # (!\i_pwm_ctrl|one_ms_cnt\(1) & ((\i_pwm_ctrl|one_ms_cnt[0]~17\) # (GND)))
-- \i_pwm_ctrl|one_ms_cnt[1]~19\ = CARRY((!\i_pwm_ctrl|one_ms_cnt[0]~17\) # (!\i_pwm_ctrl|one_ms_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(1),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[0]~17\,
	combout => \i_pwm_ctrl|one_ms_cnt[1]~18_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[1]~19\);

-- Location: LCFF_X32_Y23_N3
\i_pwm_ctrl|one_ms_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[1]~18_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(1));

-- Location: LCCOMB_X32_Y23_N4
\i_pwm_ctrl|one_ms_cnt[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[2]~20_combout\ = (\i_pwm_ctrl|one_ms_cnt\(2) & (\i_pwm_ctrl|one_ms_cnt[1]~19\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(2) & (!\i_pwm_ctrl|one_ms_cnt[1]~19\ & VCC))
-- \i_pwm_ctrl|one_ms_cnt[2]~21\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(2) & !\i_pwm_ctrl|one_ms_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(2),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[1]~19\,
	combout => \i_pwm_ctrl|one_ms_cnt[2]~20_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[2]~21\);

-- Location: LCFF_X32_Y23_N5
\i_pwm_ctrl|one_ms_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[2]~20_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(2));

-- Location: LCCOMB_X32_Y23_N8
\i_pwm_ctrl|one_ms_cnt[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[4]~24_combout\ = (\i_pwm_ctrl|one_ms_cnt\(4) & (\i_pwm_ctrl|one_ms_cnt[3]~23\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(4) & (!\i_pwm_ctrl|one_ms_cnt[3]~23\ & VCC))
-- \i_pwm_ctrl|one_ms_cnt[4]~25\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(4) & !\i_pwm_ctrl|one_ms_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[3]~23\,
	combout => \i_pwm_ctrl|one_ms_cnt[4]~24_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[4]~25\);

-- Location: LCFF_X32_Y23_N9
\i_pwm_ctrl|one_ms_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[4]~24_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(4));

-- Location: LCCOMB_X32_Y23_N10
\i_pwm_ctrl|one_ms_cnt[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[5]~26_combout\ = (\i_pwm_ctrl|one_ms_cnt\(5) & (!\i_pwm_ctrl|one_ms_cnt[4]~25\)) # (!\i_pwm_ctrl|one_ms_cnt\(5) & ((\i_pwm_ctrl|one_ms_cnt[4]~25\) # (GND)))
-- \i_pwm_ctrl|one_ms_cnt[5]~27\ = CARRY((!\i_pwm_ctrl|one_ms_cnt[4]~25\) # (!\i_pwm_ctrl|one_ms_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(5),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[4]~25\,
	combout => \i_pwm_ctrl|one_ms_cnt[5]~26_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[5]~27\);

-- Location: LCCOMB_X32_Y23_N12
\i_pwm_ctrl|one_ms_cnt[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[6]~28_combout\ = (\i_pwm_ctrl|one_ms_cnt\(6) & (\i_pwm_ctrl|one_ms_cnt[5]~27\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(6) & (!\i_pwm_ctrl|one_ms_cnt[5]~27\ & VCC))
-- \i_pwm_ctrl|one_ms_cnt[6]~29\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(6) & !\i_pwm_ctrl|one_ms_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(6),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[5]~27\,
	combout => \i_pwm_ctrl|one_ms_cnt[6]~28_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[6]~29\);

-- Location: LCCOMB_X32_Y23_N14
\i_pwm_ctrl|one_ms_cnt[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[7]~30_combout\ = (\i_pwm_ctrl|one_ms_cnt\(7) & (!\i_pwm_ctrl|one_ms_cnt[6]~29\)) # (!\i_pwm_ctrl|one_ms_cnt\(7) & ((\i_pwm_ctrl|one_ms_cnt[6]~29\) # (GND)))
-- \i_pwm_ctrl|one_ms_cnt[7]~31\ = CARRY((!\i_pwm_ctrl|one_ms_cnt[6]~29\) # (!\i_pwm_ctrl|one_ms_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(7),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[6]~29\,
	combout => \i_pwm_ctrl|one_ms_cnt[7]~30_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[7]~31\);

-- Location: LCFF_X32_Y23_N15
\i_pwm_ctrl|one_ms_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[7]~30_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(7));

-- Location: LCCOMB_X32_Y23_N16
\i_pwm_ctrl|one_ms_cnt[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[8]~32_combout\ = (\i_pwm_ctrl|one_ms_cnt\(8) & (\i_pwm_ctrl|one_ms_cnt[7]~31\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(8) & (!\i_pwm_ctrl|one_ms_cnt[7]~31\ & VCC))
-- \i_pwm_ctrl|one_ms_cnt[8]~33\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(8) & !\i_pwm_ctrl|one_ms_cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(8),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[7]~31\,
	combout => \i_pwm_ctrl|one_ms_cnt[8]~32_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[8]~33\);

-- Location: LCCOMB_X32_Y23_N18
\i_pwm_ctrl|one_ms_cnt[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[9]~34_combout\ = (\i_pwm_ctrl|one_ms_cnt\(9) & (!\i_pwm_ctrl|one_ms_cnt[8]~33\)) # (!\i_pwm_ctrl|one_ms_cnt\(9) & ((\i_pwm_ctrl|one_ms_cnt[8]~33\) # (GND)))
-- \i_pwm_ctrl|one_ms_cnt[9]~35\ = CARRY((!\i_pwm_ctrl|one_ms_cnt[8]~33\) # (!\i_pwm_ctrl|one_ms_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(9),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[8]~33\,
	combout => \i_pwm_ctrl|one_ms_cnt[9]~34_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[9]~35\);

-- Location: LCFF_X32_Y23_N19
\i_pwm_ctrl|one_ms_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[9]~34_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(9));

-- Location: LCCOMB_X32_Y23_N20
\i_pwm_ctrl|one_ms_cnt[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[10]~36_combout\ = (\i_pwm_ctrl|one_ms_cnt\(10) & (\i_pwm_ctrl|one_ms_cnt[9]~35\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(10) & (!\i_pwm_ctrl|one_ms_cnt[9]~35\ & VCC))
-- \i_pwm_ctrl|one_ms_cnt[10]~37\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(10) & !\i_pwm_ctrl|one_ms_cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(10),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[9]~35\,
	combout => \i_pwm_ctrl|one_ms_cnt[10]~36_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[10]~37\);

-- Location: LCCOMB_X32_Y23_N22
\i_pwm_ctrl|one_ms_cnt[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[11]~38_combout\ = (\i_pwm_ctrl|one_ms_cnt\(11) & (!\i_pwm_ctrl|one_ms_cnt[10]~37\)) # (!\i_pwm_ctrl|one_ms_cnt\(11) & ((\i_pwm_ctrl|one_ms_cnt[10]~37\) # (GND)))
-- \i_pwm_ctrl|one_ms_cnt[11]~39\ = CARRY((!\i_pwm_ctrl|one_ms_cnt[10]~37\) # (!\i_pwm_ctrl|one_ms_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(11),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[10]~37\,
	combout => \i_pwm_ctrl|one_ms_cnt[11]~38_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[11]~39\);

-- Location: LCFF_X32_Y23_N23
\i_pwm_ctrl|one_ms_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[11]~38_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(11));

-- Location: LCCOMB_X32_Y23_N24
\i_pwm_ctrl|one_ms_cnt[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[12]~40_combout\ = (\i_pwm_ctrl|one_ms_cnt\(12) & (\i_pwm_ctrl|one_ms_cnt[11]~39\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(12) & (!\i_pwm_ctrl|one_ms_cnt[11]~39\ & VCC))
-- \i_pwm_ctrl|one_ms_cnt[12]~41\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(12) & !\i_pwm_ctrl|one_ms_cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(12),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[11]~39\,
	combout => \i_pwm_ctrl|one_ms_cnt[12]~40_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[12]~41\);

-- Location: LCCOMB_X32_Y23_N26
\i_pwm_ctrl|one_ms_cnt[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[13]~42_combout\ = (\i_pwm_ctrl|one_ms_cnt\(13) & (!\i_pwm_ctrl|one_ms_cnt[12]~41\)) # (!\i_pwm_ctrl|one_ms_cnt\(13) & ((\i_pwm_ctrl|one_ms_cnt[12]~41\) # (GND)))
-- \i_pwm_ctrl|one_ms_cnt[13]~43\ = CARRY((!\i_pwm_ctrl|one_ms_cnt[12]~41\) # (!\i_pwm_ctrl|one_ms_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(13),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[12]~41\,
	combout => \i_pwm_ctrl|one_ms_cnt[13]~42_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[13]~43\);

-- Location: LCFF_X32_Y23_N27
\i_pwm_ctrl|one_ms_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[13]~42_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(13));

-- Location: LCFF_X32_Y23_N21
\i_pwm_ctrl|one_ms_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[10]~36_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(10));

-- Location: LCCOMB_X29_Y23_N26
\i_pwm_ctrl|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan1~2_combout\ = (!\i_pwm_ctrl|one_ms_cnt\(12) & (!\i_pwm_ctrl|one_ms_cnt\(13) & (!\i_pwm_ctrl|one_ms_cnt\(11) & !\i_pwm_ctrl|one_ms_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(12),
	datab => \i_pwm_ctrl|one_ms_cnt\(13),
	datac => \i_pwm_ctrl|one_ms_cnt\(11),
	datad => \i_pwm_ctrl|one_ms_cnt\(10),
	combout => \i_pwm_ctrl|LessThan1~2_combout\);

-- Location: LCFF_X32_Y23_N13
\i_pwm_ctrl|one_ms_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[6]~28_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(6));

-- Location: LCFF_X32_Y23_N11
\i_pwm_ctrl|one_ms_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[5]~26_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(5));

-- Location: LCCOMB_X29_Y23_N14
\i_pwm_ctrl|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan1~0_combout\ = (!\i_pwm_ctrl|one_ms_cnt\(7) & (((!\i_pwm_ctrl|one_ms_cnt\(4) & !\i_pwm_ctrl|one_ms_cnt\(5))) # (!\i_pwm_ctrl|one_ms_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(4),
	datab => \i_pwm_ctrl|one_ms_cnt\(7),
	datac => \i_pwm_ctrl|one_ms_cnt\(6),
	datad => \i_pwm_ctrl|one_ms_cnt\(5),
	combout => \i_pwm_ctrl|LessThan1~0_combout\);

-- Location: LCFF_X32_Y23_N17
\i_pwm_ctrl|one_ms_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[8]~32_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(8));

-- Location: LCCOMB_X29_Y23_N16
\i_pwm_ctrl|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan1~1_combout\ = (\i_pwm_ctrl|LessThan1~0_combout\) # ((!\i_pwm_ctrl|one_ms_cnt\(8)) # (!\i_pwm_ctrl|one_ms_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|LessThan1~0_combout\,
	datac => \i_pwm_ctrl|one_ms_cnt\(9),
	datad => \i_pwm_ctrl|one_ms_cnt\(8),
	combout => \i_pwm_ctrl|LessThan1~1_combout\);

-- Location: LCCOMB_X32_Y23_N28
\i_pwm_ctrl|one_ms_cnt[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[14]~44_combout\ = (\i_pwm_ctrl|one_ms_cnt\(14) & (\i_pwm_ctrl|one_ms_cnt[13]~43\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(14) & (!\i_pwm_ctrl|one_ms_cnt[13]~43\ & VCC))
-- \i_pwm_ctrl|one_ms_cnt[14]~45\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(14) & !\i_pwm_ctrl|one_ms_cnt[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(14),
	datad => VCC,
	cin => \i_pwm_ctrl|one_ms_cnt[13]~43\,
	combout => \i_pwm_ctrl|one_ms_cnt[14]~44_combout\,
	cout => \i_pwm_ctrl|one_ms_cnt[14]~45\);

-- Location: LCFF_X32_Y23_N29
\i_pwm_ctrl|one_ms_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[14]~44_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(14));

-- Location: LCCOMB_X32_Y23_N30
\i_pwm_ctrl|one_ms_cnt[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt[15]~46_combout\ = \i_pwm_ctrl|one_ms_cnt[14]~45\ $ (\i_pwm_ctrl|one_ms_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_pwm_ctrl|one_ms_cnt\(15),
	cin => \i_pwm_ctrl|one_ms_cnt[14]~45\,
	combout => \i_pwm_ctrl|one_ms_cnt[15]~46_combout\);

-- Location: LCFF_X32_Y23_N31
\i_pwm_ctrl|one_ms_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[15]~46_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(15));

-- Location: LCCOMB_X29_Y23_N12
\i_pwm_ctrl|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan1~3_combout\ = (\i_pwm_ctrl|one_ms_cnt\(14) & (\i_pwm_ctrl|one_ms_cnt\(15) & ((!\i_pwm_ctrl|LessThan1~1_combout\) # (!\i_pwm_ctrl|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(14),
	datab => \i_pwm_ctrl|LessThan1~2_combout\,
	datac => \i_pwm_ctrl|LessThan1~1_combout\,
	datad => \i_pwm_ctrl|one_ms_cnt\(15),
	combout => \i_pwm_ctrl|LessThan1~3_combout\);

-- Location: LCCOMB_X29_Y23_N20
\i_pwm_ctrl|update_dc_now~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|update_dc_now~0_combout\ = (\i_pwm_ctrl|LessThan1~3_combout\ & ((\i_pwm_ctrl|update_dc~regout\) # (\i_pwm_ctrl|update_dc_now~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|update_dc~regout\,
	datac => \i_pwm_ctrl|update_dc_now~regout\,
	datad => \i_pwm_ctrl|LessThan1~3_combout\,
	combout => \i_pwm_ctrl|update_dc_now~0_combout\);

-- Location: LCFF_X29_Y23_N21
\i_pwm_ctrl|update_dc_now\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|update_dc_now~0_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|update_dc_now~regout\);

-- Location: LCCOMB_X9_Y22_N0
\i_dc_disp_ctrl|send_data_state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|send_data_state~16_combout\ = (!\i_dc_disp_ctrl|send_data_state.s_idle~regout\ & \i_pwm_ctrl|update_dc_now~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|send_data_state.s_idle~regout\,
	datad => \i_pwm_ctrl|update_dc_now~regout\,
	combout => \i_dc_disp_ctrl|send_data_state~16_combout\);

-- Location: LCFF_X9_Y22_N1
\i_dc_disp_ctrl|send_data_state.s_send_hundreds\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|send_data_state~16_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\);

-- Location: LCFF_X9_Y23_N11
\i_dc_disp_ctrl|send_data_state.s_send_tens\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\);

-- Location: LCFF_X9_Y22_N31
\i_dc_disp_ctrl|send_data_state.s_send_ones\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\);

-- Location: LCCOMB_X8_Y22_N20
\i_dc_disp_ctrl|bcd_0_in[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|bcd_0_in[3]~0_combout\ = (\b_gen_pll:i_reset_ctrl|reset_out~regout\ & \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	datad => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	combout => \i_dc_disp_ctrl|bcd_0_in[3]~0_combout\);

-- Location: LCFF_X8_Y22_N3
\i_dc_disp_ctrl|bcd_0_in[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a1\,
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_0_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_0_in\(1));

-- Location: LCCOMB_X11_Y22_N0
\i_serial_uart|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector25~0_combout\ = (\i_serial_uart|tx_state.s_idle~regout\ & ((\i_serial_uart|transmit_ready~regout\) # ((\i_serial_uart|tx_state.s_stop_bit~regout\ & \i_serial_uart|tx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|transmit_ready~regout\,
	datab => \i_serial_uart|tx_state.s_idle~regout\,
	datac => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector25~0_combout\);

-- Location: LCFF_X9_Y22_N9
\i_dc_disp_ctrl|send_data_state.s_send_procent\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|send_data_state.s_send_procent~regout\);

-- Location: LCFF_X9_Y22_N27
\i_dc_disp_ctrl|send_data_state.s_send_cr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_dc_disp_ctrl|send_data_state.s_send_procent~regout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|send_data_state.s_send_cr~regout\);

-- Location: LCCOMB_X9_Y22_N8
\i_dc_disp_ctrl|byte_vector[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|byte_vector[0]~0_combout\ = (!\i_dc_disp_ctrl|send_data_state.s_send_procent~regout\ & !\i_dc_disp_ctrl|send_data_state.s_send_cr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_ctrl|send_data_state.s_send_procent~regout\,
	datad => \i_dc_disp_ctrl|send_data_state.s_send_cr~regout\,
	combout => \i_dc_disp_ctrl|byte_vector[0]~0_combout\);

-- Location: LCCOMB_X9_Y22_N6
\i_dc_disp_ctrl|byte_vector[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|byte_vector[0]~1_combout\ = (\i_dc_disp_ctrl|send_data_state.s_idle~regout\ & ((\i_serial_uart|transmit_ready~regout\) # ((!\i_dc_disp_ctrl|send_data_state.s_send_ones~regout\ & \i_dc_disp_ctrl|byte_vector[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|send_data_state.s_idle~regout\,
	datab => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	datac => \i_dc_disp_ctrl|byte_vector[0]~0_combout\,
	datad => \i_serial_uart|transmit_ready~regout\,
	combout => \i_dc_disp_ctrl|byte_vector[0]~1_combout\);

-- Location: LCCOMB_X9_Y22_N18
\i_dc_disp_ctrl|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector5~0_combout\ = (\i_dc_disp_ctrl|transmit_valid_out~regout\ & !\i_dc_disp_ctrl|byte_vector[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_ctrl|transmit_valid_out~regout\,
	datad => \i_dc_disp_ctrl|byte_vector[0]~1_combout\,
	combout => \i_dc_disp_ctrl|Selector5~0_combout\);

-- Location: LCFF_X9_Y22_N19
\i_dc_disp_ctrl|transmit_valid_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|Selector5~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|transmit_valid_out~regout\);

-- Location: LCCOMB_X11_Y22_N20
\i_serial_uart|Selector25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector25~1_combout\ = (\i_serial_uart|Selector25~0_combout\) # ((\i_dc_disp_ctrl|transmit_valid_out~regout\ & !\i_serial_uart|tx_state.s_idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|Selector25~0_combout\,
	datac => \i_dc_disp_ctrl|transmit_valid_out~regout\,
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector25~1_combout\);

-- Location: LCFF_X11_Y22_N21
\i_serial_uart|transmit_ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector25~1_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|transmit_ready~regout\);

-- Location: LCCOMB_X9_Y23_N26
\i_dc_disp_ctrl|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector13~0_combout\ = (\i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\ & (!\i_dc_disp_ctrl|send_data_state.s_send_tens~regout\ & ((!\i_serial_uart|transmit_ready~regout\) # (!\i_dc_disp_ctrl|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|LessThan0~1_combout\,
	datab => \i_serial_uart|transmit_ready~regout\,
	datac => \i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\,
	datad => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\,
	combout => \i_dc_disp_ctrl|Selector13~0_combout\);

-- Location: LCCOMB_X9_Y22_N22
\i_dc_disp_ctrl|bcd_2_in[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|bcd_2_in[1]~0_combout\ = (\b_gen_pll:i_reset_ctrl|reset_out~regout\ & \i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	datad => \i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\,
	combout => \i_dc_disp_ctrl|bcd_2_in[1]~0_combout\);

-- Location: LCFF_X9_Y23_N9
\i_dc_disp_ctrl|bcd_2_in[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a9\,
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_2_in[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_2_in\(1));

-- Location: LCCOMB_X8_Y22_N4
\i_dc_disp_ctrl|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector12~1_combout\ = (!\i_dc_disp_ctrl|send_data_state.s_send_ones~regout\ & ((\i_dc_disp_ctrl|Selector12~0_combout\) # ((\i_dc_disp_ctrl|Selector13~0_combout\ & \i_dc_disp_ctrl|bcd_2_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|Selector12~0_combout\,
	datab => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	datac => \i_dc_disp_ctrl|Selector13~0_combout\,
	datad => \i_dc_disp_ctrl|bcd_2_in\(1),
	combout => \i_dc_disp_ctrl|Selector12~1_combout\);

-- Location: LCFF_X8_Y22_N31
\i_dc_disp_ctrl|bcd_0_in[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_0_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_0_in\(3));

-- Location: LCCOMB_X8_Y22_N22
\i_dc_disp_ctrl|Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector12~2_combout\ = (\i_dc_disp_ctrl|Selector12~1_combout\) # ((\i_dc_disp_ctrl|send_data_state.s_send_ones~regout\ & (\i_dc_disp_ctrl|bcd_0_in\(1) & !\i_dc_disp_ctrl|bcd_0_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	datab => \i_dc_disp_ctrl|bcd_0_in\(1),
	datac => \i_dc_disp_ctrl|Selector12~1_combout\,
	datad => \i_dc_disp_ctrl|bcd_0_in\(3),
	combout => \i_dc_disp_ctrl|Selector12~2_combout\);

-- Location: LCCOMB_X8_Y22_N10
\i_dc_disp_ctrl|byte_vector[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|byte_vector[0]~2_combout\ = (\b_gen_pll:i_reset_ctrl|reset_out~regout\ & \i_dc_disp_ctrl|byte_vector[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	datad => \i_dc_disp_ctrl|byte_vector[0]~1_combout\,
	combout => \i_dc_disp_ctrl|byte_vector[0]~2_combout\);

-- Location: LCFF_X8_Y22_N23
\i_dc_disp_ctrl|byte_vector[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|Selector12~2_combout\,
	ena => \i_dc_disp_ctrl|byte_vector[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|byte_vector\(1));

-- Location: LCCOMB_X10_Y22_N28
\i_serial_uart|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector23~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_byte_saved\(2))) # (!\i_serial_uart|tx_state.s_tx_data~regout\ & ((\i_dc_disp_ctrl|byte_vector\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_byte_saved\(2),
	datab => \i_dc_disp_ctrl|byte_vector\(1),
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	combout => \i_serial_uart|Selector23~0_combout\);

-- Location: LCCOMB_X11_Y22_N4
\i_serial_uart|tx_byte_saved[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_byte_saved[4]~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & ((\i_serial_uart|tx_bit_cnt_wrap~regout\) # ((!\i_serial_uart|tx_state.s_idle~regout\ & !\i_dc_disp_ctrl|transmit_valid_out~regout\)))) # 
-- (!\i_serial_uart|tx_state.s_tx_data~regout\ & (!\i_serial_uart|tx_state.s_idle~regout\ & (!\i_dc_disp_ctrl|transmit_valid_out~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_tx_data~regout\,
	datab => \i_serial_uart|tx_state.s_idle~regout\,
	datac => \i_dc_disp_ctrl|transmit_valid_out~regout\,
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|tx_byte_saved[4]~0_combout\);

-- Location: LCFF_X10_Y22_N29
\i_serial_uart|tx_byte_saved[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector23~0_combout\,
	ena => \i_serial_uart|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_byte_saved\(1));

-- Location: LCFF_X8_Y22_N1
\i_dc_disp_ctrl|bcd_0_in[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_0_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_0_in\(0));

-- Location: LCCOMB_X8_Y22_N16
\i_dc_disp_ctrl|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux25~0_combout\ = (\i_dc_disp_ctrl|bcd_0_in\(0) & (((!\i_dc_disp_ctrl|bcd_0_in\(2) & !\i_dc_disp_ctrl|bcd_0_in\(1))) # (!\i_dc_disp_ctrl|bcd_0_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_0_in\(2),
	datab => \i_dc_disp_ctrl|bcd_0_in\(3),
	datac => \i_dc_disp_ctrl|bcd_0_in\(1),
	datad => \i_dc_disp_ctrl|bcd_0_in\(0),
	combout => \i_dc_disp_ctrl|Mux25~0_combout\);

-- Location: LCFF_X9_Y23_N15
\i_dc_disp_ctrl|bcd_2_in[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a8\,
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_2_in[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_2_in\(0));

-- Location: LCCOMB_X9_Y23_N4
\i_dc_disp_ctrl|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|process_0~0_combout\ = ((\i_pwm_ctrl|new_dc\(3) & ((\i_pwm_ctrl|new_dc\(1)) # (\i_pwm_ctrl|new_dc\(2))))) # (!\i_serial_uart|transmit_ready~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(1),
	datab => \i_serial_uart|transmit_ready~regout\,
	datac => \i_pwm_ctrl|new_dc\(2),
	datad => \i_pwm_ctrl|new_dc\(3),
	combout => \i_dc_disp_ctrl|process_0~0_combout\);

-- Location: LCCOMB_X9_Y23_N10
\i_dc_disp_ctrl|seven_seg_vector1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\ = (\i_dc_disp_ctrl|send_data_state.s_send_tens~regout\ & ((\i_pwm_ctrl|new_dc\(7)) # ((\i_dc_disp_ctrl|process_0~0_combout\) # (!\i_pwm_ctrl|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(7),
	datab => \i_dc_disp_ctrl|process_0~0_combout\,
	datac => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\,
	datad => \i_pwm_ctrl|Equal0~0_combout\,
	combout => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\);

-- Location: LCCOMB_X9_Y23_N20
\i_dc_disp_ctrl|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector13~1_combout\ = (\i_dc_disp_ctrl|Mux14~0_combout\ & ((\i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\) # ((\i_dc_disp_ctrl|bcd_2_in\(0) & \i_dc_disp_ctrl|Selector13~0_combout\)))) # (!\i_dc_disp_ctrl|Mux14~0_combout\ & 
-- (\i_dc_disp_ctrl|bcd_2_in\(0) & ((\i_dc_disp_ctrl|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|Mux14~0_combout\,
	datab => \i_dc_disp_ctrl|bcd_2_in\(0),
	datac => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	datad => \i_dc_disp_ctrl|Selector13~0_combout\,
	combout => \i_dc_disp_ctrl|Selector13~1_combout\);

-- Location: LCCOMB_X8_Y22_N26
\i_dc_disp_ctrl|Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector13~2_combout\ = (\i_dc_disp_ctrl|send_data_state.s_send_ones~regout\ & (((\i_dc_disp_ctrl|Mux25~0_combout\)))) # (!\i_dc_disp_ctrl|send_data_state.s_send_ones~regout\ & ((\i_dc_disp_ctrl|seven_seg_vector2[2]~3_combout\) # 
-- ((\i_dc_disp_ctrl|Selector13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|seven_seg_vector2[2]~3_combout\,
	datab => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	datac => \i_dc_disp_ctrl|Mux25~0_combout\,
	datad => \i_dc_disp_ctrl|Selector13~1_combout\,
	combout => \i_dc_disp_ctrl|Selector13~2_combout\);

-- Location: LCFF_X8_Y22_N27
\i_dc_disp_ctrl|byte_vector[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|Selector13~2_combout\,
	ena => \i_dc_disp_ctrl|byte_vector[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|byte_vector\(0));

-- Location: LCCOMB_X10_Y22_N18
\i_serial_uart|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector24~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_byte_saved\(1))) # (!\i_serial_uart|tx_state.s_tx_data~regout\ & ((\i_dc_disp_ctrl|byte_vector\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_byte_saved\(1),
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	datad => \i_dc_disp_ctrl|byte_vector\(0),
	combout => \i_serial_uart|Selector24~0_combout\);

-- Location: LCFF_X10_Y22_N19
\i_serial_uart|tx_byte_saved[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector24~0_combout\,
	ena => \i_serial_uart|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_byte_saved\(0));

-- Location: LCCOMB_X11_Y22_N12
\i_serial_uart|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector34~0_combout\ = (\i_serial_uart|tx_state.s_stop_bit~regout\) # (((\i_serial_uart|tx_state.s_tx_data~regout\ & \i_serial_uart|tx_byte_saved\(0))) # (!\i_serial_uart|tx_state.s_idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_tx_data~regout\,
	datab => \i_serial_uart|tx_byte_saved\(0),
	datac => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector34~0_combout\);

-- Location: LCFF_X8_Y22_N13
\i_dc_disp_ctrl|bcd_0_in[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_0_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_0_in\(2));

-- Location: LCCOMB_X8_Y22_N30
\i_dc_disp_ctrl|Mux32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux32~0_combout\ = (\i_dc_disp_ctrl|bcd_0_in\(1) & (((!\i_dc_disp_ctrl|bcd_0_in\(3))))) # (!\i_dc_disp_ctrl|bcd_0_in\(1) & (\i_dc_disp_ctrl|bcd_0_in\(2) $ (((\i_dc_disp_ctrl|bcd_0_in\(3)) # (!\i_dc_disp_ctrl|bcd_0_in\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_0_in\(2),
	datab => \i_dc_disp_ctrl|bcd_0_in\(1),
	datac => \i_dc_disp_ctrl|bcd_0_in\(3),
	datad => \i_dc_disp_ctrl|bcd_0_in\(0),
	combout => \i_dc_disp_ctrl|Mux32~0_combout\);

-- Location: LCCOMB_X9_Y22_N10
\i_dc_disp_ctrl|seven_seg_vector0[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\ = (\i_dc_disp_ctrl|send_data_state.s_send_ones~regout\ & \i_serial_uart|transmit_ready~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_ctrl|send_data_state.s_send_ones~regout\,
	datad => \i_serial_uart|transmit_ready~regout\,
	combout => \i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\);

-- Location: LCCOMB_X8_Y22_N8
\i_dc_disp_ctrl|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux31~0_combout\ = (\i_dc_disp_ctrl|bcd_0_in\(2) & (!\i_dc_disp_ctrl|bcd_0_in\(3) & (\i_dc_disp_ctrl|bcd_0_in\(1) $ (!\i_dc_disp_ctrl|bcd_0_in\(0))))) # (!\i_dc_disp_ctrl|bcd_0_in\(2) & (((!\i_dc_disp_ctrl|bcd_0_in\(1))) # 
-- (!\i_dc_disp_ctrl|bcd_0_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_0_in\(2),
	datab => \i_dc_disp_ctrl|bcd_0_in\(3),
	datac => \i_dc_disp_ctrl|bcd_0_in\(1),
	datad => \i_dc_disp_ctrl|bcd_0_in\(0),
	combout => \i_dc_disp_ctrl|Mux31~0_combout\);

-- Location: LCCOMB_X8_Y22_N18
\i_dc_disp_ctrl|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux30~0_combout\ = (\i_dc_disp_ctrl|bcd_0_in\(2) & (!\i_dc_disp_ctrl|bcd_0_in\(3))) # (!\i_dc_disp_ctrl|bcd_0_in\(2) & (((!\i_dc_disp_ctrl|bcd_0_in\(3) & \i_dc_disp_ctrl|bcd_0_in\(0))) # (!\i_dc_disp_ctrl|bcd_0_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_0_in\(2),
	datab => \i_dc_disp_ctrl|bcd_0_in\(3),
	datac => \i_dc_disp_ctrl|bcd_0_in\(1),
	datad => \i_dc_disp_ctrl|bcd_0_in\(0),
	combout => \i_dc_disp_ctrl|Mux30~0_combout\);

-- Location: LCCOMB_X8_Y22_N28
\i_dc_disp_ctrl|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux29~0_combout\ = (\i_dc_disp_ctrl|bcd_0_in\(2) & (!\i_dc_disp_ctrl|bcd_0_in\(3) & (\i_dc_disp_ctrl|bcd_0_in\(1) $ (\i_dc_disp_ctrl|bcd_0_in\(0))))) # (!\i_dc_disp_ctrl|bcd_0_in\(2) & ((\i_dc_disp_ctrl|bcd_0_in\(1) & 
-- (!\i_dc_disp_ctrl|bcd_0_in\(3))) # (!\i_dc_disp_ctrl|bcd_0_in\(1) & ((!\i_dc_disp_ctrl|bcd_0_in\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_0_in\(2),
	datab => \i_dc_disp_ctrl|bcd_0_in\(3),
	datac => \i_dc_disp_ctrl|bcd_0_in\(1),
	datad => \i_dc_disp_ctrl|bcd_0_in\(0),
	combout => \i_dc_disp_ctrl|Mux29~0_combout\);

-- Location: LCCOMB_X8_Y22_N6
\i_dc_disp_ctrl|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux28~0_combout\ = (!\i_dc_disp_ctrl|bcd_0_in\(0) & ((\i_dc_disp_ctrl|bcd_0_in\(1) & ((!\i_dc_disp_ctrl|bcd_0_in\(3)))) # (!\i_dc_disp_ctrl|bcd_0_in\(1) & (!\i_dc_disp_ctrl|bcd_0_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_0_in\(2),
	datab => \i_dc_disp_ctrl|bcd_0_in\(3),
	datac => \i_dc_disp_ctrl|bcd_0_in\(1),
	datad => \i_dc_disp_ctrl|bcd_0_in\(0),
	combout => \i_dc_disp_ctrl|Mux28~0_combout\);

-- Location: LCCOMB_X8_Y22_N24
\i_dc_disp_ctrl|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux27~0_combout\ = (\i_dc_disp_ctrl|bcd_0_in\(2) & (!\i_dc_disp_ctrl|bcd_0_in\(3) & ((!\i_dc_disp_ctrl|bcd_0_in\(0)) # (!\i_dc_disp_ctrl|bcd_0_in\(1))))) # (!\i_dc_disp_ctrl|bcd_0_in\(2) & (!\i_dc_disp_ctrl|bcd_0_in\(1) & 
-- ((\i_dc_disp_ctrl|bcd_0_in\(3)) # (!\i_dc_disp_ctrl|bcd_0_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_0_in\(2),
	datab => \i_dc_disp_ctrl|bcd_0_in\(3),
	datac => \i_dc_disp_ctrl|bcd_0_in\(1),
	datad => \i_dc_disp_ctrl|bcd_0_in\(0),
	combout => \i_dc_disp_ctrl|Mux27~0_combout\);

-- Location: LCCOMB_X8_Y22_N0
\i_dc_disp_ctrl|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux26~0_combout\ = (\i_dc_disp_ctrl|bcd_0_in\(2) & (!\i_dc_disp_ctrl|bcd_0_in\(3) & ((!\i_dc_disp_ctrl|bcd_0_in\(1)) # (!\i_dc_disp_ctrl|bcd_0_in\(0))))) # (!\i_dc_disp_ctrl|bcd_0_in\(2) & (\i_dc_disp_ctrl|bcd_0_in\(3) $ 
-- (((\i_dc_disp_ctrl|bcd_0_in\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_0_in\(2),
	datab => \i_dc_disp_ctrl|bcd_0_in\(3),
	datac => \i_dc_disp_ctrl|bcd_0_in\(0),
	datad => \i_dc_disp_ctrl|bcd_0_in\(1),
	combout => \i_dc_disp_ctrl|Mux26~0_combout\);

-- Location: LCCOMB_X7_Y22_N26
\i_dc_disp_ctrl|bcd_1_in[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|bcd_1_in[3]~0_combout\ = (\b_gen_pll:i_reset_ctrl|reset_out~regout\ & \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	datad => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\,
	combout => \i_dc_disp_ctrl|bcd_1_in[3]~0_combout\);

-- Location: LCFF_X7_Y22_N7
\i_dc_disp_ctrl|bcd_1_in[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_1_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_1_in\(3));

-- Location: LCFF_X7_Y22_N3
\i_dc_disp_ctrl|bcd_1_in[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_1_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_1_in\(1));

-- Location: LCFF_X7_Y22_N1
\i_dc_disp_ctrl|bcd_1_in[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_1_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_1_in\(0));

-- Location: LCFF_X7_Y22_N21
\i_dc_disp_ctrl|bcd_1_in[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_bcd_decode_rom|bcd_rom_rtl_0|auto_generated|ram_block1a6\,
	sload => VCC,
	ena => \i_dc_disp_ctrl|bcd_1_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|bcd_1_in\(2));

-- Location: LCCOMB_X7_Y22_N0
\i_dc_disp_ctrl|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux21~0_combout\ = (\i_dc_disp_ctrl|bcd_1_in\(1) & (!\i_dc_disp_ctrl|bcd_1_in\(3))) # (!\i_dc_disp_ctrl|bcd_1_in\(1) & (\i_dc_disp_ctrl|bcd_1_in\(2) $ (((\i_dc_disp_ctrl|bcd_1_in\(3)) # (!\i_dc_disp_ctrl|bcd_1_in\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_1_in\(3),
	datab => \i_dc_disp_ctrl|bcd_1_in\(1),
	datac => \i_dc_disp_ctrl|bcd_1_in\(0),
	datad => \i_dc_disp_ctrl|bcd_1_in\(2),
	combout => \i_dc_disp_ctrl|Mux21~0_combout\);

-- Location: LCCOMB_X7_Y22_N20
\i_dc_disp_ctrl|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux20~0_combout\ = (\i_dc_disp_ctrl|bcd_1_in\(3) & (!\i_dc_disp_ctrl|bcd_1_in\(1) & (!\i_dc_disp_ctrl|bcd_1_in\(2)))) # (!\i_dc_disp_ctrl|bcd_1_in\(3) & ((\i_dc_disp_ctrl|bcd_1_in\(1) $ (!\i_dc_disp_ctrl|bcd_1_in\(0))) # 
-- (!\i_dc_disp_ctrl|bcd_1_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_1_in\(3),
	datab => \i_dc_disp_ctrl|bcd_1_in\(1),
	datac => \i_dc_disp_ctrl|bcd_1_in\(2),
	datad => \i_dc_disp_ctrl|bcd_1_in\(0),
	combout => \i_dc_disp_ctrl|Mux20~0_combout\);

-- Location: LCCOMB_X7_Y22_N16
\i_dc_disp_ctrl|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux19~0_combout\ = (\i_dc_disp_ctrl|bcd_1_in\(2) & (!\i_dc_disp_ctrl|bcd_1_in\(3))) # (!\i_dc_disp_ctrl|bcd_1_in\(2) & (((!\i_dc_disp_ctrl|bcd_1_in\(3) & \i_dc_disp_ctrl|bcd_1_in\(0))) # (!\i_dc_disp_ctrl|bcd_1_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_1_in\(3),
	datab => \i_dc_disp_ctrl|bcd_1_in\(1),
	datac => \i_dc_disp_ctrl|bcd_1_in\(2),
	datad => \i_dc_disp_ctrl|bcd_1_in\(0),
	combout => \i_dc_disp_ctrl|Mux19~0_combout\);

-- Location: LCCOMB_X7_Y22_N18
\i_dc_disp_ctrl|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux18~0_combout\ = (\i_dc_disp_ctrl|bcd_1_in\(2) & (!\i_dc_disp_ctrl|bcd_1_in\(3) & (\i_dc_disp_ctrl|bcd_1_in\(1) $ (\i_dc_disp_ctrl|bcd_1_in\(0))))) # (!\i_dc_disp_ctrl|bcd_1_in\(2) & ((\i_dc_disp_ctrl|bcd_1_in\(1) & 
-- (!\i_dc_disp_ctrl|bcd_1_in\(3))) # (!\i_dc_disp_ctrl|bcd_1_in\(1) & ((!\i_dc_disp_ctrl|bcd_1_in\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_1_in\(3),
	datab => \i_dc_disp_ctrl|bcd_1_in\(1),
	datac => \i_dc_disp_ctrl|bcd_1_in\(2),
	datad => \i_dc_disp_ctrl|bcd_1_in\(0),
	combout => \i_dc_disp_ctrl|Mux18~0_combout\);

-- Location: LCCOMB_X7_Y22_N28
\i_dc_disp_ctrl|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux17~0_combout\ = (!\i_dc_disp_ctrl|bcd_1_in\(0) & ((\i_dc_disp_ctrl|bcd_1_in\(1) & (!\i_dc_disp_ctrl|bcd_1_in\(3))) # (!\i_dc_disp_ctrl|bcd_1_in\(1) & ((!\i_dc_disp_ctrl|bcd_1_in\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_1_in\(3),
	datab => \i_dc_disp_ctrl|bcd_1_in\(1),
	datac => \i_dc_disp_ctrl|bcd_1_in\(2),
	datad => \i_dc_disp_ctrl|bcd_1_in\(0),
	combout => \i_dc_disp_ctrl|Mux17~0_combout\);

-- Location: LCCOMB_X7_Y22_N22
\i_dc_disp_ctrl|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux16~0_combout\ = (\i_dc_disp_ctrl|bcd_1_in\(2) & (!\i_dc_disp_ctrl|bcd_1_in\(3) & ((!\i_dc_disp_ctrl|bcd_1_in\(0)) # (!\i_dc_disp_ctrl|bcd_1_in\(1))))) # (!\i_dc_disp_ctrl|bcd_1_in\(2) & (!\i_dc_disp_ctrl|bcd_1_in\(1) & 
-- ((\i_dc_disp_ctrl|bcd_1_in\(3)) # (!\i_dc_disp_ctrl|bcd_1_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_1_in\(3),
	datab => \i_dc_disp_ctrl|bcd_1_in\(1),
	datac => \i_dc_disp_ctrl|bcd_1_in\(2),
	datad => \i_dc_disp_ctrl|bcd_1_in\(0),
	combout => \i_dc_disp_ctrl|Mux16~0_combout\);

-- Location: LCCOMB_X7_Y22_N8
\i_dc_disp_ctrl|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Mux15~0_combout\ = (\i_dc_disp_ctrl|bcd_1_in\(1) & (!\i_dc_disp_ctrl|bcd_1_in\(3) & ((!\i_dc_disp_ctrl|bcd_1_in\(0)) # (!\i_dc_disp_ctrl|bcd_1_in\(2))))) # (!\i_dc_disp_ctrl|bcd_1_in\(1) & (\i_dc_disp_ctrl|bcd_1_in\(3) $ 
-- ((\i_dc_disp_ctrl|bcd_1_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|bcd_1_in\(3),
	datab => \i_dc_disp_ctrl|bcd_1_in\(1),
	datac => \i_dc_disp_ctrl|bcd_1_in\(2),
	datad => \i_dc_disp_ctrl|bcd_1_in\(0),
	combout => \i_dc_disp_ctrl|Mux15~0_combout\);

-- Location: LCCOMB_X9_Y23_N6
\i_dc_disp_ctrl|seven_seg_vector2[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|seven_seg_vector2[2]~2_combout\ = (!\i_dc_disp_ctrl|send_data_state.s_send_tens~regout\ & ((!\i_serial_uart|transmit_ready~regout\) # (!\i_dc_disp_ctrl|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|LessThan0~1_combout\,
	datab => \i_serial_uart|transmit_ready~regout\,
	datad => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\,
	combout => \i_dc_disp_ctrl|seven_seg_vector2[2]~2_combout\);

-- Location: LCCOMB_X9_Y23_N16
\i_dc_disp_ctrl|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector17~0_combout\ = (\i_dc_disp_ctrl|seven_seg_vector2[2]~2_combout\ & ((\i_dc_disp_ctrl|bcd_2_in\(1)) # (!\i_dc_disp_ctrl|bcd_2_in\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_ctrl|bcd_2_in\(1),
	datac => \i_dc_disp_ctrl|bcd_2_in\(0),
	datad => \i_dc_disp_ctrl|seven_seg_vector2[2]~2_combout\,
	combout => \i_dc_disp_ctrl|Selector17~0_combout\);

-- Location: LCCOMB_X9_Y23_N18
\i_dc_disp_ctrl|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|process_0~1_combout\ = (\i_pwm_ctrl|new_dc\(6)) # ((\i_pwm_ctrl|new_dc\(5)) # ((\i_pwm_ctrl|new_dc\(7)) # (\i_pwm_ctrl|new_dc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(6),
	datab => \i_pwm_ctrl|new_dc\(5),
	datac => \i_pwm_ctrl|new_dc\(7),
	datad => \i_pwm_ctrl|new_dc\(4),
	combout => \i_dc_disp_ctrl|process_0~1_combout\);

-- Location: LCCOMB_X9_Y23_N30
\i_dc_disp_ctrl|seven_seg_vector2[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|seven_seg_vector2[2]~5_combout\ = (\i_dc_disp_ctrl|send_data_state.s_send_tens~regout\ & (((!\i_dc_disp_ctrl|process_0~1_combout\ & !\i_dc_disp_ctrl|process_0~0_combout\)))) # (!\i_dc_disp_ctrl|send_data_state.s_send_tens~regout\ & 
-- (\i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\,
	datab => \i_dc_disp_ctrl|process_0~1_combout\,
	datac => \i_dc_disp_ctrl|process_0~0_combout\,
	datad => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\,
	combout => \i_dc_disp_ctrl|seven_seg_vector2[2]~5_combout\);

-- Location: LCCOMB_X9_Y23_N28
\i_dc_disp_ctrl|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector19~0_combout\ = (\i_dc_disp_ctrl|send_data_state.s_send_tens~regout\ & (((!\i_dc_disp_ctrl|process_0~1_combout\ & !\i_dc_disp_ctrl|process_0~0_combout\)))) # (!\i_dc_disp_ctrl|send_data_state.s_send_tens~regout\ & 
-- (\i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|send_data_state.s_send_hundreds~regout\,
	datab => \i_dc_disp_ctrl|process_0~1_combout\,
	datac => \i_dc_disp_ctrl|process_0~0_combout\,
	datad => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\,
	combout => \i_dc_disp_ctrl|Selector19~0_combout\);

-- Location: LCFF_X9_Y23_N25
\i_dc_disp_ctrl|seven_seg_vector2[1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|seven_seg_vector2[1]~4_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|seven_seg_vector2[1]~_Duplicate_1_regout\);

-- Location: LCCOMB_X9_Y23_N24
\i_dc_disp_ctrl|seven_seg_vector2[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|seven_seg_vector2[1]~4_combout\ = (\i_dc_disp_ctrl|Selector19~0_combout\ & ((\i_dc_disp_ctrl|seven_seg_vector2[2]~2_combout\))) # (!\i_dc_disp_ctrl|Selector19~0_combout\ & (\i_dc_disp_ctrl|seven_seg_vector2[1]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_ctrl|Selector19~0_combout\,
	datac => \i_dc_disp_ctrl|seven_seg_vector2[1]~_Duplicate_1_regout\,
	datad => \i_dc_disp_ctrl|seven_seg_vector2[2]~2_combout\,
	combout => \i_dc_disp_ctrl|seven_seg_vector2[1]~4_combout\);

-- Location: LCCOMB_X9_Y23_N22
\i_dc_disp_ctrl|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector18~0_combout\ = (\i_dc_disp_ctrl|seven_seg_vector2[2]~2_combout\ & ((\i_dc_disp_ctrl|bcd_2_in\(0)) # (!\i_dc_disp_ctrl|bcd_2_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_ctrl|bcd_2_in\(1),
	datac => \i_dc_disp_ctrl|bcd_2_in\(0),
	datad => \i_dc_disp_ctrl|seven_seg_vector2[2]~2_combout\,
	combout => \i_dc_disp_ctrl|Selector18~0_combout\);

-- Location: LCCOMB_X9_Y23_N2
\i_dc_disp_ctrl|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|LessThan0~0_combout\ = (!\i_pwm_ctrl|new_dc\(2) & (!\i_pwm_ctrl|new_dc\(4) & (!\i_pwm_ctrl|new_dc\(7) & !\i_pwm_ctrl|new_dc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(2),
	datab => \i_pwm_ctrl|new_dc\(4),
	datac => \i_pwm_ctrl|new_dc\(7),
	datad => \i_pwm_ctrl|new_dc\(3),
	combout => \i_dc_disp_ctrl|LessThan0~0_combout\);

-- Location: LCCOMB_X9_Y23_N12
\i_dc_disp_ctrl|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|LessThan0~1_combout\ = (\i_dc_disp_ctrl|LessThan0~0_combout\) # ((!\i_pwm_ctrl|new_dc\(7) & ((!\i_pwm_ctrl|new_dc\(5)) # (!\i_pwm_ctrl|new_dc\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(6),
	datab => \i_dc_disp_ctrl|LessThan0~0_combout\,
	datac => \i_pwm_ctrl|new_dc\(7),
	datad => \i_pwm_ctrl|new_dc\(5),
	combout => \i_dc_disp_ctrl|LessThan0~1_combout\);

-- Location: LCCOMB_X9_Y23_N14
\i_dc_disp_ctrl|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector16~0_combout\ = (!\i_dc_disp_ctrl|bcd_2_in\(0) & (!\i_dc_disp_ctrl|send_data_state.s_send_tens~regout\ & ((!\i_serial_uart|transmit_ready~regout\) # (!\i_dc_disp_ctrl|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|LessThan0~1_combout\,
	datab => \i_serial_uart|transmit_ready~regout\,
	datac => \i_dc_disp_ctrl|bcd_2_in\(0),
	datad => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\,
	combout => \i_dc_disp_ctrl|Selector16~0_combout\);

-- Location: LCCOMB_X9_Y23_N0
\i_dc_disp_ctrl|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector15~0_combout\ = (!\i_dc_disp_ctrl|bcd_2_in\(1) & (!\i_dc_disp_ctrl|bcd_2_in\(0) & \i_dc_disp_ctrl|seven_seg_vector2[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_ctrl|bcd_2_in\(1),
	datac => \i_dc_disp_ctrl|bcd_2_in\(0),
	datad => \i_dc_disp_ctrl|seven_seg_vector2[2]~2_combout\,
	combout => \i_dc_disp_ctrl|Selector15~0_combout\);

-- Location: LCCOMB_X9_Y23_N8
\i_dc_disp_ctrl|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|Selector14~0_combout\ = (\i_dc_disp_ctrl|bcd_2_in\(1) & (!\i_dc_disp_ctrl|send_data_state.s_send_tens~regout\ & ((!\i_serial_uart|transmit_ready~regout\) # (!\i_dc_disp_ctrl|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_ctrl|LessThan0~1_combout\,
	datab => \i_serial_uart|transmit_ready~regout\,
	datac => \i_dc_disp_ctrl|bcd_2_in\(1),
	datad => \i_dc_disp_ctrl|send_data_state.s_send_tens~regout\,
	combout => \i_dc_disp_ctrl|Selector14~0_combout\);

-- Location: LCFF_X33_Y22_N25
\i_serial_uart|received_error~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_error~0_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_error~_Duplicate_1_regout\);

-- Location: LCCOMB_X33_Y22_N24
\i_serial_uart|received_error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_error~0_combout\ = (\i_serial_uart|rx_state.s_stop_bit~regout\ & ((\i_serial_uart|rx_bit_cnt_wrap~regout\ & ((!\i_serial_uart|rx_2r~regout\))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & 
-- (\i_serial_uart|received_error~_Duplicate_1_regout\)))) # (!\i_serial_uart|rx_state.s_stop_bit~regout\ & (((\i_serial_uart|received_error~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|received_error~_Duplicate_1_regout\,
	datad => \i_serial_uart|rx_2r~regout\,
	combout => \i_serial_uart|received_error~0_combout\);

-- Location: LCCOMB_X30_Y23_N4
\i_pwm_ctrl|dc_cnt[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~14_combout\ = \i_pwm_ctrl|dc_cnt\(2) $ (VCC)
-- \i_pwm_ctrl|dc_cnt[2]~15\ = CARRY(\i_pwm_ctrl|dc_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|dc_cnt\(2),
	datad => VCC,
	combout => \i_pwm_ctrl|dc_cnt[2]~14_combout\,
	cout => \i_pwm_ctrl|dc_cnt[2]~15\);

-- Location: LCCOMB_X30_Y23_N16
\i_pwm_ctrl|dc_cnt[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[8]~26_combout\ = ((\i_pwm_ctrl|dc_cnt\(8) $ (\i_pwm_ctrl|pwm_state.s_down~regout\ $ (\i_pwm_ctrl|dc_cnt[7]~25\)))) # (GND)
-- \i_pwm_ctrl|dc_cnt[8]~27\ = CARRY((\i_pwm_ctrl|dc_cnt\(8) & ((!\i_pwm_ctrl|dc_cnt[7]~25\) # (!\i_pwm_ctrl|pwm_state.s_down~regout\))) # (!\i_pwm_ctrl|dc_cnt\(8) & (!\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|dc_cnt[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(8),
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[7]~25\,
	combout => \i_pwm_ctrl|dc_cnt[8]~26_combout\,
	cout => \i_pwm_ctrl|dc_cnt[8]~27\);

-- Location: LCFF_X30_Y23_N17
\i_pwm_ctrl|dc_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[8]~26_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(8));

-- Location: LCCOMB_X30_Y23_N8
\i_pwm_ctrl|dc_cnt[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[4]~18_combout\ = ((\i_pwm_ctrl|dc_cnt\(4) $ (\i_pwm_ctrl|pwm_state.s_down~regout\ $ (\i_pwm_ctrl|dc_cnt[3]~17\)))) # (GND)
-- \i_pwm_ctrl|dc_cnt[4]~19\ = CARRY((\i_pwm_ctrl|dc_cnt\(4) & ((!\i_pwm_ctrl|dc_cnt[3]~17\) # (!\i_pwm_ctrl|pwm_state.s_down~regout\))) # (!\i_pwm_ctrl|dc_cnt\(4) & (!\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|dc_cnt[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(4),
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[3]~17\,
	combout => \i_pwm_ctrl|dc_cnt[4]~18_combout\,
	cout => \i_pwm_ctrl|dc_cnt[4]~19\);

-- Location: LCFF_X30_Y23_N9
\i_pwm_ctrl|dc_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[4]~18_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(4));

-- Location: LCCOMB_X31_Y23_N0
\i_pwm_ctrl|dc_cnt[2]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~44_combout\ = (\i_pwm_ctrl|dc_cnt\(6) & (((\i_pwm_ctrl|dc_cnt\(9) & \i_pwm_ctrl|dc_cnt\(4))) # (!\i_pwm_ctrl|dc_cnt\(8)))) # (!\i_pwm_ctrl|dc_cnt\(6) & (!\i_pwm_ctrl|dc_cnt\(8) & ((\i_pwm_ctrl|dc_cnt\(9)) # 
-- (\i_pwm_ctrl|dc_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(6),
	datab => \i_pwm_ctrl|dc_cnt\(8),
	datac => \i_pwm_ctrl|dc_cnt\(9),
	datad => \i_pwm_ctrl|dc_cnt\(4),
	combout => \i_pwm_ctrl|dc_cnt[2]~44_combout\);

-- Location: LCCOMB_X30_Y23_N0
\i_pwm_ctrl|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal1~1_combout\ = (!\i_pwm_ctrl|dc_cnt\(12) & (!\i_pwm_ctrl|dc_cnt\(13) & (!\i_pwm_ctrl|dc_cnt\(10) & !\i_pwm_ctrl|dc_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(12),
	datab => \i_pwm_ctrl|dc_cnt\(13),
	datac => \i_pwm_ctrl|dc_cnt\(10),
	datad => \i_pwm_ctrl|dc_cnt\(11),
	combout => \i_pwm_ctrl|Equal1~1_combout\);

-- Location: LCCOMB_X29_Y23_N0
\i_pwm_ctrl|dc_cnt[2]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~45_combout\ = (\i_pwm_ctrl|Equal1~1_combout\ & ((\i_pwm_ctrl|dc_cnt\(8) & (\i_pwm_ctrl|dc_cnt\(15) & \i_pwm_ctrl|dc_cnt\(14))) # (!\i_pwm_ctrl|dc_cnt\(8) & (!\i_pwm_ctrl|dc_cnt\(15) & !\i_pwm_ctrl|dc_cnt\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(8),
	datab => \i_pwm_ctrl|dc_cnt\(15),
	datac => \i_pwm_ctrl|Equal1~1_combout\,
	datad => \i_pwm_ctrl|dc_cnt\(14),
	combout => \i_pwm_ctrl|dc_cnt[2]~45_combout\);

-- Location: LCCOMB_X29_Y23_N2
\i_pwm_ctrl|dc_cnt[2]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~46_combout\ = (\i_pwm_ctrl|Equal1~0_combout\ & (\i_pwm_ctrl|dc_cnt[2]~45_combout\ & (\i_pwm_ctrl|dc_cnt\(15) $ (!\i_pwm_ctrl|dc_cnt[2]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Equal1~0_combout\,
	datab => \i_pwm_ctrl|dc_cnt\(15),
	datac => \i_pwm_ctrl|dc_cnt[2]~44_combout\,
	datad => \i_pwm_ctrl|dc_cnt[2]~45_combout\,
	combout => \i_pwm_ctrl|dc_cnt[2]~46_combout\);

-- Location: LCCOMB_X30_Y23_N2
\i_pwm_ctrl|dc_cnt[2]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~47_combout\ = (\i_pwm_ctrl|dc_cnt[2]~42_combout\ & (((\i_pwm_ctrl|dc_cnt[2]~43_combout\ & !\i_pwm_ctrl|dc_cnt[2]~46_combout\)))) # (!\i_pwm_ctrl|dc_cnt[2]~42_combout\ & (((!\i_pwm_ctrl|dc_cnt[2]~46_combout\)) # 
-- (!\i_pwm_ctrl|dc_cnt[2]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt[2]~42_combout\,
	datab => \i_pwm_ctrl|dc_cnt[2]~44_combout\,
	datac => \i_pwm_ctrl|dc_cnt[2]~43_combout\,
	datad => \i_pwm_ctrl|dc_cnt[2]~46_combout\,
	combout => \i_pwm_ctrl|dc_cnt[2]~47_combout\);

-- Location: LCFF_X30_Y23_N5
\i_pwm_ctrl|dc_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[2]~14_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(2));

-- Location: LCCOMB_X30_Y23_N6
\i_pwm_ctrl|dc_cnt[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[3]~16_combout\ = (\i_pwm_ctrl|dc_cnt\(3) & ((\i_pwm_ctrl|pwm_state.s_down~regout\ & (\i_pwm_ctrl|dc_cnt[2]~15\ & VCC)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt[2]~15\)))) # (!\i_pwm_ctrl|dc_cnt\(3) & 
-- ((\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt[2]~15\)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt[2]~15\) # (GND)))))
-- \i_pwm_ctrl|dc_cnt[3]~17\ = CARRY((\i_pwm_ctrl|dc_cnt\(3) & (!\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|dc_cnt[2]~15\)) # (!\i_pwm_ctrl|dc_cnt\(3) & ((!\i_pwm_ctrl|dc_cnt[2]~15\) # (!\i_pwm_ctrl|pwm_state.s_down~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(3),
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[2]~15\,
	combout => \i_pwm_ctrl|dc_cnt[3]~16_combout\,
	cout => \i_pwm_ctrl|dc_cnt[3]~17\);

-- Location: LCCOMB_X30_Y23_N18
\i_pwm_ctrl|dc_cnt[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[9]~28_combout\ = (\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt\(9) & (\i_pwm_ctrl|dc_cnt[8]~27\ & VCC)) # (!\i_pwm_ctrl|dc_cnt\(9) & (!\i_pwm_ctrl|dc_cnt[8]~27\)))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & 
-- ((\i_pwm_ctrl|dc_cnt\(9) & (!\i_pwm_ctrl|dc_cnt[8]~27\)) # (!\i_pwm_ctrl|dc_cnt\(9) & ((\i_pwm_ctrl|dc_cnt[8]~27\) # (GND)))))
-- \i_pwm_ctrl|dc_cnt[9]~29\ = CARRY((\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt\(9) & !\i_pwm_ctrl|dc_cnt[8]~27\)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & ((!\i_pwm_ctrl|dc_cnt[8]~27\) # (!\i_pwm_ctrl|dc_cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|dc_cnt\(9),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[8]~27\,
	combout => \i_pwm_ctrl|dc_cnt[9]~28_combout\,
	cout => \i_pwm_ctrl|dc_cnt[9]~29\);

-- Location: LCFF_X30_Y23_N19
\i_pwm_ctrl|dc_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[9]~28_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(9));

-- Location: LCCOMB_X30_Y23_N20
\i_pwm_ctrl|dc_cnt[10]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[10]~30_combout\ = ((\i_pwm_ctrl|pwm_state.s_down~regout\ $ (\i_pwm_ctrl|dc_cnt\(10) $ (!\i_pwm_ctrl|dc_cnt[9]~29\)))) # (GND)
-- \i_pwm_ctrl|dc_cnt[10]~31\ = CARRY((\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt\(10)) # (!\i_pwm_ctrl|dc_cnt[9]~29\))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & (\i_pwm_ctrl|dc_cnt\(10) & !\i_pwm_ctrl|dc_cnt[9]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|dc_cnt\(10),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[9]~29\,
	combout => \i_pwm_ctrl|dc_cnt[10]~30_combout\,
	cout => \i_pwm_ctrl|dc_cnt[10]~31\);

-- Location: LCFF_X30_Y23_N21
\i_pwm_ctrl|dc_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[10]~30_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(10));

-- Location: LCCOMB_X30_Y23_N22
\i_pwm_ctrl|dc_cnt[11]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[11]~32_combout\ = (\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt\(11) & (\i_pwm_ctrl|dc_cnt[10]~31\ & VCC)) # (!\i_pwm_ctrl|dc_cnt\(11) & (!\i_pwm_ctrl|dc_cnt[10]~31\)))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & 
-- ((\i_pwm_ctrl|dc_cnt\(11) & (!\i_pwm_ctrl|dc_cnt[10]~31\)) # (!\i_pwm_ctrl|dc_cnt\(11) & ((\i_pwm_ctrl|dc_cnt[10]~31\) # (GND)))))
-- \i_pwm_ctrl|dc_cnt[11]~33\ = CARRY((\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt\(11) & !\i_pwm_ctrl|dc_cnt[10]~31\)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & ((!\i_pwm_ctrl|dc_cnt[10]~31\) # (!\i_pwm_ctrl|dc_cnt\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|dc_cnt\(11),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[10]~31\,
	combout => \i_pwm_ctrl|dc_cnt[11]~32_combout\,
	cout => \i_pwm_ctrl|dc_cnt[11]~33\);

-- Location: LCFF_X30_Y23_N23
\i_pwm_ctrl|dc_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[11]~32_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(11));

-- Location: LCCOMB_X30_Y23_N24
\i_pwm_ctrl|dc_cnt[12]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[12]~34_combout\ = ((\i_pwm_ctrl|pwm_state.s_down~regout\ $ (\i_pwm_ctrl|dc_cnt\(12) $ (!\i_pwm_ctrl|dc_cnt[11]~33\)))) # (GND)
-- \i_pwm_ctrl|dc_cnt[12]~35\ = CARRY((\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt\(12)) # (!\i_pwm_ctrl|dc_cnt[11]~33\))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & (\i_pwm_ctrl|dc_cnt\(12) & !\i_pwm_ctrl|dc_cnt[11]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|dc_cnt\(12),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[11]~33\,
	combout => \i_pwm_ctrl|dc_cnt[12]~34_combout\,
	cout => \i_pwm_ctrl|dc_cnt[12]~35\);

-- Location: LCFF_X30_Y23_N25
\i_pwm_ctrl|dc_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[12]~34_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(12));

-- Location: LCCOMB_X30_Y23_N26
\i_pwm_ctrl|dc_cnt[13]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[13]~36_combout\ = (\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt\(13) & (\i_pwm_ctrl|dc_cnt[12]~35\ & VCC)) # (!\i_pwm_ctrl|dc_cnt\(13) & (!\i_pwm_ctrl|dc_cnt[12]~35\)))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & 
-- ((\i_pwm_ctrl|dc_cnt\(13) & (!\i_pwm_ctrl|dc_cnt[12]~35\)) # (!\i_pwm_ctrl|dc_cnt\(13) & ((\i_pwm_ctrl|dc_cnt[12]~35\) # (GND)))))
-- \i_pwm_ctrl|dc_cnt[13]~37\ = CARRY((\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt\(13) & !\i_pwm_ctrl|dc_cnt[12]~35\)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & ((!\i_pwm_ctrl|dc_cnt[12]~35\) # (!\i_pwm_ctrl|dc_cnt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|dc_cnt\(13),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[12]~35\,
	combout => \i_pwm_ctrl|dc_cnt[13]~36_combout\,
	cout => \i_pwm_ctrl|dc_cnt[13]~37\);

-- Location: LCFF_X30_Y23_N27
\i_pwm_ctrl|dc_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[13]~36_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(13));

-- Location: LCCOMB_X30_Y23_N28
\i_pwm_ctrl|dc_cnt[14]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[14]~38_combout\ = ((\i_pwm_ctrl|pwm_state.s_down~regout\ $ (\i_pwm_ctrl|dc_cnt\(14) $ (!\i_pwm_ctrl|dc_cnt[13]~37\)))) # (GND)
-- \i_pwm_ctrl|dc_cnt[14]~39\ = CARRY((\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt\(14)) # (!\i_pwm_ctrl|dc_cnt[13]~37\))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & (\i_pwm_ctrl|dc_cnt\(14) & !\i_pwm_ctrl|dc_cnt[13]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|dc_cnt\(14),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[13]~37\,
	combout => \i_pwm_ctrl|dc_cnt[14]~38_combout\,
	cout => \i_pwm_ctrl|dc_cnt[14]~39\);

-- Location: LCFF_X30_Y23_N29
\i_pwm_ctrl|dc_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[14]~38_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(14));

-- Location: LCCOMB_X30_Y23_N30
\i_pwm_ctrl|dc_cnt[15]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[15]~40_combout\ = \i_pwm_ctrl|pwm_state.s_down~regout\ $ (\i_pwm_ctrl|dc_cnt[14]~39\ $ (\i_pwm_ctrl|dc_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => \i_pwm_ctrl|dc_cnt\(15),
	cin => \i_pwm_ctrl|dc_cnt[14]~39\,
	combout => \i_pwm_ctrl|dc_cnt[15]~40_combout\);

-- Location: LCFF_X30_Y23_N31
\i_pwm_ctrl|dc_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[15]~40_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(15));

-- Location: LCFF_X32_Y23_N25
\i_pwm_ctrl|one_ms_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt[12]~40_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sclr => \i_pwm_ctrl|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(12));

-- Location: LCFF_X30_Y23_N7
\i_pwm_ctrl|dc_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[3]~16_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(3));

-- Location: LCCOMB_X31_Y23_N2
\i_pwm_ctrl|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~1_cout\ = CARRY((!\i_pwm_ctrl|one_ms_cnt\(2) & \i_pwm_ctrl|dc_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(2),
	datab => \i_pwm_ctrl|dc_cnt\(2),
	datad => VCC,
	cout => \i_pwm_ctrl|LessThan0~1_cout\);

-- Location: LCCOMB_X31_Y23_N4
\i_pwm_ctrl|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~3_cout\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(3) & ((!\i_pwm_ctrl|LessThan0~1_cout\) # (!\i_pwm_ctrl|dc_cnt\(3)))) # (!\i_pwm_ctrl|one_ms_cnt\(3) & (!\i_pwm_ctrl|dc_cnt\(3) & !\i_pwm_ctrl|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(3),
	datab => \i_pwm_ctrl|dc_cnt\(3),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~1_cout\,
	cout => \i_pwm_ctrl|LessThan0~3_cout\);

-- Location: LCCOMB_X31_Y23_N6
\i_pwm_ctrl|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~5_cout\ = CARRY((\i_pwm_ctrl|dc_cnt\(4) & ((!\i_pwm_ctrl|LessThan0~3_cout\) # (!\i_pwm_ctrl|one_ms_cnt\(4)))) # (!\i_pwm_ctrl|dc_cnt\(4) & (!\i_pwm_ctrl|one_ms_cnt\(4) & !\i_pwm_ctrl|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(4),
	datab => \i_pwm_ctrl|one_ms_cnt\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~3_cout\,
	cout => \i_pwm_ctrl|LessThan0~5_cout\);

-- Location: LCCOMB_X31_Y23_N8
\i_pwm_ctrl|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~7_cout\ = CARRY((\i_pwm_ctrl|dc_cnt\(5) & (\i_pwm_ctrl|one_ms_cnt\(5) & !\i_pwm_ctrl|LessThan0~5_cout\)) # (!\i_pwm_ctrl|dc_cnt\(5) & ((\i_pwm_ctrl|one_ms_cnt\(5)) # (!\i_pwm_ctrl|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(5),
	datab => \i_pwm_ctrl|one_ms_cnt\(5),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~5_cout\,
	cout => \i_pwm_ctrl|LessThan0~7_cout\);

-- Location: LCCOMB_X31_Y23_N10
\i_pwm_ctrl|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~9_cout\ = CARRY((\i_pwm_ctrl|dc_cnt\(6) & ((!\i_pwm_ctrl|LessThan0~7_cout\) # (!\i_pwm_ctrl|one_ms_cnt\(6)))) # (!\i_pwm_ctrl|dc_cnt\(6) & (!\i_pwm_ctrl|one_ms_cnt\(6) & !\i_pwm_ctrl|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(6),
	datab => \i_pwm_ctrl|one_ms_cnt\(6),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~7_cout\,
	cout => \i_pwm_ctrl|LessThan0~9_cout\);

-- Location: LCCOMB_X31_Y23_N12
\i_pwm_ctrl|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~11_cout\ = CARRY((\i_pwm_ctrl|dc_cnt\(7) & (\i_pwm_ctrl|one_ms_cnt\(7) & !\i_pwm_ctrl|LessThan0~9_cout\)) # (!\i_pwm_ctrl|dc_cnt\(7) & ((\i_pwm_ctrl|one_ms_cnt\(7)) # (!\i_pwm_ctrl|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(7),
	datab => \i_pwm_ctrl|one_ms_cnt\(7),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~9_cout\,
	cout => \i_pwm_ctrl|LessThan0~11_cout\);

-- Location: LCCOMB_X31_Y23_N14
\i_pwm_ctrl|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~13_cout\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(8) & (\i_pwm_ctrl|dc_cnt\(8) & !\i_pwm_ctrl|LessThan0~11_cout\)) # (!\i_pwm_ctrl|one_ms_cnt\(8) & ((\i_pwm_ctrl|dc_cnt\(8)) # (!\i_pwm_ctrl|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(8),
	datab => \i_pwm_ctrl|dc_cnt\(8),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~11_cout\,
	cout => \i_pwm_ctrl|LessThan0~13_cout\);

-- Location: LCCOMB_X31_Y23_N16
\i_pwm_ctrl|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~15_cout\ = CARRY((\i_pwm_ctrl|dc_cnt\(9) & (\i_pwm_ctrl|one_ms_cnt\(9) & !\i_pwm_ctrl|LessThan0~13_cout\)) # (!\i_pwm_ctrl|dc_cnt\(9) & ((\i_pwm_ctrl|one_ms_cnt\(9)) # (!\i_pwm_ctrl|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(9),
	datab => \i_pwm_ctrl|one_ms_cnt\(9),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~13_cout\,
	cout => \i_pwm_ctrl|LessThan0~15_cout\);

-- Location: LCCOMB_X31_Y23_N18
\i_pwm_ctrl|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~17_cout\ = CARRY((\i_pwm_ctrl|dc_cnt\(10) & ((!\i_pwm_ctrl|LessThan0~15_cout\) # (!\i_pwm_ctrl|one_ms_cnt\(10)))) # (!\i_pwm_ctrl|dc_cnt\(10) & (!\i_pwm_ctrl|one_ms_cnt\(10) & !\i_pwm_ctrl|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(10),
	datab => \i_pwm_ctrl|one_ms_cnt\(10),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~15_cout\,
	cout => \i_pwm_ctrl|LessThan0~17_cout\);

-- Location: LCCOMB_X31_Y23_N20
\i_pwm_ctrl|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~19_cout\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(11) & ((!\i_pwm_ctrl|LessThan0~17_cout\) # (!\i_pwm_ctrl|dc_cnt\(11)))) # (!\i_pwm_ctrl|one_ms_cnt\(11) & (!\i_pwm_ctrl|dc_cnt\(11) & !\i_pwm_ctrl|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(11),
	datab => \i_pwm_ctrl|dc_cnt\(11),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~17_cout\,
	cout => \i_pwm_ctrl|LessThan0~19_cout\);

-- Location: LCCOMB_X31_Y23_N22
\i_pwm_ctrl|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~21_cout\ = CARRY((\i_pwm_ctrl|dc_cnt\(12) & ((!\i_pwm_ctrl|LessThan0~19_cout\) # (!\i_pwm_ctrl|one_ms_cnt\(12)))) # (!\i_pwm_ctrl|dc_cnt\(12) & (!\i_pwm_ctrl|one_ms_cnt\(12) & !\i_pwm_ctrl|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(12),
	datab => \i_pwm_ctrl|one_ms_cnt\(12),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~19_cout\,
	cout => \i_pwm_ctrl|LessThan0~21_cout\);

-- Location: LCCOMB_X31_Y23_N24
\i_pwm_ctrl|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~23_cout\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(13) & ((!\i_pwm_ctrl|LessThan0~21_cout\) # (!\i_pwm_ctrl|dc_cnt\(13)))) # (!\i_pwm_ctrl|one_ms_cnt\(13) & (!\i_pwm_ctrl|dc_cnt\(13) & !\i_pwm_ctrl|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(13),
	datab => \i_pwm_ctrl|dc_cnt\(13),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~21_cout\,
	cout => \i_pwm_ctrl|LessThan0~23_cout\);

-- Location: LCCOMB_X31_Y23_N26
\i_pwm_ctrl|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~25_cout\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(14) & (\i_pwm_ctrl|dc_cnt\(14) & !\i_pwm_ctrl|LessThan0~23_cout\)) # (!\i_pwm_ctrl|one_ms_cnt\(14) & ((\i_pwm_ctrl|dc_cnt\(14)) # (!\i_pwm_ctrl|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(14),
	datab => \i_pwm_ctrl|dc_cnt\(14),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~23_cout\,
	cout => \i_pwm_ctrl|LessThan0~25_cout\);

-- Location: LCCOMB_X31_Y23_N28
\i_pwm_ctrl|LessThan0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~26_combout\ = (\i_pwm_ctrl|dc_cnt\(15) & ((\i_pwm_ctrl|LessThan0~25_cout\) # (!\i_pwm_ctrl|one_ms_cnt\(15)))) # (!\i_pwm_ctrl|dc_cnt\(15) & (\i_pwm_ctrl|LessThan0~25_cout\ & !\i_pwm_ctrl|one_ms_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(15),
	datad => \i_pwm_ctrl|one_ms_cnt\(15),
	cin => \i_pwm_ctrl|LessThan0~25_cout\,
	combout => \i_pwm_ctrl|LessThan0~26_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fpga_out_tx~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_serial_uart|Selector34~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fpga_out_tx);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux32~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux31~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux30~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux29~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux28~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux27~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_n[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux26~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector0[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux21~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux20~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux19~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux18~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux17~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux16~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_n[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Mux15~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector1[0]~0_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Selector17~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector2[2]~5_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_seven_seg_vector2[1]~4_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Selector18~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector2[2]~5_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Selector17~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector2[2]~5_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Selector16~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector2[2]~5_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Selector15~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector2[2]~5_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_n[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "preset",
	output_power_up => "high",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_dc_disp_ctrl|ALT_INV_Selector14~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \i_dc_disp_ctrl|seven_seg_vector2[2]~5_combout\,
	areset => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(6));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "clear")
-- pragma translate_on
PORT MAP (
	datain => \i_serial_uart|received_error~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	sreset => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(9));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_pwm_ctrl|LessThan0~26_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	outclkena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(7));
END structure;


