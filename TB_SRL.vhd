--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:14:20 12/02/2017
-- Design Name:   
-- Module Name:   C:/Users/mac/Desktop/ALU/ALU/TB_SRL.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShiftRightLogical
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_SRL IS
END TB_SRL;
 
ARCHITECTURE behavior OF TB_SRL IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ShiftRightLogical
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         S : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRightLogical PORT MAP (
          A => A,
          B => B,
          S => S,
          Cout => Cout
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      A <= "10000000";
		B <= "00000001";
      wait for 20 ns;	
		
		A <= "00000001";
		B <= "10000000";
      wait for 20 ns;
		
		A <= "11111111";
		B <= "10000000";
      wait for 20 ns;
		
		A <= "11111111";
		B <= "11111111";
      wait for 20 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
