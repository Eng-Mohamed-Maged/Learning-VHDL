-----------------------------------------
-- Design: Example-1
-- Date:   11/06/2025 
-- Author: Eng-Mohamed Maged
-----------------------------------------
         -- Library Decleration --
-----------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------
         -- Entity Decleration --
-----------------------------------------
ENTITY exampleEntity is
	PORT(
		a,b,c : IN  BIT;
		z 	  : OUT BIT
		);
END exampleEntity;
-----------------------------------------
     -- Architecture Decleration --
-----------------------------------------
ARCHITECTURE exampleArch of exampleEntity is
BEGIN 
	z <= a NAND (a AND b) OR (NOT c);
END exampleArch;
-----------------------------------------