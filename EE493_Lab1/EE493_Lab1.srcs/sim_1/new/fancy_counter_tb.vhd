

library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.numeric_std.ALL;


entity fancy_counter_tb is
end fancy_counter_tb;

architecture testbench of fancy_counter_tb is

signal tb_clk : std_logic := '0';
signal tb_clk_en : std_logic := '1';
signal tb_en : std_logic := '1';
signal tb_dir : std_logic := '1';
signal tb_ld : std_logic := '1';
signal tb_rst : std_logic := '1';
signal tb_updn : std_logic := '1';
signal tb_val: std_logic_vector(3 downto 0) := "0000";
signal tb_cnt: std_logic_vector(3 downto 0) := "0000";

    component fancy_counter is
        port(
            clk, clk_en, en, dir, ld, rst, updn : in std_logic;
            val:                                  in std_logic_vector(3 downto 0);
            cnt:                                  out std_logic_vector(3 downto 0)
            );
    end component;
    
    begin
    
    -- sim a 125 Mhz clock
    clk_gen_proc: process
    begin
    
    wait for 4 ns; tb_clk <= '1';
    wait for 4 ns; tb_clk <= '0';

    end process clk_gen_proc;

    -- control clk_en
    clk_en_ctrl: process
    begin
    wait for 500 ms;  tb_clk_en <= '1';


    end process clk_en_ctrl;

    -- control enable
    en_ctrl: process
    begin

    wait for 500 ms; tb_en <= '1';

    end process en_ctrl;

    -- control the direction of counter
    dir_ctrl: process
    begin

    wait for 40 ms; tb_dir <= '1';
    wait for 40 ms; tb_dir <= '0';

    end process dir_ctrl;

    -- control load
    ld_ctrl: process
    begin
    wait for 1 ms; tb_ld <= '0';
    wait for 249 ms; tb_ld <= '1';
    end process ld_ctrl;


    -- control reset
    rst_ctrl: process
    begin
    wait for 10 ns; tb_rst <= '0';
    wait for 1000 ms; tb_rst <= '1';
    end process rst_ctrl;

    -- control up-down enable
    updn_ctrl: process
    begin

    wait for 500 ms; tb_updn <= '1';

    end process updn_ctrl;


    -- generate value to be loaded
    val_gen_proc: process
    begin

    wait for 250 ms; tb_val <= "1010";
    wait for 250 ms; tb_val <= "0101";

    end process val_gen_proc;





    -- port mapping
    
    dut : fancy_counter
    port map (
        clk => tb_clk,
        clk_en => tb_clk_en,
        en => tb_en,
        dir => tb_dir,
        ld => tb_ld,
        rst => tb_rst,
        updn => tb_updn,
        val => tb_val,
        cnt => tb_cnt
    );
end testbench;
