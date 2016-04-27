library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity contador is
generic  (
			 constant n_bits : integer :=16  --n�mero de bits do contador
         );
	port(
			clk : in std_logic; -- clock
			en : in std_logic; -- habilta modulo
			reset : in std_logic;
			sinc : out std_logic;
			count_max : in std_logic_vector(n_bits-1 downto 0); -- estouro contagem
			count_ini : in std_logic_vector(n_bits-1 downto 0); -- valor carregado ao contador no reset
			count_comp : in std_logic_vector(n_bits-1 downto 0); -- valor comparacao
			count : out std_logic_vector(n_bits-1 downto 0); -- valor contagem
			comp : out std_logic -- resultado comparacao
			);
			
end entity contador;


architecture contador of contador is

   signal count_int : std_logic_vector(n_bits-1 downto 0);
	
	begin  

	   process(clk)
			begin
				if en = '1' then
					if reset = '1' then
						count_int <= count_ini;
					elsif rising_edge(clk) then
						if count_int < count_max then
							count_int <= count_int+1;
							sinc <= '0';
						else
						   sinc <= '1';
							count_int <= (others=> '0');
						end if;
						if count_int > count_comp then
							comp <= '1';
						else
							comp <= '0';
						end if;
					end if;
				end if;
		end process;
		
count <= count_int;
		
end architecture contador;