LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T16_GenericMux IS
GENERIC(DataWidth : INTEGER); 
PORT(
	-- Inputs
	Sig1 : IN UNSIGNED(DataWidth-1 DOWNTO 0);
	Sig2 : IN UNSIGNED(DataWidth-1 DOWNTO 0);
	Sig3 : IN UNSIGNED(DataWidth-1 DOWNTO 0);
	Sig4 : IN UNSIGNED(DataWidth-1 DOWNTO 0);
	
	Sel  : IN UNSIGNED(1 DOWNTO 0);
	
	-- Outputs
	Output : OUT UNSIGNED(DataWidth-1 DOWNTO 0)
	);
END T16_GenericMux;


ARCHITECTURE T16_GenericMux_rtl of T16_GenericMux IS
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
END T16_GenericMux_rtl;