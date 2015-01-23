
-- Código obtido de https://elviseno.wordpress.com/2011/02/18/vhdl-code-generate-bridge-pwm-with-dead-band/
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;



entity deadtime is

port( 
    p_Pwm_In: in std_logic ;
    CLK: in std_logic ;
    p_Pwm1_Out: out std_logic ;
    p_Pwm2_Out: out std_logic);
end;

architecture deadtime_archetecture of deadtime is
signal sig_Not_Pwm_In: std_logic;
begin
    sig_Not_Pwm_In <= not p_Pwm_In;
    
    process (CLK)
        variable var_Dead_Count1: integer range 0 to 127 := 0;
        variable var_Dead_Count2: integer range 0 to 127 := 0;
        constant c_Dead_t : integer :=  15;
    begin
        if (CLK 'event and CLK = '1') then
            if (p_Pwm_In = '1') then
                if (var_Dead_Count1 < c_Dead_t) then
                    var_Dead_Count1 := var_Dead_Count1 + 1;
                else null;
                end if;
            else 
                var_Dead_Count1 := 0;
                p_Pwm1_Out <= p_Pwm_In;
            end if;
            
            if (var_Dead_Count1 = c_Dead_t) then
                p_Pwm1_Out <= p_Pwm_In;
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
                p_Pwm2_Out <= sig_Not_Pwm_In;
            end if;
            
            if (var_Dead_Count2 = c_Dead_t) then
                p_Pwm2_Out <= sig_Not_Pwm_In;
            else null;
            end if;
        end if;
    end process;
	 
	 
	 
end deadtime_archetecture;