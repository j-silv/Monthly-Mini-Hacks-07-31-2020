library IEEE;
use IEEE.std_logic_1164.all;

entity comparator is 
	port(
		a : in std_logic_vector(25 downto 0);
		q : out std_logic	
	);
end entity comparator;

architecture logic of comparator is 
	constant MAX_CLK_CYCLES : std_logic_vector(25 downto 0) := "10111110101111000010000000";
	--the long binary number is 50 million in decimal
	--with a 50 MHz system clock, that gives a 1 Hz LED switching frequency
begin
	with a select
		q <= '1' when MAX_CLK_CYCLES,
			 '0' when others;
end architecture logic;