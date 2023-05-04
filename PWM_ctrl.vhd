library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ent is
    port (
        clk : in std_logic;
        rst : in std_logic;
        sig
    );
end ent;

architecture rtl of ent is

    -- (D)
    signal current_dc : std_logic_vector(7 downto 0);
    signal current_dc_update : std_logic;

begin

end architecture;