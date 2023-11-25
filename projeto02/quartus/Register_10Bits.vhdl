library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Register_10Bits is 
    Port(
        CLK,reset: in std_logic;
        D: in std_logic_vector(9 downto 0);
        Q: out unsigned(9 downto 0)
    );
end entity;

architecture behavior of Register_10Bits is 

begin

    Process(CLK)
    begin
        if reset = '1' then
            Q<= "0000000000";
        elsif(CLK'event and CLK='1') then
            Q <= unsigned(D);
        end if;

    end Process;
    
end architecture;