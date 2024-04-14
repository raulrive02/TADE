library ieee;
use ieee.std_logic_1164.all;

entity multiplexers_1 is
    port (A, B, C, D : in std_logic;
          S : in std_logic_vector (1 downto 0);
          O : out std_logic);
end multiplexers_1;

architecture archi of multiplexers_1 is
begin
    process (A, B, C, D, S)
    begin
      case s is 
         when "00" => O <= A;
         when "01" => O <= B;
         when "10" => O <= C;
         when "11" => O <= D;
         when others => O <= A;
      end case;
    end process;
end archi;
				