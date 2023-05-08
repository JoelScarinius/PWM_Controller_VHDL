library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- The Serial ctrl component shall receive data from the Serial UART component. The data
-- received is expected to be ASCII Characters. When the ASCII Character ‘U’ or ‘u’ is received a
-- one clock cycle long pulse shall be generated on the serial_up output. The serial_down signal
-- shall be controlled in the same way when ASCII character ‘D’ or ‘d’ is received. The serial_off
-- signal shall be pulsed high when the number ‘0’ is received. And the serial_on signal shall be
-- pulsed when the ASCII Character for number ‘1’ is received. All other received data shall be
-- ignored without any action.

entity serial_ctrl is
    port (
        clk   : in std_logic;
        reset : in std_logic;   -- active high reset
    );
end serial_ctrl;

architecture rtl of serial_ctrl is

        -- "01110101", -- u = u
        -- "01100100", -- d = d
        -- "01010101", -- U = U
        -- "01000100", -- D = D
        -- "00110001", -- 1 = 1
        -- "00110000"  -- 0 = 0

    signal serial_off  : std_logic;
    signal serial_on   : std_logic;
    signal serial_down : std_logic;
    signal serial_up   : std_logic;

    begin
    p_serial_ctrl : process (clk, reset)
        variable ascii_char_as_decimal : natural range 0 to 255;
    begin
        if reset = '1' then
            serial_off  <= '0';
            serial_on   <= '0';
            serial_down <= '0';
            serial_up   <= '0';
        elsif rising_edge(clk) then
            if received_data_valid = '1' then
                if serial_up = '1' or serial_down = '1' then
                    serial_off <= '0';
                    serial_on  <= '0';
                end if;
                ascii_char_as_decimal := to_integer(unsigned(recieved_data));

                case ascii_char_as_decimal is
                    when 0 =>
                        serial_off <= '1';
                    when 1 =>
                        serial_on <= '1';
                    when 68 or 100 =>
                        serial_down <= '1';
                    when 85 or 117 =>
                        serial_up <= '1';
                    when others =>
                        -- no action
                end case;
            end if;
        end if;
    end process p_serial_ctrl;
end architecture;