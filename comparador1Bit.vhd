----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:37:12 12/05/2017 
-- Design Name: 
-- Module Name:    comparador1Bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparador1Bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Mayor  : in  STD_LOGIC;
           Menor : in  STD_LOGIC;
           Igual : in  STD_LOGIC;
           MayorS : out  STD_LOGIC;
           MenorS : out  STD_LOGIC;
           IgualS : out  STD_LOGIC);
end comparador1Bit;

architecture Behavioral of comparador1Bit is

begin

MayorS <= ((A and (not B)) and Igual) or Mayor;
MenorS <= (((not A) and B) and Igual) or Menor;
IgualS <= (A xnor B) and Igual;
-- and (not Menor) and (not Mayor) and Igual
end Behavioral;

