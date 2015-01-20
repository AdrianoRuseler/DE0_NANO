-- Arquivo Base

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY DE0_NANO_PWM IS -- Base entity
  GENERIC(
            constant N : integer := 3; -- Number of inverters in the same phase
	         constant Nin : integer := 13;  --numero de bits da parte inteira excluindo sinal de entrada
				constant Nout : integer := 30;  --numero de bits da parte inteira excluindo sinal de sada
				constant n_bits_phase : integer := 30;  --numero de bits que representa a fase da rede
			   constant n_bits_c: integer := 22;  --numero de bits da portadora
				constant TAM_MEM : integer := 32; -- tamanho da memoria (numero de palavras de 16 bits)
				constant NBITS_MEM_ADDRESS : integer := 6; --numero de bits de dendereco do banco de memoria (read do dsp)
				constant ID_MEM_DAC : integer := 28; --inicio do endereco de memoria destinado ao DAC conectado ao FPGA
				constant ID_MEM_SW1 : integer := 30 --inicio do endereco de memoria destinado ao DAC conectado ao FPGA
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
	INT0_FC : in std_logic_vector(N-1 DOWNTO 0)
	
	
--   GPIO_0 : out std_logic_vector(3 DOWNTO 0);

-- GPIO_1
-- GPIO_1_IN : in std_logic_vector(1 DOWNTO 0);
--	GPIO_1 : out std_logic_vector(9 DOWNTO 0)
	
);
END DE0_NANO_PWM;




-- Simples programa para piscar LED
architecture MAIN of DE0_NANO_PWM is

-- 
COMPONENT sinewave 
	port(
		clk :in  std_logic;
		dataout : out integer range -128 to 127
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
		va : out std_logic_vector(15 downto 0)
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
component comparador
	port(
		clk : in std_logic; -- clock
		en : in std_logic; -- habilta modulo
		comp : in std_logic_vector(15 downto 0); -- moduladora     
		c : in std_logic_vector(15 downto 0); -- portadora
		amost :  in std_logic; -- amostra moduladora na borda de amost
		comp_out : out std_logic
	);
end component;




	

	constant CLK_FREQ : integer := 50000000; -- 50 MHz
	constant BLINK_FREQ : integer := 1;
	constant CNT_MAX : integer := CLK_FREQ/BLINK_FREQ/2-1;
	signal cnt : unsigned(24 downto 0);
	signal blink : std_logic;
begin
	process(CLOCK_50)
	begin
		if rising_edge(CLOCK_50) then
			if cnt=CNT_MAX then
				cnt <= (others => '0');
				blink <= not blink;
			else
				cnt <= cnt + 1;
			end if;
		end if;
	end process;
	
	LED(0) <= blink;
	LED(1) <= not blink;
	
	LED(2) <= SW(0);
	LED(3) <= SW(1);
	LED(4) <= SW(2);
	LED(5) <= SW(3);
	
	LED(6) <= not KEY(0);
	LED(7) <= not KEY(1);

end MAIN;