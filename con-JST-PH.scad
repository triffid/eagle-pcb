include <eagle-pcb/common.scad>;

module jst_ph(p=2) {
	color(silver) for (i = [0:p - 1])
		translate([i * 2 - p + 1, 0, -2]) hull() {
			rotate(45) cylinder(d=0.5 / cos(180/4), h=6.5, $fn=4);
			cylinder(d=0.25, h=7, $fn=4);
		}
	color(light) render() difference() {
		translate([0, 2.25 - 1.7, 0]) cc([(p - 1) * 2 + 4.9, 4.5, 6]);
		translate([0, 2.25 - 1.7, 0.4]) cc([(p - 1) * 2 + 4.5, 4.1, 6]);
		translate([0, 0, 0.4]) cc([(p - 1) * 2, 4.5, 6]);
	}
}

module con_JST_PH_B2B_PH_K_S() {
	jst_ph(2);
}
