include <eagle-pcb/common.scad>

module con_phoenix_508_MKDSN1_5_2_5_08(pins=2, pitch=5.08, name, value) {
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

module con_phoenix_508_MSTBA(pins=2, pitch=5.08, name, value) {
	translate([0, 1, 0]) {
		color(green) render()
		difference() {
			cc([pins * pitch + 2, 12, 8.6]);
			translate([0, -2.5, 0]) {
				render() for (i=[0:pins-1]) {
					translate([((pins - 1) * -0.5 + i) * pitch, 0, 0]) {
						intersection() {
							translate([0, 0, 0]) cc([pitch + ee, 12, 7.6]);
							translate([0, 6, 4.3]) rotate([90, 0, 0]) cylinder(d=pitch + 2, h=12);
						}
						translate([0, 8, -ee]) cc([4.5, 3, 7]);
					}
				}
				translate([0, 0, 4.3]) cc([pins * pitch + ee2, 12, 3.3]);
			}
		}
		color(silver) render() {
			for (i=[0:pins-1]) {
				translate([((pins - 1) * -0.5 + i) * pitch, 4.05, 0]) union() {
					pin(height=4.3, width=1.0, belowheight = 3.5);
					cc([1, 1, 4.3]);
				}
				translate([((pins - 1) * -0.5 + i) * pitch, 4.55, 4.3]) rotate([90, 0, 0]) pin(height=10, width=1.0, belowheight = 0);
			}
		}
	}
}

module con_phoenix_508_MSTBA2(name, value) {
	con_phoenix_508_MSTBA(pins=2, name=name, value=value);
}

module con_phoenix_508_MSTBA4(name, value) {
	con_phoenix_508_MSTBA(pins=4, name=name, value=value);
}
