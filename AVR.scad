include <eagle-pcb/common.scad>
include <eagle-pcb/pinhead.scad>

module AVR_AVRISP_6(name, value) {
	pinhead(pins = 2, rows = 3);
}

module AVR_LQFP32_7X7(name, value) {
	tqfp(pins = 32, pitch = 0.8, name=name, value=value);
}
