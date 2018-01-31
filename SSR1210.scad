include <eagle-pcb/common.scad>;

module SSR1210_SRR1210(name, value) {
	color(dark) render() difference() {
		hull() {
			for (r=[0:3]) rotate(90 * r) translate([5, 5, 0]) cylinder(r=1, h=10, $fn=12);
		}
		difference() {
			translate([0, 0, 9]) {
				for (r=[0:3]) rotate(90 * r) translate([3, 3, 0]) cylinder(r=1, h=10, $fn=12);
				cylinder(d=9, h=10, $fn=16);
			}
			cylinder(d=8, h=11, $fn=16);
		}
	}
	color(dark * 1.5) cylinder(d=11.5, h=9.5, $fn=16);
	color(white) render() translate([0, 0, 10]) linear_extrude(height=ee) text(text=value, halign="center", valign="center", size=8 / len(value));
}
