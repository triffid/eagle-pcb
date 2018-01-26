include <eagle-pcb/common.scad>

function bit_set(b, n) = floor(n / pow(2, b)) % 2;

module molex_5566(pins=6, ra=0) {
	color(white) render() difference() {
		union() {
			cc([1.2 + 2.1 * pins, 9.6, 12.8]);
			translate([-0.6 - (pins / 4) * 4.2, 2.7, 0]) cylinder(d=0.8, h=12.8, $fn=12);
			hull() {
				translate([0, -4.9, 9.8]) cc([3.4, 1.5, 0.8]);
				translate([0, -4.75, 9.8]) cc([3.4, 0.1, 3]);
			}
		}
		render(convexity=6) {
			for (i = [0:(pins/2) - 1]) {
				translate([i * 4.2 - (((pins / 4) - 0.5) * 4.2), bit_set(1, i + 1)?-2.3:2.3, 3]) cc([4, 4, 20]);
				translate([i * 4.2 - (((pins / 4) - 0.5) * 4.2), bit_set(1, i + 1)?2.3:-2.3, 3]) hull() {
					translate([0, -0.5, 0]) cc([4, 3, 20]);
					cc([2, 4, 20]);
				}
			}
		}
	}
	color(silver) render() {
		for (i = [0:(pins/2) - 1]) {
			translate([i * 4.2 - (((pins / 4) - 0.5) * 4.2),  2.75, 0]) pin(height = 10, width = 0.7);
			translate([i * 4.2 - (((pins / 4) - 0.5) * 4.2), -2.75, 0]) pin(height = 10, width = 0.7);
		}
	}
}

module FrobotActuatorShieldLibrary_XK_7() {
	translate([1.15, -0.9, 0]) smt_xtal();
}

module FrobotActuatorShieldLibrary_5566_2() {
	rotate(180) molex_5566(2);
}
