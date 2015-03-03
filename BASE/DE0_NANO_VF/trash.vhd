

	
			
			
 /*u2comp: comparador port map(
			clk => clk_pll, -- clock
			en => '1', -- habilta modulo
			comp => std_logic_vector(to_unsigned(267, 16)), -- moduladora     
			c => cPWM2, -- portadora
			amost => clk_pll, -- amostra moduladora na borda de amost
		   comp_out => GPIO_0(2)
			);
		
	*/

/*	
					
	--	led indica frequencia da fundamental				
	uled: clk_div port map (clk_in => sinc_int,
								en => '1',
								div => std_logic_vector(to_unsigned(6, 16)),
                        clk_out => LED(0)
								--clk_out => GPIO_0(2)
                        );	
	*/							



				

	ucomp: comparador port map(
			clk => clk_pll, -- clock
			en => '1', -- habilta modulo
			comp => std_logic_vector(to_unsigned(267, 16)), -- moduladora     
			c => cTRI1, -- portadora
			amost => clk_pll, -- amostra moduladora na borda de amost
		   comp_out => sigPWM01
			);
			
			
	
deadcomp : deadtime port map( 
    p_Pwm_In  => sigPWM01,
    CLK => clk_pll, -- clock
    p_Pwm1_Out => GPIO_0(0),
    p_Pwm2_Out => GPIO_0(1)
     );		



								
	-- defasa theta para sistema trifasico								
	u6: theta_abc port map(
										clk => clk_int,
										en => '1',
										reset => '0',
										theta_a => th_a,
										theta_b => th_b,
										theta_c => th_c,
										theta_in => theta_pll
									);


			
	usin: tabela_sin port map (clk => clk_pll,
					theta => th_a,
					va => sin_a
					);	


						
	--	clk_int = 6.666_ MHz					
	u1: clk_div port map (clk_in => clk_pll,
								en => '1',
								div => std_logic_vector(to_unsigned(4, 16)), -- function TO_UNSIGNED (ARG, SIZE: NATURAL) return UNSIGNED;
                        clk_out => clk_int
                        );		
					
			
							
		
	 -- int_data = 3428 => 60 Hz	
	 u5: integrador port map(
										clk => clk_int,
										en => '1',
										reset => '0',
										MAX => std_logic_vector(to_unsigned(536870911, 30)),
										sinc => sinc_int,
										out_data => theta_pll,
										int_data => std_logic_vector(to_unsigned(4832, 13))
										--int_data => omega_pll
									);

