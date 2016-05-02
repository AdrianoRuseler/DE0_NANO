transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/db {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/db/pll_altpll.v}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/pll.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/my_types_pkg.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/fixed_float_types_c.vhdl}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/clk_div.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/fixed_pkg_c.vhdl}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/DE0_NANO_VF_3F.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/tabela_sin.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/theta_abc.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/portadora_tringular.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/integrador.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/fbpspwmdt.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/vfcontrol.vhd}
vcom -93 -work work {C:/Users/Administrator/Documents/GitHub/DE0_NANO/BASE/DE0_NANO_VF_3F/boostpwmdt.vhd}

