include <eagle-pcb/common.scad>

module MOSFET_MLP8_33(name, value) {
	rotate([0, 0, 90]) qfn(pins=8, sides=2, pitch=0.65, h=0.8, name=name, value=value);
}
