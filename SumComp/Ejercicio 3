
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;



entity SumC is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Sum : out  STD_LOGIC_VECTOR (3 downto O);
	   Cin : in Std_logic_VECtor (3 downto 0);
           Cout : out  STD_LOGIC_VECTOR (3 downto 0));
end SumC;

architecture Arch of SumC is

signal X,Y,Z : std_logic_vector (3 downto 0) := "0000"; 

begin

 X <= A xor B;
 Sum <= X xor Cin;
 Y <= X and Cin;
 Z <= A and B;
 Cout <= Y or Z;
end Arch;

