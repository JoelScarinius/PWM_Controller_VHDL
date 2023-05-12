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

-- DATE "05/11/2023 15:28:16"

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
-- fpga_out_tx	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[0]	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[1]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[3]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[4]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[5]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[6]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[2]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[3]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[4]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[5]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[6]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[0]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[1]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[2]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[4]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[5]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[9]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fpga_in_rx	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[2]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[3]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_pwm_ctrl|Add0~6_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~28_combout\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk0\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk1\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk2\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_en~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~15_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~3_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[1]~7_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[5]~16\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[6]~17_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~10\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~9_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[1]~12\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[1]~11_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[2]~14\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[2]~13_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[3]~16\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[3]~15_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[4]~18\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[4]~17_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[5]~21\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[5]~20_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[6]~23\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[6]~22_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[7]~25\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[7]~24_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[8]~26_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[1]~23_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[3]~27_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[12]~45_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[15]~51_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[1]~23_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[3]~27_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[12]~45_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[15]~51_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[0]~22\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[0]~21_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[1]~24\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[1]~23_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[2]~26\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[2]~25_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[3]~28\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[3]~27_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[4]~30\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[4]~29_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[5]~32\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[5]~31_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[6]~34\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[6]~33_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[7]~36\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[7]~35_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[8]~38\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[8]~37_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[9]~40\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[9]~39_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[10]~42\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[10]~41_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[11]~44\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[11]~43_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[12]~46\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[12]~45_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[13]~48\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[13]~47_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[14]~50\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[14]~49_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[15]~52\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[15]~51_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[16]~54\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[16]~53_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[17]~56\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[17]~55_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[18]~57_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[1]~23_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[3]~27_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[12]~45_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[14]~49_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan2~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan2~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~44_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal2~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~1_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|LessThan0~3_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~0_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~1_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~2_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_no~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_no~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~1_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_off_out~regout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_down_out~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_down~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector11~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[4]~13_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector11~3_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[3]~19_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_in_states~regout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux1~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_on_out~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan0~2_combout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux0~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_down_out~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_down~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_up_n_2r~regout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan2~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan2~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan2~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan2~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan2~4_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_down~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_down~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan3~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~4_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_up_n_r~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector10~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector8~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector5~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_in_states~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \i_key_ctrl|key_up_n_r~feeder_combout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|transmit_valid_out~feeder_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[0]~6_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|_locked\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[1]~8\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[2]~9_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[2]~10\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[3]~11_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|LessThan0~2_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[3]~12\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[4]~13_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[4]~14\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[5]~15_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_out~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_out~regout\ : std_logic;
SIGNAL \i_dc_disp_ctrl|transmit_valid_out~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_state~7_combout\ : std_logic;
SIGNAL \i_serial_uart|reset_r~0_combout\ : std_logic;
SIGNAL \i_serial_uart|reset_r~regout\ : std_logic;
SIGNAL \i_serial_uart|reset_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_state~8_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector31~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector28~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector27~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_start_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector28~1_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_tx_data~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector33~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector32~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector32~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector29~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector29~1_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|tx~0_combout\ : std_logic;
SIGNAL \clock_50~clkctrl_outclk\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~9_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~10\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~12\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~13_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~14\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~16\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~18\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~20_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~21\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~23\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~24_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~17_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~25\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[8]~26_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_rx_data~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector14~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Equal0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector4~3_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector1~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state~10_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_en~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~19_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~11_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~22_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~2_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \fpga_in_rx~combout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_2r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|received_error~_Duplicate_1_regout\ : std_logic;
SIGNAL \i_serial_uart|received_error~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~8_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~5_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~12_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~10_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~20_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~6_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~1\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~3\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~5\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~7\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~9\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~11\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~13\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~14_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~15\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~16_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~17\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~18_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~19\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~21\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~22_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~23\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~25\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~26_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~27\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~29\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~30_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off_n_r~feeder_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off_n_r~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_off_n_2r~regout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[0]~21_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_on_n_r~feeder_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_on_n_r~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_on_n_2r~regout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[17]~55_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[0]~22\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[1]~24\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[2]~25_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[2]~26\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[3]~28\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[4]~29_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[4]~30\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[5]~32\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[6]~33_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[6]~34\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[7]~35_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[7]~36\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[8]~37_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[8]~38\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[9]~39_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[9]~40\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[10]~41_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[10]~42\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[11]~43_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[11]~44\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[12]~46\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[13]~47_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[13]~48\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[14]~50\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[15]~52\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[16]~53_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[16]~54\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[17]~56\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[18]~57_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan1~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan1~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[5]~31_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan1~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_on_cnt[14]~49_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan1~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan1~4_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_on~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_on~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_on~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector10~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector4~2_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector11~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~2_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data[4]~10_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector6~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~9_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector7~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~8_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~7_combout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux1~1_combout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux1~2_combout\ : std_logic;
SIGNAL \i_serial_uart|received_valid~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_valid~regout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_on_out~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|p_pwm_state_machine~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[0]~21_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[14]~49_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan0~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[5]~31_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan0~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan0~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[17]~55_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[0]~22\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[1]~24\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[2]~25_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[2]~26\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[3]~28\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[4]~29_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[4]~30\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[5]~32\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[6]~33_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[6]~34\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[7]~35_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[7]~36\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[8]~37_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[8]~38\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[9]~39_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[9]~40\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[10]~41_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[10]~42\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[11]~43_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[11]~44\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[12]~46\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[13]~47_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[13]~48\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[14]~50\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[15]~52\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[16]~53_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[16]~54\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[17]~56\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_off_cnt[18]~57_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector11~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector9~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~3_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~6_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~5_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_down_out~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_down_out~1_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_up_out~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_up_out~regout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[0]~21_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[16]~54\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[17]~56\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[18]~57_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[17]~55_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[0]~22\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[1]~24\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[2]~25_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[2]~26\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[3]~28\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[4]~29_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[4]~30\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[5]~32\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[6]~33_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[6]~34\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[7]~35_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[7]~36\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[8]~37_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[8]~38\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[9]~39_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[9]~40\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[10]~41_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[10]~42\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[11]~43_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[11]~44\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[12]~46\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[13]~47_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[13]~48\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[14]~50\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[15]~52\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[16]~53_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[15]~51_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan3~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan3~3_combout\ : std_logic;
SIGNAL \i_key_ctrl|ten_ms_up_cnt[5]~31_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan3~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|LessThan3~4_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_down_n_r~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_down_n_2r~regout\ : std_logic;
SIGNAL \i_key_ctrl|key_up~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_up~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_up~2_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_up~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|p_pwm_state_machine~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector11~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_down~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~14_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[1]~7_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector9~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_off~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector12~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector11~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_up~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector10~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_on~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~10_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[2]~9_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[0]~16_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[0]~17_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~2\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~4\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~5_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~11_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[4]~18_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~6\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~8\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~12_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~14_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal1~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[4]~14_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[4]~15_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[1]~8\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[2]~10\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[3]~11_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~7_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~9_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[3]~12\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[4]~19\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[5]~20_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~13\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~15_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~23_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[5]~21\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[6]~22_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~16\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~17_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~22_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[6]~23\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[7]~24_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~18\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~19_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~21_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan1~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[12]~34_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[10]~30_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[11]~32_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal2~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[14]~38_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~45_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~46_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[7]~24_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal2~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~47_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~42_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~43_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~48_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~15\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[3]~16_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[3]~17\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[4]~18_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[4]~19\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[5]~20_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[5]~21\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[6]~22_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[6]~23\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[7]~25\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[8]~27\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[9]~28_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[9]~29\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[10]~31\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[11]~33\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[12]~35\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[13]~36_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[13]~37\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[14]~39\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[15]~40_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~24_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[8]~26_combout\ : std_logic;
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
SIGNAL \i_serial_uart|tx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart|tx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_serial_uart|rx_byte_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_serial_uart|received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \key_n~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_pwm_ctrl|dc_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_key_ctrl|ten_ms_on_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \i_key_ctrl|ten_ms_down_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_pwm_ctrl|new_dc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_key_ctrl|ten_ms_off_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \i_pwm_ctrl|one_ms_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_key_ctrl|ten_ms_up_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\ : std_logic;
SIGNAL \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\ : std_logic;

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

\b_gen_pll:i_altera_pll|altpll_component|pll_INCLK_bus\ <= (gnd & \clock_50~combout\);

\b_gen_pll:i_altera_pll|altpll_component|_clk0\ <= \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\(0);
\b_gen_pll:i_altera_pll|altpll_component|_clk1\ <= \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\(1);
\b_gen_pll:i_altera_pll|altpll_component|_clk2\ <= \b_gen_pll:i_altera_pll|altpll_component|pll_CLK_bus\(2);

\b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \b_gen_pll:i_altera_pll|altpll_component|_clk1\);

\clock_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_50~combout\);
\i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\ <= NOT \i_pwm_ctrl|pwm_state.s_down~regout\;
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\ <= NOT \b_gen_pll:i_reset_ctrl|reset_out~regout\;
\b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\ <= NOT \b_gen_pll:i_altera_pll|altpll_component|_locked\;

-- Location: LCFF_X34_Y25_N11
\i_serial_uart|rx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[3]~15_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(3));

-- Location: LCCOMB_X39_Y25_N6
\i_pwm_ctrl|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~6_combout\ = (\i_pwm_ctrl|one_ms_cnt\(3) & (!\i_pwm_ctrl|Add0~5\)) # (!\i_pwm_ctrl|one_ms_cnt\(3) & ((\i_pwm_ctrl|Add0~5\) # (GND)))
-- \i_pwm_ctrl|Add0~7\ = CARRY((!\i_pwm_ctrl|Add0~5\) # (!\i_pwm_ctrl|one_ms_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(3),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~5\,
	combout => \i_pwm_ctrl|Add0~6_combout\,
	cout => \i_pwm_ctrl|Add0~7\);

-- Location: LCCOMB_X39_Y25_N28
\i_pwm_ctrl|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~28_combout\ = (\i_pwm_ctrl|one_ms_cnt\(14) & (\i_pwm_ctrl|Add0~27\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(14) & (!\i_pwm_ctrl|Add0~27\ & VCC))
-- \i_pwm_ctrl|Add0~29\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(14) & !\i_pwm_ctrl|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(14),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~27\,
	combout => \i_pwm_ctrl|Add0~28_combout\,
	cout => \i_pwm_ctrl|Add0~29\);

-- Location: LCFF_X33_Y23_N13
\b_gen_pll:i_reset_ctrl|reset_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[1]~7_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(1));

-- Location: LCFF_X33_Y23_N23
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
	pll_compensation_delay => 5937,
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

-- Location: LCFF_X35_Y26_N13
\i_serial_uart|tx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[4]~17_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(4));

-- Location: LCFF_X35_Y26_N15
\i_serial_uart|tx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[5]~20_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(5));

-- Location: LCFF_X35_Y26_N17
\i_serial_uart|tx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[6]~22_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(6));

-- Location: LCFF_X35_Y26_N19
\i_serial_uart|tx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[7]~24_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(7));

-- Location: LCFF_X35_Y26_N5
\i_serial_uart|tx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[0]~9_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(0));

-- Location: LCFF_X35_Y26_N7
\i_serial_uart|tx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[1]~11_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(1));

-- Location: LCFF_X35_Y26_N9
\i_serial_uart|tx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[2]~13_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(2));

-- Location: LCFF_X35_Y26_N11
\i_serial_uart|tx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[3]~15_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(3));

-- Location: LCFF_X35_Y26_N21
\i_serial_uart|tx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[8]~26_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(8));

-- Location: LCFF_X36_Y26_N29
\i_serial_uart|tx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_state~7_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt_en~regout\);

-- Location: LCCOMB_X34_Y25_N10
\i_serial_uart|rx_bit_cnt[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[3]~15_combout\ = (\i_serial_uart|rx_bit_cnt\(3) & (!\i_serial_uart|rx_bit_cnt[2]~14\)) # (!\i_serial_uart|rx_bit_cnt\(3) & ((\i_serial_uart|rx_bit_cnt[2]~14\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[3]~16\ = CARRY((!\i_serial_uart|rx_bit_cnt[2]~14\) # (!\i_serial_uart|rx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(3),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[2]~14\,
	combout => \i_serial_uart|rx_bit_cnt[3]~15_combout\,
	cout => \i_serial_uart|rx_bit_cnt[3]~16\);

-- Location: LCCOMB_X38_Y26_N6
\i_pwm_ctrl|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~3_combout\ = (\i_pwm_ctrl|new_dc\(1) & (!\i_pwm_ctrl|Add1~2\)) # (!\i_pwm_ctrl|new_dc\(1) & ((\i_pwm_ctrl|Add1~2\) # (GND)))
-- \i_pwm_ctrl|Add1~4\ = CARRY((!\i_pwm_ctrl|Add1~2\) # (!\i_pwm_ctrl|new_dc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(1),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~2\,
	combout => \i_pwm_ctrl|Add1~3_combout\,
	cout => \i_pwm_ctrl|Add1~4\);

-- Location: LCCOMB_X33_Y23_N12
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

-- Location: LCCOMB_X33_Y23_N20
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

-- Location: LCCOMB_X33_Y23_N22
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

-- Location: LCCOMB_X35_Y26_N4
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

-- Location: LCCOMB_X35_Y26_N6
\i_serial_uart|tx_bit_cnt[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[1]~11_combout\ = (\i_serial_uart|tx_bit_cnt\(1) & (!\i_serial_uart|tx_bit_cnt[0]~10\)) # (!\i_serial_uart|tx_bit_cnt\(1) & ((\i_serial_uart|tx_bit_cnt[0]~10\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[1]~12\ = CARRY((!\i_serial_uart|tx_bit_cnt[0]~10\) # (!\i_serial_uart|tx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(1),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[0]~10\,
	combout => \i_serial_uart|tx_bit_cnt[1]~11_combout\,
	cout => \i_serial_uart|tx_bit_cnt[1]~12\);

-- Location: LCCOMB_X35_Y26_N8
\i_serial_uart|tx_bit_cnt[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[2]~13_combout\ = (\i_serial_uart|tx_bit_cnt\(2) & (\i_serial_uart|tx_bit_cnt[1]~12\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(2) & (!\i_serial_uart|tx_bit_cnt[1]~12\ & VCC))
-- \i_serial_uart|tx_bit_cnt[2]~14\ = CARRY((\i_serial_uart|tx_bit_cnt\(2) & !\i_serial_uart|tx_bit_cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(2),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[1]~12\,
	combout => \i_serial_uart|tx_bit_cnt[2]~13_combout\,
	cout => \i_serial_uart|tx_bit_cnt[2]~14\);

-- Location: LCCOMB_X35_Y26_N10
\i_serial_uart|tx_bit_cnt[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[3]~15_combout\ = (\i_serial_uart|tx_bit_cnt\(3) & (!\i_serial_uart|tx_bit_cnt[2]~14\)) # (!\i_serial_uart|tx_bit_cnt\(3) & ((\i_serial_uart|tx_bit_cnt[2]~14\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[3]~16\ = CARRY((!\i_serial_uart|tx_bit_cnt[2]~14\) # (!\i_serial_uart|tx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(3),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[2]~14\,
	combout => \i_serial_uart|tx_bit_cnt[3]~15_combout\,
	cout => \i_serial_uart|tx_bit_cnt[3]~16\);

-- Location: LCCOMB_X35_Y26_N12
\i_serial_uart|tx_bit_cnt[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[4]~17_combout\ = (\i_serial_uart|tx_bit_cnt\(4) & (\i_serial_uart|tx_bit_cnt[3]~16\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(4) & (!\i_serial_uart|tx_bit_cnt[3]~16\ & VCC))
-- \i_serial_uart|tx_bit_cnt[4]~18\ = CARRY((\i_serial_uart|tx_bit_cnt\(4) & !\i_serial_uart|tx_bit_cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(4),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[3]~16\,
	combout => \i_serial_uart|tx_bit_cnt[4]~17_combout\,
	cout => \i_serial_uart|tx_bit_cnt[4]~18\);

-- Location: LCCOMB_X35_Y26_N14
\i_serial_uart|tx_bit_cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[5]~20_combout\ = (\i_serial_uart|tx_bit_cnt\(5) & (!\i_serial_uart|tx_bit_cnt[4]~18\)) # (!\i_serial_uart|tx_bit_cnt\(5) & ((\i_serial_uart|tx_bit_cnt[4]~18\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[5]~21\ = CARRY((!\i_serial_uart|tx_bit_cnt[4]~18\) # (!\i_serial_uart|tx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(5),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[4]~18\,
	combout => \i_serial_uart|tx_bit_cnt[5]~20_combout\,
	cout => \i_serial_uart|tx_bit_cnt[5]~21\);

-- Location: LCCOMB_X35_Y26_N16
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

-- Location: LCCOMB_X35_Y26_N18
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

-- Location: LCCOMB_X35_Y26_N20
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

-- Location: LCFF_X36_Y23_N13
\i_key_ctrl|ten_ms_on_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[15]~51_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(15));

-- Location: LCFF_X36_Y23_N7
\i_key_ctrl|ten_ms_on_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[12]~45_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(12));

-- Location: LCFF_X38_Y23_N13
\i_key_ctrl|ten_ms_off_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[15]~51_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(15));

-- Location: LCFF_X38_Y23_N7
\i_key_ctrl|ten_ms_off_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[12]~45_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(12));

-- Location: LCFF_X34_Y23_N17
\i_key_ctrl|ten_ms_down_cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[17]~55_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(17));

-- Location: LCFF_X34_Y23_N19
\i_key_ctrl|ten_ms_down_cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[18]~57_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(18));

-- Location: LCFF_X34_Y23_N11
\i_key_ctrl|ten_ms_down_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[14]~49_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(14));

-- Location: LCFF_X34_Y23_N9
\i_key_ctrl|ten_ms_down_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[13]~47_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(13));

-- Location: LCFF_X34_Y23_N13
\i_key_ctrl|ten_ms_down_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[15]~51_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(15));

-- Location: LCFF_X34_Y23_N15
\i_key_ctrl|ten_ms_down_cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[16]~53_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(16));

-- Location: LCFF_X34_Y24_N25
\i_key_ctrl|ten_ms_down_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[5]~31_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(5));

-- Location: LCFF_X34_Y24_N27
\i_key_ctrl|ten_ms_down_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[6]~33_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(6));

-- Location: LCFF_X34_Y24_N29
\i_key_ctrl|ten_ms_down_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[7]~35_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(7));

-- Location: LCFF_X34_Y24_N31
\i_key_ctrl|ten_ms_down_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[8]~37_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(8));

-- Location: LCFF_X34_Y23_N1
\i_key_ctrl|ten_ms_down_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[9]~39_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(9));

-- Location: LCFF_X34_Y23_N3
\i_key_ctrl|ten_ms_down_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[10]~41_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(10));

-- Location: LCFF_X34_Y23_N5
\i_key_ctrl|ten_ms_down_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[11]~43_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(11));

-- Location: LCFF_X34_Y23_N7
\i_key_ctrl|ten_ms_down_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[12]~45_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(12));

-- Location: LCFF_X35_Y23_N11
\i_key_ctrl|ten_ms_up_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[14]~49_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(14));

-- Location: LCFF_X35_Y23_N7
\i_key_ctrl|ten_ms_up_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[12]~45_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(12));

-- Location: LCFF_X36_Y24_N21
\i_key_ctrl|ten_ms_on_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[3]~27_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(3));

-- Location: LCFF_X36_Y24_N17
\i_key_ctrl|ten_ms_on_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[1]~23_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(1));

-- Location: LCCOMB_X36_Y24_N16
\i_key_ctrl|ten_ms_on_cnt[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[1]~23_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(1) & (!\i_key_ctrl|ten_ms_on_cnt[0]~22\)) # (!\i_key_ctrl|ten_ms_on_cnt\(1) & ((\i_key_ctrl|ten_ms_on_cnt[0]~22\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[1]~24\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[0]~22\) # (!\i_key_ctrl|ten_ms_on_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(1),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[0]~22\,
	combout => \i_key_ctrl|ten_ms_on_cnt[1]~23_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[1]~24\);

-- Location: LCCOMB_X36_Y24_N20
\i_key_ctrl|ten_ms_on_cnt[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[3]~27_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(3) & (!\i_key_ctrl|ten_ms_on_cnt[2]~26\)) # (!\i_key_ctrl|ten_ms_on_cnt\(3) & ((\i_key_ctrl|ten_ms_on_cnt[2]~26\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[3]~28\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[2]~26\) # (!\i_key_ctrl|ten_ms_on_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(3),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[2]~26\,
	combout => \i_key_ctrl|ten_ms_on_cnt[3]~27_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[3]~28\);

-- Location: LCCOMB_X36_Y23_N6
\i_key_ctrl|ten_ms_on_cnt[12]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[12]~45_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(12) & (\i_key_ctrl|ten_ms_on_cnt[11]~44\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(12) & (!\i_key_ctrl|ten_ms_on_cnt[11]~44\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[12]~46\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(12) & !\i_key_ctrl|ten_ms_on_cnt[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(12),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[11]~44\,
	combout => \i_key_ctrl|ten_ms_on_cnt[12]~45_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[12]~46\);

-- Location: LCCOMB_X36_Y23_N12
\i_key_ctrl|ten_ms_on_cnt[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[15]~51_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(15) & (!\i_key_ctrl|ten_ms_on_cnt[14]~50\)) # (!\i_key_ctrl|ten_ms_on_cnt\(15) & ((\i_key_ctrl|ten_ms_on_cnt[14]~50\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[15]~52\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[14]~50\) # (!\i_key_ctrl|ten_ms_on_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(15),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[14]~50\,
	combout => \i_key_ctrl|ten_ms_on_cnt[15]~51_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[15]~52\);

-- Location: LCFF_X38_Y24_N21
\i_key_ctrl|ten_ms_off_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[3]~27_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(3));

-- Location: LCFF_X38_Y24_N17
\i_key_ctrl|ten_ms_off_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[1]~23_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(1));

-- Location: LCCOMB_X38_Y24_N16
\i_key_ctrl|ten_ms_off_cnt[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[1]~23_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(1) & (!\i_key_ctrl|ten_ms_off_cnt[0]~22\)) # (!\i_key_ctrl|ten_ms_off_cnt\(1) & ((\i_key_ctrl|ten_ms_off_cnt[0]~22\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[1]~24\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[0]~22\) # (!\i_key_ctrl|ten_ms_off_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(1),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[0]~22\,
	combout => \i_key_ctrl|ten_ms_off_cnt[1]~23_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[1]~24\);

-- Location: LCCOMB_X38_Y24_N20
\i_key_ctrl|ten_ms_off_cnt[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[3]~27_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(3) & (!\i_key_ctrl|ten_ms_off_cnt[2]~26\)) # (!\i_key_ctrl|ten_ms_off_cnt\(3) & ((\i_key_ctrl|ten_ms_off_cnt[2]~26\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[3]~28\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[2]~26\) # (!\i_key_ctrl|ten_ms_off_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(3),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[2]~26\,
	combout => \i_key_ctrl|ten_ms_off_cnt[3]~27_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[3]~28\);

-- Location: LCCOMB_X38_Y23_N6
\i_key_ctrl|ten_ms_off_cnt[12]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[12]~45_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(12) & (\i_key_ctrl|ten_ms_off_cnt[11]~44\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(12) & (!\i_key_ctrl|ten_ms_off_cnt[11]~44\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[12]~46\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(12) & !\i_key_ctrl|ten_ms_off_cnt[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(12),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[11]~44\,
	combout => \i_key_ctrl|ten_ms_off_cnt[12]~45_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[12]~46\);

-- Location: LCCOMB_X38_Y23_N12
\i_key_ctrl|ten_ms_off_cnt[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[15]~51_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(15) & (!\i_key_ctrl|ten_ms_off_cnt[14]~50\)) # (!\i_key_ctrl|ten_ms_off_cnt\(15) & ((\i_key_ctrl|ten_ms_off_cnt[14]~50\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[15]~52\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[14]~50\) # (!\i_key_ctrl|ten_ms_off_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(15),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[14]~50\,
	combout => \i_key_ctrl|ten_ms_off_cnt[15]~51_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[15]~52\);

-- Location: LCFF_X34_Y24_N23
\i_key_ctrl|ten_ms_down_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[4]~29_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(4));

