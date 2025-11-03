LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T12_SignedUnsigned_Tb IS
END T12_SignedUnsigned_Tb;


ARCHITECTURE T12_SignedUnsigned_Arch of T12_SignedUnsigned_Tb IS
	SIGNAL UnsignedCnt: UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
	SIGNAL SignedCnt  : SIGNED  (7 DOWNTO 0) := (OTHERS => '0');
	
	SIGNAL Unsigned4  : UNSIGNED(3 DOWNTO 0) := "1000";	
	SIGNAL Signed4    : SIGNED  (3 DOWNTO 0) := "1000";

	SIGNAL Unsigned8  : UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
	SIGNAL Signed8    : SIGNED  (7 DOWNTO 0) := (OTHERS => '0');
BEGIN 

	PROCESS IS
	BEGIN 
		
		WAIT FOR 10 NS;
		-- Wrapping Counter
		UnsignedCnt <= UnsignedCnt + 1;
		SignedCnt  <= SignedCnt  + 1;
		
		-- Adding Signals
		Unsigned8 <= Unsigned8 + Unsigned4;
		Signed8   <= Signed8   + Signed4  ;
		
 	END PROCESS;



END T12_SignedUnsigned_Arch;