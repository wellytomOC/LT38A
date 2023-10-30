library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity testSevenBitsSub is
 
end entity;

architecture behavior of testSevenBitsSub is

    component sevenBitsSub is
        port(
            A,B: in std_logic_vector(6 downto 0);
            DIFF: out std_logic_vector(6 downto 0)
        );
    end component;

    signal A, B: std_logic_vector(6 downto 0);
    signal DIFF: std_logic_vector(6 downto 0);

begin

    sub: sevenBitsSub port map(A,B,DIFF);

    process
    begin

        A <= "0101010"; B <= "0101010"; wait for 50 ns;
        A <= "1000000"; B <= "0111111"; wait for 50 ns;
        A <= "1111111"; B <= "0000111"; wait for 50 ns;

    end process;

end architecture;

