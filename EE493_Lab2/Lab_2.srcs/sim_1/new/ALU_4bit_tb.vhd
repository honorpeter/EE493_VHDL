

library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.numeric_std.ALL;

entity ALU_4bit_tb is
end ALU_4bit_tb;

architecture testbench of ALU_4bit_tb is
	signal tb_A : std_logic_vector(3 downto 0) := "0000";
	signal tb_B : std_logic_vector(3 downto 0) := "0000";
	signal tb_C_in : std_logic := '0';
	signal tb_C_out : std_logic := '0';
	signal tb_S : std_logic_vector(3 downto 0) := "0000";

	component ripple_adder is
	port( A, B : in std_logic_vector(3 downto 0);
		  C_0 : in std_logic;
		  S :    out std_logic_vector(3 downto 0);
		  C_4 : out std_logic  );
	end component;

	begin
	--iterate through all test signals with loop
	num_gen_proc: process 
	begin
	for i in 0 to 15 loop
	    tb_A <= std_logic_vector(unsigned(tb_A) + 1);
		for j in 0 to 15 loop
		    tb_B <= std_logic_vector(unsigned(tb_B) + 1);
            for h in 0 to 1 loop
                wait for 10 ms; tb_C_in <= not tb_C_in;
            end loop;
        end loop;
        
    end loop;

    end process num_gen_proc;

    dut: ripple_adder
    port map (
    	A => tb_A,
    	B => tb_B,
    	C_0 => tb_C_in,
    	C_4 => tb_C_out,
    	S => tb_S
    	);

end testbench;
