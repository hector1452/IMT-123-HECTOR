----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2022 03:30:45 AM
-- Design Name: 
-- Module Name: flipd_tb - Behavioral
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

entity flipd_tb is
--  Port ( );
end flipd_tb;

architecture Behavioral of flipd_tb is

component flipd is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q, QN : inout STD_LOGIC);
end component flipd;

signal D: std_logic:= '0';
signal CK: std_logic:= '0';
signal reset: std_logic:= '0';
signal Q: std_logic:= '0';
signal QN: std_logic:= '0';

begin
utt: flipd port map (D=>D, CK=>CK, reset=>reset, Q=>Q, QN=>QN);
Estimulus_process: process
begin

D <= '1';
CK <= '0';
reset <= '0';
wait for 20 ns;

D <= '1';
CK <= '1';
reset <= '0';
wait for 20 ns;

D <= '1';
CK <= '0';
reset <= '0';
wait for 20 ns;

D <= '1';
CK <= '1';
reset <= '0';
wait for 20 ns;

D <= '0';
CK <= '0';
reset <= '0';
wait for 20 ns;

D <= '0';
CK <= '1';
reset <= '0';
wait for 20 ns;

D <= '0';
CK <= '0';
reset <= '0';
wait for 20 ns;

D <= '0';
CK <= '1';
reset <= '0';
wait for 20 ns;
end process;

end Behavioral;
