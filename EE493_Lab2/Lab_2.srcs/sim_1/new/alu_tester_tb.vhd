library STD;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use STD.textio.all;
use IEEE.std_logic_textio.all;


entity alu_tester_tb is
end alu_tester_tb;

architecture testbench of alu_tester_tb is
    
    signal tb_clk: std_logic := '0';

    signal tb_SW: std_logic_vector(3 downto 0) := "0000";

	signal tb_led0: std_logic := '0';
	signal tb_led1: std_logic := '0';
	signal tb_led2: std_logic := '0';
	signal tb_led3: std_logic := '0';
	
	signal tb_btn_0123: std_logic_vector(3 downto 0) := "0000";


    component alu_tester is
    	port ( clk: in std_logic;
  		 btn0, btn1, btn2, btn3: in std_logic;
  		 SW:     in std_logic_vector(3 downto 0);
  		 --S       : out std_logic_vector(3 downto 0)
  		 led0, led1, led2, led3: out std_logic);
    end component;

	begin




	clk_gen_proc: process 
	begin
	wait for 4 ns; tb_clk <= '1';
	--write(line, string'("LOAD A :"))
	--write(line, string'("LOAD A :"))
	wait for 4 ns; tb_clk <= '0';
	end process;
    
    btn0123_press: process
    begin
    tb_btn_0123 <= "0001";    wait for 30 ms; 
    tb_btn_0123 <= "0010";    wait for 30 ms; 
    tb_btn_0123 <= "0100";    wait for 30 ms; 
    tb_btn_0123 <= "1000";    wait for 30 ms; 
    tb_btn_0123 <= "0000";    wait for 30 ms; 
    end process;

    SW_ctrl: process
    begin
    tb_SW <= "0000"; wait for 60 ms; 
    tb_SW <= "0001"; wait for 90 ms;
    --wait for 36 ms; tb_SW <= "0001";
    --wait for 36 ms; tb_SW <= "0010";
    --wait for 36 ms; tb_SW <= "0011";
    --wait for 36 ms; tb_SW <= "0100";
    --wait for 36 ms; tb_SW <= "0101";
    --wait for 36 ms; tb_SW <= "0110";
    --wait for 36 ms; tb_SW <= "0111";
    --wait for 36 ms; tb_SW <= "1000";
    --wait for 36 ms; tb_SW <= "1001";
    --wait for 36 ms; tb_SW <= "1010";
    --wait for 36 ms; tb_SW <= "1011";
    --wait for 36 ms; tb_SW <= "1100";
    --wait for 36 ms; tb_SW <= "1101";
    --wait for 36 ms; tb_SW <= "1110";
    --wait for 36 ms; tb_SW <= "1111";
    end process;

    dut: alu_tester
    port map(clk => tb_clk,
    		 SW => tb_SW,
    		 led0 => tb_led0,
    		 led1 => tb_led1,
    		 led2 => tb_led2,
    		 led3 => tb_led3,
    		 btn0 => tb_btn_0123(3),
    		 btn1 => tb_btn_0123(2),
    		 btn2 => tb_btn_0123(1),
    		 btn3 => tb_btn_0123(0));
end testbench;
