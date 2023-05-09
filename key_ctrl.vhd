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

    type t_key_state is (s_off, s_on, s_down, s_up);

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

    signal ten_ms_cnt       : integer range 0 to ten_ms;

    signal key_states       : t_key_state := s_off;

begin

    key_off_n  <= key_off;
    key_on_n   <= key_on;
    key_down_n <= key_down;
    key_up_n   <= key_up;
    
    -- key_off_n  <= in_key_off_n_2r;
    -- key_on_n   <= in_key_on_n_2r;
    -- key_down_n <= in_key_down_n_2r;
    -- key_up_n   <= in_key_up_n_2r;

    -- !! DU MÅSTE GÖRA EN STATE MACHINE istället. !!
    

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
            key_off <= '0';
            key_states <= s_off;
        elsif rising_edge(clk) then
            ten_ms_cnt <= ten_ms_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms 
            if ten_ms_cnt = ten_ms then
                ten_ms_cnt <= 0;
                -- in_key_on_n_2r <= '0';
                key_on <= '0';
            elsif in_key_off_n_2r = '1' then
                -- in_key_off_n_2r <= '1';
                key_off <= '1';
            else
                -- in_key_off_n_2r <= '0';
                key_off <= '0';
            end if;
        end if;

        case key_states is

            when s_off =>

            if reset = '1' then
                -- in_key_off_n_2r <= '0';
                key_off <= '0';
                key_states <= s_off;
            elsif rising_edge(clk) then
                ten_ms_cnt <= ten_ms_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms 
                if ten_ms_cnt = ten_ms then
                    ten_ms_cnt <= 0;
                    in_key_on_n_2r <= '0';
                elsif in_key_off_n_2r = '1' then
                    -- in_key_off_n_2r <= '1';
                    key_off <= '1';
                else
                    -- in_key_off_n_2r <= '0';
                    key_off <= '0';
                end if;
            end if;

        -- p_key_off : process(clk, reset)
        -- begin
        --     if reset = '1' then
        --         in_key_off_n_2r <= '0';
        --     elsif rising_edge(clk) then
        --         ten_ms_cnt <= ten_ms_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms 
        --         if ten_ms_cnt = ten_ms then
        --             ten_ms_cnt <= 0;
        --             in_key_on_n_2r <= '0';
        --         elsif in_key_off_n_2r = '1' then
        --             -- in_key_off_n_2r <= '1';
        --             key_off <= '1';
        --         else
        --             -- in_key_off_n_2r <= '0';
        --             key_off <= '0';
        --         end if;
        --     end if;
        -- end process p_key_off;

            when s_on =>
                if reset = '1' then
                    in_key_on_n_2r <= '0';
                elsif rising_edge(clk) then
                    if in_key_off_n_2r /= '0'then
                        ten_ms_cnt <= ten_ms_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms
                        if ten_ms_cnt = ten_ms then
                            ten_ms_cnt <= 0;
                            in_key_on_n_2r <= '0';
                        elsif in_key_on_n_2r = '1' then
                            -- in_key_on_n_2r <= '1';
                            key_on <= '1';
                        else
                            -- in_key_on_n_2r <= '0';
                            key_on <= '0';
                        end if;
                    end if;
                end if;

            -- p_key_on : process(clk, reset)
            -- begin
            --     if reset = '1' then
            --         in_key_on_n_2r <= '0';
            --     elsif rising_edge(clk) then
            --         if in_key_off_n_2r /= '0'then
            --             ten_ms_cnt <= ten_ms_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms
            --             if ten_ms_cnt = ten_ms then
            --                 ten_ms_cnt <= 0;
            --                 in_key_on_n_2r <= '0';
            --             elsif in_key_on_n_2r = '1' then
            --                 -- in_key_on_n_2r <= '1';
            --                 key_on <= '1';
            --             else
            --                 -- in_key_on_n_2r <= '0';
            --                 key_on <= '0';
            --             end if;
            --         end if;
            --     end if;
            -- end process p_key_on;

            when s_down =>

                if reset = '1' then
                    in_key_down_n_2r <= '0';
                elsif rising_edge(clk) then
                    if in_key_off_n_2r /= '0' or (in_key_down_n_2r /= '0' and in_key_up_n_2r /= '0') then
                        ten_ms_cnt <= ten_ms_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms
                        if ten_ms_cnt = ten_ms then
                            ten_ms_cnt <= 0;
                            -- in_key_on_n_2r <= '0';
                            key_down <= '0';
                        elsif in_key_down_n_2r = '1' then
                            -- in_key_down_n_2r <= '1';
                            key_down <= '1';
                        else
                            in_key_down_n_2r <= '0';
                        end if;
                    end if;
                end if;
            -- p_key_down : process(clk, reset)
            -- begin
            --     if reset = '1' then
            --         in_key_down_n_2r <= '0';
            --     elsif rising_edge(clk) then
            --         if in_key_off_n_2r /= '0' or (in_key_down_n_2r /= '0' and in_key_up_n_2r /= '0') then
            --             ten_ms_cnt <= ten_ms_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms
            --             if ten_ms_cnt = ten_ms then
            --                 ten_ms_cnt <= 0;
            --                 -- in_key_on_n_2r <= '0';
            --                 key_down <= '0';
            --             elsif in_key_down_n_2r = '1' then
            --                 -- in_key_down_n_2r <= '1';
            --                 key_down <= '1';
            --             else
            --                 in_key_down_n_2r <= '0';
            --             end if;
            --         end if;
            --     end if;
            -- end process p_key_down;

            when s_up =>

                if reset = '1' then
                    in_key_up_n_2r <= '0';
                elsif rising_edge(clk) then
                    if in_key_off_n_2r /= '0' or (in_key_down_n_2r /= '0' and in_key_up_n_2r /= '0') then
                        ten_ms_cnt <= ten_ms_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms
                        if ten_ms_cnt = ten_ms then
                            ten_ms_cnt <= 0;
                            -- in_key_on_n_2r <= '0';
                            key_up <= '0';
                        elsif in_key_up_n_2r = '1' then
                            -- in_key_up_n_2r <= '1';
                            key_up <= '1';
                        else
                            -- in_key_up_n_2r <= '0';
                            key_up <= '0';
                        end if;
                    end if;
                end if;
            -- p_key_up : process(clk, reset)
            -- begin
            --     if reset = '1' then
            --         in_key_up_n_2r <= '0';
            --     elsif rising_edge(clk) then
            --         if in_key_off_n_2r /= '0' or (in_key_down_n_2r /= '0' and in_key_up_n_2r /= '0') then
            --             ten_ms_cnt <= ten_ms_cnt + 1; -- Counts clock cycles until 500000 cycles are reached which equeals ten_ms
            --             if ten_ms_cnt = ten_ms then
            --                 ten_ms_cnt <= 0;
            --                 -- in_key_on_n_2r <= '0';
            --                 key_up <= '0';
            --             elsif in_key_up_n_2r = '1' then
            --                 -- in_key_up_n_2r <= '1';
            --                 key_up <= '1';
            --             else
            --                 -- in_key_up_n_2r <= '0';
            --                 key_up <= '0';
            --             end if;
            --         end if;
            --     end if;
            -- end process p_key_up;

        end case;
    end process p_key_states;
end architecture rtl;   