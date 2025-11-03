LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T20_FiniteStateMachine_Tb IS
END T20_FiniteStateMachine_Tb;


ARCHITECTURE T20_FiniteStateMachine_Arch of T20_FiniteStateMachine_Tb IS
	-- CONSTANT ClockFrequncy : INTEGER := 100e6;       -- 100MHZ
	-- We're slowing down the clock to speed up simulation TIME
	CONSTANT ClockFrequncy : INTEGER := 100;       -- 100 HZ
	
	CONSTANT ClockPeriod   : TIME    := 1000 MS / ClockFrequncy;
	
	SIGNAL Clk           : STD_LOGIC := '1';
	SIGNAL nRst          : STD_LOGIC := '0';
	
	SIGNAL NorthRed      : STD_LOGIC ;
	SIGNAL NorthYellow   : STD_LOGIC ;
	SIGNAL NorthGreen    : STD_LOGIC ;
	SIGNAL WestRed       : STD_LOGIC ;
	SIGNAL WestYellow    : STD_LOGIC ;
	SIGNAL WestGreen     : STD_LOGIC ;
BEGIN 
	-- The Device Under Test (DUT)
	i_TrafficLights : ENTITY work.T20_TrafficLights(T20_TrafficLights_Rtl) 
	GENERIC MAP(ClockFrequncy => ClockFrequncy)
	PORT MAP(Clk          => Clk,
			 nRst         => nRst,
			 NorthRed     => NorthRed,   
			 NorthYellow  => NorthYellow,
			 NorthGreen   => NorthGreen, 
			 WestRed      => WestRed,    
			 WestYellow   => WestYellow, 
			 WestGreen    => WestGreen);
	
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
	
END T20_FiniteStateMachine_Arch;