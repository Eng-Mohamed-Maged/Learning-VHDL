-----------------------------------------
-- Design: Signals
-- Date:   16/08/2025 
-- Author: Eng-Mohamed Maged
-----------------------------------------
LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

SIGNAL a : SIGNED (7 DOWNTO 0);
SIGNAL b : SIGNED (7 DOWNTO 0);
SIGNAL x : SIGNED (7 DOWNTO 0);

-- يجوز
x <= a + b;

-- لايجوز العمليات المنطقية مثل AND-OR-NAND-ETC...
x <= a AND b;
x <= a OR b;

----------------------------------------------------------
LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

SIGNAL a : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR (7 DOWNTO 0);

-- لا يجوز   
-- يجوز استخدامها عن طريق LIBARAY: use ieee.std_logic_unsigned.all; 
x <= a + b;

-- يجوز
x <= a AND b;
x <= a OR b;
----------------------------------------------------------
LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all; 

SIGNAL a : UNSIGNED (7 DOWNTO 0);
SIGNAL b : UNSIGNED (7 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR (7 DOWNTO 0);


-- لا يجوز 
-- Different TYPE
x <= a + b;

-- يجوز
x <= CONV_STD_LOGIC_VECTOR(a+b , 8);