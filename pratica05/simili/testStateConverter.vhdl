entity testStateConverter is

end entity;

architecture behavior of testStateConverter is

	component stateConverter is
		port(
			temp: in bit_vector(7 downto 0);
			state: out bit_vector(2 downto 0);
			transition: out bit_vector(2 downto 0)
		);
	end component;

	signal temp: bit_vector(7 downto 0);
	signal state: bit_vector(2 downto 0);
	signal transition: bit_vector(2 downto 0);

begin

	st: stateConverter port map(temp,state,transition);
	
	process
	begin
	
		temp <= x"00"; wait for 50 ns;
		temp <= x"0a"; wait for 50 ns;
		temp <= x"0b"; wait for 50 ns;
		temp <= x"14"; wait for 50 ns;
		temp <= x"15"; wait for 50 ns;
		temp <= x"1e"; wait for 50 ns;
		temp <= x"1f"; wait for 50 ns;
		temp <= x"3c"; wait for 50 ns;
		temp <= x"3d"; wait for 50 ns;
		temp <= x"FF"; wait for 50 ns;
		
	end process;

end architecture;

