----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2022 04:46:19 AM
-- Design Name: 
-- Module Name: eq_tb - Behavioral
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

entity eq_tb is
--  Port ( );
end eq_tb;

architecture Behavioral of eq_tb is

component equal is
    Port ( A11 : in STD_LOGIC_VECTOR (3 downto 0);
           B11 : in STD_LOGIC_VECTOR (3 downto 0);
           les1 : in STD_LOGIC;
           great1 : in STD_LOGIC;
           equal1 : in STD_LOGIC;
           lesss : inout STD_LOGIC;
           greats : inout STD_LOGIC;
           equals : out STD_LOGIC);
end component equal;

signal A11: STD_LOGIC_VECTOR (3 downto 0);
signal B11: STD_LOGIC_VECTOR (3 downto 0);
signal les1: std_logic:='0';
signal great1: std_logic:='0';
signal equal1: std_logic:='0';
signal lesss: std_logic:='0';
signal greats: std_logic:='0';
signal equals: std_logic:='0';

begin

uut: equal port map (A11=>A11, B11=>B11, les1=>les1, great1=>great1, equal1=>equal1, lesss=>lesss, greats=>greats, equals=>equals);


stimulus_process:process

    begin
   
    A11<="0000";
    B11<="0001";
    les1<='0';
    great1<='0';
    equal1<='0';
    wait for 20ns;
    A11<="0001";
    B11<="0011";
    les1<='0';
    great1<='0';
    equal1<='0';
    wait for 20ns;
    A11<="0011";
    B11<="0111";
    les1<='0';
    great1<='0';
    equal1<='0';
    wait for 20ns;
    A11<="0111";
    B11<="1111";
    les1<='0';
    great1<='0';
    equal1<='0';
    wait for 20ns;
    
    A11<="1111";
    B11<="1111";
    les1<='1';
    great1<='0';
    equal1<='0';
    wait for 20ns;
    A11<="1111";
    B11<="1111";
    les1<='0';
    great1<='0';
    equal1<='1';
    wait for 20ns;
    A11<="1111";
    B11<="1111";
    les1<='0';
    great1<='1';
    equal1<='0';
    wait for 20ns;
    
    
    A11<="0001";
    B11<="0000";
    les1<='0';
    great1<='0';
    equal1<='0';
    wait for 20ns;
    A11<="0011";
    B11<="0001";
    les1<='0';
    great1<='0';
    equal1<='0';
    wait for 20ns;
    A11<="0111";
    B11<="0011";
    les1<='0';
    great1<='0';
    equal1<='0';
    wait for 20ns;
    A11<="1111";
    B11<="0111";
    les1<='0';
    great1<='0';
    equal1<='0';
    wait for 20ns;
    wait;
    
    end process stimulus_process ;

end Behavioral;
