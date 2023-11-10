library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity outputMultiplexer is
    port(
        A,B,C,D: in std_logic_vector(6 downto 0);
        sel: in bit_vector(1 downto 0);
        S: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of outputMultiplexer is

begin

    with sel select
    S <= A when "00",
         B when "01",
         C when "10",
         D when "11";

end architecture;
