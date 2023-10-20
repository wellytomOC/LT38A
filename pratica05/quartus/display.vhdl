library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity display is
    port(
        etemp: in bit_vector(7 downto 0);
        state, transition: in bit_vector(2 downto 0);

        ssState, ssTransition: out bit_vector(6 downto 0);
        ssTemp0,ssTemp1,ssTemp2: out bit_vector(6 downto 0)
    );
end entity;

architecture behavior of display is

    -- decodificador de 4 bits para 7segs
    component sevenSegDecoder is
        port(
            data: in bit_vector(3 downto 0);
            ss: out bit_vector(6 downto 0)
        );
    end component;

    signal data0,data1: bit_vector(3 downto 0);

    signal stdLogicTemp: std_logic_vector(7 downto 0);

    signal decimalTemp: integer range 0 to 255;
    signal unidades, dezenas, centenas: integer range 0 to 9;

begin

    -- tratando do state e transition
    data0 <= '0' & state;
    data1 <= '0' & transition;
    ssdState: sevenSegDecoder port map(data0,ssState);
    ssdTransition: sevenSegDecoder port map(data1,ssTransition);

    --tratanto da entrada de temperatura
    stdLogicTemp <= to_stdlogicvector(etemp);
    decimalTemp <= to_integer(unsigned(stdLogicTemp));
    
    centenas <= decimalTemp / 100;
    dezenas <= (decimalTemp - centenas * 100) / 10;
    unidades <= decimalTemp - centenas * 100 - dezenas * 10;
    
    ssTemp2 <= 	"0000001" when centenas = 0 else
            "1001111" when centenas = 1 else
            "0010010" when centenas = 2 else
            "0000110" when centenas = 3 else
            "1001100" when centenas = 4 else
            "0100100" when centenas = 5 else
            "0100000" when centenas = 6 else
            "0001111" when centenas = 7 else
            "0000000" when centenas = 8 else
            "0001100" when centenas = 9;

    ssTemp1 <= 	"0000001" when dezenas = 0 else
            "1001111" when dezenas = 1 else
            "0010010" when dezenas = 2 else
            "0000110" when dezenas = 3 else
            "1001100" when dezenas = 4 else
            "0100100" when dezenas = 5 else
            "0100000" when dezenas = 6 else
            "0001111" when dezenas = 7 else
            "0000000" when dezenas = 8 else
            "0001100" when dezenas = 9;

	ssTemp0 <= 	"0000001" when unidades = 0 else
            "1001111" when unidades = 1 else
            "0010010" when unidades = 2 else
            "0000110" when unidades = 3 else
            "1001100" when unidades = 4 else
            "0100100" when unidades = 5 else
            "0100000" when unidades = 6 else
            "0001111" when unidades = 7 else
            "0000000" when unidades = 8 else
            "0001100" when unidades = 9;


end architecture;




