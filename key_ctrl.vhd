library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity key_ctrl is
    port (
        clk        : in std_logic;
        reset      : in std_logic;   -- active high reset
        key_n      : in std_logic_vector(3 downto 0);

        key_off    : out std_logic;
        key_on     : out std_logic;
        key_down   : out std_logic;
        key_up     : out std_logic
    );
end key_ctrl;

architecture rtl of key_ctrl is

    type t_key_in_state is (s_pulse_low, s_pulse_high);

    constant ten_ms : integer := 500000; -- 10ms / 20ns = 500000

    signal key_on_r        : std_logic;
    signal key_on_2r       : std_logic;

    signal key_off_r       : std_logic;
    signal key_off_2r      : std_logic;

    signal key_up_r        : std_logic;
    signal key_up_2r       : std_logic;

    signal key_down_r      : std_logic;
    signal key_down_2r     : std_logic;

    signal key_off_out     : std_logic;
    signal key_on_out      : std_logic;
    signal key_down_out    : std_logic;
    signal key_up_out      : std_logic;

    signal ten_ms_off_cnt  : integer range 0 to ten_ms;
    signal ten_ms_on_cnt   : integer range 0 to ten_ms;
    signal ten_ms_down_cnt : integer range 0 to ten_ms;
    signal ten_ms_up_cnt   : integer range 0 to ten_ms;

    signal key_in_states : t_key_in_state := s_pulse_low;

begin

    key_off  <= key_off_out;
    key_on   <= key_on_out;
    key_down <= key_down_out;
    key_up   <= key_up_out;

    p_double_sync : process(clk)
    begin
        if rising_edge(clk) then
            key_off_r   <= key_n(0);
            key_off_2r  <= key_off_r;

            key_on_r    <= key_n(1);
            key_on_2r   <= key_on_r;
            
            key_down_r  <= key_n(2);
            key_down_2r <= key_down_r;

            key_up_r    <= key_n(3);
            key_up_2r   <= key_up_r;

        end if;
    end process p_double_sync;

    p_key_states : process(clk, reset)
    begin

        if reset = '1' then
            key_off_out  <= '0';
            key_on_out   <= '0';
            key_down_out <= '0';
            key_up_out   <= '0';
        elsif rising_edge(clk) then
            
            if key_off_2r  = '0' then
                if ten_ms_off_cnt = 0 then
                    key_in_states <= s_pulse_high;
                end if;
                if ten_ms_off_cnt < ten_ms then
                    ten_ms_off_cnt <= ten_ms_off_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms 
                else
                    key_off_out <= '1';
                    ten_ms_off_cnt <= 0;
                    key_in_states <= s_pulse_high;
                end if;
            else
                ten_ms_off_cnt     <= 0;
            end if;

            if key_on_2r  = '0' then
                if ten_ms_on_cnt = 0 then
                    key_in_states <= s_pulse_high;
                end if;
                if ten_ms_on_cnt < ten_ms then
                    ten_ms_on_cnt <= ten_ms_on_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms 
                else
                    key_on_out <= '1';
                    ten_ms_on_cnt <= 0;
                    key_in_states <= s_pulse_high;
                end if;
            else
                ten_ms_on_cnt     <= 0;
            end if;

            if key_down_2r  = '0' then
                if ten_ms_down_cnt = 0 then
                    key_in_states <= s_pulse_high;
                end if;
                if ten_ms_down_cnt < ten_ms then
                    ten_ms_down_cnt <= ten_ms_down_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms 
                else
                    key_down_out <= '1';
                    ten_ms_down_cnt <= 0;
                    key_in_states <= s_pulse_high;
                end if;
            else
                ten_ms_down_cnt     <= 0;
            end if;

            if key_up_2r  = '0' then
                if ten_ms_up_cnt = 0 then
                    key_in_states <= s_pulse_high;
                end if;
                if ten_ms_up_cnt < ten_ms then
                    ten_ms_up_cnt <= ten_ms_up_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms 
                else
                    key_up_out <= '1';
                    ten_ms_up_cnt <= 0;
                    key_in_states <= s_pulse_high;
                end if;
            else
                ten_ms_up_cnt     <= 0;
            end if;

            case key_in_states is

                when s_pulse_high =>
                    if key_off_2r  = '0' then
                        key_off_out <= '1';
                    else
                        if key_on_2r = '0' then
                            key_on_out <= '1';
                        end if;
                        if (key_down_2r = '1' and key_up_2r = '1') or (key_down_2r = '0' and key_up_2r = '1') or (key_down_2r = '1' and key_up_2r = '0') then
                            if key_down_2r = '0' then
                                key_down_out <= '1';
                            end if;
                            if key_up_2r = '0' then
                                key_up_out <= '1';
                            end if;
                        end if;
                    end if;
                    key_in_states <= s_pulse_low;

                when s_pulse_low =>
                    if key_off_out  = '1' then
                        key_off_out  <= '0';
                    end if;
                    if key_on_out   = '1' then
                        key_on_out   <= '0';
                    end if;
                    if key_down_out = '1' then
                        key_down_out <= '0';
                    end if;
                    if key_up_out   = '1' then
                        key_up_out   <= '0';
                    end if;
            end case;
        end if;
    end process p_key_states;
end architecture rtl;   