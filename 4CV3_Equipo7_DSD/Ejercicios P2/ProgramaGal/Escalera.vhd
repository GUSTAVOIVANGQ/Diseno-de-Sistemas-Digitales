--La funcion para este problema es C= AB + -AB, donde a es el interruptor inferior.
--B es el interruptor superior y C es el foco

LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY escalera IS 
PORT(a,b,A1,B1,C1: in std_logic;
	 X1,X2,X3,X4,c: out std_logic);
attribute pin_numbers of escalera: entity is
" a:1 b:2 A1:3 B1:4 C1:5 " & " c:14 X1:15 X2:16 X3:17 X4:18 ";
END escalera;

ARCHITECTURE APAGADOR of escalera IS
BEGIN
	c<= ((a and b) or (NOT(a) and b));
	X1<= (( (NOT(A1))AND(NOT(B1)) AND (C1) ) OR ( (NOT(A1)AND(B1))AND (NOT(C1)) ) OR ( ( A1 AND B1 ) AND (C1) ) );
	X2<= ( ( (NOT(A1)) AND (NOT(B1)) ) OR ( ((B1) AND (NOT(C1)) ) ) OR ( ((A1)AND(B1)) ) );
	X3<= ( ( ((NOT(A1)) AND (NOT(B1)))AND (NOT(C1)) ) OR ( ((NOT(A1)AND(B1)))AND (C1) ) );
	X4<= ( (  ( (NOT(A1))AND(B1) )AND(C1)  ) OR ( (A1) AND (NOT(C1)) ) OR ( (A1) AND (NOT(B1)) ) );

END APAGADOR;
