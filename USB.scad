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

module USB_MOLEX_2049261103(name, value) {
	translate([0, -0.95 + 0.6, 0]) *cc([8.7,7,3.65]);
	color(silver) render() {
		difference() {
			hull() {
				translate([-4.1, 1.9, 0.25]) rotate([90, 0, 0]) cylinder(d=0.5, $fn=8, h=4);
				translate([ 4.1, 1.9, 0.25]) rotate([90, 0, 0]) cylinder(d=0.5, $fn=8, h=4);
				translate([-4.1, 1.9, 3.4 ]) rotate([90, 0, 0]) cylinder(d=0.5, $fn=8, h=4);
				translate([ 4.1, 1.9, 3.4 ]) rotate([90, 0, 0]) cylinder(d=0.5, $fn=8, h=4);
			}
			hull() {
				translate([-6.9 / 2 + 0.22, 1.5, 2.3]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20);
				translate([ 6.9 / 2 - 0.22, 1.5, 2.3]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20);
				translate([-6.9 / 2 + 0.22, 1.5, 1.8]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20);
				translate([ 6.9 / 2 - 0.22, 1.5, 1.8]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20);
				translate([-5.4 / 2 + 0.22, 1.5, 1]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20);
				translate([ 5.4 / 2 - 0.22, 1.5, 1]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20);
			}
		}
		translate([ 3.6, 2.55, 0]) hull() {
			translate([0, 0, -0.25 + 0.75/2 - 2]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
			translate([0, 0, 2]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
		}
		translate([-3.6, 2.55, 0]) hull() {
			translate([0, 0, -0.25 + 0.75/2 - 2]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
			translate([0, 0, 2]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
		}
		translate([ 3.6, 2.55, 0]) #hull() {
			translate([0,  0, 0.5]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
			translate([0,  0, 2]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
			translate([0, -2, 0.5]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
			translate([0, -2, 2]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
		}
		translate([-3.6, 2.55, 0]) hull() {
			translate([0,  0, 0.5]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
			translate([0,  0, 2]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
			translate([0, -2, 0.5]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
			translate([0, -2, 2]) rotate([0, 90 ,0]) cylinder(d=0.6, h=0.3, center=true);
		}
		translate([ 4.25, 0.82, 0]) hull() {
			translate([0, 0, -0.25 + 0.75/2 - 2]) rotate([0, 90 ,0]) cylinder(d=0.75, h=0.3, center=true);
			translate([0, 0, 2]) rotate([0, 90 ,0]) cylinder(d=0.75, h=0.3, center=true);
		}
		translate([-4.25, 0.82, 0]) hull() {
			translate([0, 0, -0.25 + 0.75/2 - 2]) rotate([0, 90 ,0]) cylinder(d=0.75, h=0.3, center=true);
			translate([0, 0, 2]) rotate([0, 90 ,0]) cylinder(d=0.75, h=0.3, center=true);
		}
		translate([ 4.25, -0.9, 0]) hull() {
			translate([0, 0, -0.25 + 0.75/2 - 2]) rotate([0, 90 ,0]) cylinder(d=0.8, h=0.3, center=true);
			translate([0, 0, 2]) rotate([0, 90 ,0]) cylinder(d=0.8, h=0.3, center=true);
		}
		translate([-4.25, -0.9, 0]) hull() {
			translate([0, 0, -0.25 + 0.75/2 - 2]) rotate([0, 90 ,0]) cylinder(d=0.8, h=0.3, center=true);
			translate([0, 0, 2]) rotate([0, 90 ,0]) cylinder(d=0.8, h=0.3, center=true);
		}
	}
	color(dark) render() difference() {
		hull() {
			translate([-4.1, -2.1, 0  ]) rotate([90, 0, 0]) cylinder(d=0.5, $fn=8, h=1.75);
			translate([ 4.1, -2.1, 0  ]) rotate([90, 0, 0]) cylinder(d=0.5, $fn=8, h=1.75);
			translate([-4.1, -2.1, 3.4]) rotate([90, 0, 0]) cylinder(d=0.5, $fn=8, h=1.75);
			translate([ 4.1, -2.1, 3.4]) rotate([90, 0, 0]) cylinder(d=0.5, $fn=8, h=1.75);
		}
		hull() {
			translate([-6.9 / 2 + 0.22, 1.5, 2.3]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20, center=true);
			translate([ 6.9 / 2 - 0.22, 1.5, 2.3]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20, center=true);
			translate([-6.9 / 2 + 0.22, 1.5, 1.8]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20, center=true);
			translate([ 6.9 / 2 - 0.22, 1.5, 1.8]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20, center=true);
			translate([-5.4 / 2 + 0.22, 1.5, 1]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20, center=true);
			translate([ 5.4 / 2 - 0.22, 1.5, 1]) rotate([90, 0, 0]) cylinder(d=0.44, $fn=8, h=20, center=true);
		}
	}
	color([0.9, 0.9, 0.9, 0.3]) render() {
		hull() {
			translate([9.3 *  0.5 - 0.3, -2.1 - 1.75/2, 0  ]) sphere(d=0.6, $fn=12);
			translate([9.3 * -0.5 + 0.3, -2.1 - 1.75/2, 0  ]) sphere(d=0.6, $fn=12);
		}
		hull() {
			translate([9.3 * -0.5 + 0.3, -2.1 - 1.75/2, 3.6]) sphere(d=0.6, $fn=12);
			translate([9.3 *  0.5 - 0.3, -2.1 - 1.75/2, 3.6]) sphere(d=0.6, $fn=12);
		}
		hull() {
			translate([9.3 * -0.5 + 0.3, -2.1 - 1.75/2, 0  ]) sphere(d=0.6, $fn=12);
			translate([9.3 * -0.5 + 0.3, -2.1 - 1.75/2, 3.6]) sphere(d=0.6, $fn=12);
		}
		hull() {
			translate([9.3 *  0.5 - 0.3, -2.1 - 1.75/2, 0  ]) sphere(d=0.6, $fn=12);
			translate([9.3 *  0.5 - 0.3, -2.1 - 1.75/2, 3.6]) sphere(d=0.6, $fn=12);
		}
	}
	color(gold) {
		for(x=[0:4]) {
			translate([0.65 * (x-2), 1, 0]) cc([0.25, 4, 0.1]);
		}
	}
}
