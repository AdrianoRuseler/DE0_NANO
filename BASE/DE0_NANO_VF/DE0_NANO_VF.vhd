-- Arquivo Base

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.all;

--arquivo deve ser adicionado ao projeto
USE ieee.fixed_pkg.all;       
USE work.my_types_pkg.all;


ENTITY DE0_NANO_VF IS -- Base entity
  GENERIC(
            constant N : integer := 3; -- Number of inverters in the same phase
	         constant Nin : integer := 13;  --numero de bits da parte inteira excluindo sinal de entrada
				constant Nout : integer := 30;  --numero de bits da parte inteira excluindo sinal de sada
				constant n_bits_phase : integer := 30;  --numero de bits que representa a fase da rede
			   constant n_bits_c: integer := 16;  --numero de bits da portadora
				constant TAM_MEM : integer := 32; -- tamanho da memoria (numero de palavras de 16 bits)
				constant NBITS_MEM_ADDRESS : integer := 6; --numero de bits de dendereco do banco de memoria (read do dsp)
				constant ID_MEM_DAC : integer := 28; --inicio do endereco de memoria destinado ao DAC conectado ao FPGA
				constant ID_MEM_SW1 : integer := 30; --inicio do endereco de memoria destinado ao DAC conectado ao FPGA
				constant I : integer := 1;  --número de bits da parte inteira excluindo sinal
				constant F : integer := 14 --número de bits da parte fracinária  
				);
  PORT(
	CLOCK_50 : in std_logic;
	LED :	out	std_logic_vector(7 DOWNTO 0);
	SW : in std_logic_vector(3 DOWNTO 0);
	KEY : in std_logic_vector(1 DOWNTO 0);

   -- GPIO_0
 --  GPIO_0_IN : in std_logic_vector(1 DOWNTO 0);
	
	-- Phase A
	RESET_FA : out std_logic_vector(N-1 DOWNTO 0);
	PWM1L_FA : out std_logic_vector(N-1 DOWNTO 0);
	PWM1H_FA : out std_logic_vector(N-1 DOWNTO 0);
	PWM2L_FA : out std_logic_vector(N-1 DOWNTO 0);
	PWM2H_FA : out std_logic_vector(N-1 DOWNTO 0);
	INT0_FA : in std_logic_vector(N-1 DOWNTO 0);
	
	-- Phase B
	RESET_FB : out std_logic_vector(N-1 DOWNTO 0);
	PWM1L_FB : out std_logic_vector(N-1 DOWNTO 0);
	PWM1H_FB : out std_logic_vector(N-1 DOWNTO 0);
	PWM2L_FB : out std_logic_vector(N-1 DOWNTO 0);
	PWM2H_FB : out std_logic_vector(N-1 DOWNTO 0);
	INT0_FB : in std_logic_vector(N-1 DOWNTO 0);
	
	
	-- Phase C
	RESET_FC : out std_logic_vector(N-1 DOWNTO 0);
	PWM1L_FC : out std_logic_vector(N-1 DOWNTO 0);
	PWM1H_FC : out std_logic_vector(N-1 DOWNTO 0);
	PWM2L_FC : out std_logic_vector(N-1 DOWNTO 0);
	PWM2H_FC : out std_logic_vector(N-1 DOWNTO 0);
	INT0_FC : in std_logic_vector(N-1 DOWNTO 0);
	
	
   GPIO_0 : out std_logic_vector(3 DOWNTO 0)

-- GPIO_1
-- GPIO_1_IN : in std_logic_vector(1 DOWNTO 0);
--	GPIO_1 : out std_logic_vector(9 DOWNTO 0)
	
);
END DE0_NANO_VF;




-- Simples programa para piscar LED
architecture MAIN of DE0_NANO_VF is


COMPONENT LEDs  -- LEDs
  PORT(
	CLOCK_50 : in std_logic;
	LED :	out	std_logic_vector(7 DOWNTO 0)
);
END COMPONENT;



-- 
component contador
	 port(
		clk : in std_logic; -- clock
		en : in std_logic; -- habilta modulo
		reset : in std_logic;
		sinc : out std_logic;
		count_max : in std_logic_vector(15 downto 0); -- estouro contagem
		count_ini : in std_logic_vector(15 downto 0); -- valor carregado ao contador no reset
		count_comp : in std_logic_vector(15 downto 0); -- valor comparacao
		count : out std_logic_vector(15 downto 0); -- valor contagem
		comp : out std_logic -- resultado comparacao
	);
end component;

