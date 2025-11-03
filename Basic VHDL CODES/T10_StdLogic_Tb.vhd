LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY T10_StdLogic_Tb IS
END T10_StdLogic_Tb;


ARCHITECTURE T10_StdLogic_Arch of T10_StdLogic_Tb IS
	SIGNAL  Signal1 : STD_LOGIC := '0'; 
	SIGNAL  Signal2 : STD_LOGIC ; 
	SIGNAL  Signal3 : STD_LOGIC ; 
BEGIN 

	PROCESS IS
	BEGIN 
		
		WAIT FOR 10 NS;
		Signal1 <= NOT Signal1;
 	END PROCESS;

	-- DRIVER A
	PROCESS IS
	BEGIN 
		Signal2 <= 'Z';
		Signal3 <= '0';
		WAIT;
		
	END PROCESS;
	
	-- DRIVER B
	PROCESS(Signal1) IS
	BEGIN
		IF Signal1 = '0' THEN
			Signal2 <= 'Z';
			Signal3 <= 'Z';
		ELSE 
			Signal2 <= '1';
			Signal3 <= '1';
		END IF;
	END PROCESS;

END T10_StdLogic_Arch;