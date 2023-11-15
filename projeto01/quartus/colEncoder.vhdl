library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity colEncoder is
    port(
        cols: in std_logic_vector(2 downto 0);

        data: out std_logic_vector(1 downto 0)
    );
end entity;

architecture behavior of colEncoder is

begin

    with cols select
    data <= "00" when "110", -- pode ser 1, 4, 7 ou *
            "01" when "101", -- pode ser 2, 5, 8 ou 0
            "10" when "011", -- pode ser 3, 6, 9 ou #
            "01" when others; -- vai pra 0

end architecture;
