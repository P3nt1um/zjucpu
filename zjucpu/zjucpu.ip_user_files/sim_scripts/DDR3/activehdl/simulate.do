onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+DDR3 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.DDR3 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {DDR3.udo}

run -all

endsim

quit -force
