library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm_ctrl is
    port (
        clk               : in std_logic;
        reset             : in  std_logic;   -- active high reset

        serial_off        : in std_logic;
        serial_on         : in std_logic;
        serial_down       : in std_logic;
        serial_up         : in std_logic;

        key_off_n         : in std_logic;
        key_on_n          : in std_logic;
        key_down_n        : in std_logic;
        key_up_n          : in std_logic;

        current_dc        : out std_logic_vector(7 downto 0);
        current_dc_update : out std_logic;

        ledg              : out std_logic
    );
end pwm_ctrl;

architecture rtl of pwm_ctrl is

    type t_pwm_states is (s_on, s_off, s_up, s_down);

    constant one_ms          : integer := 50000; -- one_ms / 20ns = 50,000 clock cycles equals 1000hz
    constant hundred_procent : unsigned(7 downto 0) := "01100100"; -- 100%
    constant ten_procent     : unsigned(7 downto 0) := "00001010"; -- 10%
    constant one_procent     : unsigned(6 downto 0) := "0000001"; -- 1%
    constant zero_procent    : unsigned(7 downto 0) := "00000000"; -- 0%
    constant dc_cnt_max      : integer := 50000; -- 100%

    signal new_dc            : unsigned(7 downto 0); -- 0-100%
    signal update_dc         : std_logic; 
    signal dc_cnt            : integer range 0 to dc_cnt_max; 
    signal update_dc_now     : std_logic;

    signal pwm_state         : t_pwm_states;
    signal one_ms_cnt        : integer range 0 to one_ms;

    signal led               : std_logic;

begin
    ledg <= led; --ms counter mindre än dc cnt så led = 1 annars 0

    current_dc <= std_logic_vector(new_dc);
    current_dc_update <= update_dc_now;

    p_pwm_state_machine : process(clk, reset)
    begin

        if reset = '1' then
            pwm_state <= s_on;
            one_ms_cnt <= 0; -- 1ms counter
            new_dc <= hundred_procent;
            -- The output PWM duty cycle shall be off (0% after reset).
            update_dc <= '0';
            update_dc_now <= '0';
            dc_cnt <= 0;

        elsif rising_edge(clk) then

            if one_ms_cnt < dc_cnt then -- Linjär ökning på 1ms medan dc förändras olinjärt.
                led <= '1';
            else
                led <= '0';
            end if;

            one_ms_cnt <= one_ms_cnt + 1;
            if one_ms_cnt = one_ms then -- !!har det skett någon förändring?? 
                one_ms_cnt <= 0;
                update_dc_now <= '0';
                if update_dc = '1' then
                    update_dc_now <= '1';
                    update_dc <= '0';
                end if;
            end if;

            case pwm_state is
                when s_off =>
                    new_dc <= zero_procent;
                    if key_on_n = '0' or serial_on = '1' then
                        pwm_state <= s_on;
                    elsif key_up_n = '0' or serial_up = '1' then
                        pwm_state <= s_up;
                        new_dc <= ten_procent;
                        update_dc <= '1';
                    end if;

                when s_on =>
                    if new_dc = zero_procent then
                        new_dc <= ten_procent;
                        update_dc <= '1';
                    else
                        new_dc <= new_dc;
                        update_dc <= '1';
                    end if;

                    if key_off_n = '0' or serial_off = '1' then
                        pwm_state <= s_off;
                    elsif key_up_n = '0' or serial_up = '1' then
                        pwm_state <= s_up;
                    elsif key_down_n = '0' or serial_down = '1' then
                        pwm_state <= s_down;
                    else
                        pwm_state <= s_on;
                    end if;

                when s_up =>
                    -- Increase duty cycle with 1%, maximum 100%, minimum 10%. I.e. the key_up
                    -- duty cycle shall be set to 10% if current pwm_state is off pwm_state and up command is received.
                    if new_dc < hundred_procent then
                        new_dc <=('0' & one_procent) + new_dc;
                        update_dc <= '1';
                        dc_cnt <= dc_cnt + 500;
                    end if;

                    if key_off_n = '0' or serial_off = '1' then
                        pwm_state <= s_off;
                    elsif key_up_n = '0' or serial_up = '1' then
                        pwm_state <= s_up;
                    elsif key_down_n = '0' or serial_down = '1' then
                        pwm_state <= s_down;
                    else
                        pwm_state <= s_on;
                    end if;

                when s_down =>
                    -- Decrease duty cycle with 1%, maximum 100%, minimum 10%. I.e. the key_down
                    --  This input shall be ignored if PWM output is in off pwm_state (at 0%).
                    if new_dc > ten_procent then
                        new_dc <=('0' & one_procent) - new_dc;
                        update_dc <= '1';
                        dc_cnt <= dc_cnt - 500;
                    end if;

                    if key_off_n = '0' or serial_off = '1' then
                        pwm_state <= s_off;
                    elsif key_up_n = '0' or serial_up = '1' then
                        pwm_state <= s_up;
                    elsif key_down_n = '0' or serial_down = '1' then
                        pwm_state <= s_down;
                    else
                        pwm_state <= s_on;
                    end if;

                when others =>
                    pwm_state <= s_off;
            end case;
        end if;
    end process p_pwm_state_machine;
end architecture;