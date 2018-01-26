include <eagle-pcb/common.scad>;

module con_yamaichi_USB_A003() {
	color(silver) difference() {
		union() {
			translate([0, 13.8 / 2, 0]) cc([12.2, 13.8, 4]);
			translate([0, ee, 2.1]) rotate([90, 0, 0]) cc([12.5, 4.2, 0.1]);
			for (i=[0:3]) {
				translate([(i - 1.5) * 2.25, 14, 0]) cc([1, 2, 0.5]);
			}
			for (i=[0:1]) {
				mirror([i, 0, 0]) translate([-6, 10.3, -2]) rotate([0, -90, 0]) linear_extrude(height = 0.3) hull() {
					circle(d=1.5, $fn=12);
					translate([5, 0, 0]) square([1, 1.5], center=true);
				}
			}
		}
		translate([0, 13.8 / 2 - 0.1, 0.1]) cc([12, 13.8, 4 - 0.2]);
	}
	color(dark) translate([0, 13.8 / 2 - 0.1, 2]) cc([10, 13.8, 1.2]);
	color(gold) for (i=[0:3]) {
		translate([(i - 1.5) * 2, 6.25 - (abs(1.5 - i) * 0.5), 2 - ee]) cc([1, 10, 1.2]);
	}
}
