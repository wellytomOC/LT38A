library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity divisor is
    port(
        A,B: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of divisor is


    component divisorArith is
        port(
            A,B: in unsigned(7 downto 0);
            Q,R: out unsigned(7 downto 0)
        );
    end component;

    component divisorShift is
        port(
            A: in unsigned(7 downto 0);
            sel: in bit_vector(2 downto 0);
            Q,R: out unsigned(7 downto 0)
        );
    end component;

    signal sel: bit_vector(3 downto 0);
    signal Qa,Ra,Qs,Rs: unsigned(7 downto 0);

begin

    sel <=  "0000" when B = "00000001" else
            "0001" when B = "00000010" else
            "0010" when B = "00000100" else
            "0011" when B = "00001000" else
            "0100" when B = "00010000" else
            "0101" when B = "00100000" else
            "0110" when B = "01000000" else
            "0111" when B = "10000000" else
            "1000";
    
    da: divisorArith port map(A,B,Qa,Ra);
    ds: divisorShift port map(A,sel(2 downto 0),Qs,Rs);

    Q <= Qa when sel > "0111" else Qs;
    R <= Ra when sel > "0111" else Rs;

end architecture;
