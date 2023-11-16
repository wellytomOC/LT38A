onerror {exit -code 1}
vlib work
vcom -work work proj1.vho
vcom -work work Waveform7.vwf.vht
vsim -novopt -c -t 1ps -sdfmax testArquitetura_vhd_vec_tst/i1=proj1_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.testArquitetura_vhd_vec_tst
vcd file -direction proj1.msim.vcd
vcd add -internal testArquitetura_vhd_vec_tst/*
vcd add -internal testArquitetura_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
