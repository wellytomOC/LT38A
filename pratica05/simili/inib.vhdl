entity inib is
	port(
		ssState, ssTransition: in bit_vector(6 downto 0);
        	ssTemp0,ssTemp1,ssTemp2: in bit_vector(6 downto 0);
		inib: in bit;
		outssState, outssTransition: out bit_vector(6 downto 0);
        	outssTemp0,outssTemp1,outssTemp2: out bit_vector(6 downto 0)
	);
end entity;

architecture behavior of inib is

begin

	outssState <= ssState when inib = '0' else "1111111";
	outssTransition <= ssTransition when inib = '0' else "1111111";
	outssTemp0 <= ssTemp0 when inib = '0' else "1111111";
	outssTemp1 <= ssTemp1 when inib = '0' else "1111111";
	outssTemp2 <= ssTemp2 when inib = '0' else "1111111";

end architecture;


