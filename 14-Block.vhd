-----------------------------------------
-- Design: BLOCK 
-- Date:   02/09/2025 
-- Author: Eng-Mohamed Maged
-----------------------------------------
 kutla1: BLOCK
	SIGNAL a : STD_LOGIC;
 BEGIN
	a <= '0' WHEN enable='1' ELSE 'Z';
 END BLOCK kutla1;
 
 ARCHITECTURE example ....
	block1: BLOCK
	BEGIN
		block2: BLOCK
		BEGIN
			....
		END BLOCK block2;	
	END BLOCK block1;
	
-----------------------------------------
