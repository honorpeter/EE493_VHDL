
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity echo_top is
port(TXD, clk, btn: in std_logic;
    	 RXD: out std_logic);
end echo_top;

architecture top_arch of echo_top is
    component clk_div is
		port(clk: in std_logic;
       div:   out std_logic);
	end component;

    component debounce is
		port( clk, btn: in std_logic;
      dbnc:     out std_logic);
	end component;

	component echo is
	   port (clk, rdy, en, newChar: in std_logic;
	         char_in: in std_logic_vector(7 downto 0);
	         send: out std_logic;
	         char_out: out std_logic_vector(7 downto 0));
	end component;
	
	component uart is
            port (
            clk, en, send, rx, rst      : in std_logic;
            charSend                    : in std_logic_vector (7 downto 0);
            ready, tx, newChar          : out std_logic;
            charRec                     : out std_logic_vector (7 downto 0));
    end component;
    
    signal sig_div, sig_new_char, sig_rdy, sig_rst, sig_send: std_logic;
    signal sig_char_rx, sig_char_tx: std_logic_vector(7 downto 0);
begin

clk_div_0: clk_div port map (clk => clk,
                     div => sig_div);

btn_0: debounce port map (clk => clk,
					   btn => btn,
					   dbnc => sig_rst);

echo_0: echo port map (clk => clk,
                       newChar => sig_new_char,
                       rdy => sig_rdy,
                       en => sig_div,
                       char_in => sig_char_rx,
                       send => sig_send,
                       char_out => sig_char_tx);

uart_0: uart port map (clk => clk,
				   rst => sig_rst,
				   ready => sig_rdy,
				   rx => TXD,
				   en => sig_div,
				   send => sig_send,
				   charSend => sig_char_tx,
				   charRec => sig_char_rx,
				   newChar => sig_new_char,
				   tx => RXD);                   



end top_arch;
