entity testInib is
end entity;

architecture behavior of testInib is

	component inib is
		port(
			ss: in bit_vector(6 downto 0);
			inib: in bit;
			S: out bit_vector(6 downto 0)
		);
	end component;
	
	signal ss: bit_vector(6 downto 0);
	signal iniba: bit;
	signal S: bit_vector(6 downto 0);
	
begin

	ini: inib port map(ss,iniba,S);
	
	process
	begin
	
		ss <= "0000000"; iniba<= '0'; wait for 50 ns;
		ss <= "1010101"; iniba<= '0'; wait for 50 ns;
		ss <= "1111111"; iniba<= '0'; wait for 50 ns;
		ss <= "0000000"; iniba<= '1'; wait for 50 ns;
		ss <= "1010101"; iniba<= '1'; wait for 50 ns;
		ss <= "1111111"; iniba<= '1'; wait for 50 ns;
		
	end process;

end architecture;
