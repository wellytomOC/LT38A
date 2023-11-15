library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity testSistema is
end entity;

architecture behavior of testSistema is

    component sistema is
        port(
                A,B: in std_logic_vector(6 downto 0);
                S,R: out std_logic_vector(6 downto 0)
        );
    end component;

    signal A,B: std_logic_vector(6 downto 0);
    signal S,R: std_logic_vector(6 downto 0);

begin

    sis: sistema port map(A,B,S,R);

    process
    begin

        A <= "0011111"; B <= "0000111"; wait for 100 us;

    end process;


end architecture;


