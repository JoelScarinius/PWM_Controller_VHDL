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
        clk                 : in std_logic;
        reset               : in std_logic;   -- active high reset

        current_dc          : in std_logic_vector(7 downto 0);
        current_dc_update   : in std_logic;

        valid_out           : in std_logic;

        bcd_0               : in std_logic_vector(3 downto 0);
        bcd_1               : in std_logic_vector(3 downto 0);
        bcd_2               : in std_logic_vector(3 downto 0);
        
        transmit_ready      : in std_logic;
        
        input_vector        : out std_logic_vector(7 downto 0);
        
        transmit_data       : out std_logic_vector(7 downto 0);
        transmit_valid      : out std_logic;

        hex0_n              : out std_logic_vector(6 downto 0);
        hex1_n              : out std_logic_vector(6 downto 0);
        hex2_n              : out std_logic_vector(6 downto 0)
    );
end dc_disp_ctrl;

architecture rtl of dc_disp_ctrl is

    constant procent : std_logic_vector(7 downto 0) := "00100101"; -- %
    constant cr      : std_logic_vector(7 downto 0) := "00001101"; -- CR
    constant space   : std_logic_vector(7 downto 0) := "00100000"; -- space
    constant off     : std_logic_vector(6 downto 0) := "1111111"; -- off

    type t_send_data_state is ( s_idle,
                        s_send_hundreds,
                        s_send_tens,
                        s_send_ones,
                        s_send_procent,
                        s_send_cr
                        );

    signal bcd_0_in           : std_logic_vector(3 downto 0);
    signal bcd_1_in           : std_logic_vector(3 downto 0);
    signal bcd_2_in           : std_logic_vector(3 downto 0);

    -- (E)
    signal transmit_valid_out : std_logic;
    signal transmit_data_out  : std_logic_vector(7 downto 0);

    -- seven segment and serial output
    signal byte_vector        : std_logic_vector(7 downto 0);
    signal seven_seg_vector0  : std_logic_vector(6 downto 0);
    signal seven_seg_vector1  : std_logic_vector(6 downto 0);
    signal seven_seg_vector2  : std_logic_vector(6 downto 0);

    signal send_data_state    : t_send_data_state := s_idle;

    function fn_bcd_to_seven_seg (bcd012 : std_logic_vector(3 downto 0)) return std_logic_vector is
        variable return_vector : std_logic_vector(6 downto 0);
    begin
        
        case bcd012 is
            when "0000" => 
                return_vector := "1000000"; -- 0
            when "0001" => 
                return_vector := "1111001"; -- 1
            when "0010" =>  
                return_vector := "0100100"; -- 2
            when "0011" => 
                return_vector := "0110000"; -- 3
            when "0100" => 
                return_vector := "0011001"; -- 4
            when "0101" => 
                return_vector := "0010010"; -- 5
            when "0110" => 
                return_vector := "0000010"; -- 6
            when "0111" => 
                return_vector := "1111000"; -- 7
            when "1000" => 
                return_vector := "0000000"; -- 8
            when "1001" => 
                return_vector := "0011000"; -- 9
            when others =>  
                return_vector := "1111111"; -- off
        end case;
        return return_vector;
    end function;

    function fn_bcd_to_byte (bcd012 : std_logic_vector(3 downto 0)) return std_logic_vector is
        variable return_vector      : std_logic_vector(7 downto 0);
    begin
        
        case bcd012 is
            when "0000" => 
                return_vector := "00110000"; -- 0
            when "0001" => 
                return_vector := "00110001"; -- 1
            when "0010" =>  
                return_vector := "00110010"; -- 2
            when "0011" => 
                return_vector := "00110011"; -- 3
            when "0100" => 
                return_vector := "00110100"; -- 4
            when "0101" => 
                return_vector := "00110101"; -- 5
            when "0110" => 
                return_vector := "00110110"; -- 6
            when "0111" => 
                return_vector := "00110111"; -- 7
            when "1000" => 
                return_vector := "00111000"; -- 8
            when "1001" => 
                return_vector := "00111001"; -- 9
            when others =>  
                return_vector := "00110000"; -- 0
        end case;
        return return_vector;
    end function;

begin

    -- !! Vet inte hur jag ska kunna skicka 5 bytes med data när jag bara kan skicka 1 i taget, ska jag låta det gå en klockcykel 
    -- !! mellan varje byte?
    -- state maskin med idle state, när uppdaterade dc kolla på valid out och 3 bcd siffror. send hundratal, tiotal, ental

    hex0_n              <= seven_seg_vector0(6 downto 0);
    hex1_n              <= seven_seg_vector1(6 downto 0);
    hex2_n              <= seven_seg_vector2(6 downto 0);
    transmit_data       <= byte_vector(7 downto 0);
    transmit_valid      <= transmit_valid_out;
    input_vector        <= current_dc;
    
    process(clk, reset)
    begin
        if reset = '1' then
            send_data_state    <= s_idle;
            transmit_valid_out <= '0';
            seven_seg_vector0  <= off;
            seven_seg_vector1  <= off;
            seven_seg_vector2  <= off;
        elsif rising_edge(clk) then

            case send_data_state is

            when s_idle =>
                if current_dc_update = '1' then
                    send_data_state <= s_send_hundreds;
                end if;
            
            when s_send_hundreds =>
                if valid_out = '1' then
                    bcd_2_in <= bcd_2;
                    if to_integer(unsigned(current_dc)) < 100 and transmit_ready = '1' then
                        transmit_valid_out <= '1';
                        byte_vector        <= space ; -- space decimal 32
                        seven_seg_vector2  <= off;
                    else
                        transmit_valid_out <= '1';
                        byte_vector        <= fn_bcd_to_byte(bcd_2_in(3 downto 0));
                        seven_seg_vector2  <= fn_bcd_to_seven_seg(bcd_2_in(3 downto 0));
                    end if;
                    send_data_state        <= s_send_tens;
                end if;
            
            when s_send_tens =>
                if valid_out = '1' then
                    bcd_1_in <= bcd_1;
                    if to_integer(unsigned(current_dc)) < 10 and transmit_ready = '1' then
                        transmit_valid_out <= '1';
                        byte_vector        <= space ; -- space decimal 32
                        seven_seg_vector2  <= off;
                    else
                        transmit_valid_out <= '1';
                        byte_vector        <= fn_bcd_to_byte(bcd_1_in(3 downto 0));
                        seven_seg_vector1  <= fn_bcd_to_seven_seg(bcd_1_in(3 downto 0));
                    end if;
                    send_data_state        <= s_send_ones;
                end if;
            
            when s_send_ones =>
                if valid_out = '1' then
                    bcd_0_in <= bcd_0;
                    if transmit_ready = '1' then
                        transmit_valid_out <= '1';
                        byte_vector        <= fn_bcd_to_byte(bcd_0_in(3 downto 0));
                        seven_seg_vector0  <= fn_bcd_to_seven_seg(bcd_0_in(3 downto 0));
                    end if;
                    send_data_state        <= s_send_procent;
                end if;

            when s_send_procent =>
                if valid_out = '1' then

                    if transmit_ready = '1' then
                        transmit_valid_out <= '1';
                        byte_vector <= procent; -- % decimal 37
                    end if;
                    send_data_state <= s_send_cr;
                end if;
            
            when s_send_cr =>
                if valid_out = '1' then

                    if transmit_ready = '1' then
                        transmit_valid_out <= '1';
                        byte_vector <= cr ; -- CR decimal 13
                    end if;
                    send_data_state <= s_idle;
                end if;

            end case;
        end if;
    end process;
end architecture rtl;