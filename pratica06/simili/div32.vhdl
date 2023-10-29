library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity div32 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of div32 is

begin

    R<= "000" & A(4 downto 0);
    Q<= A srl 5;
    

end architecture;
