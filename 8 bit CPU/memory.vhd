----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:55:26 01/04/2023 
-- Design Name: 
-- Module Name:    memory - Behavioral 
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
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

use IEEE.STD_LOGIC_TEXTIO.ALL;

library STD;
use STD.TEXTIO.ALL;

entity mem is
	port(
		clk : in std_logic;
		load :in std_logic;
		oe	: in std_logic;
		data_in : in std_logic_vector(7 downto 0);
		addr_in : in std_logic_vector(3 downto 0);
		data_out : out std_logic_vector(7 downto 0)
	);
end entity;


architecture Behavioral of mem is

type mem_type is array(0 to 15) of std_logic_vector(7 downto 0);


signal mem_obj:mem_type :=(x"0E",x"2F",x"1E",x"5E",x"41",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"01");
begin

--process(clk)
--begin
	--if rising_edge(clk) then
		--if load = '1' then
			--mem_obj(to_integer(unsigned(addr_in)))<=data_in;
		--end if;
		
		--if oe = '1' then
			--data_out <= mem_obj(to_integer(unsigned(addr_in)));
		--else
			--data_out<="ZZZZZZZZ";
		--end if;
	--end if;
--end process;

mem_obj(to_integer(unsigned(addr_in)))<=data_in when load = '1';
data_out <= mem_obj(to_integer(unsigned(addr_in))) when oe = '1' else (others=>'Z');

end Behavioral;


