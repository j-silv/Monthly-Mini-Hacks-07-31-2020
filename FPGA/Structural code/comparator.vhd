library IEEE;
use IEEE.std_logic_1164.all;
-- the std_logic_1164 package is the IEEE
-- standard for describing digital logic
-- values (std_logic and std_logic_vector types)

-- here is where we define the inputs/outputs of the comparator
entity comparator is 
	port(
		a : in std_logic_vector(25 downto 0);
		q : out std_logic	
	);
end entity comparator;

-- here is where we define the function performed by the comparator
architecture logic of comparator is 
	constant MAX_CLK_CYCLES : std_logic_vector(25 downto 0) := "10111110101111000010000000";
	-- the long binary number is 50 million in decimal
begin
	-- this with/select statement is similiar to the 
	-- C programming language's switch/case function
	with a select
		-- whenever the input vector (a) reaches 50 million, the output of 
		-- the comparator turns ON
		-- otherwise, the output is OFF
		q <= '1' when MAX_CLK_CYCLES,
			 '0' when others;
end architecture logic;

