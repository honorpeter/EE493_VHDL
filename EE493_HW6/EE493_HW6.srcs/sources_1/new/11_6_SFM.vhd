
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ch11_6_SFM is
	port (X, CLK:   in std_logic;
		  Z1, Z2: out std_logic;
		  Y    : out std_logic_vector(1 downto 0));
end Ch11_6_SFM;

architecture Behavioral of Ch11_6_SFM is
	type state_type is (S0, S1, S2, S3);
	signal PS, NS: state_type;
begin

--update state on clock rising
sync_proc: process(CLK)
	begin
	if(CLK' event and CLK = '1') then
		PS <= NS;
	end if;
	end process;

comb_proc: process(X)
	begin
	case PS is

		when S0 =>
			if(X = '0') then Z2 <= '0'; NS <= S2; Z1 <= '1';
			elsif(X = '1') then Z2 <= '0'; NS <= S0; Z1 <= '1';
			end if;

		when S1 =>
			if(X = '0') then Z2 <= '0'; NS <= S3; Z1 <= '0';
			elsif(X = '1') then Z2 <= '0'; NS <= S2; Z1 <= '0';
			end if;

		when S2 =>
			if(X = '0') then Z2 <= '0'; NS <= S1; Z1 <= '1';
			elsif(X = '1') then Z2 <= '0'; NS <= S0; Z1 <= '1';
			end if;

		when S3 =>
			if(X = '0') then Z2 <= '1'; NS <= S0; Z1 <= '0';
			elsif(X = '1') then Z2 <= '0'; NS <= S1; Z1 <= '0';
			end if;

		when others =>
			Z1 <= '1'; Z2 <= '0'; NS <= S0;
	end case;
	end process;

with PS select
	Y <= "00" when S0,
		 "01" when S1,
		 "10" when S2,
		 "11" when S3,
		 "00" when others;

end Behavioral;