--
component tabela_sin
	port(
		clk : in std_logic;
		theta: in std_logic_vector(15 downto 0);
		MAX :  in sfixed(15 downto 0); -- valor de contagem maximo
		ma : in sfixed(I downto -F); -- Indice de modulação em Q15
		va : out std_logic_vector(15 downto 0)
	);
end component;
		
-- 		
component pll
	port(
		areset		: IN STD_LOGIC  := '0';
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
		);
end component;
	


component integrador
	port(
		clk : in std_logic; -- clock
		en : in std_logic; -- habilita modulo tx
		reset : in std_logic; -- inicia transmissao (busy deve estar em '0')
		sinc : out std_logic;
		MAX :  in std_logic_vector(Nout-1 downto 0);
		out_data : out std_logic_vector(Nout-1 downto 0); -- data out 
		int_data : in std_logic_vector(Nin-1 downto 0) -- data in
		);
end component;
		
-- 	
component theta_abc
	port(
		clk : in std_logic; -- clock
		en : in std_logic; -- habilita modulo
		reset : in std_logic; -- 
		theta_a : out std_logic_vector(15 downto 0); -- data out 
		theta_b : out std_logic_vector(15 downto 0); -- data out 
		theta_c : out std_logic_vector(15 downto 0); -- data out 
		theta_in : in std_logic_vector(Nout-1 downto 0) -- data in
	);
end component;
	
--
component clk_div
	port(
		clk_in, en : in std_logic;
		div : in std_logic_vector(15 downto 0); -- f_out =  f_in/(2*div)
		clk_out: out std_logic
	);
end component; 
 
--
component portadora_tringular
	port(
		clk : in std_logic; -- clock
		en : in std_logic; -- habilita modulo
		reset : in std_logic; --
		count_ini : in std_logic_vector(15 downto 0); -- valor inicial da contagem
		dir_ini : in std_logic; -- direcao inicial da contagem 0: cresente ou 1: decrescente 
		MAX :  in std_logic_vector(15 downto 0); -- valor de contagem maximo
		dir : out std_logic; -- direcao atual 0: cresente ou 1: decrescente 
		c : out std_logic_vector(15 downto 0) -- data out 
	);
end component;

--
component fbpspwmdt
	port( 
		 clk : in std_logic; -- clock
		 en : in std_logic; -- habilta modulo
		 comp : in std_logic_vector(n_bits_c-1 downto 0); -- moduladora     
		 c : in std_logic_vector(n_bits_c-1 downto 0); -- portadora
		 amost :  in std_logic; -- amostra moduladora na borda de amost ????? 
		 port_PWM01 : out std_logic;
		 port_PWM02 : out std_logic		 
		 );	 
end component;

--
component vfcontrol
	port( 
		 clk : in std_logic; -- clock
		 en : in std_logic; -- enable
		 inc_data : out std_logic_vector(12 downto 0); -- incremento do integrador
		 m_vf : out  sfixed(I downto -F) -- Indice de modulação em Q15  
		 );	 
end component;


-- SIGNALS --- 
signal clk_pll, pll_lock, clk_wt : std_logic;
signal clk_int, clk_vf, clk_led : std_logic;
signal reset : std_logic;
	
	
signal th_a, th_b, th_c : std_logic_vector(15 downto 0); -- 
	 
signal sigPWM01,sigPWM02 : std_logic;
 
signal OSC_BUS1 : std_logic_vector(9 downto 0);
signal sinc_int, sinc_wt : std_logic;
signal pulso_key0, key0_ant : std_logic;
signal pulso_key1, key1_ant : std_logic;
signal toggle_key1, toggle_key0 : std_logic := '1';

signal rst : std_logic := '1';

-- comparadores
signal moduladoras : COMP_ARRAY;
signal portadoras : COMP_ARRAY;
signal amostragem_moduladoras : std_logic_vector(24 downto 1);
signal en_PWM,en_PWMA,en_PWMB,en_PWMC : std_logic := '1'; -- Enable all PWM by default
signal err_FA,err_FB,err_FC,err_FABC :std_logic;



signal sin_a, sin_b, sin_c : std_logic_vector(n_bits_c-1 downto 0);
signal ma, mb, mc : std_logic_vector(n_bits_c-1 downto 0);
signal mVF : sfixed(I downto -F);
signal incVF :  std_logic_vector(12 downto 0);

signal bidir : std_logic;

--PWM para indice de modulacao baixo
signal dirPWM1,dirPWM2,dirPWM3 : std_logic;
signal cPWM1,cPWM2,cPWM3 : std_logic_vector(15 downto 0);


