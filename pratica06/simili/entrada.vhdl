library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity entrada is
    port(
        A,B: in unsigned(7 downto 0);
        En: in bit;
        Ae,Be: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of entrada is

    component enabler is
        port(
            A,B: in unsigned(7 downto 0);
            En: in bit;
            Ae,Be: out unsigned(7 downto 0)
        );
    end component;

begin

    enab: enabler port map(A,B,En,Ae,Be);

end architecture;