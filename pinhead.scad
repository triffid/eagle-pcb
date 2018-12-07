include <eagle-pcb/common.scad>

module pinhead(pins = 4, rows = 1, pitch = 2.54, ra=0) {
	translate([((pins - 1) / -2) * pitch, ra?-pitch * (rows - 0.5):((rows - 1) / -2) * pitch, ra?-1.9:0]) {
		color(black) render() {
			for (r = [0:rows - 1])
				for (p = [0:pins - 1]) {
					translate([p * pitch, r * pitch, 0])
						rotate([0, 0, 180 / 8]) cylinder(d=2.54 / cos(180 / 8), h=2.5, $fn=8);
				}
		}
		color(silver) render() {
			for (r = [0:rows - 1])
				for (p = [0:pins - 1]) {
					translate([p * pitch, r * pitch, 0])
						hull() {
							translate([0, 0, 7.2]) cc([0.6, 0.6, ee]);
							translate([0, 0, 7.5]) cc([0.3, 0.3, ee]);
							if (ra) {
								translate([0, 0, -1 - ((rows - r - 1) * pitch)]) cc([0.6, 0.6, ee]);
							}
							else {
								translate([0, 0, -1.7]) cc([0.6, 0.6, ee]);
								translate([0, 0, -2  ]) cc([0.3, 0.3, ee]);
							}
						}
				}
		}
	}
}

module pinhead_90(pins = 3, rows = 1, pitch = 2.54) {
	rotate([-90, 0, 0])
		pinhead(pins, rows, pitch, ra = 1);

	color(silver) render() {
		for (r = [0:rows - 1])
			for (p = [0:pins - 1]) {
				translate([(p - (pins - 1) / 2) * pitch, -r * pitch - 3.81, 0]) {
					hull() {
						translate([0, 0, -1.7]) rotate([0, 0, 180 / 4]) cylinder(d=0.6 / cos(180 / 4), h=2.2 + 0.28 + ee + (r * pitch), $fn=4);
						translate([0, 0, -2  ]) rotate([0, 0, 180 / 4]) cylinder(d=0.3 / cos(180 / 4), h=2.5 + 0.28 + ee + (r * pitch), $fn=4);
					}
					translate([0, 1, 0.28 +  + (r * pitch)]) rotate([0, 90, 0]) rotate_extrude(angle=90) translate([-1, 0]) square([0.6, 0.6], center=true);
				}
			}
	}
}

module pinhead_1X03_90() {
	pinhead_90(pins = 3, rows = 1);
}

module pinhead_1X01() {
	pinhead(pins = 1);
}

module pinhead_2X03() {
	pinhead(pins = 3, rows = 2);
}

module pinhead_2X04() {
	pinhead(pins = 4, rows = 2);
}

module pinhead_2X03_90() {
	pinhead_90(pins = 3, rows = 2);
}

module pinhead_2X05_90() {
	pinhead_90(pins = 5, rows = 2);
}

module pinhead_2X17_90() {
	pinhead_90(pins = 17, rows = 2);
}

module pinhead_1X04_90() {
	pinhead_90(pins=4, rows=1);
}
