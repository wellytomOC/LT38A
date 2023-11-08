library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity sevenBitsComp is
    port(
        A,B: in std_logic_vector(6 downto 0);
        En: in std_logic;

        BiggerOrEqual: out std_logic
    );
end entity;

architecture behavior of sevenBitsComp is

    component halfComparator is
        port(
            A,B: in STD_LOGIC;
            bigger,smaller,equal: out std_logic
        );
    end component;

    component fullComparator is
        port(
            A,B: in STD_LOGIC;
            lsbBigger,lsbSmaller,lsbEqual: in std_logic;
            bigger,smaller,equal: out std_logic
        );
    end component;

    signal lsbBigger,lsbSmaller,lsbEqual: std_logic_vector(6 downto 0);

begin

    hfComp: halfComparator port map(A(0), B(0), lsbBigger(0),lsbSmaller(0),lsbEqual(0));

    G1: for i in 1 to 6 generate

        fullComp: fullComparator port map(A(i),B(i),lsbBigger(i-1),lsbSmaller(i-1),lsbEqual(i-1),lsbBigger(i),lsbSmaller(i),lsbEqual(i));

    end generate G1;

    with En select
    BiggerOrEqual <= not lsbSmaller(6) when '1', 
                    'Z' when others;

end architecture;
