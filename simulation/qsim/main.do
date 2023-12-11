onerror {quit -f}
vlib work
vlog -work work main.vo
vlog -work work main.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.image_vlg_vec_tst
vcd file -direction main.msim.vcd
vcd add -internal image_vlg_vec_tst/*
vcd add -internal image_vlg_vec_tst/i1/*
add wave /*
run -all
