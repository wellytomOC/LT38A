library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity enabler is
    port(
        A,B: in unsigned(7 downto 0);
        En: in bit;
        Ae,Be: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of enabler is

begin

    Ae <= A when En = '1' else x"00";
    Be <= B when En = '1' else x"00";

end architecture;