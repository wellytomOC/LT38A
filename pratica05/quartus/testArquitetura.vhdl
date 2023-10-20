entity testArquitetura is

end entity;

architecture behavior of testArquitetura is

    component arquitetura is
        port(

            temp: in bit_vector(7 downto 0);
            en: in bit;
            inibicao: in bit;

            outssState, outssTransition: out bit_vector(6 downto 0);
            outssTemp0,outssTemp1,outssTemp2: out bit_vector(6 downto 0)

        );
    end component;

    signal temp: bit_vector(7 downto 0);
    signal en: bit;
    signal inibicao: bit;
    signal outssState, outssTransition: bit_vector(6 downto 0);
    signal outssTemp0,outssTemp1,outssTemp2: bit_vector(6 downto 0);

begin

    arq: arquitetura port map(temp,en,inibicao,outssState,outssTransition,outssTemp0,outssTemp1,outssTemp2);

    process
    begin

        temp <= "00000000"; en <= '1'; inibicao <= '0'; wait for 50 ns;
        temp <= "00000010"; en <= '1'; inibicao <= '0'; wait for 50 ns;
        temp <= "00000100"; en <= '1'; inibicao <= '0'; wait for 50 ns;
        temp <= "00001000"; en <= '1'; inibicao <= '0'; wait for 50 ns;
        temp <= "00010000"; en <= '1'; inibicao <= '0'; wait for 50 ns;
        --temp <= "00100000"; en <= '1'; inibicao <= '0'; wait for 50 ns;
        --temp <= "01000000"; en <= '1'; inibicao <= '0'; wait for 50 ns;
        --temp <= "10000000"; en <= '1'; inibicao <= '0'; wait for 50 ns;

    end process;

end architecture;
