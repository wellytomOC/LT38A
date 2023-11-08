library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity inib is
    port(
        sevenSeg0,sevenSeg1,sevenSeg2: in std_logic_vector(6 downto 0);
        inib: in bit;
        inibedsevenSeg0,inibedsevenSeg1,inibedsevenSeg2: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of inib is

begin

    inibedsevenSeg0 <= sevenSeg0 when inib = '0' else "1111111";
    inibedsevenSeg1 <= sevenSeg1 when inib = '0' else "1111111";
    inibedsevenSeg2 <= sevenSeg2 when inib = '0' else "1111111";

end architecture;