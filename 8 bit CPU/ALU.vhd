----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:14:30 12/30/2022 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( en : in  STD_LOGIC;
           op : in  STD_LOGIC;
           reg_a_in : in  STD_LOGIC_VECTOR (7 downto 0);
           reg_b_in : in  STD_LOGIC_VECTOR (7 downto 0);
           cout : out  STD_LOGIC;
           res : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is
signal result: STD_LOGIC_VECTOR (8 downto 0);
begin

process (reg_a_in, reg_b_in, op)
begin
	if op = '1' then
		result<=('0' & reg_a_in) + ('0' & reg_b_in);
	else
		result<=('0' & reg_a_in) - ('0' & reg_b_in);
	end if;
end process;
cout<=result(8);
res<=result(7 downto 0);
end Behavioral;

