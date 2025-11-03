LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T17_FlipFlop IS
PORT(
	Clk    : IN  STD_LOGIC;
	nRst   : IN  STD_LOGIC;   --Negative Reset [The Module will reset when this signal is '0']
	Input  : IN  STD_LOGIC;	
	Output : OUT STD_LOGIC);
END T17_FlipFlop;

ARCHITECTURE T17_FlipFlop_Rtl of T17_FlipFlop IS
BEGIN  
	-- Flip-Flop With Synchronized Reset
	PROCESS(Clk) IS
	BEGIN 
		IF RISING_EDGE(Clk) THEN
			IF nRst = '0' THEN
				Output <= '0';
			ELSE 
				Output <= Input;
			END IF;
		END IF;
	END PROCESS;
	
END T17_FlipFlop_Rtl;