transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/main_encoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/main_decoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/encoder_shifter_15.v}
vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/encoder_shifter_11.v}
vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/encoder_Counter_11.v}
vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/encoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/decoder_shifter_15.v}
vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/decoder_shifter_11.v}
vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/decoder_Counter_11.v}
vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/decoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/CLK_DIVIDER.v}
vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/hammingcode.v}

vlog -vlog01compat -work work +incdir+C:/Users/BAHGAT/Desktop/hammingcode1 {C:/Users/BAHGAT/Desktop/hammingcode1/tb_hammingcode.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  tb_hammingcode

add wave *
view structure
view signals
run -all