-- Location: LCFF_X34_Y24_N21
\i_key_ctrl|ten_ms_down_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[3]~27_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(3));

-- Location: LCFF_X34_Y24_N19
\i_key_ctrl|ten_ms_down_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[2]~25_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(2));

-- Location: LCFF_X34_Y24_N17
\i_key_ctrl|ten_ms_down_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[1]~23_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(1));

-- Location: LCFF_X34_Y24_N15
\i_key_ctrl|ten_ms_down_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_down_cnt[0]~21_combout\,
	sclr => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_down_cnt\(0));

-- Location: LCCOMB_X34_Y24_N14
\i_key_ctrl|ten_ms_down_cnt[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[0]~21_combout\ = \i_key_ctrl|ten_ms_down_cnt\(0) $ (VCC)
-- \i_key_ctrl|ten_ms_down_cnt[0]~22\ = CARRY(\i_key_ctrl|ten_ms_down_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(0),
	datad => VCC,
	combout => \i_key_ctrl|ten_ms_down_cnt[0]~21_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[0]~22\);

-- Location: LCCOMB_X34_Y24_N16
\i_key_ctrl|ten_ms_down_cnt[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[1]~23_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(1) & (!\i_key_ctrl|ten_ms_down_cnt[0]~22\)) # (!\i_key_ctrl|ten_ms_down_cnt\(1) & ((\i_key_ctrl|ten_ms_down_cnt[0]~22\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[1]~24\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[0]~22\) # (!\i_key_ctrl|ten_ms_down_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(1),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[0]~22\,
	combout => \i_key_ctrl|ten_ms_down_cnt[1]~23_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[1]~24\);

