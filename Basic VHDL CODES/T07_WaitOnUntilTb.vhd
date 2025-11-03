ENTITY T07_WaitOnUntilTb IS
END T07_WaitOnUntilTb;


ARCHITECTURE T07_WaitOnUntilArch of T07_WaitOnUntilTb IS
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
		WAIT ON CountUp,CountDown;
		REPORT "CountUp="    & INTEGER'IMAGE(CountUp) &
		       ",CountDown=" & INTEGER'IMAGE(CountDown);
	END PROCESS;
	
	PROCESS IS
	BEGIN
		WAIT UNTIL CountUp = CountDown;
		REPORT "Jackpot !";
	END PROCESS;

END T07_WaitOnUntilArch;