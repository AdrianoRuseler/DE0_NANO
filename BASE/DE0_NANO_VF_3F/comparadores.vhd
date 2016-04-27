library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_1164.all;
use ieee.fixed_pkg.all;         --arquivo deve ser adicionado ao projeto  
use ieee.numeric_std.all;
use work.my_types_pkg.all;


--comunicacao com submodulos
--
-- conexao hardware:
--   out -> 24 sinais de TX UART (8 bits)
--   in  -> 24 sinais de RX UART (9 bits)
--
-- mode:
--   RUN   -> transmite sinais PWM nos sinais TX e envia dados de medicao de tensao dos modulos para a memoria compartilhado com DSP
--	  STOP  ->

entity comparadores is
generic  (constant MAX : integer := 3526000;
			 constant n_bits_c: integer := 22  --numero de bits da portadora
         );
	port(
			clk : in std_logic; -- clock
			en : in std_logic; -- habilta modulo
			comp : in COMP_ARRAY; -- moduladora     
			c : in COMP_ARRAY; -- portadora
			amost :  in std_logic_vector(24 downto 1); -- amostra moduladora na borda se subida de c_sinc
		   comp_out : out std_logic_vector(24 downto 1)
			);	
end entity comparadores;


architecture comparadores of comparadores is
	
	component comparador
		port(
			clk : in std_logic; -- clock
			en : in std_logic; -- habilta modulo
			comp : in std_logic_vector(n_bits_c-1 downto 0); -- moduladora     
			c : in std_logic_vector(n_bits_c-1 downto 0); -- portadora
			amost :  in std_logic; -- amostra moduladora na borda se subida de c_sinc
		   comp_out : out std_logic
			);
	end component;
	


	
	begin  

	t: for i in 1 to 24 generate
		u: comparador port map(
										clk => clk,
										en => en,
										comp => comp(i),
										amost => amost(i),
										c => c(i),
										comp_out =>  comp_out(i)
										);
	end generate t;
		

end architecture comparadores;