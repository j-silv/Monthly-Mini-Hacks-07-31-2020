library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 
--std_logic_unsigned is a library package defined for VHDL. 
--it provides arithmetic functions for vectors (our code performs vector addition)

entity adder is 
	port(		
		a 	: in std_logic_vector(25 downto 0); 
		sum : out std_logic_vector(25 downto 0) 
	);

end entity adder;

architecture logic of adder is
begin
	sum <= a + 1; 
end architecture logic;