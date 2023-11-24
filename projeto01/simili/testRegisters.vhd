library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.NUMERIC_STD.ALL;

entity testRegisters is
    port(
        dav: in std_logic;
        data: in std_logic_vector(3 downto 0);

        Q1,Q2,Q3,Q4,Q5,Q6: buffer std_logic_vector(3 downto 0);
        seeSel: out std_logic_vector(5 downto 0);
		  A,B: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of testRegisters is

    component registerSelector is
        port(
            DAV: in std_logic;
            sel: out std_logic_vector(5 downto 0);
            enabler: out std_logic
        );
    end component;
    signal enabler: std_logic;

    signal sel: std_logic_vector(5 downto 0);

    component fourbitsRegister is 
        Port(
            CLK:in std_logic;
            D:in std_logic_vector(3 downto 0);
            Q:out std_logic_vector(3 downto 0)
        );
    end component;

    type Q_array is array (1 to 6) of std_logic_vector(3 downto 0);
    signal Q: Q_array;

    component bitConcat is
        port (
            input_hundreds,input_tens,input_units: in  std_logic_vector(3 downto 0);

            output_result: out std_logic_vector(6 downto 0)
        );
    end component;
	 
begin

    rs: registerSelector port map(dav,sel,enabler);

    fbr1: fourbitsRegister port map(sel(0),data,Q(1));
    fbr2: fourbitsRegister port map(sel(1),data,Q(2));
    fbr3: fourbitsRegister port map(sel(2),data,Q(3));
    fbr4: fourbitsRegister port map(sel(3),data,Q(4));
    fbr5: fourbitsRegister port map(sel(4),data,Q(5));
    fbr6: fourbitsRegister port map(sel(5),data,Q(6));

    bcA: bitConcat port map(Q1,Q2,Q3,A);
    bcB: bitConcat port map(Q4,Q5,Q6,B);

    seeSel <= sel;

    Q1 <= Q(1) when enabler = '1' else "ZZZZ";
    Q2 <= Q(2) when enabler = '1' else "ZZZZ"; 
    Q3 <= Q(3) when enabler = '1' else "ZZZZ"; 
    Q4 <= Q(4) when enabler = '1' else "ZZZZ"; 
    Q5 <= Q(5) when enabler = '1' else "ZZZZ"; 
    Q6 <= Q(6) when enabler = '1' else "ZZZZ"; 

end architecture;