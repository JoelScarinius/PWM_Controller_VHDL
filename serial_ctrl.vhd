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
        clk                 : in std_logic;
        reset               : in std_logic;   -- active high reset

        received_valid      : in std_logic;
        received_data       : in std_logic_vector(7 downto 0);

        serial_off          : out std_logic;
        serial_on           : out std_logic;
        serial_down         : out std_logic;
        serial_up           : out std_logic
    );
end serial_ctrl;

architecture rtl of serial_ctrl is

    signal serial_off_out         : std_logic;
    signal serial_on_out          : std_logic;
    signal serial_down_out        : std_logic;
    signal serial_up_out          : std_logic;

    signal received_valid_in      : std_logic;
    signal received_data_in       : std_logic_vector(7 downto 0);

    begin

    serial_off             <= serial_off_out;
    serial_on              <= serial_on_out;
    serial_down            <= serial_down_out;
    serial_up              <= serial_up_out;
    received_valid_in      <= received_valid;
    received_data_in       <= received_data;

    p_serial_ctrl : process (clk, reset)
        variable ascii_char_as_decimal : natural range 0 to 255;
    begin
        if reset = '1' then
            serial_off_out  <= '0';
            serial_on_out   <= '0';
            serial_down_out <= '0';
            serial_up_out   <= '0';
        elsif rising_edge(clk) then
            if received_valid_in = '1' then
                if serial_up_out = '1' or serial_down_out = '1' then
                    serial_off_out <= '0';
                    serial_on_out  <= '0';
                end if;
                ascii_char_as_decimal := to_integer(unsigned(received_data_in));

                case ascii_char_as_decimal is
                    when 0 =>
                        serial_off_out  <= '1';
                    when 1 =>
                        serial_on_out   <= '1';
                    when 68 | 100 =>
                        serial_down_out <= '1';
                    when 85 | 117 =>
                        serial_up_out   <= '1';
                    when others =>
                        -- no action
                end case;
            end if;
        end if;
    end process p_serial_ctrl;
end architecture;