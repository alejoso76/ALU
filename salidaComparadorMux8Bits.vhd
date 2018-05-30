----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:30:30 12/05/2017 
-- Design Name: 
-- Module Name:    salidaComparadorMux8Bits - Behavioral 
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

entity salidaComparadorMux8Bits is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end salidaComparadorMux8Bits;

architecture Behavioral of salidaComparadorMux8Bits is

	COMPONENT comparador8Bits1bit
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;

	COMPONENT mux2a18Bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);
		Sc : IN std_logic;          
		S : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
SIGNAL C1: STD_LOGIC;
SIGNAl S1: STD_LOGIC_VECTOR (7 downto 0);	
	
begin

	Inst_comparador8Bits1bit: comparador8Bits1bit PORT MAP(
		A => A,
		B => B,
		S => S1,
		Cout => C1
	);
	
		Inst_mux2a18Bits: mux2a18Bits PORT MAP(
		A => B,
		B => A,
		Sc => C1,
		S => S
	);
	
Cout <= C1;

end Behavioral;

