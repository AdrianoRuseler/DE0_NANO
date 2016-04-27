library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_1164.all;
use ieee.fixed_pkg.all;         --arquivo deve ser adicionado ao projeto    16 bits 0 to 65535

-- 16 bits 0 to 65535

entity wt is
generic  (
			 constant Nbits : integer := 16  -- numero de bits 
         );
	port(
			clk : in std_logic; -- clock
			en : in std_logic; -- habilita modulo
			reset : in std_logic; -- 
			sinc : out std_logic;
			MAX :  in std_logic_vector(Nbits-1 downto 0);
			out_data : out std_logic_vector(Nbits-1 downto 0); -- data out  
			int_data : in std_logic_vector(Nbits-1 downto 0) -- data in
			);
			
end entity wt;


architecture wt_arch of wt is
    
	signal out_int : std_logic_vector(Nbits-1 downto 0);
	signal sinc_int : std_logic;

	
	begin  

	   process(clk)
			begin
				if en = '1' then
				
					if reset = '1' then
						out_int <= (others => '0');
						sinc_int <= '0';
					elsif rising_edge(clk) then
						if out_int < MAX then
							out_int <= out_int+int_data;
							--sinc_int <= '0';
							if out_int(Nbits-2 downto 0) < MAX(Nbits-1 downto 1) then
								sinc_int <= '0';
							else
								sinc_int <= '1';
							end if;
						else
							out_int <= (others => '0');
							--sinc_int <= '1';
						end if;
					end if;					
				else
					out_int <= (others => '0');
					--sinc_int <= (others => '0');
				end if;
		end process;
		
		out_data <= out_int; 
		sinc <= sinc_int;
end architecture wt_arch;