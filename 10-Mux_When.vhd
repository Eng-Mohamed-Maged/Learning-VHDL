-----------------------------------------
-- Design: Mux_When
-- Date:   31/08/2025 
-- Author: Eng-Mohamed Maged
-----------------------------------------
         -- Library Decleration --
-----------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------
         -- Entity Decleration --
-----------------------------------------
ENTITY mux2 is
	PORT(
		a, b, c, d: IN STD_LOGIC;
		s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		z : OUT STD_LOGIC
	);
END mux2;
-----------------------------------------
     -- Architecture Decleration --
-----------------------------------------
ARCHITECTURE mux2Arch OF mux2 IS
BEGIN 
     z <= a WHEN (s = "00") ELSE
		  b WHEN (s = "01") ELSE 
          c WHEN (s = "10") ELSE
	      d;
END mux2Arch;
-----------------------------------------