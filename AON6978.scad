include <eagle-pcb/common.scad>

module AON6978_DFN_S_6X5_PP(name, value) {
	color(black) cc([5.75, 5, 0.95]);
	color(silver) render() {
		for (i = [0:3]) {
			translate([5.75 /  2, (-1.5 + i) * 1.27, -ee]) cc([0.2, 0.4, 0.2]);
			translate([5.75 / -2, (-1.5 + i) * 1.27, -ee]) cc([0.2, 0.4, 0.2]);
		}
	}
	color(light) {
		translate([0, 0, 0.95]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size=5.75 / len(value));
		translate([5.75 * 3 / -8, 5 * 3 / 8, 0.95]) cylinder(d=0.6, h=ee, $fn=12);
	}
}
