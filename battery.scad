include <eagle-pcb/common.scad>;

module battery_AB9V() {
	color(silver) render() {
		translate([0, -2.54, -2]) cylinder(d=1, h=5, $fn=8);
		translate([0,  2.54, -2]) cylinder(d=1, h=5, $fn=8);
	}

	color(black) translate([0, -2.54, 0.2]) cylinder(d=1.5, h=20, $fn=8);
	color(red)   translate([0,  2.54, 0.2]) cylinder(d=1.5, h=20, $fn=8);
}
