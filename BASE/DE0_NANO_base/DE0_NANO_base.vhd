-- Arquivo Base

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY DE0_NANO_base IS -- Base entity
  PORT(
	CLOCK_50 : in std_logic;
	LED :	out	std_logic_vector(7 DOWNTO 0);
	SW : in std_logic_vector(3 DOWNTO 0);
	KEY : in std_logic_vector(1 DOWNTO 0);

-- GPIO_0
   GPIO_0_IN : in std_logic_vector(1 DOWNTO 0);
	GPIO_0 : out std_logic_vector(33 DOWNTO 0);

-- GPIO_1
   GPIO_1_IN : in std_logic_vector(1 DOWNTO 0);
	GPIO_1 : out std_logic_vector(33 DOWNTO 0)
	
);
END DE0_NANO_base;




-- Simples programa para piscar LED
architecture rtl of DE0_NANO_base is
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
	

end rtl;