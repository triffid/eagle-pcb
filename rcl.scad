include <eagle-pcb/common.scad>;

module rcl_C0402K() {
	rcsmd([4 * 0.254, 2 * 0.254]);
}

module rcl_C0402() {
	rcsmd([4 * 0.254, 2 * 0.254]);
}

module rcl_R0402() {
	rcsmd([4 * 0.254, 2 * 0.254]);
}

module rcl_R0603() {
	rcsmd([6 * 0.254, 3 * 0.254]);
}

module rcl_C0603() {
	rcsmd([6 * 0.254, 3 * 0.254]);
}

module rcl_C0805() {
	rcsmd([8 * 0.254, 5 * 0.254]);
}

module rcl_R0805() {
	rcsmd([8 * 0.254, 5 * 0.254]);
}

module rcl_R1210() {
	rcsmd([12 * 0.254, 10 * 0.254, 0.5]);
}

module rcl_CT3216() {
	color([1, 0.9, 0.2]) cc([3.2, 1.6, 1.5]);
	color(orange) translate([-1.35, 0, 1.5]) cc([0.5, 1.6, ee]);
	color(silver) translate([0, 0, ee]) cc([3.3, 1, 0.8]);
}

module rcl_PANASONIC_A() {
	electro_capacitor(3, 4);
}

module rcl_PANASONIC_B() {
	electro_capacitor(4, 5);
}

module rcl_PANASONIC_E() {
	electro_capacitor(8, 10);
}

module rcl_UD_6_3X5_8_NICHICON() {
	electro_capacitor(6.3, 5.8);
}

module rcl_C050_030X075() {
	color(silver) render() {
		translate([ 2.54, 0, -2]) cylinder(d=0.6, h=6, $fn=16);
		translate([-2.54, 0, -2]) cylinder(d=0.6, h=6, $fn=16);
	}
	color([0.5,0.1,0.1]) render() hull() {
		translate([ 2.54, 0, 1]) sphere(d=0.8, $fn=8);
		translate([-2.54, 0, 1]) sphere(d=0.8, $fn=8);
		translate([ 2.54, 0, 3]) sphere(d=2.5, $fn=8);
		translate([-2.54, 0, 3]) sphere(d=2.5, $fn=8);
		translate([ 2.54, 0, 5]) sphere(d=2.5, $fn=8);
		translate([-2.54, 0, 5]) sphere(d=2.5, $fn=8);
		translate([ 2.54, 0, 5.8]) sphere(d=0.8, $fn=8);
		translate([-2.54, 0, 5.8]) sphere(d=0.8, $fn=8);
	}
}

module rcl_C0603K() {
	rcsmd([6 * 0.254, 3 * 0.254]);
}

module rcl_D_7343_31R(name, value) {
	color(dark) cc([7.3, 4.3, 3.1]);
	color(white) translate([(7.3 / -2) + 0.5, 0, 3.1]) cc([1, 4.3, ee]);
	color(silver) translate([0, 0, ee]) cc([7.4, 2.5, 1]);

	color(white) translate([0,  0.3, 3.1]) linear_extrude(height=ee) text(text=name, valign="bottom", halign="center", size=1);
	color(white) translate([0, -0.3, 3.1]) linear_extrude(height=ee) text(text=value, valign="top", halign="center", size=1);
}
