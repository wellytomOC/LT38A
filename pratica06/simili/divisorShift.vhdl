library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity divisorShift is
    port(
        A: in unsigned(7 downto 0);
        sel: in bit_vector(2 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of divisorShift is

component divMux is
    port(
        q1,q2,q4,q8,q16,q32,q64,q128: in unsigned(7 downto 0);
        r1,r2,r4,r8,r16,r32,r64,r128: in unsigned(7 downto 0);
        sel: in bit_vector(2 downto 0);
        Q: out unsigned(7 downto 0);
        R: out unsigned(7 downto 0)
    );
end component;

component div1 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end component;

component div2 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end component;

component div4 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end component;

component div8 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end component;

component div16 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end component;

component div32 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end component;

component div64 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end component;

component div128 is
    port(
        A: in unsigned(7 downto 0);
        Q,R: out unsigned(7 downto 0)
    );
end component;

signal q1,q2,q4,q8,q16,q32,q64,q128,r1,r2,r4,r8,r16,r32,r64,r128: unsigned(7 downto 0);

begin

    por1: div1 port map(A,q1,r1);
    por2: div2 port map(A,q2,r2);
    por4: div4 port map(A,q4,r4);
    por8: div8 port map(A,q8,r8);
    por16: div16 port map(A,q16,r16);
    por32: div32 port map(A,q32,r32);
    por64: div64 port map(A,q64,r64);
    por128: div128 port map(A,q128,r128);

    dMux: divMux port map(q1,q2,q4,q8,q16,q32,q64,q128,r1,r2,r4,r8,r16,r32,r64,r128,sel,Q,R);
    

end architecture;
