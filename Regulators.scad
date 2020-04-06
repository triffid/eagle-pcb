include <eagle-pcb/common.scad>;

module Regulators_SOT23_5(name, value) {
	rotate(90) sot23(pins=5, name=name, value=value);
}
