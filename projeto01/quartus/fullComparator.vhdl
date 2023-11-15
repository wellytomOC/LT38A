library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity fullComparator is
    port(
        A,B: in STD_LOGIC;
        lsbBigger,lsbSmaller,lsbEqual: in std_logic;
        bigger,smaller,equal: out std_logic
    );
end entity;

architecture behavior of fullComparator is

begin

bigger <= (A and not B) or ((A xnor B) and lsbBigger);
smaller <= (not A and B) or ((A xnor B) and lsbSmaller);
equal <= (A xnor B) and lsbEqual;

end architecture;