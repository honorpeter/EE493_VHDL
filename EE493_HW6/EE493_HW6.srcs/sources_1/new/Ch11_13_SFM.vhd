
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Ch11_13_SFM is
	port( X1, X2, CLK : in std_logic;
		  CS, RD : out std_logic;
		  Y :      out std_logic_vector(2 downto 0));
end Ch11_13_SFM;

architecture Behavioral of Ch11_13_SFM is
	type state_type is (a, b, c);
	signal PS, NS: state_type;
begin
--update state on clock rising
sync_proc: process(CLK)
	begin
	if(rising_edge(CLK)) then
		PS <= NS;
	end if;
	end process;

comb_proc: process(PS, X1, X2)
	begin
	case PS is
	when a =>
		if (X1 = '0') then
			CS <= '0'; RD <= '1';
			NS <= b;
		elsif(X1 = '1') then
			CS <= '1'; RD <= '0';
			NS <= c;
		end if;
	when b =>
		CS <= '1'; RD <= '1';
		NS <= c;
	when c =>
		if(X2 = '0') then
			CS <= '0'; RD <= '0';
			NS <= a;
		elsif(X2 = '1') then
			CS <= '0'; RD <= '1';
			NS <= c;
		end if;
    when others =>
        CS <= '0'; RD <= '1'; NS <= a; 
	end case;
	end process;

with PS select
	Y <= "001" when a,
		 "010" when b,
		 "100" when c,
		 "000" when others;

end Behavioral;
