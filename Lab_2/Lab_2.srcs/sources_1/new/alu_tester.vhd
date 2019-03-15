
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_tester is
  port ( clk: in std_logic;
  		 btn0, btn1, btn2, btn3: in std_logic;
  		 SW:     in std_logic_vector(3 downto 0);
  		 --S       : out std_logic_vector(3 downto 0)
  		 led0, led1, led2, led3: out std_logic);
end alu_tester;

architecture top_tester of alu_tester is
	component my_alu is
		port( A, B, Opcode:     in std_logic_vector(3 downto 0);
  		 S       : out std_logic_vector(3 downto 0));
	end component;
	
	component debounce is
	    port( clk, btn: in std_logic;
          dbnc:     out std_logic);
          --cnt:      out std_logic_vector(26 downto 0));
    end component;
	signal A_ld, B_ld, Opcode_ld, S_buf: std_logic_vector(3 downto 0);
	signal dbnc_0, dbnc_1, dbnc_2, dbnc_3: std_logic;
begin
--DEF loaded signals of A, B and Opcode

alu_4bit: my_alu port map (
    A => A_ld,
    B => B_ld,
    Opcode => Opcode_ld,
    S => S_buf);

debounce_0: debounce port map(
    clk => clk,
    btn => btn0,
    dbnc => dbnc_0);

debounce_1: debounce port map(
    clk => clk,
    btn => btn1,
    dbnc => dbnc_1);

debounce_2: debounce port map(
    clk => clk,
    btn => btn2,
    dbnc => dbnc_2);

debounce_3: debounce port map(
    clk => clk,
    btn => btn3,
    dbnc => dbnc_3);
    
    

    process(clk)
	begin
	
	if(clk' event and clk = '1') then
		
		if(dbnc_0 = '1') then
			B_ld <= SW;
		end if;

		if(dbnc_1 = '1') then
			A_ld <= SW;
		end if;

		if(dbnc_2 = '1') then
			Opcode_ld <= SW;
		end if;
        
        if(dbnc_3 = '1') then
            A_ld <= "0000";
            B_ld <= "0000";
            Opcode_ld <= "0000";
        end if;
	-- DID NOT stored the output of the ALU to register

	led0 <= S_buf(0);
	led1 <= S_buf(1);
	led2 <= S_buf(2);
	led3 <= S_buf(3);

	end if;
    end process;
    
	--with btn3 select
	--	A_ld <= "0000" when '1',
	--		  A_ld when '0',
	--		  A_ld when others;
    --with btn3 select
	--	B_ld <= "0000" when '1',
	--		    B_ld when '0',
	--		    B_ld when others;
	--with btn3 select
	--	Opcode_ld <= "0000" when '1',
	--		         Opcode_ld when '0',
	--		         Opcode_ld when others;
	
end top_tester;
