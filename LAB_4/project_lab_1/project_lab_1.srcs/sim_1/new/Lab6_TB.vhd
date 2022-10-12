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
    Port ( 
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C: in STD_LOGIC;
           D: in STD_LOGIC;
           Bi: in STD_LOGIC;
           a1 : out STD_LOGIC;
           b1: out STD_LOGIC;
           c1: out STD_LOGIC;
           d1: out STD_LOGIC;
           e1: out STD_LOGIC;
           f1: out STD_LOGIC;
           g1: out STD_LOGIC);

end component  Lab_6;

signal A_s:std_logic ;
signal B_s:std_logic ;
signal C_s:std_logic ;
signal D_s:std_logic ;
signal Bi_s:std_logic;
signal a1_s:std_logic ;
signal b1_s:std_logic ;
signal c1_s:std_logic ;
signal d1_s:std_logic ;
signal e1_s:std_logic ;
signal f1_s:std_logic ;
signal g1_s:std_logic ;




begin

Dut: Lab_6 port map(
            A => A_s,
            B => B_s,
            C => C_s,
            D => D_s,
            Bi => Bi_s,
            a1 => a1_s,
            b1 => b1_s,
            c1 => c1_s,
            d1 => d1_s,
            e1 => e1_s,
            f1 => f1_s,
            g1 => g1_s
);
            

process 
begin 
A_s<= 'L';
B_s<= 'L';
C_s<= 'L';
D_s<= 'L';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'H';
B_s<= 'L';
C_s<= 'L';
D_s<= 'L';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'L';
B_s<= 'H';
C_s<= 'L';
D_s<= 'L';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'H';
B_s<= 'H';
C_s<= 'L';
D_s<= 'L';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'L';
B_s<= 'L';
C_s<= 'H';
D_s<= 'L';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'H';
B_s<= 'L';
C_s<= 'H';
D_s<= 'L';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'L';
B_s<= 'H';
C_s<= 'H';
D_s<= 'L';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'H';
B_s<= 'H';
C_s<= 'H';
D_s<= 'L';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'L';
B_s<= 'L';
C_s<= 'L';
D_s<= 'H';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'H';
B_s<= 'L';
C_s<= 'L';
D_s<= 'H';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'L';
B_s<= 'H';
C_s<= 'L';
D_s<= 'H';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'H';
B_s<= 'H';
C_s<= 'L';
D_s<= 'H';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'L';
B_s<= 'L';
C_s<= 'H';
D_s<= 'H';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'H';
B_s<= 'L';
C_s<= 'H';
D_s<= 'H';
Bi_s<= 'H';
wait for 20 ns;
A_s<= 'H';
B_s<= 'H';
C_s<= 'H';
D_s<= 'H';
Bi_s<= 'H';
wait for 20 ns;
A_s<= '0';
B_s<= '0';
C_s<= '0';
D_s<= '0';
Bi_s<= 'L';
wait for 20 ns;



end process;

end Behavioral;
