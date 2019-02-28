
library IEEE;
use IEEE.STD_LOGIC_1164.ALL, ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity fancy_counter is
    port( clk, clk_en,dir, en, ld, rst, updn: in std_logic;
          val:                                in std_logic_vector(3 downto 0);
          cnt:                                out std_logic_vector(3 downto 0));
           
end fancy_counter;

architecture compound_ff_counter of fancy_counter is

begin
    
    process(clk)
    variable counter : std_logic_vector(3 downto 0) := "0000";
    variable save_dir : std_logic := '0'; -- 0 for up, 1 for down
    begin
       if(en = '1') then
       if(clk_en = '1') then
            if(clk' event and clk='1') then  -- for synchronous processes: updn ld 
                --up-down:
                if(updn = '1') then
                    save_dir := dir;
                end if;             
                    if(save_dir = '0') then
                        counter := std_logic_vector(unsigned(counter) + 1);
                    elsif(save_dir = '1') then
                        counter := std_logic_vector(unsigned(counter) - 1);
                    end if;
                
                -- for load
                if(ld = '1') then
                    counter := val;
                end if;    
                    
                cnt <= counter;
                
                --reset
                end if;
                if ( rst = '1') then
                     cnt <= "0000";
                end if;
       end if;       
       end if;
    end process;
    
    
end compound_ff_counter;
