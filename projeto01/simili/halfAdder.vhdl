library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity halfAdder is
    port(
        A,B: in std_logic;
        S,C: out std_logic
    );
end entity;


architecture behavior of halfAdder is

begin

    S <= A xor B;
    C <= A and B;

end architecture;