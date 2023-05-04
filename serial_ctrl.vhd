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

entity ent is
    port (
        clk : in std_logic;
        rst : in std_logic;
        sig
    );
end ent;

architecture rtl of ent is

    -- (C)
    signal serial_on_n   : std_logic;
    signal serial_off_n  : std_logic;
    signal serial_up_n   : std_logic;
    signal serial_down_n : std_logic;

begin

end architecture;