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

-- DATE "05/09/2023 13:20:35"

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
-- fpga_out_tx	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[0]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[1]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[3]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[4]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[5]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0_n[6]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[0]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[1]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[2]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[3]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[4]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[5]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1_n[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[0]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[1]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[2]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[3]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[4]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[5]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2_n[6]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[9]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[0]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- key_n[2]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[3]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock_50	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fpga_in_rx	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \i_serial_uart|rx_bit_cnt[1]~11_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~24_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[1]~11_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[4]~17_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[7]~25\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[8]~26_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_start_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_no~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector32~0_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~2_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_no~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector27~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~9_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[5]~21\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[6]~22_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[3]~15_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~1_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~2_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector26~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~19_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~10\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[1]~12\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[2]~13_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[2]~14\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[3]~16\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[4]~18\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[5]~20_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[6]~23\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[7]~24_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_wrap~1_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector31~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector28~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector28~1_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_tx_data~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector32~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector33~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector29~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector29~1_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|tx~0_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_50~clkctrl_outclk\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~10\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~12\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~13_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~20_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~15_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector1~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_rx_data~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector14~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector4~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector4~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector1~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_en~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~19_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~14\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~16\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~17_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~18\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~21\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~22_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~9_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~23\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~25\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[8]~26_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \i_serial_uart|received_error~_Duplicate_1_regout\ : std_logic;
SIGNAL \fpga_in_rx~combout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|received_error~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart|tx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);

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

-- Location: LCFF_X48_Y9_N25
\i_serial_uart|rx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[7]~24_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(7));

-- Location: LCFF_X48_Y9_N13
\i_serial_uart|rx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[1]~11_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(1));

-- Location: LCFF_X48_Y16_N13
\i_serial_uart|tx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[4]~17_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(4));

-- Location: LCFF_X48_Y16_N7
\i_serial_uart|tx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[1]~11_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(1));

-- Location: LCFF_X48_Y16_N21
\i_serial_uart|tx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[8]~26_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(8));

-- Location: LCCOMB_X48_Y9_N12
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

-- Location: LCCOMB_X48_Y9_N24
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

-- Location: LCCOMB_X48_Y16_N6
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

-- Location: LCCOMB_X48_Y16_N12
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

-- Location: LCCOMB_X48_Y16_N18
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

-- Location: LCCOMB_X48_Y16_N20
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

-- Location: LCCOMB_X48_Y9_N2
\i_serial_uart|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~0_combout\ = ((!\i_serial_uart|rx_bit_cnt\(6) & ((!\i_serial_uart|rx_bit_cnt\(4)) # (!\i_serial_uart|rx_bit_cnt\(5))))) # (!\i_serial_uart|rx_bit_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(5),
	datab => \i_serial_uart|rx_bit_cnt\(6),
	datac => \i_serial_uart|rx_bit_cnt\(7),
	datad => \i_serial_uart|rx_bit_cnt\(4),
	combout => \i_serial_uart|LessThan0~0_combout\);

-- Location: LCCOMB_X48_Y16_N0
\i_serial_uart|tx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt_wrap~0_combout\ = (!\i_serial_uart|tx_state.s_idle~regout\) # (!\i_serial_uart|tx_bit_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|tx_bit_cnt\(8),
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|tx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X49_Y16_N25
\i_serial_uart|tx_state.s_start_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_start_bit~regout\);

-- Location: LCCOMB_X49_Y16_N12
\i_serial_uart|tx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_no~0_combout\ = ((\i_serial_uart|tx_bit_no\(0) & (\i_serial_uart|tx_bit_no\(1) & \i_serial_uart|tx_bit_no\(2)))) # (!\i_serial_uart|tx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no\(0),
	datab => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|tx_bit_no\(1),
	datad => \i_serial_uart|tx_bit_no\(2),
	combout => \i_serial_uart|tx_bit_no~0_combout\);

