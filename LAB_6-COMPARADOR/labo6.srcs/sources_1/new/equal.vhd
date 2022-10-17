----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2022 03:56:18 AM
-- Design Name: 
-- Module Name: equal - Behavioral
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

entity equal is
    Port ( A11 : in STD_LOGIC_VECTOR (3 downto 0);
           B11 : in STD_LOGIC_VECTOR (3 downto 0);
           les1 : in STD_LOGIC;
           great1 : in STD_LOGIC;
           equal1 : in STD_LOGIC;
           lesss : inout STD_LOGIC;
           greats : inout STD_LOGIC;
           equals : out STD_LOGIC);
end equal;

architecture Behavioral of equal is

component less is
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
end component less;

component great is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           mayor : in STD_LOGIC;
           GRT : out STD_LOGIC);
end component great;

component AND_GATE_3to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end component AND_GATE_3to1;

component NOT_GATE_1to1 is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component NOT_GATE_1to1;


signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';

begin

uut: less port map (A0=>A11(0), B0=>B11(0), A1=>A11(1), B1=>B11(1), A2=>A11(2), B2=>B11(2), A3=>A11(3), B3=>B11(3), menor=>les1, LES=>lesss);
uut1: great port map (A0=>A11(0), B0=>B11(0), A1=>A11(1), B1=>B11(1), A2=>A11(2), B2=>B11(2), A3=>A11(3), B3=>B11(3), mayor=>great1, GRT=>greats);

uutn1: NOT_GATE_1to1 port map (A=>lesss, B=>temp1);
uutn2: NOT_GATE_1to1 port map (A=>greats, B=>temp2);


uutand1: AND_GATE_3to1 port map (A=>temp1, B=>temp2, C=>equal1, D=>equals);


end Behavioral;
