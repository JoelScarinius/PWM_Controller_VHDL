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

-- DATE "05/10/2023 11:20:34"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PWM_Controller IS
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
END PWM_Controller;

-- Design Ports Information
-- fpga_out_tx	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[0]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[3]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[4]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[6]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[0]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[3]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[5]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[6]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[0]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[2]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[3]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[4]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[5]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[9]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[0]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- key_n[2]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock_50	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fpga_in_rx	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PWM_Controller IS
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
SIGNAL \clock_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_pwm_ctrl|dc_cnt[4]~18_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[9]~28_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~13_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~17_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~6_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~3_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector1~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_no~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~18_combout\ : std_logic;
SIGNAL \i_key_ctrl|in_key_off_n_2r~regout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux0~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux0~1_combout\ : std_logic;
SIGNAL \i_key_ctrl|in_key_off_n_r~regout\ : std_logic;
SIGNAL \i_key_ctrl|in_key_off_n~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector5~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data[7]~feeder_combout\ : std_logic;
SIGNAL \i_key_ctrl|in_key_off_n_2r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data[1]~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data[2]~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data[4]~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data[5]~feeder_combout\ : std_logic;
SIGNAL \i_key_ctrl|in_key_off_n_r~feeder_combout\ : std_logic;
SIGNAL \fpga_in_rx~combout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_2r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~9_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~16\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~18\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~21\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~22_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~23\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~24_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~20_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~25\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[8]~26_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_rx_data~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector14~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector11~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data[6]~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector4~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector1~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_en~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[8]~19_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~10\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~11_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~12\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~14\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~15_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~1_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~2_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \i_serial_uart|received_error~_Duplicate_1_regout\ : std_logic;
SIGNAL \i_serial_uart|received_error~0_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_50~clkctrl_outclk\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~6_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~1\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~3\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~5\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~7\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~8_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~5_combout\ : std_logic;
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
SIGNAL \i_pwm_ctrl|Add0~28_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~24_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~20_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~12_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~10_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal0~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~29\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~30_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|one_ms_cnt~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~14_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_in_states.s_pulse_high~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_in_states.s_pulse_high~regout\ : std_logic;
SIGNAL \i_key_ctrl|Selector0~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_off~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector10~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector6~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector7~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector8~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector9~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector10~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector11~1_combout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux0~2_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data_valid~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data_valid~regout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_off_out~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector9~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_off~regout\ : std_logic;
SIGNAL \i_key_ctrl|in_key_on_n~feeder_combout\ : std_logic;
SIGNAL \i_key_ctrl|in_key_on_n~regout\ : std_logic;
SIGNAL \i_key_ctrl|in_key_on_n_r~feeder_combout\ : std_logic;
SIGNAL \i_key_ctrl|in_key_on_n_r~regout\ : std_logic;
SIGNAL \i_key_ctrl|in_key_on_n_2r~feeder_combout\ : std_logic;
SIGNAL \i_key_ctrl|in_key_on_n_2r~regout\ : std_logic;
SIGNAL \i_key_ctrl|Selector1~0_combout\ : std_logic;
SIGNAL \i_key_ctrl|key_on~regout\ : std_logic;
SIGNAL \i_serial_ctrl|Mux1~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl|serial_on_out~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector10~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector10~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_up~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~23_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~10_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~21_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal1~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~13\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~14_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~16_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~19_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[7]~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|new_dc[7]~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~1\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Selector8~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|pwm_state.s_on~regout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~22_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~3\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~5\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~7\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~8_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~17_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~9\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~11\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~12_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add1~20_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|LessThan1~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[6]~42_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[2]~15\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[3]~16_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[3]~17\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[4]~19\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[5]~20_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[5]~21\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[6]~23\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[7]~25\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[8]~26_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[8]~27\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[9]~29\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[10]~30_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[10]~31\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[11]~33\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[12]~34_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[12]~35\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[13]~37\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[14]~38_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[14]~39\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[15]~40_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[13]~36_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[11]~32_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[7]~24_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|dc_cnt[6]~22_combout\ : std_logic;
SIGNAL \i_pwm_ctrl|Add0~6_combout\ : std_logic;
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
SIGNAL \i_serial_uart|rx_byte_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_serial_uart|received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \key_n~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_pwm_ctrl|dc_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_pwm_ctrl|new_dc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_pwm_ctrl|one_ms_cnt\ : std_logic_vector(15 DOWNTO 0);

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

\clock_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_50~combout\);

-- Location: LCFF_X20_Y19_N17
\i_pwm_ctrl|dc_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[9]~28_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(9));

-- Location: LCFF_X20_Y19_N7
\i_pwm_ctrl|dc_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[4]~18_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(4));

-- Location: LCFF_X46_Y20_N11
\i_serial_uart|rx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[4]~17_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(4));

-- Location: LCFF_X46_Y20_N7
\i_serial_uart|rx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[2]~13_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(2));

