include <eagle-pcb/common.scad>

module usbhull(r = 1.3, l = 7.9) {
	hull() {
		translate([9 /  2 - 1.3, 3.95 - l, 3.24 - 1.3]) rotate([-90, 0, 0]) cylinder(r=r, h=l);
		translate([9 / -2 + 1.3, 3.95 - l, 3.24 - 1.3]) rotate([-90, 0, 0]) cylinder(r=r, h=l);
		translate([9 / -2 + 1.3, 3.95 - l,        1.3]) rotate([-90, 0, 0]) cylinder(r=r, h=l);
		translate([9 /  2 - 1.3, 3.95 - l,        1.3]) rotate([-90, 0, 0]) cylinder(r=r, h=l);
	}
}

module USB_MOLEX_1054500101(name, value) {
	color(silver) render() {
		difference() {
			union() {
				usbhull(1.3);
				translate([9 / 2  - 0.1, -3.95 + 7.31, -2]) cc([0.2, 1, 3.6]);
				translate([9 / 2  - 0.1, -3.95 + 7.31 - 5.36, -2]) cc([0.2, 1, 3.6]);
				translate([9 / -2 + 0.1, -3.95 + 7.31, -2]) cc([0.2, 1, 3.6]);
				translate([9 / -2 + 0.1, -3.95 + 7.31 - 5.36, -2]) cc([0.2, 1, 3.6]);
			}
			translate([0, -0.5, 0]) usbhull(1.2);
		}
	}
	color(black) render() {
		translate([0, -0.5, 0]) usbhull(0.2, 7.4);
	}
	color(gold) render() {
		for (i = [0:11]) {
			translate([(i - 5.5) * 0.5, 0, 1.12]) cc([0.3, 7.5, 1]);
		}
	}
}
