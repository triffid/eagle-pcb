include <eagle-pcb/common.scad>

module buttons_SKHMPXE010() {
	sw_membrane();
}

module buttons_EVQP7_BOSS(name, value) {
	color(silver) {
		cc([3.5, 2.9, 1.35]);
	}
	color(dark) render() {
		difference() {
			translate([0, -1.775, 0.2]) cc([1.7, 0.65, 1.1]);
			translate([0, -1.5  , 0.1]) cc([1.8, 0.65, 0.6]);
		}
		hull() {
			translate([0, 1.85 / 2, -0.5 + 0.65/2]) sphere(d=0.65, $fn=12);
			translate([0, 1.85 / 2, 1]) sphere(d=0.65, $fn=12);
		}
		hull() {
			translate([0, 1.85 / -2, -0.5 + 0.65/2]) sphere(d=0.65, $fn=12);
			translate([0, 1.85 / -2, 1]) sphere(d=0.65, $fn=12);
		}
	}
}

module buttons_B3F_31XX(name, value) {
	// rotate([90, 0, 0]) sw_membrane([6.8, 6.8, 3.3 - 0.254]);
	color(silver) render() {
		for (x=[0:1]) mirror([x, 0, 0]) {
			translate([3.5, 1.25, 0]) hull() {
				translate([0, 0, -3.5 + 1/2]) rotate([0, -90, 0]) cylinder(d=1, h=0.3, center=true);
				translate([0, 0,  3]) rotate([0, -90, 0]) cylinder(d=1, h=0.3, center=true);
			}
			translate([ 2.25, -1.25, 0]) hull() {
				translate([0, 0, -3.5 + 1/2]) rotate([-90, 0, 0]) cylinder(d=0.7, h=0.3, center=true);
				translate([0, 0,  5]) rotate([-90, 0, 0]) cylinder(d=0.7, h=0.3, center=true);
			}
		}
		difference() {
			translate([0, -1.25 - 2.25 + 0.3/2, 4]) cube([7.3, 0.3, 6], center=true);
			translate([0, 0, 4]) rotate([90, 0, 0]) cylinder(d=3.7, h=10);
		}
	}
	color(dark) render() {
		translate([0, -1.25 - 6.15, 4]) rotate([-90, 0, 0]) cc([2.4, 2.4, 1.8]);
		translate([0, -1.25 - 6.15, 4]) rotate([-90, 0, 0]) cc([2, 2, 4]);
		translate([0, -1.25 - 2.25 - 0.5, 4]) rotate([-90, 0, 0]) cylinder(d=3.5, h=2);
		translate([0, -1.25 - 2.25 + 0.3, 4]) rotate([-90, 0, 0]) cc([6.7, 6, 4]);
	}
}
