library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity div8 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of div8 is

begin

    R<= "00000" & A(2 downto 0);
    Q<= A srl 3;
    

end architecture;
