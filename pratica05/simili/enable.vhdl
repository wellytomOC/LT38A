entity enable is
	port(
		temp: in bit_vector(7 downto 0);
		en: in bit;
		S: out bit_vector(7 downto 0)
	);
end entity;

architecture behavior of enable is

begin

	S <= temp when en = '1' else "00000000";

end architecture;

