ENTITY T09_SensitivityList_Tb IS
END T09_SensitivityList_Tb;


ARCHITECTURE T09_SensitivityList_Arch of T09_SensitivityList_Tb IS
	SIGNAL CountUp   : INTEGER := 0;
	SIGNAL CountDown : INTEGER := 10;
BEGIN 
	PROCESS IS
	BEGIN 
		CountUp   <= CountUp + 1;
		CountDown <= CountDown - 1;
		WAIT FOR 10 NS;
 	END PROCESS;

-- PROCESS TRIGGERS USING (WAIT ON)	
	PROCESS IS
	BEGIN
		IF CountUp = CountDown THEN
			REPORT "PROCESS(A) : Jackpot!";
		END IF;
			
		WAIT ON CountUp,CountDown;
	END PROCESS;
	
-- EQUIVALENT PROCESS USING A SENSITIVITY LIST	
	PROCESS(CountDown,CountUp) IS
	BEGIN
		IF CountUp = CountDown THEN
			REPORT "PROCESS(B) : Jackpot!";
		END IF;	
	END PROCESS;

END T09_SensitivityList_Arch;