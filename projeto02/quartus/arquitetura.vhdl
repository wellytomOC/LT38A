library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.MATH_REAL.ALL;

entity arquitetura is
    port(
        clk: in std_logic;
        col: in std_logic_vector(2 downto 0);
        Enable,reset,strobe: in std_logic;
        row: out std_logic_vector(3 downto 0);
        direction_ref: in std_logic;

        sel: in std_logic;

        encoderC1,encoderC2: in std_logic;

        in1,in2: out std_logic;

        ss0,ss1,ss2: out std_logic_vector(6 downto 0);
        ss4,ss5,ss6: out std_logic_vector(6 downto 0);
        EnLed,StrobeLed,directionLed: out std_logic
    );
end entity;

architecture behavior of arquitetura is

    component entrada is
        port(
            clk: in std_logic;
            col: in std_logic_vector(2 downto 0);
            Enable,reset: in std_logic;
            row: out std_logic_vector(3 downto 0);

            Q1,Q2,Q3: buffer std_logic_vector(3 downto 0);
            A: out unsigned(9 downto 0);

            encoderC1,encoderC2: in std_logic;
            rpm: out unsigned(9 downto 0);
            direction_actual: out std_logic;

            clock100khz,clock10hz: out std_logic
        );
    end component;
    signal Q1,Q2,Q3: std_logic_vector(3 downto 0);
    signal A: unsigned(9 downto 0);
    signal rpm: unsigned(9 downto 0);
    signal direction_actual: std_logic;
    signal clock100khz,clock10hz: std_logic;

    component sistema is 
        Port(
            clock10hz,clock100khz: in std_logic;

            vel_ref,vel_actual: in unsigned(9 downto 0);
            direction_ref: in std_logic;

            in1,in2: out std_logic
        );
    end component;

    component saida is
        port(
            enable, strobe: in std_logic;
            sel: in std_logic;
            AQ1,AQ2,AQ3: in std_logic_vector(3 downto 0);

            vel_ref,vel_actual: in unsigned(9 downto 0);
            direction_actual: in std_logic;
            
            ss0,ss1,ss2: out std_logic_vector(6 downto 0);
            ss4,ss5,ss6: out std_logic_vector(6 downto 0);
            EnLed,StrobeLed,directionLed: out std_logic
        );
    end component;

begin

    ent: entrada port map(clk,col,enable,reset,row,Q1,Q2,Q3,A,encoderC1,encoderC2,rpm,direction_actual,clock100khz,clock10hz);
    sis: sistema port map(clock10hz,clock100khz,A,rpm,direction_ref,in1,in2);
    sai: saida port map(enable,strobe,sel,Q1,Q2,Q3,A,rpm,direction_actual,ss0,ss1,ss2,ss4,ss5,ss6,EnLed,StrobeLed,directionLed);



end architecture;