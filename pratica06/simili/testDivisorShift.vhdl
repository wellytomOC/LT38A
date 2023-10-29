library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity testDivisorShift is

end entity;

architecture behavior of testDivisorShift is

    component divisorShift is
        port(
            A: in unsigned(7 downto 0);
            sel: in bit_vector(2 downto 0);
            Q: out unsigned(7 downto 0);
            R: out unsigned(7 downto 0)
        );
    end component;

    signal A: unsigned(7 downto 0);
    signal sel: bit_vector(2 downto 0);
    signal Q: unsigned(7 downto 0);
    signal R: unsigned(7 downto 0);

begin

    ds: divisorShift port map(A,sel,Q,R);

    process
    begin
    
        A<=x"01"; sel<="000"; wait for 50 ns;
        A<=x"66"; sel<="001"; wait for 50 ns;
        A<=x"15"; sel<="010"; wait for 50 ns;
        A<=x"ff"; sel<="000"; wait for 50 ns;
        A<=x"ff"; sel<="001"; wait for 50 ns;
        A<=x"ff"; sel<="010"; wait for 50 ns;
        A<=x"ff"; sel<="011"; wait for 50 ns;
        A<=x"ff"; sel<="100"; wait for 50 ns;
        A<=x"ff"; sel<="101"; wait for 50 ns;
        A<=x"ff"; sel<="110"; wait for 50 ns;
        A<=x"ff"; sel<="111"; wait for 50 ns;


    
    end process;

end architecture;
