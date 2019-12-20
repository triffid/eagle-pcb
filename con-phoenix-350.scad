include <eagle-pcb/common.scad>

module con_phoenix_350_1751248(pins=2, pitch=3.5, name, value) {
	color(green)
	difference() {
		hull() {
			cc([pitch * pins + 0.5, 7.3, 6]);
			cc([pitch * pins, 5, 10]);
		}
		translate([-(pins - 1) * pitch / 2, 0, 0]) {
			for (i=[0:pins-1]) {
				translate([i * pitch, 0, 0]) {
					translate([0,  0, 8]) cylinder(d=3, h=20);
					translate([0, -4, 2.5]) cube([3, 7, 3], center=true);
				}
			}
		}
	}
	color(light)
	translate([-(pins - 1) * pitch / 2, 0, 0]) {
		for (i=[0:pins-1]) {
			translate([i * pitch, -0.1, 0]) {
				cylinder(d=1, h=4, center=true);
				translate([0, 0, 7.5]) difference() {
					cylinder(d=2.8, h=2);
					translate([0, 0, 1.5])
						cc([0.5, 5, 5]);
				}
			}
		}
	}
}
