library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity zeroReject is
    port(
        A,B: in unsigned(7 downto 0);
        Q,R: out std_logic_vector(7 downto 0)
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

    Q <= std_logic_vector(Qmc) when B /= 0 else
         "ZZZZZZZZ" when B = 0;
    
    R <= std_logic_vector(Rmc) when B /= 0 else
         "ZZZZZZZZ" when B = 0;

end architecture;
