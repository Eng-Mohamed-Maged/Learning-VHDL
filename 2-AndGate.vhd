-----------------------------------------
-- Design: AND Gate Design
-- Date:   11/06/2025 
-- Author: Eng-Mohamed Maged
-----------------------------------------
         -- Library Decleration --
-----------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-----------------------------------------
         -- Entity Decleration --
-----------------------------------------
ENTITY and_Gate is
	PORT(
		a : in  bit;
		b : in  bit;
		z : out bit
	);
END and_Gate;

-----------------------------------------
     -- Architecture Decleration --
-----------------------------------------
ARCHITECTURE andGate_arch of and_Gate is
-- You can add [Decleration] here
BEGIN
	z <= a and b;
END andGate_arch;
-----------------------------------------