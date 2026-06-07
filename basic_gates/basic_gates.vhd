library ieee;
use ieee.std_logic_1164.all;

entity basic_gates is
	port (
		SW	  : in std_logic_vector(3 downto 0);
		LEDR : out std_logic_vector(3 downto 0)
	);
end entity basic_gates;

architecture rtl of basic_gates is
begin
	LEDR(0) <= SW(0) and SW(1);
	LEDR(1) <= SW(0) or SW(1);
	LEDR(2) <= not SW(0);
	LEDR(3) <= SW(0) xor SW(1);
end architecture rtl;
