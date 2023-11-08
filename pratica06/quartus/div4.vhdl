library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity div4 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of div4 is

begin

    R<= "000000" & A(1 downto 0);
    Q<= A srl 2;
    

end architecture;
