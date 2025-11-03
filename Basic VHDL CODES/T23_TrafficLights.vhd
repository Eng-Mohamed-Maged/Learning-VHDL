LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T23_TrafficLights IS
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
END T23_TrafficLights;

ARCHITECTURE T23_TrafficLights_Rtl of T23_TrafficLights IS
	
	-- Enumerated type declaration and State signal declaration
	TYPE t_State IS(NorthNext, StartNorth, North, StopNorth, WestNext, StartWest, West, StopWest);
	
	SIGNAL State : t_State;
	
	-- Counter for cvounting clock periods 1 minute max
	SIGNAL Counter : INTEGER RANGE 0 TO ClockFrequncy * 60;
BEGIN  
	-- Flip-Flop With Synchronized Reset
	PROCESS(Clk) IS
		-- Procedure for changing state after a given time
		PROCEDURE ChangeState(ToState : t_State;
							  Minutes : INTEGER := 0;
							  Seconds : INTEGER := 0) IS
		
			VARIABLE TotalSeconds : INTEGER;
			VARIABLE ClockCycles  : INTEGER;
		BEGIN 
			TotalSeconds := Seconds + Minutes * 60;
			ClockCycles  := TotalSeconds * ClockFrequncy - 1;
			IF Counter = ClockCycles THEN
				Counter <= 0;
				State   <= ToState;
			END IF;
		END PROCEDURE;
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
						ChangeState(StartNorth,Seconds => 5);
						
					-- Red and yellow in north/south direction 				
					WHEN StartNorth =>
						NorthRed    <= '1';
						WestRed     <= '1';
						NorthYellow <= '1';
						ChangeState(North,Seconds => 5);
						
					-- Green in north/south direction	
					WHEN North      =>
						NorthGreen  <= '1';
						WestRed     <= '1';
						ChangeState(StopNorth,Minutes => 1);
						
					-- Yellow in north/south direction
					WHEN StopNorth  =>
						NorthYellow <= '1';
						WestRed     <= '1';
						ChangeState(WestNext,Seconds => 5);
						
					-- Red in all directions
					WHEN WestNext   =>
						NorthRed    <= '1';
						WestRed     <= '1';
						ChangeState(StartWest,Seconds => 5);
						
					-- Red and yellow im west/east direction 
					WHEN StartWest  =>
						NorthRed    <= '1';
						WestRed     <= '1';
						WestYellow  <= '1';
						ChangeState(West,Seconds => 5);
					
					-- Green in west/east direcion 
					WHEN West       =>
						NorthRed    <= '1';
						WestGreen   <= '1';
						ChangeState(StopWest,Minutes => 1);
						
					-- Yellow in west/east direction
					WHEN StopWest   =>
						NorthRed    <= '1';
						WestYellow  <= '1';
						ChangeState(NorthNext,Seconds => 5);
					
				END CASE;
				
				
			END IF;
		END IF;
	END PROCESS;
	
END T23_TrafficLights_Rtl;