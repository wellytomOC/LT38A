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
            En: in std_logic;

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
    signal Ss: 


begin

    for i in 0 to 128 generate

        if i = 0 generate

            signal BiggerOrEqual: std_logic;
            signal DIFF: std_logic_vector(6 downto 0);
            signal Ss: std_logic_vector(6 downto 0);

            sbc: sevenBitsComp port map(A,B,'1',BiggerOrEqual(0));;
            sbs: sevenBitsSub port map(A,B,DIFF);
            inc: incrementer port map('0',Ss);

            S <= "0000000" when BiggerOrEqual(0) = '0' else "ZZZZZZZ";
            R <= A when BiggerOrEqual(0) = '0' else "ZZZZZZZ";

        end generate; 

        if i /= 0 and i /= 128 generate

            signal BiggerOrEqual: std_logic;
            signal DIFF: std_logic_vector(6 downto 0);
            signal Ss: std_logic_vector(6 downto 0);

            sbc: sevenBitsComp port map(A,B,'1',BiggerOrEqual(0));;
            sbs: sevenBitsSub port map(A,B,DIFF);
            inc: incrementer port map('0',Ss);

            S <= "0000000" when BiggerOrEqual(0) = '0' else "ZZZZZZZ";
            R <= A when BiggerOrEqual(0) = '0' else "ZZZZZZZ";

        end generate;

        if i = 128 generate

        S <= 

        end generate;


    end generate;

end architecture;