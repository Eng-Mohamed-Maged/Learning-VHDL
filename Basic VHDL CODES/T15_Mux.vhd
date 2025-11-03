LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T15_Mux IS
PORT(
	-- Inputs
	Sig1 : IN UNSIGNED(7 DOWNTO 0);
	Sig2 : IN UNSIGNED(7 DOWNTO 0);
	Sig3 : IN UNSIGNED(7 DOWNTO 0);
	Sig4 : IN UNSIGNED(7 DOWNTO 0);
	
	Sel  : IN UNSIGNED(1 DOWNTO 0);
	
	-- Outputs
	Output : OUT UNSIGNED(7 DOWNTO 0)
	);
END T15_Mux;


ARCHITECTURE T15_Mux_rtl of T15_Mux IS
BEGIN 
	
	-- Equivalent MUX using a Case Statment
	PROCESS(Sel,Sig1,Sig2,Sig3,Sig4) IS
	BEGIN
		CASE Sel IS
			WHEN "00" =>
				Output <= Sig1;
			WHEN "01" =>
				Output <= Sig2;
			WHEN "10" =>
				Output <= Sig3;
			WHEN "11" =>
				Output <= Sig4;
			WHEN OTHERS =>
				Output <= (OTHERS =>'X');
		END CASE;
	END PROCESS;
END T15_Mux_rtl;