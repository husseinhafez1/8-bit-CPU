--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:51:22 01/08/2023
-- Design Name:   
-- Module Name:   C:/Users/husse/Desktop/dababy/cpu/cu_test.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: control_unit
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

entity cu_test is
--  Port ( );
end cu_test;

architecture Behavioral of cu_test is

component control_unit is 
Port ( 
clk: in std_logic;
rst: in std_logic;
inst: in std_logic_vector(3 downto 0);
do : out std_logic_vector(16 downto 0)
);
end component;


signal clk_sig: std_logic:='0';
signal inst_sig:std_logic_vector(3 downto 0):="0000";
signal rst_sig:std_logic;
signal control_op:std_logic_vector(16 downto 0);
constant clk_period : time := 10 ns;

signal pc_out:std_logic;
signal mar_in:std_logic;

begin

process
begin

clk_sig<='0';
wait for clk_period/2;
clk_sig<= not clk_sig;
wait for clk_period/2;
end process;


cu_inst: control_unit port map(clk=>clk_sig,rst=>rst_sig,inst=>inst_sig,do=>control_op);

pc_out<=control_op(9);
mar_in<=control_op(8);

process
begin

rst_sig<='1';
wait for clk_period*5;
rst_sig<='0';

wait;
end process;



end Behavioral;
