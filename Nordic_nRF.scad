include <eagle-pcb/common.scad>
include <eagle-pcb/rcl.scad>

module Nordic_nRF_RESC0805_M(name, value) {
	rcsmd([8 * 0.254, 5 * 0.254], name=name, value=value);
}

