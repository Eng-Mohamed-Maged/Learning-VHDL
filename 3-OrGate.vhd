-----------------------------------------
-- Design: OR Gate Design
-- Date:   11/06/2025 
-- Author: Eng-Mohamed Maged
-----------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY orGate is
	PORT(
		a : in  bit;
		b : in  bit; 
		z : out bit
		);
END orGate;

ARCHITECTURE orGate_Arch of orGate is
BEGIN 
    z <= a OR b;
END orGate_Arch;