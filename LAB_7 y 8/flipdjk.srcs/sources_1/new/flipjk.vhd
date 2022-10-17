----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2022 04:20:50 AM
-- Design Name: 
-- Module Name: flipjk - Behavioral
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

entity flipjk is
    Port ( J, K : in STD_LOGIC;
           CK1, reset1 : in STD_LOGIC;
           Q1, QN1 : inout STD_LOGIC);
end flipjk;

architecture Behavioral of flipjk is

component flipd is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q, QN : inout STD_LOGIC);
end component flipd;

component OR_GATE_2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component OR_GATE_2to1;

component AND_GATE_2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component AND_GATE_2to1;

component not_gate is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component not_gate;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';
signal temp6: std_logic:='0';
signal temp7: std_logic:='0';
signal temp8: std_logic:='0';

signal clk0: std_logic:='0';
begin
flipflopd: flipd port map (D=>temp4,CK=>CK1,reset=>reset1,Q=>Q1,QN=>QN1);

utt0J: AND_GATE_2to1 port map (A=>J,B=>QN1, C=>temp1);

utt1N: not_gate port map (A=>K,B=>temp2);

utt2K: AND_GATE_2to1 port map (A=>temp2,B=>Q1,C=>temp3);

utt3OR: OR_GATE_2to1 port map (A=>temp1,B=>temp3,C=>temp4);


end Behavioral;
