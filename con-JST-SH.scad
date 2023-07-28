include <eagle-pcb/common.scad>;

module jst_sh_sm(pins=2) {
	translate([0, 1.9, 0]) {
		color([0.9, 0.85, 0.8, 1]) difference() {
			cc([pins + 2, 4.25, 2.9]);
			translate([0, -0.2, 0.1]) cc([pins + 1.4, 4.25, 2.7]);
		}
		color(silver) {
			for (x=[0:pins]) {
				translate([(x - pins/2), 0, 1.8]) cc([0.2, 3.5, 0.2]);
			}
		}
	}
}

module con_JST_SH_SM02B_SRSS_TB(name, value) {
	jst_sh_sm(pins=2);
}
