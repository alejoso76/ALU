----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:30:07 12/05/2017 
-- Design Name: 
-- Module Name:    mux2a1 - Behavioral 
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

entity mux2a1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sc : in  STD_LOGIC;
           S : out  STD_LOGIC);
end mux2a1;

architecture Behavioral of mux2a1 is

begin

S <= (A and not Sc) or (B and Sc);

end Behavioral;

