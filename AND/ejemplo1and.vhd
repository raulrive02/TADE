library ieee;
use ieee.std_logic_1164.all;

entity ejemplo1and is
    Port ( A : in  std_logic;
           B : in  std_logic;
           C : out  std_logic);
end ejemplo1and;

architecture arche of ejemplo1and is

begin
C <= A and B;

end architecture;

