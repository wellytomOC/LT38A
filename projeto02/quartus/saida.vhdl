library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity saida is
    port(
        enable, strobe: in std_logic;
        sel: in std_logic;
        AQ1,AQ2,AQ3: in std_logic_vector(3 downto 0);

        vel_ref,vel_actual: in unsigned(9 downto 0);
        direction_actual: in std_logic;
        
        ss0,ss1,ss2: out std_logic_vector(6 downto 0);
        ss4,ss5,ss6: out std_logic_vector(6 downto 0);
        EnLed,StrobeLed,directionLed: out std_logic
    );
end entity;

architecture behavior of saida is

    component sevenSegDecoder is
        port(
            data: in std_logic_vector(3 downto 0);
		    ss: out std_logic_vector(6 downto 0)
        );
    end component;
    signal ssAQ1,ssAQ2,ssAQ3: std_logic_vector(6 downto 0);

    component sevenSeg10bitDec is
        port(
            A: in unsigned(9 downto 0);
            ssA0,ssA1,ssA2: out std_logic_vector(6 downto 0)
        );
    end component;
    signal ssR0,ssR1,ssR2: std_logic_vector(6 downto 0);

    signal ss0aux,ss1aux,ss2aux: std_logic_vector(6 downto 0);
    signal ss4aux,ss5aux,ss6aux: std_logic_vector(6 downto 0);

begin

    -- set da velocidade de referencia
    ssdAQ1: sevenSegDecoder port map(AQ1,ssAQ1);
    ssdAQ2: sevenSegDecoder port map(AQ2,ssAQ2);
    ssdAQ3: sevenSegDecoder port map(AQ3,ssAQ3);

    -- velocidade atual direta para displays 4,5 e 6
    ss10dActual: sevenSeg10bitDec port map(vel_actual,ss4aux,ss5aux,ss6aux);
    ss10dRef: sevenSeg10bitDec port map(vel_ref,ssR0,ssR1,ssR2);

    -- selecao para mostrar o set ou o setado
    with sel select
    ss0aux <= ssR0 when '0', ssAQ3 when others;
    with sel select
    ss1aux <= ssR1 when '0', ssAQ2 when others;
    with sel select
    ss2aux <= ssR2 when '0', ssAQ1 when others;

    -- strobe
    ss0 <= ss0aux when strobe = '0' else "ZZZZZZZ";
    ss1 <= ss1aux when strobe = '0' else "ZZZZZZZ";
    ss2 <= ss2aux when strobe = '0' else "ZZZZZZZ";
    ss4 <= ss4aux when strobe = '0' else "ZZZZZZZ";
    ss5 <= ss5aux when strobe = '0' else "ZZZZZZZ";
    ss6 <= ss6aux when strobe = '0' else "ZZZZZZZ";

    -- leds
    EnLed <= enable;
    StrobeLed <= strobe;
    directionLed <= direction_actual;



end architecture;