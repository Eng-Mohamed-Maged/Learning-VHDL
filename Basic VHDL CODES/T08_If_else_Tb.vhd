ENTITY T08_If_else_Tb IS
END T08_If_else_Tb;


ARCHITECTURE T08_If_else_Arch of T08_If_else_Tb IS
	SIGNAL CountUp   : INTEGER := 0;
	SIGNAL CountDown : INTEGER := 10;
BEGIN 
	PROCESS IS
	BEGIN 
		CountUp   <= CountUp + 1;
		CountDown <= CountDown - 1;
		WAIT FOR 10 NS;
 	END PROCESS;
	
	PROCESS IS
	BEGIN
		IF CountUp > CountDown THEN
			REPORT "Count Up is Larger !";
		ELSIF CountDown > CountUp THEN 
			REPORT "Count Down is Larger !";
		ELSE 
			REPORT "CountUp is Equal to CountDown";
		END IF;
			
		WAIT ON CountUp,CountDown;
	END PROCESS;
	

END T08_If_else_Arch;