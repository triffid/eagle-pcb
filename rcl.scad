include <eagle-pcb/common.scad>;

module rcl_C0402K(name, value) {
	rcsmd([4 * 0.254, 2 * 0.254], name=name, value=value);
}

module rcl_C0402(name, value) {
	rcsmd([4 * 0.254, 2 * 0.254], name=name, value=value);
}

module rcl_R0402(name, value) {
	rcsmd([4 * 0.254, 2 * 0.254], name=name, value=value);
}

module rcl_R0603(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}

module rcl_C0603(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}

module rcl_C0805(name, value) {
	rcsmd([8 * 0.254, 5 * 0.254], name=name, value=value);
}

module rcl_C0805K(name, value) {
	rcsmd([8 * 0.254, 5 * 0.254], name=name, value=value);
}

module rcl_R0805(name, value) {
	rcsmd([8 * 0.254, 5 * 0.254], name=name, value=value);
}

module rcl_R1210(name, value) {
	rcsmd([12 * 0.254, 10 * 0.254, 0.5], name=name, value=value);
}

module rcl_R2512(name, value) {
	rcsmd([25 * 0.254, 12 * 0.254, 0.5], name=name, value=value);
}

module rcl_CT3216(name, value) {
	color([1, 0.9, 0.2]) cc([3.2, 1.6, 1.5]);
	color(orange) translate([-1.35, 0, 1.5]) cc([0.5, 1.6, ee]);
	color(silver) translate([0, 0, ee]) cc([3.3, 1, 0.8]);
}

module rcl_PANASONIC_A(name, value) {
	electro_capacitor(3, 4, name=name, value=value);
}

module rcl_PANASONIC_B(name, value) {
	electro_capacitor(4, 5, name=name, value=value);
}

module rcl_PANASONIC_C(name, value) {
	electro_capacitor(5, 6.3, name=name, value=value);
}

module rcl_PANASONIC_D(name, value) {
	electro_capacitor(6.3, 8, name=name, value=value);
}

module rcl_PANASONIC_E(name, value) {
	electro_capacitor(8, 10, name=name, value=value);
}

module rcl_UD_6_3X5_8_NICHICON(name, value) {
	electro_capacitor(6.3, 5.8, name=name, value=value);
}

module rcl_C050_030X075(name, value) {
	color(silver) render(name, value) {
		translate([ 2.54, 0, -2]) cylinder(d=0.6, h=6, $fn=16);
		translate([-2.54, 0, -2]) cylinder(d=0.6, h=6, $fn=16);
	}
	color([0.5,0.1,0.1]) render(name, value) hull(name, value) {
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

module rcl_C0603K(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}

module rcl_D_7343_31R(name, value) {
	color(dark) cc([7.3, 4.3, 1.8]);
	color(white) translate([(7.3 / 2) - 0.5, 0, 1.8]) cc([1, 4.3, ee]);
	color(silver) translate([0, 0, ee]) cc([7.4, 2.4, 1]);

	color(white) translate([0,  0.3, 1.8]) linear_extrude(height=ee) text(text=name, valign="bottom", halign="center", size=1);
	color(white) translate([0, -0.3, 1.8]) linear_extrude(height=ee) text(text=value, valign="top", halign="center", size=1);
}
