
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity minicom_tb is
end minicom_tb;

architecture testbench of minicom_tb is
    component minicom is
    port(TXD, clk: in std_logic;
            btn:      in std_logic_vector(1 downto 0);
            RXD, CTS, RTS: out std_logic);
            --for Debugging
            --newChar: out std_logic_vector(7 downto 0);
            --div_out: out std_logic);
   end component;
    
   signal clk_tb : std_logic := '0';
   signal TXD_tb : std_logic := '0';
   signal btn0_tb : std_logic := '0';  --For RST
   signal btn1_tb : std_logic := '0';   --For BTN
   signal RXD_tb: std_logic := '0';
   signal CTS_tb: std_logic := '0';
   signal RTS_tb : std_logic := '0';
   signal newChar_tb: std_logic_vector(7 downto 0) := (others => '0');
   signal div_out_tb: std_logic := '0';
begin
DUT: minicom port map(
		btn(0) => btn0_tb,
		btn(1) => btn1_tb,
		clk => clk_tb,
		TXD => TXD_tb,
		RXD => RXD_tb,
		CTS => CTS_tb,
		RTS => RTS_tb
		--for Debugging
		--newChar => newChar_tb,
        --div_out => div_out_tb
		);
rst_gen_proc: process
    begin
    btn0_tb <= '0'; wait for 470 ms;
    btn0_tb <= '1'; wait for 60 ms;
    btn0_tb <= '0'; wait for 470 ms;
end process;

btn_gen_proc: process
    begin
    btn1_tb <= '1'; wait for 130 ms;
    btn1_tb <= '0'; wait for 70 ms;
end process;
clk_gen_proc: process
  begin
  clk_tb <= '0';
  wait for 4 ns;
  clk_tb <= '1';
  wait for 4 ns;
end process;



end testbench;
