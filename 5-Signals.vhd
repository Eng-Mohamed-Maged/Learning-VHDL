-----------------------------------------
-- Design: Signals
-- Date:   13/06/2025 
-- Author: Eng-Mohamed Maged
-----------------------------------------

SIGNAL x : BIT;
x <= '0';

SIGNAL y : BIT_VECTOR(3 DOWNTO 0);
y <= "0111";

SIGNAL w :BIT_VECTOR(7 DOWNTO 0);
w <= "01110101"; -- EQUAL : "0111_0101"

SIGNAL a : STD_LOGIC;
a <= "101111"; -- decimal 47 [BINARY]
a <= B"101111"; -- decimal 47 [BINARY]
a <= O"57";  -- decimal 47  [OCTAL]
a <= X"2F";  -- decimal 47  [HEX]

VARIABLE b : INTEGER;
b <= 1_300; -- EQUAL 1300 b <= 1300;

-------------------------------------------
SIGNAL e : BIT;
SIGNAL d : BIT_VECTOR(7 DOWNTO 0);
SIGNAL c : STD_LOGIC;
SIGNAL v : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL H : INTEGER RANGE 0 TO 255;

-- يجوز
e <= d(5); -- حط القيمة الخامسة 
d(0) <= e;

c <= v(5);
v(0) <= c;

-- لايجوز
e <= c; -- [WORNG]: CAUSE e from BIT Type and C from STD_LOGIC Type
d <= v; -- [WORNG] 
H <= d; -- [WORNG]
H <= v; -- [WORNG]

-- 1D ARRAY --
TYPE row IS ARRAY (7 DOWNTO 0) OF STD_LOGIC;
-- 1D x 1D ARRAY --
TYPE matrix IS ARRAY (0 TO 3) OF row;

SIGNAL U : row;
SIGNAL W : STD_LOGIC_VECTOR(7 DOWNTO 0); 
-- U EQUAL W --

SIGNAL Q : matrix;

-------------------------------------------
TYPE row IS ARRAY (7 DOWNTO 0) OF STD_LOGIC;-- 1D
TYPE array1 IS ARRAY (0 TO 3) OF row; -- 1D X 1D
TYPE array2 IS ARRAY (0 TO 3) OF STD_LOGIC_VECTOR(7 DOWNTO 0); -- 1D X 1D
TYPE array3 IS ARRAY (0 TO 3,7 DOWNTO 0) OF STD_LOGIC; -- 2D array

SIGNAL x : row;     -- 1D
SIGNAL y : array1;  -- 1D X 1D
SIGNAL v : array2;  -- 1D X 1D
SIGNAL w : array3;  -- 2D

-- يجوز
x(0) <= y(0)(2);
x(1) <= v(2)(3);
x(2) <= w(2,3) ;
y(1)(1) <= x(6);
y(2)(0) <= v(2)(0);
y(0)(0) <= w(3,3);
w(1,2) <= x(7);
w(3,2) <= y(0)(3);
x <= y(0);
y(1)(7 DOWNTO 3) <= x(4 DOWNTO 0);
v(1)(7 DOWNTO 3) <= v(2)(4 DOWNTO 0);

-- لايجوز
x <= v(1);
x <= w(2);
x <= w(2,2 DOWNTO 0);
v(0) <= w(2);
y(1) <= v(3);
w(1,5 DOWNTO 1) <= v(2)(4 downto 0);