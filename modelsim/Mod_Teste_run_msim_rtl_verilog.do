transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/Test_Bench.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/Register_File.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/Control_Unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/Instruction_Memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/Data_Memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/Parallel_IN.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/Parallel_OUT.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/ULA.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/EXTENSOR.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/Program_Counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/ADDER.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/MUX3X1.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/MUX2X1.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/AND.v}
vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/OR.v}

vlog -vlog01compat -work work +incdir+C:/Users/danie/OneDrive/√Årea\ de\ Trabalho/PROJETO_DANIELBARBOSA_122110253\ -\ PARTE\ 6 {C:/Users/danie/OneDrive/¡rea de Trabalho/PROJETO_DANIELBARBOSA_122110253 - PARTE 6/Test_Bench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  Test_Bench

add wave *
view structure
view signals
run -all
