onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Frequency_Synthesizer_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Frequency_Synthesizer.udo}

run -all

quit -force
