include <eagle-pcb/common.scad>

module con_phoenix_508_MKDSN1_5_2_5_08(pins=2, pitch=5.08) {
	color(green)
	difference() {
		hull() {
			cc([pitch * pins, 8.1, 6]);
			cc([pitch * pins, 6, 10]);
		}
		translate([-(pins - 1) * pitch / 2, 0, 0]) {
			for (i=[0:pins-1]) {
				translate([i * pitch, 0, 0]) {
					translate([0,  0, 8]) cylinder(d=4, h=20);
					translate([0, -4, 2.5]) cube([4, 7, 3], center=true);
				}
			}
		}
	}
	color(light)
	translate([-(pins - 1) * pitch / 2, 0, 0]) {
		for (i=[0:pins-1]) {
			translate([i * pitch, 0, 0]) {
				cylinder(d=1, h=4, center=true);
				translate([0, 0, 7.5]) difference() {
					cylinder(d=3.5, h=2);
					translate([0, 0, 1.5])
						cc([0.5, 5, 5]);
				}
			}
		}
	}
}
