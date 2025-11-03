LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T13_ConcurrentProcs_Tb IS
END T13_ConcurrentProcs_Tb;


ARCHITECTURE T13_ConcurrentProcs_Arch of T13_ConcurrentProcs_Tb IS
	SIGNAL Uns  : UNSIGNED(5 DOWNTO 0) := (OTHERS => '0');
	SIGNAL Mul1 : UNSIGNED(7 DOWNTO 0);
	SIGNAL Mul2 : UNSIGNED(7 DOWNTO 0);
	SIGNAL Mul3 : UNSIGNED(7 DOWNTO 0);
BEGIN 

	PROCESS IS
	BEGIN 
		Uns <= Uns + 1;
		
		
		
		WAIT FOR 10 NS;
 	END PROCESS;

    -- Process multiplying Uns by 4 
	PROCESS IS
	BEGIN
		Mul1 <= Uns & "00"; -- Concatonating 2 bits to be the same length of Mul (7 DOWNTO 0)
		WAIT ON Uns;
	END PROCESS;

	-- Equivalent process using sensitivity list
	PROCESS(Mul1) IS 
	BEGIN 
		Mul2 <= Uns & "00";
	END PROCESS;
	
	-- Equivalent process using a concurrent statement 
	Mul3 <= Uns & "00";
END T13_ConcurrentProcs_Arch;