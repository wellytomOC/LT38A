library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity saida is
    port(
        dividendo,divisor: in unsigned(7 downto 0);
        quociente,resto: in std_logic_vector(7 downto 0);
        sel: in bit_vector(1 downto 0);
        inibi: in bit;

        inibedsevenSeg0,inibedsevenSeg1,inibedsevenSeg2: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of saida is

    component sevenSeg8bitDec is
        port(
            A: in std_logic_vector(7 downto 0);
            ssA0,ssA1,ssA2: out std_logic_vector(6 downto 0)
        );
    end component;

    component outputMultiplexer is
        port(
            A,B,C,D: in std_logic_vector(6 downto 0);
            sel: in bit_vector(1 downto 0);
            S: out std_logic_vector(6 downto 0)
        );
    end component;

    component inib is
        port(
            sevenSeg0,sevenSeg1,sevenSeg2: in std_logic_vector(6 downto 0);
            inib: in bit;
            inibedsevenSeg0,inibedsevenSeg1,inibedsevenSeg2: out std_logic_vector(6 downto 0)
        );
    end component;

    signal ssA0,ssA1,ssA2: std_logic_vector(6 downto 0);
    signal ssB0,ssB1,ssB2: std_logic_vector(6 downto 0);
    signal ssC0,ssC1,ssC2: std_logic_vector(6 downto 0);
    signal ssD0,ssD1,ssD2: std_logic_vector(6 downto 0);

    signal sevenSeg0,sevenSeg1,sevenSeg2: std_logic_vector(6 downto 0);

begin

    dividendoDecoder: sevenSeg8bitDec port map(std_logic_vector(dividendo),ssA0,ssA1,ssA2);
    divisorDecoder: sevenSeg8bitDec port map(std_logic_vector(divisor),ssB0,ssB1,ssB2);
    quocienteDecoder: sevenSeg8bitDec port map(quociente,ssC0,ssC1,ssC2);
    restoDecoder: sevenSeg8bitDec port map(resto,ssD0,ssD1,ssD2);

    mux0: outputMultiplexer port map(ssA0,ssB0,ssC0,ssD0,sel,sevenSeg0);
    mux1: outputMultiplexer port map(ssA1,ssB1,ssC1,ssD1,sel,sevenSeg1);
    mux2: outputMultiplexer port map(ssA2,ssB2,ssC2,ssD2,sel,sevenSeg2);

    inibidor: inib port map(sevenSeg0,sevenSeg1,sevenSeg2,inibi,inibedsevenSeg0,inibedsevenSeg1,inibedsevenSeg2);



end architecture;
