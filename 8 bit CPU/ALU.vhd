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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity alu is
port(
	en : in std_logic;
	op : in std_logic;
	reg_a_in : in std_logic_vector(7 downto 0);
	reg_b_in : in std_logic_vector(7 downto 0);
	carry_out : out std_logic;
	zero_flag : out std_logic;
	res_out : out std_logic_vector(7 downto 0)
);
end entity;

architecture Behavioral of alu is 

signal result : std_logic_vector(8 downto 0);

begin
	
	process(reg_a_in,reg_b_in,op)
	begin
		if op = '0' then
			result <= ('0' & reg_a_in) + ('0' & reg_b_in);
		elsif op = '1' then
			result <= ('0' & reg_a_in) - ('0' & reg_b_in);
		end if;
	end process;

carry_out<= result(8);
zero_flag<= '1' when result(7 downto 0) = "00000000" else '0';
res_out<=result(7 downto 0) when en='1' else (others=>'Z');

end Behavioral;

