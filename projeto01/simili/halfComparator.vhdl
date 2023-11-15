library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity halfComparator is
    port(
        A,B: in STD_LOGIC;
        bigger,smaller,equal: out std_logic
    );
end entity;

architecture behavior of halfComparator is

begin

bigger <= A and not B;
smaller <= not A and B;
equal <= A xnor B;

end architecture;