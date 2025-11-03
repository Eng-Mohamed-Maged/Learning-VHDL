LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T18_Timer IS
GENERIC(ClockFrequncy : INTEGER);
PORT(
	Clk      : IN  STD_LOGIC;
	nRst     : IN  STD_LOGIC;   --Negative Reset [The Module will reset when this signal is '0']
	Seconds  : INOUT INTEGER;
	Minutes  : INOUT INTEGER;
	Hours    : INOUT INTEGER  
	);
END T18_Timer;

ARCHITECTURE T18_Timer_Rtl of T18_Timer IS
	-- Signal For counting clock periods
	SIGNAL Ticks : INTEGER;
BEGIN  
	-- Flip-Flop With Synchronized Reset
	PROCESS(Clk) IS
	BEGIN 
		IF RISING_EDGE(Clk) THEN
		
			-- If the Negative Reset Signal is active
			IF nRst = '0' THEN
				Ticks   <= 0;
				Seconds <= 0;
				Minutes <= 0;
				Hours   <= 0;
			ELSE 
				-- True once every second
				IF Ticks = ClockFrequncy - 1 THEN
					Ticks <= 0;
					
					-- True Once every minute 
					IF Seconds = 59 THEN
						Seconds <= 0;
						-- True Once every Hour
						IF Minutes = 59 THEN
							Minutes <= 0;
							-- True Once every Day
							IF Hours = 23 THEN
								Hours <= 0;
							ELSE
								Hours <= Hours + 1;
							END IF;
						ELSE
							Minutes <= Minutes + 1;
						END IF;
					ELSE
						Seconds <= Seconds + 1;
					END IF;
				ELSE
					Ticks <= Ticks + 1;
				END IF;
			
			END IF;
		END IF;
	END PROCESS;
	
END T18_Timer_Rtl;