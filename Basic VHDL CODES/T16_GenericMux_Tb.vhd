LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T16_GenericMux_Tb IS
END T16_GenericMux_Tb;


ARCHITECTURE T16_GenericMux_Arch of T16_GenericMux_Tb IS

	CONSTANT DataWidth : INTEGER := 8;
	
	SIGNAL Sig1 : UNSIGNED(DataWidth-1 DOWNTO 0) := x"AA";
	SIGNAL Sig2 : UNSIGNED(DataWidth-1 DOWNTO 0) := x"BB";
	SIGNAL Sig3 : UNSIGNED(DataWidth-1 DOWNTO 0) := x"CC";
	SIGNAL Sig4 : UNSIGNED(DataWidth-1 DOWNTO 0) := x"DD";
	
	SIGNAL Sel  : UNSIGNED(1 DOWNTO 0) := (OTHERS => '0');
	
	SIGNAL Output : UNSIGNED(DataWidth-1 DOWNTO 0);
BEGIN 
	-- An Instance of T16_GenericMux With architecture rtl
	i_Mux1 : ENTITY work.T16_GenericMux(T16_GenericMux_rtl) 
	GENERIC MAP(DataWidth => DataWidth)
	port map(
		Sel    => Sel,
		Sig1   => Sig1,
		Sig2   => Sig2,
		Sig3   => Sig3,
		Sig4   => Sig4,
		Output => Output);
	-- Testbench Process
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
	
END T16_GenericMux_Arch;