
library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.fixed_pkg.all;         --arquivo deve ser adicionado ao projeto  
use ieee.numeric_std.all;


entity vfcontrol is
	generic  (
		 constant n_bits_c: integer := 16; --numero de bits da portadora
		 constant incMAX : std_logic_vector(12 downto 0) := std_logic_vector(to_unsigned(4832, 13)); -- Max INC for 60Hz
		 constant incMIN : std_logic_vector(12 downto 0) := std_logic_vector(to_unsigned(483, 13));  -- Min INC for 6Hz
		 constant mMAX : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(4832, 13)); -- Max modulation index 
		 constant mMIN : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(483, 13));  -- Min modulation index 
				);
				
		port( 
		 clk : in std_logic; -- clock
		 reset : in std_logic; -- reset
		 inc_data : out std_logic_vector(12 downto 0); -- incremento do integrador
		 m_vf : out std_logic_vector(15 downto 0) -- 
		 );	 
		 
 -- int_data = 4832 => 60 Hz	
	 -- 483 => 6 Hz	
end entity vfcontrol;


architecture vfcontrol_arch of vfcontrol is

   signal incsignal : std_logic_vector(12 downto 0); -- 13 bits signal
	signal msignal :  std_logic_vector(n_bits_c-1 downto 0); -- 16 bits signal

	
	begin  
	   process(clk)
			begin			
					if reset = '1' then
						incsignal <= incMIN; -- 483
						msignal <= mMIN;
					elsif rising_edge(clk) then	
					
						if incsignal < incMAX then
							incsignal <= out_int+int_data;							
						else
							out_int <= (others => '0');
							--sinc_int <= '1';
						end if;					
					
					
				else
					out_int <= (others => '0');
					--sinc_int <= (others => '0');
				end if;
		end process;
		
		out_data <= out_int; 
		sinc <= sinc_int;


end architecture vfcontrol_arch;