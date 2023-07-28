include <eagle-pcb/common.scad>
include <eagle-pcb/rcl.scad>

module Rshunt_R2512(name, value) {
	rcl_R2512(name, value);
}

module Rshunt_EIA1210_M3225(name, value) {
	rcl_R1210(name, value);
}
