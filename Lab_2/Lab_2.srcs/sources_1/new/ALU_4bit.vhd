----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2019 08:41:13 PM
-- Design Name: 
-- Module Name: ALU_4bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is
	port(A0, B0, C_in: in std_logic;
		 S0, C_out:   out std_logic);
end adder;

architecture single_bahavior of adder is
	begin
	S0 <= (A0 xor B0) xor C_in;
	C_out <= ((A0 xor B0) and C_in) or (A0 and B0);

end single_bahavior;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ripple_adder is
	
	port(A, B:  in std_logic_vector(3 downto 0);
		 C_0 :  in std_logic;
		 S:     out std_logic_vector(3 downto 0);
		 C_4 :  out std_logic);
end ripple_adder;

architecture Structural of ripple_adder is
	component adder is
		port(A0, B0, C_in: in std_logic;
			 S0, C_out:    out std_logic);
	end component;

-- define Shift ups as intermediate signals
signal c_1, c_2, c_3: std_logic;
begin
x0: adder port map (A0 => A(0),
					B0 => B(0),
					C_in => C_0,
					S0 => S(0),
					C_out => c_1);

x1: adder port map (A0 => A(1),
					B0 => B(1),
					C_in => C_1,
					S0 => S(1),
					C_out => c_2);

x2: adder port map (A0 => A(2),
					B0 => B(2),
					C_in => C_2,
					S0 => S(2),
					C_out => c_3);

x3: adder port map (A0 => A(3),
					B0 => B(3),
					C_in => C_3,
					S0 => S(3),
					C_out => c_4);

end Structural;
