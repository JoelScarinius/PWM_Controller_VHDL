library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity PWM_Controller is
    generic (
        g_simulation : boolean := false
    );
    port (
        clock_50    : in std_logic;
        key_n       : in std_logic_vector(3 downto 0);
        fpga_in_rx  : in std_logic;
        fpga_out_tx : out std_logic;
        hex0_n      : out std_logic_vector(6 downto 0);
        hex1_n      : out std_logic_vector(6 downto 0);
        hex2_n      : out std_logic_vector(6 downto 0);
        ledr        : out std_logic_vector(9 downto 0);
        ledg        : out std_logic_vector(7 downto 0)
    );
end PWM_Controller;

architecture rtl of PWM_Controller is

    -- (A)
    signal key_on_n      : std_logic;
    signal key_off_n     : std_logic;
    signal key_up_n      : std_logic;
    signal key_down_n    : std_logic;

    -- (B)
    signal received_data       : std_logic_vector(7 downto 0);
    signal received_data_valid : std_logic;

    -- (C)
    signal serial_on   : std_logic;
    signal serial_off  : std_logic;
    signal serial_up   : std_logic;
    signal serial_down : std_logic;

    -- (D)
    signal current_dc        : std_logic_vector(7 downto 0);
    signal current_dc_update : std_logic;

    -- (E)
    signal transmit_valid : std_logic;
    signal transmit_data  : std_logic_vector(7 downto 0);

    -- (F)
    signal reset : std_logic;

    signal seven_seg_vector    : std_logic_vector(6 downto 0);
    signal led                 : std_logic;
    signal received_error      : std_logic;
    signal transmit_ready      : std_logic;
    signal transmit_data_valid : std_logic;
    
    -- double synchronize
    -- signal reset_r  : std_logic;
    signal reset_2r : std_logic;

    -- bcd
    signal bcd_0         : std_logic_vector(3 downto 0);
    signal bcd_1         : std_logic_vector(3 downto 0);
    signal bcd_2         : std_logic_vector(3 downto 0);
    signal input_vector  : std_logic_vector(7 downto 0);
    signal output_vector : std_logic_vector(7 downto 0);

    signal valid_out  : std_logic;
    signal valid_in   : std_logic;

    signal clk_50     : std_logic;
    signal pll_locked : std_logic;

    signal hex_0_n_out : std_logic_vector(6 downto 0);
    signal hex_1_n_out : std_logic_vector(6 downto 0);
    signal hex_2_n_out : std_logic_vector(6 downto 0);

begin

    ledr(9 downto 1)     <= (others => '0');
    ledg(7 downto 1)     <= (others => '0');
    hex0_n               <= hex_0_n_out;
    hex1_n               <= hex_1_n_out;
    hex2_n               <= hex_2_n_out;
    ledg(0)              <= led;
    ledr(0)              <= received_error;
    key_off_n            <= key_n(0);
    key_on_n             <= key_n(1);
    key_down_n           <= key_n(2);
    key_up_n             <= key_n(3);

    b_gen_pll : if (not g_simulation) generate
    -- Instance of PLL
        i_altera_pll : entity work.altera_pll
        port map(
            areset		=> '0',        -- Reset towards PLL is inactive
            inclk0		=> clock_50,   -- 50 MHz input clock
            c0		    => open,       -- 25 MHz output clock unused
            c1		    => clk_50,     -- 50 MHz output clock
            c2		    => open,       -- 100 MHz output clock unused
            locked		=> pll_locked);-- PLL Locked output signal

        i_reset_ctrl : entity work.reset_ctrl
        generic map(
            g_reset_hold_clk  => 127)
        port map(
            clk         => clk_50,
            reset_in    => '0',
            reset_in_n  => pll_locked, -- reset active if PLL is not locked

            reset_out   => reset,
            reset_out_n => open);
    end generate;

    b_sim_clock_gen : if g_simulation generate
        clk_50   <= clock_50;
        p_internal_reset : process
        begin
            reset    <= '1';
            wait until clock_50 = '1';
            wait for 1 us;
            wait until clock_50 = '1';
            reset    <= '0';
            wait;
        end process p_internal_reset;
    end generate;

    i_key_ctrl : entity work.key_ctrl
    port map (
        clk        => clock_50,
        reset      => reset_2r,

        key_off_n  => key_off_n,
        key_on_n   => key_on_n,
        key_down_n => key_down_n,
        key_up_n   => key_up_n,

        key_n(0)   => key_n(0),
        key_n(1)   => key_n(1),
        key_n(2)   => key_n(2),
        key_n(3)   => key_n(3)
    );

    i_pwm_ctrl : entity work.pwm_ctrl
    port map (
        clk               => clock_50,
        reset             => reset_2r,

        key_off_n         => key_off_n,
        key_on_n          => key_on_n,
        key_down_n        => key_down_n,
        key_up_n          => key_up_n,

        serial_off        => serial_off,
        serial_on         => serial_on,
        serial_down       => serial_down,
        serial_up         => serial_up,

        current_dc        => current_dc,
        current_dc_update => current_dc_update,
        
        ledg              => led
    );

    i_dc_disp_ctrl : entity work.dc_disp_ctrl
    port map (
        clk                 => clock_50,
        reset               => reset_2r,

        current_dc          => current_dc,
        current_dc_update   => current_dc_update,

        transmit_ready      => transmit_ready,
        transmit_data       => transmit_data,
        transmit_data_valid => transmit_data_valid,

        bcd_0               => bcd_0,                  
        bcd_1               => bcd_1,                 
        bcd_2               => bcd_2,        
        valid_out           => valid_out,

        hex0_n              => hex_0_n_out,
        hex1_n              => hex_1_n_out,
        hex2_n              => hex_2_n_out
    );

    i_bcd_decode_rom : entity work.bcd_decode_rom
    port map (
        -- clock and reset
        clk          => clock_50,
        reset        => reset_2r,
        -- input data interface
        input_vector => input_vector,
        valid_in     => valid_in,
        ready        => open,
        -- output result      
        bcd_0        => bcd_0,                  
        bcd_1        => bcd_1,                 
        bcd_2        => bcd_2,        
        valid_out    => valid_out        
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
        reset                 => reset_2r,
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

    i_serial_ctrl : entity work.serial_ctrl
    port map (
        clk                 => clock_50,
        reset               => reset_2r,

        received_data       => received_data,
        received_data_valid => received_data_valid,

        serial_off          => serial_off,
        serial_on           => serial_on,
        serial_down         => serial_down,
        serial_up           => serial_up
    );

    -- i_altera_pll : entity work.altera_pll
    -- port map (
    --     areset		=> '0',        -- Reset towards PLL is inactive
    --     inclk0		=> clock_50,   -- 50 MHz input clock
    --     c0		    => open,       -- 25 MHz output clock unused
    --     c1		    => clk_50,     -- 50 MHz output clock
    --     c2		    => open,       -- 100 MHz output clock unused
    --     locked		=> pll_locked  -- PLL Locked output signal
    -- );

    -- i_reset_ctrl_rtl : entity work.reset_ctrl_rtl
    -- generic map (
    --         g_reset_hold_clk  => 127
    --     )
    --     port map (
    --         clk         => clk_50,
    --         reset_in    => '0',
    --         reset_in_n  => pll_locked, -- reset active if PLL is not locked

    --         reset_out   => reset,
    --         reset_out_n => open
    --     );

    -- p_double_sync : process(clock_50)
    -- begin
    --     if rising_edge(clock_50) then
    --         reset_r   <= reset;
    --         reset_2r  <= reset_r;
    --     end if;
    -- end process p_double_sync;

end architecture;