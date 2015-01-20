library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_1164.all;
use ieee.fixed_pkg.all; 
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;         --arquivo deve ser adicionado ao projeto  

entity theta_abc is
generic  (constant Nin : integer := 30;  --numero de bits da parte inteira excluindo sinal de entrada
			 constant Nout : integer := 16  --numero de bits da parte inteira excluindo sinal de sada
         );
	port(
			clk : in std_logic; -- clock
			en : in std_logic; -- habilita modulo
			reset : in std_logic; -- 
			theta_a : out std_logic_vector(Nout-1 downto 0); -- data out 
			theta_b : out std_logic_vector(Nout-1 downto 0); -- data out 
			theta_c : out std_logic_vector(Nout-1 downto 0); -- data out 
			theta_in : in std_logic_vector(Nin-1 downto 0) -- data in
			);
			
end entity theta_abc;


architecture theta_abc of theta_abc is
    
	signal th_a, th_b, th_c : std_logic_vector(Nout-1 downto 0);
	signal th_ai, th_bi, th_ci : std_logic_vector(Nout downto 0);

	
	begin  

	   process(clk)
			begin
				if en = '1' then
					if reset = '1' then
						th_a <= (others => '0');
						th_b <= (others => '0');
						th_c <= (others => '0');
					elsif rising_edge(clk) then
						th_ai <= std_logic_vector(signed(signed(theta_in(Nin-1 downto Nin-Nout-1)) +to_signed(-32767,17)));
						th_bi <= std_logic_vector(signed(signed(theta_in(Nin-1 downto Nin-Nout-1)) +to_signed(-10922,17)));
						th_ci <= std_logic_vector(signed(signed(theta_in(Nin-1 downto Nin-Nout-1)) +to_signed(10922,17)));
						
						th_a <= th_ai(Nout-1 downto 0);
						th_b <= th_bi(Nout-1 downto 0);
						th_c <= th_ci(Nout-1 downto 0);
					end if;
				else
					th_a <= (others => '0');
					th_b <= (others => '0');
					th_c <= (others => '0');
				end if;
		end process;
		
		theta_a <= th_a; 
		theta_b <= th_b; 
		theta_c <= th_c; 
end architecture theta_abc;