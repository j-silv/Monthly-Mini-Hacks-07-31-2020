library IEEE;
use IEEE.std_logic_1164.all;
-- the std_logic_1164 package is the IEEE
-- standard for describing digital logic
-- values (std_logic and std_logic_vector types)

-- here is where we define the inputs/outputs of
-- the DFF w/enable
entity register_en is
	port(
		-- because d, en, and clk are of the same
		-- digital logic type, we can define them 
		-- all at once by using commas
		d,en,clk : in std_logic;
		q : out std_logic := '0' 
		-- the LED_STATE signal will be initialized
		-- to LOW
	);
end entity register_en;

-- here is where we define the function 
-- performed by the DFF w/enable
architecture logic of register_en is	
begin
	-- this block of code infers a register
	process(clk)
	begin
		-- this is a synchronous enable DFF
		-- it only checks the state of the enable pin 
		-- when the clock input transistions 
		-- from low to high
		if rising_edge(clk) then
			-- if the enable signal is on
			-- copy the input to the output
			if (en = '1') then 
				q <= d;
			end if;
		end if;
	end process;
end architecture logic;

