LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T17_ClockedProcess_Tb IS
END T17_ClockedProcess_Tb;


ARCHITECTURE T17_ClockedProcess_Arch of T17_ClockedProcess_Tb IS
	CONSTANT ClockFrequncy : INTEGER := 100e6;       -- 100MHZ
	CONSTANT ClockPeriod   : TIME    := 1000 MS / ClockFrequncy;
	
	SIGNAL Clk    : STD_LOGIC := '1';
	SIGNAL nRst   : STD_LOGIC := '0';
	SIGNAL Input  : STD_LOGIC := '0';
	SIGNAL Output : STD_LOGIC ;
BEGIN 
	-- The Device Under Test (DUT)
	i_FlipFlop : ENTITY WORK.T17_FlipFlop(T17_FlipFlop_Rtl) 
	PORT MAP( 
		Clk    => Clk,
		nRst   => nRst,
		Input  => Input,
		Output => Output);
	
	-- PROCESS FOR GENERATING THE ClockFrequncy
	Clk <= NOT Clk AFTER ClockPeriod / 2; 
	
	-- TestBench Sequence
	PROCESS IS
	BEGIN
		-- The Device Under Test (DUT)
		nRst <= '1';
		WAIT FOR 20 NS;
		Input <= '1';
		WAIT FOR 22 NS;
		Input <= '0';
		WAIT FOR 6 NS;
		Input <= '1';
		WAIT FOR 20 NS;
		
		-- RESET THE DUT
		nRst <= '0';
		WAIT;
	END PROCESS;
	
END T17_ClockedProcess_Arch;