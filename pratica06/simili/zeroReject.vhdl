library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity zeroReject is
    port(
        A,B: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of zeroReject is

    component magnitudeComparator is
        port(
            A,B: in unsigned(7 downto 0);
            Q,R: out unsigned(7 downto 0)
        );
    end component;

    signal Qmc,Rmc: unsigned(7 downto 0);

begin

    mc: magnitudeComparator port map(A,B,Qmc,Rmc);

    Q <= Qmc when B /= 0 else
         x"00" when B = 0;
    
    R <= A when A < B else
         x"00" when A = B else
         Rv when A > B;

end architecture;