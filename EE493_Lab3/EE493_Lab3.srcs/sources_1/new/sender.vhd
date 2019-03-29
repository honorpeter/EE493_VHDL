

library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.numeric_std.ALL;

entity sender is
    Port(rst, btn, ready, clk,clk_en: in std_logic;
    	 send: out std_logic;
    	 char: out std_logic_vector(7 downto 0));
end sender;

architecture Behavioral of sender is
--define the NetId of length 6
type Ascii_string is array (0 to 5) of std_logic_vector(7 downto 0);
constant net_id : Ascii_string := (
        --"sc1632"
        0 => "01110011", --s: 73 (Hex)
        1 => "01100011",  --c: 63
        2 => "00110001",  --1: 31
        3 => "00110110", --6: 36
        4 => "00110011",  --3: 33
        5 => "00110010"  --2: 32
        );
--constant n: integer := 6;
constant n: std_logic_vector(2 downto 0) := std_logic_vector(to_unsigned(6, 3));

type state_type is (idle, busyA, busyB, busyC);
signal PS: state_type := idle;
--signal NS: state_type := idle;
    begin
    process(clk)
    variable i: std_logic_vector(2 downto 0) := "000";
        begin
        if(rising_edge(clk) and clk_en = '1') then
            
            --PS <= NS;
            if(rst = '1') then

                i := "000";
                char <= "00000000";
                PS <= idle;
                send <= '0';

            else
                case PS is

                    when idle =>

                        if(ready = '1' and btn = '1') then
                        
                            char <= net_id(To_integer(unsigned(i)));
                            -- IF sending is done, reset index and stay idle.
                            if(unsigned(i) = unsigned(n)) then
                                
                                i := std_logic_vector(To_unsigned(0, 3));
                                PS <= idle;
                            
                            -- ELSE: set send to 1 and begin trasmitting to the computer 
                            elsif(unsigned(i) < unsigned(n)) then
                                
                                i := std_logic_vector(unsigned(i) + 1);
                                send <= '1';
                                --NS <= busyB;
                                PS <= busyA;
                            end if;
                        end if;
                    
                    when busyA =>

                        PS <= busyB;

                    when busyB =>

                        send <= '0';
                        PS <= busyC;

                    when busyC =>

                        if(ready = '1' and btn = '0') then

                            PS <= idle;
                        else

                            PS <= busyC;
                        end if;
                end case;


            end if;



        end if;



        
    end process;

end Behavioral;
