-----------------------------------------
-- Design: Mux_When_With_Select
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
ENTITY mux3 is
	PORT(
		a, b, c, d: IN STD_LOGIC;
		s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		z : OUT STD_LOGIC
	);
END mux3;
-----------------------------------------
     -- Architecture Decleration --
-----------------------------------------
ARCHITECTURE mux3Arch OF mux3 IS
BEGIN 
     WITH s SELECT
	 z <= a WHEN "00",
		  b WHEN "01",
          c WHEN "10",
	      d WHEN OTHERS;
END mux3Arch;
-----------------------------------------