library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Mux_4C is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Dout : out  STD_LOGIC);
end Mux_4C;

architecture Arch of Mux_4C is
signal O: std_logic;
begin
Dout <= A when S="00" else
        B when S="01" else
        C when S="10" else
        D;
Dout <= O;		  
end Arch;

