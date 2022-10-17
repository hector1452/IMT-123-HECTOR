----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2022 01:44:39 AM
-- Design Name: 
-- Module Name: Lab8_tb - Behavioral
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

entity Lab8_tb is
--  Port ( );
end Lab8_tb;

architecture Behavioral of Lab8_tb is

component Lab8 is
    Port ( Q0,Q1,Q2,Q3 : inout STD_LOGIC;
           D1,D2,D3,D4  : in STD_LOGIC;
           CK1, reset1 : in STD_LOGIC;
           QN0,QN1,QN2,QN3 : inout STD_LOGIC);
end component Lab8;

signal D1: std_logic:= '0';
signal D2: std_logic:= '0';
signal D3: std_logic:= '0';
signal D4: std_logic:= '0';
signal CK1: std_logic:= '0';
signal reset1: std_logic:= '0';
signal Q0: std_logic:= '0';
signal Q1: std_logic:= '0';
signal Q2: std_logic:= '0';
signal Q3: std_logic:= '0';
signal QN0: std_logic:= '1';
signal QN1: std_logic:= '1';
signal QN2: std_logic:= '1';
signal QN3: std_logic:= '1';

begin
utt: Lab8 port map (D1=>D1, D2=>D2, D3=>D3, D4=>D4, CK1=>CK1, reset1=>reset1, Q0=>Q0, Q1=>Q1, Q2=>Q2, Q3=>Q3, QN0=>QN0, QN1=>QN1, QN2=>QN2, QN3=>QN3);
Estimulus_process: process
begin

D1 <= '1';
D2 <= '0';
D3 <= '0';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '0';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '0';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '0';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '0';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '0';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '1';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '1';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '1';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '1';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '1';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '1';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '1';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '1';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '0';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '0';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;




D1 <= '1';
D2 <= '0';
D3 <= '0';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '0';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '0';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '0';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '0';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '0';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '1';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '1';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '1';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '1';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '1';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '1';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '1';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '1';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '0';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '0';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '0';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '0';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '0';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '0';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '1';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '1';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '1';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '1';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '1';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '1';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '1';
D4 <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '1';
D4 <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '0';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '0';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;




D1 <= '1';
D2 <= '0';
D3 <= '0';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '0';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '0';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '0';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '0';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '0';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '1';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '0';
D3 <= '1';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '1';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '0';
D3 <= '1';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '1';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '0';
D2 <= '1';
D3 <= '1';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '1';
D4 <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

D1 <= '1';
D2 <= '1';
D3 <= '1';
D4 <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;
end process;

end Behavioral;
