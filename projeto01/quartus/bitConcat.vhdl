library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bitConcat is
    port (
        input_hundreds,input_tens,input_units: in  std_logic_vector(3 downto 0);

        output_result: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of bitConcat is

    signal centenas: integer range 0 to 1;
	 signal dezenas, unidades: integer range 0 to 9;
    signal resultado: integer range 0 to 127;

begin

    centenas <= conv_integer(input_hundreds);
    dezenas <= conv_integer(input_tens);
    unidades <= conv_integer(input_units);

    resultado <= (centenas * 100) + (dezenas * 10) + unidades;
    output_result <= conv_std_logic_vector(resultado,7);

end architecture;