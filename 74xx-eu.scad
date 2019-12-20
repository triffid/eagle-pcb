include <eagle-pcb/common.scad>;

module 74xx_eu_SO16(name, value) {
	rotate([0, 0, 90]) soic(p=16, name=name, value=value);
}