----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2022 03:30:26 AM
-- Design Name: 
-- Module Name: flipd - Behavioral
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

entity flipd is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q, QN : inout STD_LOGIC);
end flipd;

architecture Behavioral of flipd is

begin
    process (CK,reset)
        begin
            if(reset='1') then
            Q<='0';
            elsif ( CK' event and CK = '1') then
            Q<=D;
        end if;
    end process;

QN<= not Q;

end Behavioral;

