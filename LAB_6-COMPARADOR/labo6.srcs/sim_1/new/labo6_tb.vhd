----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2022 02:02:35 AM
-- Design Name: 
-- Module Name: CD_tb - Behavioral
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

entity labo6_tb is
--  Port ( );
end labo6_tb;

architecture Behavioral of labo6_tb is

component less is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           menor : in STD_LOGIC;
           LES : out STD_LOGIC);
end component less;

signal A0: std_logic:='0';
signal A1: std_logic:='0';
signal A2: std_logic:='0';
signal A3: std_logic:='0';
signal B0: std_logic:='0';
signal B1: std_logic:='0';
signal B2: std_logic:='0';
signal B3: std_logic:='0';
signal menor: std_logic:='0';
signal LES: std_logic:='0';


begin

uut: less port map (A0=>A0, A1=>A1, A2=>A2, A3=>A3, B0=>B0, B1=>B1, B2=>B2, B3=>B3, menor=>menor, LES=>LES);

stimulus_process:process

    begin
   
    A0<='0';
    A1<='0';
    A2<='0';
    A3<='0';
    B0<='0';
    B1<='0';
    B2<='0';
    B3<='1';
    menor<='0';
    wait for 20ns;
    A0<='0';
    A1<='0';
    A2<='0';
    A3<='1';
    B0<='0';
    B1<='0';
    B2<='1';
    B3<='1';
    menor<='0';
    wait for 20ns;
    A0<='0';
    A1<='0';
    A2<='1';
    A3<='1';
    B0<='0';
    B1<='1';
    B2<='1';
    B3<='1';
    menor<='0';
    wait for 20ns;
    A0<='0';
    A1<='1';
    A2<='1';
    A3<='1';
    B0<='1';
    B1<='1';
    B2<='1';
    B3<='1';
    menor<='0';
    wait for 20ns;
    wait;
    
    end process stimulus_process ;


end Behavioral;