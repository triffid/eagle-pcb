include <eagle-pcb/common.scad>

module ptc_littlefuse_1812L() {
	color(gold) difference() {
		cc([18 * 0.254, 12 * 0.254, 0.6]);
		translate([0, 0, -ee]) cc([2.2, 10, 10]);
		translate([ 9 * 0.254, 0, 0]) cylinder(d=0.5, h=10, center=true, $fn=12);
		translate([-9 * 0.254, 0, 0]) cylinder(d=0.5, h=10, center=true, $fn=12);
	}
	color([0.3, 0.2, 0]) translate([0, 0, ee]) cc([15 * 0.254, 12 * 0.254 - ee2, 0.6 - ee2]);
}
