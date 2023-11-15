library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity Clock_Divider is
	port ( clk: in std_logic;
		clock_out: out std_logic);
end Clock_Divider;
  
architecture bhv of Clock_Divider is
  
	signal count: integer:=1;
	signal tmp : std_logic := '0';
  
begin
  
	process(clk)
	begin
		
		if(clk'event and clk='1') then
			count <=count+1;
			if (count = 2) then -- usar 2500000 na FPGA
				tmp <= NOT tmp;
				count <= 1;
			end if;
		end if;
		clock_out <= tmp;
	end process;
  
end bhv;


