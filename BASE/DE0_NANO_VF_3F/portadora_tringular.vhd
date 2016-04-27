library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_1164.all;
use ieee.fixed_pkg.all;         --arquivo deve ser adicionado ao projeto  

entity portadora_tringular is
generic  (constant N : integer := 16  --numero de bitsa
         );
	port(
			clk : in std_logic; -- clock
			en : in std_logic; -- habilita modulo
			reset : in std_logic; --
			count_ini : in std_logic_vector(N-1 downto 0); -- valor inicial da contagem
			dir_ini : in std_logic; -- direcao inicial da contagem 0: cresente ou 1: decrescente 
			MAX :  in std_logic_vector(N-1 downto 0); -- valor de contagem maximo
			dir : out std_logic; -- direcao atual 0: cresente ou 1: decrescente 
			c : out std_logic_vector(N-1 downto 0) -- data out 
			);
			
end entity portadora_tringular;


architecture portadora_tringular of portadora_tringular is
    
	signal c_int : std_logic_vector(N-1 downto 0);
	signal dir_int : std_logic;

	
	begin  

	   process(clk)
			begin
				if en = '1' then
					if reset = '1' then
						c_int <= count_ini;
						dir_int <= dir_ini;
					elsif rising_edge(clk) then
						if c_int > (MAX-1) then
							dir_int <= '1';
							c_int <= c_int - 1;
						elsif c_int < 1 then
							dir_int <= '0';
							c_int <= c_int + 1;
						elsif dir_int = '0' then
							c_int <= c_int + 1;
						else
							c_int <= c_int - 1;
						end if;
					end if;
				else
					c_int <= count_ini;
					dir_int <= dir_ini;
				end if;
		end process;
		
		c <= c_int; 
		dir <= dir_int;
end architecture portadora_tringular;