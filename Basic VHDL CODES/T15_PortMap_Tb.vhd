LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY T15_PortMap_Tb IS
END T15_PortMap_Tb;


ARCHITECTURE T15_PortMap_Arch of T15_PortMap_Tb IS
	SIGNAL Sig1 : UNSIGNED(7 DOWNTO 0) := x"AA";
	SIGNAL Sig2 : UNSIGNED(7 DOWNTO 0) := x"BB";
	SIGNAL Sig3 : UNSIGNED(7 DOWNTO 0) := x"CC";
	SIGNAL Sig4 : UNSIGNED(7 DOWNTO 0) := x"DD";
	
	SIGNAL Sel  : UNSIGNED(1 DOWNTO 0) := (OTHERS => '0');
	
	SIGNAL Output : UNSIGNED(7 DOWNTO 0);
BEGIN 
	-- An Instance of T15_Mux With architecture rtl
	i_Mux1 : ENTITY work.T15_Mux(T15_Mux_rtl) port map(
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
	
END T15_PortMap_Arch;