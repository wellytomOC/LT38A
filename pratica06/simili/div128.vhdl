library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity div128 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of div128 is

begin

    R<= "0" & A(6 downto 0);
    Q<= A srl 7;
    

end architecture;
