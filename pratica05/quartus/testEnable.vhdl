entity testEnable is
end entity;

architecture behavior of testEnable is

	component enable is
		port(
			temp: in bit_vector(7 downto 0);
			en: in bit;
			S: out bit_vector(7 downto 0)
		);
	end component;
	
	signal temp: bit_vector(7 downto 0);
	signal en: bit;
	signal S: bit_vector(7 downto 0);

begin

	ena: enable port map(temp,en,S);

	process
	begin
		
		temp <= x"00"; en <= '1'; wait for 50 ns;
		temp <= x"00"; en <= '0'; wait for 50 ns;
		temp <= x"66"; en <= '1'; wait for 50 ns;
		temp <= x"66"; en <= '0'; wait for 50 ns;
		
	end process;
	
end architecture;