-- Location: LCCOMB_X34_Y24_N18
\i_key_ctrl|ten_ms_down_cnt[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[2]~25_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(2) & (\i_key_ctrl|ten_ms_down_cnt[1]~24\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(2) & (!\i_key_ctrl|ten_ms_down_cnt[1]~24\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[2]~26\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(2) & !\i_key_ctrl|ten_ms_down_cnt[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(2),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[1]~24\,
	combout => \i_key_ctrl|ten_ms_down_cnt[2]~25_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[2]~26\);

-- Location: LCCOMB_X34_Y24_N20
\i_key_ctrl|ten_ms_down_cnt[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[3]~27_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(3) & (!\i_key_ctrl|ten_ms_down_cnt[2]~26\)) # (!\i_key_ctrl|ten_ms_down_cnt\(3) & ((\i_key_ctrl|ten_ms_down_cnt[2]~26\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[3]~28\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[2]~26\) # (!\i_key_ctrl|ten_ms_down_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(3),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[2]~26\,
	combout => \i_key_ctrl|ten_ms_down_cnt[3]~27_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[3]~28\);

-- Location: LCCOMB_X34_Y24_N22
\i_key_ctrl|ten_ms_down_cnt[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[4]~29_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(4) & (\i_key_ctrl|ten_ms_down_cnt[3]~28\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(4) & (!\i_key_ctrl|ten_ms_down_cnt[3]~28\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[4]~30\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(4) & !\i_key_ctrl|ten_ms_down_cnt[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(4),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[3]~28\,
	combout => \i_key_ctrl|ten_ms_down_cnt[4]~29_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[4]~30\);

-- Location: LCCOMB_X34_Y24_N24
\i_key_ctrl|ten_ms_down_cnt[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[5]~31_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(5) & (!\i_key_ctrl|ten_ms_down_cnt[4]~30\)) # (!\i_key_ctrl|ten_ms_down_cnt\(5) & ((\i_key_ctrl|ten_ms_down_cnt[4]~30\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[5]~32\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[4]~30\) # (!\i_key_ctrl|ten_ms_down_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(5),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[4]~30\,
	combout => \i_key_ctrl|ten_ms_down_cnt[5]~31_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[5]~32\);

-- Location: LCCOMB_X34_Y24_N26
\i_key_ctrl|ten_ms_down_cnt[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[6]~33_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(6) & (\i_key_ctrl|ten_ms_down_cnt[5]~32\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(6) & (!\i_key_ctrl|ten_ms_down_cnt[5]~32\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[6]~34\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(6) & !\i_key_ctrl|ten_ms_down_cnt[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(6),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[5]~32\,
	combout => \i_key_ctrl|ten_ms_down_cnt[6]~33_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[6]~34\);

-- Location: LCCOMB_X34_Y24_N28
\i_key_ctrl|ten_ms_down_cnt[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[7]~35_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(7) & (!\i_key_ctrl|ten_ms_down_cnt[6]~34\)) # (!\i_key_ctrl|ten_ms_down_cnt\(7) & ((\i_key_ctrl|ten_ms_down_cnt[6]~34\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[7]~36\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[6]~34\) # (!\i_key_ctrl|ten_ms_down_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(7),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[6]~34\,
	combout => \i_key_ctrl|ten_ms_down_cnt[7]~35_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[7]~36\);

-- Location: LCCOMB_X34_Y24_N30
\i_key_ctrl|ten_ms_down_cnt[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[8]~37_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(8) & (\i_key_ctrl|ten_ms_down_cnt[7]~36\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(8) & (!\i_key_ctrl|ten_ms_down_cnt[7]~36\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[8]~38\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(8) & !\i_key_ctrl|ten_ms_down_cnt[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(8),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[7]~36\,
	combout => \i_key_ctrl|ten_ms_down_cnt[8]~37_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[8]~38\);

-- Location: LCCOMB_X34_Y23_N0
\i_key_ctrl|ten_ms_down_cnt[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[9]~39_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(9) & (!\i_key_ctrl|ten_ms_down_cnt[8]~38\)) # (!\i_key_ctrl|ten_ms_down_cnt\(9) & ((\i_key_ctrl|ten_ms_down_cnt[8]~38\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[9]~40\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[8]~38\) # (!\i_key_ctrl|ten_ms_down_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(9),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[8]~38\,
	combout => \i_key_ctrl|ten_ms_down_cnt[9]~39_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[9]~40\);

-- Location: LCCOMB_X34_Y23_N2
\i_key_ctrl|ten_ms_down_cnt[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[10]~41_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(10) & (\i_key_ctrl|ten_ms_down_cnt[9]~40\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(10) & (!\i_key_ctrl|ten_ms_down_cnt[9]~40\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[10]~42\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(10) & !\i_key_ctrl|ten_ms_down_cnt[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(10),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[9]~40\,
	combout => \i_key_ctrl|ten_ms_down_cnt[10]~41_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[10]~42\);

-- Location: LCCOMB_X34_Y23_N4
\i_key_ctrl|ten_ms_down_cnt[11]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[11]~43_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(11) & (!\i_key_ctrl|ten_ms_down_cnt[10]~42\)) # (!\i_key_ctrl|ten_ms_down_cnt\(11) & ((\i_key_ctrl|ten_ms_down_cnt[10]~42\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[11]~44\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[10]~42\) # (!\i_key_ctrl|ten_ms_down_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(11),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[10]~42\,
	combout => \i_key_ctrl|ten_ms_down_cnt[11]~43_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[11]~44\);

-- Location: LCCOMB_X34_Y23_N6
\i_key_ctrl|ten_ms_down_cnt[12]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[12]~45_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(12) & (\i_key_ctrl|ten_ms_down_cnt[11]~44\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(12) & (!\i_key_ctrl|ten_ms_down_cnt[11]~44\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[12]~46\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(12) & !\i_key_ctrl|ten_ms_down_cnt[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(12),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[11]~44\,
	combout => \i_key_ctrl|ten_ms_down_cnt[12]~45_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[12]~46\);

-- Location: LCCOMB_X34_Y23_N8
\i_key_ctrl|ten_ms_down_cnt[13]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[13]~47_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(13) & (!\i_key_ctrl|ten_ms_down_cnt[12]~46\)) # (!\i_key_ctrl|ten_ms_down_cnt\(13) & ((\i_key_ctrl|ten_ms_down_cnt[12]~46\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[13]~48\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[12]~46\) # (!\i_key_ctrl|ten_ms_down_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(13),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[12]~46\,
	combout => \i_key_ctrl|ten_ms_down_cnt[13]~47_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[13]~48\);

-- Location: LCCOMB_X34_Y23_N10
\i_key_ctrl|ten_ms_down_cnt[14]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[14]~49_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(14) & (\i_key_ctrl|ten_ms_down_cnt[13]~48\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(14) & (!\i_key_ctrl|ten_ms_down_cnt[13]~48\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[14]~50\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(14) & !\i_key_ctrl|ten_ms_down_cnt[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(14),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[13]~48\,
	combout => \i_key_ctrl|ten_ms_down_cnt[14]~49_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[14]~50\);

-- Location: LCCOMB_X34_Y23_N12
\i_key_ctrl|ten_ms_down_cnt[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[15]~51_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(15) & (!\i_key_ctrl|ten_ms_down_cnt[14]~50\)) # (!\i_key_ctrl|ten_ms_down_cnt\(15) & ((\i_key_ctrl|ten_ms_down_cnt[14]~50\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[15]~52\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[14]~50\) # (!\i_key_ctrl|ten_ms_down_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(15),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[14]~50\,
	combout => \i_key_ctrl|ten_ms_down_cnt[15]~51_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[15]~52\);

-- Location: LCCOMB_X34_Y23_N14
\i_key_ctrl|ten_ms_down_cnt[16]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[16]~53_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(16) & (\i_key_ctrl|ten_ms_down_cnt[15]~52\ $ (GND))) # (!\i_key_ctrl|ten_ms_down_cnt\(16) & (!\i_key_ctrl|ten_ms_down_cnt[15]~52\ & VCC))
-- \i_key_ctrl|ten_ms_down_cnt[16]~54\ = CARRY((\i_key_ctrl|ten_ms_down_cnt\(16) & !\i_key_ctrl|ten_ms_down_cnt[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_down_cnt\(16),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[15]~52\,
	combout => \i_key_ctrl|ten_ms_down_cnt[16]~53_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[16]~54\);

-- Location: LCCOMB_X34_Y23_N16
\i_key_ctrl|ten_ms_down_cnt[17]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[17]~55_combout\ = (\i_key_ctrl|ten_ms_down_cnt\(17) & (!\i_key_ctrl|ten_ms_down_cnt[16]~54\)) # (!\i_key_ctrl|ten_ms_down_cnt\(17) & ((\i_key_ctrl|ten_ms_down_cnt[16]~54\) # (GND)))
-- \i_key_ctrl|ten_ms_down_cnt[17]~56\ = CARRY((!\i_key_ctrl|ten_ms_down_cnt[16]~54\) # (!\i_key_ctrl|ten_ms_down_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(17),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_down_cnt[16]~54\,
	combout => \i_key_ctrl|ten_ms_down_cnt[17]~55_combout\,
	cout => \i_key_ctrl|ten_ms_down_cnt[17]~56\);

-- Location: LCCOMB_X34_Y23_N18
\i_key_ctrl|ten_ms_down_cnt[18]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[18]~57_combout\ = \i_key_ctrl|ten_ms_down_cnt[17]~56\ $ (!\i_key_ctrl|ten_ms_down_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|ten_ms_down_cnt\(18),
	cin => \i_key_ctrl|ten_ms_down_cnt[17]~56\,
	combout => \i_key_ctrl|ten_ms_down_cnt[18]~57_combout\);

-- Location: LCFF_X35_Y24_N21
\i_key_ctrl|ten_ms_up_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[3]~27_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(3));

-- Location: LCFF_X35_Y24_N17
\i_key_ctrl|ten_ms_up_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[1]~23_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(1));

-- Location: LCCOMB_X35_Y24_N16
\i_key_ctrl|ten_ms_up_cnt[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[1]~23_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(1) & (!\i_key_ctrl|ten_ms_up_cnt[0]~22\)) # (!\i_key_ctrl|ten_ms_up_cnt\(1) & ((\i_key_ctrl|ten_ms_up_cnt[0]~22\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[1]~24\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[0]~22\) # (!\i_key_ctrl|ten_ms_up_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(1),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[0]~22\,
	combout => \i_key_ctrl|ten_ms_up_cnt[1]~23_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[1]~24\);

-- Location: LCCOMB_X35_Y24_N20
\i_key_ctrl|ten_ms_up_cnt[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[3]~27_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(3) & (!\i_key_ctrl|ten_ms_up_cnt[2]~26\)) # (!\i_key_ctrl|ten_ms_up_cnt\(3) & ((\i_key_ctrl|ten_ms_up_cnt[2]~26\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[3]~28\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[2]~26\) # (!\i_key_ctrl|ten_ms_up_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(3),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[2]~26\,
	combout => \i_key_ctrl|ten_ms_up_cnt[3]~27_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[3]~28\);

-- Location: LCCOMB_X35_Y23_N6
\i_key_ctrl|ten_ms_up_cnt[12]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[12]~45_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(12) & (\i_key_ctrl|ten_ms_up_cnt[11]~44\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(12) & (!\i_key_ctrl|ten_ms_up_cnt[11]~44\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[12]~46\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(12) & !\i_key_ctrl|ten_ms_up_cnt[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(12),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[11]~44\,
	combout => \i_key_ctrl|ten_ms_up_cnt[12]~45_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[12]~46\);

-- Location: LCCOMB_X35_Y23_N10
\i_key_ctrl|ten_ms_up_cnt[14]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[14]~49_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(14) & (\i_key_ctrl|ten_ms_up_cnt[13]~48\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(14) & (!\i_key_ctrl|ten_ms_up_cnt[13]~48\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[14]~50\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(14) & !\i_key_ctrl|ten_ms_up_cnt[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(14),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[13]~48\,
	combout => \i_key_ctrl|ten_ms_up_cnt[14]~49_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[14]~50\);

-- Location: LCFF_X38_Y25_N19
\i_pwm_ctrl|one_ms_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(14));

-- Location: LCFF_X39_Y25_N7
\i_pwm_ctrl|one_ms_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~6_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(3));

-- Location: LCFF_X36_Y26_N7
\i_serial_uart|tx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt_wrap~regout\);

-- Location: LCFF_X36_Y25_N25
\i_serial_uart|rx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(1));

-- Location: LCCOMB_X38_Y25_N12
\i_pwm_ctrl|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~0_combout\ = (\i_pwm_ctrl|one_ms_cnt\(15) & (\i_pwm_ctrl|one_ms_cnt\(14) & (!\i_pwm_ctrl|one_ms_cnt\(13) & !\i_pwm_ctrl|one_ms_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(15),
	datab => \i_pwm_ctrl|one_ms_cnt\(14),
	datac => \i_pwm_ctrl|one_ms_cnt\(13),
	datad => \i_pwm_ctrl|one_ms_cnt\(12),
	combout => \i_pwm_ctrl|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y26_N10
\i_pwm_ctrl|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan2~0_combout\ = (\i_pwm_ctrl|new_dc\(3) & (((\i_pwm_ctrl|new_dc\(0) & \i_pwm_ctrl|new_dc\(1))) # (!\i_pwm_ctrl|new_dc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(2),
	datab => \i_pwm_ctrl|new_dc\(0),
	datac => \i_pwm_ctrl|new_dc\(3),
	datad => \i_pwm_ctrl|new_dc\(1),
	combout => \i_pwm_ctrl|LessThan2~0_combout\);

-- Location: LCCOMB_X39_Y26_N28
\i_pwm_ctrl|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan2~1_combout\ = ((\i_pwm_ctrl|new_dc\(7)) # ((\i_pwm_ctrl|new_dc\(4)) # (!\i_pwm_ctrl|new_dc\(5)))) # (!\i_pwm_ctrl|new_dc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(6),
	datab => \i_pwm_ctrl|new_dc\(7),
	datac => \i_pwm_ctrl|new_dc\(4),
	datad => \i_pwm_ctrl|new_dc\(5),
	combout => \i_pwm_ctrl|LessThan2~1_combout\);

-- Location: LCCOMB_X39_Y26_N14
\i_pwm_ctrl|dc_cnt[2]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~44_combout\ = ((!\i_pwm_ctrl|LessThan2~0_combout\ & !\i_pwm_ctrl|LessThan2~1_combout\)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|LessThan2~0_combout\,
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => \i_pwm_ctrl|LessThan2~1_combout\,
	combout => \i_pwm_ctrl|dc_cnt[2]~44_combout\);

-- Location: LCCOMB_X40_Y26_N28
\i_pwm_ctrl|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal2~2_combout\ = (\i_pwm_ctrl|dc_cnt\(8) & (\i_pwm_ctrl|dc_cnt\(6) & (\i_pwm_ctrl|dc_cnt\(4) & \i_pwm_ctrl|dc_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(8),
	datab => \i_pwm_ctrl|dc_cnt\(6),
	datac => \i_pwm_ctrl|dc_cnt\(4),
	datad => \i_pwm_ctrl|dc_cnt\(15),
	combout => \i_pwm_ctrl|Equal2~2_combout\);

-- Location: LCCOMB_X38_Y25_N18
\i_pwm_ctrl|one_ms_cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt~1_combout\ = (!\i_pwm_ctrl|Equal0~4_combout\ & \i_pwm_ctrl|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Equal0~4_combout\,
	datad => \i_pwm_ctrl|Add0~28_combout\,
	combout => \i_pwm_ctrl|one_ms_cnt~1_combout\);

-- Location: LCCOMB_X33_Y23_N6
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

-- Location: LCCOMB_X35_Y26_N30
\i_serial_uart|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~0_combout\ = ((!\i_serial_uart|tx_bit_cnt\(6) & ((!\i_serial_uart|tx_bit_cnt\(5)) # (!\i_serial_uart|tx_bit_cnt\(4))))) # (!\i_serial_uart|tx_bit_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(4),
	datab => \i_serial_uart|tx_bit_cnt\(5),
	datac => \i_serial_uart|tx_bit_cnt\(6),
	datad => \i_serial_uart|tx_bit_cnt\(7),
	combout => \i_serial_uart|LessThan2~0_combout\);

-- Location: LCCOMB_X35_Y26_N0
\i_serial_uart|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~1_combout\ = (!\i_serial_uart|tx_bit_cnt\(1) & (!\i_serial_uart|tx_bit_cnt\(2) & (!\i_serial_uart|tx_bit_cnt\(0) & !\i_serial_uart|tx_bit_cnt\(3))))

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
	combout => \i_serial_uart|LessThan2~1_combout\);

-- Location: LCCOMB_X35_Y26_N26
\i_serial_uart|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~2_combout\ = ((\i_serial_uart|LessThan2~0_combout\) # ((\i_serial_uart|LessThan2~1_combout\ & !\i_serial_uart|tx_bit_cnt\(6)))) # (!\i_serial_uart|tx_bit_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(8),
	datab => \i_serial_uart|LessThan2~1_combout\,
	datac => \i_serial_uart|tx_bit_cnt\(6),
	datad => \i_serial_uart|LessThan2~0_combout\,
	combout => \i_serial_uart|LessThan2~2_combout\);

-- Location: LCCOMB_X36_Y26_N6
\i_serial_uart|tx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt_wrap~0_combout\ = (!\i_serial_uart|LessThan2~2_combout\ & \i_serial_uart|tx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|LessThan2~2_combout\,
	datad => \i_serial_uart|tx_bit_cnt_en~regout\,
	combout => \i_serial_uart|tx_bit_cnt_wrap~0_combout\);

-- Location: LCCOMB_X36_Y26_N20
\i_serial_uart|tx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_no~0_combout\ = ((\i_serial_uart|tx_bit_no\(1) & (\i_serial_uart|tx_bit_no\(0) & \i_serial_uart|tx_bit_no\(2)))) # (!\i_serial_uart|tx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|tx_bit_no\(1),
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_bit_no\(2),
	combout => \i_serial_uart|tx_bit_no~0_combout\);

-- Location: LCCOMB_X35_Y25_N10
\i_serial_uart|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector2~0_combout\ = (\i_serial_uart|rx_bit_cnt_half~regout\ & !\i_serial_uart|rx_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt_half~regout\,
	datad => \i_serial_uart|rx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector2~0_combout\);

-- Location: LCCOMB_X36_Y25_N12
\i_serial_uart|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector12~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & (\i_serial_uart|rx_state.s_rx_data~regout\ & (\i_serial_uart|rx_bit_no\(1) & \i_serial_uart|rx_bit_no\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_no\(1),
	datad => \i_serial_uart|rx_bit_no\(0),
	combout => \i_serial_uart|Selector12~0_combout\);

-- Location: LCCOMB_X36_Y25_N30
\i_serial_uart|rx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_no~0_combout\ = ((\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_no\(0) & \i_serial_uart|rx_bit_no\(2)))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|rx_bit_no\(2),
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|rx_bit_no~0_combout\);

-- Location: LCCOMB_X36_Y25_N0
\i_serial_uart|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~0_combout\ = (\i_serial_uart|rx_state.s_rx_data~regout\ & (\i_serial_uart|rx_bit_no\(1) $ (((\i_serial_uart|rx_bit_no\(0) & !\i_serial_uart|rx_bit_no~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(0),
	datab => \i_serial_uart|rx_bit_no~0_combout\,
	datac => \i_serial_uart|rx_bit_no\(1),
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector13~0_combout\);

-- Location: LCCOMB_X36_Y25_N24
\i_serial_uart|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~1_combout\ = (\i_serial_uart|Selector13~0_combout\) # ((\i_serial_uart|rx_state.s_stop_bit~regout\ & \i_serial_uart|rx_bit_no\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|rx_bit_no\(1),
	datad => \i_serial_uart|Selector13~0_combout\,
	combout => \i_serial_uart|Selector13~1_combout\);

-- Location: LCFF_X37_Y25_N15
\i_serial_ctrl|serial_off_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_ctrl|Mux0~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_serial_uart|received_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_ctrl|serial_off_out~regout\);

-- Location: LCFF_X37_Y25_N25
\i_serial_ctrl|serial_down_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_ctrl|serial_down_out~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_ctrl|serial_down_out~regout\);

-- Location: LCFF_X37_Y23_N13
\i_key_ctrl|key_down\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_down~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_down~regout\);

-- Location: LCCOMB_X37_Y25_N2
\i_pwm_ctrl|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector11~1_combout\ = (!\i_pwm_ctrl|pwm_state.s_off~regout\ & (((\i_serial_ctrl|serial_down_out~regout\) # (\i_pwm_ctrl|pwm_state.s_down~regout\)) # (!\i_key_ctrl|key_down~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_off~regout\,
	datab => \i_key_ctrl|key_down~regout\,
	datac => \i_serial_ctrl|serial_down_out~regout\,
	datad => \i_pwm_ctrl|pwm_state.s_down~regout\,
	combout => \i_pwm_ctrl|Selector11~1_combout\);

-- Location: LCCOMB_X39_Y26_N6
\i_pwm_ctrl|new_dc[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[4]~13_combout\ = (!\i_pwm_ctrl|LessThan2~0_combout\ & (\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|LessThan2~0_combout\,
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => \i_pwm_ctrl|LessThan2~1_combout\,
	combout => \i_pwm_ctrl|new_dc[4]~13_combout\);

-- Location: LCCOMB_X37_Y25_N10
\i_pwm_ctrl|Selector11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector11~3_combout\ = (\i_key_ctrl|key_down~regout\ & (!\i_serial_ctrl|serial_off_out~regout\ & (!\i_serial_ctrl|serial_down_out~regout\ & \i_key_ctrl|key_off~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_down~regout\,
	datab => \i_serial_ctrl|serial_off_out~regout\,
	datac => \i_serial_ctrl|serial_down_out~regout\,
	datad => \i_key_ctrl|key_off~regout\,
	combout => \i_pwm_ctrl|Selector11~3_combout\);

-- Location: LCCOMB_X35_Y26_N28
\i_serial_uart|tx_bit_cnt[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[3]~19_combout\ = (!\i_serial_uart|tx_bit_cnt_en~regout\) # (!\i_serial_uart|LessThan2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|LessThan2~2_combout\,
	datad => \i_serial_uart|tx_bit_cnt_en~regout\,
	combout => \i_serial_uart|tx_bit_cnt[3]~19_combout\);

-- Location: LCFF_X37_Y23_N3
\i_key_ctrl|key_in_states\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_in_states~0_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_in_states~regout\);

-- Location: LCFF_X36_Y25_N15
\i_serial_uart|received_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~4_combout\,
	ena => \i_serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(1));

-- Location: LCCOMB_X37_Y25_N12
\i_serial_ctrl|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux1~0_combout\ = (!\i_serial_uart|received_data\(1) & (!\i_serial_uart|received_data\(2) & (!\i_serial_uart|received_data\(7) & !\i_serial_uart|received_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(1),
	datab => \i_serial_uart|received_data\(2),
	datac => \i_serial_uart|received_data\(7),
	datad => \i_serial_uart|received_data\(3),
	combout => \i_serial_ctrl|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y25_N16
\i_serial_ctrl|serial_on_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|serial_on_out~0_combout\ = (!\i_serial_ctrl|serial_up_out~regout\ & !\i_serial_ctrl|serial_down_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_ctrl|serial_up_out~regout\,
	datac => \i_serial_ctrl|serial_down_out~regout\,
	combout => \i_serial_ctrl|serial_on_out~0_combout\);

-- Location: LCCOMB_X38_Y23_N24
\i_key_ctrl|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan0~2_combout\ = (!\i_key_ctrl|ten_ms_off_cnt\(12) & (!\i_key_ctrl|ten_ms_off_cnt\(10) & (!\i_key_ctrl|ten_ms_off_cnt\(11) & !\i_key_ctrl|ten_ms_off_cnt\(9))))

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
	combout => \i_key_ctrl|LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y25_N14
\i_serial_ctrl|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux0~0_combout\ = (\i_serial_ctrl|serial_on_out~0_combout\ & ((\i_serial_ctrl|serial_off_out~regout\) # ((!\i_serial_uart|received_data\(0) & \i_serial_ctrl|Mux1~1_combout\)))) # (!\i_serial_ctrl|serial_on_out~0_combout\ & 
-- (!\i_serial_uart|received_data\(0) & ((\i_serial_ctrl|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_ctrl|serial_on_out~0_combout\,
	datab => \i_serial_uart|received_data\(0),
	datac => \i_serial_ctrl|serial_off_out~regout\,
	datad => \i_serial_ctrl|Mux1~1_combout\,
	combout => \i_serial_ctrl|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y25_N24
\i_serial_ctrl|serial_down_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|serial_down_out~2_combout\ = (\i_serial_ctrl|serial_down_out~regout\) # ((!\i_serial_uart|received_data\(4) & (!\i_serial_uart|received_data\(0) & \i_serial_ctrl|serial_down_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(4),
	datab => \i_serial_uart|received_data\(0),
	datac => \i_serial_ctrl|serial_down_out~regout\,
	datad => \i_serial_ctrl|serial_down_out~1_combout\,
	combout => \i_serial_ctrl|serial_down_out~2_combout\);

-- Location: LCCOMB_X37_Y23_N14
\i_key_ctrl|key_down~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_down~0_combout\ = (\i_key_ctrl|key_in_states~regout\ & ((\i_key_ctrl|key_down~regout\))) # (!\i_key_ctrl|key_in_states~regout\ & (\i_key_ctrl|key_off_n_2r~regout\ & !\i_key_ctrl|key_down~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_in_states~regout\,
	datac => \i_key_ctrl|key_off_n_2r~regout\,
	datad => \i_key_ctrl|key_down~regout\,
	combout => \i_key_ctrl|key_down~0_combout\);

-- Location: LCFF_X37_Y23_N27
\i_key_ctrl|key_up_n_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_key_ctrl|key_up_n_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_up_n_2r~regout\);

-- Location: LCCOMB_X34_Y23_N20
\i_key_ctrl|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan2~0_combout\ = (!\i_key_ctrl|ten_ms_down_cnt\(18)) # (!\i_key_ctrl|ten_ms_down_cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl|ten_ms_down_cnt\(17),
	datad => \i_key_ctrl|ten_ms_down_cnt\(18),
	combout => \i_key_ctrl|LessThan2~0_combout\);

-- Location: LCCOMB_X34_Y23_N22
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

-- Location: LCCOMB_X34_Y24_N0
\i_key_ctrl|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan2~2_combout\ = ((!\i_key_ctrl|ten_ms_down_cnt\(7) & (!\i_key_ctrl|ten_ms_down_cnt\(6) & !\i_key_ctrl|ten_ms_down_cnt\(5)))) # (!\i_key_ctrl|ten_ms_down_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_down_cnt\(7),
	datab => \i_key_ctrl|ten_ms_down_cnt\(6),
	datac => \i_key_ctrl|ten_ms_down_cnt\(5),
	datad => \i_key_ctrl|ten_ms_down_cnt\(8),
	combout => \i_key_ctrl|LessThan2~2_combout\);

-- Location: LCCOMB_X34_Y23_N24
\i_key_ctrl|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan2~3_combout\ = (!\i_key_ctrl|ten_ms_down_cnt\(12) & (!\i_key_ctrl|ten_ms_down_cnt\(10) & (!\i_key_ctrl|ten_ms_down_cnt\(11) & !\i_key_ctrl|ten_ms_down_cnt\(9))))

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
	combout => \i_key_ctrl|LessThan2~3_combout\);

-- Location: LCCOMB_X34_Y23_N26
\i_key_ctrl|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan2~4_combout\ = (\i_key_ctrl|LessThan2~1_combout\) # ((\i_key_ctrl|LessThan2~3_combout\ & (\i_key_ctrl|LessThan2~2_combout\ & !\i_key_ctrl|ten_ms_down_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|LessThan2~3_combout\,
	datab => \i_key_ctrl|LessThan2~1_combout\,
	datac => \i_key_ctrl|LessThan2~2_combout\,
	datad => \i_key_ctrl|ten_ms_down_cnt\(14),
	combout => \i_key_ctrl|LessThan2~4_combout\);

-- Location: LCCOMB_X37_Y23_N26
\i_key_ctrl|key_down~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_down~1_combout\ = (\i_key_ctrl|LessThan2~4_combout\ & (((!\i_key_ctrl|key_down~0_combout\) # (!\i_key_ctrl|key_up_n_2r~regout\)))) # (!\i_key_ctrl|LessThan2~4_combout\ & (\i_key_ctrl|LessThan2~0_combout\ & 
-- ((!\i_key_ctrl|key_down~0_combout\) # (!\i_key_ctrl|key_up_n_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|LessThan2~4_combout\,
	datab => \i_key_ctrl|LessThan2~0_combout\,
	datac => \i_key_ctrl|key_up_n_2r~regout\,
	datad => \i_key_ctrl|key_down~0_combout\,
	combout => \i_key_ctrl|key_down~1_combout\);

-- Location: LCCOMB_X37_Y23_N12
\i_key_ctrl|key_down~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_down~2_combout\ = (\i_key_ctrl|key_down~regout\ & (!\i_key_ctrl|key_down~0_combout\)) # (!\i_key_ctrl|key_down~regout\ & (((!\i_key_ctrl|key_down~1_combout\ & !\i_key_ctrl|key_down_n_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_down~0_combout\,
	datab => \i_key_ctrl|key_down~1_combout\,
	datac => \i_key_ctrl|key_down~regout\,
	datad => \i_key_ctrl|key_down_n_2r~regout\,
	combout => \i_key_ctrl|key_down~2_combout\);

-- Location: LCCOMB_X35_Y23_N20
\i_key_ctrl|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan3~0_combout\ = (!\i_key_ctrl|ten_ms_up_cnt\(18)) # (!\i_key_ctrl|ten_ms_up_cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl|ten_ms_up_cnt\(17),
	datad => \i_key_ctrl|ten_ms_up_cnt\(18),
	combout => \i_key_ctrl|LessThan3~0_combout\);

-- Location: LCFF_X36_Y25_N7
\i_serial_uart|rx_byte_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(1));

-- Location: LCCOMB_X36_Y25_N14
\i_serial_uart|received_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~4_combout\ = (\i_serial_uart|rx_byte_int\(1) & !\i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(1),
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~4_combout\);

-- Location: LCFF_X35_Y25_N13
\i_serial_uart|rx_byte_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(3));

-- Location: LCFF_X35_Y25_N7
\i_serial_uart|rx_byte_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(6));

-- Location: LCFF_X37_Y23_N5
\i_key_ctrl|key_up_n_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_up_n_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_up_n_r~regout\);

-- Location: LCCOMB_X36_Y25_N6
\i_serial_uart|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector10~1_combout\ = (\i_serial_uart|rx_byte_int\(2) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|Selector10~0_combout\ & \i_serial_uart|rx_byte_int\(1))))) # (!\i_serial_uart|rx_byte_int\(2) & 
-- (\i_serial_uart|Selector10~0_combout\ & (\i_serial_uart|rx_byte_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(2),
	datab => \i_serial_uart|Selector10~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(1),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector10~1_combout\);

-- Location: LCCOMB_X35_Y25_N12
\i_serial_uart|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector8~0_combout\ = (\i_serial_uart|rx_byte_int\(4) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|Selector10~0_combout\ & \i_serial_uart|rx_byte_int\(3))))) # (!\i_serial_uart|rx_byte_int\(4) & 
-- (\i_serial_uart|Selector10~0_combout\ & (\i_serial_uart|rx_byte_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(4),
	datab => \i_serial_uart|Selector10~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(3),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector8~0_combout\);

-- Location: LCCOMB_X35_Y25_N6
\i_serial_uart|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector5~0_combout\ = (\i_serial_uart|rx_2r~regout\ & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|Selector10~0_combout\ & \i_serial_uart|rx_byte_int\(6))))) # (!\i_serial_uart|rx_2r~regout\ & 
-- (\i_serial_uart|Selector10~0_combout\ & (\i_serial_uart|rx_byte_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datab => \i_serial_uart|Selector10~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(6),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector5~0_combout\);

-- Location: LCCOMB_X34_Y23_N28
\i_key_ctrl|ten_ms_down_cnt[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\ = (\i_key_ctrl|key_down_n_2r~regout\) # ((\i_key_ctrl|ten_ms_down_cnt\(18) & (\i_key_ctrl|ten_ms_down_cnt\(17) & !\i_key_ctrl|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_down_n_2r~regout\,
	datab => \i_key_ctrl|ten_ms_down_cnt\(18),
	datac => \i_key_ctrl|ten_ms_down_cnt\(17),
	datad => \i_key_ctrl|LessThan2~4_combout\,
	combout => \i_key_ctrl|ten_ms_down_cnt[15]~59_combout\);

-- Location: LCCOMB_X37_Y23_N2
\i_key_ctrl|key_in_states~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_in_states~0_combout\ = !\i_key_ctrl|key_in_states~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl|key_in_states~regout\,
	combout => \i_key_ctrl|key_in_states~0_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y23_N4
\i_key_ctrl|key_up_n_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_up_n_r~feeder_combout\ = \key_n~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(3),
	combout => \i_key_ctrl|key_up_n_r~feeder_combout\);

-- Location: LCCOMB_X36_Y26_N14
\i_dc_disp_ctrl|transmit_valid_out~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dc_disp_ctrl|transmit_valid_out~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \i_dc_disp_ctrl|transmit_valid_out~feeder_combout\);

-- Location: LCCOMB_X33_Y23_N2
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

-- Location: LCFF_X33_Y23_N3
\b_gen_pll:i_reset_ctrl|reset_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[0]~6_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(0));

-- Location: LCCOMB_X33_Y23_N14
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

-- Location: LCFF_X33_Y23_N15
\b_gen_pll:i_reset_ctrl|reset_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[2]~9_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(2));

-- Location: LCCOMB_X33_Y23_N16
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

-- Location: LCFF_X33_Y23_N17
\b_gen_pll:i_reset_ctrl|reset_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[3]~11_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(3));

-- Location: LCCOMB_X33_Y23_N28
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

-- Location: LCCOMB_X33_Y23_N18
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

-- Location: LCFF_X33_Y23_N19
\b_gen_pll:i_reset_ctrl|reset_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[4]~13_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(4));

-- Location: LCFF_X33_Y23_N21
\b_gen_pll:i_reset_ctrl|reset_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_cnt[5]~15_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_cnt\(5));

-- Location: LCCOMB_X33_Y23_N8
\b_gen_pll:i_reset_ctrl|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\ = ((\b_gen_pll:i_reset_ctrl|LessThan0~2_combout\) # ((!\b_gen_pll:i_reset_ctrl|reset_cnt\(4)) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(5)))) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|reset_cnt\(6),
	datab => \b_gen_pll:i_reset_ctrl|LessThan0~2_combout\,
	datac => \b_gen_pll:i_reset_ctrl|reset_cnt\(5),
	datad => \b_gen_pll:i_reset_ctrl|reset_cnt\(4),
	combout => \b_gen_pll:i_reset_ctrl|LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y23_N0
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

-- Location: LCFF_X33_Y23_N1
\b_gen_pll:i_reset_ctrl|reset_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \b_gen_pll:i_altera_pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \b_gen_pll:i_reset_ctrl|reset_out~0_combout\,
	aclr => \b_gen_pll:i_altera_pll|altpll_component|ALT_INV__locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b_gen_pll:i_reset_ctrl|reset_out~regout\);

-- Location: LCFF_X36_Y26_N15
\i_dc_disp_ctrl|transmit_valid_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_dc_disp_ctrl|transmit_valid_out~feeder_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dc_disp_ctrl|transmit_valid_out~regout\);

-- Location: LCCOMB_X36_Y26_N28
\i_serial_uart|tx_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_state~7_combout\ = (\i_serial_uart|tx_bit_cnt_wrap~regout\ & (!\i_serial_uart|tx_state.s_stop_bit~regout\ & ((\i_serial_uart|tx_state.s_idle~regout\) # (!\i_dc_disp_ctrl|transmit_valid_out~regout\)))) # 
-- (!\i_serial_uart|tx_bit_cnt_wrap~regout\ & (((\i_serial_uart|tx_state.s_idle~regout\) # (!\i_dc_disp_ctrl|transmit_valid_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datac => \i_dc_disp_ctrl|transmit_valid_out~regout\,
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|tx_state~7_combout\);

-- Location: LCCOMB_X36_Y26_N16
\i_serial_uart|reset_r~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|reset_r~0_combout\ = !\b_gen_pll:i_reset_ctrl|reset_out~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	combout => \i_serial_uart|reset_r~0_combout\);

-- Location: LCFF_X36_Y26_N17
\i_serial_uart|reset_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|reset_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|reset_r~regout\);

-- Location: LCFF_X36_Y25_N9
\i_serial_uart|reset_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|reset_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|reset_2r~regout\);

-- Location: LCCOMB_X36_Y26_N0
\i_serial_uart|tx_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_state~8_combout\ = (\i_serial_uart|tx_state~7_combout\ & !\i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|tx_state~7_combout\,
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|tx_state~8_combout\);

-- Location: LCFF_X36_Y26_N1
\i_serial_uart|tx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_idle~regout\);

-- Location: LCCOMB_X36_Y26_N12
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

-- Location: LCFF_X36_Y26_N13
\i_serial_uart|tx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(2));

-- Location: LCCOMB_X36_Y26_N2
\i_serial_uart|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector28~0_combout\ = (\i_serial_uart|tx_bit_cnt_wrap~regout\ & (\i_serial_uart|tx_bit_no\(1) & (\i_serial_uart|tx_bit_no\(0) & \i_serial_uart|tx_bit_no\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|tx_bit_no\(1),
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_bit_no\(2),
	combout => \i_serial_uart|Selector28~0_combout\);

-- Location: LCCOMB_X36_Y26_N30
\i_serial_uart|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector27~0_combout\ = (\i_serial_uart|tx_bit_cnt_wrap~regout\ & (!\i_dc_disp_ctrl|transmit_valid_out~regout\ & ((!\i_serial_uart|tx_state.s_idle~regout\)))) # (!\i_serial_uart|tx_bit_cnt_wrap~regout\ & 
-- ((\i_serial_uart|tx_state.s_start_bit~regout\) # ((!\i_dc_disp_ctrl|transmit_valid_out~regout\ & !\i_serial_uart|tx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_dc_disp_ctrl|transmit_valid_out~regout\,
	datac => \i_serial_uart|tx_state.s_start_bit~regout\,
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector27~0_combout\);

-- Location: LCFF_X36_Y26_N31
\i_serial_uart|tx_state.s_start_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector27~0_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_start_bit~regout\);

-- Location: LCCOMB_X36_Y26_N10
\i_serial_uart|Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector28~1_combout\ = (\i_serial_uart|tx_bit_cnt_wrap~regout\ & ((\i_serial_uart|tx_state.s_start_bit~regout\) # ((!\i_serial_uart|Selector28~0_combout\ & \i_serial_uart|tx_state.s_tx_data~regout\)))) # 
-- (!\i_serial_uart|tx_bit_cnt_wrap~regout\ & (!\i_serial_uart|Selector28~0_combout\ & (\i_serial_uart|tx_state.s_tx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|Selector28~0_combout\,
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	datad => \i_serial_uart|tx_state.s_start_bit~regout\,
	combout => \i_serial_uart|Selector28~1_combout\);

-- Location: LCFF_X36_Y26_N11
\i_serial_uart|tx_state.s_tx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector28~1_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_tx_data~regout\);

-- Location: LCCOMB_X36_Y26_N24
\i_serial_uart|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector33~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_bit_no~0_combout\ $ (((!\i_serial_uart|tx_bit_no\(0)))))) # (!\i_serial_uart|tx_state.s_tx_data~regout\ & (((\i_serial_uart|tx_state.s_idle~regout\ & 
-- \i_serial_uart|tx_bit_no\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no~0_combout\,
	datab => \i_serial_uart|tx_state.s_idle~regout\,
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_state.s_tx_data~regout\,
	combout => \i_serial_uart|Selector33~0_combout\);

-- Location: LCFF_X36_Y26_N25
\i_serial_uart|tx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(0));

-- Location: LCCOMB_X36_Y26_N22
\i_serial_uart|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector32~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_bit_no\(1) $ (((!\i_serial_uart|tx_bit_no~0_combout\ & \i_serial_uart|tx_bit_no\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no~0_combout\,
	datab => \i_serial_uart|tx_bit_no\(1),
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_state.s_tx_data~regout\,
	combout => \i_serial_uart|Selector32~0_combout\);

-- Location: LCCOMB_X36_Y26_N18
\i_serial_uart|Selector32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector32~1_combout\ = (\i_serial_uart|Selector32~0_combout\) # ((!\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_bit_no\(1) & \i_serial_uart|tx_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_tx_data~regout\,
	datab => \i_serial_uart|Selector32~0_combout\,
	datac => \i_serial_uart|tx_bit_no\(1),
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector32~1_combout\);

-- Location: LCFF_X36_Y26_N19
\i_serial_uart|tx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(1));

-- Location: LCCOMB_X36_Y26_N4
\i_serial_uart|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector29~0_combout\ = (\i_serial_uart|tx_bit_cnt_wrap~regout\ & (\i_serial_uart|tx_bit_no\(1) & (\i_serial_uart|tx_bit_no\(0) & \i_serial_uart|tx_state.s_tx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|tx_bit_no\(1),
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_state.s_tx_data~regout\,
	combout => \i_serial_uart|Selector29~0_combout\);

-- Location: LCCOMB_X36_Y26_N8
\i_serial_uart|Selector29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector29~1_combout\ = (\i_serial_uart|tx_bit_cnt_wrap~regout\ & (\i_serial_uart|Selector29~0_combout\ & ((\i_serial_uart|tx_bit_no\(2))))) # (!\i_serial_uart|tx_bit_cnt_wrap~regout\ & ((\i_serial_uart|tx_state.s_stop_bit~regout\) # 
-- ((\i_serial_uart|Selector29~0_combout\ & \i_serial_uart|tx_bit_no\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|Selector29~0_combout\,
	datac => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_bit_no\(2),
	combout => \i_serial_uart|Selector29~1_combout\);

-- Location: LCFF_X36_Y26_N9
\i_serial_uart|tx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector29~1_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X36_Y26_N26
\i_serial_uart|tx~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx~0_combout\ = (\i_serial_uart|tx_state.s_stop_bit~regout\) # (!\i_serial_uart|tx_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|tx~0_combout\);

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

-- Location: LCCOMB_X34_Y25_N4
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

-- Location: LCCOMB_X34_Y25_N6
\i_serial_uart|rx_bit_cnt[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[1]~11_combout\ = (\i_serial_uart|rx_bit_cnt\(1) & (!\i_serial_uart|rx_bit_cnt[0]~10\)) # (!\i_serial_uart|rx_bit_cnt\(1) & ((\i_serial_uart|rx_bit_cnt[0]~10\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[1]~12\ = CARRY((!\i_serial_uart|rx_bit_cnt[0]~10\) # (!\i_serial_uart|rx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(1),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[0]~10\,
	combout => \i_serial_uart|rx_bit_cnt[1]~11_combout\,
	cout => \i_serial_uart|rx_bit_cnt[1]~12\);

-- Location: LCCOMB_X34_Y25_N8
\i_serial_uart|rx_bit_cnt[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[2]~13_combout\ = (\i_serial_uart|rx_bit_cnt\(2) & (\i_serial_uart|rx_bit_cnt[1]~12\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(2) & (!\i_serial_uart|rx_bit_cnt[1]~12\ & VCC))
-- \i_serial_uart|rx_bit_cnt[2]~14\ = CARRY((\i_serial_uart|rx_bit_cnt\(2) & !\i_serial_uart|rx_bit_cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(2),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[1]~12\,
	combout => \i_serial_uart|rx_bit_cnt[2]~13_combout\,
	cout => \i_serial_uart|rx_bit_cnt[2]~14\);

-- Location: LCFF_X34_Y25_N9
\i_serial_uart|rx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[2]~13_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(2));

-- Location: LCCOMB_X34_Y25_N12
\i_serial_uart|rx_bit_cnt[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[4]~17_combout\ = (\i_serial_uart|rx_bit_cnt\(4) & (\i_serial_uart|rx_bit_cnt[3]~16\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(4) & (!\i_serial_uart|rx_bit_cnt[3]~16\ & VCC))
-- \i_serial_uart|rx_bit_cnt[4]~18\ = CARRY((\i_serial_uart|rx_bit_cnt\(4) & !\i_serial_uart|rx_bit_cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(4),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[3]~16\,
	combout => \i_serial_uart|rx_bit_cnt[4]~17_combout\,
	cout => \i_serial_uart|rx_bit_cnt[4]~18\);

-- Location: LCCOMB_X34_Y25_N14
\i_serial_uart|rx_bit_cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[5]~20_combout\ = (\i_serial_uart|rx_bit_cnt\(5) & (!\i_serial_uart|rx_bit_cnt[4]~18\)) # (!\i_serial_uart|rx_bit_cnt\(5) & ((\i_serial_uart|rx_bit_cnt[4]~18\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[5]~21\ = CARRY((!\i_serial_uart|rx_bit_cnt[4]~18\) # (!\i_serial_uart|rx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(5),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[4]~18\,
	combout => \i_serial_uart|rx_bit_cnt[5]~20_combout\,
	cout => \i_serial_uart|rx_bit_cnt[5]~21\);

-- Location: LCFF_X34_Y25_N15
\i_serial_uart|rx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[5]~20_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(5));

-- Location: LCCOMB_X34_Y25_N16
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

-- Location: LCCOMB_X34_Y25_N18
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

-- Location: LCFF_X34_Y25_N19
\i_serial_uart|rx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[7]~24_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(7));

-- Location: LCFF_X34_Y25_N13
\i_serial_uart|rx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[4]~17_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(4));

-- Location: LCCOMB_X34_Y25_N22
\i_serial_uart|rx_bit_cnt_half~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~0_combout\ = (\i_serial_uart|rx_bit_cnt\(7) & ((\i_serial_uart|rx_bit_cnt\(5)) # ((\i_serial_uart|rx_bit_cnt\(3) & \i_serial_uart|rx_bit_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(3),
	datab => \i_serial_uart|rx_bit_cnt\(7),
	datac => \i_serial_uart|rx_bit_cnt\(5),
	datad => \i_serial_uart|rx_bit_cnt\(4),
	combout => \i_serial_uart|rx_bit_cnt_half~0_combout\);

-- Location: LCCOMB_X34_Y25_N20
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

-- Location: LCFF_X34_Y25_N21
\i_serial_uart|rx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[8]~26_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(8));

-- Location: LCCOMB_X34_Y25_N28
\i_serial_uart|rx_bit_cnt_half~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~1_combout\ = (\i_serial_uart|rx_bit_cnt_en~regout\ & ((\i_serial_uart|rx_bit_cnt\(8)) # ((\i_serial_uart|rx_bit_cnt\(6) & \i_serial_uart|rx_bit_cnt_half~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(6),
	datab => \i_serial_uart|rx_bit_cnt_half~0_combout\,
	datac => \i_serial_uart|rx_bit_cnt\(8),
	datad => \i_serial_uart|rx_bit_cnt_en~regout\,
	combout => \i_serial_uart|rx_bit_cnt_half~1_combout\);

-- Location: LCFF_X34_Y25_N29
\i_serial_uart|rx_bit_cnt_half\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_half~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_half~regout\);

-- Location: LCCOMB_X35_Y25_N18
\i_serial_uart|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector2~1_combout\ = (\i_serial_uart|Selector2~0_combout\) # ((\i_serial_uart|rx_state.s_rx_data~regout\ & ((!\i_serial_uart|rx_bit_cnt_wrap~regout\) # (!\i_serial_uart|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector2~0_combout\,
	datab => \i_serial_uart|Equal0~0_combout\,
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector2~1_combout\);

-- Location: LCFF_X35_Y25_N19
\i_serial_uart|rx_state.s_rx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector2~1_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_rx_data~regout\);

-- Location: LCCOMB_X36_Y25_N22
\i_serial_uart|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector14~0_combout\ = (\i_serial_uart|rx_bit_no\(0) & ((\i_serial_uart|rx_state.s_stop_bit~regout\) # ((\i_serial_uart|rx_bit_no~0_combout\ & \i_serial_uart|rx_state.s_rx_data~regout\)))) # (!\i_serial_uart|rx_bit_no\(0) & 
-- (!\i_serial_uart|rx_bit_no~0_combout\ & ((\i_serial_uart|rx_state.s_rx_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no~0_combout\,
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector14~0_combout\);

-- Location: LCFF_X36_Y25_N23
\i_serial_uart|rx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(0));

-- Location: LCCOMB_X36_Y25_N4
\i_serial_uart|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector12~1_combout\ = (\i_serial_uart|Selector12~0_combout\) # ((\i_serial_uart|rx_bit_no\(2) & ((\i_serial_uart|rx_state.s_rx_data~regout\) # (\i_serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector12~0_combout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_no\(2),
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector12~1_combout\);

-- Location: LCFF_X36_Y25_N5
\i_serial_uart|rx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(2));

-- Location: LCCOMB_X36_Y25_N10
\i_serial_uart|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Equal0~0_combout\ = (\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_no\(0) & \i_serial_uart|rx_bit_no\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|rx_bit_no\(2),
	combout => \i_serial_uart|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y25_N16
\i_serial_uart|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector4~3_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & (\i_serial_uart|rx_state.s_rx_data~regout\ & (\i_serial_uart|Equal0~0_combout\))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & 
-- (((\i_serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_rx_data~regout\,
	datab => \i_serial_uart|Equal0~0_combout\,
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector4~3_combout\);

-- Location: LCFF_X35_Y25_N17
\i_serial_uart|rx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector4~3_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X35_Y25_N8
\i_serial_uart|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector1~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_stop_bit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector1~0_combout\);

-- Location: LCCOMB_X35_Y25_N30
\i_serial_uart|rx_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_state~10_combout\ = (!\i_serial_uart|Selector1~0_combout\ & (!\i_serial_uart|reset_2r~regout\ & ((\i_serial_uart|rx_bit_cnt_half~regout\) # (\i_serial_uart|rx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector1~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt_half~regout\,
	datac => \i_serial_uart|rx_state.s_idle~regout\,
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|rx_state~10_combout\);

-- Location: LCFF_X35_Y25_N31
\i_serial_uart|rx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_idle~regout\);

-- Location: LCCOMB_X35_Y25_N4
\i_serial_uart|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector0~0_combout\ = (!\i_serial_uart|Selector1~0_combout\ & ((\i_serial_uart|rx_state.s_idle~regout\) # ((!\i_serial_uart|rx_2r~regout\ & !\i_serial_uart|rx_bit_cnt_half~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datab => \i_serial_uart|rx_bit_cnt_half~regout\,
	datac => \i_serial_uart|Selector1~0_combout\,
	datad => \i_serial_uart|rx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector0~0_combout\);

-- Location: LCFF_X35_Y25_N5
\i_serial_uart|rx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_en~regout\);

-- Location: LCCOMB_X34_Y25_N26
\i_serial_uart|rx_bit_cnt[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[0]~19_combout\ = (!\i_serial_uart|rx_bit_cnt_en~regout\) # (!\i_serial_uart|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|LessThan0~2_combout\,
	datad => \i_serial_uart|rx_bit_cnt_en~regout\,
	combout => \i_serial_uart|rx_bit_cnt[0]~19_combout\);

-- Location: LCFF_X34_Y25_N5
\i_serial_uart|rx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[0]~9_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(0));

-- Location: LCFF_X34_Y25_N7
\i_serial_uart|rx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[1]~11_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(1));

-- Location: LCCOMB_X34_Y25_N30
\i_serial_uart|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~1_combout\ = (!\i_serial_uart|rx_bit_cnt\(3) & (!\i_serial_uart|rx_bit_cnt\(0) & (!\i_serial_uart|rx_bit_cnt\(2) & !\i_serial_uart|rx_bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(3),
	datab => \i_serial_uart|rx_bit_cnt\(0),
	datac => \i_serial_uart|rx_bit_cnt\(2),
	datad => \i_serial_uart|rx_bit_cnt\(1),
	combout => \i_serial_uart|LessThan0~1_combout\);

-- Location: LCFF_X34_Y25_N17
\i_serial_uart|rx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[6]~22_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(6));

-- Location: LCCOMB_X34_Y25_N2
\i_serial_uart|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~0_combout\ = ((!\i_serial_uart|rx_bit_cnt\(6) & ((!\i_serial_uart|rx_bit_cnt\(5)) # (!\i_serial_uart|rx_bit_cnt\(4))))) # (!\i_serial_uart|rx_bit_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(4),
	datab => \i_serial_uart|rx_bit_cnt\(5),
	datac => \i_serial_uart|rx_bit_cnt\(6),
	datad => \i_serial_uart|rx_bit_cnt\(7),
	combout => \i_serial_uart|LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y25_N0
\i_serial_uart|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~2_combout\ = ((\i_serial_uart|LessThan0~0_combout\) # ((!\i_serial_uart|rx_bit_cnt\(6) & \i_serial_uart|LessThan0~1_combout\))) # (!\i_serial_uart|rx_bit_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(6),
	datab => \i_serial_uart|LessThan0~1_combout\,
	datac => \i_serial_uart|rx_bit_cnt\(8),
	datad => \i_serial_uart|LessThan0~0_combout\,
	combout => \i_serial_uart|LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y25_N24
\i_serial_uart|rx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_wrap~0_combout\ = (!\i_serial_uart|LessThan0~2_combout\ & \i_serial_uart|rx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|LessThan0~2_combout\,
	datad => \i_serial_uart|rx_bit_cnt_en~regout\,
	combout => \i_serial_uart|rx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X34_Y25_N25
\i_serial_uart|rx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_wrap~regout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y26_N2
\i_serial_uart|rx_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_r~feeder_combout\ = \fpga_in_rx~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fpga_in_rx~combout\,
	combout => \i_serial_uart|rx_r~feeder_combout\);

-- Location: LCFF_X35_Y26_N3
\i_serial_uart|rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_r~regout\);

-- Location: LCCOMB_X35_Y26_N24
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

-- Location: LCFF_X35_Y26_N25
\i_serial_uart|rx_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_2r~regout\);

-- Location: LCFF_X37_Y25_N9
\i_serial_uart|received_error~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_error~0_combout\,
	sclr => \i_serial_uart|reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_error~_Duplicate_1_regout\);

-- Location: LCCOMB_X37_Y25_N8
\i_serial_uart|received_error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_error~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & ((\i_serial_uart|rx_state.s_stop_bit~regout\ & (!\i_serial_uart|rx_2r~regout\)) # (!\i_serial_uart|rx_state.s_stop_bit~regout\ & 
-- ((\i_serial_uart|received_error~_Duplicate_1_regout\))))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & (((\i_serial_uart|received_error~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|rx_2r~regout\,
	datac => \i_serial_uart|received_error~_Duplicate_1_regout\,
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|received_error~0_combout\);

-- Location: LCCOMB_X39_Y25_N0
\i_pwm_ctrl|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~0_combout\ = \i_pwm_ctrl|one_ms_cnt\(0) $ (VCC)
-- \i_pwm_ctrl|Add0~1\ = CARRY(\i_pwm_ctrl|one_ms_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(0),
	datad => VCC,
	combout => \i_pwm_ctrl|Add0~0_combout\,
	cout => \i_pwm_ctrl|Add0~1\);

-- Location: LCCOMB_X39_Y25_N8
\i_pwm_ctrl|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~8_combout\ = (\i_pwm_ctrl|one_ms_cnt\(4) & (\i_pwm_ctrl|Add0~7\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(4) & (!\i_pwm_ctrl|Add0~7\ & VCC))
-- \i_pwm_ctrl|Add0~9\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(4) & !\i_pwm_ctrl|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~7\,
	combout => \i_pwm_ctrl|Add0~8_combout\,
	cout => \i_pwm_ctrl|Add0~9\);

-- Location: LCCOMB_X38_Y25_N8
\i_pwm_ctrl|one_ms_cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt~5_combout\ = (\i_pwm_ctrl|Add0~8_combout\ & !\i_pwm_ctrl|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl|Add0~8_combout\,
	datad => \i_pwm_ctrl|Equal0~4_combout\,
	combout => \i_pwm_ctrl|one_ms_cnt~5_combout\);

-- Location: LCFF_X38_Y25_N9
\i_pwm_ctrl|one_ms_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~5_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(4));

-- Location: LCCOMB_X39_Y25_N12
\i_pwm_ctrl|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~12_combout\ = (\i_pwm_ctrl|one_ms_cnt\(6) & (\i_pwm_ctrl|Add0~11\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(6) & (!\i_pwm_ctrl|Add0~11\ & VCC))
-- \i_pwm_ctrl|Add0~13\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(6) & !\i_pwm_ctrl|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(6),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~11\,
	combout => \i_pwm_ctrl|Add0~12_combout\,
	cout => \i_pwm_ctrl|Add0~13\);

-- Location: LCCOMB_X38_Y25_N14
\i_pwm_ctrl|one_ms_cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt~4_combout\ = (\i_pwm_ctrl|Add0~12_combout\ & !\i_pwm_ctrl|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl|Add0~12_combout\,
	datad => \i_pwm_ctrl|Equal0~4_combout\,
	combout => \i_pwm_ctrl|one_ms_cnt~4_combout\);

-- Location: LCFF_X38_Y25_N15
\i_pwm_ctrl|one_ms_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~4_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(6));

-- Location: LCCOMB_X39_Y25_N10
\i_pwm_ctrl|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~10_combout\ = (\i_pwm_ctrl|one_ms_cnt\(5) & (!\i_pwm_ctrl|Add0~9\)) # (!\i_pwm_ctrl|one_ms_cnt\(5) & ((\i_pwm_ctrl|Add0~9\) # (GND)))
-- \i_pwm_ctrl|Add0~11\ = CARRY((!\i_pwm_ctrl|Add0~9\) # (!\i_pwm_ctrl|one_ms_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(5),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~9\,
	combout => \i_pwm_ctrl|Add0~10_combout\,
	cout => \i_pwm_ctrl|Add0~11\);

-- Location: LCFF_X39_Y25_N11
\i_pwm_ctrl|one_ms_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~10_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(5));

-- Location: LCCOMB_X38_Y25_N30
\i_pwm_ctrl|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~2_combout\ = (!\i_pwm_ctrl|one_ms_cnt\(7) & (\i_pwm_ctrl|one_ms_cnt\(4) & (\i_pwm_ctrl|one_ms_cnt\(6) & !\i_pwm_ctrl|one_ms_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(7),
	datab => \i_pwm_ctrl|one_ms_cnt\(4),
	datac => \i_pwm_ctrl|one_ms_cnt\(6),
	datad => \i_pwm_ctrl|one_ms_cnt\(5),
	combout => \i_pwm_ctrl|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y25_N24
\i_pwm_ctrl|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~3_combout\ = (!\i_pwm_ctrl|one_ms_cnt\(3) & (!\i_pwm_ctrl|one_ms_cnt\(0) & (!\i_pwm_ctrl|one_ms_cnt\(2) & !\i_pwm_ctrl|one_ms_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(3),
	datab => \i_pwm_ctrl|one_ms_cnt\(0),
	datac => \i_pwm_ctrl|one_ms_cnt\(2),
	datad => \i_pwm_ctrl|one_ms_cnt\(1),
	combout => \i_pwm_ctrl|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y25_N20
\i_pwm_ctrl|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~20_combout\ = (\i_pwm_ctrl|one_ms_cnt\(10) & (\i_pwm_ctrl|Add0~19\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(10) & (!\i_pwm_ctrl|Add0~19\ & VCC))
-- \i_pwm_ctrl|Add0~21\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(10) & !\i_pwm_ctrl|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(10),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~19\,
	combout => \i_pwm_ctrl|Add0~20_combout\,
	cout => \i_pwm_ctrl|Add0~21\);

-- Location: LCFF_X39_Y25_N21
\i_pwm_ctrl|one_ms_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~20_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(10));

-- Location: LCCOMB_X40_Y25_N2
\i_pwm_ctrl|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~1_combout\ = (\i_pwm_ctrl|one_ms_cnt\(8) & (!\i_pwm_ctrl|one_ms_cnt\(10) & (!\i_pwm_ctrl|one_ms_cnt\(11) & \i_pwm_ctrl|one_ms_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(8),
	datab => \i_pwm_ctrl|one_ms_cnt\(10),
	datac => \i_pwm_ctrl|one_ms_cnt\(11),
	datad => \i_pwm_ctrl|one_ms_cnt\(9),
	combout => \i_pwm_ctrl|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y25_N10
\i_pwm_ctrl|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~4_combout\ = (\i_pwm_ctrl|Equal0~0_combout\ & (\i_pwm_ctrl|Equal0~2_combout\ & (\i_pwm_ctrl|Equal0~3_combout\ & \i_pwm_ctrl|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Equal0~0_combout\,
	datab => \i_pwm_ctrl|Equal0~2_combout\,
	datac => \i_pwm_ctrl|Equal0~3_combout\,
	datad => \i_pwm_ctrl|Equal0~1_combout\,
	combout => \i_pwm_ctrl|Equal0~4_combout\);

-- Location: LCCOMB_X38_Y25_N26
\i_pwm_ctrl|one_ms_cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt~6_combout\ = (\i_pwm_ctrl|Add0~0_combout\ & !\i_pwm_ctrl|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl|Add0~0_combout\,
	datad => \i_pwm_ctrl|Equal0~4_combout\,
	combout => \i_pwm_ctrl|one_ms_cnt~6_combout\);

-- Location: LCFF_X38_Y25_N27
\i_pwm_ctrl|one_ms_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~6_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(0));

-- Location: LCCOMB_X39_Y25_N2
\i_pwm_ctrl|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~2_combout\ = (\i_pwm_ctrl|one_ms_cnt\(1) & (!\i_pwm_ctrl|Add0~1\)) # (!\i_pwm_ctrl|one_ms_cnt\(1) & ((\i_pwm_ctrl|Add0~1\) # (GND)))
-- \i_pwm_ctrl|Add0~3\ = CARRY((!\i_pwm_ctrl|Add0~1\) # (!\i_pwm_ctrl|one_ms_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(1),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~1\,
	combout => \i_pwm_ctrl|Add0~2_combout\,
	cout => \i_pwm_ctrl|Add0~3\);

-- Location: LCFF_X39_Y25_N3
\i_pwm_ctrl|one_ms_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(1));

-- Location: LCCOMB_X39_Y25_N4
\i_pwm_ctrl|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~4_combout\ = (\i_pwm_ctrl|one_ms_cnt\(2) & (\i_pwm_ctrl|Add0~3\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(2) & (!\i_pwm_ctrl|Add0~3\ & VCC))
-- \i_pwm_ctrl|Add0~5\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(2) & !\i_pwm_ctrl|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(2),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~3\,
	combout => \i_pwm_ctrl|Add0~4_combout\,
	cout => \i_pwm_ctrl|Add0~5\);

-- Location: LCFF_X39_Y25_N5
\i_pwm_ctrl|one_ms_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~4_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(2));

-- Location: LCCOMB_X39_Y25_N14
\i_pwm_ctrl|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~14_combout\ = (\i_pwm_ctrl|one_ms_cnt\(7) & (!\i_pwm_ctrl|Add0~13\)) # (!\i_pwm_ctrl|one_ms_cnt\(7) & ((\i_pwm_ctrl|Add0~13\) # (GND)))
-- \i_pwm_ctrl|Add0~15\ = CARRY((!\i_pwm_ctrl|Add0~13\) # (!\i_pwm_ctrl|one_ms_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(7),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~13\,
	combout => \i_pwm_ctrl|Add0~14_combout\,
	cout => \i_pwm_ctrl|Add0~15\);

-- Location: LCFF_X39_Y25_N15
\i_pwm_ctrl|one_ms_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~14_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(7));

-- Location: LCCOMB_X39_Y25_N16
\i_pwm_ctrl|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~16_combout\ = (\i_pwm_ctrl|one_ms_cnt\(8) & (\i_pwm_ctrl|Add0~15\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(8) & (!\i_pwm_ctrl|Add0~15\ & VCC))
-- \i_pwm_ctrl|Add0~17\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(8) & !\i_pwm_ctrl|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(8),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~15\,
	combout => \i_pwm_ctrl|Add0~16_combout\,
	cout => \i_pwm_ctrl|Add0~17\);

-- Location: LCCOMB_X38_Y25_N20
\i_pwm_ctrl|one_ms_cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt~3_combout\ = (\i_pwm_ctrl|Add0~16_combout\ & !\i_pwm_ctrl|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl|Add0~16_combout\,
	datad => \i_pwm_ctrl|Equal0~4_combout\,
	combout => \i_pwm_ctrl|one_ms_cnt~3_combout\);

-- Location: LCFF_X38_Y25_N21
\i_pwm_ctrl|one_ms_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~3_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(8));

-- Location: LCCOMB_X39_Y25_N18
\i_pwm_ctrl|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~18_combout\ = (\i_pwm_ctrl|one_ms_cnt\(9) & (!\i_pwm_ctrl|Add0~17\)) # (!\i_pwm_ctrl|one_ms_cnt\(9) & ((\i_pwm_ctrl|Add0~17\) # (GND)))
-- \i_pwm_ctrl|Add0~19\ = CARRY((!\i_pwm_ctrl|Add0~17\) # (!\i_pwm_ctrl|one_ms_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(9),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~17\,
	combout => \i_pwm_ctrl|Add0~18_combout\,
	cout => \i_pwm_ctrl|Add0~19\);

-- Location: LCCOMB_X40_Y25_N0
\i_pwm_ctrl|one_ms_cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt~2_combout\ = (!\i_pwm_ctrl|Equal0~4_combout\ & \i_pwm_ctrl|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Equal0~4_combout\,
	datad => \i_pwm_ctrl|Add0~18_combout\,
	combout => \i_pwm_ctrl|one_ms_cnt~2_combout\);

-- Location: LCFF_X40_Y25_N1
\i_pwm_ctrl|one_ms_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(9));

-- Location: LCCOMB_X39_Y25_N22
\i_pwm_ctrl|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~22_combout\ = (\i_pwm_ctrl|one_ms_cnt\(11) & (!\i_pwm_ctrl|Add0~21\)) # (!\i_pwm_ctrl|one_ms_cnt\(11) & ((\i_pwm_ctrl|Add0~21\) # (GND)))
-- \i_pwm_ctrl|Add0~23\ = CARRY((!\i_pwm_ctrl|Add0~21\) # (!\i_pwm_ctrl|one_ms_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(11),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~21\,
	combout => \i_pwm_ctrl|Add0~22_combout\,
	cout => \i_pwm_ctrl|Add0~23\);

-- Location: LCFF_X39_Y25_N23
\i_pwm_ctrl|one_ms_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~22_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(11));

-- Location: LCCOMB_X39_Y25_N24
\i_pwm_ctrl|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~24_combout\ = (\i_pwm_ctrl|one_ms_cnt\(12) & (\i_pwm_ctrl|Add0~23\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(12) & (!\i_pwm_ctrl|Add0~23\ & VCC))
-- \i_pwm_ctrl|Add0~25\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(12) & !\i_pwm_ctrl|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(12),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~23\,
	combout => \i_pwm_ctrl|Add0~24_combout\,
	cout => \i_pwm_ctrl|Add0~25\);

-- Location: LCCOMB_X39_Y25_N26
\i_pwm_ctrl|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~26_combout\ = (\i_pwm_ctrl|one_ms_cnt\(13) & (!\i_pwm_ctrl|Add0~25\)) # (!\i_pwm_ctrl|one_ms_cnt\(13) & ((\i_pwm_ctrl|Add0~25\) # (GND)))
-- \i_pwm_ctrl|Add0~27\ = CARRY((!\i_pwm_ctrl|Add0~25\) # (!\i_pwm_ctrl|one_ms_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(13),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~25\,
	combout => \i_pwm_ctrl|Add0~26_combout\,
	cout => \i_pwm_ctrl|Add0~27\);

-- Location: LCFF_X39_Y25_N27
\i_pwm_ctrl|one_ms_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~26_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(13));

-- Location: LCCOMB_X39_Y25_N30
\i_pwm_ctrl|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~30_combout\ = \i_pwm_ctrl|one_ms_cnt\(15) $ (\i_pwm_ctrl|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(15),
	cin => \i_pwm_ctrl|Add0~29\,
	combout => \i_pwm_ctrl|Add0~30_combout\);

-- Location: LCCOMB_X38_Y25_N0
\i_pwm_ctrl|one_ms_cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt~0_combout\ = (!\i_pwm_ctrl|Equal0~4_combout\ & \i_pwm_ctrl|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Equal0~4_combout\,
	datad => \i_pwm_ctrl|Add0~30_combout\,
	combout => \i_pwm_ctrl|one_ms_cnt~0_combout\);

-- Location: LCFF_X38_Y25_N1
\i_pwm_ctrl|one_ms_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(15));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y23_N24
\i_key_ctrl|key_off_n_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_off_n_r~feeder_combout\ = \key_n~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(0),
	combout => \i_key_ctrl|key_off_n_r~feeder_combout\);

-- Location: LCFF_X37_Y23_N25
\i_key_ctrl|key_off_n_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_off_n_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_off_n_r~regout\);

-- Location: LCFF_X37_Y23_N15
\i_key_ctrl|key_off_n_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_key_ctrl|key_off_n_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_off_n_2r~regout\);

-- Location: LCCOMB_X36_Y24_N14
\i_key_ctrl|ten_ms_on_cnt[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[0]~21_combout\ = \i_key_ctrl|ten_ms_on_cnt\(0) $ (VCC)
-- \i_key_ctrl|ten_ms_on_cnt[0]~22\ = CARRY(\i_key_ctrl|ten_ms_on_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(0),
	datad => VCC,
	combout => \i_key_ctrl|ten_ms_on_cnt[0]~21_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[0]~22\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y23_N20
\i_key_ctrl|key_on_n_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_on_n_r~feeder_combout\ = \key_n~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(1),
	combout => \i_key_ctrl|key_on_n_r~feeder_combout\);

-- Location: LCFF_X37_Y23_N21
\i_key_ctrl|key_on_n_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_on_n_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_on_n_r~regout\);

-- Location: LCFF_X37_Y23_N31
\i_key_ctrl|key_on_n_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_key_ctrl|key_on_n_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_on_n_2r~regout\);

-- Location: LCCOMB_X36_Y23_N16
\i_key_ctrl|ten_ms_on_cnt[17]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[17]~55_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(17) & (!\i_key_ctrl|ten_ms_on_cnt[16]~54\)) # (!\i_key_ctrl|ten_ms_on_cnt\(17) & ((\i_key_ctrl|ten_ms_on_cnt[16]~54\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[17]~56\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[16]~54\) # (!\i_key_ctrl|ten_ms_on_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(17),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[16]~54\,
	combout => \i_key_ctrl|ten_ms_on_cnt[17]~55_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[17]~56\);

