include <eagle-pcb/common.scad>
include <eagle-pcb/UFL-IPX-RF-Connector.scad>

module E73_2G4M04S_E73_2GM404S(name, value) {
	color([soldermask[0], soldermask[1], soldermask[2], 1]) render() difference() {
		cc([28.7, 17.5, 0.8]);
		for (i = [0:15]) translate([28.7 / -2 + 1.745 + i * 1.27 + ((i > 13)?1.27:0), 17.5 /  2, -1]) cylinder(d=1, h=3, $fn=12);
		for (i = [0:15]) translate([28.7 / -2 + 1.745 + i * 1.27 + ((i > 13)?1.27:0), 17.5 / -2, -1]) cylinder(d=1, h=3, $fn=12);
		for (i = [0:11]) translate([28.7 / -2, 17.5 / -2 + 1.765 + i * 1.27, -1]) cylinder(d=1, h=3, $fn=12);
	}
	color(gold) render() {
		difference() {
			union() {
				for (i = [0:15]) translate([28.7 / -2 + 1.745 + i * 1.27 + ((i > 13)?1.27:0), 17.5 /  2 - 0.5 + ee, -ee]) cc([1, 1, 0.8 + ee2]);
				for (i = [0:15]) translate([28.7 / -2 + 1.745 + i * 1.27 + ((i > 13)?1.27:0), 17.5 / -2 + 0.5 - ee, -ee]) cc([1, 1, 0.8 + ee2]);
				for (i = [0:11]) translate([28.7 / -2 + 0.5 - ee, 17.5 / -2 + 1.765 + i * 1.27, -ee]) cc([1, 1, 0.8 + ee2]);
			}
			for (i = [0:15]) translate([28.7 / -2 + 1.745 + i * 1.27 + ((i > 13)?1.27:0), 17.5 /  2, -1]) cylinder(d=0.9, h=3, $fn=12);
			for (i = [0:15]) translate([28.7 / -2 + 1.745 + i * 1.27 + ((i > 13)?1.27:0), 17.5 / -2, -1]) cylinder(d=0.9, h=3, $fn=12);
			for (i = [0:11]) translate([28.7 / -2, 17.5 / -2 + 1.765 + i * 1.27, -1]) cylinder(d=0.9, h=3, $fn=12);
		}
		translate([10, 3.5, 0.8]) cc([6, 0.3, ee]);
		translate([13, 3.5, 0.8]) cc([0.3, 4.5, ee]);
		translate([10, 5.5, 0.8]) cc([6, 0.5, ee]);
		for (i = [0:4]) translate([11.4, 1.1 - i * 2, 0.8]) cc([3.5, 0.3, ee]);
		for (i = [0:3]) translate([11.4 - 1.6 + 3.2 * (i % 2), 0 - i * 2, 0.8]) cc([0.3, 2, ee]);
	}
	color(silver) render() {
		translate([-4, 0, 0.8]) cc([16, 12, 1]);
		translate([0, 3.5, 0.8]) cc([13, 5, 1]);
	}
	translate([6.5, 17.5 / -2 + 6.63, 0.8]) rotate([0, 0, 90]) UFL_IPX_RF_Connector_UFL();

	color(white) render() {
		translate([-4, 0.3, 1.8]) linear_extrude(height = ee) text(text=name, halign="center", valign="bottom", size=17 / len(value));
		translate([-4, -0.3, 1.8]) linear_extrude(height = ee) text(text=value, halign="center", valign="top", size=17 / len(value));
	}
}
