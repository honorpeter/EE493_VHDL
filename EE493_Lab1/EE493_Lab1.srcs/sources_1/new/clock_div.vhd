library IEEE;
use IEEE.std_logic_1164.ALL, IEEE.numeric_std.ALL;

entity clock_div is
  port(clk: in std_logic;
       div:   out std_logic);
end clock_div;

architecture clock_arch of clock_div is
  
begin
process(clk) is
  variable counter: integer:=0;
  variable CLK_SYS: integer:=125000000;
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


library IEEE;
use IEEE.std_logic_1164.all;
entity divider_top is
  port(clk:  in std_logic;
       led0: out std_logic);
end divider_top;

architecture div_top of divider_top is
    component clock_div is
        port(clk: in std_logic;
             div: out std_logic);
    end component;
signal FB1_2: std_logic:='0';
signal FW2_1, FW1_1: std_logic;
begin
x1: clock_div port map (clk, FW1_1);
    process(clk)
    begin
        if(clk' event and clk = '1') then
            if(FW1_1= '1') then
                FB1_2 <= NOT(FB1_2);
                --FW2_1 <= NOT (FB1_2);
            end if;
        end if;
    end process;
    led0 <= FB1_2;
 end div_top;