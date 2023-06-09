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

        key_off           : in std_logic;
        key_on            : in std_logic;
        key_down          : in std_logic;
        key_up            : in std_logic;

        current_dc        : out std_logic_vector(7 downto 0);
        current_dc_update : out std_logic;

        ledg              : out std_logic
    );
end pwm_ctrl;

architecture rtl of pwm_ctrl is

    type t_pwm_states is (s_idle, s_off, s_on, s_down, s_up);

    constant one_ms          : integer              := 50000; -- 1ms / 20ns = 50,000 clock cycles equals 1000hz
    constant dc_cnt_max      : integer              := 50000;
    constant hundred_procent : unsigned(7 downto 0) := "01100100"; -- 100%
    constant ten_procent     : unsigned(7 downto 0) := "00001010"; -- 10%
    constant one_procent     : unsigned(6 downto 0) := "0000001"; -- 1%
    constant zero_procent    : unsigned(7 downto 0) := "00000000"; -- 0%

    signal new_dc            : unsigned(7 downto 0); -- 0-100%
    signal previous_dc       : unsigned(7 downto 0); -- 0-100%
    signal update_dc         : std_logic; 
    signal dc_cnt            : integer range 0 to dc_cnt_max; 
    signal update_dc_now     : std_logic;

    signal pwm_state         : t_pwm_states := s_idle;
    signal one_ms_cnt        : integer range 0 to one_ms;

    signal led               : std_logic;