-- Location: LCCOMB_X49_Y16_N6
\i_serial_uart|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector32~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_bit_no\(1) $ (((\i_serial_uart|tx_bit_no\(0) & !\i_serial_uart|tx_bit_no~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no\(1),
	datab => \i_serial_uart|tx_bit_no\(0),
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	datad => \i_serial_uart|tx_bit_no~0_combout\,
	combout => \i_serial_uart|Selector32~0_combout\);

-- Location: LCCOMB_X48_Y9_N6
\i_serial_uart|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~2_combout\ = (\i_serial_uart|LessThan0~0_combout\) # (((!\i_serial_uart|rx_bit_cnt\(6) & \i_serial_uart|LessThan0~1_combout\)) # (!\i_serial_uart|rx_bit_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|LessThan0~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt\(6),
	datac => \i_serial_uart|LessThan0~1_combout\,
	datad => \i_serial_uart|rx_bit_cnt\(8),
	combout => \i_serial_uart|LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y9_N2
\i_serial_uart|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector2~0_combout\ = (\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_bit_no\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(0),
	datab => \i_serial_uart|rx_bit_no\(1),
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_bit_no\(2),
	combout => \i_serial_uart|Selector2~0_combout\);

-- Location: LCCOMB_X49_Y9_N20
\i_serial_uart|rx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_no~0_combout\ = ((\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|rx_bit_no\(1) & \i_serial_uart|rx_bit_no\(2)))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(0),
	datab => \i_serial_uart|rx_bit_no\(1),
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_bit_no\(2),
	combout => \i_serial_uart|rx_bit_no~0_combout\);

-- Location: LCCOMB_X49_Y16_N24
\i_serial_uart|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector27~0_combout\ = (!\i_serial_uart|tx_bit_cnt_wrap~regout\ & ((\i_serial_uart|tx_state.s_start_bit~regout\) # (!\i_serial_uart|tx_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|tx_state.s_start_bit~regout\,
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector27~0_combout\);

-- Location: LCCOMB_X48_Y16_N4
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

-- Location: LCCOMB_X48_Y16_N14
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

-- Location: LCCOMB_X48_Y16_N16
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

-- Location: LCFF_X48_Y16_N17
\i_serial_uart|tx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[6]~22_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(6));

-- Location: LCCOMB_X48_Y16_N10
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

-- Location: LCFF_X48_Y16_N11
\i_serial_uart|tx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[3]~15_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(3));

-- Location: LCCOMB_X48_Y16_N30
\i_serial_uart|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~1_combout\ = (!\i_serial_uart|tx_bit_cnt\(1) & (!\i_serial_uart|tx_bit_cnt\(0) & (!\i_serial_uart|tx_bit_cnt\(2) & !\i_serial_uart|tx_bit_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(1),
	datab => \i_serial_uart|tx_bit_cnt\(0),
	datac => \i_serial_uart|tx_bit_cnt\(2),
	datad => \i_serial_uart|tx_bit_cnt\(3),
	combout => \i_serial_uart|LessThan2~1_combout\);

-- Location: LCCOMB_X48_Y16_N26
\i_serial_uart|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~2_combout\ = ((\i_serial_uart|LessThan2~0_combout\) # ((!\i_serial_uart|tx_bit_cnt\(6) & \i_serial_uart|LessThan2~1_combout\))) # (!\i_serial_uart|tx_bit_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(8),
	datab => \i_serial_uart|LessThan2~0_combout\,
	datac => \i_serial_uart|tx_bit_cnt\(6),
	datad => \i_serial_uart|LessThan2~1_combout\,
	combout => \i_serial_uart|LessThan2~2_combout\);

-- Location: LCCOMB_X49_Y16_N2
\i_serial_uart|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector26~0_combout\ = (!\i_serial_uart|tx_state.s_stop_bit~regout\) # (!\i_serial_uart|tx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|tx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector26~0_combout\);

-- Location: LCFF_X49_Y16_N3
\i_serial_uart|tx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_idle~regout\);

-- Location: LCCOMB_X48_Y16_N28
\i_serial_uart|tx_bit_cnt[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[0]~19_combout\ = (!\i_serial_uart|tx_state.s_idle~regout\) # (!\i_serial_uart|LessThan2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|LessThan2~2_combout\,
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|tx_bit_cnt[0]~19_combout\);

-- Location: LCFF_X48_Y16_N5
\i_serial_uart|tx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[0]~9_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(0));

