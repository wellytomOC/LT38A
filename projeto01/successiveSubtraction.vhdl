library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity successiveSubtraction is
    port(
        A,B: in std_logic_vector(6 downto 0);
        S,R: out std_logic_vector(6 downto 0);
    );
end entity;

architecture behavior of successiveSubtraction is

    component sevenBitsComp is
        port(
            A,B: in std_logic_vector(6 downto 0);
            BiggerOrEqual: out std_logic
        );
    end component;

    component sevenBitsSub is
        port(
            A,B: in std_logic_vector(6 downto 0);
            DIFF: out std_logic_vector(6 downto 0)
        );
    end component;


begin

    for 

end architecture;