-- Location: LCFF_X36_Y23_N17
\i_key_ctrl|ten_ms_on_cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[17]~55_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(17));

-- Location: LCCOMB_X37_Y23_N30
\i_key_ctrl|ten_ms_on_cnt[18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\ = (\i_key_ctrl|key_on_n_2r~regout\) # ((!\i_key_ctrl|LessThan1~4_combout\ & (\i_key_ctrl|ten_ms_on_cnt\(18) & \i_key_ctrl|ten_ms_on_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|LessThan1~4_combout\,
	datab => \i_key_ctrl|ten_ms_on_cnt\(18),
	datac => \i_key_ctrl|key_on_n_2r~regout\,
	datad => \i_key_ctrl|ten_ms_on_cnt\(17),
	combout => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\);

-- Location: LCFF_X36_Y24_N15
\i_key_ctrl|ten_ms_on_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[0]~21_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(0));

-- Location: LCCOMB_X36_Y24_N18
\i_key_ctrl|ten_ms_on_cnt[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[2]~25_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(2) & (\i_key_ctrl|ten_ms_on_cnt[1]~24\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(2) & (!\i_key_ctrl|ten_ms_on_cnt[1]~24\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[2]~26\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(2) & !\i_key_ctrl|ten_ms_on_cnt[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(2),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[1]~24\,
	combout => \i_key_ctrl|ten_ms_on_cnt[2]~25_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[2]~26\);

-- Location: LCFF_X36_Y24_N19
\i_key_ctrl|ten_ms_on_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[2]~25_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(2));

-- Location: LCCOMB_X36_Y24_N22
\i_key_ctrl|ten_ms_on_cnt[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[4]~29_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(4) & (\i_key_ctrl|ten_ms_on_cnt[3]~28\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(4) & (!\i_key_ctrl|ten_ms_on_cnt[3]~28\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[4]~30\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(4) & !\i_key_ctrl|ten_ms_on_cnt[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(4),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[3]~28\,
	combout => \i_key_ctrl|ten_ms_on_cnt[4]~29_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[4]~30\);

-- Location: LCFF_X36_Y24_N23
\i_key_ctrl|ten_ms_on_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[4]~29_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(4));

-- Location: LCCOMB_X36_Y24_N24
\i_key_ctrl|ten_ms_on_cnt[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[5]~31_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(5) & (!\i_key_ctrl|ten_ms_on_cnt[4]~30\)) # (!\i_key_ctrl|ten_ms_on_cnt\(5) & ((\i_key_ctrl|ten_ms_on_cnt[4]~30\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[5]~32\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[4]~30\) # (!\i_key_ctrl|ten_ms_on_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(5),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[4]~30\,
	combout => \i_key_ctrl|ten_ms_on_cnt[5]~31_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[5]~32\);

-- Location: LCCOMB_X36_Y24_N26
\i_key_ctrl|ten_ms_on_cnt[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[6]~33_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(6) & (\i_key_ctrl|ten_ms_on_cnt[5]~32\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(6) & (!\i_key_ctrl|ten_ms_on_cnt[5]~32\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[6]~34\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(6) & !\i_key_ctrl|ten_ms_on_cnt[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(6),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[5]~32\,
	combout => \i_key_ctrl|ten_ms_on_cnt[6]~33_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[6]~34\);

-- Location: LCFF_X36_Y24_N27
\i_key_ctrl|ten_ms_on_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[6]~33_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(6));

-- Location: LCCOMB_X36_Y24_N28
\i_key_ctrl|ten_ms_on_cnt[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[7]~35_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(7) & (!\i_key_ctrl|ten_ms_on_cnt[6]~34\)) # (!\i_key_ctrl|ten_ms_on_cnt\(7) & ((\i_key_ctrl|ten_ms_on_cnt[6]~34\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[7]~36\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[6]~34\) # (!\i_key_ctrl|ten_ms_on_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(7),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[6]~34\,
	combout => \i_key_ctrl|ten_ms_on_cnt[7]~35_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[7]~36\);

-- Location: LCFF_X36_Y24_N29
\i_key_ctrl|ten_ms_on_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[7]~35_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(7));

-- Location: LCCOMB_X36_Y24_N30
\i_key_ctrl|ten_ms_on_cnt[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[8]~37_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(8) & (\i_key_ctrl|ten_ms_on_cnt[7]~36\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(8) & (!\i_key_ctrl|ten_ms_on_cnt[7]~36\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[8]~38\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(8) & !\i_key_ctrl|ten_ms_on_cnt[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(8),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[7]~36\,
	combout => \i_key_ctrl|ten_ms_on_cnt[8]~37_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[8]~38\);

-- Location: LCFF_X36_Y24_N31
\i_key_ctrl|ten_ms_on_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[8]~37_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(8));

-- Location: LCCOMB_X36_Y23_N0
\i_key_ctrl|ten_ms_on_cnt[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[9]~39_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(9) & (!\i_key_ctrl|ten_ms_on_cnt[8]~38\)) # (!\i_key_ctrl|ten_ms_on_cnt\(9) & ((\i_key_ctrl|ten_ms_on_cnt[8]~38\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[9]~40\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[8]~38\) # (!\i_key_ctrl|ten_ms_on_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(9),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[8]~38\,
	combout => \i_key_ctrl|ten_ms_on_cnt[9]~39_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[9]~40\);

-- Location: LCFF_X36_Y23_N1
\i_key_ctrl|ten_ms_on_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[9]~39_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(9));

-- Location: LCCOMB_X36_Y23_N2
\i_key_ctrl|ten_ms_on_cnt[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[10]~41_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(10) & (\i_key_ctrl|ten_ms_on_cnt[9]~40\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(10) & (!\i_key_ctrl|ten_ms_on_cnt[9]~40\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[10]~42\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(10) & !\i_key_ctrl|ten_ms_on_cnt[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(10),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[9]~40\,
	combout => \i_key_ctrl|ten_ms_on_cnt[10]~41_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[10]~42\);

-- Location: LCFF_X36_Y23_N3
\i_key_ctrl|ten_ms_on_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[10]~41_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(10));

-- Location: LCCOMB_X36_Y23_N4
\i_key_ctrl|ten_ms_on_cnt[11]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[11]~43_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(11) & (!\i_key_ctrl|ten_ms_on_cnt[10]~42\)) # (!\i_key_ctrl|ten_ms_on_cnt\(11) & ((\i_key_ctrl|ten_ms_on_cnt[10]~42\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[11]~44\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[10]~42\) # (!\i_key_ctrl|ten_ms_on_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(11),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[10]~42\,
	combout => \i_key_ctrl|ten_ms_on_cnt[11]~43_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[11]~44\);

-- Location: LCFF_X36_Y23_N5
\i_key_ctrl|ten_ms_on_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[11]~43_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(11));

-- Location: LCCOMB_X36_Y23_N8
\i_key_ctrl|ten_ms_on_cnt[13]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[13]~47_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(13) & (!\i_key_ctrl|ten_ms_on_cnt[12]~46\)) # (!\i_key_ctrl|ten_ms_on_cnt\(13) & ((\i_key_ctrl|ten_ms_on_cnt[12]~46\) # (GND)))
-- \i_key_ctrl|ten_ms_on_cnt[13]~48\ = CARRY((!\i_key_ctrl|ten_ms_on_cnt[12]~46\) # (!\i_key_ctrl|ten_ms_on_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(13),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[12]~46\,
	combout => \i_key_ctrl|ten_ms_on_cnt[13]~47_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[13]~48\);

-- Location: LCFF_X36_Y23_N9
\i_key_ctrl|ten_ms_on_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[13]~47_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(13));

