library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity testSevenBitsComp is
 
end entity;

architecture behavior of testSevenBitsComp is

    component sevenBitsComp is
    port(
        A,B: in std_logic_vector(6 downto 0);
        BiggerOrEqual: out std_logic
    );
end component;

    signal A,B: std_logic_vector(6 downto 0);
    signal BiggerOrEqual: std_logic;

begin

    comp: sevenBitsComp port map(A,B,BiggerOrEqual);

    process
    begin

        A <= "0101010"; B <= "0101010"; wait for 50 ns;
        A <= "1000000"; B <= "0111111"; wait for 50 ns;
        A <= "0111111"; B <= "1000111"; wait for 50 ns;

    end process;

end architecture;


