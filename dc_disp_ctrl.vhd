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
        clk               : in std_logic;
        reset             : in std_logic;   -- active high reset

        current_dc        : in std_logic_vector(7 downto 0);
        current_dc_update : in std_logic;

        valid_out         : in std_logic;

        bcd_0             : in std_logic_vector(3 downto 0);
        bcd_1             : in std_logic_vector(3 downto 0);
        bcd_2             : in std_logic_vector(3 downto 0);

        transmit_ready    : in std_logic;
        
        input_vector      : out std_logic_vector(7 downto 0);
        
        transmit_data     : out std_logic_vector(7 downto 0);
        transmit_valid    : out std_logic;

        hex0              : out std_logic_vector(6 downto 0);
        hex1              : out std_logic_vector(6 downto 0);
        hex2              : out std_logic_vector(6 downto 0)


    );
end dc_disp_ctrl;

architecture rtl of dc_disp_ctrl is

    signal bcd_0_in : std_logic_vector(3 downto 0);
    signal bcd_1_in : std_logic_vector(3 downto 0);
    signal bcd_2_in : std_logic_vector(3 downto 0);

    -- (D)
    -- signal current_dc        : std_logic_vector(7 downto 0);
    -- signal current_dc_update : std_logic;

    -- (E)
    signal transmit_valid_out    : std_logic;
    signal transmit_data_out     : std_logic_vector(7 downto 0);

    -- seven segment and serial output
    signal received_vector0  : std_logic_vector(14 downto 0);
    signal received_vector1  : std_logic_vector(14 downto 0);
    signal received_vector2  : std_logic_vector(14 downto 0);

    function fn_bcd_to_7seg_and_serial (bcd012 : std_logic_vector(3 downto 0)) return std_logic_vector is
        variable seven_seg_vector   : std_logic_vector(6 downto 0);
        variable transmittable_byte : std_logic_vector(7 downto 0);
        variable return_vector      : std_logic_vector(14 downto 0);
    begin
        
        case bcd012 is
            when "0000" => 
                seven_seg_vector := "1000000"; -- 0
                transmittable_byte := "00110000"; -- 0
            when "0001" => 
                seven_seg_vector := "1111001"; -- 1
                transmittable_byte := "00110001"; -- 1
            when "0010" =>  
                seven_seg_vector := "0100100"; -- 2
                transmittable_byte := "00110010"; -- 2
            when "0011" => 
                seven_seg_vector := "0110000"; -- 3
                transmittable_byte := "00110011"; -- 3
            when "0100" => 
                seven_seg_vector := "0011001"; -- 4
                transmittable_byte := "00110100"; -- 4
            when "0101" => 
                seven_seg_vector := "0010010"; -- 5
                transmittable_byte := "00110101"; -- 5
            when "0110" => 
                seven_seg_vector := "0000010"; -- 6
                transmittable_byte := "00110110"; -- 6
            when "0111" => 
                seven_seg_vector := "1111000"; -- 7
                transmittable_byte := "00110111"; -- 7
            when "1000" => 
                seven_seg_vector := "0000000"; -- 8
                transmittable_byte := "00111000"; -- 8
            when "1001" => 
                seven_seg_vector := "0011000"; -- 9
                transmittable_byte := "00111001"; -- 9
            when others =>  
                seven_seg_vector := "1111111"; -- off
                transmittable_byte := "00110000"; -- 0
        end case;
            return_vector := transmittable_byte & seven_seg_vector;
        return return_vector;
    end function;

begin

    -- !! Vet inte hur jag ska kunna skicka 5 bytes med data när jag bara kan skicka 1 i taget, ska jag låta det gå en klockcykel 
    -- !! mellan varje byte?

    hex0 <= received_vector0(6 downto 0);
    hex1 <= received_vector1(6 downto 0);
    hex2 <= received_vector2(6 downto 0);
    -- transmit_data <= received_vector0(14 downto 7);
    -- transmit_data <= received_vector1(14 downto 7);
    -- transmit_data <= received_vector2(14 downto 7);
    -- transmit_data <= "00100101";
    -- transmit_data <= "00001101";
    -- !! Ska jag skicka ett/två space alltså decimal 32 istället för 0 om det är 0-9 eller 10-99?
    input_vector <= current_dc;
    transmit_valid <= transmit_valid_out;
    
    process(clk, reset)
    begin
        if reset = '1' then
            transmit_valid_out <= '0';
            transmit_data_out  <= "00110000";
            transmit_data_out  <= "00100101";
            transmit_data_out  <= "00001101";
        elsif rising_edge(clk) then
            if valid_out = '1' then
                bcd_0_in <= bcd_0;
                bcd_1_in <= bcd_1;
                bcd_2_in <= bcd_2;
                if transmit_ready = '1' then
                    transmit_valid_out <= '1';
                    
                    received_vector0 <= fn_bcd_to_7seg_and_serial(bcd_0_in(3 downto 0));
                    received_vector1 <= fn_bcd_to_7seg_and_serial(bcd_1_in(3 downto 0));
                    received_vector2 <= fn_bcd_to_7seg_and_serial(bcd_2_in(3 downto 0));
                    
                end if;
            end if;
            
        end if;
    end process;
end architecture rtl;