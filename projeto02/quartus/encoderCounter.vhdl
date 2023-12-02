library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity encoderCounter is 
    Port(
        resetCount: in std_logic;

        encoderC1,encoderC2: in std_logic;

        count: out integer range 0 to 5000;
		direction_actual: out std_logic
    );
end entity;

architecture behavior of encoderCounter is 

    signal pulseCount: integer := 0;

begin

    process(encoderC1)
    begin
        if(resetCount = '1') then
            pulseCount <= 0;
        elsif(encoderC1'event and encoderC1='1') then

            pulseCount <= pulseCount + 1;

            if(encoderC2 = '1') then
                direction_actual <= '1';
            else
                direction_actual <= '0';
            end if;
        end if;

        count <= pulseCount;
    end process;

end architecture;