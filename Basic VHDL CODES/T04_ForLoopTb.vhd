ENTITY T04_ForLoopTb IS
END T04_ForLoopTb;


ARCHITECTURE T04_ForLoopArch of T04_ForLoopTb IS
BEGIN 
	PROCESS IS
	BEGIN 
		FOR i IN 1 TO 10 LOOP
			REPORT "i=" & integer'image(i);
		END LOOP;
		WAIT;
 	END PROCESS;


END T04_ForLoopArch;