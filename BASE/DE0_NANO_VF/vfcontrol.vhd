
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
		 constant I : integer := 1;  --número de bits da parte inteira excluindo sinal
		 constant F : integer := 14; --número de bits da parte fracinária  
		 constant mMAX : sfixed(1 downto -27) := to_sfixed(0.8137,  1, -27); -- Max modulation index 
		 constant mMIN : sfixed(1 downto -27) := to_sfixed(0.08137,  1, -27)  -- Min modulation index 
				);
				
		port( 
		 clk : in std_logic; -- clock
		 en : in std_logic; -- reset
		 inc_data : out std_logic_vector(12 downto 0); -- incremento do integrador
		 m_vf : out sfixed(I downto -F) -- 
		 );	 
		 
 -- int_data = 4832 => 60 Hz	 Delta = 4349 Dm= 0.73233
	 -- 483 => 6 Hz	
end entity vfcontrol;


architecture vfcontrol_arch of vfcontrol is

   signal incsignal : std_logic_vector(12 downto 0) := std_logic_vector(to_unsigned(0, 13)); -- 13 bits signal
	signal msignal :  sfixed(1 downto -27) := to_sfixed(0.08137,  1, -27); -- 16 bits signal
	signal incstep : std_logic_vector(12 downto 0) := std_logic_vector(to_unsigned(1, 13));  -- data inc step
	signal mstep :  sfixed(1 downto -27) := to_sfixed(1.6839e-04,  1, -27); -- 16 bits signal

	
	begin  
	   process(clk)
			begin			
					if en = '0' then
						incsignal <= incMIN; -- 483
						msignal <= mMIN; -- 0.08137 
						
					elsif rising_edge(clk) then						
						if incsignal(12 downto 0) < incMAX(12 downto 0) then
							incsignal <= incsignal+incstep; -- data inc step	
							msignal <= resize((msignal + mstep),1,-27);
						else
							incsignal <= incMAX; -- 4832 
						   msignal <= mMAX; -- 0.8137 
						end if;	
				  end if;
				  
		 end process;
		
	    inc_data <= incsignal; -- incremento do integrador
		 m_vf <= resize(msignal,1,-14); -- Indice de Modulação
		 
		

end architecture vfcontrol_arch;