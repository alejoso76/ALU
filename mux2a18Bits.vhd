----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:40:44 12/05/2017 
-- Design Name: 
-- Module Name:    mux2a18Bits - Behavioral 
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

entity mux2a18Bits is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Sc : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (7 downto 0));
end mux2a18Bits;

architecture Behavioral of mux2a18Bits is

	COMPONENT mux2a1
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		Sc : IN std_logic;          
		S : OUT std_logic
		);
	END COMPONENT;


begin
	Inst_mux2a11: mux2a1 PORT MAP(
		A => A(0),
		B => B(0),
		Sc => Sc,
		S => S(0)
	);
	
		Inst_mux2a12: mux2a1 PORT MAP(
		A => A(1),
		B => B(1),
		Sc => Sc,
		S => S(1)
	);
	
		Inst_mux2a13: mux2a1 PORT MAP(
		A => A(2),
		B => B(2),
		Sc => Sc,
		S => S(2)
	);
	
		Inst_mux2a14: mux2a1 PORT MAP(
		A => A(3),
		B => B(3),
		Sc => Sc,
		S => S(3)
	);
	
		Inst_mux2a15: mux2a1 PORT MAP(
		A => A(4),
		B => B(4),
		Sc => Sc,
		S => S(4)
	);
	
		Inst_mux2a16: mux2a1 PORT MAP(
		A => A(5),
		B => B(5),
		Sc => Sc,
		S => S(5)
	);
	
		Inst_mux2a17: mux2a1 PORT MAP(
		A => A(6),
		B => B(6),
		Sc => Sc,
		S => S(6)
	);
	
		Inst_mux2a18: mux2a1 PORT MAP(
		A => A(7),
		B => B(7),
		Sc => Sc,
		S => S(7)
	);

end Behavioral;

