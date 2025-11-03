LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T18_Timer_Tb IS
END T18_Timer_Tb;


ARCHITECTURE T18_Timer_Arch of T18_Timer_Tb IS
	-- CONSTANT ClockFrequncy : INTEGER := 100e6;       -- 100MHZ
	-- We're slowing down the clock to speed up simulation TIME
	CONSTANT ClockFrequncy : INTEGER := 10;       -- 10 HZ
	
	CONSTANT ClockPeriod   : TIME    := 1000 MS / ClockFrequncy;
	
	SIGNAL Clk     : STD_LOGIC := '1';
	SIGNAL nRst    : STD_LOGIC := '0';
	SIGNAL Seconds : INTEGER ;
	SIGNAL Minutes : INTEGER ;
	SIGNAL Hours   : INTEGER ;
	
BEGIN 
	-- The Device Under Test (DUT)
	i_Timer : ENTITY WORK.T18_Timer(T18_Timer_Rtl) 
	GENERIC MAP(ClockFrequncy => ClockFrequncy)
	PORT MAP(
	Clk     => Clk,
	nRst    => nRst,
	Seconds => Seconds,
	Minutes => Minutes,
	Hours   => Hours);
	
	-- PROCESS FOR GENERATING THE ClockFrequncy
	Clk <= NOT Clk AFTER ClockPeriod / 2; 
	
	-- TestBench Sequence
	PROCESS IS
	BEGIN
		WAIT UNTIL RISING_EDGE(Clk);
		WAIT UNTIL RISING_EDGE(Clk);
		
		-- Take the DUT out of Reset
		nRst <= '1';
		
		WAIT;
	END PROCESS;
	
END T18_Timer_Arch;