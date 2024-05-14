transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Mod_Teste.vho}

vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253/Test_Bench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=Mod_Teste_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Test_Bench

add wave *
view structure
view signals
run -all