-- Location: LCCOMB_X36_Y23_N10
\i_key_ctrl|ten_ms_on_cnt[14]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[14]~49_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(14) & (\i_key_ctrl|ten_ms_on_cnt[13]~48\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(14) & (!\i_key_ctrl|ten_ms_on_cnt[13]~48\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[14]~50\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(14) & !\i_key_ctrl|ten_ms_on_cnt[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(14),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[13]~48\,
	combout => \i_key_ctrl|ten_ms_on_cnt[14]~49_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[14]~50\);

-- Location: LCCOMB_X36_Y23_N14
\i_key_ctrl|ten_ms_on_cnt[16]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[16]~53_combout\ = (\i_key_ctrl|ten_ms_on_cnt\(16) & (\i_key_ctrl|ten_ms_on_cnt[15]~52\ $ (GND))) # (!\i_key_ctrl|ten_ms_on_cnt\(16) & (!\i_key_ctrl|ten_ms_on_cnt[15]~52\ & VCC))
-- \i_key_ctrl|ten_ms_on_cnt[16]~54\ = CARRY((\i_key_ctrl|ten_ms_on_cnt\(16) & !\i_key_ctrl|ten_ms_on_cnt[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(16),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_on_cnt[15]~52\,
	combout => \i_key_ctrl|ten_ms_on_cnt[16]~53_combout\,
	cout => \i_key_ctrl|ten_ms_on_cnt[16]~54\);

-- Location: LCFF_X36_Y23_N15
\i_key_ctrl|ten_ms_on_cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[16]~53_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(16));

-- Location: LCCOMB_X36_Y23_N18
\i_key_ctrl|ten_ms_on_cnt[18]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_on_cnt[18]~57_combout\ = \i_key_ctrl|ten_ms_on_cnt[17]~56\ $ (!\i_key_ctrl|ten_ms_on_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|ten_ms_on_cnt\(18),
	cin => \i_key_ctrl|ten_ms_on_cnt[17]~56\,
	combout => \i_key_ctrl|ten_ms_on_cnt[18]~57_combout\);

-- Location: LCFF_X36_Y23_N19
\i_key_ctrl|ten_ms_on_cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[18]~57_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(18));

-- Location: LCCOMB_X37_Y23_N16
\i_key_ctrl|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan1~0_combout\ = (!\i_key_ctrl|ten_ms_on_cnt\(17)) # (!\i_key_ctrl|ten_ms_on_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_on_cnt\(18),
	datad => \i_key_ctrl|ten_ms_on_cnt\(17),
	combout => \i_key_ctrl|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y23_N30
\i_key_ctrl|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan1~3_combout\ = (!\i_key_ctrl|ten_ms_on_cnt\(12) & (!\i_key_ctrl|ten_ms_on_cnt\(10) & (!\i_key_ctrl|ten_ms_on_cnt\(11) & !\i_key_ctrl|ten_ms_on_cnt\(9))))

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
	combout => \i_key_ctrl|LessThan1~3_combout\);

-- Location: LCFF_X36_Y24_N25
\i_key_ctrl|ten_ms_on_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[5]~31_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(5));

-- Location: LCCOMB_X36_Y24_N0
\i_key_ctrl|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan1~2_combout\ = ((!\i_key_ctrl|ten_ms_on_cnt\(7) & (!\i_key_ctrl|ten_ms_on_cnt\(6) & !\i_key_ctrl|ten_ms_on_cnt\(5)))) # (!\i_key_ctrl|ten_ms_on_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(7),
	datab => \i_key_ctrl|ten_ms_on_cnt\(6),
	datac => \i_key_ctrl|ten_ms_on_cnt\(5),
	datad => \i_key_ctrl|ten_ms_on_cnt\(8),
	combout => \i_key_ctrl|LessThan1~2_combout\);

-- Location: LCFF_X36_Y23_N11
\i_key_ctrl|ten_ms_on_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_on_cnt[14]~49_combout\,
	sclr => \i_key_ctrl|ten_ms_on_cnt[18]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_on_cnt\(14));

-- Location: LCCOMB_X36_Y23_N28
\i_key_ctrl|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan1~1_combout\ = (((!\i_key_ctrl|ten_ms_on_cnt\(13) & !\i_key_ctrl|ten_ms_on_cnt\(14))) # (!\i_key_ctrl|ten_ms_on_cnt\(16))) # (!\i_key_ctrl|ten_ms_on_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(15),
	datab => \i_key_ctrl|ten_ms_on_cnt\(16),
	datac => \i_key_ctrl|ten_ms_on_cnt\(13),
	datad => \i_key_ctrl|ten_ms_on_cnt\(14),
	combout => \i_key_ctrl|LessThan1~1_combout\);

-- Location: LCCOMB_X36_Y23_N24
\i_key_ctrl|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan1~4_combout\ = (\i_key_ctrl|LessThan1~1_combout\) # ((!\i_key_ctrl|ten_ms_on_cnt\(14) & (\i_key_ctrl|LessThan1~3_combout\ & \i_key_ctrl|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_on_cnt\(14),
	datab => \i_key_ctrl|LessThan1~3_combout\,
	datac => \i_key_ctrl|LessThan1~2_combout\,
	datad => \i_key_ctrl|LessThan1~1_combout\,
	combout => \i_key_ctrl|LessThan1~4_combout\);

-- Location: LCCOMB_X37_Y23_N28
\i_key_ctrl|key_on~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_on~0_combout\ = (\i_key_ctrl|key_in_states~regout\ & (((\i_key_ctrl|LessThan1~0_combout\) # (\i_key_ctrl|LessThan1~4_combout\)))) # (!\i_key_ctrl|key_in_states~regout\ & (!\i_key_ctrl|key_off_n_2r~regout\ & 
-- ((\i_key_ctrl|LessThan1~0_combout\) # (\i_key_ctrl|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_in_states~regout\,
	datab => \i_key_ctrl|key_off_n_2r~regout\,
	datac => \i_key_ctrl|LessThan1~0_combout\,
	datad => \i_key_ctrl|LessThan1~4_combout\,
	combout => \i_key_ctrl|key_on~0_combout\);

-- Location: LCCOMB_X37_Y23_N10
\i_key_ctrl|key_on~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_on~1_combout\ = (\i_key_ctrl|key_on~regout\ & (!\i_key_ctrl|key_in_states~regout\)) # (!\i_key_ctrl|key_on~regout\ & (((!\i_key_ctrl|key_on~0_combout\ & !\i_key_ctrl|key_on_n_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_in_states~regout\,
	datab => \i_key_ctrl|key_on~0_combout\,
	datac => \i_key_ctrl|key_on~regout\,
	datad => \i_key_ctrl|key_on_n_2r~regout\,
	combout => \i_key_ctrl|key_on~1_combout\);

-- Location: LCFF_X37_Y23_N11
\i_key_ctrl|key_on\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_on~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_on~regout\);

-- Location: LCCOMB_X35_Y25_N28
\i_serial_uart|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector10~0_combout\ = (\i_serial_uart|rx_state.s_stop_bit~regout\) # ((!\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_rx_data~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector10~0_combout\);

-- Location: LCCOMB_X36_Y25_N2
\i_serial_uart|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector4~2_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_rx_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector4~2_combout\);

-- Location: LCCOMB_X36_Y25_N26
\i_serial_uart|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector11~0_combout\ = (\i_serial_uart|rx_byte_int\(1) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|Selector10~0_combout\ & \i_serial_uart|rx_byte_int\(0))))) # (!\i_serial_uart|rx_byte_int\(1) & 
-- (\i_serial_uart|Selector10~0_combout\ & (\i_serial_uart|rx_byte_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(1),
	datab => \i_serial_uart|Selector10~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(0),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector11~0_combout\);

-- Location: LCFF_X36_Y25_N27
\i_serial_uart|rx_byte_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(0));

-- Location: LCCOMB_X36_Y25_N18
\i_serial_uart|received_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~2_combout\ = (\i_serial_uart|rx_byte_int\(0) & !\i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_byte_int\(0),
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~2_combout\);

-- Location: LCCOMB_X36_Y25_N8
\i_serial_uart|received_data[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data[4]~10_combout\ = (\i_serial_uart|reset_2r~regout\) # ((\i_serial_uart|rx_bit_cnt_wrap~regout\ & (\i_serial_uart|rx_state.s_rx_data~regout\ & \i_serial_uart|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|Equal0~0_combout\,
	combout => \i_serial_uart|received_data[4]~10_combout\);

-- Location: LCFF_X36_Y25_N19
\i_serial_uart|received_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~2_combout\,
	ena => \i_serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(0));

-- Location: LCCOMB_X35_Y25_N2
\i_serial_uart|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector6~0_combout\ = (\i_serial_uart|rx_byte_int\(6) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|Selector10~0_combout\ & \i_serial_uart|rx_byte_int\(5))))) # (!\i_serial_uart|rx_byte_int\(6) & 
-- (\i_serial_uart|Selector10~0_combout\ & (\i_serial_uart|rx_byte_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(6),
	datab => \i_serial_uart|Selector10~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(5),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector6~0_combout\);

-- Location: LCFF_X35_Y25_N3
\i_serial_uart|rx_byte_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(5));

-- Location: LCCOMB_X35_Y25_N26
\i_serial_uart|received_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~9_combout\ = (\i_serial_uart|rx_byte_int\(5) & !\i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_byte_int\(5),
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~9_combout\);

-- Location: LCFF_X35_Y25_N27
\i_serial_uart|received_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~9_combout\,
	ena => \i_serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(5));

-- Location: LCCOMB_X35_Y25_N0
\i_serial_uart|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector7~0_combout\ = (\i_serial_uart|Selector10~0_combout\ & ((\i_serial_uart|rx_byte_int\(4)) # ((\i_serial_uart|rx_byte_int\(5) & \i_serial_uart|Selector4~2_combout\)))) # (!\i_serial_uart|Selector10~0_combout\ & 
-- (\i_serial_uart|rx_byte_int\(5) & ((\i_serial_uart|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector10~0_combout\,
	datab => \i_serial_uart|rx_byte_int\(5),
	datac => \i_serial_uart|rx_byte_int\(4),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector7~0_combout\);

-- Location: LCFF_X35_Y25_N1
\i_serial_uart|rx_byte_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(4));

-- Location: LCCOMB_X35_Y25_N24
\i_serial_uart|received_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~8_combout\ = (\i_serial_uart|rx_byte_int\(4) & !\i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_byte_int\(4),
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~8_combout\);

-- Location: LCFF_X35_Y25_N25
\i_serial_uart|received_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~8_combout\,
	ena => \i_serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(4));

-- Location: LCCOMB_X35_Y25_N22
\i_serial_uart|received_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~7_combout\ = (\i_serial_uart|rx_byte_int\(6) & !\i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(6),
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~7_combout\);

-- Location: LCFF_X35_Y25_N23
\i_serial_uart|received_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~7_combout\,
	ena => \i_serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(6));

-- Location: LCCOMB_X37_Y25_N30
\i_serial_ctrl|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux1~1_combout\ = (\i_serial_ctrl|Mux1~0_combout\ & (!\i_serial_uart|received_data\(5) & (!\i_serial_uart|received_data\(4) & !\i_serial_uart|received_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_ctrl|Mux1~0_combout\,
	datab => \i_serial_uart|received_data\(5),
	datac => \i_serial_uart|received_data\(4),
	datad => \i_serial_uart|received_data\(6),
	combout => \i_serial_ctrl|Mux1~1_combout\);

-- Location: LCCOMB_X37_Y25_N18
\i_serial_ctrl|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux1~2_combout\ = (\i_serial_ctrl|serial_on_out~0_combout\ & ((\i_serial_ctrl|serial_on_out~regout\) # ((\i_serial_uart|received_data\(0) & \i_serial_ctrl|Mux1~1_combout\)))) # (!\i_serial_ctrl|serial_on_out~0_combout\ & 
-- (\i_serial_uart|received_data\(0) & ((\i_serial_ctrl|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_ctrl|serial_on_out~0_combout\,
	datab => \i_serial_uart|received_data\(0),
	datac => \i_serial_ctrl|serial_on_out~regout\,
	datad => \i_serial_ctrl|Mux1~1_combout\,
	combout => \i_serial_ctrl|Mux1~2_combout\);

-- Location: LCCOMB_X37_Y25_N26
\i_serial_uart|received_valid~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_valid~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & (\i_serial_uart|rx_2r~regout\ & \i_serial_uart|rx_state.s_stop_bit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|rx_2r~regout\,
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|received_valid~0_combout\);

-- Location: LCFF_X37_Y25_N27
\i_serial_uart|received_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_valid~regout\);

-- Location: LCFF_X37_Y25_N19
\i_serial_ctrl|serial_on_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_ctrl|Mux1~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_serial_uart|received_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_ctrl|serial_on_out~regout\);

-- Location: LCCOMB_X37_Y25_N28
\i_pwm_ctrl|p_pwm_state_machine~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|p_pwm_state_machine~0_combout\ = (\i_key_ctrl|key_on~regout\ & !\i_serial_ctrl|serial_on_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl|key_on~regout\,
	datad => \i_serial_ctrl|serial_on_out~regout\,
	combout => \i_pwm_ctrl|p_pwm_state_machine~0_combout\);

-- Location: LCCOMB_X38_Y24_N14
\i_key_ctrl|ten_ms_off_cnt[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[0]~21_combout\ = \i_key_ctrl|ten_ms_off_cnt\(0) $ (VCC)
-- \i_key_ctrl|ten_ms_off_cnt[0]~22\ = CARRY(\i_key_ctrl|ten_ms_off_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(0),
	datad => VCC,
	combout => \i_key_ctrl|ten_ms_off_cnt[0]~21_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[0]~22\);

-- Location: LCCOMB_X38_Y23_N10
\i_key_ctrl|ten_ms_off_cnt[14]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[14]~49_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(14) & (\i_key_ctrl|ten_ms_off_cnt[13]~48\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(14) & (!\i_key_ctrl|ten_ms_off_cnt[13]~48\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[14]~50\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(14) & !\i_key_ctrl|ten_ms_off_cnt[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(14),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[13]~48\,
	combout => \i_key_ctrl|ten_ms_off_cnt[14]~49_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[14]~50\);

-- Location: LCFF_X38_Y23_N11
\i_key_ctrl|ten_ms_off_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[14]~49_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(14));

-- Location: LCCOMB_X38_Y23_N22
\i_key_ctrl|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan0~0_combout\ = (((!\i_key_ctrl|ten_ms_off_cnt\(13) & !\i_key_ctrl|ten_ms_off_cnt\(14))) # (!\i_key_ctrl|ten_ms_off_cnt\(16))) # (!\i_key_ctrl|ten_ms_off_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(15),
	datab => \i_key_ctrl|ten_ms_off_cnt\(16),
	datac => \i_key_ctrl|ten_ms_off_cnt\(13),
	datad => \i_key_ctrl|ten_ms_off_cnt\(14),
	combout => \i_key_ctrl|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y24_N24
\i_key_ctrl|ten_ms_off_cnt[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[5]~31_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(5) & (!\i_key_ctrl|ten_ms_off_cnt[4]~30\)) # (!\i_key_ctrl|ten_ms_off_cnt\(5) & ((\i_key_ctrl|ten_ms_off_cnt[4]~30\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[5]~32\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[4]~30\) # (!\i_key_ctrl|ten_ms_off_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(5),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[4]~30\,
	combout => \i_key_ctrl|ten_ms_off_cnt[5]~31_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[5]~32\);

-- Location: LCFF_X38_Y24_N25
\i_key_ctrl|ten_ms_off_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[5]~31_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(5));

-- Location: LCCOMB_X38_Y24_N8
\i_key_ctrl|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan0~1_combout\ = ((!\i_key_ctrl|ten_ms_off_cnt\(7) & (!\i_key_ctrl|ten_ms_off_cnt\(5) & !\i_key_ctrl|ten_ms_off_cnt\(6)))) # (!\i_key_ctrl|ten_ms_off_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(8),
	datab => \i_key_ctrl|ten_ms_off_cnt\(7),
	datac => \i_key_ctrl|ten_ms_off_cnt\(5),
	datad => \i_key_ctrl|ten_ms_off_cnt\(6),
	combout => \i_key_ctrl|LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y23_N26
\i_key_ctrl|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan0~3_combout\ = (\i_key_ctrl|LessThan0~0_combout\) # ((\i_key_ctrl|LessThan0~2_combout\ & (\i_key_ctrl|LessThan0~1_combout\ & !\i_key_ctrl|ten_ms_off_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|LessThan0~2_combout\,
	datab => \i_key_ctrl|LessThan0~0_combout\,
	datac => \i_key_ctrl|LessThan0~1_combout\,
	datad => \i_key_ctrl|ten_ms_off_cnt\(14),
	combout => \i_key_ctrl|LessThan0~3_combout\);

-- Location: LCCOMB_X38_Y23_N16
\i_key_ctrl|ten_ms_off_cnt[17]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[17]~55_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(17) & (!\i_key_ctrl|ten_ms_off_cnt[16]~54\)) # (!\i_key_ctrl|ten_ms_off_cnt\(17) & ((\i_key_ctrl|ten_ms_off_cnt[16]~54\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[17]~56\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[16]~54\) # (!\i_key_ctrl|ten_ms_off_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_off_cnt\(17),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[16]~54\,
	combout => \i_key_ctrl|ten_ms_off_cnt[17]~55_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[17]~56\);

-- Location: LCFF_X38_Y23_N17
\i_key_ctrl|ten_ms_off_cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[17]~55_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(17));

-- Location: LCCOMB_X38_Y23_N20
\i_key_ctrl|ten_ms_off_cnt[17]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\ = (\i_key_ctrl|key_off_n_2r~regout\) # ((!\i_key_ctrl|LessThan0~3_combout\ & (\i_key_ctrl|ten_ms_off_cnt\(17) & \i_key_ctrl|ten_ms_off_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_off_n_2r~regout\,
	datab => \i_key_ctrl|LessThan0~3_combout\,
	datac => \i_key_ctrl|ten_ms_off_cnt\(17),
	datad => \i_key_ctrl|ten_ms_off_cnt\(18),
	combout => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\);

-- Location: LCFF_X38_Y24_N15
\i_key_ctrl|ten_ms_off_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[0]~21_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(0));

