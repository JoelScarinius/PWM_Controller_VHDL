library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- The DC disp ctrl component shall output the currect duty cycle in % on three 7 segment digits.
-- The numbers shall be between 0 and 100. Using an BCD converter is probably the easiest
-- approach to do this.
-- The duty cycle shall also be trasmitted on the serial interface whenever the duty cycle is
-- updated. The transmitted data shall be five bytes of data. Three ASCII characters representing
-- the duty cycle between 0 and 100 followed by a ‘%’ character, followed by a carrage return.
-- In the case of a duty cycle between 10 and 99 the first character shall be replaced with a space.
-- And in the case when the duty cycle is between 0 and 9 the first two characters shall be space.
-- In the case of a new duty cycle update have been reported before the current duty cycle
-- information have been fully transmitted on the serial interface the serial send shall be directly
-- started again when finished in order to update the serial interface with the latest information.
-- Reset shall initialize a serial transmission sending 0% duty cycle and display a 0 on the seven
-- segment display.

entity dc_disp_ctrl is
    port (
        clk   : in std_logic;
        reset : in std_logic;   -- active high reset
    );
end dc_disp_ctrl;

architecture rtl of dc_disp_ctrl is

    -- (E)
    signal transmit_valid : std_logic;
    signal transmit_data  : std_logic_vector(7 downto 0);

begin

end architecture rtl;