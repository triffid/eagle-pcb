include <eagle-pcb/common.scad>

module ATSAMDE5x_TQFP100(name, value) {
	tqfp(pins=100, pitch=0.5, name=name, value=value);
}
