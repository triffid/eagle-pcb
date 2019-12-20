include <eagle-pcb/common.scad>;

module diode_SOD523() {
	color(dark) cc([1.2, 0.8, 0.6]);
	color(silver) cc([1.6, 0.3, 0.25]);
	color(light) translate([-0.4, 0, 0.6]) cc([0.4, 0.8, ee]);
}

module diode_SOT_23(name, value) {
	rotate(180) sot23(3, name=name, value=value);
}

module diode_SMB(name, value) {
	color(black) render() cc([4.32, 3.56, 2.47]);
	color(silver) render() cc([5.44, 2, 1.2]);
	color(light) render() translate([4.32 / -2 + 0.5, 0, 2.47]) cc([1, 3.56, ee]);
	color(white) render() translate([0.5, 0, 2.47]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size = 3.4 / len(value));
}

module diode_SMC(name, value) {
	color(black) render() cc([6.85, 5.9, 2.3]);
	color(silver) render() cc([7.2, 3, 1.2]);
	color(light) render() translate([6.85 / -2 + 0.5, 0, 2.3]) cc([1, 5.9, ee]);
	color(white) render() translate([0.5, 0, 2.3]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size = 5.8 / len(value));
}

module diode_SOD123(name, value) {
	color(black) render() cc([2.69, 1.6, 1.17]);
	color(silver) render() {
		cc([3.68, 0.61, 0.05]);
		cc([3   , 0.61, 0.6 ]);
	}
	color(light) render() translate([2.69 / -2 + 0.25, 0, 1.17]) cc([0.5, 1.6, ee]);
	color(white) render() translate([0.25, 0, 1.17]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size = 2.19 / len(value));
}

module diode_SOD_123FL(name, value) {
	rotate([0, 0, 180]) diode_SOD123(name, value);
}

module diode_SOD323_R(name, value) {
	color(dark) cc([1.6, 1.2, 0.6]);
	color(silver) cc([2, 0.5, 0.25]);
	color(light) translate([-0.6, 0, 0.6]) cc([0.4, 1.2, ee]);
}

module diode_SOD323_W(name, value) {
	diode_SOD323_R(name, value);
}

module diode_SOD_128(name, value) {
	color(dark) cc([2.5, 3.7, 0.95]);
	color(silver) cc([1.5, 4.7, 0.17]);
	color(light) translate([0, 3.7 * 0.5 - 0.5, 0.95]) cc([2.5, 1, ee]);
}
