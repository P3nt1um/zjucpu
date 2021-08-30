onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib GraphicVRAM_opt

do {wave.do}

view wave
view structure
view signals

do {GraphicVRAM.udo}

run -all

quit -force
