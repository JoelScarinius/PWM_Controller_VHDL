library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ent is
    port (
        clock_50 : in std_logic;
        reset_n  : in std_logic;
    );
end ent;

architecture rtl of ent is

    -- (A)
    signal key_on_n      : std_logic;
    signal key_on_n_r    : std_logic;
    signal key_on_n_2r   : std_logic;

    signal key_off_n     : std_logic;
    signal key_off_n_r   : std_logic;
    signal key_off_n_2r  : std_logic;

    signal key_up_n      : std_logic;
    signal key_up_n_r    : std_logic;
    signal key_up_n_2r   : std_logic;

    signal key_down_n    : std_logic;
    signal key_down_n_r  : std_logic;
    signal key_down_n_2r :  std_logic;

begin

    p_double_sync : process(clock_50)
    begin
        if rising_edge(clock_50) then
            key_on_n_r   <= key_on_n;
            key_on_n_2r  <= key_on_n_r;
            
            key_off_n_r  <= key_off_n;
            key_off_n_2r <= key_off_n_r;

            key_up_n_r   <= key_up_n;
            key_up_n_2r  <= key_up_n_r;

            key_down_n_r <= key_down_n;
            key_down_n_2r <= key_down_n_r;
        end if;
    end process p_double_sync;

    -- The outputs from the compoent shall be set high one clock cycle if the inputs are detected to
    -- be low. If the inputs are held low the outputs shall be pulsed high one clock cycle every 10th
    -- millisecond.
    
    -- The key_n input vector shall be mapped to the outputs in the following way:
    -- key_n(0) shall control key_off output
    -- key_n(1) shall control key_on output
    -- key_n(2) shall control key_down output
    -- key_n(3) shall control key_up output

    -- Key_n input bits 3, 2 and 1 shall be ignored if key_n(0) is pushed down.
    -- No pulses on key_up or key_down shall be generated if both key_n(2) and key_n(3) is pushed
    -- down simultaneously.

end architecture;   