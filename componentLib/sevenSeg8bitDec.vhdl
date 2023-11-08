library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity sevenSeg8bitDec is
    port(
        A: in std_logic_vector(7 downto 0);
        ssA0,ssA1,ssA2: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of sevenSeg8bitDec is

    signal decimalTemp: integer range 0 to 255;
    signal unidades, dezenas, centenas: integer range 0 to 9;

begin

    decimalTemp <= to_integer(unsigned(stdLogicTemp));
    
    centenas <= decimalTemp / 100;
    dezenas <= (decimalTemp - centenas * 100) / 10;
    unidades <= decimalTemp - centenas * 100 - dezenas * 10;

    ssTemp2 <= 	"0000001" when centenas = 0 else
            "0110000" when centenas = 1 else
            "0010010" when centenas = 2 else
            "0000110" when centenas = 3 else
            "1001011" when centenas = 4 else
            "0100100" when centenas = 5 else
            "0100000" when centenas = 6 else
            "0001111" when centenas = 7 else
            "0000000" when centenas = 8 else
            "0001100" when centenas = 9;

    ssTemp1 <= 	"0000001" when dezenas = 0 else
            "0110000" when dezenas = 1 else
            "0010010" when dezenas = 2 else
            "0000110" when dezenas = 3 else
            "1001011" when dezenas = 4 else
            "0100100" when dezenas = 5 else
            "0100000" when dezenas = 6 else
            "0001111" when dezenas = 7 else
            "0000000" when dezenas = 8 else
            "0001100" when dezenas = 9;

	ssTemp0 <= 	"0000001" when unidades = 0 else
            "0110000" when unidades = 1 else
            "0010010" when unidades = 2 else
            "0000110" when unidades = 3 else
            "1001011" when unidades = 4 else
            "0100100" when unidades = 5 else
            "0100000" when unidades = 6 else
            "0001111" when unidades = 7 else
            "0000000" when unidades = 8 else
            "0001100" when unidades = 9;

end architecture;