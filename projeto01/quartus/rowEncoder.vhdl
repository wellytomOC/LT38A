library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity rowEncoder is
    port(
        rows: in std_logic_vector(3 downto 0);

        data: out std_logic_vector(1 downto 0)
    );
end entity;

architecture behavior of rowEncoder is

begin

    with rows select
    data <= "00" when "1110", -- pode ser 1, 2 ou 3
            "01" when "1101", -- pode ser 4, 5 ou 6
            "10" when "1011", -- pode ser 7, 8 ou 9
            "11" when "0111", -- pode ser *, 0 ou #
            "11" when others; -- vai pra 0

end architecture;
