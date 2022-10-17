----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2022 11:24:55 PM
-- Design Name: 
-- Module Name: less - Behavioral
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

entity less is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           menor : in STD_LOGIC;
           LES : out STD_LOGIC);
end less;

architecture Behavioral of less is

component AND_GATE_2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component AND_GATE_2to1;

component AND_GATE_3to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end component AND_GATE_3to1;

component AND_GATE_5to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : in STD_LOGIC;
           F : out STD_LOGIC);
end component AND_GATE_5to1;

component NOT_GATE_1to1 is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component NOT_GATE_1to1;

component OR_GATE_2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component OR_GATE_2to1;

component OR_GATE_3to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end component OR_GATE_3to1;

component OR_GATE_4to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : out STD_LOGIC);
end component OR_GATE_4to1;

component OR_GATE_5to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : in STD_LOGIC;
           F : out STD_LOGIC);
end component OR_GATE_5to1;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';

signal men: std_logic:='0';

signal nota0: std_logic:='0';
signal nota1: std_logic:='0';
signal nota2: std_logic:='0';
signal nota3: std_logic:='0';

signal notb0: std_logic:='0';
signal notb1: std_logic:='0';
signal notb2: std_logic:='0';
signal notb3: std_logic:='0';

signal and1: std_logic:='0';
signal and2: std_logic:='0';
signal and3: std_logic:='0';
signal and4: std_logic:='0';
signal and5: std_logic:='0';
signal and6: std_logic:='0';
signal and7: std_logic:='0';
signal and8: std_logic:='0';

signal nand1: std_logic:='0';
signal nand2: std_logic:='0';
signal nand3: std_logic:='0';
signal nand4: std_logic:='0';
signal nand5: std_logic:='0';
signal nand6: std_logic:='0';
signal nand7: std_logic:='0';
signal nand8: std_logic:='0';

signal or1: std_logic:='0';
signal or2: std_logic:='0';
signal or3: std_logic:='0';
signal or4: std_logic:='0';

signal or21: std_logic:='0';
signal or31: std_logic:='0';
signal or41: std_logic:='0';
signal or51: std_logic:='0';

signal and51: std_logic:='0';


begin

umenor0: NOT_GATE_1to1 port map (A=>menor, B=>men);

unota0: NOT_GATE_1to1 port map (A=>A0, B=>nota0);
unota1: NOT_GATE_1to1 port map (A=>A1, B=>nota1);
unota2: NOT_GATE_1to1 port map (A=>A2, B=>nota2);
unota3: NOT_GATE_1to1 port map (A=>A3, B=>nota3);

unotb0: NOT_GATE_1to1 port map (A=>B0, B=>notb0);
unotb1: NOT_GATE_1to1 port map (A=>B1, B=>notb1);
unotb2: NOT_GATE_1to1 port map (A=>B2, B=>notb2);
unotb3: NOT_GATE_1to1 port map (A=>B3, B=>notb3);

uuta1: AND_GATE_2to1 port map (A=>nota3, B=>B3, C=>and1);
uuta2: AND_GATE_2to1 port map (A=>A3, B=>notb3, C=>and2);
uuta3: AND_GATE_2to1 port map (A=>nota2, B=>B2, C=>and3);
uuta4: AND_GATE_2to1 port map (A=>A2, B=>notb2, C=>and4);
uuta5: AND_GATE_2to1 port map (A=>nota1, B=>B1, C=>and5);
uuta6: AND_GATE_2to1 port map (A=>A1, B=>notb1, C=>and6);
uuta7: AND_GATE_2to1 port map (A=>nota0, B=>B0, C=>and7);
uuta8: AND_GATE_2to1 port map (A=>A0, B=>notb0, C=>and8);

uutna1: NOT_GATE_1to1 port map (A=>and1, B=>nand1);
uutna2: NOT_GATE_1to1 port map (A=>and2, B=>nand2);
uutna3: NOT_GATE_1to1 port map (A=>and3, B=>nand3);
uutna4: NOT_GATE_1to1 port map (A=>and4, B=>nand4);
uutna5: NOT_GATE_1to1 port map (A=>and5, B=>nand5);
uutna6: NOT_GATE_1to1 port map (A=>and6, B=>nand6);
uutna7: NOT_GATE_1to1 port map (A=>and7, B=>nand7);
uutna8: NOT_GATE_1to1 port map (A=>and8, B=>nand8);

uuto1: OR_GATE_2to1 port map (A=>and1, B=>and2, C=>or1);
uuto2: OR_GATE_2to1 port map (A=>and3, B=>and4, C=>or2);
uuto3: OR_GATE_2to1 port map (A=>and5, B=>and6, C=>or3);
uuto4: OR_GATE_2to1 port map (A=>and7, B=>and8, C=>or4);

uuto21: OR_GATE_2to1 port map (A=>or1, B=>nand3, C=>or21);

uuto31: OR_GATE_3to1 port map (A=>or1, B=>or2, C=>nand5, D=>or31);

uuto41: OR_GATE_4to1 port map (A=>or1, B=>or2, C=>or3, D=>nand7, E=>or41);

uuto51: OR_GATE_5to1 port map (A=>or1, B=>or2, C=>or3, D=>or4, E=>men, F=>or51);

uutand51: AND_GATE_5to1 port map (A=>nand1, B=>or21, C=>or31, D=>or41, E=>or51, F=>and51);

uutnand51: NOT_GATE_1to1 port map (A=>and51, B=>LES);




end Behavioral;