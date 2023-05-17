library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity serial_ctrl is
    port (
        clk                : in std_logic;
        reset              : in std_logic;   -- active high reset

        received_valid     : in std_logic;
        received_data      : in std_logic_vector(7 downto 0);

        serial_off         : out std_logic;
        serial_on          : out std_logic;
        serial_down        : out std_logic;
        serial_up          : out std_logic
    );
end serial_ctrl;

architecture rtl of serial_ctrl is

    signal serial_off_out  : std_logic;
    signal serial_on_out   : std_logic;
    signal serial_down_out : std_logic;
    signal serial_up_out   : std_logic;

    begin

    serial_off  <= serial_off_out;
    serial_on   <= serial_on_out;
    serial_down <= serial_down_out;
    serial_up   <= serial_up_out;

    p_serial_ctrl : process (clk, reset)
    begin
        if reset = '1' then
            serial_off_out  <= '0';
            serial_on_out   <= '0';
            serial_down_out <= '0';
            serial_up_out   <= '0';
        elsif rising_edge(clk) then
            if received_valid = '1' then
                variable ascii_char_as_decimal : integer range 0 to 117;
                ascii_char_as_decimal := to_integer(unsigned(received_data));
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