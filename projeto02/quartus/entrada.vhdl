library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity entrada is
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
            data: in std_logic_vector(3 downto 0);
            sel: out std_logic_vector(2 downto 0);
            enabler,clear: out std_logic
        );
    end component;
    signal sel: std_logic_vector(2 downto 0);
	 signal enabler,clear: std_logic;

    component Register_4Bits is 
        Port(
            CLK,reset: in std_logic;
            D: in std_logic_vector(3 downto 0);
            Q: out std_logic_vector(3 downto 0)
        );
    end component;

    component Register_10Bits is 
        Port(
            CLK,reset: in std_logic;
            D: in std_logic_vector(9 downto 0);
            Q: out unsigned(9 downto 0)
        );
    end component;

    component bitConcat is
        port(
            input_hundreds,input_tens,input_units: in  std_logic_vector(3 downto 0);

            output_result: out std_logic_vector(9 downto 0)
        );
    end component;
    signal data10bits: std_logic_vector(9 downto 0);


    component ClockDivider100Hz is
        port(
            clk: in std_logic;
            clock_out: out std_logic
        );
    end component;
    signal clock_100hz_out: std_logic;

    component ClockDivider10Hz is
        port ( clk: in std_logic;
            clock_out: out std_logic);
    end component;
    signal clock_10hz_out: std_logic;

    component rpmCalculator is 
        Port(
            clock: in std_logic; -- clock PRECISA ser de 20Hz

            pulseCount: in integer range 0 to 5000;

            rpm: out unsigned(9 downto 0);
            resetCount: buffer std_logic
        );
    end component;
    signal resetCount: std_logic;

    component encoderCounter is 
        Port(
            resetCount: in std_logic;

            encoderC1,encoderC2: in std_logic;

            count: out integer range 0 to 5000;
            direction_actual: out std_logic
        );
    end component;
    signal pulseCount: integer range 0 to 5000;

    component ClockDivider100kHz is
        port ( clk: in std_logic;
            clock_out: out std_logic);
    end component;

    signal reset_Or_Clear: std_logic;

begin 

    reset_Or_Clear <= clear or reset;

    -- keypad
    cd100: ClockDivider100Hz port map(clk,clock_100hz_out);
    ke: keypadEncoder port map(clock_100hz_out,col,Enable,row,data,dav);
    rs: registerSelector port map(dav,reset,data,sel,enabler,clear);
    
    -- registers
    R1: Register_4Bits port map(sel(0),reset_Or_Clear,data,Q1);
    R2: Register_4Bits port map(sel(1),reset_Or_Clear,data,Q2);
    R3: Register_4Bits port map(sel(2),reset_Or_Clear,data,Q3);
    bcA: bitConcat port map(Q1,Q2,Q3,data10bits);
    R4: Register_10Bits port map(enabler,reset,data10bits,A);

    -- motor feedback
	 cd10: ClockDivider10Hz port map(clk,clock_10hz_out);
    ec: encoderCounter port map(resetCount,encoderC1,encoderC2,pulseCount,direction_actual);
    rpmCalc: rpmCalculator port map(clock_10hz_out,pulseCount,rpm,resetCount); 

    cd100k: ClockDivider100kHz port map(clk,clock100khz);

    clock10hz <= clock_10hz_out;

end architecture;