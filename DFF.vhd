library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity DFF is
  Port ( clk,D : in std_logic;
         Q     : out std_logic);
end DFF;

architecture Behav of DFF is
begin
    process(clk)
         variable tmp1: std_logic:= '0';
    begin
        if(rising_edge(clk)) then
            tmp1 := D; 
        end if;
        Q <= tmp1;
    end process;
end Behav;
