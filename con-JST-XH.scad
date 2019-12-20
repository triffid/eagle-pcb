include <eagle-pcb/common.scad>;

module jst_xh(p=2) {
	color(silver) render() for (i = [0:p - 1])
		translate([(i - ((p - 1) * 0.5)) * 2.5, 0, -2]) rotate(45) hull() {
			cylinder(d=0.8 / cos(180/4), h=6.5, $fn=4);
			translate([0, 0, -0.25]) cylinder(d=0.25 / cos(180/4), h=ee, $fn=4);
			cylinder(d=0.5, h=7, $fn=4);
		}
	color(light) render() difference() {
		#translate([0, 2.25 - 1.7, 0  ]) cc([(p - 1) * 2.5 + 4.9, 5.8, 6]);
		translate([0, 2.25 - 1.7, 0.4]) cc([(p - 1) * 2.5 + 4.5, 5.2, 6]);
		translate([0, 0, 0.4]) cc([(p - 1) * 2.5, 5, 6]);
	}
}

module con_JST_XH_B2B_XH_A(name, value) {
	jst_xh(2);
}

module con_JST_XH_B3B_XH_A(name, value) {
	jst_xh(3);
}

module con_JST_XH_B4B_XH_A(name, value) {
	jst_xh(4);
}

module con_JST_XH_B6B_XH_A(name, value) {
	jst_xh(6);
}
