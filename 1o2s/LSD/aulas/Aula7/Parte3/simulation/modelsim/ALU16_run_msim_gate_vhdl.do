transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ALU16_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/joaog/LSD/Aula7/Parte3/ALU16_Tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=ALU16_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  ALU16_Tb

add wave *
view structure
view signals
run -all
