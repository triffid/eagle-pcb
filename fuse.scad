include <eagle-pcb/common.scad>;

module fuse_MF_SMDF050(name, value) {
	color(gold) difference() {
		cc([5.08, 4.575, 0.7]);
		translate([0, 0, -ee]) cc([5.08 - 1.6, 10, 10]);
		translate([ 2.5, 0, 0]) cylinder(r=0.5, h=10, center=true, $fn=12);
		translate([-2.5, 0, 0]) cylinder(r=0.5, h=10, center=true, $fn=12);
	}
	color([0.3, 0.2, 0]) translate([0, 0, ee]) cc([5.08 - 1.6 + ee2, 4.575 - ee2, 0.7 - ee2]);
	color(white) translate([0, 0, 0.7]) linear_extrude(height = ee) rotate(90) text(text=value, halign="center", valign="center", size=4.575 / len(value));
}
