
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_div is
  port(clk: in std_logic;
       div:   out std_logic);
end clk_div;

architecture clock_arch of clk_div is
  
begin
process(clk) is
  variable counter: integer:=0;
  variable CLK_SYS: integer:=1085; --125000000/115200, should actually be 1085.1
  begin
    
    if(clk' event  and clk = '1') then
    counter := counter + 1;
      if(counter = CLK_SYS/2) then
        counter := 0;
      elsif(counter <= CLK_SYS/2 - 1 and counter >= CLK_SYS/4) then
        div <= '1';
      elsif(counter <= CLK_SYS/4 - 1 and counter >= 0) then
        div <= '0';
      end if;
    end if;
  end process;
  
end clock_arch;