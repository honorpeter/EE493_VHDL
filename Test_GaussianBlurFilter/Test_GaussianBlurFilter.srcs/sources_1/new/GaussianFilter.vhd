
library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.numeric_std.ALL;


entity GaussianFilter is
--  Port ( );
end GaussianFilter;

architecture Behavioral of GaussianFilter is

--TEMPLATE FOR USING the DSP SLICE
constant NUM_TAPS : natural := 0;
type chainedSum_t is array(0 to NUM_TAPS-1) of signed(47 downto 0);
signal chainedSum : chainedSum_t := (others => (others => '0'));

attribute use_dsp48 : string;
attribute use_dsp48 of chainedSum : signal is "yes";
begin


end Behavioral;
