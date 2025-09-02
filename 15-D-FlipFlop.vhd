-----------------------------------------
-- Design: D-Flip Flop [Guarded Block]
-- Date:   02/09/2025 
-- Author: Eng-Mohamed Maged
-----------------------------------------
         -- Library Decleration --
-----------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------
         -- Entity Decleration --
-----------------------------------------
ENTITY dff IS
	PORT( 
		d, clk : IN STD_LOGIC;
		q : OUT STD_LOGIC
	);
END dff;
-----------------------------------------
     -- Architecture Decleration --
-----------------------------------------
ARCHITECTURE dffArch of dff IS
BEGIN
	b1: BLOCK (clk'EVENT AND clk='1')
	BEGIN
		q <= GUARDED d;  -- [GUARDED]هيستخدم لو المفتاح متحقق بسبب كلمة
	END BLOCK b1;
END dffArch;
-----------------------------------------