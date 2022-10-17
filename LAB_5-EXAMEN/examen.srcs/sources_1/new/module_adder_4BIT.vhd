----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2022 08:23:56 AM
-- Design Name: 
-- Module Name: module_adder_4BIT - Behavioral
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

entity module_adder_4BIT is
    Port ( Bmul0 : in STD_LOGIC;
           Bmul1 : in STD_LOGIC;
           Bmul2 : in STD_LOGIC;
           Bmul3 : in STD_LOGIC;
           Amul0 : in STD_LOGIC;
           Amul1 : in STD_LOGIC;
           Amul2 : in STD_LOGIC;
           Amul3 : in STD_LOGIC;
           Cero : in STD_LOGIC;
           P0 : out STD_LOGIC;
           P1 : out STD_LOGIC;
           P2 : out STD_LOGIC;
           P3 : out STD_LOGIC;
           P4 : out STD_LOGIC;
           P5 : out STD_LOGIC;
           P6 : out STD_LOGIC;
           P7 : out STD_LOGIC);
end module_adder_4BIT;

architecture Behavioral of module_adder_4BIT is

component AND_GATE2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component AND_GATE2to1;

component BITCUATRO is
    Port ( Am0 : in STD_LOGIC;
           Am1 : in STD_LOGIC;
           Am2 : in STD_LOGIC;
           Am3 : in STD_LOGIC;
           Bm0 : in STD_LOGIC;
           Bm1 : in STD_LOGIC;
           Bm2 : in STD_LOGIC;
           Bm3 : in STD_LOGIC;
           Cm : in STD_LOGIC;
           Sm0 : out STD_LOGIC;
           Sm1 : out STD_LOGIC;
           Sm2 : out STD_LOGIC;
           Sm3 : out STD_LOGIC;
           Cmout : out STD_LOGIC);
end component BITCUATRO;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';
signal temp6: std_logic:='0';
signal temp7: std_logic:='0';
signal temp8: std_logic:='0';
signal temp9: std_logic:='0';

signal entradab0: std_logic:='0';
signal entradab1: std_logic:='0';
signal entradab2: std_logic:='0';

signal entradaa0: std_logic:='0';
signal entradaa1: std_logic:='0';
signal entradaa2: std_logic:='0';
signal entradaa3: std_logic:='0';

signal entradaa00: std_logic:='0';
signal entradaa11: std_logic:='0';
signal entradaa22: std_logic:='0';
signal entradaa33: std_logic:='0';

signal entradaa000: std_logic:='0';
signal entradaa111: std_logic:='0';
signal entradaa222: std_logic:='0';
signal entradaa333: std_logic:='0';



begin

and00: AND_GATE2to1 port map (A=>Bmul0, B=>Amul0, C=>P0);
and01: AND_GATE2to1 port map (A=>Bmul0, B=>Amul1, C=>entradab0);
and02: AND_GATE2to1 port map (A=>Bmul0, B=>Amul2, C=>entradab1);
and03: AND_GATE2to1 port map (A=>Bmul0, B=>Amul3, C=>entradab2);

and10: AND_GATE2to1 port map (A=>Bmul1, B=>Amul0, C=>entradaa0);
and11: AND_GATE2to1 port map (A=>Bmul1, B=>Amul1, C=>entradaa1);
and12: AND_GATE2to1 port map (A=>Bmul1, B=>Amul2, C=>entradaa2);
and13: AND_GATE2to1 port map (A=>Bmul1, B=>Amul3, C=>entradaa3);

and20: AND_GATE2to1 port map (A=>Bmul2, B=>Amul0, C=>entradaa00);
and21: AND_GATE2to1 port map (A=>Bmul2, B=>Amul1, C=>entradaa11);
and22: AND_GATE2to1 port map (A=>Bmul2, B=>Amul2, C=>entradaa22);
and23: AND_GATE2to1 port map (A=>Bmul2, B=>Amul3, C=>entradaa33);

and30: AND_GATE2to1 port map (A=>Bmul3, B=>Amul0, C=>entradaa000);
and31: AND_GATE2to1 port map (A=>Bmul3, B=>Amul1, C=>entradaa111);
and32: AND_GATE2to1 port map (A=>Bmul3, B=>Amul2, C=>entradaa222);
and33: AND_GATE2to1 port map (A=>Bmul3, B=>Amul3, C=>entradaa333);

four1: BITCUATRO port map (Am0=>entradaa0, Am1=>entradaa1, Am2=>entradaa2, Am3=>entradaa3, Bm0=>entradab0, Bm1=>entradab1, Bm2=>entradab2, Bm3=>Cero, Cm=>Cero, Sm0=>P1, Sm1=>temp1, Sm2=>temp2, Sm3=>temp3,Cmout=>temp4);

four2: BITCUATRO port map (Am0=>entradaa00, Am1=>entradaa11, Am2=>entradaa22, Am3=>entradaa33, Bm0=>temp1, Bm1=>temp2, Bm2=>temp3, Bm3=>temp4, Cm=>Cero, Sm0=>P2, Sm1=>temp5, Sm2=>temp6, Sm3=>temp7,Cmout=>temp8);

four3: BITCUATRO port map (Am0=>entradaa000, Am1=>entradaa111, Am2=>entradaa222, Am3=>entradaa333, Bm0=>temp5, Bm1=>temp6, Bm2=>temp7, Bm3=>temp8, Cm=>Cero, Sm0=>P3, Sm1=>P4, Sm2=>P5, Sm3=>P6,Cmout=>P7);






end Behavioral;
