


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY LEDs IS -- Base entity
  PORT(
	CLOCK_50 : in std_logic;
	LED :	out	std_logic_vector(7 DOWNTO 0);
	SW : in std_logic_vector(3 DOWNTO 0);
	KEY : in std_logic_vector(1 DOWNTO 0)
);
END LEDs;




-- Simples programa para piscar LED
architecture LEDs of LEDs is
	constant CLK_FREQ : integer := 50000000; -- 50 MHz
	constant BLINK_FREQ : integer := 1;
	constant CNT_MAX : integer := CLK_FREQ/BLINK_FREQ/2-1;
	signal cnt : unsigned(24 downto 0);
	signal blink : std_logic;
begin
	process(CLOCK_50)
	begin
		if rising_edge(CLOCK_50) then
			if cnt=CNT_MAX then
				cnt <= (others => '0');
				blink <= not blink;
			else
				cnt <= cnt + 1;
			end if;
		end if;
	end process;
	
	LED(0) <= blink;
	LED(1) <= not blink;
	
	LED(2) <= SW(0);
	LED(3) <= SW(1);
	LED(4) <= SW(2);
	LED(5) <= SW(3);
	
	LED(6) <= not KEY(0);
	LED(7) <= not KEY(1);	

end LEDs;



	
	
	