-- Location: LCCOMB_X20_Y19_N6
\i_pwm_ctrl|dc_cnt[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[4]~18_combout\ = (\i_pwm_ctrl|dc_cnt\(4) & ((GND) # (!\i_pwm_ctrl|dc_cnt[3]~17\))) # (!\i_pwm_ctrl|dc_cnt\(4) & (\i_pwm_ctrl|dc_cnt[3]~17\ $ (GND)))
-- \i_pwm_ctrl|dc_cnt[4]~19\ = CARRY((\i_pwm_ctrl|dc_cnt\(4)) # (!\i_pwm_ctrl|dc_cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[3]~17\,
	combout => \i_pwm_ctrl|dc_cnt[4]~18_combout\,
	cout => \i_pwm_ctrl|dc_cnt[4]~19\);

-- Location: LCCOMB_X20_Y19_N16
\i_pwm_ctrl|dc_cnt[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[9]~28_combout\ = (\i_pwm_ctrl|dc_cnt\(9) & (!\i_pwm_ctrl|dc_cnt[8]~27\)) # (!\i_pwm_ctrl|dc_cnt\(9) & ((\i_pwm_ctrl|dc_cnt[8]~27\) # (GND)))
-- \i_pwm_ctrl|dc_cnt[9]~29\ = CARRY((!\i_pwm_ctrl|dc_cnt[8]~27\) # (!\i_pwm_ctrl|dc_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(9),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[8]~27\,
	combout => \i_pwm_ctrl|dc_cnt[9]~28_combout\,
	cout => \i_pwm_ctrl|dc_cnt[9]~29\);

-- Location: LCCOMB_X46_Y20_N6
\i_serial_uart|rx_bit_cnt[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[2]~13_combout\ = (\i_serial_uart|rx_bit_cnt\(2) & (\i_serial_uart|rx_bit_cnt[1]~12\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(2) & (!\i_serial_uart|rx_bit_cnt[1]~12\ & VCC))
-- \i_serial_uart|rx_bit_cnt[2]~14\ = CARRY((\i_serial_uart|rx_bit_cnt\(2) & !\i_serial_uart|rx_bit_cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(2),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[1]~12\,
	combout => \i_serial_uart|rx_bit_cnt[2]~13_combout\,
	cout => \i_serial_uart|rx_bit_cnt[2]~14\);

-- Location: LCCOMB_X46_Y20_N10
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

-- Location: LCCOMB_X47_Y22_N22
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

-- Location: LCCOMB_X46_Y20_N20
\i_serial_uart|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~0_combout\ = ((!\i_serial_uart|rx_bit_cnt\(6) & ((!\i_serial_uart|rx_bit_cnt\(5)) # (!\i_serial_uart|rx_bit_cnt\(4))))) # (!\i_serial_uart|rx_bit_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(4),
	datab => \i_serial_uart|rx_bit_cnt\(6),
	datac => \i_serial_uart|rx_bit_cnt\(7),
	datad => \i_serial_uart|rx_bit_cnt\(5),
	combout => \i_serial_uart|LessThan0~0_combout\);

-- Location: LCFF_X47_Y20_N7
\i_serial_uart|rx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(1));

-- Location: LCCOMB_X18_Y18_N12
\i_pwm_ctrl|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~3_combout\ = (!\i_pwm_ctrl|one_ms_cnt\(2) & (!\i_pwm_ctrl|one_ms_cnt\(3) & (!\i_pwm_ctrl|one_ms_cnt\(0) & !\i_pwm_ctrl|one_ms_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(2),
	datab => \i_pwm_ctrl|one_ms_cnt\(3),
	datac => \i_pwm_ctrl|one_ms_cnt\(0),
	datad => \i_pwm_ctrl|one_ms_cnt\(1),
	combout => \i_pwm_ctrl|Equal0~3_combout\);

-- Location: LCFF_X47_Y22_N13
\i_pwm_ctrl|new_dc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add1~18_combout\,
	ena => \i_pwm_ctrl|new_dc[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(3));

-- Location: LCCOMB_X47_Y20_N20
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

-- Location: LCCOMB_X47_Y20_N24
\i_serial_uart|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector12~0_combout\ = (\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_cnt_wrap~regout\ & (\i_serial_uart|rx_bit_no\(0) & \i_serial_uart|rx_state.s_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector12~0_combout\);

-- Location: LCCOMB_X47_Y20_N26
\i_serial_uart|rx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_no~0_combout\ = ((\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_no\(0) & \i_serial_uart|rx_bit_no\(2)))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_bit_no\(2),
	combout => \i_serial_uart|rx_bit_no~0_combout\);

-- Location: LCCOMB_X47_Y20_N12
\i_serial_uart|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~0_combout\ = (\i_serial_uart|rx_state.s_rx_data~regout\ & (\i_serial_uart|rx_bit_no\(1) $ (((\i_serial_uart|rx_bit_no\(0) & !\i_serial_uart|rx_bit_no~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|rx_bit_no~0_combout\,
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector13~0_combout\);

-- Location: LCCOMB_X47_Y20_N6
\i_serial_uart|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~1_combout\ = (\i_serial_uart|Selector13~0_combout\) # ((\i_serial_uart|rx_bit_no\(1) & \i_serial_uart|rx_state.s_stop_bit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector13~0_combout\,
	datac => \i_serial_uart|rx_bit_no\(1),
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector13~1_combout\);

-- Location: LCCOMB_X47_Y22_N12
\i_pwm_ctrl|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~18_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & (((\i_pwm_ctrl|Add1~6_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_up~regout\ & ((\i_pwm_ctrl|Selector10~0_combout\) # ((!\i_pwm_ctrl|pwm_state.s_on~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Selector10~0_combout\,
	datab => \i_pwm_ctrl|Add1~6_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|pwm_state.s_on~regout\,
	combout => \i_pwm_ctrl|Add1~18_combout\);

-- Location: LCFF_X48_Y22_N17
\i_key_ctrl|in_key_off_n_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|in_key_off_n_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|in_key_off_n_2r~regout\);

-- Location: LCFF_X48_Y20_N19
\i_serial_uart|received_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data[1]~feeder_combout\,
	ena => \i_serial_uart|received_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(1));

-- Location: LCFF_X48_Y20_N5
\i_serial_uart|received_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data[2]~feeder_combout\,
	ena => \i_serial_uart|received_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(2));

-- Location: LCFF_X48_Y20_N7
\i_serial_uart|received_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|rx_byte_int\(3),
	sload => VCC,
	ena => \i_serial_uart|received_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(3));

-- Location: LCFF_X48_Y20_N9
\i_serial_uart|received_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data[4]~feeder_combout\,
	ena => \i_serial_uart|received_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(4));

-- Location: LCCOMB_X48_Y20_N6
\i_serial_ctrl|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux0~0_combout\ = (!\i_serial_uart|received_data\(2) & (!\i_serial_uart|received_data\(4) & (!\i_serial_uart|received_data\(3) & !\i_serial_uart|received_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(2),
	datab => \i_serial_uart|received_data\(4),
	datac => \i_serial_uart|received_data\(3),
	datad => \i_serial_uart|received_data\(1),
	combout => \i_serial_ctrl|Mux0~0_combout\);

-- Location: LCFF_X48_Y20_N3
\i_serial_uart|received_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data[5]~feeder_combout\,
	ena => \i_serial_uart|received_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(5));

-- Location: LCFF_X48_Y20_N13
\i_serial_uart|received_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|rx_byte_int\(6),
	sload => VCC,
	ena => \i_serial_uart|received_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(6));

-- Location: LCFF_X48_Y20_N23
\i_serial_uart|received_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data[7]~feeder_combout\,
	ena => \i_serial_uart|received_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(7));

-- Location: LCCOMB_X48_Y20_N12
\i_serial_ctrl|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux0~1_combout\ = (\i_serial_ctrl|Mux0~0_combout\ & (!\i_serial_uart|received_data\(5) & (!\i_serial_uart|received_data\(6) & !\i_serial_uart|received_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_ctrl|Mux0~0_combout\,
	datab => \i_serial_uart|received_data\(5),
	datac => \i_serial_uart|received_data\(6),
	datad => \i_serial_uart|received_data\(7),
	combout => \i_serial_ctrl|Mux0~1_combout\);

-- Location: LCFF_X48_Y22_N13
\i_key_ctrl|in_key_off_n_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|in_key_off_n_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|in_key_off_n_r~regout\);

-- Location: LCFF_X48_Y20_N21
\i_serial_uart|rx_byte_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(6));

-- Location: LCFF_X48_Y22_N23
\i_key_ctrl|in_key_off_n\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \key_n~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|in_key_off_n~regout\);

-- Location: LCCOMB_X48_Y20_N20
\i_serial_uart|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector5~0_combout\ = (\i_serial_uart|Selector10~0_combout\ & ((\i_serial_uart|rx_byte_int\(6)) # ((\i_serial_uart|Selector11~0_combout\ & \i_serial_uart|rx_2r~regout\)))) # (!\i_serial_uart|Selector10~0_combout\ & 
-- (\i_serial_uart|Selector11~0_combout\ & ((\i_serial_uart|rx_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector10~0_combout\,
	datab => \i_serial_uart|Selector11~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(6),
	datad => \i_serial_uart|rx_2r~regout\,
	combout => \i_serial_uart|Selector5~0_combout\);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X48_Y20_N22
\i_serial_uart|received_data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data[7]~feeder_combout\ = \i_serial_uart|rx_2r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|rx_2r~regout\,
	combout => \i_serial_uart|received_data[7]~feeder_combout\);

-- Location: LCCOMB_X48_Y22_N16
\i_key_ctrl|in_key_off_n_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|in_key_off_n_2r~feeder_combout\ = \i_key_ctrl|in_key_off_n_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|in_key_off_n_r~regout\,
	combout => \i_key_ctrl|in_key_off_n_2r~feeder_combout\);

-- Location: LCCOMB_X48_Y20_N18
\i_serial_uart|received_data[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data[1]~feeder_combout\ = \i_serial_uart|rx_byte_int\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|rx_byte_int\(1),
	combout => \i_serial_uart|received_data[1]~feeder_combout\);

-- Location: LCCOMB_X48_Y20_N4
\i_serial_uart|received_data[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data[2]~feeder_combout\ = \i_serial_uart|rx_byte_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|rx_byte_int\(2),
	combout => \i_serial_uart|received_data[2]~feeder_combout\);

-- Location: LCCOMB_X48_Y20_N8
\i_serial_uart|received_data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data[4]~feeder_combout\ = \i_serial_uart|rx_byte_int\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|rx_byte_int\(4),
	combout => \i_serial_uart|received_data[4]~feeder_combout\);

-- Location: LCCOMB_X48_Y20_N2
\i_serial_uart|received_data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data[5]~feeder_combout\ = \i_serial_uart|rx_byte_int\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|rx_byte_int\(5),
	combout => \i_serial_uart|received_data[5]~feeder_combout\);

-- Location: LCCOMB_X48_Y22_N12
\i_key_ctrl|in_key_off_n_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|in_key_off_n_r~feeder_combout\ = \i_key_ctrl|in_key_off_n~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|in_key_off_n~regout\,
	combout => \i_key_ctrl|in_key_off_n_r~feeder_combout\);

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y20_N2
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

-- Location: LCFF_X49_Y20_N3
\i_serial_uart|rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_r~regout\);

-- Location: LCCOMB_X49_Y20_N24
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

-- Location: LCFF_X49_Y20_N25
\i_serial_uart|rx_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_2r~regout\);

-- Location: LCCOMB_X46_Y20_N2
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

-- Location: LCCOMB_X46_Y20_N8
\i_serial_uart|rx_bit_cnt[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[3]~15_combout\ = (\i_serial_uart|rx_bit_cnt\(3) & (!\i_serial_uart|rx_bit_cnt[2]~14\)) # (!\i_serial_uart|rx_bit_cnt\(3) & ((\i_serial_uart|rx_bit_cnt[2]~14\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[3]~16\ = CARRY((!\i_serial_uart|rx_bit_cnt[2]~14\) # (!\i_serial_uart|rx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(3),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[2]~14\,
	combout => \i_serial_uart|rx_bit_cnt[3]~15_combout\,
	cout => \i_serial_uart|rx_bit_cnt[3]~16\);

-- Location: LCCOMB_X46_Y20_N12
\i_serial_uart|rx_bit_cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[5]~20_combout\ = (\i_serial_uart|rx_bit_cnt\(5) & (!\i_serial_uart|rx_bit_cnt[4]~18\)) # (!\i_serial_uart|rx_bit_cnt\(5) & ((\i_serial_uart|rx_bit_cnt[4]~18\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[5]~21\ = CARRY((!\i_serial_uart|rx_bit_cnt[4]~18\) # (!\i_serial_uart|rx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(5),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[4]~18\,
	combout => \i_serial_uart|rx_bit_cnt[5]~20_combout\,
	cout => \i_serial_uart|rx_bit_cnt[5]~21\);

-- Location: LCCOMB_X46_Y20_N14
\i_serial_uart|rx_bit_cnt[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[6]~22_combout\ = (\i_serial_uart|rx_bit_cnt\(6) & (\i_serial_uart|rx_bit_cnt[5]~21\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(6) & (!\i_serial_uart|rx_bit_cnt[5]~21\ & VCC))
-- \i_serial_uart|rx_bit_cnt[6]~23\ = CARRY((\i_serial_uart|rx_bit_cnt\(6) & !\i_serial_uart|rx_bit_cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(6),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[5]~21\,
	combout => \i_serial_uart|rx_bit_cnt[6]~22_combout\,
	cout => \i_serial_uart|rx_bit_cnt[6]~23\);

-- Location: LCFF_X46_Y20_N15
\i_serial_uart|rx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[6]~22_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(6));

-- Location: LCCOMB_X46_Y20_N16
\i_serial_uart|rx_bit_cnt[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[7]~24_combout\ = (\i_serial_uart|rx_bit_cnt\(7) & (!\i_serial_uart|rx_bit_cnt[6]~23\)) # (!\i_serial_uart|rx_bit_cnt\(7) & ((\i_serial_uart|rx_bit_cnt[6]~23\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[7]~25\ = CARRY((!\i_serial_uart|rx_bit_cnt[6]~23\) # (!\i_serial_uart|rx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(7),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[6]~23\,
	combout => \i_serial_uart|rx_bit_cnt[7]~24_combout\,
	cout => \i_serial_uart|rx_bit_cnt[7]~25\);

-- Location: LCFF_X46_Y20_N17
\i_serial_uart|rx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[7]~24_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(7));

-- Location: LCFF_X46_Y20_N13
\i_serial_uart|rx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[5]~20_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(5));

-- Location: LCCOMB_X46_Y20_N30
\i_serial_uart|rx_bit_cnt_half~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~0_combout\ = (\i_serial_uart|rx_bit_cnt\(7) & ((\i_serial_uart|rx_bit_cnt\(5)) # ((\i_serial_uart|rx_bit_cnt\(4) & \i_serial_uart|rx_bit_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(4),
	datab => \i_serial_uart|rx_bit_cnt\(3),
	datac => \i_serial_uart|rx_bit_cnt\(7),
	datad => \i_serial_uart|rx_bit_cnt\(5),
	combout => \i_serial_uart|rx_bit_cnt_half~0_combout\);

-- Location: LCCOMB_X46_Y20_N18
\i_serial_uart|rx_bit_cnt[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[8]~26_combout\ = \i_serial_uart|rx_bit_cnt[7]~25\ $ (!\i_serial_uart|rx_bit_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|rx_bit_cnt\(8),
	cin => \i_serial_uart|rx_bit_cnt[7]~25\,
	combout => \i_serial_uart|rx_bit_cnt[8]~26_combout\);

-- Location: LCFF_X46_Y20_N19
\i_serial_uart|rx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[8]~26_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(8));

-- Location: LCCOMB_X46_Y20_N28
\i_serial_uart|rx_bit_cnt_half~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~1_combout\ = (\i_serial_uart|rx_bit_cnt_en~regout\ & ((\i_serial_uart|rx_bit_cnt\(8)) # ((\i_serial_uart|rx_bit_cnt_half~0_combout\ & \i_serial_uart|rx_bit_cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_en~regout\,
	datab => \i_serial_uart|rx_bit_cnt_half~0_combout\,
	datac => \i_serial_uart|rx_bit_cnt\(6),
	datad => \i_serial_uart|rx_bit_cnt\(8),
	combout => \i_serial_uart|rx_bit_cnt_half~1_combout\);

-- Location: LCFF_X46_Y20_N29
\i_serial_uart|rx_bit_cnt_half\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_half~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_half~regout\);

-- Location: LCCOMB_X47_Y20_N18
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

-- Location: LCFF_X47_Y20_N19
\i_serial_uart|rx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(2));

-- Location: LCCOMB_X47_Y20_N30
\i_serial_uart|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector2~0_combout\ = (((!\i_serial_uart|rx_bit_no\(2)) # (!\i_serial_uart|rx_bit_no\(0))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\)) # (!\i_serial_uart|rx_bit_no\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_bit_no\(2),
	combout => \i_serial_uart|Selector2~0_combout\);

-- Location: LCCOMB_X47_Y20_N22
\i_serial_uart|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector2~1_combout\ = (\i_serial_uart|rx_state.s_idle~regout\ & (((\i_serial_uart|rx_state.s_rx_data~regout\ & \i_serial_uart|Selector2~0_combout\)))) # (!\i_serial_uart|rx_state.s_idle~regout\ & ((\i_serial_uart|rx_bit_cnt_half~regout\) # 
-- ((\i_serial_uart|rx_state.s_rx_data~regout\ & \i_serial_uart|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_idle~regout\,
	datab => \i_serial_uart|rx_bit_cnt_half~regout\,
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|Selector2~0_combout\,
	combout => \i_serial_uart|Selector2~1_combout\);

-- Location: LCFF_X47_Y20_N23
\i_serial_uart|rx_state.s_rx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_rx_data~regout\);

-- Location: LCCOMB_X47_Y20_N28
\i_serial_uart|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector14~0_combout\ = (\i_serial_uart|rx_bit_no\(0) & ((\i_serial_uart|rx_state.s_stop_bit~regout\) # ((\i_serial_uart|rx_bit_no~0_combout\ & \i_serial_uart|rx_state.s_rx_data~regout\)))) # (!\i_serial_uart|rx_bit_no\(0) & 
-- (!\i_serial_uart|rx_bit_no~0_combout\ & (\i_serial_uart|rx_state.s_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no~0_combout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector14~0_combout\);

-- Location: LCFF_X47_Y20_N29
\i_serial_uart|rx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(0));

-- Location: LCCOMB_X47_Y20_N16
\i_serial_uart|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector11~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_rx_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector11~0_combout\);

-- Location: LCCOMB_X47_Y20_N0
\i_serial_uart|received_data[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data[6]~0_combout\ = (\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|Selector11~0_combout\ & \i_serial_uart|rx_bit_no\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|Selector11~0_combout\,
	datad => \i_serial_uart|rx_bit_no\(2),
	combout => \i_serial_uart|received_data[6]~0_combout\);

-- Location: LCCOMB_X47_Y20_N2
\i_serial_uart|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector4~0_combout\ = (\i_serial_uart|received_data[6]~0_combout\) # ((!\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_stop_bit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|received_data[6]~0_combout\,
	combout => \i_serial_uart|Selector4~0_combout\);

-- Location: LCFF_X47_Y20_N3
\i_serial_uart|rx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X47_Y20_N10
\i_serial_uart|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector1~1_combout\ = (\i_serial_uart|rx_bit_cnt_half~regout\ & (((!\i_serial_uart|rx_state.s_stop_bit~regout\)) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\))) # (!\i_serial_uart|rx_bit_cnt_half~regout\ & 
-- (\i_serial_uart|rx_state.s_idle~regout\ & ((!\i_serial_uart|rx_state.s_stop_bit~regout\) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_half~regout\,
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_state.s_idle~regout\,
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector1~1_combout\);

-- Location: LCFF_X47_Y20_N11
\i_serial_uart|rx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_idle~regout\);

-- Location: LCCOMB_X47_Y20_N4
\i_serial_uart|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector0~0_combout\ = (!\i_serial_uart|Selector1~0_combout\ & ((\i_serial_uart|rx_state.s_idle~regout\) # ((!\i_serial_uart|rx_bit_cnt_half~regout\ & !\i_serial_uart|rx_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector1~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt_half~regout\,
	datac => \i_serial_uart|rx_2r~regout\,
	datad => \i_serial_uart|rx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector0~0_combout\);

-- Location: LCFF_X47_Y20_N5
\i_serial_uart|rx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_en~regout\);

-- Location: LCCOMB_X46_Y20_N26
\i_serial_uart|rx_bit_cnt[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[8]~19_combout\ = (!\i_serial_uart|rx_bit_cnt_en~regout\) # (!\i_serial_uart|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|LessThan0~2_combout\,
	datad => \i_serial_uart|rx_bit_cnt_en~regout\,
	combout => \i_serial_uart|rx_bit_cnt[8]~19_combout\);

-- Location: LCFF_X46_Y20_N3
\i_serial_uart|rx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[0]~9_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(0));

-- Location: LCCOMB_X46_Y20_N4
\i_serial_uart|rx_bit_cnt[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[1]~11_combout\ = (\i_serial_uart|rx_bit_cnt\(1) & (!\i_serial_uart|rx_bit_cnt[0]~10\)) # (!\i_serial_uart|rx_bit_cnt\(1) & ((\i_serial_uart|rx_bit_cnt[0]~10\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[1]~12\ = CARRY((!\i_serial_uart|rx_bit_cnt[0]~10\) # (!\i_serial_uart|rx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(1),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[0]~10\,
	combout => \i_serial_uart|rx_bit_cnt[1]~11_combout\,
	cout => \i_serial_uart|rx_bit_cnt[1]~12\);

-- Location: LCFF_X46_Y20_N5
\i_serial_uart|rx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[1]~11_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(1));

-- Location: LCFF_X46_Y20_N9
\i_serial_uart|rx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[3]~15_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(3));

-- Location: LCCOMB_X46_Y20_N22
\i_serial_uart|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~1_combout\ = (!\i_serial_uart|rx_bit_cnt\(2) & (!\i_serial_uart|rx_bit_cnt\(3) & (!\i_serial_uart|rx_bit_cnt\(1) & !\i_serial_uart|rx_bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(2),
	datab => \i_serial_uart|rx_bit_cnt\(3),
	datac => \i_serial_uart|rx_bit_cnt\(1),
	datad => \i_serial_uart|rx_bit_cnt\(0),
	combout => \i_serial_uart|LessThan0~1_combout\);

-- Location: LCCOMB_X46_Y20_N0
\i_serial_uart|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~2_combout\ = (\i_serial_uart|LessThan0~0_combout\) # (((\i_serial_uart|LessThan0~1_combout\ & !\i_serial_uart|rx_bit_cnt\(6))) # (!\i_serial_uart|rx_bit_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|LessThan0~0_combout\,
	datab => \i_serial_uart|LessThan0~1_combout\,
	datac => \i_serial_uart|rx_bit_cnt\(6),
	datad => \i_serial_uart|rx_bit_cnt\(8),
	combout => \i_serial_uart|LessThan0~2_combout\);

-- Location: LCCOMB_X46_Y20_N24
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

-- Location: LCFF_X46_Y20_N25
\i_serial_uart|rx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_wrap~regout\);

-- Location: LCFF_X47_Y20_N9
\i_serial_uart|received_error~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_error~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_error~_Duplicate_1_regout\);

-- Location: LCCOMB_X47_Y20_N8
\i_serial_uart|received_error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_error~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & ((\i_serial_uart|rx_state.s_stop_bit~regout\ & (!\i_serial_uart|rx_2r~regout\)) # (!\i_serial_uart|rx_state.s_stop_bit~regout\ & 
-- ((\i_serial_uart|received_error~_Duplicate_1_regout\))))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & (((\i_serial_uart|received_error~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|received_error~_Duplicate_1_regout\,
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|received_error~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X19_Y18_N0
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

-- Location: LCCOMB_X18_Y18_N4
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

-- Location: LCFF_X18_Y18_N5
\i_pwm_ctrl|one_ms_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(0));

-- Location: LCCOMB_X19_Y18_N2
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

-- Location: LCFF_X19_Y18_N3
\i_pwm_ctrl|one_ms_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(1));

-- Location: LCCOMB_X19_Y18_N4
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

-- Location: LCFF_X19_Y18_N5
\i_pwm_ctrl|one_ms_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(2));

-- Location: LCCOMB_X19_Y18_N6
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

-- Location: LCCOMB_X19_Y18_N8
\i_pwm_ctrl|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add0~8_combout\ = (\i_pwm_ctrl|one_ms_cnt\(4) & (\i_pwm_ctrl|Add0~7\ $ (GND))) # (!\i_pwm_ctrl|one_ms_cnt\(4) & (!\i_pwm_ctrl|Add0~7\ & VCC))
-- \i_pwm_ctrl|Add0~9\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(4) & !\i_pwm_ctrl|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|one_ms_cnt\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|Add0~7\,
	combout => \i_pwm_ctrl|Add0~8_combout\,
	cout => \i_pwm_ctrl|Add0~9\);

