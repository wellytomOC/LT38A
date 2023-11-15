library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity successiveSubtraction is
    port(
        A,B,Sin: in std_logic_vector(6 downto 0);
        S,R: out std_logic_vector(6 downto 0)
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

    component incrementer is
        port(
            A: in std_logic_vector(6 downto 0);

            S: out std_logic_vector(6 downto 0)
        );
    end component;

    signal BiggerOrEqual: std_logic;
    signal DIFF: std_logic_vector(6 downto 0);
    signal Sinc: std_logic_vector(6 downto 0);


begin

    sbc: sevenBitsComp port map(A,B,BiggerOrEqual);
    sbs: sevenBitsSub port map(A,B,DIFF);
    inc: incrementer port map(Sin,Sinc);

    with BiggerOrEqual select
    S <= Sin when '0', Sinc when others;

    with BiggerOrEqual select
    R <= A when '0', DIFF when others;



end architecture;
