----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:17:56 12/05/2017 
-- Design Name: 
-- Module Name:    restadorConSuma8Bits - Behavioral 
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

entity restadorConSuma8Bits is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end restadorConSuma8Bits;


architecture Behavioral of restadorConSuma8Bits is
	COMPONENT sumador8Bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;
SIGNAL C1: STD_LOGIC;
SIGNAL S1: STD_LOGIC_VECTOR (7 downto 0);
	
begin
--C2
	Inst_sumador8Bits: sumador8Bits PORT MAP(
		A => not B,
		B => "00000001",
		S => S1,
		Cout => C1 
	);
	
	
	Inst_sumador8Bits1: sumador8Bits PORT MAP(
		A => A,
		B => S1,
		S => S,
		Cout => Cout
	);

end Behavioral;

