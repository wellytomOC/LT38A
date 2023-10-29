library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity divisorArith is
    port(
        A,B: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of divisorArith is

begin

    Q<= A / B;
    R<= A rem B;

end architecture;