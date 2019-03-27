

library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.numeric_std.ALL;


entity my_alu is
	port(A, B, opcode : in std_logic_vector(3 downto 0);
		 S           : out std_logic_vector(3 downto 0));
end my_alu;

architecture Behavioral of my_alu is

begin
process(opcode, A, B)
	begin
	case(opcode) is
		when "0000" =>
			S <= std_logic_vector(unsigned(A) + unsigned(B));
		when "0001" =>
            S <= std_logic_vector(unsigned(A) - unsigned(B));
		when "0010" =>
            S <= std_logic_vector(unsigned(A) + 1);
		when "0011" =>
            S <= std_logic_vector(unsigned(A) - 1);
		when "0100" =>
			S <= std_logic_vector(0 - unsigned(A));
		when "0101" =>
            if A > B then
                S <= "0001";
            else
                S <= "0000";
            end if;
		when "0110" =>
            S <= std_logic_vector(unsigned(A) sll 1);
		when "0111" =>
            S <= std_logic_vector(unsigned(A) srl 1);
		when "1000" =>
			S <= to_stdlogicvector(to_bitvector(A) sra 1);
		when "1001" =>   --bit-wise NOT
            S <= not A;
		when "1010" => --bit-wise AND
            S <= A and B;
		when "1011" => --bit-wise OR
            S <= A or B;
		when "1100" => --bit-wise XOR
			S <= A xor B;
		when "1101" =>
            S <= A xnor B;
		when "1110" =>
            S <= A nand B;
		when "1111" =>
            S <= A nor B;
        when others =>
            S <= A;
    end case;
    end process;
end Behavioral;
