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
                when "111110" =>
                    state := "111101";
                    enabler <= '0';
                when "111101" =>
                    state := "111011";
                    enabler <= '0';
                when "111011" =>
                    state := "110111";
                    enabler <= '0';
                when "110111" =>
                    state := "101111";
                    enabler <= '0';
                when "101111" =>
                    state := "011111";
                    enabler <= '0';
                when "011111" =>
                    state := "111111";
                    enabler <= '1';
                when others =>
                    state := "111110";
                    enabler <= '0';
            end case;
        end if;
        
        sel <= state;
		  
    end process;

end architecture;