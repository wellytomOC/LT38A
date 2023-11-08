library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity testDivisor is

end entity;

architecture behavior of testDivisor is

    component divisor is
        port(
            A,B: in unsigned(7 downto 0);
            Q,R: out unsigned(7 downto 0)
        );
    end component;

    signal A,B: unsigned(7 downto 0);
    signal Q,R: unsigned(7 downto 0);

begin

    dv: divisor port map(A,B,Q,R);

    process
    begin
    
        A<=x"0F"; B<=x"05"; wait for 50 ns;
        A<=x"10"; B<=x"02"; wait for 50 ns;
        A<=x"0a"; B<=x"03"; wait for 50 ns;

        A<=x"08"; B<=x"01"; wait for 50 ns;
        A<=x"08"; B<=x"02"; wait for 50 ns;
        A<=x"08"; B<=x"03"; wait for 50 ns;
        A<=x"08"; B<=x"04"; wait for 50 ns;
        A<=x"08"; B<=x"05"; wait for 50 ns;
        A<=x"08"; B<=x"06"; wait for 50 ns;
        A<=x"08"; B<=x"07"; wait for 50 ns;
        A<=x"08"; B<=x"08"; wait for 50 ns;


    
    end process;

end architecture;


