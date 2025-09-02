-----------------------------------------
-- Design: Multiplexer
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
ENTITY mux is
	PORT(
		a, b, c, d, s0, s1 : IN STD_LOGIC;
		z : OUT STD_LOGIC
	);
END mux;
-----------------------------------------
     -- Architecture Decleration --
-----------------------------------------
ARCHITECTURE muxArch OF mux IS
BEGIN 
     z <= ( a AND NOT s1 AND NOT s0) OR
		  ( b AND NOT s1 AND s0)     OR
		  ( c AND s1 AND NOT s0)     OR
		  ( d AND s1 AND s0);
END muxArch;
-----------------------------------------