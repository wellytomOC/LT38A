library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.NUMERIC_STD.ALL;

entity entrada is
    port(
        clk: in std_logic;
        col: in std_logic_vector(2 downto 0);
        Enable,reset: in std_logic;
        row: out std_logic_vector(3 downto 0);
			
        Q1,Q2,Q3,Q4,Q5,Q6: buffer std_logic_vector(3 downto 0);
        A,B: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of entrada is

    component keypadEncoder is
        port(
            clk: in std_logic;
            col: in std_logic_vector(2 downto 0);
            Enable: in std_logic;

            row: buffer std_logic_vector(3 downto 0);
            data: out std_logic_vector(3 downto 0);
            dav: out std_logic
        );
    end component;
    signal data: std_logic_vector(3 downto 0);
    signal dav: std_logic;

    component registerSelector is
        port(
            DAV, reset: in std_logic;
			sel: out std_logic_vector(5 downto 0);
			enabler: out std_logic
        );
    end component;
    signal sel: std_logic_vector(5 downto 0);
	 signal enabler: std_logic;

    component fourbitsRegister is 
        Port(
            CLK,reset: in std_logic;
            D: in std_logic_vector(3 downto 0);
            Q: out std_logic_vector(3 downto 0)
        );
    end component;

    component bitConcat is
        port(
            input_hundreds,input_tens,input_units: in  std_logic_vector(3 downto 0);

            output_result: out std_logic_vector(6 downto 0)
        );
    end component;
    signal output_resultA: std_logic_vector(6 downto 0);
    signal output_resultB: std_logic_vector(6 downto 0);

    component Clock_Divider is
        port(
            clk: in std_logic;
            clock_out: out std_logic
        );
    end component;

    signal clock_out: std_logic;

begin 

    cd: Clock_Divider port map(clk,clock_out);
    ke: keypadEncoder port map(clock_out,col,Enable,row,data,dav);
    rs: registerSelector port map(dav,reset,sel,enabler);
    
    fbr1: fourbitsRegister port map(sel(0),reset,data,Q1);
    fbr2: fourbitsRegister port map(sel(1),reset,data,Q2);
    fbr3: fourbitsRegister port map(sel(2),reset,data,Q3);
    fbr4: fourbitsRegister port map(sel(3),reset,data,Q4);
    fbr5: fourbitsRegister port map(sel(4),reset,data,Q5);
    fbr6: fourbitsRegister port map(sel(5),reset,data,Q6);

    bcA: bitConcat port map(Q1,Q2,Q3,output_resultA);
    bcB: bitConcat port map(Q4,Q5,Q6,output_resultB);

    A <= output_resultA when enabler = '1' else "ZZZZZZZ";
    B <= output_resultB when enabler = '1' else "ZZZZZZZ";

end architecture;