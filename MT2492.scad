include <eagle-pcb/common.scad>

module MT2492_SOT23_6(name, value) {
	rotate(180) sot23(pins=6, name=name, value=value);
}
