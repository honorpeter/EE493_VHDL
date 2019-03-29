
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity minicom is
    port(TXD, clk: in std_logic;
    	 btn:      in std_logic_vector(1 downto 0);
    	 RXD, CTS, RTS: out std_logic);
    	 --for debugging:
    	 --div_out: out std_logic;
    	 --newChar: out std_logic_vector(7 downto 0));
end minicom;

architecture top_arch of minicom is
	component clk_div is
		port(clk: in std_logic;
       div:   out std_logic);
	end component;

	component debounce is
		port( clk, btn: in std_logic;
      dbnc:     out std_logic);
	end component;

	component sender is
		Port(rst, btn, ready, clk, clk_en: in std_logic;
    	 send: out std_logic;
    	 char: out std_logic_vector(7 downto 0));
	end component;

	component uart is
		port (
	    clk, en, send, rx, rst      : in std_logic;
	    charSend                    : in std_logic_vector (7 downto 0);
	    ready, tx, newChar          : out std_logic;
	    charRec                     : out std_logic_vector (7 downto 0));
	end component;

signal dbnce0, dbnce1, div, send, ready: std_logic;
signal char: std_logic_vector(7 downto 0);
begin

u3: clk_div port map (clk => clk,
					  div => div);

u1: debounce port map (clk => clk,
					   btn => btn(0),
					   dbnc => dbnce0);

u2: debounce port map (clk => clk,
					   btn => btn(1),
					   dbnc => dbnce1);

u4: sender port map (clk => clk,
					 rst => dbnce0,
					 ready => ready,
					 btn => dbnce1,
					 clk_en => div,
					 send => send,
					 char => char
					 );

u5: uart port map (clk => clk,
				   rst => dbnce0,
				   ready => ready,
				   rx => TXD,
				   en => div,
				   send => send,
				   charSend => char,
				   tx => RXD);

CTS <= '0';
RTS <= '0';

--for Debugging:
--newChar <= char;
--div_out <= div;

end top_arch;
