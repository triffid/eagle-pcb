include <eagle-pcb/common.scad>;

module rcl_C0402K(name, value) {
	rcsmd([4 * 0.254, 2 * 0.254], name=name, value=value, bodycolor=capacitor_brown);
}

module rcl_C0402(name, value) {
	rcsmd([4 * 0.254, 2 * 0.254], name=name, value=value, bodycolor=capacitor_brown);
}

module rcl_R0402(name, value) {
	rcsmd([4 * 0.254, 2 * 0.254], name=name, value=value);
}

module rcl_R0603(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}

module rcl_C0603(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value, bodycolor=capacitor_brown);
}

module rcl_C0603K(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value, bodycolor=capacitor_brown);
}

module rcl_C0805(name, value) {
	rcsmd([8 * 0.254, 5 * 0.254], name=name, value=value, bodycolor=capacitor_brown);
}

module rcl_C0805K(name, value) {
	rcsmd([8 * 0.254, 5 * 0.254], name=name, value=value, bodycolor=capacitor_brown);
}

module rcl_R0805(name, value) {
	rcsmd([8 * 0.254, 5 * 0.254], name=name, value=value);
}

module rcl_R1206(name, value) {
	rcsmd([12 * 0.254, 6 * 0.254], name=name, value=value);
}

module rcl_C1206K(name, value) {
	rcsmd([12 * 0.254, 6 * 0.254], name=name, value=value, bodycolor=capacitor_brown);
}

module rcl_R1210(name, value) {
	rcsmd([12 * 0.254, 10 * 0.254, 0.5], name=name, value=value);
}

module rcl_C1210K(name, value) {
	rcsmd([12 * 0.254, 10 * 0.254], name=name, value=value, bodycolor=capacitor_brown);
}

module rcl_R2010(name, value) {
	rcsmd([20 * 0.254, 10 * 0.254, 0.5], name=name, value=value);
}

module rcl_R2512(name, value) {
	rcsmd([25 * 0.254, 12 * 0.254, 0.5], name=name, value=value);
}

module rcl_CT3216(name, value) {
	color([1, 0.9, 0.2]) cc([3.2, 1.6, 1.5]);
	color(orange) translate([-1.35, 0, 1.5]) cc([0.5, 1.6, ee]);
	color(silver) translate([0, 0, ee]) cc([3.3, 1, 0.8]);
}

module rcl_Clarge(size, pitch, name, value) {
	color(capacitor_brown) cc(size);
	if ($preview) color(white) {
		translate([0,  0.1, size[2] + ee]) linear_extrude(height = ee) text(text=name , halign="center", valign="bottom", size=size[0] / len(value));
		translate([0, -0.1, size[2] + ee]) linear_extrude(height = ee) text(text=value, halign="center", valign="top"   , size=size[0] / len(value));
	}
	color(silver) {
		for (i = [0:1])
			translate([(i - 0.5) * pitch, 0, -2]) cylinder(d=0.7, h=3);
	}
}

module rcl_C225_108X268(name, value) {
	rcl_Clarge([26.5, 10.5, 20], 22.5, name=name, value=value);
}

module rcl_C075_063X106(name, value) {
	rcl_Clarge([10.5, 6.3, 7], 7.5, name=name, value=value);
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

module rcl_PANASONIC_E_D8(name, value) {
	rcl_PANASONIC_E(name, value);
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

module rcl_D_7343_31R(name, value) {
	color(dark) cc([7.3, 4.3, 1.8]);
	color(white) translate([(7.3 / 2) - 0.5, 0, 1.8]) cc([1, 4.3, ee]);
	color(silver) translate([0, 0, ee]) cc([7.4, 2.4, 1]);

	if ($preview) color(white) translate([0,  0.3, 1.8]) linear_extrude(height=ee) text(text=name, valign="bottom", halign="center", size=1);
	if ($preview) color(white) translate([0, -0.3, 1.8]) linear_extrude(height=ee) text(text=value, valign="top", halign="center", size=1);
}

module rcl_RTRIM3314J(name, value) {
	color(silver) cc([4.5, 4.5, 3]);
	color(dark) cylinder(d=3, h=3 + ee);
	if ($preview) color(white) translate([0, 0, 3 + ee2]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size=3 / len(value));
}

module rcl_10X32_5_RAD_RA(name, value) {
	color(silver)
	for (m=[0:1]) mirror([m, 0, 0]) {
		translate([-2.5, -18, 0]) rotate([0, 0, -90])
			tubesegment(0.7, 0, 4)
			tubesegment(0.7, 0, pi/2, 90)
			tubesegment(0.7, 0, 10);
	}
	color(blue) render() {
	translate([0, -12.5, 5]) rotate([-90, 0, 0])
		difference() {
			union() {
				cylinder(d=8, h=30);
				hull() {
					cylinder(d=8, h=2.5);
					cylinder(d=9, h=0.5);
					translate([0, 0, 0.5]) cylinder(d=10, h=1);
				}
				hull() {
					translate([0, 0, 3.5]) cylinder(d= 8, h=26.5);
					translate([0, 0, 4.5]) cylinder(d=10, h=25);
				}
			}
			translate([3.5, -13, -1]) cube([10, 20, 50]);
		}
	}
	color(light) render() {
		translate([0, -12.5, 5]) rotate([-90, 0, 0])
		intersection() {
			union() {
				cylinder(d=8, h=30);
				hull() {
					cylinder(d=8, h=2.5);
					cylinder(d=9, h=0.5);
					translate([0, 0, 0.5]) cylinder(d=10, h=1);
				}
				hull() {
					translate([0, 0, 3.5]) cylinder(d= 8, h=26.5);
					translate([0, 0, 4.5]) cylinder(d=10, h=25);
				}
			}
			translate([3.5, -13, -1]) cube([10, 20, 50]);
		}
	}
	color(white) rotate([0, 0, 90]) {
		if ($preview) translate([0,  0.1, 10 + ee]) linear_extrude(height = ee) text(text=name , halign="center", valign="bottom", size=10 / len(value));
		if ($preview) translate([0, -0.1, 10 + ee]) linear_extrude(height = ee) text(text=value, halign="center", valign="top"   , size=10 / len(value));
	}
}
