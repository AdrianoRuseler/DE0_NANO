
library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_1164.all;
use ieee.fixed_pkg.all;         --arquivo deve ser adicionado ao projeto  
use ieee.numeric_std.all;

entity comparador is
generic  (
			 constant n_bits_c: integer := 16  --n�mero de bits da portadora
         );
	port(
			clk : in std_logic; -- clock
			en : in std_logic; -- habilta modulo
			comp : in std_logic_vector(n_bits_c-1 downto 0); -- moduladora     
			c : in std_logic_vector(n_bits_c-1 downto 0); -- portadora
			amost :  in std_logic; -- amostra moduladora na borda de amost
		   comp_out : out std_logic
			);
			
end entity comparador;


architecture comparador of comparador is
    

	signal comp_int : std_logic_vector(n_bits_c-1 downto 0); -- data out 


	
	begin  
	   process(clk)
			begin
				if en = '0' then
					comp_out <= '0';
				elsif falling_edge(clk) then
					if (comp_int > c) then
						comp_out <= '0';
					else
						comp_out <= '1';
					end if;
				end if;
		end process;
		
		process(amost)
		begin
			if rising_edge(amost) then
				comp_int <= comp;
			end if;
		end process;


end architecture comparador;