--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:43:05 01/08/2023
-- Design Name:   
-- Module Name:   C:/Users/husse/Desktop/dababy/cpu/register_test.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg
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
 
ENTITY register_test IS
END register_test;
 
ARCHITECTURE behavior OF register_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         out_en : IN  std_logic;
         load : IN  std_logic;
         input : IN  std_logic_vector(7 downto 0);
         output : OUT  std_logic_vector(7 downto 0);
         output_alu : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal out_en : std_logic := '0';
   signal load : std_logic := '0';
   signal input : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(7 downto 0);
   signal output_alu : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg PORT MAP (
          clk => clk,
          rst => rst,
          out_en => out_en,
          load => load,
          input => input,
          output => output,
          output_alu => output_alu
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst<='0';
		out_en<='0';
		load<='0';
      wait for 100 ns;
		input<="00100010";
		load<='1';
		wait for 100 ns;
		load<='0';
		wait for 100 ns;
		out_en<='1';
		wait for 100 ns;
		out_en<='0';
		wait;

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
