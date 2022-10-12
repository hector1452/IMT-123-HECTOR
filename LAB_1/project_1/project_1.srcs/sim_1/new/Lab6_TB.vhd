----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.05.2022 18:54:44
-- Design Name: 
-- Module Name: Lab6_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab6_TB is
--  Port ( );
end Lab6_TB;

architecture Behavioral of Lab6_TB is

component  Lab_6 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           S : out STD_LOGIC);
end component  Lab_6;

signal A_s:std_logic ;
signal B_s:std_logic ;
signal Cin_s:std_logic ;
signal Cout_s:std_logic ;
signal S_s:std_logic ;

begin

Dut: Lab_6 port map(
            A => A_s,
            B => B_s,
            Cin => Cin_s,
            Cout => Cout_s,
            S => S_s
);
process 
begin 
A_s <= '0';
B_s <= '0';
Cin_s <= '0';
wait for 50 ns;

A_s <= '0';
B_s <= '0';
Cin_s <= '1';
wait for 50 ns;

A_s <= '0';
B_s <= '1';
Cin_s <= '0';
wait for 50 ns;

A_s <= '0';
B_s <= '1';
Cin_s <= '1';
wait for 50 ns;

A_s <= '1';
B_s <= '0';
Cin_s <= '0';
wait for 50 ns;

A_s <= '1';
B_s <= '0';
Cin_s <= '1';
wait for 50 ns;

A_s <= '1';
B_s <= '1';
Cin_s <= '0';
wait for 50 ns;

A_s <= '1';
B_s <= '1';
Cin_s <= '1';
wait for 50 ns;

end process;

end Behavioral;
