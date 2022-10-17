----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2022 04:29:47 AM
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

entity flipjk_tb is
--  Port ( );
end flipjk_tb;

architecture Behavioral of flipjk_tb is

component flipjk is
    Port ( J, K : in STD_LOGIC;
           CK1, reset1 : in STD_LOGIC;
           Q1, QN1 : inout STD_LOGIC);
end component flipjk;

signal J: std_logic:= '0';
signal K: std_logic:= '0';
signal CK1: std_logic:= '0';
signal reset1: std_logic:= '0';
signal Q1: std_logic:= '0';
signal QN1: std_logic:= '0';

begin
utt: flipjk port map (J=>J, K=>K, CK1=>CK1, reset1=>reset1, Q1=>Q1, QN1=>QN1);
Estimulus_process: process
begin

J <= '0';
K <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

J <= '0';
K <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

J <= '0';
K <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

J <= '0';
K <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

J <= '1';
K <= '0';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

J <= '1';
K <= '0';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;

J <= '1';
K <= '1';
CK1 <= '0';
reset1 <= '0';
wait for 20 ns;

J <= '1';
K <= '1';
CK1 <= '1';
reset1 <= '0';
wait for 20 ns;
end process;

end Behavioral;
