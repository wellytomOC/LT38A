library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity rpmCalculator is 
    Port(
        clock: in std_logic; -- clock PRECISA ser de 20Hz

        pulseCount: in integer range 0 to 5000;

        rpm: out unsigned(9 downto 0);
        resetCount: buffer std_logic
    );
end entity;

architecture behavior of rpmCalculator is 

    signal calcRPM: integer;

begin
		 
    process(clock)
    begin
        
        if(clock'event and clock='1') then
            if(resetCount = '0') then
                calcRPM <= (pulseCount*600)/(400);
  
                rpm <= to_unsigned(calcRPM,10);
            end if;
            resetCount <= not resetCount;
        end if;
        
    end process;

end architecture;