-----------------------------------------
-- Design: Not Gate Design
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
ENTITY notGate is
	PORT(
		a : in  bit;
		z : out bit
		);
END notGate;
-----------------------------------------
     -- Architecture Decleration --
-----------------------------------------
ARCHITECTURE notGate_Arch of notGate is
BEGIN 
	z <= NOT a;
END notGate_Arch;
-----------------------------------------