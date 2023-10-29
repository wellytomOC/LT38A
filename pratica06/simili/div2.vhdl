library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity div2 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of div2 is

begin

    R<= "0000000" & A(0);
    Q<= A srl 1;
    

end architecture;
