include <eagle-pcb/common.scad>

module TCXO_SMD3225(name, value) {
	smt_xtal(name=name, value=value);
}

module TCXO_SMD3225_NP(name, value) {
	smt_xtal(name=name, value=value);
}

module TCXO_HC49US_SMD(name, value) {
	color(dark) {
		cc([11.5, 5, 0.2]);
	}
	color(silver) {
		cc([13, 1.5, 0.1]);
		translate([0, 0, ee]) hull() {
			translate([3.5, 0, 0]) cylinder(d=4, h=0.6);
			translate([-3.5, 0, 0]) cylinder(d=4, h=0.6);
		}
		translate([0, 0, ee]) hull() {
			translate([3.5, 0, 0]) cylinder(d=3, h=2);
			translate([-3.5, 0, 0]) cylinder(d=3, h=2);
		}
	}
	color(white) {
		translate([0, 0, 2 + ee]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size=7 / len(value));
	}
}
