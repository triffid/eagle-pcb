include <eagle-pcb/common.scad>;

module jst_ph(p=2) {
	color(silver) render() for (i = [0:p - 1])
		translate([(i - ((p - 1) * 0.5)) * 2, 0, -2]) rotate(45) hull() {
			cylinder(d=0.5 / cos(180/4), h=6.5, $fn=4);
			translate([0, 0, -0.25]) cylinder(d=0.25 / cos(180/4), h=ee, $fn=4);
			cylinder(d=0.25, h=7, $fn=4);
		}
	color(light) render() difference() {
		translate([0, 2.25 - 1.7, 0  ]) cc([p * 2 + 1.9, 4.5, 6]);
		translate([0, 2.25 - 1.7, 0.4]) cc([p * 2 + 1.5, 4.1, 6]);
		translate([0, 0         , 0.4]) cc([p * 2 - 2  , 4.5, 6]);
	}
}

module con_JST_PH_B2B_PH_K_S(name, value) {
	jst_ph(2);
}

module con_JST_PH_B3B_PH_K_S(name, value) {
	jst_ph(3);
}

module con_JST_PH_B4B_PH_K_S(name, value) {
	jst_ph(4);
}

module con_JST_PH_B6B_PH_K_S(name, value) {
	jst_ph(6);
}
