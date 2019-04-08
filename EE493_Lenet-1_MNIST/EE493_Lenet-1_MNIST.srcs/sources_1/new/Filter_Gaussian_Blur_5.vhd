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
    	 A: in std_logic_vector(7 downto 0);
    	 B: in std_logic_vector(17 downto 0);
         
    	 CARRYIN: in std_logic;
    	 CE: in std_logic;
    	 CLK: in std_logic;
         ADDSUB : in std_logic;
    	 LOAD: in std_logic;
    	 LOAD_DATA: in std_logic_vector(47 downto 0);
    	 RST : in std_logic);


end Filter_Gaussian_Blur_5;

architecture Behavioral of Filter_Gaussian_Blur_5 is

type COEFFS_TYPE is array(4 downto 0) of std_logic_vector(17 downto 0);
constant COEFFS : COEFFS_TYPE := ("00" & x"2000", "00" & x"8000", "00" & x"c000", "00" & x"8000", "00" & x"2000");


begin
Filter_Gaussian_Blur_5 :  MACC_MACRO 
generic map ( DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6" 
LATENCY => 3, -- Desired clock cycle latency, 1-4 , AREG, BREG, MREG, PREG is all asserted
WIDTH_A => 8, -- Multiplier A-input bus width, 1-25 
WIDTH_B => 18, -- Multiplier B-input bus width, 1-18 
WIDTH_P => 48 -- Accumulator output bus width, 1-48 
)
port map ( P => PRODUCT, -- MACC output bus, width determined by WIDTH_P generic 
A => A, -- MACC input A bus, width determined by WIDTH_A generic 
ADDSUB => ADDSUB, -- 1-bit add/sub input, high selects add, low selects subtract 
B => B, -- MACC input B bus, width determined by WIDTH_B generic 
CARRYIN => CARRYIN, -- 1-bit carry-in input to accumulator 
CE => CE, -- 1-bit active high input clock enable 
CLK => CLK, -- 1-bit positive edge clock input 
LOAD => LOAD, -- 1-bit active high input load accumulator enable 
LOAD_DATA => LOAD_DATA, -- Load accumulator input data, -- width determined by WIDTH_P generic 
RST => RST -- 1-bit input active high reset 
);
-- End of MACC_MACRO_inst instantiation 

end Behavioral;
