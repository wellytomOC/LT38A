library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity registerSelector is
    port(
        DAV: in std_logic;
        sel: out std_logic_vector(5 downto 0);
        enabler: out std_logic
    );
end entity;

architecture behavior of registerSelector is

begin

    process(DAV)
    variable state: std_logic_vector(5 downto 0) := "111110";
    begin

        if(DAV'event and DAV='1') then
            case state is
                when "111110" => state := "111101";
                when "111101" => state := "111011";
                when "111011" => state := "110111";
                when "110111" => state := "101111";
                when "101111" => state := "011111";
                when "011111" => state := "111111";
                when others => state := "111110";
            end case;
        end if;

        if(state = "111111") then
            enabler <= '1';
        else
            enabler <= '0';
        end if;

        sel <= state;
		  
    end process;

end architecture;