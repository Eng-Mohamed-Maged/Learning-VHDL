ENTITY T06_SignalTb IS
END T06_SignalTb;


ARCHITECTURE T06_SignalArch of T06_SignalTb IS
	SIGNAL MySignal : INTEGER := 0;
BEGIN 
	PROCESS IS
	VARIABLE MyVariable :INTEGER := 0;
	BEGIN 
		REPORT "***************** PROCESS BEGIN *****************";
		MyVariable := MyVariable + 1;
		MySignal   <= MySignal   + 1;
		
		REPORT "MyVariable=" & INTEGER'IMAGE(MyVariable) &
		 ", MySignal=" & INTEGER'IMAGE(MySignal);
		 
		 
		MyVariable := MyVariable + 1;
		MySignal   <= MySignal   + 1;
		
		REPORT "MyVariable=" & INTEGER'IMAGE(MyVariable) &
		 ", MySignal=" & INTEGER'IMAGE(MySignal);
		  
		WAIT FOR 10 NS;
 	END PROCESS;


END T06_SignalArch;