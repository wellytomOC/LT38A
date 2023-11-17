library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fourbitsRegister is 
    Port(
        CLK,reset: in std_logic;
        D: in std_logic_vector(3 downto 0);
        Q: out std_logic_vector(3 downto 0)
    );
end entity;

architecture behavior of fourbitsRegister is 

begin

    Process(CLK)
    begin
        if reset = '1' then
            Q<= "0000";
        elsif(CLK'event and CLK='1') then
            Q <= D;
        end if;

    end Process;
    
end architecture;