-- Location: LCCOMB_X38_Y24_N18
\i_key_ctrl|ten_ms_off_cnt[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[2]~25_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(2) & (\i_key_ctrl|ten_ms_off_cnt[1]~24\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(2) & (!\i_key_ctrl|ten_ms_off_cnt[1]~24\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[2]~26\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(2) & !\i_key_ctrl|ten_ms_off_cnt[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(2),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[1]~24\,
	combout => \i_key_ctrl|ten_ms_off_cnt[2]~25_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[2]~26\);

-- Location: LCFF_X38_Y24_N19
\i_key_ctrl|ten_ms_off_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[2]~25_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(2));

-- Location: LCCOMB_X38_Y24_N22
\i_key_ctrl|ten_ms_off_cnt[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[4]~29_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(4) & (\i_key_ctrl|ten_ms_off_cnt[3]~28\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(4) & (!\i_key_ctrl|ten_ms_off_cnt[3]~28\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[4]~30\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(4) & !\i_key_ctrl|ten_ms_off_cnt[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(4),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[3]~28\,
	combout => \i_key_ctrl|ten_ms_off_cnt[4]~29_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[4]~30\);

-- Location: LCFF_X38_Y24_N23
\i_key_ctrl|ten_ms_off_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[4]~29_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(4));

-- Location: LCCOMB_X38_Y24_N26
\i_key_ctrl|ten_ms_off_cnt[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[6]~33_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(6) & (\i_key_ctrl|ten_ms_off_cnt[5]~32\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(6) & (!\i_key_ctrl|ten_ms_off_cnt[5]~32\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[6]~34\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(6) & !\i_key_ctrl|ten_ms_off_cnt[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(6),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[5]~32\,
	combout => \i_key_ctrl|ten_ms_off_cnt[6]~33_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[6]~34\);

-- Location: LCFF_X38_Y24_N27
\i_key_ctrl|ten_ms_off_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[6]~33_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(6));

-- Location: LCCOMB_X38_Y24_N28
\i_key_ctrl|ten_ms_off_cnt[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[7]~35_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(7) & (!\i_key_ctrl|ten_ms_off_cnt[6]~34\)) # (!\i_key_ctrl|ten_ms_off_cnt\(7) & ((\i_key_ctrl|ten_ms_off_cnt[6]~34\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[7]~36\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[6]~34\) # (!\i_key_ctrl|ten_ms_off_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(7),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[6]~34\,
	combout => \i_key_ctrl|ten_ms_off_cnt[7]~35_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[7]~36\);

-- Location: LCFF_X38_Y24_N29
\i_key_ctrl|ten_ms_off_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[7]~35_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(7));

-- Location: LCCOMB_X38_Y24_N30
\i_key_ctrl|ten_ms_off_cnt[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[8]~37_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(8) & (\i_key_ctrl|ten_ms_off_cnt[7]~36\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(8) & (!\i_key_ctrl|ten_ms_off_cnt[7]~36\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[8]~38\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(8) & !\i_key_ctrl|ten_ms_off_cnt[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(8),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[7]~36\,
	combout => \i_key_ctrl|ten_ms_off_cnt[8]~37_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[8]~38\);

-- Location: LCFF_X38_Y24_N31
\i_key_ctrl|ten_ms_off_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[8]~37_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(8));

-- Location: LCCOMB_X38_Y23_N0
\i_key_ctrl|ten_ms_off_cnt[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[9]~39_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(9) & (!\i_key_ctrl|ten_ms_off_cnt[8]~38\)) # (!\i_key_ctrl|ten_ms_off_cnt\(9) & ((\i_key_ctrl|ten_ms_off_cnt[8]~38\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[9]~40\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[8]~38\) # (!\i_key_ctrl|ten_ms_off_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(9),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[8]~38\,
	combout => \i_key_ctrl|ten_ms_off_cnt[9]~39_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[9]~40\);

-- Location: LCFF_X38_Y23_N1
\i_key_ctrl|ten_ms_off_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[9]~39_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(9));

-- Location: LCCOMB_X38_Y23_N2
\i_key_ctrl|ten_ms_off_cnt[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[10]~41_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(10) & (\i_key_ctrl|ten_ms_off_cnt[9]~40\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(10) & (!\i_key_ctrl|ten_ms_off_cnt[9]~40\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[10]~42\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(10) & !\i_key_ctrl|ten_ms_off_cnt[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(10),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[9]~40\,
	combout => \i_key_ctrl|ten_ms_off_cnt[10]~41_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[10]~42\);

-- Location: LCFF_X38_Y23_N3
\i_key_ctrl|ten_ms_off_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[10]~41_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(10));

-- Location: LCCOMB_X38_Y23_N4
\i_key_ctrl|ten_ms_off_cnt[11]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[11]~43_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(11) & (!\i_key_ctrl|ten_ms_off_cnt[10]~42\)) # (!\i_key_ctrl|ten_ms_off_cnt\(11) & ((\i_key_ctrl|ten_ms_off_cnt[10]~42\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[11]~44\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[10]~42\) # (!\i_key_ctrl|ten_ms_off_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(11),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[10]~42\,
	combout => \i_key_ctrl|ten_ms_off_cnt[11]~43_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[11]~44\);

-- Location: LCFF_X38_Y23_N5
\i_key_ctrl|ten_ms_off_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[11]~43_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(11));

-- Location: LCCOMB_X38_Y23_N8
\i_key_ctrl|ten_ms_off_cnt[13]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[13]~47_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(13) & (!\i_key_ctrl|ten_ms_off_cnt[12]~46\)) # (!\i_key_ctrl|ten_ms_off_cnt\(13) & ((\i_key_ctrl|ten_ms_off_cnt[12]~46\) # (GND)))
-- \i_key_ctrl|ten_ms_off_cnt[13]~48\ = CARRY((!\i_key_ctrl|ten_ms_off_cnt[12]~46\) # (!\i_key_ctrl|ten_ms_off_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(13),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[12]~46\,
	combout => \i_key_ctrl|ten_ms_off_cnt[13]~47_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[13]~48\);

-- Location: LCFF_X38_Y23_N9
\i_key_ctrl|ten_ms_off_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[13]~47_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(13));

-- Location: LCCOMB_X38_Y23_N14
\i_key_ctrl|ten_ms_off_cnt[16]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[16]~53_combout\ = (\i_key_ctrl|ten_ms_off_cnt\(16) & (\i_key_ctrl|ten_ms_off_cnt[15]~52\ $ (GND))) # (!\i_key_ctrl|ten_ms_off_cnt\(16) & (!\i_key_ctrl|ten_ms_off_cnt[15]~52\ & VCC))
-- \i_key_ctrl|ten_ms_off_cnt[16]~54\ = CARRY((\i_key_ctrl|ten_ms_off_cnt\(16) & !\i_key_ctrl|ten_ms_off_cnt[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_off_cnt\(16),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_off_cnt[15]~52\,
	combout => \i_key_ctrl|ten_ms_off_cnt[16]~53_combout\,
	cout => \i_key_ctrl|ten_ms_off_cnt[16]~54\);

-- Location: LCFF_X38_Y23_N15
\i_key_ctrl|ten_ms_off_cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[16]~53_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(16));

-- Location: LCCOMB_X38_Y23_N18
\i_key_ctrl|ten_ms_off_cnt[18]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_off_cnt[18]~57_combout\ = \i_key_ctrl|ten_ms_off_cnt[17]~56\ $ (!\i_key_ctrl|ten_ms_off_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|ten_ms_off_cnt\(18),
	cin => \i_key_ctrl|ten_ms_off_cnt[17]~56\,
	combout => \i_key_ctrl|ten_ms_off_cnt[18]~57_combout\);

-- Location: LCFF_X38_Y23_N19
\i_key_ctrl|ten_ms_off_cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_off_cnt[18]~57_combout\,
	sclr => \i_key_ctrl|ten_ms_off_cnt[17]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_off_cnt\(18));

-- Location: LCCOMB_X38_Y23_N30
\i_key_ctrl|key_off~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_off~0_combout\ = ((!\i_key_ctrl|key_off_n_2r~regout\ & (!\i_key_ctrl|LessThan0~3_combout\ & !\i_key_ctrl|key_off~regout\))) # (!\i_key_ctrl|ten_ms_off_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_off_n_2r~regout\,
	datab => \i_key_ctrl|ten_ms_off_cnt\(18),
	datac => \i_key_ctrl|LessThan0~3_combout\,
	datad => \i_key_ctrl|key_off~regout\,
	combout => \i_key_ctrl|key_off~0_combout\);

-- Location: LCCOMB_X38_Y23_N28
\i_key_ctrl|key_off~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_off~1_combout\ = (\i_key_ctrl|key_in_states~regout\ & (\i_key_ctrl|key_off~0_combout\ & (\i_key_ctrl|ten_ms_off_cnt\(17) & \i_key_ctrl|ten_ms_off_cnt\(18)))) # (!\i_key_ctrl|key_in_states~regout\ & ((\i_key_ctrl|key_off~0_combout\) # 
-- ((\i_key_ctrl|ten_ms_off_cnt\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_in_states~regout\,
	datab => \i_key_ctrl|key_off~0_combout\,
	datac => \i_key_ctrl|ten_ms_off_cnt\(17),
	datad => \i_key_ctrl|ten_ms_off_cnt\(18),
	combout => \i_key_ctrl|key_off~1_combout\);

-- Location: LCFF_X38_Y23_N29
\i_key_ctrl|key_off\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_off~1_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_off~regout\);

-- Location: LCCOMB_X38_Y25_N16
\i_pwm_ctrl|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector11~0_combout\ = (!\i_serial_ctrl|serial_off_out~regout\ & \i_key_ctrl|key_off~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_ctrl|serial_off_out~regout\,
	datac => \i_key_ctrl|key_off~regout\,
	combout => \i_pwm_ctrl|Selector11~0_combout\);

-- Location: LCCOMB_X36_Y25_N20
\i_serial_uart|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector9~0_combout\ = (\i_serial_uart|rx_byte_int\(3) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|Selector10~0_combout\ & \i_serial_uart|rx_byte_int\(2))))) # (!\i_serial_uart|rx_byte_int\(3) & 
-- (\i_serial_uart|Selector10~0_combout\ & (\i_serial_uart|rx_byte_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(3),
	datab => \i_serial_uart|Selector10~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(2),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector9~0_combout\);

-- Location: LCFF_X36_Y25_N21
\i_serial_uart|rx_byte_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(2));

-- Location: LCCOMB_X36_Y25_N28
\i_serial_uart|received_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~3_combout\ = (\i_serial_uart|rx_byte_int\(2) & !\i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_byte_int\(2),
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~3_combout\);

-- Location: LCFF_X36_Y25_N29
\i_serial_uart|received_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~3_combout\,
	ena => \i_serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(2));

-- Location: LCCOMB_X35_Y25_N20
\i_serial_uart|received_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~6_combout\ = (\i_serial_uart|rx_2r~regout\ & !\i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_2r~regout\,
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~6_combout\);

-- Location: LCFF_X35_Y25_N21
\i_serial_uart|received_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~6_combout\,
	ena => \i_serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(7));

-- Location: LCCOMB_X36_Y25_N16
\i_serial_uart|received_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~5_combout\ = (\i_serial_uart|rx_byte_int\(3) & !\i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(3),
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~5_combout\);

-- Location: LCFF_X36_Y25_N17
\i_serial_uart|received_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~5_combout\,
	ena => \i_serial_uart|received_data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(3));

-- Location: LCCOMB_X37_Y25_N4
\i_serial_ctrl|serial_down_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|serial_down_out~0_combout\ = (!\i_serial_uart|received_data\(1) & (\i_serial_uart|received_data\(2) & (!\i_serial_uart|received_data\(7) & !\i_serial_uart|received_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(1),
	datab => \i_serial_uart|received_data\(2),
	datac => \i_serial_uart|received_data\(7),
	datad => \i_serial_uart|received_data\(3),
	combout => \i_serial_ctrl|serial_down_out~0_combout\);

-- Location: LCCOMB_X37_Y25_N6
\i_serial_ctrl|serial_down_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|serial_down_out~1_combout\ = (\i_serial_uart|received_data\(6) & (\i_serial_ctrl|serial_down_out~0_combout\ & \i_serial_uart|received_valid~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|received_data\(6),
	datac => \i_serial_ctrl|serial_down_out~0_combout\,
	datad => \i_serial_uart|received_valid~regout\,
	combout => \i_serial_ctrl|serial_down_out~1_combout\);

-- Location: LCCOMB_X37_Y25_N20
\i_serial_ctrl|serial_up_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|serial_up_out~0_combout\ = (\i_serial_ctrl|serial_up_out~regout\) # ((\i_serial_uart|received_data\(4) & (\i_serial_uart|received_data\(0) & \i_serial_ctrl|serial_down_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(4),
	datab => \i_serial_uart|received_data\(0),
	datac => \i_serial_ctrl|serial_up_out~regout\,
	datad => \i_serial_ctrl|serial_down_out~1_combout\,
	combout => \i_serial_ctrl|serial_up_out~0_combout\);

-- Location: LCFF_X37_Y25_N21
\i_serial_ctrl|serial_up_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_ctrl|serial_up_out~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_ctrl|serial_up_out~regout\);

-- Location: LCCOMB_X35_Y24_N14
\i_key_ctrl|ten_ms_up_cnt[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[0]~21_combout\ = \i_key_ctrl|ten_ms_up_cnt\(0) $ (VCC)
-- \i_key_ctrl|ten_ms_up_cnt[0]~22\ = CARRY(\i_key_ctrl|ten_ms_up_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(0),
	datad => VCC,
	combout => \i_key_ctrl|ten_ms_up_cnt[0]~21_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[0]~22\);

-- Location: LCCOMB_X35_Y23_N14
\i_key_ctrl|ten_ms_up_cnt[16]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[16]~53_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(16) & (\i_key_ctrl|ten_ms_up_cnt[15]~52\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(16) & (!\i_key_ctrl|ten_ms_up_cnt[15]~52\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[16]~54\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(16) & !\i_key_ctrl|ten_ms_up_cnt[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(16),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[15]~52\,
	combout => \i_key_ctrl|ten_ms_up_cnt[16]~53_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[16]~54\);

-- Location: LCCOMB_X35_Y23_N16
\i_key_ctrl|ten_ms_up_cnt[17]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[17]~55_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(17) & (!\i_key_ctrl|ten_ms_up_cnt[16]~54\)) # (!\i_key_ctrl|ten_ms_up_cnt\(17) & ((\i_key_ctrl|ten_ms_up_cnt[16]~54\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[17]~56\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[16]~54\) # (!\i_key_ctrl|ten_ms_up_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(17),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[16]~54\,
	combout => \i_key_ctrl|ten_ms_up_cnt[17]~55_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[17]~56\);

-- Location: LCCOMB_X35_Y23_N18
\i_key_ctrl|ten_ms_up_cnt[18]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[18]~57_combout\ = \i_key_ctrl|ten_ms_up_cnt[17]~56\ $ (!\i_key_ctrl|ten_ms_up_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|ten_ms_up_cnt\(18),
	cin => \i_key_ctrl|ten_ms_up_cnt[17]~56\,
	combout => \i_key_ctrl|ten_ms_up_cnt[18]~57_combout\);

-- Location: LCFF_X35_Y23_N19
\i_key_ctrl|ten_ms_up_cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[18]~57_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(18));

-- Location: LCFF_X35_Y23_N17
\i_key_ctrl|ten_ms_up_cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[17]~55_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(17));

-- Location: LCCOMB_X35_Y23_N28
\i_key_ctrl|ten_ms_up_cnt[9]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\ = (\i_key_ctrl|key_up_n_2r~regout\) # ((\i_key_ctrl|ten_ms_up_cnt\(18) & (\i_key_ctrl|ten_ms_up_cnt\(17) & !\i_key_ctrl|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_up_n_2r~regout\,
	datab => \i_key_ctrl|ten_ms_up_cnt\(18),
	datac => \i_key_ctrl|ten_ms_up_cnt\(17),
	datad => \i_key_ctrl|LessThan3~4_combout\,
	combout => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\);

-- Location: LCFF_X35_Y24_N15
\i_key_ctrl|ten_ms_up_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[0]~21_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(0));

-- Location: LCCOMB_X35_Y24_N18
\i_key_ctrl|ten_ms_up_cnt[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[2]~25_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(2) & (\i_key_ctrl|ten_ms_up_cnt[1]~24\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(2) & (!\i_key_ctrl|ten_ms_up_cnt[1]~24\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[2]~26\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(2) & !\i_key_ctrl|ten_ms_up_cnt[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(2),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[1]~24\,
	combout => \i_key_ctrl|ten_ms_up_cnt[2]~25_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[2]~26\);

-- Location: LCFF_X35_Y24_N19
\i_key_ctrl|ten_ms_up_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[2]~25_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(2));

-- Location: LCCOMB_X35_Y24_N22
\i_key_ctrl|ten_ms_up_cnt[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[4]~29_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(4) & (\i_key_ctrl|ten_ms_up_cnt[3]~28\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(4) & (!\i_key_ctrl|ten_ms_up_cnt[3]~28\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[4]~30\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(4) & !\i_key_ctrl|ten_ms_up_cnt[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(4),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[3]~28\,
	combout => \i_key_ctrl|ten_ms_up_cnt[4]~29_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[4]~30\);

-- Location: LCFF_X35_Y24_N23
\i_key_ctrl|ten_ms_up_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[4]~29_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(4));

-- Location: LCCOMB_X35_Y24_N24
\i_key_ctrl|ten_ms_up_cnt[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[5]~31_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(5) & (!\i_key_ctrl|ten_ms_up_cnt[4]~30\)) # (!\i_key_ctrl|ten_ms_up_cnt\(5) & ((\i_key_ctrl|ten_ms_up_cnt[4]~30\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[5]~32\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[4]~30\) # (!\i_key_ctrl|ten_ms_up_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(5),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[4]~30\,
	combout => \i_key_ctrl|ten_ms_up_cnt[5]~31_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[5]~32\);

-- Location: LCCOMB_X35_Y24_N26
\i_key_ctrl|ten_ms_up_cnt[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[6]~33_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(6) & (\i_key_ctrl|ten_ms_up_cnt[5]~32\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(6) & (!\i_key_ctrl|ten_ms_up_cnt[5]~32\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[6]~34\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(6) & !\i_key_ctrl|ten_ms_up_cnt[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(6),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[5]~32\,
	combout => \i_key_ctrl|ten_ms_up_cnt[6]~33_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[6]~34\);

-- Location: LCFF_X35_Y24_N27
\i_key_ctrl|ten_ms_up_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[6]~33_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(6));

-- Location: LCCOMB_X35_Y24_N28
\i_key_ctrl|ten_ms_up_cnt[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[7]~35_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(7) & (!\i_key_ctrl|ten_ms_up_cnt[6]~34\)) # (!\i_key_ctrl|ten_ms_up_cnt\(7) & ((\i_key_ctrl|ten_ms_up_cnt[6]~34\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[7]~36\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[6]~34\) # (!\i_key_ctrl|ten_ms_up_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(7),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[6]~34\,
	combout => \i_key_ctrl|ten_ms_up_cnt[7]~35_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[7]~36\);

-- Location: LCFF_X35_Y24_N29
\i_key_ctrl|ten_ms_up_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[7]~35_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(7));

-- Location: LCCOMB_X35_Y24_N30
\i_key_ctrl|ten_ms_up_cnt[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[8]~37_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(8) & (\i_key_ctrl|ten_ms_up_cnt[7]~36\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(8) & (!\i_key_ctrl|ten_ms_up_cnt[7]~36\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[8]~38\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(8) & !\i_key_ctrl|ten_ms_up_cnt[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(8),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[7]~36\,
	combout => \i_key_ctrl|ten_ms_up_cnt[8]~37_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[8]~38\);

-- Location: LCFF_X35_Y24_N31
\i_key_ctrl|ten_ms_up_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[8]~37_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(8));

-- Location: LCCOMB_X35_Y23_N0
\i_key_ctrl|ten_ms_up_cnt[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[9]~39_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(9) & (!\i_key_ctrl|ten_ms_up_cnt[8]~38\)) # (!\i_key_ctrl|ten_ms_up_cnt\(9) & ((\i_key_ctrl|ten_ms_up_cnt[8]~38\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[9]~40\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[8]~38\) # (!\i_key_ctrl|ten_ms_up_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(9),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[8]~38\,
	combout => \i_key_ctrl|ten_ms_up_cnt[9]~39_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[9]~40\);

-- Location: LCFF_X35_Y23_N1
\i_key_ctrl|ten_ms_up_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[9]~39_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(9));

-- Location: LCCOMB_X35_Y23_N2
\i_key_ctrl|ten_ms_up_cnt[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[10]~41_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(10) & (\i_key_ctrl|ten_ms_up_cnt[9]~40\ $ (GND))) # (!\i_key_ctrl|ten_ms_up_cnt\(10) & (!\i_key_ctrl|ten_ms_up_cnt[9]~40\ & VCC))
-- \i_key_ctrl|ten_ms_up_cnt[10]~42\ = CARRY((\i_key_ctrl|ten_ms_up_cnt\(10) & !\i_key_ctrl|ten_ms_up_cnt[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(10),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[9]~40\,
	combout => \i_key_ctrl|ten_ms_up_cnt[10]~41_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[10]~42\);

-- Location: LCFF_X35_Y23_N3
\i_key_ctrl|ten_ms_up_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[10]~41_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(10));

-- Location: LCCOMB_X35_Y23_N4
\i_key_ctrl|ten_ms_up_cnt[11]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[11]~43_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(11) & (!\i_key_ctrl|ten_ms_up_cnt[10]~42\)) # (!\i_key_ctrl|ten_ms_up_cnt\(11) & ((\i_key_ctrl|ten_ms_up_cnt[10]~42\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[11]~44\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[10]~42\) # (!\i_key_ctrl|ten_ms_up_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(11),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[10]~42\,
	combout => \i_key_ctrl|ten_ms_up_cnt[11]~43_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[11]~44\);

-- Location: LCFF_X35_Y23_N5
\i_key_ctrl|ten_ms_up_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[11]~43_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(11));

-- Location: LCCOMB_X35_Y23_N8
\i_key_ctrl|ten_ms_up_cnt[13]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[13]~47_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(13) & (!\i_key_ctrl|ten_ms_up_cnt[12]~46\)) # (!\i_key_ctrl|ten_ms_up_cnt\(13) & ((\i_key_ctrl|ten_ms_up_cnt[12]~46\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[13]~48\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[12]~46\) # (!\i_key_ctrl|ten_ms_up_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|ten_ms_up_cnt\(13),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[12]~46\,
	combout => \i_key_ctrl|ten_ms_up_cnt[13]~47_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[13]~48\);

