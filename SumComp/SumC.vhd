
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;



entity SumC is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
			  Cin : in Std_logic;
           Cout : out  STD_LOGIC);
end SumC;

architecture Arch of SumC is

signal X,Y,Z : std_logic := '0'; 

begin

 X <= A xor B;
 Sum <= X xor Cin;
 Y <= X and Cin;
 Z <= A and B;
 Cout <= Y or Z;
end Arch;

