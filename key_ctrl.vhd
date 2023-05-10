-- The outputs from the compoent shall be set high one clock cycle if the inputs are detected to
-- be high. If the inputs are held high the outputs shall be pulsed low one clock cycle every 10th
-- millisecond.

-- Key_n input bits 3, 2 and 1 shall be ignored if key_n(0) is pushed down.
-- No pulses on key_up or key_down shall be generated if both key_n(2) and key_n(3) is pushed
-- down simultaneously.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity key_ctrl is
    port (
        clk        : in std_logic;
        reset      : in std_logic;   -- active high reset
        key_n      : in std_logic_vector(3 downto 0);

        key_off_n  : out std_logic;
        key_on_n   : out std_logic;
        key_down_n : out std_logic;
        key_up_n   : out std_logic
    );
end key_ctrl;

architecture rtl of key_ctrl is

    type t_key_in_state is (s_pulse_high, s_pulse_low, s_held_high);

    constant ten_ms : integer := 500000; -- 10ms / 20ns = 500000

    signal in_key_on_n      : std_logic; -- "in" = internal signal
    signal in_key_on_n_r    : std_logic;
    signal in_key_on_n_2r   : std_logic;

    signal in_key_off_n     : std_logic;
    signal in_key_off_n_r   : std_logic;
    signal in_key_off_n_2r  : std_logic;

    signal in_key_up_n      : std_logic;
    signal in_key_up_n_r    : std_logic;
    signal in_key_up_n_2r   : std_logic;

    signal in_key_down_n    : std_logic;
    signal in_key_down_n_r  : std_logic;
    signal in_key_down_n_2r : std_logic;

    signal key_off          : std_logic;
    signal key_on           : std_logic;
    signal key_down         : std_logic;
    signal key_up           : std_logic;

    signal ten_ms_cnt       : integer range 0 to ten_ms;

    signal key_in_states    : t_key_in_state := s_pulse_high;

begin

    key_off_n  <= key_off;
    key_on_n   <= key_on;
    key_down_n <= key_down;
    key_up_n   <= key_up;

    p_double_sync : process(clk)
    begin
        if rising_edge(clk) then
            in_key_off_n     <= key_n(0);
            in_key_off_n_r   <= in_key_off_n;
            in_key_off_n_2r  <= in_key_off_n_r;

            in_key_on_n      <= key_n(1);
            in_key_on_n_r    <= in_key_on_n;
            in_key_on_n_2r   <= in_key_on_n_r;
            
            in_key_down_n    <= key_n(2);
            in_key_down_n_r  <= in_key_down_n;
            in_key_down_n_2r <= in_key_down_n_r;

            in_key_up_n      <= key_n(3);
            in_key_up_n_r    <= in_key_up_n;
            in_key_up_n_2r   <= in_key_up_n_r;

        end if;
    end process p_double_sync;

    p_key_states : process(clk, reset)
    begin

        if reset = '1' then
            key_off  <= '0';
            key_on   <= '0';
            key_down <= '0';
            key_up   <= '0';
        elsif rising_edge(clk) then
            
            case key_in_states is

                when s_held_high =>
                    if in_key_off_n_2r  = '1' or in_key_on_n_2r = '1' or in_key_down_n_2r = '1' or in_key_up_n_2r = '1' then
                        ten_ms_cnt <= ten_ms_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms 
                        if ten_ms_cnt = ten_ms then
                            ten_ms_cnt   <= 0;
                            key_in_states<= s_pulse_low;
                        end if;
                    else
                        ten_ms_cnt   <= 0;
                    end if;
                    key_in_states<= s_pulse_high;
                    
                when s_pulse_high =>
                    if in_key_off_n_2r  = '1' then
                        key_off <= '1';
                    end if;
                    if in_key_off_n_2r /= '0' then
                        key_off <= '1';
                        if in_key_on_n_2r = '1' then
                            key_on <= '1';
                        end if;
                        if in_key_down_n_2r /= in_key_up_n_2r then
                            if in_key_down_n_2r = '1' then
                                key_down <= '1';
                            end if;
                            if in_key_up_n_2r = '1' then
                                key_up <= '1';
                            end if;
                        end if;
                    end if;
                    key_in_states<= s_pulse_low;

                when s_pulse_low =>
                    if key_off  = '1' then
                        key_off  <= '0';
                    end if;
                    if key_on   = '1' then
                        key_on   <= '0';
                    end if;
                    if key_down = '1' then
                        key_down <= '0';
                    end if;
                    if key_up   = '1' then
                        key_up   <= '0';
                    end if;
                    key_in_states<= s_pulse_high;
            end case;
        end if;
    end process p_key_states;
end architecture rtl;   