--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:28:11 12/05/2017
-- Design Name:   
-- Module Name:   C:/Users/mac/Desktop/ALU/ALU/TB_Alu.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY TB_Alu IS
END TB_Alu;
 
ARCHITECTURE behavior OF TB_Alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Sc2 : IN  std_logic;
         Sc1 : IN  std_logic;
         Sc0 : IN  std_logic;
         S : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Sc2 : std_logic := '0';
   signal Sc1 : std_logic := '0';
   signal Sc0 : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          Sc2 => Sc2,
          Sc1 => Sc1,
          Sc0 => Sc0,
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
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "10000000";
		B <= "00000001";
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "10000000";
		B <= "00000001";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "10000000";
		B <= "00000001";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "10000000";
		B <= "00000001";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "10000000";
		B <= "00000001";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "10000000";
		B <= "00000001";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "10000000";
		B <= "00000001";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
-----------------------------------------------------------------------------------		
      A <= "11111111";
		B <= "00000000";
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "00000000";
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "00000000";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "00000000";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "00000000";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "00000000";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "00000000";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "00000000";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
 -----------------------------------------------------------------------------------     
      A <= "00000000";
		B <= "11111111";
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "11111111";
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "11111111";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "11111111";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "11111111";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "11111111";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "11111111";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "11111111";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
-----------------------------------------------------------------------------------
      A <= "00000000";
		B <= "00000000";
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "00000000";
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "00000000";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "00000000";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "00000000";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "00000000";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "00000000";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "00000000";
		B <= "00000000";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
-----------------------------------------------------------------------------------
		A <= "11111111";
		B <= "11111111";
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "11111111";
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "11111111";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "11111111";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "11111111";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "11111111";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "11111111";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "11111111";
		B <= "11111111";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
-----------------------------------------------------------------------------------
		A <= "10001001";
		B <= "01001001";
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "10001001";
		B <= "01001001";
		Sc2 <= '0';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "10001001";
		B <= "01001001";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "10001001";
		B <= "01001001";
		Sc2 <= '0';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "10001001";
		B <= "01001001";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "10001001";
		B <= "01001001";
		Sc2 <= '1';
		Sc1 <= '0';
		Sc0 <= '1';
      wait for 20 ns;
		
		A <= "10001001";
		B <= "01001001";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '0';
      wait for 20 ns;
		
		A <= "10001001";
		B <= "01001001";
		Sc2 <= '1';
		Sc1 <= '1';
		Sc0 <= '1';
      wait for 20 ns;
      wait;
   end process;

END;