signal dirTRI1,dirTRI2,dirTRI3,dirTRI4,dirTRI5,dirTRI6 : std_logic;
signal cTRI1,cTRI2,cTRI3,cTRI4,cTRI5,cTRI6 : std_logic_vector(15 downto 0);
        
      
signal omega_pll : std_logic_vector(Nin-1 downto 0);
signal theta_pll : std_logic_vector(Nout-1 downto 0);  
signal theta_wt : std_logic_vector(15 downto 0);  

begin
				
							
	--	PLL -> pll_lock = 53.333_ MHz	 
   upll: pll port map (areset => '0',
							inclk0 => CLOCK_50,
							c0 => clk_pll,
							locked => pll_lock 
							);
							
						
	--	clk_int = 6.666_ MHz					
	u1: clk_div port map (clk_in => clk_pll,
								en => '1',
								div => std_logic_vector(to_unsigned(4, 16)),
                        clk_out => clk_int
                        );		
								
		--	clk_vf = 217.45 Hz  -> 20 s					
	uclkVF: clk_div port map (clk_in => clk_int, -- 4349
								en => '1',
								div => std_logic_vector(to_unsigned(15329, 16)),  -- Divide clk por 2*div
                        clk_out => clk_vf
                        );		
																
											
		
	 -- int_data = 4832 => 60 Hz	
	 -- 483 => 6 Hz

uVF: vfcontrol port map( clk => clk_vf, -- clock
		 en => SW(3) and en_PWM, -- enable VF
		 inc_data => incVF,-- incremento do integrador
		 m_vf => mVF -- Indice de modulação em Q15  
		 );	
		 
	LED(3) <= SW(3);  -- 
	
	
	 
 u5: integrador port map(
										clk => clk_int, --	clk_int = 6.666_ MHz	
										en => '1',
										reset => rst,
										MAX => std_logic_vector(to_unsigned(536870911, 30)),
										sinc => sinc_int,
										out_data => theta_pll,
										int_data => incVF  -- Incremento do contador.
										--int_data => omega_pll
									);

							
-----------------   Portadoras Triangulares -----------------------------
    ucr1: portadora_tringular port map(
			clk => clk_pll, -- clock
			en => '1', -- habilita modulo
			reset => rst, --
			count_ini => std_logic_vector(to_unsigned( 0, 16)), -- valor inicial da contagem
			dir_ini => '0', -- direcao inicial da contagem 0: cresente ou 1: decrescente 
			MAX => std_logic_vector(to_unsigned( 1335, 16)), -- valor de contagem maximo
		--	dir =>  dirTRI1, -- direcao atual 0: cresente ou 1: decrescente 
			c => cTRI1 -- data out 
			);
			
	ucr2: portadora_tringular port map(
			clk => clk_pll, -- clock
			en => '1', -- habilita modulo
			reset => rst, --
			count_ini => std_logic_vector(to_unsigned( 1335, 16)), -- valor inicial da contagem
			dir_ini => '0', -- direcao inicial da contagem 0: cresente ou 1: decrescente 
			MAX => std_logic_vector(to_unsigned( 1335, 16)), -- valor de contagem maximo
		--	dir =>  dirTRI2, -- direcao atual 0: cresente ou 1: decrescente 
			c => cTRI2 -- data out 
			);
			
	ucr3: portadora_tringular port map(
			clk => clk_pll, -- clock
			en => '1', -- habilita modulo
			reset => rst, --
			count_ini => std_logic_vector(to_unsigned( 445, 16)), -- valor inicial da contagem
			dir_ini => '1', -- direcao inicial da contagem 0: cresente ou 1: decrescente 
			MAX => std_logic_vector(to_unsigned( 1335, 16)), -- valor de contagem maximo
		--	dir =>  dirTRI3, -- direcao atual 0: cresente ou 1: decrescente 
			c => cTRI3 -- data out 
			);
			
	ucr4: portadora_tringular port map(
			clk => clk_pll, -- clock
			en => '1', -- habilita modulo
			reset => rst, --
			count_ini => std_logic_vector(to_unsigned( 890, 16)), -- valor inicial da contagem
			dir_ini => '0', -- direcao inicial da contagem 0: cresente ou 1: decrescente 
			MAX => std_logic_vector(to_unsigned( 1335, 16)), -- valor de contagem maximo
		--	dir =>  dirTRI4, -- direcao atual 0: cresente ou 1: decrescente 
			c => cTRI4 -- data out 
			);
			
	ucr5: portadora_tringular port map(
			clk => clk_pll, -- clock
			en => '1', -- habilita modulo
			reset => rst, --
			count_ini => std_logic_vector(to_unsigned( 890, 16)), -- valor inicial da contagem
			dir_ini => '1', -- direcao inicial da contagem 0: cresente ou 1: decrescente 
			MAX => std_logic_vector(to_unsigned( 1335, 16)), -- valor de contagem maximo
		--	dir =>  dirTRI5, -- direcao atual 0: cresente ou 1: decrescente 
			c => cTRI5 -- data out 
			);		
	
   ucr6: portadora_tringular port map(
			clk => clk_pll, -- clock
			en => '1', -- habilita modulo
			reset => rst, --
			count_ini => std_logic_vector(to_unsigned( 445, 16)), -- valor inicial da contagem
			dir_ini => '0', -- direcao inicial da contagem 0: cresente ou 1: decrescente 
			MAX => std_logic_vector(to_unsigned( 1335, 16)), -- valor de contagem maximo Q0
		--	dir =>  dirTRI6, -- direcao atual 0: cresente ou 1: decrescente 
			c => cTRI6 -- data out 
			);
		


