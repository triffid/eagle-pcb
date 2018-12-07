include <eagle-pcb/common.scad>

module UFL_IPX_RF_Connector_UFL() {
	color(light) cc([2.6, 2.6, 0.35]);
	color(gold) render() {
		hull() {
			cylinder(d=0.5, h=0.1, $fn=12);
			translate([0, 0, 1]) rotate([0, 90, 0]) sphere(d=0.5, $fn=16);
		}
		translate([1, 0, 0]) cc([1, 0.6, 0.1]);
		cc([1.8, 3, 0.1]);
		difference() {
			union() {
				cylinder(d=2, h=1.25, $fs=0.1, $fa = 1);
				translate([-1, 0, 0.2]) cc([1, 0.6, 0.15 + ee]);
			}
			cylinder(d=1.8, h=1.25, $fs=0.1, $fa = 1);
		}
	}
}
