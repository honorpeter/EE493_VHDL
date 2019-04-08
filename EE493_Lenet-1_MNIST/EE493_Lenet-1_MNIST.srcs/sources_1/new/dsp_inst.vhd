--PREADDER/MULT/ACCUMULATOR

Library UNISIM; 
use UNISIM.vcomponents.all;
-- ADDMACC_MACRO: Add and Multiple Accumulate Function implemented in a DSP48E 
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
ADDMACC_MACRO_inst : ADDMACC_MACRO 
generic map ( DEVICE => "7SERIES", -- Target Device: "7SERIES", "VIRTEX6", "SPARTAN6" 
			  LATENCY => 4, -- Desired clock cycle latency, 1-4 \
			  WIDTH_PREADD => 25, -- Pre-Adder input bus width, 1-25 
			  WIDTH_MULTIPLIER => 18, -- Multiplier input bus width, 1-18 
			  WIDTH_PRODUCT => 48) -- MACC output width, 1-48 
port map ( PRODUCT => PRODUCT, -- MACC result output, width defined by WIDTH_PRODUCT generic 
		   MULTIPLIER => MULTIPLIER, -- Multiplier data input, width determined by WIDTH_MULTIPLIER generic 
		   PREADDER1 => PREADDER1, -- Preadder data input, width determined by WIDTH_PREADDER generic 
		   PREADDER2 => PREADDER2, -- Preadder data input, width determined by WIDTH_PREADDER generic 
		   CARRYIN => CARRYIN, -- 1-bit carry-in input CE => CE, -- 1-bit input clock enable 
		   CLK => CLK, -- 1-bit clock input 
		   LOAD => LOAD, -- 1-bit accumulator load input 
		   LOAD_DATA => LOAD_DATA, -- Accumulator load data input, width defined by WIDTH_PRODUCT generic 
		   RST => RST -- 1-bit input active high synchronous reset 
		   ); -- End of ADDMACC_MACRO_inst instantiation


--MULT/ACCUMULATOR

Library UNISIM; use UNISIM.vcomponents.all;
-- MACC_MACRO: Multiple Accumulate Function implemented in a DSP48E -- 7 Series -- Xilinx HDL Libraries Guide, version 2012.2
MACC_MACRO_inst : MACC_MACRO 
generic map ( DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6" 
LATENCY => 3, -- Desired clock cycle latency, 1-4 
WIDTH_A => 25, -- Multiplier A-input bus width, 1-25 
WIDTH_B => 18, -- Multiplier B-input bus width, 1-18 
WIDTH_P => 48) -- Accumulator output bus width, 1-48 
port map ( P => P, -- MACC output bus, width determined by WIDTH_P generic 
A => A, -- MACC input A bus, width determined by WIDTH_A generic 
ADDSUB => ADDSUB, -- 1-bit add/sub input, high selects add, low selects subtract 
B => B, -- MACC input B bus, width determined by WIDTH_B generic 
CARRYIN => CARRYIN, -- 1-bit carry-in input to accumulator 
CE => CE, -- 1-bit active high input clock enable 
CLK => CLK, -- 1-bit positive edge clock input 
LOAD => LOAD, -- 1-bit active high input load accumulator enable 
LOAD_DATA => LOAD_DATA, -- Load accumulator input data, -- width determined by WIDTH_P generic 
RST => RST -- 1-bit input active high reset );
-- End of MACC_MACRO_inst instantiation 