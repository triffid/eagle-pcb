include <eagle-pcb/common.scad>

module MT3608_SOT23_6(name, value) {
	rotate(90) sot23(pins=6, name=name, value=value);
}
