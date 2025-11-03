LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T14_CaseWhen_Tb IS
END T14_CaseWhen_Tb;


ARCHITECTURE T14_CaseWhen_Arch of T14_CaseWhen_Tb IS
	SIGNAL Sig1 : UNSIGNED(7 DOWNTO 0) := x"AA";
	SIGNAL Sig2 : UNSIGNED(7 DOWNTO 0) := x"BB";
	SIGNAL Sig3 : UNSIGNED(7 DOWNTO 0) := x"CC";
	SIGNAL Sig4 : UNSIGNED(7 DOWNTO 0) := x"DD";
	
	SIGNAL Sel  : UNSIGNED(1 DOWNTO 0) := (OTHERS => '0');
	
	SIGNAL Output1 : UNSIGNED(7 DOWNTO 0);
	SIGNAL Output2 : UNSIGNED(7 DOWNTO 0);
BEGIN 

	PROCESS IS 
	BEGIN
		WAIT FOR 10 NS;	
		Sel <= Sel + 1;
		WAIT FOR 10 NS;
		Sel <= Sel + 1;
		WAIT FOR 10 NS;	
		Sel <= Sel + 1;
		WAIT FOR 10 NS;
		Sel <= Sel + 1;
		WAIT FOR 10 NS;
		Sel <= "UU";		
		WAIT;
	END PROCESS;
	
	-- MUX using IF-THEN-else
	PROCESS(Sel,Sig1,Sig2,Sig3,Sig4) IS
	BEGIN
		IF Sel = "00" THEN
			Output1 <= Sig1;
		ELSIF Sel = "01" THEN
			Output1 <= Sig2;
		ELSIF Sel = "10" THEN
			Output1 <= Sig3;
		ELSIF Sel = "11" THEN
			Output1 <= Sig4;
		ELSE  -- 'U' , 'X' , '-' , ETC.
			Output1 <= (OTHERS => 'X');
		END IF;
	END PROCESS;
	
	
	-- Equivalent MUX using a Case Statment
	PROCESS(Sel,Sig1,Sig2,Sig3,Sig4) IS
	BEGIN
		CASE Sel IS
			WHEN "00" =>
				Output2 <= Sig1;
			WHEN "01" =>
				Output2 <= Sig2;
			WHEN "10" =>
				Output2 <= Sig3;
			WHEN "11" =>
				Output2 <= Sig4;
			WHEN OTHERS =>
				Output2 <= (OTHERS =>'X');
		END CASE;
	END PROCESS;
END T14_CaseWhen_Arch;