--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:29:50 01/04/2023
-- Design Name:   
-- Module Name:   C:/Users/husse/Desktop/dababy/cpu/ALUtest.vhd
-- Project Name:  cpu
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
 
entity alu_tb is 
	
end entity;

architecture Behavioral of alu_tb is

component alu is 
port(
	en : in std_logic;
	op : in std_logic;
	reg_a_in : in std_logic_vector(7 downto 0);
	reg_b_in : in std_logic_vector(7 downto 0);
	cout : out std_logic;
	res : out std_logic_vector(7 downto 0)
);
end component;

signal clk_sig : std_logic;
signal en_sig : std_logic;
signal op_sig : std_logic;
signal reg_a_sig : std_logic_vector(7 downto 0);
signal reg_b_sig : std_logic_vector(7 downto 0);
signal res_out_sig : std_logic_vector(7 downto 0);
signal carry_sig : std_logic;

constant clk_period : time := 10 ns;
begin

alu1: alu port map(en=>en_sig,op=>op_sig,reg_a_in=>reg_a_sig,reg_b_in=>reg_b_sig,cout=>carry_sig,res=>res_out_sig);


process
begin

clk_sig<='0';
wait for clk_period/2;
clk_sig<= not clk_sig;
wait for clk_period/2;
end process;



process
begin

reg_a_sig<="11111111";
reg_b_sig<="00000001";

en_sig<='0';
op_sig<='1';
wait for clk_period*5;
en_sig<='1';
wait for clk_period*5;
op_sig<='0';

wait;

end process;











end Behavioral;
