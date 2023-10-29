library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity div16 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of div16 is

begin

    R<= "0000" & A(3 downto 0);
    Q<= A srl 4;
    

end architecture;
