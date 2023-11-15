library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity sevenBitsSub is
    port(
        A,B: in std_logic_vector(6 downto 0);
        DIFF: out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavior of sevenBitsSub is

    component halfSubtractor is 
        port(
            A, B : in std_logic; 
            DIFF, Borrow : out std_logic
            ); 
    end component;

    component fullSubtractor is
        port(
            A, B, C : in std_logic;
            DIFF, Borrow : out std_logic
            );
    end component;

    signal borrows: std_logic_vector(6 downto 0);

begin 

    hs: halfSubtractor port map(A(0), B(0), DIFF(0), borrows(0));

    G1: for i in 1 to 6 generate

        fs: fullSubtractor port map(A(i), B(i), borrows(i-1), DIFF(i), borrows(i));

    end generate;

   

end architecture;


