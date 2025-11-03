ENTITY T03_LoopTb IS
END T03_LoopTb;


ARCHITECTURE T03_LoopArch of T03_LoopTb IS
BEGIN 
	PROCESS IS
	BEGIN 
		REPORT "Before The Loop";
		LOOP
			REPORT "Hello Megooooo!";
			EXIT;
		END LOOP;
		REPORT "End The Loop";
		WAIT;
 	END PROCESS;


END T03_LoopArch;