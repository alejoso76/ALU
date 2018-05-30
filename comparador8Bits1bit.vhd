----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:26 12/05/2017 
-- Design Name: 
-- Module Name:    comparador8Bits1bit - Behavioral 
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

entity comparador8Bits1bit is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end comparador8Bits1bit;

architecture Behavioral of comparador8Bits1bit is

	COMPONENT comparador1Bit
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		Mayor : IN std_logic;
		Menor : IN std_logic;
		Igual : IN std_logic;          
		MayorS : OUT std_logic;
		MenorS : OUT std_logic;
		IgualS : OUT std_logic
		);
	END COMPONENT;
	
SIGNAL MA1, ME1, I1, MA2, ME2, I2, MA3, ME3, I3, MA4, ME4, I4, MA5, ME5, I5, MA6, ME6, I6, MA7, ME7, I7 ,MA8, ME8, I8: STD_LOGIC;

	
begin
	Inst_comparador1Bit1: comparador1Bit PORT MAP(
		A => A(7),
		B => B(7),
		Mayor => '0',
		Menor => '0',
		Igual => '1',
		MayorS => MA1,
		MenorS => ME1,
		IgualS => I1
	);
	
		Inst_comparador1Bit2: comparador1Bit PORT MAP(
		A => A(6),
		B => B(6),
		Mayor => MA1,
		Menor => ME1,
		Igual => I1,
		MayorS => MA2,
		MenorS => ME2,
		IgualS => I2
	);
	
		Inst_comparador1Bit3: comparador1Bit PORT MAP(
		A => A(5),
		B => B(5),
		Mayor => MA2,
		Menor => ME2,
		Igual => I2,
		MayorS => MA3,
		MenorS => ME3,
		IgualS => I3
	);
	
		Inst_comparador1Bit4: comparador1Bit PORT MAP(
		A => A(4),
		B => B(4),
		Mayor => MA3,
		Menor => ME3,
		Igual => I3,
		MayorS => MA4,
		MenorS => ME4,
		IgualS => I4
	);
	
		Inst_comparador1Bit5: comparador1Bit PORT MAP(
		A => A(3),
		B => B(3),
		Mayor => MA4,
		Menor => ME4,
		Igual => I4,
		MayorS => MA5,
		MenorS => ME5,
		IgualS => I5
	);
	
		Inst_comparador1Bit6: comparador1Bit PORT MAP(
		A => A(2),
		B => B(2),
		Mayor => MA5,
		Menor => ME5,
		Igual => I5,
		MayorS => MA6,
		MenorS => ME6,
		IgualS => I6
	);
	
		Inst_comparador1Bit7: comparador1Bit PORT MAP(
		A => A(1),
		B => B(1),
		Mayor => MA6,
		Menor => ME6,
		Igual => I6,
		MayorS => MA7,
		MenorS => ME7,
		IgualS => I7
	);
	
		Inst_comparador1Bit8: comparador1Bit PORT MAP(
		A => A(0),
		B => B(0),
		Mayor => MA7,
		Menor => ME7,
		Igual => I7,
		MayorS => MA8,
		MenorS => Cout, --------
		IgualS => I8
	);

end Behavioral;

