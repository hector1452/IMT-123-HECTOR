----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.05.2022 18:45:17
-- Design Name: 
-- Module Name: Lab_6 - Behavioral
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

entity Lab_6 is
    Port ( A : in STD_LOGIC;
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
           
          
           
           
           
end Lab_6;

architecture Behavioral of Lab_6 is

signal U1: std_logic;
signal U2: std_logic;
signal U3: std_logic;
signal U4: std_logic;
signal U5: std_logic;
signal U6: std_logic;
signal U7: std_logic;
signal U8: std_logic;
signal U9: std_logic;
signal U10: std_logic;
signal U11: std_logic;
signal U12: std_logic;
signal U13: std_logic;
signal U14: std_logic;
signal U15: std_logic;
signal U16: std_logic;
signal U17: std_logic;
signal U18: std_logic;
signal U19: std_logic;
signal U20: std_logic;
signal U21: std_logic;
signal U22: std_logic;
signal U23: std_logic;
signal U24: std_logic;
signal U25: std_logic;
signal U26: std_logic;
signal U27: std_logic;

begin
U1<= not A;
U2<= not B;
U3<= not C;
U4<= not D;
U5<= not (not Bi);
U6<=U1 NAND U5;
U7<=U2 NAND U5;
U8<=U3 NAND U5;
U9<=U4 NAND U5;
U10<=U7 AND U9;
U11<=U1 AND U8;
U12<=U6 AND U2 AND U3 AND U4;
U13<=U7 AND U9;
U14<=U6 AND U2 AND U8;
U15<=U1 AND U7 AND U8;
U16<=U8 AND U9;
U17<=U1 AND U7 AND U3;
U18<=U6 AND U2 AND U3;
U19<=U1 AND U2 AND U8;
U20<=U6 AND U7 AND U8;
U21<=NOT U6;
U22<=U2 AND U8;
U23<=U6 AND U7;
U24<=U7 AND U3;
U25<=U6 AND U3 AND U4;
U26<=U6 AND U7 AND U8;
U27<=U2 AND U3 AND U4;
a1<=(NOT U10)AND (NOT U11)AND (NOT U12);
b1<=(NOT U13)AND (NOT U14)AND (NOT U15);
c1<=(NOT U16)AND (NOT U17);
d1<=(NOT U18)AND (NOT U19)AND (NOT U20);
e1<=(NOT U21)AND (NOT U22);
f1<=(NOT U23)AND (NOT U24)AND (NOT U25);
g1<=(NOT U26)AND (NOT U27);



end Behavioral;

