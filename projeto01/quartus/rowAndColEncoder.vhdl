library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity rowAndColEncoder is
    port(
        dataIn: in std_logic_vector(3 downto 0);
        dataOut: out std_logic_vector(3 downto 0)
    );
end entity;

architecture behavior of rowAndColEncoder is

begin

    with dataIn select
    dataOut <= "0001" when "0000", -- linha 1, col 1 = 1
               "0010" when "0001", -- linha 1, col 2 = 2
               "0011" when "0010", -- linha 1, col 3 = 3
               "0100" when "0100", -- linha 2, col 1 = 4
               "0101" when "0101", -- linha 2, col 2 = 5
               "0110" when "0110", -- linha 2, col 3 = 6
               "0111" when "1000", -- linha 3, col 1 = 7
               "1000" when "1001", -- linha 3, col 2 = 8
               "1001" when "1010", -- linha 3, col 3 = 9
               "0000" when "1101", -- linha 4, col 2 = 0
               "0000" when others;

end architecture;
