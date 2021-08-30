onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib DDR3_opt

do {wave.do}

view wave
view structure
view signals

do {DDR3.udo}

run -all

quit -force