begin
    ledg              <= led;

    current_dc        <= std_logic_vector(new_dc);
    current_dc_update <= update_dc_now;

    p_pwm_state_machine : process(clk, reset)
    begin

        if reset = '1' then
            pwm_state     <= s_off;
            previous_dc   <= hundred_procent;
            one_ms_cnt    <= 0; -- 1ms counter
            dc_cnt        <= 0;
            led           <= '0';
            new_dc        <= zero_procent;
            update_dc_now <= '1';

        elsif rising_edge(clk) then

            if dc_cnt >= one_ms_cnt and dc_cnt /= 0 then
                led <= '1';
            else
                led <= '0';
            end if;

            if one_ms_cnt < one_ms then
                one_ms_cnt    <= one_ms_cnt + 1;
                update_dc_now <= '0';
            else
                if update_dc = '1' then
                    update_dc_now <= '1';
                end if;
                one_ms_cnt <= 0;
                update_dc  <= '0';
            end if;

        case pwm_state is

            when s_idle =>
                if key_off   = '1' then
                    pwm_state <= s_off;
                elsif key_on = '1' then
                    pwm_state <= s_on;
                else 
                    if key_down = '1' then
                        pwm_state <= s_down;
                    end if;    
                    if key_up   = '1' then
                        pwm_state <= s_up;
                    end if;
                end if;

                if key_off = '0' and key_up = '0' and key_down = '0' and key_up = '0' then
                    if serial_off   = '1' then
                        pwm_state <= s_off;
                    elsif serial_on = '1' then
                        pwm_state <= s_on;
                    else 
                        if serial_down = '1' then
                            pwm_state <= s_down;
                        end if;    
                        if serial_up   = '1' then
                            pwm_state <= s_up;
                        end if;    
                    end if;    
                end if;

            when s_off =>
                if previous_dc /= hundred_procent then
                    previous_dc <= new_dc;
                end if;
                new_dc      <= zero_procent;
                update_dc   <= '1';
                dc_cnt      <= 0;
                if key_on    = '1' then
                    previous_dc <= new_dc;
                    pwm_state <= s_on;
                elsif key_up = '1' then
                    previous_dc <= new_dc;
                    pwm_state <= s_up;
                end if;

                if key_off = '0' and key_up = '0' and key_down = '0' and key_up = '0' then
                    if serial_on  = '1' then
                        previous_dc <= new_dc;
                        pwm_state <= s_off;
                    else 
                        if serial_down = '1' then
                            previous_dc <= new_dc;
                            pwm_state <= s_down;
                        end if;    
                        if serial_up   = '1' then
                            previous_dc <= new_dc;
                            pwm_state <= s_up;
                        end if;    
                    end if;    
                end if; 
                pwm_state <= s_idle;

            when s_on =>
                update_dc <= '1';
                if  previous_dc <= ten_procent then
                    previous_dc <= new_dc;
                    new_dc      <= ten_procent;
                else
                    previous_dc <= new_dc;
                    new_dc      <= previous_dc;
                    dc_cnt      <= to_integer(unsigned(previous_dc))*500;
                end if;
                
                if key_off  = '1' then
                    previous_dc <= new_dc;
                    pwm_state <= s_off;
                else 
                    if key_down = '1' then
                        previous_dc <= new_dc;
                        pwm_state <= s_down;
                    end if;    
                    if key_up   = '1' then
                        previous_dc <= new_dc;
                        pwm_state <= s_up;
                    end if;    
                end if;    

                if key_off = '0' and key_up = '0' and key_down = '0' and key_up = '0' then
                    if serial_off  = '1' then
                        previous_dc <= new_dc;
                        pwm_state <= s_off;
                    else 
                        if serial_down = '1' then
                            previous_dc <= new_dc;
                            pwm_state <= s_down;
                        end if;    
                        if serial_up   = '1' then
                            previous_dc <= new_dc;
                            pwm_state <= s_up;
                        end if;    
                    end if;    
                end if;
                pwm_state <= s_idle;

            when s_up =>
                -- Increase duty cycle with 1%, maximum 100%, minimum 10%. I.e. the key_up
                -- duty cycle shall be set to 10% if current pwm_state is off pwm_state and up command is received.
                if new_dc     = zero_procent then
                    previous_dc <= new_dc;
                    new_dc      <= ten_procent;
                    dc_cnt      <= 5000;
                    update_dc   <= '1';
                elsif new_dc  < hundred_procent then
                    previous_dc <= new_dc;
                    new_dc      <=('0' & one_procent) + new_dc;
                    update_dc   <= '1';
                    if dc_cnt /= dc_cnt_max then
                        dc_cnt  <= dc_cnt + 500;
                    end if;  
                end if;      
                
                if key_off  = '1' then
                    previous_dc <= new_dc;
                    pwm_state <= s_off;
                else 
                    if key_down = '1' then
                        previous_dc <= new_dc;
                        pwm_state <= s_down;
                    end if;        
                end if;

                if key_off = '0' and key_up = '0' and key_down = '0' and key_up = '0' then
                    if serial_off  = '1' then
                        previous_dc <= new_dc;
                        pwm_state <= s_off;
                    elsif serial_down = '1' then
                        previous_dc <= new_dc;
                        pwm_state <= s_down;
                    end if;    
                end if;
                pwm_state <= s_idle;

            when s_down =>
                -- Decrease duty cycle with 1%, maximum 100%, minimum 10%. I.e. the key_down
                --  This input shall be ignored if PWM output is in off pwm_state (at 0%).
                if new_dc > ten_procent then
                    previous_dc <= new_dc;
                    new_dc      <= new_dc - one_procent;
                    update_dc   <= '1';
                    if dc_cnt > 0 and dc_cnt /= dc_cnt_max then
                        dc_cnt  <= dc_cnt - 500;
                    end if;
                end if;

                if key_off  = '1' then
                    previous_dc <= new_dc;
                    pwm_state <= s_off;
                else     
                    if key_up   = '1' then
                        previous_dc <= new_dc;
                        pwm_state <= s_up;
                    end if;     
                end if;

                if key_off = '0' and key_up = '0' and key_down = '0' and key_up = '0' then
                    if serial_off  = '1' then
                        previous_dc <= new_dc;
                        pwm_state <= s_off;
                    elsif serial_up   = '1' then
                        previous_dc <= new_dc;
                        pwm_state <= s_up;
                    end if;    
                end if;
                pwm_state <= s_idle;

            end case;
        end if;
    end process p_pwm_state_machine;
end architecture;