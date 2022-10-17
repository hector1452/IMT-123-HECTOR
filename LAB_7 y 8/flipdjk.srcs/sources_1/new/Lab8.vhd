----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2022 01:36:02 AM
-- Design Name: 
-- Module Name: Lab8 - Behavioral
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

entity Lab8 is
    Port ( Q0,Q1,Q2,Q3 : inout STD_LOGIC;
           D1,D2,D3,D4 : in STD_LOGIC;
           CK1, reset1 : in STD_LOGIC;
           QN0,QN1,QN2,QN3 : inout STD_LOGIC);
end Lab8;

architecture Behavioral of Lab8 is



component flipd is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q, QN : inout STD_LOGIC);
end component flipd;



signal clk0: std_logic:='0';
signal temp1: std_logic:='0';

begin
    process (CK1,reset1)
        begin
            if(reset1='1') then
            Q0<='0';
            elsif ( CK1' event and CK1 = '1') then
            Q0<=D1;
        end if;
    end process;

QN0<= not Q0;


    process (QN0,reset1)
        begin
            if(reset1='1') then
            Q1<='0';
            elsif ( QN0' event and QN0 = '1') then
            Q1<=D2;
        end if;
    end process;

QN1<= not Q1;

    process (QN1,reset1)
        begin
            if(reset1='1') then
            Q2<='0';
            elsif ( QN1' event and QN1 = '1') then
            Q2<=D3;
        end if;
    end process;

QN2<= not Q2;


    process (QN2,reset1)
        begin
            if(reset1='1') then
            Q3<='0';
            elsif ( QN2' event and QN2 = '1') then
            Q3<=D4;
        end if;
    end process;

QN3<= not Q3;


end Behavioral;
