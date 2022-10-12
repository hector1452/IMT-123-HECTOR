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
           Cin : in STD_LOGIC;
           A1 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           S : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC);
          
           
           
           
end Lab_6;

architecture Behavioral of Lab_6 is

signal U1: std_logic;
signal U2: std_logic;
signal U3: std_logic;
signal U4: std_logic;
signal U5: std_logic;
signal U6: std_logic;
signal U7: std_logic;

begin

U1 <= A xor B;
S <= U1 xor Cin;

U2 <= A and B;
U3 <= U1 and Cin;

U4 <= U3 or U2;

U5 <= A1 xor B1;
S1 <= U5 xor U4;
U7 <= A1 and B1;
U6 <= U4 and U5;
S2 <= U6 or U7;

 


end Behavioral;
