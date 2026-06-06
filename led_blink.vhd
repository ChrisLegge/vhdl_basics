library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity led_blink is
	port(
		CLOCK_50 : in std_logic;
		LEDR		: out std_logic_vector(9 downto 0)
	);
end entity led_blink;

architecture rtl of led_blink is
	signal counter : unsigned(24 downto 0) := (others => '0');
	signal blink	: std_logic := '0';
begin

	process(CLOCK_50)
	begin
		if rising_edge(CLOCK_50) then
			if counter = 24_999_999 then
				counter <= (others => '0');
				blink	  <= not blink;
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;

	LEDR <= (0 => blink, others => '0');
end architecture rtl;