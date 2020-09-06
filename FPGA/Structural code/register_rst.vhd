library IEEE;
use IEEE.std_logic_1164.all;
-- the std_logic_1164 package is the IEEE
-- standard for describing digital logic
-- values (std_logic and std_logic_vector types)

-- here is where we define the inputs/outputs of
-- the DFF w/reset
entity register_rst is
	port(	
		d		: in std_logic_vector(25 downto 0); 
		rst,clk	: in std_logic;		
		q		: out std_logic_vector(25 downto 0) := (others => '0')
		-- "others => '0'" is a succinct way
		-- to set the bits of a vector to 0	
	);
end entity register_rst;

-- here is where we define the function 
-- performed by the DFF w/reset
architecture logic of register_rst is	
begin
	-- this block of code infers a register
	process(clk)
	begin
		-- this is a synchronous reset DFF
		-- it only checks the state of the reset pin 
		-- when the clock input transistions 
		-- from low to high
		if rising_edge(clk) then
			-- if the reset signal is off
			-- copy the input to the output
			if (rst = '0') then
				q <= d;
			-- otherwise, set all of the output bits to 0
			else
				q <= (others => '0');
			end if;
		end if;	
	end process;
end architecture logic;