entity stateConverter is
	port(
		temp: in bit_vector(7 downto 0);
		state: out bit_vector(2 downto 0);
		transition: out bit_vector(2 downto 0)
	);
end entity;

architecture behavior of stateConverter is

begin

	state <= "000" when temp >= "00000000" and temp < "00001010" else
		 "001" when temp > "00001010" and temp < "00010100" else
		 "010" when temp > "00010100" and temp < "00011110" else
		 "011" when temp > "00011110" and temp < "00111100" else 
		 "100" when temp > "00111100";
		 
	transition <= 	"001" when temp = "00001010" else
			"010" when temp = "00010100" else
			"011" when temp = "00011110" else
			"100" when temp = "00111100" else
			"000";

end architecture;

