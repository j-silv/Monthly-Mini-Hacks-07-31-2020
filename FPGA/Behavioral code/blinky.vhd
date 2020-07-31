library IEEE;
use IEEE.std_logic_1164.all;

entity blinky is 
	port ( 
		clk: in std_logic; 
		led_state: out std_logic 
	); 
end entity blinky;

architecture logic of blinky is 
	constant MAX_CLK_CYCLES : integer := 50000000;
	signal temp_led_state: std_logic := '0'; 
begin
	process(clk)
		variable count_clk : integer range 0 to MAX_CLK_CYCLES; 
	begin 
		if (rising_edge(clk)) then 
			if (count_clk = MAX_CLK_CYCLES) then 
				--reset the internal counter
				count_clk := 0; 
				--switch LED state
				temp_led_state <= not temp_led_state; 
			else 
				count_clk := count_clk + 1; 
			end if; 
		end if;
	end process; 
	
	--necessary, otherwise the output signal won't be updated after the process
	led_state <= temp_led_state; 
	
end architecture logic;