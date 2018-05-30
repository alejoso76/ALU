----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:11 12/05/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Sc2 : in  STD_LOGIC;
           Sc1 : in  STD_LOGIC;
           Sc0 : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

--Sumador
	COMPONENT sumador8Bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;

--Restador	
	COMPONENT restadorConSuma8Bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;
	
--Or	
	COMPONENT or8Bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;

--And
	COMPONENT and8Bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;

--Comparador	
	COMPONENT salidaComparadorMux8Bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;
	
--SLL
	COMPONENT ShiftLeftLogical
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;
	
--SRL
	COMPONENT ShiftRightLogical
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;
	
--Mux 2 a 1 8 bits	
	COMPONENT mux2a18Bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);
		Sc : IN std_logic;          
		S : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
--Mux 2 a 1 1 bit
	COMPONENT mux2a1
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		Sc : IN std_logic;          
		S : OUT std_logic
		);
	END COMPONENT;	

	
	SIGNAL CSUm, CRes1, CRes2, COr, CAnd, CComp, CSll, CSrl, S1, S2, S3, S4, S5, S6, S7: STD_LOGIC;
	SIGNAL SSum, SRes1, SRes2, SOr, SAnd, SComp, SSll, SSrl, Sv1, Sv2, Sv3, Sv4, Sv5, Sv6, Sv7: STD_LOGIC_VECTOR (7 downto 0);
	
begin

	Inst_sumador8Bits: sumador8Bits PORT MAP(
		A => A,
		B => B,
		S => SSum,
		Cout => CSum
	);
	
	Inst_restadorConSuma8Bits1: restadorConSuma8Bits PORT MAP(
		A => A,
		B => B,
		S => SRes1,
		Cout => CRes1
	);
	
	Inst_restadorConSuma8Bits2: restadorConSuma8Bits PORT MAP(
		A => B,
		B => A,
		S => SRes2,
		Cout => CRes2
	);
	
	Inst_or8Bits: or8Bits PORT MAP(
		A => A,
		B => B,
		S => SOr,
		Cout => COr
	);	
	
	Inst_and8Bits: and8Bits PORT MAP(
		A => A,
		B => B,
		S => SAnd,
		Cout => CAnd
	);

	Inst_salidaComparadorMux8Bits: salidaComparadorMux8Bits PORT MAP(
		A => A,
		B => B,
		S => SComp,
		Cout => CComp
	);
	
	
	Inst_ShiftLeftLogical: ShiftLeftLogical PORT MAP(
		A => A,
		B => B,
		S => SSll,
		Cout => CSll
	);
	
		Inst_ShiftRightLogical: ShiftRightLogical PORT MAP(
		A => A,
		B => B,
		S => SSrl,
		Cout => CSrl
	);
-----------------------------------------------------------------------------------------------

	Inst_mux2a18Bits1: mux2a18Bits PORT MAP(
		A => SSum,
		B => SRes1,
		Sc => Sc0,
		S => Sv1
	);
	
	Inst_mux2a18Bits2: mux2a18Bits PORT MAP(
		A => SRes2,
		B => SOr,
		Sc => Sc0,
		S => Sv2
	);
	
	Inst_mux2a18Bits3: mux2a18Bits PORT MAP(
		A => SAnd,
		B => SComp,
		Sc => Sc0,
		S => Sv3
	);
	
	Inst_mux2a18Bits4: mux2a18Bits PORT MAP(
		A => SSll,
		B => SSrl,
		Sc => Sc0,
		S => Sv4
	);
	
	Inst_mux2a18Bits5: mux2a18Bits PORT MAP(
		A => Sv1,
		B => Sv2,
		Sc => Sc1,
		S => Sv5
	);
	
	Inst_mux2a18Bits6: mux2a18Bits PORT MAP(
		A => Sv3,
		B => Sv4,
		Sc => Sc1,
		S => Sv6
	);
	
	Inst_mux2a18Bits7: mux2a18Bits PORT MAP(
		A => Sv5,
		B => Sv6,
		Sc => Sc2,
		S => S
	);
-------------------------------------------------------------------	
	Inst_mux2a11: mux2a1 PORT MAP(
		A => CSum,
		B => CRes1,
		Sc => Sc0,
		S => S1
	);
	
	Inst_mux2a12: mux2a1 PORT MAP(
		A => CRes2,
		B => COr,
		Sc => Sc0,
		S => S2
	);
	
	Inst_mux2a13: mux2a1 PORT MAP(
		A => CAnd,
		B => CComp,
		Sc => Sc0,
		S => S3
	);
	
	Inst_mux2a14: mux2a1 PORT MAP(
		A => CSll,
		B => CSrl,
		Sc => Sc0,
		S => S4
	);
	
	Inst_mux2a5: mux2a1 PORT MAP(
		A => S1,
		B => S2,
		Sc => Sc1,
		S => S5
	);
	
	Inst_mux2a16: mux2a1 PORT MAP(
		A => S3,
		B => S4,
		Sc => Sc1,
		S => S6
	);
	
	Inst_mux2a7: mux2a1 PORT MAP(
		A => S5,
		B => S6,
		Sc => Sc2,
		S => Cout
	);

	
	
end Behavioral;

