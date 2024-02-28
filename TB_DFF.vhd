library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity TB_DFF is
end TB_DFF;

architecture Behav of TB_DFF is
component DFF 
  Port ( clk,D : in std_logic;
         Q     : out std_logic);
end component;
signal clk,D : std_logic;
signal Q : std_logic;
begin
    dev_test : DFF port map( clk=>clk , D=>D, Q=>Q);
    stim1 : process
    begin
        clk <= '0';
        wait for 10ns;
        clk <= '1';
        wait for 10ns;
    end process;
    
    stim2 : process
    begin
        D <= '0';
        wait for 35ns;
        D <= '1';
        wait for 38ns;
        D <= '0';
        wait for 50ns;
        D <= '1';
        wait for 22ns;
        D <='0';
       
        wait;
    end process;
end Behav;
