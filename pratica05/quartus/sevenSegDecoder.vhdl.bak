entity sevenSegDecoder is
	port(
		data: in bit_vector(3 downto 0);
		ss: out bit_vector(6 downto 0)
	);
end entity;

architecture behavior of sevenSegDecoder is

begin

	ss <= 	"0000001" when data = x"0" else
		"0110000" when data = x"1" else
		"0010010" when data = x"2" else
		"0000110" when data = x"3" else
		"1001011" when data = x"4" else
		"0100100" when data = x"5" else
		"0100000" when data = x"6" else
		"0001111" when data = x"7" else
		"0000000" when data = x"8" else
		"0001100" when data = x"9" else
		"0001000" when data = x"a" else
		"1100000" when data = x"b" else
		"0110001" when data = x"c" else
		"1000010" when data = x"d" else
		"0110000" when data = x"e" else
		"0111000";
end architecture;


