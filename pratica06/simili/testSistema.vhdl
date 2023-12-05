library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity testSistema is

end entity;

architecture behavior of testSistema is

	component sistema is
    	port(
        	A,B: in unsigned(7 downto 0);
        	Q,R: out std_logic_vector(7 downto 0)
    	);
	end component;
	
	signal A,B: unsigned(7 downto 0);
        signal Q,R: std_logic_vector(7 downto 0);


begin

    sis: sistema port map(A,B,Q,R);

    process
    begin
    	
    	A <= x"05"; B <= x"02"; wait for 50 ns;
    	A <= x"aa"; B <= x"66"; wait for 50 ns;
    	A <= x"ff"; B <= x"66"; wait for 50 ns;
    	A <= x"a0"; B <= x"06"; wait for 50 ns;
    
    end process;

end architecture;
    
