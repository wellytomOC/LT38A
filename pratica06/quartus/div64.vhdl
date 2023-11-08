library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity div64 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of div64 is

begin

    R<= "00" & A(5 downto 0);
    Q<= A srl 6;
    

end architecture;
