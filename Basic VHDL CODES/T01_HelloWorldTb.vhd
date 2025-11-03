ENTITY T01_HelloWorldTb IS
END T01_HelloWorldTb;


ARCHITECTURE T01_HelloWorldArch of T01_HelloWorldTb IS
BEGIN 
	PROCESS IS
	BEGIN 
		REPORT "Hello World!";
		WAIT;
	END PROCESS;


END T01_HelloWorldArch;