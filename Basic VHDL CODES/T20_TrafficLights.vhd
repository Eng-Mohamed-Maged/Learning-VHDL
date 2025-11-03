LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T20_TrafficLights IS
GENERIC(ClockFrequncy : INTEGER);
PORT(
	Clk           : IN  STD_LOGIC;
	nRst          : IN  STD_LOGIC;   --Negative Reset [The Module will reset when this signal is '0']
	NorthRed      : OUT STD_LOGIC;
	NorthYellow   : OUT STD_LOGIC;
	NorthGreen    : OUT STD_LOGIC;
	WestRed       : OUT STD_LOGIC;
	WestYellow    : OUT STD_LOGIC;
	WestGreen     : OUT STD_LOGIC
	);
END T20_TrafficLights;

ARCHITECTURE T20_TrafficLights_Rtl of T20_TrafficLights IS

	-- Enumerated type declaration and State signal declaration
	TYPE t_State IS(NorthNext, StartNorth, North, StopNorth, WestNext, StartWest, West, StopWest);
	
	SIGNAL State : t_State;
	
	-- Counter for cvounting clock periods 1 minute max
	SIGNAL Counter : INTEGER RANGE 0 TO ClockFrequncy * 60;
BEGIN  
	-- Flip-Flop With Synchronized Reset
	PROCESS(Clk) IS
	BEGIN 
		IF RISING_EDGE(Clk) THEN
		
			-- If the Negative Reset Signal is active
			IF nRst = '0' THEN
				-- Reset Values
				State <= NorthNext;
				Counter       <= 0;
				NorthRed      <= '1';
				NorthYellow   <= '0';
				NorthGreen    <= '0';
				WestRed       <= '1';
				WestYellow    <= '0';
				WestGreen     <= '0';
				
			ELSE 
				-- Default Values
				NorthRed       <= '0';
				NorthYellow    <= '0';
				NorthGreen     <= '0';
				WestRed        <= '0';
				WestYellow     <= '0';
				WestGreen      <= '0';
				Counter        <= Counter + 1;
				CASE State IS
					-- Red in all directions
					WHEN NorthNext  =>
						NorthRed    <= '1';
						WestRed     <= '1';
						-- If 5 seconds have passed
						IF Counter =  ClockFrequncy * 5 - 1 THEN
							Counter     <= 0;
							State       <= StartNorth;
						END IF;
						
					-- Red and yellow in north/south direction 				
					WHEN StartNorth =>
						NorthRed    <= '1';
						WestRed     <= '1';
						NorthYellow <= '1';
						-- If 5 seconds have passed
						IF Counter =  ClockFrequncy * 5 - 1 THEN
							Counter     <= 0;
							State       <= North; 
						END IF;
						
					-- Green in north/south direction	
					WHEN North      =>
						NorthGreen  <= '1';
						WestRed     <= '1';
						-- If 1 minute have passed
						IF Counter =  ClockFrequncy * 60 - 1 THEN
							Counter     <= 0;
							State <= StopNorth;
						END IF;
					
					-- Yellow in north/south direction
					WHEN StopNorth  =>
						NorthYellow <= '1';
						WestRed     <= '1';
						-- If 5 seconds have passed
						IF Counter =  ClockFrequncy * 5 - 1 THEN
							Counter     <= 0;
							State <= WestNext;
						END IF;
						
					-- Red in all directions
					WHEN WestNext   =>
						NorthRed    <= '1';
						WestRed     <= '1';
						-- If 5 seconds have passed
						IF Counter =  ClockFrequncy * 5 - 1 THEN
							Counter     <= 0;
							State <= StartWest;
						END IF;
						
					-- Red and yellow im west/east direction 
					WHEN StartWest  =>
						NorthRed    <= '1';
						WestRed     <= '1';
						WestYellow  <= '1';
						-- If 5 seconds have passed
						IF Counter =  ClockFrequncy * 5 - 1 THEN
							Counter     <= 0;
							State <= West;
						END IF;
					
					-- Green in west/east direcion 
					WHEN West       =>
						NorthRed    <= '1';
						WestGreen   <= '1';
						-- If 1 minute have passed
						IF Counter =  ClockFrequncy * 60 - 1 THEN
							Counter     <= 0;
							State <= StopWest;
						END IF;
					-- Yellow in west/east direction
					WHEN StopWest   =>
						NorthRed    <= '1';
						WestYellow  <= '1';
						-- If 5 seconds have passed
						IF Counter =  ClockFrequncy * 5 - 1 THEN
							Counter     <= 0;
							State <= NorthNext;
						END IF;
					
				END CASE;
				
				
			END IF;
		END IF;
	END PROCESS;
	
END T20_TrafficLights_Rtl;