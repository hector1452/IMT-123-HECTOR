----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2022 08:57:21 AM
-- Design Name: 
-- Module Name: module_adder_4BIT_tb - Behavioral
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

entity module_adder_4BIT_tb is
--  Port ( );
end module_adder_4BIT_tb;

architecture Behavioral of module_adder_4BIT_tb is

component module_adder_4BIT is
    Port ( Bmul0 : in STD_LOGIC;
           Bmul1 : in STD_LOGIC;
           Bmul2 : in STD_LOGIC;
           Bmul3 : in STD_LOGIC;
           Amul0 : in STD_LOGIC;
           Amul1 : in STD_LOGIC;
           Amul2 : in STD_LOGIC;
           Amul3 : in STD_LOGIC;
           Cero : in STD_LOGIC;
           P0 : out STD_LOGIC;
           P1 : out STD_LOGIC;
           P2 : out STD_LOGIC;
           P3 : out STD_LOGIC;
           P4 : out STD_LOGIC;
           P5 : out STD_LOGIC;
           P6 : out STD_LOGIC;
           P7 : out STD_LOGIC);
end component module_adder_4BIT;

signal Bmul0: std_logic:='0';
signal Bmul1: std_logic:='0';
signal Bmul2: std_logic:='0';
signal Bmul3: std_logic:='0';
signal Amul0: std_logic:='0';
signal Amul1: std_logic:='0';
signal Amul2: std_logic:='0';
signal Amul3: std_logic:='0';
signal Cero: std_logic:='L';
signal P0: std_logic:='0';
signal P1: std_logic:='0';
signal P2: std_logic:='0';
signal P3: std_logic:='0';
signal P4: std_logic:='0';
signal P5: std_logic:='0';
signal P6: std_logic:='0';
signal P7: std_logic:='0';

begin

uut: module_adder_4BIT port map (Bmul0=>Bmul0, Bmul1=>Bmul1, Bmul2=>Bmul2, Bmul3=>Bmul3, Amul0=>Amul0, Amul1=>Amul1, Amul2=>Amul2, Amul3=>Amul3, Cero=>Cero, P0=>P0, P1=>P1, P2=>P2, P3=>P3, P4=>P4, P5=>P5, P6=>P6, P7=>P7);


stimulus_process:process

    begin
    
    Bmul0<='0';
    Bmul1<='1';
    Bmul2<='0';
    Bmul3<='0';
    Amul0<='0';
    Amul1<='1';
    Amul2<='0';
    Amul3<='1';
    Cero<='L';
    wait for 20ns;
    Bmul0<='1';
    Bmul1<='0';
    Bmul2<='0';
    Bmul3<='1';
    Amul0<='0';
    Amul1<='0';
    Amul2<='1';
    Amul3<='1';
    Cero<='L';
    wait for 20ns; 
    Bmul0<='0';
    Bmul1<='0';
    Bmul2<='0';
    Bmul3<='0';
    Amul0<='1';
    Amul1<='1';
    Amul2<='1';
    Amul3<='1';
    Cero<='L';
    wait for 20ns; 
    Bmul0<='1';
    Bmul1<='0';
    Bmul2<='0';
    Bmul3<='0';
    Amul0<='1';
    Amul1<='1';
    Amul2<='0';
    Amul3<='1';
    Cero<='L';
    wait for 20ns; 
    Bmul0<='0';
    Bmul1<='1';
    Bmul2<='0';
    Bmul3<='1';
    Amul0<='0';
    Amul1<='1';
    Amul2<='1';
    Amul3<='1';
    Cero<='L';
    wait for 20ns; 
    Bmul0<='0';
    Bmul1<='0';
    Bmul2<='1';
    Bmul3<='0';
    Amul0<='1';
    Amul1<='0';
    Amul2<='1';
    Amul3<='1';
    Cero<='L';
    wait for 20ns; 
    Bmul0<='0';
    Bmul1<='1';
    Bmul2<='0';
    Bmul3<='1';
    Amul0<='0';
    Amul1<='0';
    Amul2<='1';
    Amul3<='1';
    Cero<='L';
    wait for 20ns;
    Bmul0<='1';
    Bmul1<='0';
    Bmul2<='1';
    Bmul3<='0';
    Amul0<='0';
    Amul1<='0';
    Amul2<='0';
    Amul3<='1';
    Cero<='L';
    wait for 20ns; 
    Bmul0<='0';
    Bmul1<='1';
    Bmul2<='1';
    Bmul3<='0';
    Amul0<='0';
    Amul1<='1';
    Amul2<='1';
    Amul3<='0';
    Cero<='L';
    wait for 20ns; 
    Bmul0<='1';
    Bmul1<='1';
    Bmul2<='1';
    Bmul3<='1';
    Amul0<='1';
    Amul1<='1';
    Amul2<='1';
    Amul3<='1';
    Cero<='L';
    wait for 20ns;

    
    end process stimulus_process ;

end Behavioral;
