library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity keypadEncoder is
    port(
        clk: in std_logic;
        col: in std_logic_vector(2 downto 0);
        Enable: in std_logic;

        row: buffer std_logic_vector(3 downto 0);
        data: out std_logic_vector(3 downto 0);
        dav: out std_logic
    );
end entity;

architecture behavior of keypadEncoder is

    component ringCounter is
        port(
            clk: in std_logic;
            Freeze: in std_logic;
            toRow: out std_logic_vector(3 downto 0)
        );
    end component;

    component rowEncoder is
        port(
            rows: in std_logic_vector(3 downto 0);

            data: out std_logic_vector(1 downto 0)
        );
    end component;

    component colEncoder is
        port(
            cols: in std_logic_vector(2 downto 0);

            data: out std_logic_vector(1 downto 0)
        );
    end component;

    component rowAndColEncoder is
        port(
            dataIn: in std_logic_vector(3 downto 0);
            dataOut: out std_logic_vector(3 downto 0)
        );
    end component;

    signal Freeze: std_logic;
    signal dataIn: std_logic_vector(3 downto 0);
    signal dataOut: std_logic_vector(3 downto 0);

begin

    RC: ringCounter port map(clk, Freeze, row);
    RE: rowEncoder port map(row, dataIn(3 downto 2));
    CE: colEncoder port map(col, dataIn(1 downto 0));
    RaCE: rowAndColEncoder port map(dataIn,dataOut);

	 Freeze <= not (col(2) and col(1) and col(0));

    data <= dataOut when (Freeze and Enable) = '1' else "ZZZZ";

    process(clk)
    begin
        if(clk'event and clk='1') then
            dav <= Freeze;
        end if;
    end process;

end architecture;
