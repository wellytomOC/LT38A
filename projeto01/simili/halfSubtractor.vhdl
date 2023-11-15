library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity halfSubtractor is 
    port(
        A, B : in std_logic; 
        DIFF, Borrow : out std_logic
        ); 
end entity;

architecture behavior of halfSubtractor is 

begin 

    DIFF <= A xor B; 
    Borrow <= (not A) and B; 

end architecture;