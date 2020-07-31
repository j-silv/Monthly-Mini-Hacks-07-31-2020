library IEEE;
use IEEE.std_logic_1164.all;

entity register_rst is
	port(	
		d		: in std_logic_vector(25 downto 0); 
		rst,clk	: in std_logic;		
		q		: out std_logic_vector(25 downto 0) := (others => '0')
		--"others => '0'" is shorthand for setting all the bits of the vector q to 0	
	);
end entity register_rst;

architecture logic of register_rst is	
begin
	process(clk)
	begin
		if rising_edge(clk) then
			--this is a synchronous reset DFF
			--it only checks the state of the reset pin when there is a rising clock edge
			if (rst = '0') then
				q <= d;
			else
				q <= (others => '0');
			end if;
		end if;	
	end process;
end architecture logic;