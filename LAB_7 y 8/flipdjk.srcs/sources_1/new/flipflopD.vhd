----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2022 02:31:07 AM
-- Design Name: 
-- Module Name: flipflopD - Behavioral
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

entity flipflopD is
    Port ( Din : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           reset0 : in STD_LOGIC;
           q : inout STD_LOGIC;
           qn : inout STD_LOGIC);
end flipflopD;

architecture Behavioral of flipflopD is

component flipflop is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q : out STD_LOGIC);
end component flipflop;

component reloj is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clka : out STD_LOGIC);
end component reloj;

component NAND_GATE_2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : inout STD_LOGIC);
end component NAND_GATE_2to1;

component NAND_GATE_3to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : inout STD_LOGIC);
end component NAND_GATE_3to1;

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
reloj_1: reloj port map (clk=>clk_in,reset=>reset0,clka=>clk0);

utt0: NAND_GATE_3to1 port map (A=>temp2,B=>Din, C=>temp1);

utt1: NAND_GATE_3to1 port map (A=>temp1,B=>clk_in,C=>temp3, D=>temp2);

utt2: NAND_GATE_2to1 port map (A=>temp4,B=>clk_in,C=>temp3);

utt3: NAND_GATE_2to1 port map (A=>temp1,B=>temp3,C=>temp4);


utt4: NAND_GATE_2to1 port map (A=>temp2, B=>q,C=>qn);

utt5: NAND_GATE_2to1 port map (A=>temp3,B=>qn,C=>q);







end Behavioral;
