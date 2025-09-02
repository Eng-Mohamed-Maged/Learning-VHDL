-----------------------------------------
-- Design: Encoder_Simple_When
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
ENTITY encoder_when IS
	PORT( 
		x : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		z : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END encoder_when;
-----------------------------------------
     -- Architecture Decleration --
-----------------------------------------
ARCHITECTURE encoderArch of encoder_when IS
BEGIN
	z <= "000" WHEN x=B"0000_0001" ELSE
		 "001" WHEN x=B"0000_0010" ELSE 
		 "010" WHEN x=B"0000_0100" ELSE 
		 "011" WHEN x=B"0000_1000" ELSE 
		 "100" WHEN x=B"0001_0000" ELSE 
		 "101" WHEN x=B"0010_0000" ELSE
		 "110" WHEN x=B"0100_0000" ELSE 
		 "111" WHEN x=B"1000_0000";
END encoderArch;
-----------------------------------------