-- Location: LCFF_X35_Y23_N9
\i_key_ctrl|ten_ms_up_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[13]~47_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(13));

-- Location: LCCOMB_X35_Y23_N12
\i_key_ctrl|ten_ms_up_cnt[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|ten_ms_up_cnt[15]~51_combout\ = (\i_key_ctrl|ten_ms_up_cnt\(15) & (!\i_key_ctrl|ten_ms_up_cnt[14]~50\)) # (!\i_key_ctrl|ten_ms_up_cnt\(15) & ((\i_key_ctrl|ten_ms_up_cnt[14]~50\) # (GND)))
-- \i_key_ctrl|ten_ms_up_cnt[15]~52\ = CARRY((!\i_key_ctrl|ten_ms_up_cnt[14]~50\) # (!\i_key_ctrl|ten_ms_up_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(15),
	datad => VCC,
	cin => \i_key_ctrl|ten_ms_up_cnt[14]~50\,
	combout => \i_key_ctrl|ten_ms_up_cnt[15]~51_combout\,
	cout => \i_key_ctrl|ten_ms_up_cnt[15]~52\);

-- Location: LCFF_X35_Y23_N15
\i_key_ctrl|ten_ms_up_cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[16]~53_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(16));

-- Location: LCFF_X35_Y23_N13
\i_key_ctrl|ten_ms_up_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[15]~51_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(15));

-- Location: LCCOMB_X35_Y23_N30
\i_key_ctrl|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan3~1_combout\ = (((!\i_key_ctrl|ten_ms_up_cnt\(14) & !\i_key_ctrl|ten_ms_up_cnt\(13))) # (!\i_key_ctrl|ten_ms_up_cnt\(15))) # (!\i_key_ctrl|ten_ms_up_cnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(14),
	datab => \i_key_ctrl|ten_ms_up_cnt\(16),
	datac => \i_key_ctrl|ten_ms_up_cnt\(13),
	datad => \i_key_ctrl|ten_ms_up_cnt\(15),
	combout => \i_key_ctrl|LessThan3~1_combout\);

-- Location: LCCOMB_X35_Y23_N24
\i_key_ctrl|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan3~3_combout\ = (!\i_key_ctrl|ten_ms_up_cnt\(12) & (!\i_key_ctrl|ten_ms_up_cnt\(10) & (!\i_key_ctrl|ten_ms_up_cnt\(11) & !\i_key_ctrl|ten_ms_up_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(12),
	datab => \i_key_ctrl|ten_ms_up_cnt\(10),
	datac => \i_key_ctrl|ten_ms_up_cnt\(11),
	datad => \i_key_ctrl|ten_ms_up_cnt\(9),
	combout => \i_key_ctrl|LessThan3~3_combout\);

-- Location: LCFF_X35_Y24_N25
\i_key_ctrl|ten_ms_up_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|ten_ms_up_cnt[5]~31_combout\,
	sclr => \i_key_ctrl|ten_ms_up_cnt[9]~59_combout\,
	ena => \b_gen_pll:i_reset_ctrl|reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|ten_ms_up_cnt\(5));

-- Location: LCCOMB_X35_Y24_N8
\i_key_ctrl|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan3~2_combout\ = ((!\i_key_ctrl|ten_ms_up_cnt\(7) & (!\i_key_ctrl|ten_ms_up_cnt\(6) & !\i_key_ctrl|ten_ms_up_cnt\(5)))) # (!\i_key_ctrl|ten_ms_up_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(7),
	datab => \i_key_ctrl|ten_ms_up_cnt\(6),
	datac => \i_key_ctrl|ten_ms_up_cnt\(5),
	datad => \i_key_ctrl|ten_ms_up_cnt\(8),
	combout => \i_key_ctrl|LessThan3~2_combout\);

-- Location: LCCOMB_X35_Y23_N26
\i_key_ctrl|LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|LessThan3~4_combout\ = (\i_key_ctrl|LessThan3~1_combout\) # ((!\i_key_ctrl|ten_ms_up_cnt\(14) & (\i_key_ctrl|LessThan3~3_combout\ & \i_key_ctrl|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|ten_ms_up_cnt\(14),
	datab => \i_key_ctrl|LessThan3~1_combout\,
	datac => \i_key_ctrl|LessThan3~3_combout\,
	datad => \i_key_ctrl|LessThan3~2_combout\,
	combout => \i_key_ctrl|LessThan3~4_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X37_Y23_N9
\i_key_ctrl|key_down_n_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \key_n~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_down_n_r~regout\);

-- Location: LCFF_X37_Y23_N23
\i_key_ctrl|key_down_n_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_key_ctrl|key_down_n_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_down_n_2r~regout\);

-- Location: LCCOMB_X37_Y23_N18
\i_key_ctrl|key_up~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_up~0_combout\ = (\i_key_ctrl|key_in_states~regout\ & (\i_key_ctrl|key_up~regout\)) # (!\i_key_ctrl|key_in_states~regout\ & (!\i_key_ctrl|key_up~regout\ & \i_key_ctrl|key_off_n_2r~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_in_states~regout\,
	datab => \i_key_ctrl|key_up~regout\,
	datac => \i_key_ctrl|key_off_n_2r~regout\,
	combout => \i_key_ctrl|key_up~0_combout\);

-- Location: LCCOMB_X37_Y23_N22
\i_key_ctrl|key_up~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_up~1_combout\ = (\i_key_ctrl|LessThan3~0_combout\ & (((!\i_key_ctrl|key_up~0_combout\) # (!\i_key_ctrl|key_down_n_2r~regout\)))) # (!\i_key_ctrl|LessThan3~0_combout\ & (\i_key_ctrl|LessThan3~4_combout\ & ((!\i_key_ctrl|key_up~0_combout\) # 
-- (!\i_key_ctrl|key_down_n_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|LessThan3~0_combout\,
	datab => \i_key_ctrl|LessThan3~4_combout\,
	datac => \i_key_ctrl|key_down_n_2r~regout\,
	datad => \i_key_ctrl|key_up~0_combout\,
	combout => \i_key_ctrl|key_up~1_combout\);

-- Location: LCCOMB_X37_Y23_N6
\i_key_ctrl|key_up~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_up~2_combout\ = (\i_key_ctrl|key_up~regout\ & (((!\i_key_ctrl|key_up~0_combout\)))) # (!\i_key_ctrl|key_up~regout\ & (!\i_key_ctrl|key_up_n_2r~regout\ & (!\i_key_ctrl|key_up~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_up_n_2r~regout\,
	datab => \i_key_ctrl|key_up~1_combout\,
	datac => \i_key_ctrl|key_up~regout\,
	datad => \i_key_ctrl|key_up~0_combout\,
	combout => \i_key_ctrl|key_up~2_combout\);

-- Location: LCFF_X37_Y23_N7
\i_key_ctrl|key_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_up~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_up~regout\);

-- Location: LCCOMB_X37_Y25_N22
\i_pwm_ctrl|p_pwm_state_machine~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|p_pwm_state_machine~1_combout\ = (\i_serial_ctrl|serial_up_out~regout\) # (!\i_key_ctrl|key_up~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_ctrl|serial_up_out~regout\,
	datad => \i_key_ctrl|key_up~regout\,
	combout => \i_pwm_ctrl|p_pwm_state_machine~1_combout\);

-- Location: LCCOMB_X38_Y25_N4
\i_pwm_ctrl|Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector11~2_combout\ = (\i_pwm_ctrl|Selector11~1_combout\ & (\i_pwm_ctrl|p_pwm_state_machine~0_combout\ & (\i_pwm_ctrl|Selector11~0_combout\ & !\i_pwm_ctrl|p_pwm_state_machine~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Selector11~1_combout\,
	datab => \i_pwm_ctrl|p_pwm_state_machine~0_combout\,
	datac => \i_pwm_ctrl|Selector11~0_combout\,
	datad => \i_pwm_ctrl|p_pwm_state_machine~1_combout\,
	combout => \i_pwm_ctrl|Selector11~2_combout\);

-- Location: LCFF_X38_Y25_N5
\i_pwm_ctrl|pwm_state.s_down\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Selector11~2_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_down~regout\);

-- Location: LCCOMB_X40_Y26_N0
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

-- Location: LCCOMB_X37_Y26_N14
\i_pwm_ctrl|new_dc[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[1]~7_combout\ = \i_pwm_ctrl|new_dc\(1) $ (GND)
-- \i_pwm_ctrl|new_dc[1]~8\ = CARRY(!\i_pwm_ctrl|new_dc\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(1),
	datad => VCC,
	combout => \i_pwm_ctrl|new_dc[1]~7_combout\,
	cout => \i_pwm_ctrl|new_dc[1]~8\);

-- Location: LCCOMB_X38_Y25_N2
\i_pwm_ctrl|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector9~0_combout\ = (\i_pwm_ctrl|pwm_state.s_off~regout\ & (((\i_pwm_ctrl|p_pwm_state_machine~0_combout\ & !\i_pwm_ctrl|p_pwm_state_machine~1_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_off~regout\ & (!\i_pwm_ctrl|Selector11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Selector11~0_combout\,
	datab => \i_pwm_ctrl|p_pwm_state_machine~0_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_off~regout\,
	datad => \i_pwm_ctrl|p_pwm_state_machine~1_combout\,
	combout => \i_pwm_ctrl|Selector9~0_combout\);

-- Location: LCFF_X38_Y25_N3
\i_pwm_ctrl|pwm_state.s_off\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Selector9~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_off~regout\);

-- Location: LCCOMB_X38_Y25_N6
\i_pwm_ctrl|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector12~0_combout\ = (\i_pwm_ctrl|p_pwm_state_machine~0_combout\ & ((\i_pwm_ctrl|pwm_state.s_off~regout\) # ((\i_pwm_ctrl|p_pwm_state_machine~1_combout\ & \i_pwm_ctrl|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|p_pwm_state_machine~0_combout\,
	datab => \i_pwm_ctrl|p_pwm_state_machine~1_combout\,
	datac => \i_pwm_ctrl|Selector11~0_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_off~regout\,
	combout => \i_pwm_ctrl|Selector12~0_combout\);

-- Location: LCCOMB_X38_Y25_N22
\i_pwm_ctrl|Selector11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector11~4_combout\ = (\i_pwm_ctrl|p_pwm_state_machine~1_combout\) # (((!\i_pwm_ctrl|Selector11~3_combout\ & !\i_pwm_ctrl|pwm_state.s_off~regout\)) # (!\i_pwm_ctrl|p_pwm_state_machine~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Selector11~3_combout\,
	datab => \i_pwm_ctrl|p_pwm_state_machine~1_combout\,
	datac => \i_pwm_ctrl|p_pwm_state_machine~0_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_off~regout\,
	combout => \i_pwm_ctrl|Selector11~4_combout\);

-- Location: LCFF_X38_Y25_N7
\i_pwm_ctrl|pwm_state.s_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Selector12~0_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|Selector11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_up~regout\);

-- Location: LCCOMB_X38_Y25_N28
\i_pwm_ctrl|Selector10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector10~4_combout\ = (\i_pwm_ctrl|Selector11~0_combout\ & (!\i_serial_ctrl|serial_on_out~regout\ & (\i_key_ctrl|key_on~regout\))) # (!\i_pwm_ctrl|Selector11~0_combout\ & (((!\i_serial_ctrl|serial_on_out~regout\ & 
-- \i_key_ctrl|key_on~regout\)) # (!\i_pwm_ctrl|pwm_state.s_off~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Selector11~0_combout\,
	datab => \i_serial_ctrl|serial_on_out~regout\,
	datac => \i_key_ctrl|key_on~regout\,
	datad => \i_pwm_ctrl|pwm_state.s_off~regout\,
	combout => \i_pwm_ctrl|Selector10~4_combout\);

-- Location: LCFF_X38_Y25_N29
\i_pwm_ctrl|pwm_state.s_on\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Selector10~4_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|Selector11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_on~regout\);

-- Location: LCCOMB_X37_Y25_N0
\i_pwm_ctrl|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~0_combout\ = (!\i_pwm_ctrl|pwm_state.s_up~regout\ & (((\i_pwm_ctrl|p_pwm_state_machine~0_combout\ & \i_pwm_ctrl|p_pwm_state_machine~1_combout\)) # (!\i_pwm_ctrl|pwm_state.s_on~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|p_pwm_state_machine~0_combout\,
	datab => \i_pwm_ctrl|p_pwm_state_machine~1_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|pwm_state.s_on~regout\,
	combout => \i_pwm_ctrl|Add1~0_combout\);

-- Location: LCCOMB_X37_Y26_N10
\i_pwm_ctrl|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~10_combout\ = (\i_pwm_ctrl|Add1~0_combout\) # ((\i_pwm_ctrl|Add1~3_combout\ & \i_pwm_ctrl|pwm_state.s_up~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Add1~3_combout\,
	datab => \i_pwm_ctrl|Add1~0_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|Add1~10_combout\);

