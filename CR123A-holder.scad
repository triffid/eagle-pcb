include <eagle-pcb/common.scad>;

module CR123A_holder_CR123A_HOLDER(name, value) {
	color(dark) render() {
		difference() {
			union() {
				cc([18.29, 42.93, 0.5]);
				for (i=[0:1]) rotate(i * 180)
					translate([0, 42.93 / -2 + 0.5, 0]) hull() {
						cc([18.29, 1, 8]);
						cc([14, 1, 15.24]);
					}
			}
			for (i=[0:1]) rotate(i * 180)
				translate([0, 37.77 /  2, -10]) hull() {
					cylinder(d=3, h=100, $fs=0.4);
					translate([0, 10, 0]) cc([3, 3, 100]);
				}
		}
	}
	color(silver) render() {
		for (i=[0:1]) rotate(i * 180)
			translate([0, 37.77 /  2, 0]) {
				translate([0, 0, -2.5]) cylinder(d=0.8, h=4, $fs=0.2);
				translate([0, 0, 0.6]) cc([6, 0.2, 10]);
				translate([0, 0, 8]) intersection() {
					sphere(d=3, $fs=0.2);
					translate([0, -10, -10]) cc([20, 20, 20]);
				}
			}
	}
	color(white) render() {
		translate([0, 0, 0.5]) {
			for (i=[0:1]) mirror([i, 0, 0]) {
				translate([4, -2, 0]) cc([0.3, 20, ee]);
				translate([2, 10, 0]) cc([0.3, 4, ee]);
				translate([3, 8, 0]) cc([2, 0.3, ee]);
			}
			translate([0, -12, 0]) cc([8, 0.3, ee]);
			translate([0,  12, 0]) cc([4, 0.3, ee]);
			translate([0,  6, 0]) for (j=[0,1]) rotate(j*90) cc([0.3, 3, ee]);
			translate([0, -6, 0]) cc([0.3, 3, ee]);
		}
	}
}
