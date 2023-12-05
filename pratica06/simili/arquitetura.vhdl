library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity arquitetura is 
    port(
        A,B: in unsigned(7 downto 0);
        En: in bit;
        sel: in bit_vector(1 downto 0);
        inibi: in bit;

        inibedsevenSeg0,inibedsevenSeg1,inibedsevenSeg2: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of arquitetura is

    component entrada is
        port(
            A,B: in unsigned(7 downto 0);
            En: in bit;
            Ae,Be: out unsigned(7 downto 0)
        );
    end component;

    component sistema is
        port(
            A,B: in unsigned(7 downto 0);
            Q,R: out std_logic_vector(7 downto 0)
        );
    end component;

    component saida is
        port(
            dividendo,divisor: in unsigned(7 downto 0);
            quociente,resto: in std_logic_vector(7 downto 0);
            sel: in bit_vector(1 downto 0);
            inibi: in bit;

            inibedsevenSeg0,inibedsevenSeg1,inibedsevenSeg2: out std_logic_vector(6 downto 0)
        );
    end component;

    signal Ae,Be: unsigned(7 downto 0);
    signal Q,R: std_logic_vector(7 downto 0);

begin

    entrada01: entrada port map(A,B,En,Ae,Be);
    sistema01: sistema port map(Ae,Be,Q,R);
    saida01: saida port map(Ae,Be,Q,R,sel,inibi,inibedsevenSeg0,inibedsevenSeg1,inibedsevenSeg2);

end architecture;
