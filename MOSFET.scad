include <eagle-pcb/common.scad>

module MOSFET_MLP8_33(name, value) {
	rotate([0, 0, 90]) qfn(pins=8, sides=2, pitch=0.65, h=0.8, name=name, value=value);
}

module MOSFET_SOT_23(name, value) {
	rotate(180) sot23(3, name, value);
}

module leg(w = 0.7, $fa = 1, $fs = 0.05) {
	render() translate([w / -2, 0, 0]) rotate([0, 0, 90]) rotate([90, 0, 0]) linear_extrude(w) union() {
		square([0.9, 0.5]);
		translate([2.0, 0.49]) square([0.9, 0.5]);
		translate([2.0, 0]) intersection() {
			difference() {
				circle(r=0.99);
				circle(r=0.49);
			}
			difference() {
				mirror([1, 0]) square([10, 10]);
				rotate(51) mirror([1, 0]) square([10, 10]);
			}
		}
		translate([0.9, 0.99]) intersection() {
			difference() {
				circle(r=0.99);
				circle(r=0.49);
			}
			difference() {
				mirror([0, 1]) square([10, 10]);
				rotate(231) mirror([1, 0]) square([10, 10]);
			}
		}
	}
}

module MOSFET_TO252(name, value, h=2.2, w=6.5) {
	color(dark)
		translate([0, 0.8]) cc([w, 6.1, h]);
	color(silver) render() hull() {
		translate([0, 1.7]) cc([5.2, 4.3, 0.5]);
		translate([0, 4.8])  cc([4.5, 0.2, 0.5]);
	}
	color(silver) render() {
		translate([-2.29, -5]) leg();
		translate([ 2.29, -5]) leg();
		translate([ 0   , -5]) intersection() {
			leg();
			translate([0, 2.5]) cc([1, 1, 2]);
		}
	}
	color(white) {
		translate([0,  0.1, h + ee]) linear_extrude(height = ee) text(text=name , halign="center", valign="bottom", size=w / len(value));
		translate([0, -0.1, h + ee]) linear_extrude(height = ee) text(text=value, halign="center", valign="top"   , size=w / len(value));
	}
}

module MOSFET_DFN_S_6X5_PP(name, value) {
	color(black) cc([5.75, 5, 0.95]);
	color(silver) render() {
		for (i = [0:3]) {
			translate([5.75 /  2, (-1.5 + i) * 1.27, -ee]) cc([0.2, 0.4, 0.2]);
			translate([5.75 / -2, (-1.5 + i) * 1.27, -ee]) cc([0.2, 0.4, 0.2]);
		}
	}
	color(light) {
		translate([0, 0, 0.95]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size=5.75 / len(value));
		translate([5.75 * 3 / -8, 5 * 3 / 8, 0.95]) cylinder(d=0.6, h=ee, $fn=12);
	}
}
