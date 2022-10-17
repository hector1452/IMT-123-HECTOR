----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2022 02:56:13 AM
-- Design Name: 
-- Module Name: flipflopd_tb - Behavioral
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

entity flipflopd_tb is
--  Port ( );
end flipflopd_tb;

architecture Behavioral of flipflopd_tb is

component flipflopD is
    Port ( Din : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           reset0 : in STD_LOGIC;
           q : inout STD_LOGIC;
           qn : inout STD_LOGIC);
end component flipflopD;

signal Din: std_logic:= '0';
signal clk_in: std_logic:= '0';
signal reset0: std_logic:= '0';
signal q: std_logic:= '0';
signal qn: std_logic:= '0';

begin
utt: flipflopD port map (Din=>Din, clk_in=>clk_in, reset0=>reset0, q=>q, qn=>qn);
Estimulus_process: process
begin

Din <= '1';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

Din <= '1';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

Din <= '1';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

Din <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

Din <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

Din <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

Din <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

Din <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;
end process;

end Behavioral;