-- Location: LCCOMB_X18_Y18_N18
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

-- Location: LCFF_X18_Y18_N19
\i_pwm_ctrl|one_ms_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(4));

-- Location: LCCOMB_X19_Y18_N10
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

-- Location: LCCOMB_X19_Y18_N12
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

-- Location: LCCOMB_X19_Y18_N14
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

-- Location: LCFF_X19_Y18_N15
\i_pwm_ctrl|one_ms_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(7));

-- Location: LCCOMB_X19_Y18_N16
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

-- Location: LCCOMB_X18_Y18_N6
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

-- Location: LCFF_X18_Y18_N7
\i_pwm_ctrl|one_ms_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(8));

-- Location: LCCOMB_X19_Y18_N18
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

-- Location: LCCOMB_X18_Y18_N28
\i_pwm_ctrl|one_ms_cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt~2_combout\ = (!\i_pwm_ctrl|Equal0~4_combout\ & \i_pwm_ctrl|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|Equal0~4_combout\,
	datad => \i_pwm_ctrl|Add0~18_combout\,
	combout => \i_pwm_ctrl|one_ms_cnt~2_combout\);

-- Location: LCFF_X18_Y18_N29
\i_pwm_ctrl|one_ms_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(9));

-- Location: LCCOMB_X19_Y18_N20
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

