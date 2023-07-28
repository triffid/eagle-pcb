include <eagle-pcb/con-phoenix-350.scad>;

module con_coax_AMP_227161(name, value) {
	color(light) translate([0, -0.3, 0]) {
		difference() {
			union() {
				cc([14.5, 13, 11.5]);
				intersection() {
					translate([0, -6.2, 6]) rotate([-90, 0, 0]) cylinder(d=12, h=22);
					cc([20, 100, 11.5]);
				}
				difference() {
					translate([0, -6.2, 6]) rotate([-90, 0, 0]) cylinder(d=4.5, h=32);
					translate([0, -6.21, 6]) rotate([-90, 0, 0]) cylinder(d=2.05, h=50);
				}
				for (i = [0:1]) translate([(i - 0.5) * 10.16, 0.3, -2]) {
					cylinder(d=2, h=3);
				}
			}
			translate([0, -6.2 + 3, 6]) rotate([90, 0, 0]) cylinder(d=9, h=32);
		}
	}
	color(silver) {
		difference() {
			union() {
				translate([0, -6.2, 6]) rotate([-90, 0, 0]) cylinder(d=9.5, h=35.4);
				translate([0, 30.5 - 6.2, 6]) cylinder(d=2, h=11, center=true);
			}
			translate([0, -6.21, 6]) rotate([-90, 0, 0]) cylinder(d=8.5, h=40);
			hull() {
				translate([0, -5.2, -2]) cylinder(d=3, h=6);
				translate([0, -7.2, -2]) cylinder(d=3, h=6);
			}
		}
		difference() {
			translate([0, -6.2, 6]) rotate([-90, 0, 0]) cylinder(d=2, h=32.4);
			translate([0, -6.21, 6]) rotate([-90, 0, 0]) cylinder(d=1, h=50);
		}
		for (i = [0:1]) translate([i * -2.54, -6.2 + 1.1, -2]) {
			cylinder(d=0.8, h=8 - (i * 3));
		}
	}
}
