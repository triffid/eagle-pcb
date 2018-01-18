include <eagle-pcb/common.scad>;

module diode_SOD523() {
	color(dark) cc([1.2, 0.8, 0.6]);
	color(silver) cc([1.6, 0.3, 0.25]);
	color(light) translate([-0.4, 0, 0.6]) cc([0.4, 0.8, ee]);
}
