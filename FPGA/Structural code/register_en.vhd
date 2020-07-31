library IEEE;
use IEEE.std_logic_1164.all;

entity register_en is
	port(
		d,en,clk : in std_logic;
		q : out std_logic := '0' 
		--we want the LED_STATE signal to start LOW
	);
end entity register_en;

architecture logic of register_en is	
begin
	process(clk)
	begin
		if rising_edge(clk) then
			--this is a synchronous enable DFF
			--it only checks the state of the enable pin when there is a rising clock edge
			if (en = '1') then 
				q <= d;
			end if;
		end if;
	end process;
end architecture logic;