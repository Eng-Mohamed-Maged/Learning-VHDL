-----------------------------------------
-- Design: SHIFTER_For_GENERATE
-- Date:   01/09/2025 
-- Author: Eng-Mohamed Maged
-----------------------------------------
         -- Library Decleration --
-----------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------
         -- Entity Decleration --
-----------------------------------------
ENTITY shifter IS
	PORT( 
		x : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		s : IN  INTEGER RANGE 0 TO 4;
		z : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END shifter;
-----------------------------------------
     -- Architecture Decleration --
-----------------------------------------
ARCHITECTURE shifterArch of shifter IS
	SUBTYPE vector IS STD_LOGIC_VECTOR(7 DOWNTO 0);
	TYPE matrix IS ARRAY (4 DOWNTO O) OF vector;
	SIGNAL row : matrix; 
BEGIN
	row(0) <= "0000" & x;
	G1: FOR i IN 1 TO 4 GENERATE 
		row(i) <= row(i-1)(6 DOWNTO 0) & '0' ;
	END GENERATE;
	z <= row(s);
END shifterArch;
-----------------------------------------