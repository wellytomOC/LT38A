library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity sistema is
    port(
        A,B: in unsigned(7 downto 0);
        Q,R: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavior of sistema is

    component zeroReject is
        port(
            A,B: in unsigned(7 downto 0);
            Q,R: out std_logic_vector(7 downto 0)
        );
    end component;

begin

    zr: zeroReject port map(A,B,Q,R);

end architecture;