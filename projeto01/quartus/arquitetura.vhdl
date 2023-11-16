library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity arquitetura is
    port(
		  clk: in std_logic;
        col: in std_logic_vector(2 downto 0);
        Enable: in std_logic;
        row: out std_logic_vector(3 downto 0);

        strobe: in std_logic;
        sel: in std_logic_vector(1 downto 0);

        ss0,ss1,ss2: out std_logic_vector(6 downto 0);
        EnLed,StrobeLed: out std_logic
    );
end entity;

architecture behavior of arquitetura is

    component entrada is
        port(
            clk: in std_logic;
            col: in std_logic_vector(2 downto 0);
            Enable: in std_logic;
            row: out std_logic_vector(3 downto 0);
                
            --seeDAV: out std_logic;
            --seeData: out std_logic_vector(3 downto 0);
            Q1,Q2,Q3,Q4,Q5,Q6: buffer std_logic_vector(3 downto 0);
            A,B: out std_logic_vector(6 downto 0)
        );
    end component;

    signal Q1,Q2,Q3,Q4,Q5,Q6: std_logic_vector(3 downto 0);
    signal A,B: std_logic_vector(6 downto 0);

    component sistema is
        port(
                A,B: in std_logic_vector(6 downto 0);
                S,R: out std_logic_vector(6 downto 0)
        );
    end component;
    signal S,R: std_logic_vector(6 downto 0);

    component saida is
        port(
            enable, strobe: in std_logic;
            sel: in std_logic_vector(1 downto 0);
            AQ1,AQ2,AQ3,BQ1,BQ2,BQ3: in std_logic_vector(3 downto 0);
            S,R: in std_logic_vector(6 downto 0);

            ss0,ss1,ss2: out std_logic_vector(6 downto 0);
            EnLed,StrobeLed: out std_logic
        );
    end component;

begin

    ent: entrada port map(clk, col, enable, row, Q1,Q2,Q3,Q4,Q5,Q6, A, B);
    sis: sistema port map(A,B,S,R);
    sai: saida port map(enable,strobe,sel,Q1,Q2,Q3,Q4,Q5,Q6,S,R,ss0,ss1,ss2,EnLed,StrobeLed);

end architecture;