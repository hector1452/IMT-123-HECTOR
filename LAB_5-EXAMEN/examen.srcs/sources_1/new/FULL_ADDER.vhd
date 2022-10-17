----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2022 07:53:51 AM
-- Design Name: 
-- Module Name: FULL_ADDER - Behavioral
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

entity FULL_ADDER is
    Port ( A1 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           C1 : in STD_LOGIC;
           SUM : out STD_LOGIC;
           Cout : out STD_LOGIC);
end FULL_ADDER;

architecture Behavioral of FULL_ADDER is

component XOR_GATE2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component XOR_GATE2to1;

component OR_GATE2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component OR_GATE2to1;

component AND_GATE2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component AND_GATE2to1;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';

begin

uut: XOR_GATE2to1 port map (A=>A1, B=>B1, C=>temp1);
uut1: XOR_GATE2to1 port map (A=>temp1, B=>C1, C=>SUM);
uut2: AND_GATE2to1 port map (A=>temp1, B=>C1, C=>temp2);
uut3: AND_GATE2to1 port map (A=>A1, B=>B1, C=>temp3);
uut4: OR_GATE2to1 port map (A=>temp2, B=>temp3, C=>Cout);


end Behavioral;
