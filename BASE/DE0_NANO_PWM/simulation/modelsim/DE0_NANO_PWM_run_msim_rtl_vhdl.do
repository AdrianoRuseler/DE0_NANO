transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/db {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/db/pll_altpll.v}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/pll.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/my_types_pkg.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/fixed_float_types_c.vhdl}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/tabela_sin.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/clk_div.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/fixed_pkg_c.vhdl}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/DE0_NANO_PWM.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/theta_abc.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/portadora_tringular.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/integrador.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_PWM/fbpspwmdt.vhd}

