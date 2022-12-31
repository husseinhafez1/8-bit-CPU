----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:59:40 12/30/2022 
-- Design Name: 
-- Module Name:    register - Behavioral 
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

entity mar is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           load : in  STD_LOGIC;
           input : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end mar;

architecture Behavioral of mar is
signal stored: std_logic_vector(7 downto 0):=(others=>'Z');
begin

process (clk, rst)
begin
	if rst = '1' then
		stored<=(others=>'Z');
	elsif rising_edge(clk) then
		if load = '1' then
			stored<=input;
		end if;
	end if;
end process;
output<=stored;
end Behavioral;

