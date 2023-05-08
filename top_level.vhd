library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
library work;
    use work.seven_seg_pkg.all;

entity top_level is
    port (
        clock_50    : in std_logic;
        key_n       : in std_logic_vector(3 downto 0);
        fpga_in_rx  : in std_logic;
        fpga_out_tx : out std_logic;
        hex0_n      : out std_logic_vector(6 downto 0);
        hex1_n      : out std_logic_vector(6 downto 0);
        hex2_n      : out std_logic_vector(6 downto 0);
        ledr        : out std_logic;
        ledg        : out std_logic
    );
end top_level;

architecture rtl of top_level is

    -- (A)
    signal key_on_n      : std_logic;
    signal key_off_n     : std_logic;
    signal key_up_n      : std_logic;
    signal key_down_n    : std_logic;

    -- (B)
    signal received_data       : std_logic_vector(7 downto 0);
    signal received_data_valid : std_logic;

    -- (C)
    signal serial_on_n   : std_logic;
    signal serial_off_n  : std_logic;
    signal serial_up_n   : std_logic;
    signal serial_down_n : std_logic;

    -- (D)
    signal current_dc : std_logic_vector(7 downto 0);
    signal current_dc_update : std_logic;

    -- (E)
    signal transmit_valid : std_logic;
    signal transmit_data  : std_logic_vector(7 downto 0);

    -- (F)
    signal reset_n : std_logic;

    generic g_simulation : boolean := false;


    signal seven_seg_vector    : std_logic_vector(6 downto 0);
    signal led                 : std_logic;
    signal received_data       : std_logic_vector(7 downto 0);
    signal received_data_valid : std_logic;
    signal received_error      : std_logic;
    signal transmit_ready      : std_logic;
    signal transmit_data_valid : std_logic;
    signal transmit_data       : std_logic_vector(7 downto 0);
    
    -- double synchronize
    signal reset_n     : std_logic;
    signal reset_n_r   : std_logic;
    signal reset_n_2r  : std_logic;

begin

    key_off_n  <= key_n(0);
    key_on_n   <= key_n(1);
    key_down_n <= key_n(2);
    key_up_n   <= key_n(3);
    -- reset_n <= key_n;
    ledr <= received_error;
    -- ledg <= --pwn control;
    -- hex0_n    <= --dc_disp control;
    -- hex1_n    <= --dc_disp control;
    -- hex2_n    <= --dc_disp control;

    i_key_ctrl : entity work.key_ctrl
        port map (
            clk         => clock_50,
            reset_n     => reset_n_2r,

            key_off_n   => key_off_n,
            key_on_n    => key_on_n,
            key_down_n  => key_down_n
            key_up_n    => key_up_n,
        );

    i_serial_uart : entity work.serial_uart
        generic map (
            g_reset_active_state  => '1',
            g_serial_speed_bps    => 115200, -- 115200 bps
            g_clk_period_ns       => 20, -- 50 MHz
            g_parity              => 0 -- no parity
        )
        port map (
            clk                   => clock_50,
            reset_n               => reset_n_2r,
            rx                    => fpga_in_rx,
            tx                    => fpga_out_tx,

            received_data         => received_data,
            received_data_valid   => received_data_valid,
            received_error        => received_error,
            received_parity_error => open,

            transmit_ready        => transmit_ready,
            transmit_data_valid   => transmit_data_valid,
            transmit_data         => transmit_data
        );

        -- i_serial_ctrl : entity work.serial_ctrl

        i_pwm_ctrl : entity work.pwm_ctrl
        port map (
            clk         => clock_50,
            reset_n     => reset_n_2r,

            key_off_n   => key_off_n_2r,
            key_on_n    => key_on_n_2r,
            key_down_n  => key_down_n_2r,
            key_up_n    => key_up_n_2r,

            serial_on_n   => serial_on_n,
            serial_off_n  => serial_off_n,
            serial_up_n   => serial_up_n,
            serial_down_n => serial_down_n,

            current_dc       => current_dc,
            current_dc_update => current_dc_update,

            transmit_valid => transmit_valid,
            transmit_data  => transmit_data
        );

        -- i_dc_disp_ctrl : entity work.dc_disp_ctrl    
    i_altera_pll_cyclone2 : entity work.i_altera_pll_cyclone2
    port
	(
		-- areset => ;
		-- inclk0 => ;
		-- c0     => ;
		-- c1	   => ;
		-- c2	   => ;
		-- locked => ;
	);

    i_reset_ctrl_rtl : entity work.reset_ctrl_rtl
    generic(
        -- g_reset_hold_clk  => 1000000, -- 1 ms
    );
    port (
        -- clk         => clock_50; 
        -- reset_in    => ;
        -- reset_in_n  => ;

        -- reset_out   => ;
        -- reset_out_n => ;
    );

    p_double_sync : process(clock_50)
    begin
        if rising_edge(clock_50) then
            reset_n_r   <= reset_n;
            reset_n_2r  <= reset_n_r;
        end if;
    end process p_double_sync;

    -- p_run_top_level_design : process(clock_50, reset_n_2r)
    -- begin
    --     if (reset_n_2r = '0') then
    --         seven_seg_vector <= "1111111"; -- off
    --     elsif rising_edge(clock_50) then
    --         if (received_data_valid = '1') then
    --             seven_seg_vector <= fn_ascii_to_7seg(received_data);
    --         end if;
    --     end if;
    -- end process p_run_top_level_design;
end architecture;