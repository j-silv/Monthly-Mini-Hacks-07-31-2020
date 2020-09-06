library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 
-- the std_logic_1164 package is the IEEE
-- standard for describing digital logic
-- values (std_logic and std_logic_vector types)

-- the std_logic_unsigned package provides 
-- support for performing arithmetic functions 
-- with std_logic vectors (we will use vector addition)

-- here is where we define the inputs/outputs of the adder
entity adder is 
	port(
		a 	: in std_logic_vector(25 downto 0); 
		sum : out std_logic_vector(25 downto 0) 
	);
end entity adder;

-- here is where we define the function
-- performed by the adder
architecture logic of adder is
begin
	-- whenver input "a" changes, the sum will
	-- automatically change
	sum <= a + 1; 
end architecture logic;