-- Location: LCCOMB_X19_Y18_N22
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

-- Location: LCFF_X19_Y18_N23
\i_pwm_ctrl|one_ms_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(11));

-- Location: LCCOMB_X19_Y18_N24
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

-- Location: LCCOMB_X19_Y18_N26
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

-- Location: LCFF_X19_Y18_N27
\i_pwm_ctrl|one_ms_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(13));

-- Location: LCCOMB_X19_Y18_N28
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

-- Location: LCCOMB_X18_Y18_N2
\i_pwm_ctrl|one_ms_cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt~1_combout\ = (!\i_pwm_ctrl|Equal0~4_combout\ & \i_pwm_ctrl|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|Equal0~4_combout\,
	datad => \i_pwm_ctrl|Add0~28_combout\,
	combout => \i_pwm_ctrl|one_ms_cnt~1_combout\);

-- Location: LCFF_X18_Y18_N3
\i_pwm_ctrl|one_ms_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(14));

-- Location: LCFF_X19_Y18_N25
\i_pwm_ctrl|one_ms_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(12));

-- Location: LCCOMB_X18_Y18_N22
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

-- Location: LCFF_X19_Y18_N21
\i_pwm_ctrl|one_ms_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(10));

-- Location: LCCOMB_X18_Y18_N24
\i_pwm_ctrl|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~1_combout\ = (\i_pwm_ctrl|one_ms_cnt\(8) & (\i_pwm_ctrl|one_ms_cnt\(9) & (!\i_pwm_ctrl|one_ms_cnt\(10) & !\i_pwm_ctrl|one_ms_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(8),
	datab => \i_pwm_ctrl|one_ms_cnt\(9),
	datac => \i_pwm_ctrl|one_ms_cnt\(10),
	datad => \i_pwm_ctrl|one_ms_cnt\(11),
	combout => \i_pwm_ctrl|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y18_N8
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

-- Location: LCFF_X18_Y18_N9
\i_pwm_ctrl|one_ms_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(6));

-- Location: LCFF_X19_Y18_N11
\i_pwm_ctrl|one_ms_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(5));

-- Location: LCCOMB_X18_Y18_N26
\i_pwm_ctrl|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~2_combout\ = (!\i_pwm_ctrl|one_ms_cnt\(7) & (\i_pwm_ctrl|one_ms_cnt\(6) & (!\i_pwm_ctrl|one_ms_cnt\(5) & \i_pwm_ctrl|one_ms_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(7),
	datab => \i_pwm_ctrl|one_ms_cnt\(6),
	datac => \i_pwm_ctrl|one_ms_cnt\(5),
	datad => \i_pwm_ctrl|one_ms_cnt\(4),
	combout => \i_pwm_ctrl|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y18_N30
\i_pwm_ctrl|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal0~4_combout\ = (\i_pwm_ctrl|Equal0~3_combout\ & (\i_pwm_ctrl|Equal0~0_combout\ & (\i_pwm_ctrl|Equal0~1_combout\ & \i_pwm_ctrl|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Equal0~3_combout\,
	datab => \i_pwm_ctrl|Equal0~0_combout\,
	datac => \i_pwm_ctrl|Equal0~1_combout\,
	datad => \i_pwm_ctrl|Equal0~2_combout\,
	combout => \i_pwm_ctrl|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y18_N30
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

-- Location: LCCOMB_X18_Y18_N0
\i_pwm_ctrl|one_ms_cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|one_ms_cnt~0_combout\ = (!\i_pwm_ctrl|Equal0~4_combout\ & \i_pwm_ctrl|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|Equal0~4_combout\,
	datad => \i_pwm_ctrl|Add0~30_combout\,
	combout => \i_pwm_ctrl|one_ms_cnt~0_combout\);

-- Location: LCFF_X18_Y18_N1
\i_pwm_ctrl|one_ms_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|one_ms_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(15));

-- Location: LCCOMB_X20_Y19_N2
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

-- Location: LCCOMB_X48_Y22_N26
\i_key_ctrl|key_in_states.s_pulse_high~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|key_in_states.s_pulse_high~0_combout\ = !\i_key_ctrl|key_in_states.s_pulse_high~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl|key_in_states.s_pulse_high~regout\,
	combout => \i_key_ctrl|key_in_states.s_pulse_high~0_combout\);

-- Location: LCFF_X48_Y22_N27
\i_key_ctrl|key_in_states.s_pulse_high\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|key_in_states.s_pulse_high~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_in_states.s_pulse_high~regout\);

-- Location: LCCOMB_X48_Y22_N30
\i_key_ctrl|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Selector0~0_combout\ = (!\i_key_ctrl|key_in_states.s_pulse_high~regout\ & ((\i_key_ctrl|in_key_off_n_2r~regout\) # (\i_key_ctrl|key_off~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|in_key_off_n_2r~regout\,
	datab => \i_key_ctrl|key_in_states.s_pulse_high~regout\,
	datac => \i_key_ctrl|key_off~regout\,
	combout => \i_key_ctrl|Selector0~0_combout\);

-- Location: LCFF_X48_Y22_N31
\i_key_ctrl|key_off\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_off~regout\);

-- Location: LCCOMB_X47_Y20_N14
\i_serial_uart|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector10~0_combout\ = (\i_serial_uart|rx_state.s_stop_bit~regout\) # ((\i_serial_uart|rx_state.s_rx_data~regout\ & !\i_serial_uart|rx_bit_cnt_wrap~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector10~0_combout\);

-- Location: LCCOMB_X48_Y20_N10
\i_serial_uart|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector6~0_combout\ = (\i_serial_uart|rx_byte_int\(6) & ((\i_serial_uart|Selector11~0_combout\) # ((\i_serial_uart|rx_byte_int\(5) & \i_serial_uart|Selector10~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(6) & 
-- (((\i_serial_uart|rx_byte_int\(5) & \i_serial_uart|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(6),
	datab => \i_serial_uart|Selector11~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(5),
	datad => \i_serial_uart|Selector10~0_combout\,
	combout => \i_serial_uart|Selector6~0_combout\);

-- Location: LCFF_X48_Y20_N11
\i_serial_uart|rx_byte_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(5));

-- Location: LCCOMB_X48_Y20_N0
\i_serial_uart|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector7~0_combout\ = (\i_serial_uart|Selector10~0_combout\ & ((\i_serial_uart|rx_byte_int\(4)) # ((\i_serial_uart|Selector11~0_combout\ & \i_serial_uart|rx_byte_int\(5))))) # (!\i_serial_uart|Selector10~0_combout\ & 
-- (\i_serial_uart|Selector11~0_combout\ & ((\i_serial_uart|rx_byte_int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector10~0_combout\,
	datab => \i_serial_uart|Selector11~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(4),
	datad => \i_serial_uart|rx_byte_int\(5),
	combout => \i_serial_uart|Selector7~0_combout\);

-- Location: LCFF_X48_Y20_N1
\i_serial_uart|rx_byte_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(4));

-- Location: LCCOMB_X48_Y20_N14
\i_serial_uart|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector8~0_combout\ = (\i_serial_uart|Selector10~0_combout\ & ((\i_serial_uart|rx_byte_int\(3)) # ((\i_serial_uart|Selector11~0_combout\ & \i_serial_uart|rx_byte_int\(4))))) # (!\i_serial_uart|Selector10~0_combout\ & 
-- (\i_serial_uart|Selector11~0_combout\ & ((\i_serial_uart|rx_byte_int\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector10~0_combout\,
	datab => \i_serial_uart|Selector11~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(3),
	datad => \i_serial_uart|rx_byte_int\(4),
	combout => \i_serial_uart|Selector8~0_combout\);

-- Location: LCFF_X48_Y20_N15
\i_serial_uart|rx_byte_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(3));

-- Location: LCCOMB_X48_Y20_N28
\i_serial_uart|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector9~0_combout\ = (\i_serial_uart|Selector10~0_combout\ & ((\i_serial_uart|rx_byte_int\(2)) # ((\i_serial_uart|rx_byte_int\(3) & \i_serial_uart|Selector11~0_combout\)))) # (!\i_serial_uart|Selector10~0_combout\ & 
-- (\i_serial_uart|rx_byte_int\(3) & ((\i_serial_uart|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector10~0_combout\,
	datab => \i_serial_uart|rx_byte_int\(3),
	datac => \i_serial_uart|rx_byte_int\(2),
	datad => \i_serial_uart|Selector11~0_combout\,
	combout => \i_serial_uart|Selector9~0_combout\);

-- Location: LCFF_X48_Y20_N29
\i_serial_uart|rx_byte_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(2));

-- Location: LCCOMB_X48_Y20_N26
\i_serial_uart|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector10~1_combout\ = (\i_serial_uart|Selector10~0_combout\ & ((\i_serial_uart|rx_byte_int\(1)) # ((\i_serial_uart|Selector11~0_combout\ & \i_serial_uart|rx_byte_int\(2))))) # (!\i_serial_uart|Selector10~0_combout\ & 
-- (\i_serial_uart|Selector11~0_combout\ & ((\i_serial_uart|rx_byte_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector10~0_combout\,
	datab => \i_serial_uart|Selector11~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(1),
	datad => \i_serial_uart|rx_byte_int\(2),
	combout => \i_serial_uart|Selector10~1_combout\);

-- Location: LCFF_X48_Y20_N27
\i_serial_uart|rx_byte_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(1));

-- Location: LCCOMB_X48_Y20_N24
\i_serial_uart|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector11~1_combout\ = (\i_serial_uart|Selector10~0_combout\ & ((\i_serial_uart|rx_byte_int\(0)) # ((\i_serial_uart|Selector11~0_combout\ & \i_serial_uart|rx_byte_int\(1))))) # (!\i_serial_uart|Selector10~0_combout\ & 
-- (\i_serial_uart|Selector11~0_combout\ & ((\i_serial_uart|rx_byte_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector10~0_combout\,
	datab => \i_serial_uart|Selector11~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(0),
	datad => \i_serial_uart|rx_byte_int\(1),
	combout => \i_serial_uart|Selector11~1_combout\);

-- Location: LCFF_X48_Y20_N25
\i_serial_uart|rx_byte_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(0));

-- Location: LCFF_X48_Y20_N17
\i_serial_uart|received_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|rx_byte_int\(0),
	sload => VCC,
	ena => \i_serial_uart|received_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(0));

-- Location: LCCOMB_X49_Y20_N22
\i_serial_ctrl|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux0~2_combout\ = (\i_serial_ctrl|Mux0~1_combout\ & !\i_serial_uart|received_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_ctrl|Mux0~1_combout\,
	datad => \i_serial_uart|received_data\(0),
	combout => \i_serial_ctrl|Mux0~2_combout\);

-- Location: LCCOMB_X49_Y20_N8
\i_serial_uart|received_data_valid~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data_valid~0_combout\ = (\i_serial_uart|rx_2r~regout\ & (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_stop_bit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|received_data_valid~0_combout\);

-- Location: LCFF_X49_Y20_N9
\i_serial_uart|received_data_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data_valid~regout\);

-- Location: LCFF_X49_Y20_N23
\i_serial_ctrl|serial_off_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_ctrl|Mux0~2_combout\,
	ena => \i_serial_uart|received_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_ctrl|serial_off_out~regout\);

-- Location: LCCOMB_X48_Y22_N28
\i_pwm_ctrl|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector9~0_combout\ = (!\i_pwm_ctrl|pwm_state.s_off~regout\ & ((\i_serial_ctrl|serial_off_out~regout\) # (!\i_key_ctrl|key_off~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl|key_off~regout\,
	datac => \i_pwm_ctrl|pwm_state.s_off~regout\,
	datad => \i_serial_ctrl|serial_off_out~regout\,
	combout => \i_pwm_ctrl|Selector9~0_combout\);

-- Location: LCFF_X48_Y22_N29
\i_pwm_ctrl|pwm_state.s_off\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_off~regout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y22_N28
\i_key_ctrl|in_key_on_n~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|in_key_on_n~feeder_combout\ = \key_n~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\(1),
	combout => \i_key_ctrl|in_key_on_n~feeder_combout\);

-- Location: LCFF_X49_Y22_N29
\i_key_ctrl|in_key_on_n\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|in_key_on_n~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|in_key_on_n~regout\);

-- Location: LCCOMB_X49_Y22_N2
\i_key_ctrl|in_key_on_n_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|in_key_on_n_r~feeder_combout\ = \i_key_ctrl|in_key_on_n~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|in_key_on_n~regout\,
	combout => \i_key_ctrl|in_key_on_n_r~feeder_combout\);

-- Location: LCFF_X49_Y22_N3
\i_key_ctrl|in_key_on_n_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|in_key_on_n_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|in_key_on_n_r~regout\);

-- Location: LCCOMB_X49_Y22_N24
\i_key_ctrl|in_key_on_n_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|in_key_on_n_2r~feeder_combout\ = \i_key_ctrl|in_key_on_n_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl|in_key_on_n_r~regout\,
	combout => \i_key_ctrl|in_key_on_n_2r~feeder_combout\);

-- Location: LCFF_X49_Y22_N25
\i_key_ctrl|in_key_on_n_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|in_key_on_n_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|in_key_on_n_2r~regout\);

-- Location: LCCOMB_X48_Y22_N8
\i_key_ctrl|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_key_ctrl|Selector1~0_combout\ = (!\i_key_ctrl|key_in_states.s_pulse_high~regout\ & ((\i_key_ctrl|key_on~regout\) # ((\i_key_ctrl|in_key_off_n_2r~regout\ & \i_key_ctrl|in_key_on_n_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|in_key_off_n_2r~regout\,
	datab => \i_key_ctrl|key_in_states.s_pulse_high~regout\,
	datac => \i_key_ctrl|key_on~regout\,
	datad => \i_key_ctrl|in_key_on_n_2r~regout\,
	combout => \i_key_ctrl|Selector1~0_combout\);

-- Location: LCFF_X48_Y22_N9
\i_key_ctrl|key_on\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_key_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_key_ctrl|key_on~regout\);

-- Location: LCCOMB_X49_Y20_N12
\i_serial_ctrl|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_ctrl|Mux1~0_combout\ = (\i_serial_ctrl|Mux0~1_combout\ & \i_serial_uart|received_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_ctrl|Mux0~1_combout\,
	datad => \i_serial_uart|received_data\(0),
	combout => \i_serial_ctrl|Mux1~0_combout\);

-- Location: LCFF_X49_Y20_N13
\i_serial_ctrl|serial_on_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_ctrl|Mux1~0_combout\,
	ena => \i_serial_uart|received_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_ctrl|serial_on_out~regout\);

-- Location: LCCOMB_X48_Y22_N2
\i_pwm_ctrl|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector10~0_combout\ = (\i_key_ctrl|key_on~regout\ & !\i_serial_ctrl|serial_on_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl|key_on~regout\,
	datad => \i_serial_ctrl|serial_on_out~regout\,
	combout => \i_pwm_ctrl|Selector10~0_combout\);

-- Location: LCCOMB_X48_Y22_N0
\i_pwm_ctrl|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector10~1_combout\ = (\i_pwm_ctrl|pwm_state.s_off~regout\ & (((\i_pwm_ctrl|Selector10~0_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_off~regout\ & (\i_key_ctrl|key_off~regout\ & ((!\i_serial_ctrl|serial_off_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl|key_off~regout\,
	datab => \i_pwm_ctrl|pwm_state.s_off~regout\,
	datac => \i_pwm_ctrl|Selector10~0_combout\,
	datad => \i_serial_ctrl|serial_off_out~regout\,
	combout => \i_pwm_ctrl|Selector10~1_combout\);

-- Location: LCFF_X48_Y22_N1
\i_pwm_ctrl|pwm_state.s_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_up~regout\);

-- Location: LCCOMB_X47_Y22_N16
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

-- Location: LCCOMB_X47_Y22_N14
\i_pwm_ctrl|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~23_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & \i_pwm_ctrl|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datac => \i_pwm_ctrl|Add1~0_combout\,
	combout => \i_pwm_ctrl|Add1~23_combout\);

-- Location: LCCOMB_X47_Y22_N26
\i_pwm_ctrl|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~10_combout\ = (\i_pwm_ctrl|new_dc\(5) & (!\i_pwm_ctrl|Add1~9\)) # (!\i_pwm_ctrl|new_dc\(5) & ((\i_pwm_ctrl|Add1~9\) # (GND)))
-- \i_pwm_ctrl|Add1~11\ = CARRY((!\i_pwm_ctrl|Add1~9\) # (!\i_pwm_ctrl|new_dc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(5),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~9\,
	combout => \i_pwm_ctrl|Add1~10_combout\,
	cout => \i_pwm_ctrl|Add1~11\);

-- Location: LCCOMB_X47_Y22_N10
\i_pwm_ctrl|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~21_combout\ = (\i_pwm_ctrl|Add1~10_combout\ & \i_pwm_ctrl|pwm_state.s_up~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|Add1~10_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|Add1~21_combout\);

-- Location: LCFF_X47_Y22_N11
\i_pwm_ctrl|new_dc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add1~21_combout\,
	ena => \i_pwm_ctrl|new_dc[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(5));

-- Location: LCCOMB_X48_Y22_N18
\i_pwm_ctrl|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal1~1_combout\ = (!\i_pwm_ctrl|new_dc\(0) & (!\i_pwm_ctrl|new_dc\(6) & (!\i_pwm_ctrl|new_dc\(1) & !\i_pwm_ctrl|new_dc\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(0),
	datab => \i_pwm_ctrl|new_dc\(6),
	datac => \i_pwm_ctrl|new_dc\(1),
	datad => \i_pwm_ctrl|new_dc\(5),
	combout => \i_pwm_ctrl|Equal1~1_combout\);

-- Location: LCCOMB_X47_Y22_N28
\i_pwm_ctrl|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~12_combout\ = (\i_pwm_ctrl|new_dc\(6) & (\i_pwm_ctrl|Add1~11\ $ (GND))) # (!\i_pwm_ctrl|new_dc\(6) & (!\i_pwm_ctrl|Add1~11\ & VCC))
-- \i_pwm_ctrl|Add1~13\ = CARRY((\i_pwm_ctrl|new_dc\(6) & !\i_pwm_ctrl|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(6),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~11\,
	combout => \i_pwm_ctrl|Add1~12_combout\,
	cout => \i_pwm_ctrl|Add1~13\);

-- Location: LCCOMB_X47_Y22_N30
\i_pwm_ctrl|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~14_combout\ = \i_pwm_ctrl|new_dc\(7) $ (\i_pwm_ctrl|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(7),
	cin => \i_pwm_ctrl|Add1~13\,
	combout => \i_pwm_ctrl|Add1~14_combout\);

-- Location: LCCOMB_X47_Y22_N8
\i_pwm_ctrl|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~16_combout\ = (\i_pwm_ctrl|Add1~14_combout\ & \i_pwm_ctrl|pwm_state.s_up~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|Add1~14_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|Add1~16_combout\);

-- Location: LCFF_X47_Y22_N9
\i_pwm_ctrl|new_dc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add1~16_combout\,
	ena => \i_pwm_ctrl|new_dc[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(7));

-- Location: LCCOMB_X47_Y22_N20
\i_pwm_ctrl|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~4_combout\ = (\i_pwm_ctrl|new_dc\(2) & (\i_pwm_ctrl|Add1~3\ $ (GND))) # (!\i_pwm_ctrl|new_dc\(2) & (!\i_pwm_ctrl|Add1~3\ & VCC))
-- \i_pwm_ctrl|Add1~5\ = CARRY((\i_pwm_ctrl|new_dc\(2) & !\i_pwm_ctrl|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(2),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~3\,
	combout => \i_pwm_ctrl|Add1~4_combout\,
	cout => \i_pwm_ctrl|Add1~5\);

-- Location: LCCOMB_X47_Y22_N6
\i_pwm_ctrl|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~19_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & \i_pwm_ctrl|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datac => \i_pwm_ctrl|Add1~4_combout\,
	combout => \i_pwm_ctrl|Add1~19_combout\);

-- Location: LCFF_X47_Y22_N7
\i_pwm_ctrl|new_dc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add1~19_combout\,
	ena => \i_pwm_ctrl|new_dc[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(2));

-- Location: LCCOMB_X47_Y22_N0
\i_pwm_ctrl|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Equal1~0_combout\ = (!\i_pwm_ctrl|new_dc\(3) & (!\i_pwm_ctrl|new_dc\(4) & (!\i_pwm_ctrl|new_dc\(7) & !\i_pwm_ctrl|new_dc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(3),
	datab => \i_pwm_ctrl|new_dc\(4),
	datac => \i_pwm_ctrl|new_dc\(7),
	datad => \i_pwm_ctrl|new_dc\(2),
	combout => \i_pwm_ctrl|Equal1~0_combout\);

-- Location: LCCOMB_X48_Y22_N4
\i_pwm_ctrl|new_dc[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[7]~0_combout\ = (\i_pwm_ctrl|pwm_state.s_on~regout\) # ((\i_pwm_ctrl|Equal1~1_combout\ & \i_pwm_ctrl|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|pwm_state.s_on~regout\,
	datab => \i_pwm_ctrl|Equal1~1_combout\,
	datac => \i_pwm_ctrl|Equal1~0_combout\,
	combout => \i_pwm_ctrl|new_dc[7]~0_combout\);

-- Location: LCCOMB_X48_Y22_N14
\i_pwm_ctrl|new_dc[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|new_dc[7]~1_combout\ = (\i_pwm_ctrl|new_dc[7]~0_combout\ & ((\i_pwm_ctrl|LessThan1~0_combout\) # (!\i_pwm_ctrl|pwm_state.s_up~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|LessThan1~0_combout\,
	datac => \i_pwm_ctrl|new_dc[7]~0_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|new_dc[7]~1_combout\);

-- Location: LCFF_X47_Y22_N15
\i_pwm_ctrl|new_dc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add1~23_combout\,
	ena => \i_pwm_ctrl|new_dc[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(0));

-- Location: LCCOMB_X47_Y22_N18
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

-- Location: LCCOMB_X48_Y22_N24
\i_pwm_ctrl|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Selector8~0_combout\ = ((\i_key_ctrl|key_on~regout\ & !\i_serial_ctrl|serial_on_out~regout\)) # (!\i_pwm_ctrl|pwm_state.s_off~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|pwm_state.s_off~regout\,
	datac => \i_key_ctrl|key_on~regout\,
	datad => \i_serial_ctrl|serial_on_out~regout\,
	combout => \i_pwm_ctrl|Selector8~0_combout\);

-- Location: LCFF_X48_Y22_N25
\i_pwm_ctrl|pwm_state.s_on\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|pwm_state.s_on~regout\);

-- Location: LCCOMB_X47_Y22_N4
\i_pwm_ctrl|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~22_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & (((\i_pwm_ctrl|Add1~2_combout\)))) # (!\i_pwm_ctrl|pwm_state.s_up~regout\ & ((\i_pwm_ctrl|Selector10~0_combout\) # ((!\i_pwm_ctrl|pwm_state.s_on~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|Selector10~0_combout\,
	datab => \i_pwm_ctrl|Add1~2_combout\,
	datac => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datad => \i_pwm_ctrl|pwm_state.s_on~regout\,
	combout => \i_pwm_ctrl|Add1~22_combout\);

-- Location: LCFF_X47_Y22_N5
\i_pwm_ctrl|new_dc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add1~22_combout\,
	ena => \i_pwm_ctrl|new_dc[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(1));

-- Location: LCCOMB_X47_Y22_N24
\i_pwm_ctrl|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~8_combout\ = (\i_pwm_ctrl|new_dc\(4) & (\i_pwm_ctrl|Add1~7\ $ (GND))) # (!\i_pwm_ctrl|new_dc\(4) & (!\i_pwm_ctrl|Add1~7\ & VCC))
-- \i_pwm_ctrl|Add1~9\ = CARRY((\i_pwm_ctrl|new_dc\(4) & !\i_pwm_ctrl|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|new_dc\(4),
	datad => VCC,
	cin => \i_pwm_ctrl|Add1~7\,
	combout => \i_pwm_ctrl|Add1~8_combout\,
	cout => \i_pwm_ctrl|Add1~9\);

-- Location: LCCOMB_X47_Y22_N2
\i_pwm_ctrl|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~17_combout\ = (\i_pwm_ctrl|pwm_state.s_up~regout\ & \i_pwm_ctrl|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|pwm_state.s_up~regout\,
	datac => \i_pwm_ctrl|Add1~8_combout\,
	combout => \i_pwm_ctrl|Add1~17_combout\);

-- Location: LCFF_X47_Y22_N3
\i_pwm_ctrl|new_dc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add1~17_combout\,
	ena => \i_pwm_ctrl|new_dc[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(4));

-- Location: LCCOMB_X48_Y22_N10
\i_pwm_ctrl|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|Add1~20_combout\ = (\i_pwm_ctrl|Add1~12_combout\ & \i_pwm_ctrl|pwm_state.s_up~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|Add1~12_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|Add1~20_combout\);

-- Location: LCFF_X48_Y22_N11
\i_pwm_ctrl|new_dc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add1~20_combout\,
	ena => \i_pwm_ctrl|new_dc[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|new_dc\(6));

-- Location: LCCOMB_X48_Y22_N20
\i_pwm_ctrl|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan1~0_combout\ = (\i_pwm_ctrl|Equal1~0_combout\) # ((!\i_pwm_ctrl|new_dc\(7) & ((!\i_pwm_ctrl|new_dc\(6)) # (!\i_pwm_ctrl|new_dc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|new_dc\(5),
	datab => \i_pwm_ctrl|new_dc\(6),
	datac => \i_pwm_ctrl|Equal1~0_combout\,
	datad => \i_pwm_ctrl|new_dc\(7),
	combout => \i_pwm_ctrl|LessThan1~0_combout\);

-- Location: LCCOMB_X48_Y22_N6
\i_pwm_ctrl|dc_cnt[6]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[6]~42_combout\ = (\i_pwm_ctrl|LessThan1~0_combout\ & \i_pwm_ctrl|pwm_state.s_up~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl|LessThan1~0_combout\,
	datad => \i_pwm_ctrl|pwm_state.s_up~regout\,
	combout => \i_pwm_ctrl|dc_cnt[6]~42_combout\);

-- Location: LCFF_X20_Y19_N3
\i_pwm_ctrl|dc_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[2]~14_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(2));

-- Location: LCCOMB_X20_Y19_N4
\i_pwm_ctrl|dc_cnt[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[3]~16_combout\ = (\i_pwm_ctrl|dc_cnt\(3) & (!\i_pwm_ctrl|dc_cnt[2]~15\)) # (!\i_pwm_ctrl|dc_cnt\(3) & ((\i_pwm_ctrl|dc_cnt[2]~15\) # (GND)))
-- \i_pwm_ctrl|dc_cnt[3]~17\ = CARRY((!\i_pwm_ctrl|dc_cnt[2]~15\) # (!\i_pwm_ctrl|dc_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|dc_cnt\(3),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[2]~15\,
	combout => \i_pwm_ctrl|dc_cnt[3]~16_combout\,
	cout => \i_pwm_ctrl|dc_cnt[3]~17\);

-- Location: LCFF_X20_Y19_N5
\i_pwm_ctrl|dc_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[3]~16_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(3));

-- Location: LCCOMB_X20_Y19_N8
\i_pwm_ctrl|dc_cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[5]~20_combout\ = (\i_pwm_ctrl|dc_cnt\(5) & (\i_pwm_ctrl|dc_cnt[4]~19\ & VCC)) # (!\i_pwm_ctrl|dc_cnt\(5) & (!\i_pwm_ctrl|dc_cnt[4]~19\))
-- \i_pwm_ctrl|dc_cnt[5]~21\ = CARRY((!\i_pwm_ctrl|dc_cnt\(5) & !\i_pwm_ctrl|dc_cnt[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|dc_cnt\(5),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[4]~19\,
	combout => \i_pwm_ctrl|dc_cnt[5]~20_combout\,
	cout => \i_pwm_ctrl|dc_cnt[5]~21\);

-- Location: LCFF_X20_Y19_N9
\i_pwm_ctrl|dc_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[5]~20_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(5));

-- Location: LCCOMB_X20_Y19_N10
\i_pwm_ctrl|dc_cnt[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[6]~22_combout\ = (\i_pwm_ctrl|dc_cnt\(6) & ((GND) # (!\i_pwm_ctrl|dc_cnt[5]~21\))) # (!\i_pwm_ctrl|dc_cnt\(6) & (\i_pwm_ctrl|dc_cnt[5]~21\ $ (GND)))
-- \i_pwm_ctrl|dc_cnt[6]~23\ = CARRY((\i_pwm_ctrl|dc_cnt\(6)) # (!\i_pwm_ctrl|dc_cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(6),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[5]~21\,
	combout => \i_pwm_ctrl|dc_cnt[6]~22_combout\,
	cout => \i_pwm_ctrl|dc_cnt[6]~23\);

-- Location: LCCOMB_X20_Y19_N12
\i_pwm_ctrl|dc_cnt[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[7]~24_combout\ = (\i_pwm_ctrl|dc_cnt\(7) & (\i_pwm_ctrl|dc_cnt[6]~23\ & VCC)) # (!\i_pwm_ctrl|dc_cnt\(7) & (!\i_pwm_ctrl|dc_cnt[6]~23\))
-- \i_pwm_ctrl|dc_cnt[7]~25\ = CARRY((!\i_pwm_ctrl|dc_cnt\(7) & !\i_pwm_ctrl|dc_cnt[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(7),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[6]~23\,
	combout => \i_pwm_ctrl|dc_cnt[7]~24_combout\,
	cout => \i_pwm_ctrl|dc_cnt[7]~25\);

-- Location: LCCOMB_X20_Y19_N14
\i_pwm_ctrl|dc_cnt[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[8]~26_combout\ = (\i_pwm_ctrl|dc_cnt\(8) & ((GND) # (!\i_pwm_ctrl|dc_cnt[7]~25\))) # (!\i_pwm_ctrl|dc_cnt\(8) & (\i_pwm_ctrl|dc_cnt[7]~25\ $ (GND)))
-- \i_pwm_ctrl|dc_cnt[8]~27\ = CARRY((\i_pwm_ctrl|dc_cnt\(8)) # (!\i_pwm_ctrl|dc_cnt[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|dc_cnt\(8),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[7]~25\,
	combout => \i_pwm_ctrl|dc_cnt[8]~26_combout\,
	cout => \i_pwm_ctrl|dc_cnt[8]~27\);

-- Location: LCFF_X20_Y19_N15
\i_pwm_ctrl|dc_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[8]~26_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(8));

-- Location: LCCOMB_X20_Y19_N18
\i_pwm_ctrl|dc_cnt[10]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[10]~30_combout\ = (\i_pwm_ctrl|dc_cnt\(10) & (\i_pwm_ctrl|dc_cnt[9]~29\ $ (GND))) # (!\i_pwm_ctrl|dc_cnt\(10) & (!\i_pwm_ctrl|dc_cnt[9]~29\ & VCC))
-- \i_pwm_ctrl|dc_cnt[10]~31\ = CARRY((\i_pwm_ctrl|dc_cnt\(10) & !\i_pwm_ctrl|dc_cnt[9]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|dc_cnt\(10),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[9]~29\,
	combout => \i_pwm_ctrl|dc_cnt[10]~30_combout\,
	cout => \i_pwm_ctrl|dc_cnt[10]~31\);

-- Location: LCFF_X20_Y19_N19
\i_pwm_ctrl|dc_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[10]~30_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(10));

-- Location: LCCOMB_X20_Y19_N20
\i_pwm_ctrl|dc_cnt[11]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[11]~32_combout\ = (\i_pwm_ctrl|dc_cnt\(11) & (!\i_pwm_ctrl|dc_cnt[10]~31\)) # (!\i_pwm_ctrl|dc_cnt\(11) & ((\i_pwm_ctrl|dc_cnt[10]~31\) # (GND)))
-- \i_pwm_ctrl|dc_cnt[11]~33\ = CARRY((!\i_pwm_ctrl|dc_cnt[10]~31\) # (!\i_pwm_ctrl|dc_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(11),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[10]~31\,
	combout => \i_pwm_ctrl|dc_cnt[11]~32_combout\,
	cout => \i_pwm_ctrl|dc_cnt[11]~33\);

-- Location: LCCOMB_X20_Y19_N22
\i_pwm_ctrl|dc_cnt[12]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[12]~34_combout\ = (\i_pwm_ctrl|dc_cnt\(12) & (\i_pwm_ctrl|dc_cnt[11]~33\ $ (GND))) # (!\i_pwm_ctrl|dc_cnt\(12) & (!\i_pwm_ctrl|dc_cnt[11]~33\ & VCC))
-- \i_pwm_ctrl|dc_cnt[12]~35\ = CARRY((\i_pwm_ctrl|dc_cnt\(12) & !\i_pwm_ctrl|dc_cnt[11]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|dc_cnt\(12),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[11]~33\,
	combout => \i_pwm_ctrl|dc_cnt[12]~34_combout\,
	cout => \i_pwm_ctrl|dc_cnt[12]~35\);

-- Location: LCFF_X20_Y19_N23
\i_pwm_ctrl|dc_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[12]~34_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(12));

-- Location: LCCOMB_X20_Y19_N24
\i_pwm_ctrl|dc_cnt[13]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[13]~36_combout\ = (\i_pwm_ctrl|dc_cnt\(13) & (!\i_pwm_ctrl|dc_cnt[12]~35\)) # (!\i_pwm_ctrl|dc_cnt\(13) & ((\i_pwm_ctrl|dc_cnt[12]~35\) # (GND)))
-- \i_pwm_ctrl|dc_cnt[13]~37\ = CARRY((!\i_pwm_ctrl|dc_cnt[12]~35\) # (!\i_pwm_ctrl|dc_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(13),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[12]~35\,
	combout => \i_pwm_ctrl|dc_cnt[13]~36_combout\,
	cout => \i_pwm_ctrl|dc_cnt[13]~37\);

-- Location: LCCOMB_X20_Y19_N26
\i_pwm_ctrl|dc_cnt[14]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[14]~38_combout\ = (\i_pwm_ctrl|dc_cnt\(14) & (\i_pwm_ctrl|dc_cnt[13]~37\ $ (GND))) # (!\i_pwm_ctrl|dc_cnt\(14) & (!\i_pwm_ctrl|dc_cnt[13]~37\ & VCC))
-- \i_pwm_ctrl|dc_cnt[14]~39\ = CARRY((\i_pwm_ctrl|dc_cnt\(14) & !\i_pwm_ctrl|dc_cnt[13]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl|dc_cnt\(14),
	datad => VCC,
	cin => \i_pwm_ctrl|dc_cnt[13]~37\,
	combout => \i_pwm_ctrl|dc_cnt[14]~38_combout\,
	cout => \i_pwm_ctrl|dc_cnt[14]~39\);

-- Location: LCFF_X20_Y19_N27
\i_pwm_ctrl|dc_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[14]~38_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(14));

-- Location: LCCOMB_X20_Y19_N28
\i_pwm_ctrl|dc_cnt[15]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|dc_cnt[15]~40_combout\ = \i_pwm_ctrl|dc_cnt[14]~39\ $ (\i_pwm_ctrl|dc_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_pwm_ctrl|dc_cnt\(15),
	cin => \i_pwm_ctrl|dc_cnt[14]~39\,
	combout => \i_pwm_ctrl|dc_cnt[15]~40_combout\);

-- Location: LCFF_X20_Y19_N29
\i_pwm_ctrl|dc_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[15]~40_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(15));

-- Location: LCFF_X20_Y19_N25
\i_pwm_ctrl|dc_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[13]~36_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(13));

-- Location: LCFF_X20_Y19_N21
\i_pwm_ctrl|dc_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[11]~32_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(11));

-- Location: LCFF_X20_Y19_N13
\i_pwm_ctrl|dc_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[7]~24_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(7));

-- Location: LCFF_X20_Y19_N11
\i_pwm_ctrl|dc_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|dc_cnt[6]~22_combout\,
	ena => \i_pwm_ctrl|dc_cnt[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|dc_cnt\(6));

-- Location: LCFF_X19_Y18_N7
\i_pwm_ctrl|one_ms_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_pwm_ctrl|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_pwm_ctrl|one_ms_cnt\(3));

-- Location: LCCOMB_X19_Y19_N0
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

-- Location: LCCOMB_X19_Y19_N2
\i_pwm_ctrl|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~3_cout\ = CARRY((\i_pwm_ctrl|dc_cnt\(3) & (\i_pwm_ctrl|one_ms_cnt\(3) & !\i_pwm_ctrl|LessThan0~1_cout\)) # (!\i_pwm_ctrl|dc_cnt\(3) & ((\i_pwm_ctrl|one_ms_cnt\(3)) # (!\i_pwm_ctrl|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(3),
	datab => \i_pwm_ctrl|one_ms_cnt\(3),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~1_cout\,
	cout => \i_pwm_ctrl|LessThan0~3_cout\);

-- Location: LCCOMB_X19_Y19_N4
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

-- Location: LCCOMB_X19_Y19_N6
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

-- Location: LCCOMB_X19_Y19_N8
\i_pwm_ctrl|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~9_cout\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(6) & (\i_pwm_ctrl|dc_cnt\(6) & !\i_pwm_ctrl|LessThan0~7_cout\)) # (!\i_pwm_ctrl|one_ms_cnt\(6) & ((\i_pwm_ctrl|dc_cnt\(6)) # (!\i_pwm_ctrl|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(6),
	datab => \i_pwm_ctrl|dc_cnt\(6),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~7_cout\,
	cout => \i_pwm_ctrl|LessThan0~9_cout\);

-- Location: LCCOMB_X19_Y19_N10
\i_pwm_ctrl|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~11_cout\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(7) & ((!\i_pwm_ctrl|LessThan0~9_cout\) # (!\i_pwm_ctrl|dc_cnt\(7)))) # (!\i_pwm_ctrl|one_ms_cnt\(7) & (!\i_pwm_ctrl|dc_cnt\(7) & !\i_pwm_ctrl|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(7),
	datab => \i_pwm_ctrl|dc_cnt\(7),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~9_cout\,
	cout => \i_pwm_ctrl|LessThan0~11_cout\);

-- Location: LCCOMB_X19_Y19_N12
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

-- Location: LCCOMB_X19_Y19_N14
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

-- Location: LCCOMB_X19_Y19_N16
\i_pwm_ctrl|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~17_cout\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(10) & (\i_pwm_ctrl|dc_cnt\(10) & !\i_pwm_ctrl|LessThan0~15_cout\)) # (!\i_pwm_ctrl|one_ms_cnt\(10) & ((\i_pwm_ctrl|dc_cnt\(10)) # (!\i_pwm_ctrl|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(10),
	datab => \i_pwm_ctrl|dc_cnt\(10),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~15_cout\,
	cout => \i_pwm_ctrl|LessThan0~17_cout\);

-- Location: LCCOMB_X19_Y19_N18
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

-- Location: LCCOMB_X19_Y19_N20
\i_pwm_ctrl|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~21_cout\ = CARRY((\i_pwm_ctrl|one_ms_cnt\(12) & (\i_pwm_ctrl|dc_cnt\(12) & !\i_pwm_ctrl|LessThan0~19_cout\)) # (!\i_pwm_ctrl|one_ms_cnt\(12) & ((\i_pwm_ctrl|dc_cnt\(12)) # (!\i_pwm_ctrl|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(12),
	datab => \i_pwm_ctrl|dc_cnt\(12),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~19_cout\,
	cout => \i_pwm_ctrl|LessThan0~21_cout\);

-- Location: LCCOMB_X19_Y19_N22
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

-- Location: LCCOMB_X19_Y19_N24
\i_pwm_ctrl|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~25_cout\ = CARRY((\i_pwm_ctrl|dc_cnt\(14) & ((!\i_pwm_ctrl|LessThan0~23_cout\) # (!\i_pwm_ctrl|one_ms_cnt\(14)))) # (!\i_pwm_ctrl|dc_cnt\(14) & (!\i_pwm_ctrl|one_ms_cnt\(14) & !\i_pwm_ctrl|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|dc_cnt\(14),
	datab => \i_pwm_ctrl|one_ms_cnt\(14),
	datad => VCC,
	cin => \i_pwm_ctrl|LessThan0~23_cout\,
	cout => \i_pwm_ctrl|LessThan0~25_cout\);

-- Location: LCCOMB_X19_Y19_N26
\i_pwm_ctrl|LessThan0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl|LessThan0~26_combout\ = (\i_pwm_ctrl|one_ms_cnt\(15) & (\i_pwm_ctrl|LessThan0~25_cout\ & \i_pwm_ctrl|dc_cnt\(15))) # (!\i_pwm_ctrl|one_ms_cnt\(15) & ((\i_pwm_ctrl|LessThan0~25_cout\) # (\i_pwm_ctrl|dc_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl|one_ms_cnt\(15),
	datad => \i_pwm_ctrl|dc_cnt\(15),
	cin => \i_pwm_ctrl|LessThan0~25_cout\,
	combout => \i_pwm_ctrl|LessThan0~26_combout\);

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fpga_out_tx);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(0));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(1));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(2));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(3));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(4));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(5));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0_n(6));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(0));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(1));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(2));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(4));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(5));

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1_n(6));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(1));

-- Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(2));

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(3));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(4));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2_n(6));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_serial_uart|received_error~0_combout\,
	outclk => \clock_50~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(0));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(0));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_key_n(2));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_key_n(3));
END structure;


