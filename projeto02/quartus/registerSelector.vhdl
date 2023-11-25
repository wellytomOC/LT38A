library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity registerSelector is
    port(
        DAV, reset: in std_logic;
        data: in std_logic_vector(3 downto 0);
        sel: out std_logic_vector(2 downto 0);
        enabler,clear: out std_logic
    );
end entity;

architecture behavior of registerSelector is

begin

    process(DAV)
        variable state: std_logic_vector(2 downto 0) := "110";
    begin

        if reset = '1' then
            state := "110";

        elsif(DAV'event and DAV='1') then
            case state is
                when "110" =>
                    state := "101";
                    enabler <= '0';
                    clear <= '0';
                when "101" =>
                    state := "011";      
                    enabler <= '0';
                    clear <= '0';
                when "011" =>
                    state := "111";
                    enabler <= '0';
                    clear <= '0';
                when others =>
                    state := "111";
                    enabler <= '0';
                    clear <= '0';
            end case;
            if(data = "1111") then
                state := "110";
                enabler <= '1';
            end if;
            if(data = "1110") then
                state := "110";
                enabler <= '0';
                clear <= '1';
            end if;
        end if;
        
        sel <= state;
		  
    end process;

end architecture;