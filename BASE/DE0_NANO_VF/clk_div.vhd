library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_1164.all;

entity clk_div is
		port(
		clk_in, en : IN STD_LOGIC;
		div : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --f_out =  f_in/(2*div)
		clk_out: OUT STD_LOGIC
	);
END ENTITY clk_div;

ARCHITECTURE div OF clk_div IS	
	SIGNAL count : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL clk_out_bi : STD_LOGIC;
BEGIN  

	PROCESS(clk_in,en,div)
		BEGIN
			IF en = '0' THEN
				--count <= (OTHERS => '0');
				count <= (div-1);
				clk_out_bi <= '0';
			ELSIF rising_edge(clk_in) THEN
			IF count < (div - 1)  THEN
					count <= count + 1;
				ELSE
					count <= (OTHERS => '0'); 
					clk_out_bi <= NOT clk_out_bi;
				END IF;
			END IF;
			
		END PROCESS;
		clk_out <= clk_out_bi;
		 
END ARCHITECTURE div;