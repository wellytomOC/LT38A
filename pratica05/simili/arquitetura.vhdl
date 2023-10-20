entity arquitetura is
    port(

        temp: in bit_vector(7 downto 0);
		en: in bit;
        inibicao: in bit;

        outssState, outssTransition: out bit_vector(6 downto 0);
        outssTemp0,outssTemp1,outssTemp2: out bit_vector(6 downto 0)

    );
end entity;

architecture behavior of arquitetura is

    component enable is
        port(
            temp: in bit_vector(7 downto 0);
            en: in bit;
            S: out bit_vector(7 downto 0)
        );
    end component;

    signal S: bit_vector(7 downto 0);

    component stateConverter is
        port(
            temp: in bit_vector(7 downto 0);
            state: out bit_vector(2 downto 0);
            transition: out bit_vector(2 downto 0)
        );
    end component;

    signal state: bit_vector(2 downto 0);
    signal transition: bit_vector(2 downto 0);

    component display is
        port(
            etemp: in bit_vector(7 downto 0);
            state, transition: in bit_vector(2 downto 0);

            ssState, ssTransition: out bit_vector(6 downto 0);
            ssTemp0,ssTemp1,ssTemp2: out bit_vector(6 downto 0)
        );
    end component;

    signal ssState, ssTransition: bit_vector(6 downto 0);
    signal ssTemp0,ssTemp1,ssTemp2: bit_vector(6 downto 0);

    component inib is
        port(
            ssState, ssTransition: in bit_vector(6 downto 0);
                ssTemp0,ssTemp1,ssTemp2: in bit_vector(6 downto 0);
            inib: in bit;
            outssState, outssTransition: out bit_vector(6 downto 0);
                outssTemp0,outssTemp1,outssTemp2: out bit_vector(6 downto 0)
        );
    end component;

begin

    enable0: enable port map(temp,en,S);
    stateConverter0: stateConverter port map(S,state,transition);
    display0: display port map(S,state,transition,ssState,ssTransition,ssTemp0,ssTemp1,ssTemp2);
    inib0: inib port map(ssState,ssTransition,ssTemp0,ssTemp1,ssTemp2,inibicao,outssState,outssTransition,outssTemp0,outssTemp1,outssTemp2);

end architecture;