-- defasa theta para sistema trifasico								
	u6: theta_abc port map(
										clk => clk_int,
										en => '1',
										reset => rst,
										theta_a => th_a, -- signed
										theta_b => th_b,
										theta_c => th_c,  -- 16 bits
										theta_in => theta_pll -- 30 bits
									);
																
	-- acesso a tabelo de senos						
	usin_a: tabela_sin port map (clk => clk_pll,
					theta => th_a,
					MAX => to_sfixed(1335,15,0), -- valor de contagem maximo to_sfixed(1335,16,0); -- Converte para Q0
					ma => mVF, -- Indice de modulação do controle VF
					va => ma
					);						
	
	usin_b: tabela_sin port map (clk => clk_pll,
					theta => th_b,
					MAX => to_sfixed(1335,15,0), -- valor de contagem maximo
					ma => mVF, -- Indice de modulação do controle VF
					va => mb
					);		
	
	
	usin_c: tabela_sin port map (clk => clk_pll,
					theta => th_c,
					MAX => to_sfixed(1335,15,0), -- valor de contagem maximo
					ma => mVF, -- Indice de modulação do controle VF
					va => mc
					);			
	
		
-------  PWM ENABLE -------

err_FA <= INT0_FA(0) and INT0_FA(1) and INT0_FA(2); -- Ativo Baixo
err_FB <= INT0_FB(0) and INT0_FB(1) and INT0_FB(2); -- Ativo Baixo
err_FC <= INT0_FC(0) and INT0_FC(1) and INT0_FC(2); -- Ativo Baixo
err_FABC <= err_FA  and err_FB and err_FC;


LED(6) <= not err_FABC;
LED(7) <= en_PWM;

	---------------------------------------------------------------------------------------------------------------										
	process(err_FABC)
	begin
		if falling_edge(clk_pll) then
			if err_FABC = '0' then
				en_PWM <= '0';
			elsif KEY(0) = '0' and err_FABC = '1' then
				en_PWM <= '1';				
				
			end if;
		end if;
	end process;

		
					
----------  PHASE A  -------------------	
	
	  en_PWMA<=SW(0);
	  LED(0)<=en_PWMA;
	  

PWM1_FA01 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMA and en_PWM, -- habilta modulo
		 comp  => ma, -- moduladora     
		 c => cTRI1, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM1H_FA(0) , -- PWM1_LOW
		 port_PWM02 => PWM1L_FA(0)	 --PWM1_HIGH
		 );	 
		
PWM2_FA01 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMA and en_PWM, -- habilta modulo
		 comp  => ma, -- moduladora     
		 c => cTRI2, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM2L_FA(0), -- PWM2_HIGH
		 port_PWM02 => PWM2H_FA(0)	 -- PWM2_LOW
		 );			


PWM1_FA02 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMA and en_PWM, -- habilta modulo
		 comp  => ma, -- moduladora     
		 c => cTRI1, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM1H_FA(1), -- PWM1_LOW
		 port_PWM02 => PWM1L_FA(1)	 --PWM1_HIGH
		 );	 
		
PWM2_FA02 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMA and en_PWM, -- habilta modulo
		 comp  => ma, -- moduladora     
		 c => cTRI2, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM2L_FA(1), -- PWM2_HIGH
		 port_PWM02 => PWM2H_FA(1)	 -- PWM2_LOW
		 );					 
		 
		 

PWM1_FA03 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMA and en_PWM, -- habilta modulo
		 comp  => ma, -- moduladora     
		 c => cTRI1, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM1H_FA(2) , -- PWM1_LOW
		 port_PWM02 => PWM1L_FA(2)	 --PWM1_HIGH
		 );	 
		
