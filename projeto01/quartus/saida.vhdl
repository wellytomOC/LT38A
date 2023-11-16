library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity saida is
    port(
        enable, strobe: in std_logic;
        sel: in std_logic_vector(1 downto 0);
        AQ1,AQ2,AQ3,BQ1,BQ2,BQ3: in std_logic_vector(3 downto 0);
        S,R: in std_logic_vector(6 downto 0);

        ss0,ss1,ss2: out std_logic_vector(6 downto 0);
        EnLed,StrobeLed: out std_logic
    );
end entity;

architecture behavior of saida is

    component sevenSegDecoder is
        port(
            data: in std_logic_vector(3 downto 0);
		    ss: out std_logic_vector(6 downto 0)
        );
    end component;
    signal ssAQ1,ssAQ2,ssAQ3,ssBQ1,ssBQ2,ssBQ3: std_logic_vector(6 downto 0);

    component sevenSeg8bitDec is
        port(
            A: in std_logic_vector(7 downto 0);
            ssA0,ssA1,ssA2: out std_logic_vector(6 downto 0)
        );
    end component;
    signal newS,newR: std_logic_vector(7 downto 0);
    signal ssS0,ssS1,ssS2: std_logic_vector(6 downto 0);
    signal ssR0,ssR1,ssR2: std_logic_vector(6 downto 0);

    component outputMultiplexer is
        port(
            A,B,C,D: in std_logic_vector(6 downto 0);
            sel: in std_logic_vector(1 downto 0);
            S: out std_logic_vector(6 downto 0)
        );
    end component;
    signal ss0aux,ss1aux,ss2aux: std_logic_vector(6 downto 0);

begin

    ssdAQ1: sevenSegDecoder port map(AQ1,ssAQ1);
    ssdAQ2: sevenSegDecoder port map(AQ2,ssAQ2);
    ssdAQ3: sevenSegDecoder port map(AQ3,ssAQ3);

    ssdBQ1: sevenSegDecoder port map(BQ1,ssBQ1);
    ssdBQ2: sevenSegDecoder port map(BQ2,ssBQ2);
    ssdBQ3: sevenSegDecoder port map(BQ3,ssBQ3);

    newS <= '0' & S;
    newR <= '0' & R;

    ss8dS: sevenSeg8bitDec port map(newS,ssS0,ssS1,ssS2);
    ss8dR: sevenSeg8bitDec port map(newR,ssR0,ssR1,ssR2);

    om0: outputMultiplexer port map(ssAQ3,ssBQ3,ssS0,ssR0,sel,ss0aux);
    om1: outputMultiplexer port map(ssAQ2,ssBQ2,ssS1,ssR1,sel,ss1aux);
    om2: outputMultiplexer port map(ssAQ1,ssBQ1,ssS2,ssR2,sel,ss2aux);

    ss0 <= ss0aux when strobe = '0' else "ZZZZZZZ";
    ss1 <= ss1aux when strobe = '0' else "ZZZZZZZ";
    ss2 <= ss2aux when strobe = '0' else "ZZZZZZZ";

    EnLed <= enable;
    StrobeLed <= strobe;


end architecture;