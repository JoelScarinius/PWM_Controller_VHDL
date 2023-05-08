library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm_ctrl is
    port (
        clk   : in std_logic;
        reset : in  std_logic;   -- active high reset
    );
end pwm_ctrl;

architecture rtl of pwm_ctrl is

    type t_pwm_states (s_on, s_off, s_up, s_down);

    constant 1ms             : integer := 50000 -- 1ms / 20ns = 50,000
    constant 100procent      : integer := 100; -- 100%
    constant 10procent       : integer := 10;  -- 10%
    constant 1procent        : integer := 1;   -- 1%
    constant 0procent        : integer := 0;   -- 0%

    signal key_off_n         : std_logic;
    signal key_on_n          : std_logic; 
    signal key_down_n        : std_logic;
    signal key_up_n          : std_logic;

    signal serial_on         : std_logic;
    signal serial_off        : std_logic;
    signal serial_up         : std_logic;
    signal serial_down       : std_logic; 

    signal current_dc        : std_logic;
    signal current_dc_update : std_logic;

    signal pwm_state         : t_pwm_states;
    signal 1ms_counter       : integer range 0 to 1ms;

begin

    p_pwm_state_machine : process(clk, reset)
    begin
        if reset = '1' then
            pwm_state <= s_on;
            1ms_counter <= 0;
            -- 100% duty cycle
            -- 1000hz
            current_dc <= 100procent;
            -- The output PWM duty cycle shall be off (0% after reset).
            current_dc_update <= '0';

        elsif rising_edge(clk) then
            1ms_counter <= 1ms_counter + 1;
            if 1ms_counter = 1ms then
                current_dc_update <= '1';
            end if;

            case pwm_state is
                when s_off =>
                    current_dc <= 0procent;
                    if key_on_n = '0' or serial_on = '1' then
                        pwm_state <= s_on;
                    elsif key_up_n = '0' or serial_up = '1' then
                        pwm_state <= s_up;
                        current_dc <= 10procent;
                    end if;

                when s_on =>
                    if current_dc = 0 then
                        current_dc <= 10procent;
                    else
                        current_dc <= current_dc;
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
                    if current_dc < 100procent then
                        current_dc <= current_dc + 1procent;
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
                    if current_dc > 10procent then
                        current_dc <= current_dc - 1procent;
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