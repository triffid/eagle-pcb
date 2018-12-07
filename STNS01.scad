include <eagle-pcb/common.scad>

module STNS01_DFN12L_3MM(name, value) {
	qfn(pins=12, pitch=0.45, h=0.6, sides=2, name=name, value=value);
}
