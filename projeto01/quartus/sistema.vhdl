library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity sistema is
    port(
            A,B: in std_logic_vector(6 downto 0);
            S,R: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of sistema is

    component successiveSubtraction is
        port(
            A,B,Sin: in std_logic_vector(6 downto 0);
            S,R: out std_logic_vector(6 downto 0)
        );
    end component;

	 
	 type sig_array is array (0 to 127) of std_logic_vector(6 downto 0);

    signal Sprev, Snxt, Rnxt: sig_array;

begin

    loop01: for i in 0 to 127 generate

        condInit: if i = 0 generate
		  
            ss: successiveSubtraction port map(A,B,"0000000",Snxt(i),Rnxt(i));
				
        end generate condInit;

        theOthers: if i > 0 generate
		  
            ss: successiveSubtraction port map(Rnxt(i-1),B,Snxt(i-1),Snxt(i),Rnxt(i));
				
        end generate theOthers;


    end generate loop01;

    S <= Snxt(127);
    R <= Rnxt(127);

end architecture;
