
-- FBPSPWMDT Full Bridge Phase Shift PWM with Dead Time

library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_1164.all;
use ieee.fixed_pkg.all;         --arquivo deve ser adicionado ao projeto  
use ieee.numeric_std.all;


entity fbpspwmdt is
	generic  (
		 constant n_bits_c: integer := 16; --numero de bits da portadora
		 constant c_Dead_t : integer :=  45		
				);
	port( 
		 clk : in std_logic; -- clock
		 en : in std_logic; -- habilta modulo
		 comp : std_logic_vector(n_bits_c-1 downto 0);-- Razão ciclica em Q0  
		 c : in std_logic_vector(n_bits_c-1 downto 0); -- portadora
		 amost :  in std_logic; -- amostra moduladora na borda de amost 
		 port_PWM01 : out std_logic;
		 port_PWM02 : out std_logic		 
		 );	 
end entity fbpspwmdt;


-- slv7 <= to_slv (uf7_3);


architecture fbpspwmdt_arch of fbpspwmdt is
    

	signal comp_int : std_logic_vector(n_bits_c-1 downto 0); -- data out 
   signal sig_Not_Pwm_In: std_logic;
   signal comp_out : std_logic;
	signal p_Pwm_In: std_logic ;		
	
	
	
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
		
		
		p_Pwm_In <= comp_out;
		sig_Not_Pwm_In <= not p_Pwm_In;
		
		
		process (clk)
        variable var_Dead_Count1: integer range 0 to 127 := 0;
        variable var_Dead_Count2: integer range 0 to 127 := 0;
     
    begin
	    if en = '0' then
					port_PWM01 <= '0';
					port_PWM02 <= '0';
				elsif (clk 'event and clk = '1') then
            if (p_Pwm_In = '1') then
                if (var_Dead_Count1 < c_Dead_t) then
                    var_Dead_Count1 := var_Dead_Count1 + 1;
                else null;
                end if;
            else 
                var_Dead_Count1 := 0;
                port_PWM01 <= p_Pwm_In;
            end if;
            
            if (var_Dead_Count1 = c_Dead_t) then
                port_PWM01 <= p_Pwm_In;
            else null;
            end if;
-----------------------------------
            if (sig_Not_Pwm_In = '1') then
                if (var_Dead_Count2 < c_Dead_t) then
                    var_Dead_Count2 := var_Dead_Count2 + 1;
                else null;
                end if;
            else 
                var_Dead_Count2 := 0;
                port_PWM02 <= sig_Not_Pwm_In;
            end if;
            
            if (var_Dead_Count2 = c_Dead_t) then
                port_PWM02 <= sig_Not_Pwm_In;
            else null;
            end if;
        end if;
    end process;		
		

end architecture fbpspwmdt_arch;