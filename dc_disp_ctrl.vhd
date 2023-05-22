library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dc_disp_ctrl is
    port (
        clk               : in std_logic;
        reset             : in std_logic;   -- active high reset

        current_dc        : in std_logic_vector(7 downto 0);
        current_dc_update : in std_logic;

        bcd_0             : in std_logic_vector(3 downto 0);
        bcd_1             : in std_logic_vector(3 downto 0);
        bcd_2             : in std_logic_vector(3 downto 0);
        ready             : in std_logic;
        valid_out         : in std_logic;
        
        transmit_ready    : in std_logic;
        
        valid_in          : out std_logic;
        input_vector      : out std_logic_vector(7 downto 0);
        
        transmit_data     : out std_logic_vector(7 downto 0);
        transmit_valid    : out std_logic;

        hex0_n            : out std_logic_vector(6 downto 0);
        hex1_n            : out std_logic_vector(6 downto 0);
        hex2_n            : out std_logic_vector(6 downto 0)
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

    signal bcd_input_vector   : std_logic_vector(7 downto 0);

    -- (E)
    signal transmit_valid_out : std_logic;
    signal transmit_data_out  : std_logic_vector(7 downto 0);

    -- seven segment display outputs
    signal seven_seg_vector0  : std_logic_vector(6 downto 0);
    signal seven_seg_vector1  : std_logic_vector(6 downto 0);
    signal seven_seg_vector2  : std_logic_vector(6 downto 0);

    signal valid_in_bcd       : std_logic;

    signal send_data_state    : t_send_data_state := s_idle;

    function fn_bcd_to_seven_seg (bcd012 : std_logic_vector(3 downto 0)) return std_logic_vector is
        variable return_vector           : std_logic_vector(6 downto 0);
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
                return_vector := off; -- off
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
                return_vector := space; -- space
        end case;
        return return_vector;
    end function;

begin

    hex0_n         <= seven_seg_vector0;
    hex1_n         <= seven_seg_vector1;
    hex2_n         <= seven_seg_vector2;
    transmit_data  <= transmit_data_out;
    transmit_valid <= transmit_valid_out;
    input_vector   <= bcd_input_vector;
    valid_in       <= valid_in_bcd;
    
    process(clk, reset)
    begin
        if reset = '1' then
            send_data_state    <= s_send_hundreds;
            bcd_input_vector   <= "00000000";
            valid_in_bcd       <= '1';
            seven_seg_vector0  <= off;
            seven_seg_vector1  <= off;
            seven_seg_vector2  <= off;
            transmit_valid_out <= '0';
            transmit_data_out  <= space;
        elsif rising_edge(clk) then
            case send_data_state is
                -- !! Hur ska jag göra för att skick 2 spaces !!
                -- !! Ser i simuleringen att jag inte alltid skickar 5 värden är transmi_valid_out inte hög länge nog? !!
                when s_idle =>
                    transmit_valid_out <= '0';
                    valid_in_bcd       <= '1';
                    if ready = '1' and current_dc_update = '1' then
                        bcd_input_vector   <= current_dc;
                        send_data_state    <= s_send_hundreds;
                    end if;

                when s_send_hundreds =>
                    if valid_out = '1' then
                        if (to_integer(unsigned(current_dc)) < 100) and transmit_ready = '1' then
                            if transmit_valid_out = '0' then
                                transmit_data_out  <= space; -- space decimal 32
                                transmit_valid_out <= '1';
                                seven_seg_vector2  <= off;
                            else 
                                send_data_state    <= s_send_tens;
                                transmit_valid_out <= '0';
                            end if;
                        elsif transmit_ready = '1' and (bcd_2 = "0001") then
                            if transmit_valid_out = '0' then
                                transmit_valid_out <= '1';
                                transmit_data_out  <= fn_bcd_to_byte(bcd_2(3 downto 0));
                                seven_seg_vector2  <= fn_bcd_to_seven_seg(bcd_2(3 downto 0));
                            else 
                                send_data_state    <= s_send_tens;
                                transmit_valid_out <= '0';
                            end if;
                        end if;
                    end if;

                when s_send_tens =>
                    if valid_out = '1' then
                        if (to_integer(unsigned(current_dc)) < 10) and transmit_ready = '1' then
                            if transmit_valid_out = '0' then
                                transmit_data_out  <= space; -- space decimal 32
                                seven_seg_vector1  <= off;
                                transmit_valid_out <= '1';
                            else
                                transmit_valid_out <= '0';                                
                                send_data_state    <= s_send_ones;
                            end if;
                        elsif transmit_ready = '1' and ((to_integer(unsigned(current_dc)) /= 0) and (to_integer(unsigned(current_dc)) >= 10)) then
                            if (bcd_1 /= "0000") or (to_integer(unsigned(current_dc)) = 100) then
                                if transmit_valid_out = '0' then
                                    transmit_valid_out <= '1';
                                    transmit_data_out  <= fn_bcd_to_byte(bcd_1(3 downto 0));
                                    seven_seg_vector1  <= fn_bcd_to_seven_seg(bcd_1(3 downto 0));
                                else 
                                    send_data_state    <= s_send_ones;
                                    transmit_valid_out <= '0';
                                end if;
                            end if;
                        end if;
                    end if;
                    
                when s_send_ones =>
                    if valid_out = '1' then
                        if transmit_ready = '1' then
                            if transmit_valid_out = '0' then
                                transmit_valid_out <= '1';
                                transmit_data_out  <= fn_bcd_to_byte(bcd_0(3 downto 0));
                                seven_seg_vector0  <= fn_bcd_to_seven_seg(bcd_0(3 downto 0));
                            else 
                                send_data_state    <= s_send_procent;
                                transmit_valid_out <= '0';
                            end if;
                        end if;
                    end if;

                when s_send_procent =>
                    if valid_out = '1' then
                        if transmit_ready = '1' then
                            if transmit_valid_out = '0' then
                                transmit_data_out  <= procent; -- % decimal 37
                                transmit_valid_out <= '1';
                            else 
                                send_data_state    <= s_send_cr;
                                transmit_valid_out <= '0';
                            end if;
                        end if;
                    end if;
                    
                when s_send_cr =>
                    if valid_out = '1' then
                        if transmit_ready = '1' then
                            if transmit_valid_out = '0' then
                                transmit_valid_out <= '1';
                                transmit_data_out  <= cr ; -- CR decimal 13
                            else 
                                send_data_state    <= s_idle;
                                transmit_valid_out <= '0';
                            end if;
                        end if;
                    end if;

            end case;
        end if;
    end process;
end architecture rtl;