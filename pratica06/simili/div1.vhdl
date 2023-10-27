library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity div1 is
    port(
        A,B: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of div1 is

begin

    R<= "0000000" & A(1 downto 0);
    Q<= A slr 1;
    

end architecture;
