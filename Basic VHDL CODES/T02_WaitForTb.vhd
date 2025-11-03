ENTITY T02_WaitForTb IS
END T02_WaitForTb;


ARCHITECTURE T02_WaitForArch of T02_WaitForTb IS
BEGIN 
	PROCESS IS
	BEGIN 
		-- This is the start of the process "Thread"
		REPORT "Hello Megooooo!";
		WAIT FOR 10 ns;
		-- This process will loop back to the start from here
	END PROCESS;


END T02_WaitForArch;