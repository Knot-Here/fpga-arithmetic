transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/knot/Desktop/chiron/repos/fpga-arithmetic/modules {/home/knot/Desktop/chiron/repos/fpga-arithmetic/modules/adder.v}
vlog -vlog01compat -work work +incdir+/home/knot/Desktop/chiron/repos/fpga-arithmetic/modules {/home/knot/Desktop/chiron/repos/fpga-arithmetic/modules/multiplier.v}
vlog -vlog01compat -work work +incdir+/home/knot/Desktop/chiron/repos/fpga-arithmetic/modules {/home/knot/Desktop/chiron/repos/fpga-arithmetic/modules/divider.v}
vlog -vlog01compat -work work +incdir+/home/knot/Desktop/chiron/repos/fpga-arithmetic/modules {/home/knot/Desktop/chiron/repos/fpga-arithmetic/modules/subtractor.v}
vlog -vlog01compat -work work +incdir+/home/knot/Desktop/chiron/repos/fpga-arithmetic/top {/home/knot/Desktop/chiron/repos/fpga-arithmetic/top/arithmetic_top.v}

