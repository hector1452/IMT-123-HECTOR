----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2022 08:12:38 AM
-- Design Name: 
-- Module Name: BITCUATRO - Behavioral
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

entity BITCUATRO is
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
end BITCUATRO;

architecture Behavioral of BITCUATRO is

component FULL_ADDER is
    Port ( A1 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           C1 : in STD_LOGIC;
           SUM : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component FULL_ADDER;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';
signal temp6: std_logic:='0';

begin

uut: FULL_ADDER port map (A1=>Am0, B1=>Bm0, C1=>Cm, SUM=>Sm0, Cout=>temp1);
uut1: FULL_ADDER port map (A1=>Am1, B1=>Bm1, C1=>temp1, SUM=>Sm1, Cout=>temp2);
uut2: FULL_ADDER port map (A1=>Am2, B1=>Bm2, C1=>temp2, SUM=>Sm2, Cout=>temp3);
uut3: FULL_ADDER port map (A1=>Am3, B1=>Bm3, C1=>temp3, SUM=>Sm3, Cout=>Cmout);

end Behavioral;
