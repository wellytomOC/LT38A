library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity divMux is
    port(
        q1,q2,q4,q8,q16,q32,q64,q128: in unsigned(7 downto 0);
        r1,r2,r4,r8,r16,r32,r64,r128: in unsigned(7 downto 0);
        sel: in bit_vector(2 downto 0);
        Q: out unsigned(7 downto 0);
        R: out unsigned(7 downto 0)
    );
end entity;

architecture behavior of divMux is

begin

    with sel select
    
    Q <= q1 when "000",
         q2 when "001",
         q4 when "010",
         q8 when "011",
         q16 when "100",
         q32 when "101",
         q64 when "110",
         q128 when "111";

    with sel select
    
    R <= r1 when "000",
         r2 when "001",
         r4 when "010",
         r8 when "011",
         r16 when "100",
         r32 when "101",
         r64 when "110",
         r128 when "111";

end architecture;

