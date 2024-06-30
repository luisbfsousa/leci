onerror {exit -code 1}
vlib work
vcom -work work FlipFlopD_Demo.vho
vcom -work work FlipFlopD.vwf.vht
vsim -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.FlipFlopD_vhd_vec_tst
vcd file -direction FlipFlopD_Demo.msim.vcd
vcd add -internal FlipFlopD_vhd_vec_tst/*
vcd add -internal FlipFlopD_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

