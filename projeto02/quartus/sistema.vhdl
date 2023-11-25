library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.MATH_REAL.ALL;

entity sistema is 
    Port(
        clock10hz,clock100khz: in std_logic;

        vel_ref,vel_actual: in unsigned(9 downto 0);
        direction_ref: in std_logic;

        in1,in2: out std_logic
    );
end entity;

architecture behavior of sistema is 

    signal E0,U0: integer := 0;
    signal KPnum: integer := 1;
    signal KPden: integer := 10;
    signal count: integer := 0;
	 signal pwm: std_logic;

begin

    process(clock10hz,clock100khz)

    begin
			
        -- control law
        if(clock10hz'event and clock10hz='1') then
            E0 <= to_integer(vel_ref) - to_integer(vel_actual);
            U0 <= U0 + E0*KPnum/KPden;				
        end if;
		
		-- saturations
        if(U0 >= 99) then
            U0 <= 99;
        end if;
        if(U0 <=30) then
            U0 <= 30;
        end if;

        -- pwm generator
        if(clock100khz'event and clock100khz='1') then

            count <= count+1;
				
            if(count >= U0) then
                pwm <= '0';
            end if;
            if(count >= 100) then
                count <= 0;
                pwm <= '1';
            end if;
        end if;

        -- direction control
        if(direction_ref = '1') then
            in1 <= pwm;
            in2 <= '0';
        else
            in2 <= pwm;
            in1 <= '0';
        end if;

    end process;

end architecture;