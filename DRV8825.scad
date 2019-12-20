include <eagle-pcb/common.scad>;

module DRV8825_PDSO_28(name, value) {
	rotate(90) soic(p=28, w=4.4, pitch=0.65, name=name, value=value);
}
