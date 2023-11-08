library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity magnitudeComparator is
    port(
        A,B: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of magnitudeComparator is

    component divisor is
        port(
            A,B: in unsigned(7 downto 0);
            Q,R: out unsigned(7 downto 0)
        );
    end component;

    signal Qv,Rv: unsigned(7 downto 0);

begin

    dv: divisor port map(A,B,Qv,Rv);

    Q <= x"00" when A < B else
         x"01" when A = B else
         Qv;
    
    R <= A when A < B else
         x"00" when A = B else
         Rv;

end architecture;