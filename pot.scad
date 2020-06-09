include <eagle-pcb/common.scad>;

module pot_EVUF(name, value) {
	color(light) render() {
		translate([0, -0.25, 0]) cc([9.5, 10  , 4]);
		translate([0, -0.25, 0]) cc([8  , 11.5, 4]);
	}
	color(silver) render() {
		for (i=[0:2]) {
			translate([-2.5 + i * 2.5, -7, -3.25]) hull() {
				cc([1, 0.2, 3.25 + 2]);
				translate([0, 0, 3.25 + 2.1]) rotate([0, 90, 0]) cylinder(d=0.2, h=1, center=true, $fn=16);
			}
			translate([-2.5 + i * 2.5, -6, 2]) {
				cc([1, 2, 0.2]);
			}
		}
	}
	color(dark) render() difference() {
		cylinder(d=5, h=30);
		translate([0, 6.5, 30 - 12]) cc([10, 10, 20]);
	}
}
