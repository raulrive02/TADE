
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;




entity SumC is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC_VECTOR (3 downto 0));
end SumC;

architecture Arch of SumC is

begin
Sum <= A xor B;
Cout <= A and B;

end Arch;