PWM2_FA03 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMA and en_PWM, -- habilta modulo
		 comp  => ma, -- moduladora     
		 c => cTRI2, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM2L_FA(2), -- PWM2_HIGH
		 port_PWM02 => PWM2H_FA(2)	 -- PWM2_LOW
		 );							 
		 
----------  PHASE B -------------------	
    en_PWMB<=SW(1);
	  LED(1)<=en_PWMB;
	  


PWM1_FB01 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMB and en_PWM, -- habilta modulo
		 comp  => mb, -- moduladora     
		 c => cTRI3, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM1H_FB(0) , -- PWM1_LOW
		 port_PWM02 => PWM1L_FB(0)	 --PWM1_HIGH
		 );	 
		
PWM2_FB01 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMB and en_PWM, -- habilta modulo
		 comp  => mb, -- moduladora     
		 c => cTRI4, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM2L_FB(0), -- PWM2_HIGH
		 port_PWM02 => PWM2H_FB(0)	 -- PWM2_LOW
		 );			


PWM1_FB02 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMB and en_PWM, -- habilta modulo
		 comp  => mb, -- moduladora     
		 c => cTRI3, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM1H_FB(1) , -- PWM1_LOW
		 port_PWM02 => PWM1L_FB(1)	 --PWM1_HIGH
		 );	 
		
PWM2_FB02 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMB and en_PWM, -- habilta modulo
		 comp  => mb, -- moduladora     
		 c => cTRI4, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM2L_FB(1), -- PWM2_HIGH
		 port_PWM02 => PWM2H_FB(1)	 -- PWM2_LOW
		 );					 
		 
		 

PWM1_FB03 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMB and en_PWM, -- habilta modulo
		 comp  => mb, -- moduladora     
		 c => cTRI3, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM1H_FB(2) , -- PWM1_LOW
		 port_PWM02 => PWM1L_FB(2)	 --PWM1_HIGH
		 );	 
		
PWM2_FB03 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMB and en_PWM, -- habilta modulo
		 comp  => mb, -- moduladora     
		 c => cTRI4, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM2L_FB(2), -- PWM2_HIGH
		 port_PWM02 => PWM2H_FB(2)	 -- PWM2_LOW
		 );							 
		 
		 
		 
		 
----------  PHASE C -------------------	
     en_PWMC<=SW(2);
	  LED(2)<=en_PWMC;


PWM1_FC01 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMC and en_PWM, -- habilta modulo
		 comp  => mc, -- moduladora     
		 c => cTRI5, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM1H_FC(0) , -- PWM1_LOW
		 port_PWM02 => PWM1L_FC(0)	 --PWM1_HIGH
		 );	 
		
PWM2_FC01 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMC and en_PWM, -- habilta modulo
		 comp  => mc, -- moduladora     
		 c => cTRI6, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM2L_FC(0), -- PWM2_HIGH
		 port_PWM02 => PWM2H_FC(0)	 -- PWM2_LOW
		 );			


PWM1_FC02 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMC and en_PWM, -- habilta modulo
		 comp  => mc, -- moduladora     
		 c => cTRI5, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM1H_FC(1) , -- PWM1_LOW
		 port_PWM02 => PWM1L_FC(1)	 --PWM1_HIGH
		 );	 
		
PWM2_FC02 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMC and en_PWM, -- habilta modulo
		 comp  => mc, -- moduladora     
		 c => cTRI6, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM2L_FC(1), -- PWM2_HIGH
		 port_PWM02 => PWM2H_FC(1)	 -- PWM2_LOW
		 );					 
		 
		 

PWM1_FC03 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMC and en_PWM, -- habilta modulo
		 comp  => mc, -- moduladora     
		 c => cTRI5, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM1H_FC(2) , -- PWM1_LOW
		 port_PWM02 => PWM1L_FC(2)	 --PWM1_HIGH
		 );	 
		
PWM2_FC03 : fbpspwmdt -- One leg of the Full Bridge
	port map( 
		 clk => clk_pll, -- clock
		 en => en_PWMC and en_PWM, -- habilta modulo
		 comp  => mc, -- moduladora     
		 c => cTRI6, -- portadora
		 amost => clk_pll, -- amostra moduladora na borda de amost
		 port_PWM01  => PWM2L_FC(2), -- PWM2_HIGH
		 port_PWM02 => PWM2H_FC(2)	 -- PWM2_LOW
		 );							 

 
		 
process(clk_pll)
		 begin
			 if falling_edge(clk_pll) then
				rst<='0';		 
			 end if;		 
		 end process;
		 
		 

end MAIN;