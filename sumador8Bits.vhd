----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:24:37 11/22/2017 
-- Design Name: 
-- Module Name:    sumador8Bits - Behavioral 
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

entity sumador8Bits is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end sumador8Bits;

architecture Behavioral of sumador8Bits is
--Sumador medio
	COMPONENT sumadorMedio
	PORT(
		A : IN std_logic;
		B : IN std_logic;          
		S : OUT std_logic;
		Cout : OUT std_logic
		);
	END COMPONENT;
--Sumador completo	
	COMPONENT sumadorCompleto
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		Cin : IN std_logic;          
		S : OUT std_logic;
		Cout : OUT std_logic
		);
	END COMPONENT;	
SIGNAL C1, C2, C3, C4, C5, C6, C7: STD_LOGIC;

begin

	Inst_sumadorMedio: sumadorMedio PORT MAP(
		A => A(0),
		B => B(0),
		S => S(0),
		Cout => C1
	);
	
		Inst_sumadorCompleto1: sumadorCompleto PORT MAP(
		A => A(1),
		B => B(1),
		Cin => C1,
		S => S(1),
		Cout => C2
	);
	Inst_sumadorCompleto2: sumadorCompleto PORT MAP(
		A => A(2),
		B => B(2),
		Cin => C2,
		S => S(2),
		Cout => C3
	);
	Inst_sumadorCompleto3: sumadorCompleto PORT MAP(
		A => A(3),
		B => B(3),
		Cin => C3,
		S => S(3),
		Cout => C4 
	);
	Inst_sumadorCompleto4: sumadorCompleto PORT MAP(
		A => A(4),
		B => B(4),
		Cin => C4,
		S => S(4),
		Cout => C5
	);
	Inst_sumadorCompleto5: sumadorCompleto PORT MAP(
		A => A(5),
		B => B(5),
		Cin => C5,
		S => S(5),
		Cout => C6
	);
	Inst_sumadorCompleto6: sumadorCompleto PORT MAP(
		A => A(6),
		B => B(6),
		Cin => C6,
		S => S(6),
		Cout => C7
	);
	Inst_sumadorCompleto7: sumadorCompleto PORT MAP(
		A => A(7),
		B => B(7),
		Cin => C7,
		S => S(7),
		Cout => Cout
	);


end Behavioral;

