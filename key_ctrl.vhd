library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ent is
    port (
        clk      : in std_logic;
        reset_n  : in std_logic;
    );
end ent;

architecture rtl of ent is

    constant 10ms : integer := 500000; -- 10ms / 20ns = 500000

    -- (A)
    signal key_on_n      : std_logic;
    signal key_on_n_r    : std_logic;
    signal key_on_n_2r   : std_logic;

    signal key_off_n     : std_logic;
    signal key_off_n_r   : std_logic;
    signal key_off_n_2r  : std_logic;

    signal key_up_n      : std_logic;
    signal key_up_n_r    : std_logic;
    signal key_up_n_2r   : std_logic;

    signal key_down_n    : std_logic;
    signal key_down_n_r  : std_logic;
    signal key_down_n_2r : std_logic;

    signal cnt_to_10ms   : integer range 0 to 10ms;

begin

    p_double_sync : process(clk)
    begin
        if rising_edge(clk) then
            key_on_n_r   <= key_on_n;
            key_on_n_2r  <= key_on_n_r;
            
            key_off_n_r  <= key_off_n;
            key_off_n_2r <= key_off_n_r;

            key_up_n_r   <= key_up_n;
            key_up_n_2r  <= key_up_n_r;

            key_down_n_r <= key_down_n;
            key_down_n_2r <= key_down_n_r;
        end if;
    end process p_double_sync;

    -- The outputs from the compoent shall be set high one clock cycle if the inputs are detected to
    -- be high. If the inputs are held high the outputs shall be pulsed low one clock cycle every 10th
    -- millisecond.

    -- Key_n input bits 3, 2 and 1 shall be ignored if key_n(0) is pushed down.
    -- No pulses on key_up or key_down shall be generated if both key_n(2) and key_n(3) is pushed
    -- down simultaneously.

    p_key_off : process(clk, reset_n)
    begin
        if reset_n = '0' then
            key_off_n <= '0';
        elsif rising_edge(clk) then
            cnt_to_10ms <= cnt_to_10ms + 1; -- Counts clock cycles until 500000 cycles are reached which equeals 10ms 
            if cnt_to_10ms = 10ms then
                cnt_to_10ms <= 0;
                key_on_n_2r <= '0';
            elsif key_off_n = '1' then
                key_off_n_2r <= '1';
            else
                key_off_n_2r <= '0';
            end if;
        end if;
    end process p_key_off;

    p_key_on : process(clk, reset_n)
    begin
        if reset_n = '0' then
            key_on_n <= '0';
        elsif rising_edge(clk) then
            if key_off_n /= '0'then
                cnt_to_10ms <= cnt_to_10ms + 1; -- Counts clock cycles until 500000 cycles are reached which equeals 10ms
                if cnt_to_10ms = 10ms then
                    cnt_to_10ms <= 0;
                    key_on_n_2r <= '0';
                elsif key_on_n = '1' then
                    key_on_n_2r <= '1';
                else
                    key_on_n_2r <= '0';
                end if;
            end if;
        end if;
    end process p_key_on;

    p_key_down : process(clk, reset_n)
    begin
        if reset_n = '0' then
            key_down_n <= '0';
        elsif rising_edge(clk) then
            if key_off_n /= '0' or (key_n(2) /= '0' and key_n(3) /= '0') then
                cnt_to_10ms <= cnt_to_10ms + 1; -- Counts clock cycles until 500000 cycles are reached which equeals 10ms
                if cnt_to_10ms = 10ms then
                    cnt_to_10ms <= 0;
                    key_on_n_2r <= '0';
                elsif key_down_n = '1' then
                    key_down_n_2r <= '1';
                else
                    key_down_n_2r <= '0';
                end if;
            end if;
        end if;
    end process p_key_down;

    p_key_up : process(clk, reset_n)
    begin
        if reset_n = '0' then
            key_up_n <= '0';
        elsif rising_edge(clk) then
            if key_off_n /= '0' or (key_n(2) /= '0' and key_n(3) /= '0') then
                cnt_to_10ms <= cnt_to_10ms + 1; -- Counts clock cycles until 500000 cycles are reached which equeals 10ms
                if cnt_to_10ms = 10ms then
                    cnt_to_10ms <= 0;
                    key_on_n_2r <= '0';
                elsif key_up_n = '1' then
                    key_up_n_2r <= '1';
                else
                    key_up_n_2r <= '0';
                end if;
            end if;
        end if;
    end process p_key_up;

end architecture;   