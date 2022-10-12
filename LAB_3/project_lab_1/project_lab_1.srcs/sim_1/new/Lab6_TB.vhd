----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.05.2022 18:54:44
-- Design Name: 
-- Module Name: Lab6_TB - Behavioral
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

entity Lab6_TB is
--  Port ( );
end Lab6_TB;

architecture Behavioral of Lab6_TB is

component  Lab_6 is
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           Q : out STD_LOGIC);
end component  Lab_6;


signal D0_s:std_logic ;
signal D1_s:std_logic ;
signal D2_s:std_logic ;
signal D3_s:std_logic ;
signal S1_s:std_logic ;
signal S0_s:std_logic ;
signal Q_s:std_logic ;
begin

Dut: Lab_6 port map(
            
            D0 => D0_s,
            D1 => D1_s,
            D2=> D2_s,
            D3 => D3_s,
            S1 => S1_s,
            S0 => S0_s,
            Q => Q_s
);
process 
begin 
D0_s <= '0';
D1_s <= '1';
D2_s <= '0';
D3_s <= '1';
S1_s <= '0';
S0_s <= '0';
wait for 50 ns;

D0_s <= '0';
D1_s <= '1';
D2_s <= '0';
D3_s <= '0';
S1_s <= '0';
S0_s <= '1';
wait for 50 ns;
D0_s <= '0';
D1_s <= '1';
D2_s <= '1';
D3_s <= '0';
S1_s <= '1';
S0_s <= '0';
wait for 50 ns;
D0_s <= '1';
D1_s <= '1';
D2_s <= '0';
D3_s <= '1';
S1_s <= '1';
S0_s <= '1';
wait for 50 ns;
D0_s <= '1';
D1_s <= '0';
D2_s <= '1';
D3_s <= '1';
S1_s <= '0';
S0_s <= '0';
wait for 50 ns;
D0_s <= '1';
D1_s <= '0';
D2_s <= '0';
D3_s <= '1';
S1_s <= '0';
S0_s <= '1';
wait for 50 ns;
D0_s <= '1';
D1_s <= '1';
D2_s <= '1';
D3_s <= '0';
S1_s <= '1';
S0_s <= '0';
wait for 50 ns;
D0_s <= '0';
D1_s <= '0';
D2_s <= '0';
D3_s <= '1';
S1_s <= '1';
S0_s <= '1';
wait for 50 ns;
D0_s <= '1';
D1_s <= '1';
D2_s <= '0';
D3_s <= '0';
S1_s <= '0';
S0_s <= '0';
wait for 50 ns;
D0_s <= '0';
D1_s <= '0';
D2_s <= '1';
D3_s <= '1';
S1_s <= '0';
S0_s <= '1';
wait for 50 ns;
D0_s <= '1';
D1_s <= '0';
D2_s <= '1';
D3_s <= '0';
S1_s <= '1';
S0_s <= '0';
wait for 50 ns;
D0_s <= '1';
D1_s <= '1';
D2_s <= '0';
D3_s <= '1';
S1_s <= '1';
S0_s <= '1';
wait for 50 ns;
D0_s <= '0';
D1_s <= '1';
D2_s <= '1';
D3_s <= '1';
S1_s <= '0';
S0_s <= '0';
wait for 50 ns;
D0_s <= '1';
D1_s <= '1';
D2_s <= '1';
D3_s <= '1';
S1_s <= '0';
S0_s <= '1';
wait for 50 ns;


end process;

end Behavioral;
