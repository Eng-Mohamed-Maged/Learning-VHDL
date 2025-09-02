-----------------------------------------
-- Design: Signals
-- Date:   20/08/2025 
-- Author: Eng-Mohamed Maged
-----------------------------------------
SIGNAL   x : STD_LOGIC; 
VARIABLE y : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL   w : STD_LOGIC_VECTOR(0 TO 7);

x <= '1';
y := "0010";  -- Should Use [:=] for Variables not [<=]
w <= "10111110";
w <= (1 => '0', 7 => '0', OTHERS => '1');  -- equal to w <= "10111110";

SIGNAL   w : STD_LOGIC_VECTOR(0 TO 7); 
w <= (0 => '1', OTHERS => '0');   -- means w <= "01111111";

SIGNAL   w : STD_LOGIC_VECTOR(7 DOWNTO 0);
w <= (0 => '1', OTHERS => '0');   -- means w <= "00000001";

-----------------------------------------
SIGNAL x : STD_LOGIC_VECTOR(7 DOWNTO 0);
-- 7 6 5 4 3 2 1 0 --
x'LOW;            -- Equals: 0
x'HIGH;           -- Equals: 7
x'LEFT;           -- Equals: 7
x'RIGHT;          -- Equals: 0
x'LENGTH;         -- Equals: 8 طول المتجه
x'RANGE;  		  -- Equals: (7 DOWNTO 0)
x'REVERSE_RANGE;  -- Equals: (0 TO 7)

x'EVENT;         
x'STABLE;
-----------------------------------------
ENTITY example IS 
	GENERIC (n : INTEGER := 8)
	PORT(...)
	...