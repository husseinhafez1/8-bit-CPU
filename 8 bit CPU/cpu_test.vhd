--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:14:50 01/07/2023
-- Design Name:   
-- Module Name:   C:/Users/husse/Desktop/dababy/cpu/cpu_test.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cpu
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity cpu_tb is
	

end entity;



architecture Behavioral of cpu_tb is

component cpu is
	port(
		clk			: IN std_logic;
		rst			: IN std_logic;
		op			: OUT std_logic_vector(7 downto 0)		
	);

end component;

constant clk_period : time := 50 ns;
signal clk_sig : std_logic;
signal nclk_sig : std_logic;
signal rst_sig:std_logic:='0';
signal mem_prog_sig:std_logic:='0';
signal ext_mem_clk_sig:std_logic:='0';
signal ext_mem_addr_sig:std_logic_vector(3 downto 0):=(others=>'0');
signal ext_mem_bus_sig:std_logic_vector(7 downto 0):=(others=>'0');
signal op_sig:std_logic_vector(7 downto 0):=(others=>'0');

begin


cpu1_obj: cpu port map(
clk=>clk_sig,
rst=>rst_sig,
op=>op_sig
);

process
begin
	clk_sig <= '1';
	wait for clk_period/2;
	clk_sig <= not clk_sig;
	wait for clk_period/2;
	
end process;


nclk_sig <= not clk_sig;



process

begin

wait for clk_period*14;
rst_sig<='1' ;
wait for clk_period*10;
rst_sig<='0'; 
wait;

end process;

end Behavioral;