-- Location: LCCOMB_X48_Y16_N8
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

-- Location: LCFF_X48_Y16_N9
\i_serial_uart|tx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[2]~13_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(2));

-- Location: LCFF_X48_Y16_N15
\i_serial_uart|tx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[5]~20_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(5));

-- Location: LCFF_X48_Y16_N19
\i_serial_uart|tx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[7]~24_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(7));

-- Location: LCCOMB_X48_Y16_N2
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

-- Location: LCCOMB_X48_Y16_N24
\i_serial_uart|tx_bit_cnt_wrap~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt_wrap~1_combout\ = (!\i_serial_uart|tx_bit_cnt_wrap~0_combout\ & (!\i_serial_uart|LessThan2~0_combout\ & ((\i_serial_uart|tx_bit_cnt\(6)) # (!\i_serial_uart|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~0_combout\,
	datab => \i_serial_uart|LessThan2~0_combout\,
	datac => \i_serial_uart|tx_bit_cnt\(6),
	datad => \i_serial_uart|LessThan2~1_combout\,
	combout => \i_serial_uart|tx_bit_cnt_wrap~1_combout\);

-- Location: LCFF_X48_Y16_N25
\i_serial_uart|tx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt_wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X49_Y16_N22
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

-- Location: LCFF_X49_Y16_N23
\i_serial_uart|tx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(2));

-- Location: LCCOMB_X49_Y16_N10
\i_serial_uart|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector28~0_combout\ = (\i_serial_uart|tx_bit_no\(0) & (\i_serial_uart|tx_bit_cnt_wrap~regout\ & (\i_serial_uart|tx_bit_no\(1) & \i_serial_uart|tx_bit_no\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no\(0),
	datab => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|tx_bit_no\(1),
	datad => \i_serial_uart|tx_bit_no\(2),
	combout => \i_serial_uart|Selector28~0_combout\);

-- Location: LCCOMB_X49_Y16_N8
\i_serial_uart|Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector28~1_combout\ = (\i_serial_uart|tx_state.s_start_bit~regout\ & ((\i_serial_uart|tx_bit_cnt_wrap~regout\) # ((\i_serial_uart|tx_state.s_tx_data~regout\ & !\i_serial_uart|Selector28~0_combout\)))) # 
-- (!\i_serial_uart|tx_state.s_start_bit~regout\ & (((\i_serial_uart|tx_state.s_tx_data~regout\ & !\i_serial_uart|Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_start_bit~regout\,
	datab => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	datad => \i_serial_uart|Selector28~0_combout\,
	combout => \i_serial_uart|Selector28~1_combout\);

-- Location: LCFF_X49_Y16_N9
\i_serial_uart|tx_state.s_tx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_tx_data~regout\);

-- Location: LCCOMB_X49_Y16_N28
\i_serial_uart|Selector32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector32~1_combout\ = (\i_serial_uart|Selector32~0_combout\) # ((!\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_bit_no\(1) & \i_serial_uart|tx_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector32~0_combout\,
	datab => \i_serial_uart|tx_state.s_tx_data~regout\,
	datac => \i_serial_uart|tx_bit_no\(1),
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector32~1_combout\);

-- Location: LCFF_X49_Y16_N29
\i_serial_uart|tx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(1));

-- Location: LCCOMB_X49_Y16_N18
\i_serial_uart|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector33~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_bit_no~0_combout\ $ ((!\i_serial_uart|tx_bit_no\(0))))) # (!\i_serial_uart|tx_state.s_tx_data~regout\ & (((\i_serial_uart|tx_bit_no\(0) & 
-- \i_serial_uart|tx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no~0_combout\,
	datab => \i_serial_uart|tx_state.s_tx_data~regout\,
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector33~0_combout\);

-- Location: LCFF_X49_Y16_N19
\i_serial_uart|tx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(0));

-- Location: LCCOMB_X49_Y16_N30
\i_serial_uart|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector29~0_combout\ = (\i_serial_uart|tx_bit_cnt_wrap~regout\ & (\i_serial_uart|tx_bit_no\(1) & (\i_serial_uart|tx_state.s_tx_data~regout\ & \i_serial_uart|tx_bit_no\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|tx_bit_no\(1),
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	datad => \i_serial_uart|tx_bit_no\(0),
	combout => \i_serial_uart|Selector29~0_combout\);

-- Location: LCCOMB_X49_Y16_N0
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

-- Location: LCFF_X49_Y16_N1
\i_serial_uart|tx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X49_Y16_N20
\i_serial_uart|tx~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx~0_combout\ = (\i_serial_uart|tx_state.s_stop_bit~regout\) # (!\i_serial_uart|tx_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|tx~0_combout\);

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

-- Location: LCCOMB_X48_Y9_N10
\i_serial_uart|rx_bit_cnt[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[0]~9_combout\ = \i_serial_uart|rx_bit_cnt\(0) $ (VCC)
-- \i_serial_uart|rx_bit_cnt[0]~10\ = CARRY(\i_serial_uart|rx_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(0),
	datad => VCC,
	combout => \i_serial_uart|rx_bit_cnt[0]~9_combout\,
	cout => \i_serial_uart|rx_bit_cnt[0]~10\);

-- Location: LCCOMB_X48_Y9_N14
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

-- Location: LCCOMB_X48_Y9_N20
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

-- Location: LCFF_X48_Y9_N21
\i_serial_uart|rx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[5]~20_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(5));

-- Location: LCCOMB_X48_Y9_N16
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

-- Location: LCFF_X48_Y9_N17
\i_serial_uart|rx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[3]~15_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(3));

-- Location: LCCOMB_X48_Y9_N30
\i_serial_uart|rx_bit_cnt_half~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~0_combout\ = (\i_serial_uart|rx_bit_cnt\(7) & ((\i_serial_uart|rx_bit_cnt\(5)) # ((\i_serial_uart|rx_bit_cnt\(3) & \i_serial_uart|rx_bit_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(7),
	datab => \i_serial_uart|rx_bit_cnt\(5),
	datac => \i_serial_uart|rx_bit_cnt\(3),
	datad => \i_serial_uart|rx_bit_cnt\(4),
	combout => \i_serial_uart|rx_bit_cnt_half~0_combout\);

-- Location: LCCOMB_X48_Y9_N4
\i_serial_uart|rx_bit_cnt_half~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~1_combout\ = (\i_serial_uart|rx_bit_cnt_en~regout\ & ((\i_serial_uart|rx_bit_cnt\(8)) # ((\i_serial_uart|rx_bit_cnt\(6) & \i_serial_uart|rx_bit_cnt_half~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(8),
	datab => \i_serial_uart|rx_bit_cnt\(6),
	datac => \i_serial_uart|rx_bit_cnt_half~0_combout\,
	datad => \i_serial_uart|rx_bit_cnt_en~regout\,
	combout => \i_serial_uart|rx_bit_cnt_half~1_combout\);

-- Location: LCFF_X48_Y9_N5
\i_serial_uart|rx_bit_cnt_half\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_half~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_half~regout\);

-- Location: LCCOMB_X49_Y9_N22
\i_serial_uart|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector1~1_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & (!\i_serial_uart|rx_state.s_stop_bit~regout\ & ((\i_serial_uart|rx_bit_cnt_half~regout\) # (\i_serial_uart|rx_state.s_idle~regout\)))) # 
-- (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & ((\i_serial_uart|rx_bit_cnt_half~regout\) # ((\i_serial_uart|rx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|rx_bit_cnt_half~regout\,
	datac => \i_serial_uart|rx_state.s_idle~regout\,
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector1~1_combout\);

-- Location: LCFF_X49_Y9_N23
\i_serial_uart|rx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_idle~regout\);

-- Location: LCCOMB_X49_Y9_N28
\i_serial_uart|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector2~1_combout\ = (\i_serial_uart|Selector2~0_combout\ & (\i_serial_uart|rx_bit_cnt_half~regout\ & ((!\i_serial_uart|rx_state.s_idle~regout\)))) # (!\i_serial_uart|Selector2~0_combout\ & ((\i_serial_uart|rx_state.s_rx_data~regout\) # 
-- ((\i_serial_uart|rx_bit_cnt_half~regout\ & !\i_serial_uart|rx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector2~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt_half~regout\,
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|rx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector2~1_combout\);

-- Location: LCFF_X49_Y9_N29
\i_serial_uart|rx_state.s_rx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_rx_data~regout\);

-- Location: LCCOMB_X49_Y9_N26
\i_serial_uart|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector12~0_combout\ = (\i_serial_uart|Selector4~0_combout\) # ((\i_serial_uart|rx_bit_no\(2) & ((\i_serial_uart|rx_state.s_stop_bit~regout\) # (\i_serial_uart|rx_state.s_rx_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector4~0_combout\,
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|rx_bit_no\(2),
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector12~0_combout\);

-- Location: LCFF_X49_Y9_N27
\i_serial_uart|rx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(2));

-- Location: LCCOMB_X49_Y9_N6
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

-- Location: LCFF_X49_Y9_N7
\i_serial_uart|rx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(0));

-- Location: LCCOMB_X49_Y9_N14
\i_serial_uart|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~0_combout\ = (\i_serial_uart|rx_state.s_rx_data~regout\ & (\i_serial_uart|rx_bit_no\(1) $ (((!\i_serial_uart|rx_bit_no~0_combout\ & \i_serial_uart|rx_bit_no\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no~0_combout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_no\(1),
	datad => \i_serial_uart|rx_bit_no\(0),
	combout => \i_serial_uart|Selector13~0_combout\);

-- Location: LCCOMB_X49_Y9_N8
\i_serial_uart|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~1_combout\ = (\i_serial_uart|Selector13~0_combout\) # ((\i_serial_uart|rx_bit_no\(1) & \i_serial_uart|rx_state.s_stop_bit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|Selector13~0_combout\,
	datac => \i_serial_uart|rx_bit_no\(1),
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector13~1_combout\);

-- Location: LCFF_X49_Y9_N9
\i_serial_uart|rx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(1));

-- Location: LCCOMB_X49_Y9_N10
\i_serial_uart|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector4~0_combout\ = (\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(0),
	datab => \i_serial_uart|rx_bit_no\(1),
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector4~0_combout\);

-- Location: LCCOMB_X49_Y9_N18
\i_serial_uart|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector4~1_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & (\i_serial_uart|rx_bit_no\(2) & ((\i_serial_uart|Selector4~0_combout\)))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & ((\i_serial_uart|rx_state.s_stop_bit~regout\) # 
-- ((\i_serial_uart|rx_bit_no\(2) & \i_serial_uart|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|rx_bit_no\(2),
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|Selector4~0_combout\,
	combout => \i_serial_uart|Selector4~1_combout\);

-- Location: LCFF_X49_Y9_N19
\i_serial_uart|rx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X49_Y9_N0
\i_serial_uart|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector1~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_stop_bit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector1~0_combout\);

-- Location: LCCOMB_X49_Y9_N30
\i_serial_uart|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector0~0_combout\ = (!\i_serial_uart|Selector1~0_combout\ & ((\i_serial_uart|rx_state.s_idle~regout\) # ((!\i_serial_uart|rx_2r~regout\ & !\i_serial_uart|rx_bit_cnt_half~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datab => \i_serial_uart|Selector1~0_combout\,
	datac => \i_serial_uart|rx_bit_cnt_half~regout\,
	datad => \i_serial_uart|rx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector0~0_combout\);

-- Location: LCFF_X49_Y9_N31
\i_serial_uart|rx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_en~regout\);

-- Location: LCCOMB_X48_Y9_N8
\i_serial_uart|rx_bit_cnt[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[0]~19_combout\ = (!\i_serial_uart|rx_bit_cnt_en~regout\) # (!\i_serial_uart|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|LessThan0~2_combout\,
	datad => \i_serial_uart|rx_bit_cnt_en~regout\,
	combout => \i_serial_uart|rx_bit_cnt[0]~19_combout\);

-- Location: LCFF_X48_Y9_N15
\i_serial_uart|rx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[2]~13_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(2));

-- Location: LCCOMB_X48_Y9_N18
\i_serial_uart|rx_bit_cnt[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[4]~17_combout\ = (\i_serial_uart|rx_bit_cnt\(4) & (\i_serial_uart|rx_bit_cnt[3]~16\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(4) & (!\i_serial_uart|rx_bit_cnt[3]~16\ & VCC))
-- \i_serial_uart|rx_bit_cnt[4]~18\ = CARRY((\i_serial_uart|rx_bit_cnt\(4) & !\i_serial_uart|rx_bit_cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(4),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[3]~16\,
	combout => \i_serial_uart|rx_bit_cnt[4]~17_combout\,
	cout => \i_serial_uart|rx_bit_cnt[4]~18\);

-- Location: LCFF_X48_Y9_N19
\i_serial_uart|rx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[4]~17_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(4));

-- Location: LCCOMB_X48_Y9_N22
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

-- Location: LCFF_X48_Y9_N23
\i_serial_uart|rx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[6]~22_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(6));

-- Location: LCFF_X48_Y9_N11
\i_serial_uart|rx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[0]~9_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(0));

-- Location: LCCOMB_X48_Y9_N28
\i_serial_uart|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~1_combout\ = (!\i_serial_uart|rx_bit_cnt\(1) & (!\i_serial_uart|rx_bit_cnt\(2) & (!\i_serial_uart|rx_bit_cnt\(3) & !\i_serial_uart|rx_bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(1),
	datab => \i_serial_uart|rx_bit_cnt\(2),
	datac => \i_serial_uart|rx_bit_cnt\(3),
	datad => \i_serial_uart|rx_bit_cnt\(0),
	combout => \i_serial_uart|LessThan0~1_combout\);

-- Location: LCCOMB_X48_Y9_N26
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

-- Location: LCFF_X48_Y9_N27
\i_serial_uart|rx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[8]~26_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(8));

-- Location: LCCOMB_X49_Y9_N24
\i_serial_uart|rx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_wrap~0_combout\ = (!\i_serial_uart|rx_bit_cnt_en~regout\) # (!\i_serial_uart|rx_bit_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(8),
	datad => \i_serial_uart|rx_bit_cnt_en~regout\,
	combout => \i_serial_uart|rx_bit_cnt_wrap~0_combout\);

-- Location: LCCOMB_X48_Y9_N0
\i_serial_uart|rx_bit_cnt_wrap~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_wrap~1_combout\ = (!\i_serial_uart|LessThan0~0_combout\ & (!\i_serial_uart|rx_bit_cnt_wrap~0_combout\ & ((\i_serial_uart|rx_bit_cnt\(6)) # (!\i_serial_uart|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|LessThan0~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt\(6),
	datac => \i_serial_uart|LessThan0~1_combout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~0_combout\,
	combout => \i_serial_uart|rx_bit_cnt_wrap~1_combout\);

-- Location: LCFF_X48_Y9_N1
\i_serial_uart|rx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_wrap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_wrap~regout\);

-- Location: LCFF_X49_Y9_N17
\i_serial_uart|received_error~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_error~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_error~_Duplicate_1_regout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y9_N4
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

-- Location: LCFF_X49_Y9_N5
\i_serial_uart|rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_r~regout\);

-- Location: LCFF_X49_Y9_N13
\i_serial_uart|rx_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|rx_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_2r~regout\);

-- Location: LCCOMB_X49_Y9_N16
\i_serial_uart|received_error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_error~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & ((\i_serial_uart|rx_state.s_stop_bit~regout\ & ((!\i_serial_uart|rx_2r~regout\))) # (!\i_serial_uart|rx_state.s_stop_bit~regout\ & 
-- (\i_serial_uart|received_error~_Duplicate_1_regout\)))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & (((\i_serial_uart|received_error~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|received_error~_Duplicate_1_regout\,
	datad => \i_serial_uart|rx_2r~regout\,
	combout => \i_serial_uart|received_error~0_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(0));

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_key_n(1));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_key_n(0));
END structure;


