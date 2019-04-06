--Compute Gaussian Blur using DSP unit, with Conv Net In Mind

library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.NUMERIC_STD.ALL;
Library UNISIM; 
use UNISIM.vcomponents.all;
library UNIMACRO;
use UNIMACRO.Vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--ADDMACC_MACRO: Add and Multiple Accumulate Function implemented in a DSP48E 
-- 7 Series 
-- Xilinx HDL Libraries Guide, version 2012.2


entity Filter_Gaussian_Blur_5 is
    port(PRODUCT : out std_logic_vector(47 downto 0);
    	 MULTIPLIER : in std_logic_vector(17 downto 0);
    	 PREADDER1: in std_logic_vector(24 downto 0);
    	 PREADDER2: in std_logic_vector(24 downto 0);

    	 CARRYIN: in std_logic;
    	 CE: in std_logic;
    	 CLK: in std_logic;

    	 LOAD: in std_logic;
    	 LOAD_DATA: in std_logic_vector(47 downto 0);
    	 RST : in std_logic);


end Filter_Gaussian_Blur_5;

architecture Behavioral of Filter_Gaussian_Blur_5 is

begin
Filter_Gaussian_Blur_5 : ADDMACC_MACRO 
generic map ( DEVICE => "7SERIES", -- Target Device: "7SERIES", "VIRTEX6", "SPARTAN6" 
			  LATENCY => 4, -- Desired clock cycle latency, 1-4 \
			  WIDTH_PREADD => 25, -- Pre-Adder input bus width, 1-25 
			  WIDTH_MULTIPLIER => 18, -- Multiplier input bus width, 1-18 
			  WIDTH_PRODUCT => 48) -- MACC output width, 1-48 
port map ( PRODUCT => PRODUCT, -- MACC result output, width defined by WIDTH_PRODUCT generic 
		   MULTIPLIER => MULTIPLIER, -- Multiplier data input, width determined by WIDTH_MULTIPLIER generic 
		   PREADD1 => PREADDER1, -- Preadder data input, width determined by WIDTH_PREADDER generic 
		   PREADD2 => PREADDER2, -- Preadder data input, width determined by WIDTH_PREADDER generic 
		   CARRYIN => CARRYIN, -- 1-bit carry-in input 
		   CE => CE, -- 1-bit input clock enable 
		   CLK => CLK, -- 1-bit clock input 
		   LOAD => LOAD, -- 1-bit accumulator load input 
		   LOAD_DATA => LOAD_DATA, -- Accumulator load data input, width defined by WIDTH_PRODUCT generic 
		   RST => RST -- 1-bit input active high synchronous reset 
		   ); -- End of ADDMACC_MACRO_inst instantiation

end Behavioral;
