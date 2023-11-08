library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity incrementer is
    port(
        A: in std_logic_vector(6 downto 0);

        S: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of incrementer is

    component halfAdder is
        port(
            A,B: in std_logic;
            S,C: out std_logic;
        );
    end component;

    signal C: std_logic_vector(6 downto 0);

begin

    ha0: halfAdder port map(A(0),'1',S(0),C(0));

    for i in 1 to 6 generate

        ha: halfAdder port map(A(i),C(i-1),S(i),C(i));

    end generate;

    

end architecture;