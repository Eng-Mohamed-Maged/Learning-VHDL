LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T19_Timer IS
GENERIC(ClockFrequncy : INTEGER);
PORT(
	Clk      : IN  STD_LOGIC;
	nRst     : IN  STD_LOGIC;   --Negative Reset [The Module will reset when this signal is '0']
	Seconds  : INOUT INTEGER;
	Minutes  : INOUT INTEGER;
	Hours    : INOUT INTEGER  
	);
END T19_Timer;

ARCHITECTURE T19_Timer_Rtl of T19_Timer IS
	-- Signal For counting clock periods
	SIGNAL Ticks : INTEGER;
	
	PROCEDURE Incrementwrap(SIGNAL   Counter   : INOUT INTEGER;
						    CONSTANT WrapValue : IN    INTEGER;
							CONSTANT Enable    : IN    BOOLEAN;
							VARIABLE Wrapped   : OUT   BOOLEAN) IS 
	BEGIN
		IF Enable THEN
			IF Counter = WrapValue - 1 THEN
				Wrapped := true;
				Counter <= 0;
			ELSE
				Wrapped := false;
				Counter <= Counter + 1;
			END IF;
		END IF;
	END PROCEDURE;
	
BEGIN  
	-- Flip-Flop With Synchronized Reset
	PROCESS(Clk) IS
		VARIABLE Wrap : BOOLEAN;
	BEGIN 
		IF RISING_EDGE(Clk) THEN
		
			-- If the Negative Reset Signal is active
			IF nRst = '0' THEN
				Ticks   <= 0;
				Seconds <= 0;
				Minutes <= 0;
				Hours   <= 0;
			ELSE 
				-- Cascade Counters
				Incrementwrap(Ticks,ClockFrequncy,True,Wrap);
				Incrementwrap(Seconds, 60, Wrap, Wrap);
				Incrementwrap(Minutes, 60, Wrap, Wrap);
				Incrementwrap(Hours  , 24, Wrap, Wrap);
			END IF;
		END IF;
	END PROCESS;
	
END T19_Timer_Rtl;