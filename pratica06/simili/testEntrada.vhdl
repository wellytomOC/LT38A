library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity testEntrada is

end entity;

architecture behavior of testEntrada is

	component entrada is
	port(
		A,B: in unsigned(7 downto 0);
   	     	En: in bit;
  	      	Ae,Be: out unsigned(7 downto 0)
	);
	end component;

	signal A,B: unsigned(7 downto 0);
	signal En: bit;
	signal Ae,Be: unsigned(7 downto 0);
begin

    ent: entrada port map(A,B,En,Ae,Be);

    process
    begin
    	
    	A <= x"00"; B <= x"00"; En <= '1'; wait for 50 ns;
    	A <= x"aa"; B <= x"66"; En <= '1'; wait for 50 ns;
    	A <= x"ff"; B <= x"66"; En <= '0'; wait for 50 ns;
    	A <= x"aa"; B <= x"66"; En <= '1'; wait for 50 ns;
    
    end process;

end architecture;
    
