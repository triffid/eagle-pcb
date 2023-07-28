include <eagle-pcb/common.scad>;

module BMD_BMD_35(name, value) {
	color([0.1, 0.2, 0.5, 0.9]) cc([8.65, 6.4, 0.46]);
	translate([1.5, 0, 0.45]) color(silver) cc([5, 6, 1.5 - 0.45]);
}
