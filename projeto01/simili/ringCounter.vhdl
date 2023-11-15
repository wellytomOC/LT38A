library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ringCounter is
    port(
        clk: in std_logic;
        Freeze: in std_logic;
        toRow: out std_logic_vector(3 downto 0)
    );
end entity;

architecture behavior of ringCounter is

begin

    process(clk)

    variable ring :std_logic_vector(3 downto 0);

    begin

        if(clk'event and clk='1') then
            if freeze = '0' then
                case ring is
                    when "1110" => ring := "1101";
                    when "1101" => ring := "1011";
                    when "1011" => ring := "0111";
                    when "0111" => ring := "1110";
                    when others => ring := "1110";
                end case;
            end if;
        end if;

    toRow <= ring;
    
    end process;

end architecture;