-- Location: LCCOMB_X37_Y26_N16
\i_pwm_ctrl|new_dc[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[2]~9_combout\ = (\i_pwm_ctrl|new_dc\(2) & (\i_pwm_ctrl|new_dc[1]~8\ $ (GND))) # (!\i_pwm_ctrl|new_dc\(2) & ((GND) # (!\i_pwm_ctrl|new_dc[1]~8\)))
-- \i_pwm_ctrl|new_dc[2]~10\ = CARRY((!\i_pwm_ctrl|new_dc[1]~8\) # (!\i_pwm_ctrl|new_dc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(2),
	datad => VCC,
	cin => \i_pwm_ctrl|new_dc[1]~8\,
	combout => \i_pwm_ctrl|new_dc[2]~9_combout\,
	cout => \i_pwm_ctrl|new_dc[2]~10\);

-- Location: LCCOMB_X38_Y26_N4
\i_pwm_ctrl|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~1_combout\ = \i_pwm_ctrl|new_dc\(0) $ (VCC)
-- \i_pwm_ctrl|Add1~2\ = CARRY(\i_pwm_ctrl|new_dc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(0),
	datad => VCC,
	combout => \i_pwm_ctrl|Add1~1_combout\,
	cout => \i_pwm_ctrl|Add1~2\);

-- Location: LCCOMB_X39_Y26_N22
\i_pwm_ctrl|new_dc[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[0]~16_combout\ = (\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|new_dc\(0))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & (((\i_pwm_ctrl|Add1~1_combout\ & \i_pwm_ctrl|pwm_state.s_up~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(0),
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datac => \i_pwm_ctrl|Add1~1_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|new_dc[0]~16_combout\);

-- Location: LCCOMB_X39_Y26_N0
\i_pwm_ctrl|new_dc[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[0]~17_combout\ = (\i_pwm_ctrl|new_dc[4]~15_combout\ & (\i_pwm_ctrl|new_dc[0]~16_combout\)) # (!\i_pwm_ctrl|new_dc[4]~15_combout\ & ((\i_pwm_ctrl|new_dc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc[4]~15_combout\,
	datab => \i_pwm_ctrl|new_dc[0]~16_combout\,
	datac => \i_pwm_ctrl|new_dc\(0),
	combout => \i_pwm_ctrl|new_dc[0]~17_combout\);

-- Location: LCFF_X39_Y26_N1
\i_pwm_ctrl|new_dc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[0]~17_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(0));

-- Location: LCCOMB_X38_Y26_N8
\i_pwm_ctrl|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~5_combout\ = (\i_pwm_ctrl|new_dc\(2) & (!\i_pwm_ctrl|Add1~4\ & VCC)) # (!\i_pwm_ctrl|new_dc\(2) & (\i_pwm_ctrl|Add1~4\ $ (GND)))
-- \i_pwm_ctrl|Add1~6\ = CARRY((!\i_pwm_ctrl|new_dc\(2) & !\i_pwm_ctrl|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(2),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~4\,
	combout => \i_pwm_ctrl|Add1~5_combout\,
	cout => \i_pwm_ctrl|Add1~6\);

-- Location: LCCOMB_X37_Y26_N4
\i_pwm_ctrl|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~11_combout\ = (!\i_pwm_ctrl|pwm_state.s_up~regout\) # (!\i_pwm_ctrl|Add1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl|Add1~5_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|Add1~11_combout\);

-- Location: LCFF_X37_Y26_N17
\i_pwm_ctrl|new_dc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[2]~9_combout\,
	sdata => \i_pwm_ctrl|Add1~11_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(2));

-- Location: LCCOMB_X37_Y26_N20
\i_pwm_ctrl|new_dc[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[4]~18_combout\ = (\i_pwm_ctrl|new_dc\(4) & ((\i_pwm_ctrl|new_dc[3]~12\) # (GND))) # (!\i_pwm_ctrl|new_dc\(4) & (!\i_pwm_ctrl|new_dc[3]~12\))
-- \i_pwm_ctrl|new_dc[4]~19\ = CARRY((\i_pwm_ctrl|new_dc\(4)) # (!\i_pwm_ctrl|new_dc[3]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|new_dc[3]~12\,
	combout => \i_pwm_ctrl|new_dc[4]~18_combout\,
	cout => \i_pwm_ctrl|new_dc[4]~19\);

-- Location: LCCOMB_X38_Y26_N10
\i_pwm_ctrl|Add1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~7_combout\ = (\i_pwm_ctrl|new_dc\(3) & (!\i_pwm_ctrl|Add1~6\)) # (!\i_pwm_ctrl|new_dc\(3) & ((\i_pwm_ctrl|Add1~6\) # (GND)))
-- \i_pwm_ctrl|Add1~8\ = CARRY((!\i_pwm_ctrl|Add1~6\) # (!\i_pwm_ctrl|new_dc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(3),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~6\,
	combout => \i_pwm_ctrl|Add1~7_combout\,
	cout => \i_pwm_ctrl|Add1~8\);

-- Location: LCCOMB_X38_Y26_N12
\i_pwm_ctrl|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~12_combout\ = (\i_pwm_ctrl|new_dc\(4) & (\i_pwm_ctrl|Add1~8\ $ (GND))) # (!\i_pwm_ctrl|new_dc\(4) & (!\i_pwm_ctrl|Add1~8\ & VCC))
-- \i_pwm_ctrl|Add1~13\ = CARRY((\i_pwm_ctrl|new_dc\(4) & !\i_pwm_ctrl|Add1~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~8\,
	combout => \i_pwm_ctrl|Add1~12_combout\,
	cout => \i_pwm_ctrl|Add1~13\);

-- Location: LCCOMB_X37_Y26_N30
\i_pwm_ctrl|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~14_combout\ = (\i_pwm_ctrl|Add1~12_combout\ & \i_pwm_ctrl|pwm_state.s_up~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl|Add1~12_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|Add1~14_combout\);

-- Location: LCFF_X37_Y26_N21
\i_pwm_ctrl|new_dc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[4]~18_combout\,
	sdata => \i_pwm_ctrl|Add1~14_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(4));

-- Location: LCCOMB_X39_Y26_N24
\i_pwm_ctrl|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal1~0_combout\ = (!\i_pwm_ctrl|new_dc\(3) & (!\i_pwm_ctrl|new_dc\(7) & (\i_pwm_ctrl|new_dc\(2) & !\i_pwm_ctrl|new_dc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(3),
	datab => \i_pwm_ctrl|new_dc\(7),
	datac => \i_pwm_ctrl|new_dc\(2),
	datad => \i_pwm_ctrl|new_dc\(4),
	combout => \i_pwm_ctrl|Equal1~0_combout\);

-- Location: LCCOMB_X39_Y26_N16
\i_pwm_ctrl|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal1~1_combout\ = (!\i_pwm_ctrl|new_dc\(1) & (\i_pwm_ctrl|new_dc\(5) & (\i_pwm_ctrl|new_dc\(6) & !\i_pwm_ctrl|new_dc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(1),
	datab => \i_pwm_ctrl|new_dc\(5),
	datac => \i_pwm_ctrl|new_dc\(6),
	datad => \i_pwm_ctrl|new_dc\(0),
	combout => \i_pwm_ctrl|Equal1~1_combout\);

-- Location: LCCOMB_X39_Y26_N26
\i_pwm_ctrl|new_dc[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[4]~14_combout\ = (\i_pwm_ctrl|pwm_state.s_on~regout\) # ((\i_pwm_ctrl|Equal1~0_combout\ & \i_pwm_ctrl|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_on~regout\,
	datac => \i_pwm_ctrl|Equal1~0_combout\,
	datad => \i_pwm_ctrl|Equal1~1_combout\,
	combout => \i_pwm_ctrl|new_dc[4]~14_combout\);

-- Location: LCCOMB_X39_Y26_N20
\i_pwm_ctrl|new_dc[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[4]~15_combout\ = (!\i_pwm_ctrl|new_dc[4]~13_combout\ & (\i_pwm_ctrl|new_dc[4]~14_combout\ & ((\i_pwm_ctrl|LessThan1~0_combout\) # (!\i_pwm_ctrl|pwm_state.s_up~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc[4]~13_combout\,
	datab => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datac => \i_pwm_ctrl|LessThan1~0_combout\,
	datad => \i_pwm_ctrl|new_dc[4]~14_combout\,
	combout => \i_pwm_ctrl|new_dc[4]~15_combout\);

-- Location: LCFF_X37_Y26_N15
\i_pwm_ctrl|new_dc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[1]~7_combout\,
	sdata => \i_pwm_ctrl|Add1~10_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(1));

-- Location: LCCOMB_X37_Y26_N18
\i_pwm_ctrl|new_dc[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[3]~11_combout\ = (\i_pwm_ctrl|new_dc\(3) & (!\i_pwm_ctrl|new_dc[2]~10\ & VCC)) # (!\i_pwm_ctrl|new_dc\(3) & (\i_pwm_ctrl|new_dc[2]~10\ $ (GND)))
-- \i_pwm_ctrl|new_dc[3]~12\ = CARRY((!\i_pwm_ctrl|new_dc\(3) & !\i_pwm_ctrl|new_dc[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(3),
	datad => VCC,
	cin => \i_pwm_ctrl|new_dc[2]~10\,
	combout => \i_pwm_ctrl|new_dc[3]~11_combout\,
	cout => \i_pwm_ctrl|new_dc[3]~12\);

-- Location: LCCOMB_X37_Y26_N0
\i_pwm_ctrl|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~9_combout\ = (\i_pwm_ctrl|Add1~0_combout\) # ((\i_pwm_ctrl|Add1~7_combout\ & \i_pwm_ctrl|pwm_state.s_up~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|Add1~0_combout\,
	datac => \i_pwm_ctrl|Add1~7_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|Add1~9_combout\);

-- Location: LCFF_X37_Y26_N19
\i_pwm_ctrl|new_dc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[3]~11_combout\,
	sdata => \i_pwm_ctrl|Add1~9_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(3));

-- Location: LCCOMB_X37_Y26_N22
\i_pwm_ctrl|new_dc[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[5]~20_combout\ = (\i_pwm_ctrl|new_dc\(5) & (!\i_pwm_ctrl|new_dc[4]~19\)) # (!\i_pwm_ctrl|new_dc\(5) & (\i_pwm_ctrl|new_dc[4]~19\ & VCC))
-- \i_pwm_ctrl|new_dc[5]~21\ = CARRY((\i_pwm_ctrl|new_dc\(5) & !\i_pwm_ctrl|new_dc[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(5),
	datad => VCC,
	cin => \i_pwm_ctrl|new_dc[4]~19\,
	combout => \i_pwm_ctrl|new_dc[5]~20_combout\,
	cout => \i_pwm_ctrl|new_dc[5]~21\);

-- Location: LCCOMB_X38_Y26_N14
\i_pwm_ctrl|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~15_combout\ = (\i_pwm_ctrl|new_dc\(5) & ((\i_pwm_ctrl|Add1~13\) # (GND))) # (!\i_pwm_ctrl|new_dc\(5) & (!\i_pwm_ctrl|Add1~13\))
-- \i_pwm_ctrl|Add1~16\ = CARRY((\i_pwm_ctrl|new_dc\(5)) # (!\i_pwm_ctrl|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(5),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~13\,
	combout => \i_pwm_ctrl|Add1~15_combout\,
	cout => \i_pwm_ctrl|Add1~16\);

-- Location: LCCOMB_X38_Y26_N0
\i_pwm_ctrl|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~23_combout\ = (!\i_pwm_ctrl|pwm_state.s_up~regout\) # (!\i_pwm_ctrl|Add1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl|Add1~15_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|Add1~23_combout\);

-- Location: LCFF_X37_Y26_N23
\i_pwm_ctrl|new_dc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[5]~20_combout\,
	sdata => \i_pwm_ctrl|Add1~23_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(5));

-- Location: LCCOMB_X37_Y26_N24
\i_pwm_ctrl|new_dc[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[6]~22_combout\ = (\i_pwm_ctrl|new_dc\(6) & (\i_pwm_ctrl|new_dc[5]~21\ $ (GND))) # (!\i_pwm_ctrl|new_dc\(6) & ((GND) # (!\i_pwm_ctrl|new_dc[5]~21\)))
-- \i_pwm_ctrl|new_dc[6]~23\ = CARRY((!\i_pwm_ctrl|new_dc[5]~21\) # (!\i_pwm_ctrl|new_dc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(6),
	datad => VCC,
	cin => \i_pwm_ctrl|new_dc[5]~21\,
	combout => \i_pwm_ctrl|new_dc[6]~22_combout\,
	cout => \i_pwm_ctrl|new_dc[6]~23\);

-- Location: LCCOMB_X38_Y26_N16
\i_pwm_ctrl|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~17_combout\ = (\i_pwm_ctrl|new_dc\(6) & (!\i_pwm_ctrl|Add1~16\ & VCC)) # (!\i_pwm_ctrl|new_dc\(6) & (\i_pwm_ctrl|Add1~16\ $ (GND)))
-- \i_pwm_ctrl|Add1~18\ = CARRY((!\i_pwm_ctrl|new_dc\(6) & !\i_pwm_ctrl|Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(6),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~16\,
	combout => \i_pwm_ctrl|Add1~17_combout\,
	cout => \i_pwm_ctrl|Add1~18\);

-- Location: LCCOMB_X37_Y26_N2
\i_pwm_ctrl|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~22_combout\ = (!\i_pwm_ctrl|pwm_state.s_up~regout\) # (!\i_pwm_ctrl|Add1~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl|Add1~17_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|Add1~22_combout\);

-- Location: LCFF_X37_Y26_N25
\i_pwm_ctrl|new_dc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[6]~22_combout\,
	sdata => \i_pwm_ctrl|Add1~22_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(6));

-- Location: LCCOMB_X37_Y26_N26
\i_pwm_ctrl|new_dc[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[7]~24_combout\ = \i_pwm_ctrl|new_dc[6]~23\ $ (\i_pwm_ctrl|new_dc\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_pwm_ctrl|new_dc\(7),
	cin => \i_pwm_ctrl|new_dc[6]~23\,
	combout => \i_pwm_ctrl|new_dc[7]~24_combout\);

-- Location: LCCOMB_X38_Y26_N18
\i_pwm_ctrl|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~19_combout\ = \i_pwm_ctrl|new_dc\(7) $ (\i_pwm_ctrl|Add1~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(7),
	cin => \i_pwm_ctrl|Add1~18\,
	combout => \i_pwm_ctrl|Add1~19_combout\);

-- Location: LCCOMB_X37_Y26_N8
\i_pwm_ctrl|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~21_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & \i_pwm_ctrl|Add1~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|Add1~19_combout\,
	combout => \i_pwm_ctrl|Add1~21_combout\);

-- Location: LCFF_X37_Y26_N27
\i_pwm_ctrl|new_dc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|new_dc[7]~24_combout\,
	sdata => \i_pwm_ctrl|Add1~21_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	sload => \i_pwm_ctrl|ALT_INV_pwm_state.s_down~regout\,
	ena => \i_pwm_ctrl|new_dc[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(7));

-- Location: LCCOMB_X39_Y26_N2
\i_pwm_ctrl|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan1~0_combout\ = (\i_pwm_ctrl|Equal1~0_combout\) # ((!\i_pwm_ctrl|new_dc\(7) & ((\i_pwm_ctrl|new_dc\(6)) # (\i_pwm_ctrl|new_dc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Equal1~0_combout\,
	datab => \i_pwm_ctrl|new_dc\(7),
	datac => \i_pwm_ctrl|new_dc\(6),
	datad => \i_pwm_ctrl|new_dc\(5),
	combout => \i_pwm_ctrl|LessThan1~0_combout\);

-- Location: LCCOMB_X40_Y26_N20
\i_pwm_ctrl|dc_cnt[12]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[12]~34_combout\ = ((\i_pwm_ctrl|dc_cnt\(12) $ (\i_pwm_ctrl|pwm_state.s_down~regout\ $ (!\i_pwm_ctrl|dc_cnt[11]~33\)))) # (GND)
-- \i_pwm_ctrl|dc_cnt[12]~35\ = CARRY((\i_pwm_ctrl|dc_cnt\(12) & ((\i_pwm_ctrl|pwm_state.s_down~regout\) # (!\i_pwm_ctrl|dc_cnt[11]~33\))) # (!\i_pwm_ctrl|dc_cnt\(12) & (\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|dc_cnt[11]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(12),
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[11]~33\,
	combout => \i_pwm_ctrl|dc_cnt[12]~34_combout\,
	cout => \i_pwm_ctrl|dc_cnt[12]~35\);

-- Location: LCFF_X40_Y26_N21
\i_pwm_ctrl|dc_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[12]~34_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(12));

-- Location: LCCOMB_X40_Y26_N16
\i_pwm_ctrl|dc_cnt[10]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[10]~30_combout\ = ((\i_pwm_ctrl|dc_cnt\(10) $ (\i_pwm_ctrl|pwm_state.s_down~regout\ $ (!\i_pwm_ctrl|dc_cnt[9]~29\)))) # (GND)
-- \i_pwm_ctrl|dc_cnt[10]~31\ = CARRY((\i_pwm_ctrl|dc_cnt\(10) & ((\i_pwm_ctrl|pwm_state.s_down~regout\) # (!\i_pwm_ctrl|dc_cnt[9]~29\))) # (!\i_pwm_ctrl|dc_cnt\(10) & (\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|dc_cnt[9]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(10),
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[9]~29\,
	combout => \i_pwm_ctrl|dc_cnt[10]~30_combout\,
	cout => \i_pwm_ctrl|dc_cnt[10]~31\);

-- Location: LCFF_X40_Y26_N17
\i_pwm_ctrl|dc_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[10]~30_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(10));

-- Location: LCCOMB_X40_Y26_N18
\i_pwm_ctrl|dc_cnt[11]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[11]~32_combout\ = (\i_pwm_ctrl|dc_cnt\(11) & ((\i_pwm_ctrl|pwm_state.s_down~regout\ & (\i_pwm_ctrl|dc_cnt[10]~31\ & VCC)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt[10]~31\)))) # (!\i_pwm_ctrl|dc_cnt\(11) & 
-- ((\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt[10]~31\)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt[10]~31\) # (GND)))))
-- \i_pwm_ctrl|dc_cnt[11]~33\ = CARRY((\i_pwm_ctrl|dc_cnt\(11) & (!\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|dc_cnt[10]~31\)) # (!\i_pwm_ctrl|dc_cnt\(11) & ((!\i_pwm_ctrl|dc_cnt[10]~31\) # (!\i_pwm_ctrl|pwm_state.s_down~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(11),
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[10]~31\,
	combout => \i_pwm_ctrl|dc_cnt[11]~32_combout\,
	cout => \i_pwm_ctrl|dc_cnt[11]~33\);

-- Location: LCFF_X40_Y26_N19
\i_pwm_ctrl|dc_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[11]~32_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(11));

-- Location: LCCOMB_X39_Y26_N30
\i_pwm_ctrl|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal2~1_combout\ = (!\i_pwm_ctrl|dc_cnt\(13) & (!\i_pwm_ctrl|dc_cnt\(12) & (!\i_pwm_ctrl|dc_cnt\(10) & !\i_pwm_ctrl|dc_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(13),
	datab => \i_pwm_ctrl|dc_cnt\(12),
	datac => \i_pwm_ctrl|dc_cnt\(10),
	datad => \i_pwm_ctrl|dc_cnt\(11),
	combout => \i_pwm_ctrl|Equal2~1_combout\);

-- Location: LCCOMB_X40_Y26_N24
\i_pwm_ctrl|dc_cnt[14]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[14]~38_combout\ = ((\i_pwm_ctrl|dc_cnt\(14) $ (\i_pwm_ctrl|pwm_state.s_down~regout\ $ (!\i_pwm_ctrl|dc_cnt[13]~37\)))) # (GND)
-- \i_pwm_ctrl|dc_cnt[14]~39\ = CARRY((\i_pwm_ctrl|dc_cnt\(14) & ((\i_pwm_ctrl|pwm_state.s_down~regout\) # (!\i_pwm_ctrl|dc_cnt[13]~37\))) # (!\i_pwm_ctrl|dc_cnt\(14) & (\i_pwm_ctrl|pwm_state.s_down~regout\ & !\i_pwm_ctrl|dc_cnt[13]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(14),
	datab => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[13]~37\,
	combout => \i_pwm_ctrl|dc_cnt[14]~38_combout\,
	cout => \i_pwm_ctrl|dc_cnt[14]~39\);

-- Location: LCFF_X40_Y26_N25
\i_pwm_ctrl|dc_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[14]~38_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(14));

-- Location: LCCOMB_X39_Y26_N8
\i_pwm_ctrl|dc_cnt[2]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~45_combout\ = (\i_pwm_ctrl|Equal2~2_combout\ & (\i_pwm_ctrl|Equal2~1_combout\ & (\i_pwm_ctrl|dc_cnt\(9) & \i_pwm_ctrl|dc_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Equal2~2_combout\,
	datab => \i_pwm_ctrl|Equal2~1_combout\,
	datac => \i_pwm_ctrl|dc_cnt\(9),
	datad => \i_pwm_ctrl|dc_cnt\(14),
	combout => \i_pwm_ctrl|dc_cnt[2]~45_combout\);

-- Location: LCCOMB_X39_Y26_N18
\i_pwm_ctrl|dc_cnt[2]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~46_combout\ = (((\i_pwm_ctrl|Equal2~0_combout\ & \i_pwm_ctrl|dc_cnt[2]~45_combout\)) # (!\i_pwm_ctrl|pwm_state.s_up~regout\)) # (!\i_pwm_ctrl|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Equal2~0_combout\,
	datab => \i_pwm_ctrl|LessThan1~0_combout\,
	datac => \i_pwm_ctrl|dc_cnt[2]~45_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|dc_cnt[2]~46_combout\);

-- Location: LCCOMB_X40_Y26_N10
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

-- Location: LCFF_X40_Y26_N11
\i_pwm_ctrl|dc_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[7]~24_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(7));

-- Location: LCCOMB_X39_Y26_N12
\i_pwm_ctrl|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal2~0_combout\ = (!\i_pwm_ctrl|dc_cnt\(5) & (!\i_pwm_ctrl|dc_cnt\(7) & (!\i_pwm_ctrl|dc_cnt\(2) & !\i_pwm_ctrl|dc_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(5),
	datab => \i_pwm_ctrl|dc_cnt\(7),
	datac => \i_pwm_ctrl|dc_cnt\(2),
	datad => \i_pwm_ctrl|dc_cnt\(3),
	combout => \i_pwm_ctrl|Equal2~0_combout\);

-- Location: LCCOMB_X39_Y26_N4
\i_pwm_ctrl|dc_cnt[2]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~47_combout\ = (\i_pwm_ctrl|Equal2~1_combout\ & \i_pwm_ctrl|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|Equal2~1_combout\,
	datad => \i_pwm_ctrl|Equal2~0_combout\,
	combout => \i_pwm_ctrl|dc_cnt[2]~47_combout\);

-- Location: LCCOMB_X42_Y26_N0
\i_pwm_ctrl|dc_cnt[2]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~42_combout\ = (!\i_pwm_ctrl|dc_cnt\(6) & (!\i_pwm_ctrl|dc_cnt\(9) & (!\i_pwm_ctrl|dc_cnt\(14) & !\i_pwm_ctrl|dc_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(6),
	datab => \i_pwm_ctrl|dc_cnt\(9),
	datac => \i_pwm_ctrl|dc_cnt\(14),
	datad => \i_pwm_ctrl|dc_cnt\(4),
	combout => \i_pwm_ctrl|dc_cnt[2]~42_combout\);

-- Location: LCCOMB_X42_Y26_N18
\i_pwm_ctrl|dc_cnt[2]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~43_combout\ = (!\i_pwm_ctrl|dc_cnt\(8) & (!\i_pwm_ctrl|dc_cnt\(15) & \i_pwm_ctrl|dc_cnt[2]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(8),
	datab => \i_pwm_ctrl|dc_cnt\(15),
	datad => \i_pwm_ctrl|dc_cnt[2]~42_combout\,
	combout => \i_pwm_ctrl|dc_cnt[2]~43_combout\);

-- Location: LCCOMB_X40_Y26_N30
\i_pwm_ctrl|dc_cnt[2]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[2]~48_combout\ = ((!\i_pwm_ctrl|dc_cnt[2]~44_combout\ & ((!\i_pwm_ctrl|dc_cnt[2]~43_combout\) # (!\i_pwm_ctrl|dc_cnt[2]~47_combout\)))) # (!\i_pwm_ctrl|dc_cnt[2]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt[2]~44_combout\,
	datab => \i_pwm_ctrl|dc_cnt[2]~46_combout\,
	datac => \i_pwm_ctrl|dc_cnt[2]~47_combout\,
	datad => \i_pwm_ctrl|dc_cnt[2]~43_combout\,
	combout => \i_pwm_ctrl|dc_cnt[2]~48_combout\);

-- Location: LCFF_X40_Y26_N1
\i_pwm_ctrl|dc_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[2]~14_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(2));

-- Location: LCCOMB_X40_Y26_N2
\i_pwm_ctrl|dc_cnt[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[3]~16_combout\ = (\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt\(3) & (\i_pwm_ctrl|dc_cnt[2]~15\ & VCC)) # (!\i_pwm_ctrl|dc_cnt\(3) & (!\i_pwm_ctrl|dc_cnt[2]~15\)))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & 
-- ((\i_pwm_ctrl|dc_cnt\(3) & (!\i_pwm_ctrl|dc_cnt[2]~15\)) # (!\i_pwm_ctrl|dc_cnt\(3) & ((\i_pwm_ctrl|dc_cnt[2]~15\) # (GND)))))
-- \i_pwm_ctrl|dc_cnt[3]~17\ = CARRY((\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt\(3) & !\i_pwm_ctrl|dc_cnt[2]~15\)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & ((!\i_pwm_ctrl|dc_cnt[2]~15\) # (!\i_pwm_ctrl|dc_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|dc_cnt\(3),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[2]~15\,
	combout => \i_pwm_ctrl|dc_cnt[3]~16_combout\,
	cout => \i_pwm_ctrl|dc_cnt[3]~17\);

-- Location: LCFF_X40_Y26_N3
\i_pwm_ctrl|dc_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[3]~16_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(3));

-- Location: LCCOMB_X40_Y26_N4
\i_pwm_ctrl|dc_cnt[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[4]~18_combout\ = ((\i_pwm_ctrl|pwm_state.s_down~regout\ $ (\i_pwm_ctrl|dc_cnt\(4) $ (\i_pwm_ctrl|dc_cnt[3]~17\)))) # (GND)
-- \i_pwm_ctrl|dc_cnt[4]~19\ = CARRY((\i_pwm_ctrl|pwm_state.s_down~regout\ & (\i_pwm_ctrl|dc_cnt\(4) & !\i_pwm_ctrl|dc_cnt[3]~17\)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt\(4)) # (!\i_pwm_ctrl|dc_cnt[3]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|dc_cnt\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[3]~17\,
	combout => \i_pwm_ctrl|dc_cnt[4]~18_combout\,
	cout => \i_pwm_ctrl|dc_cnt[4]~19\);

-- Location: LCFF_X40_Y26_N5
\i_pwm_ctrl|dc_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[4]~18_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(4));

-- Location: LCCOMB_X40_Y26_N6
\i_pwm_ctrl|dc_cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[5]~20_combout\ = (\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt\(5) & (!\i_pwm_ctrl|dc_cnt[4]~19\)) # (!\i_pwm_ctrl|dc_cnt\(5) & ((\i_pwm_ctrl|dc_cnt[4]~19\) # (GND))))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & 
-- ((\i_pwm_ctrl|dc_cnt\(5) & (\i_pwm_ctrl|dc_cnt[4]~19\ & VCC)) # (!\i_pwm_ctrl|dc_cnt\(5) & (!\i_pwm_ctrl|dc_cnt[4]~19\))))
-- \i_pwm_ctrl|dc_cnt[5]~21\ = CARRY((\i_pwm_ctrl|pwm_state.s_down~regout\ & ((!\i_pwm_ctrl|dc_cnt[4]~19\) # (!\i_pwm_ctrl|dc_cnt\(5)))) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & (!\i_pwm_ctrl|dc_cnt\(5) & !\i_pwm_ctrl|dc_cnt[4]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|dc_cnt\(5),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[4]~19\,
	combout => \i_pwm_ctrl|dc_cnt[5]~20_combout\,
	cout => \i_pwm_ctrl|dc_cnt[5]~21\);

-- Location: LCFF_X40_Y26_N7
\i_pwm_ctrl|dc_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[5]~20_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(5));

-- Location: LCCOMB_X40_Y26_N8
\i_pwm_ctrl|dc_cnt[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[6]~22_combout\ = ((\i_pwm_ctrl|pwm_state.s_down~regout\ $ (\i_pwm_ctrl|dc_cnt\(6) $ (\i_pwm_ctrl|dc_cnt[5]~21\)))) # (GND)
-- \i_pwm_ctrl|dc_cnt[6]~23\ = CARRY((\i_pwm_ctrl|pwm_state.s_down~regout\ & (\i_pwm_ctrl|dc_cnt\(6) & !\i_pwm_ctrl|dc_cnt[5]~21\)) # (!\i_pwm_ctrl|pwm_state.s_down~regout\ & ((\i_pwm_ctrl|dc_cnt\(6)) # (!\i_pwm_ctrl|dc_cnt[5]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_down~regout\,
	datab => \i_pwm_ctrl|dc_cnt\(6),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[5]~21\,
	combout => \i_pwm_ctrl|dc_cnt[6]~22_combout\,
	cout => \i_pwm_ctrl|dc_cnt[6]~23\);

-- Location: LCFF_X40_Y26_N9
\i_pwm_ctrl|dc_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[6]~22_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(6));

-- Location: LCCOMB_X40_Y26_N12
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

-- Location: LCCOMB_X40_Y26_N14
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

-- Location: LCFF_X40_Y26_N15
\i_pwm_ctrl|dc_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[9]~28_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(9));

-- Location: LCCOMB_X40_Y26_N22
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

-- Location: LCFF_X40_Y26_N23
\i_pwm_ctrl|dc_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[13]~36_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(13));

-- Location: LCCOMB_X40_Y26_N26
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

-- Location: LCFF_X40_Y26_N27
\i_pwm_ctrl|dc_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[15]~40_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(15));

-- Location: LCFF_X39_Y25_N25
\i_pwm_ctrl|one_ms_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~24_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(12));

-- Location: LCFF_X40_Y26_N13
\i_pwm_ctrl|dc_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[8]~26_combout\,
	aclr => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~regout\,
	ena => \i_pwm_ctrl|dc_cnt[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(8));

-- Location: LCCOMB_X40_Y25_N4
\i_pwm_ctrl|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~1_cout\ = CARRY((\i_pwm_ctrl|dc_cnt\(2) & !\i_pwm_ctrl|one_ms_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(2),
	datab => \i_pwm_ctrl|one_ms_cnt\(2),
	datad => VCC,
	cout => \i_pwm_ctrl|LessThan0~1_cout\);

-- Location: LCCOMB_X40_Y25_N6
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

-- Location: LCCOMB_X40_Y25_N8
\i_pwm_ctrl|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~5_cout\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(4) & (\i_pwm_ctrl|dc_cnt\(4) & !\i_pwm_ctrl|LessThan0~3_cout\)) # (!\i_pwm_ctrl|one_ms_cnt\(4) & ((\i_pwm_ctrl|dc_cnt\(4)) # (!\i_pwm_ctrl|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(4),
	datab => \i_pwm_ctrl|dc_cnt\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~3_cout\,
	cout => \i_pwm_ctrl|LessThan0~5_cout\);

-- Location: LCCOMB_X40_Y25_N10
\i_pwm_ctrl|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~7_cout\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(5) & ((!\i_pwm_ctrl|LessThan0~5_cout\) # (!\i_pwm_ctrl|dc_cnt\(5)))) # (!\i_pwm_ctrl|one_ms_cnt\(5) & (!\i_pwm_ctrl|dc_cnt\(5) & !\i_pwm_ctrl|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(5),
	datab => \i_pwm_ctrl|dc_cnt\(5),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~5_cout\,
	cout => \i_pwm_ctrl|LessThan0~7_cout\);

-- Location: LCCOMB_X40_Y25_N12
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

-- Location: LCCOMB_X40_Y25_N14
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

-- Location: LCCOMB_X40_Y25_N16
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

-- Location: LCCOMB_X40_Y25_N18
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

-- Location: LCCOMB_X40_Y25_N20
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

-- Location: LCCOMB_X40_Y25_N22
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

-- Location: LCCOMB_X40_Y25_N24
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

-- Location: LCCOMB_X40_Y25_N26
\i_pwm_ctrl|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~23_cout\ = CARRY((\i_pwm_ctrl|dc_cnt\(13) & (\i_pwm_ctrl|one_ms_cnt\(13) & !\i_pwm_ctrl|LessThan0~21_cout\)) # (!\i_pwm_ctrl|dc_cnt\(13) & ((\i_pwm_ctrl|one_ms_cnt\(13)) # (!\i_pwm_ctrl|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(13),
	datab => \i_pwm_ctrl|one_ms_cnt\(13),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~21_cout\,
	cout => \i_pwm_ctrl|LessThan0~23_cout\);

-- Location: LCCOMB_X40_Y25_N28
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

-- Location: LCCOMB_X40_Y25_N30
\i_pwm_ctrl|LessThan0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~26_combout\ = (\i_pwm_ctrl|one_ms_cnt\(15) & (\i_pwm_ctrl|LessThan0~25_cout\ & \i_pwm_ctrl|dc_cnt\(15))) # (!\i_pwm_ctrl|one_ms_cnt\(15) & ((\i_pwm_ctrl|LessThan0~25_cout\) # (\i_pwm_ctrl|dc_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(15),
	datad => \i_pwm_ctrl|dc_cnt\(15),
	cin => \i_pwm_ctrl|LessThan0~25_cout\,
	combout => \i_pwm_ctrl|LessThan0~26_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_serial_uart|tx~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fpga_out_tx);

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(0));

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(1));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(2));

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(3));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(4));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(5));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(6));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(0));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(1));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(2));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(4));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(5));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(6));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(0));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(1));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(2));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(3));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(4));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(5));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(6));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


