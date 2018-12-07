include <eagle-pcb/common.scad>

module inductors_murata_2020_5050(name, value) {
	*rcsmd([20 * 0.254, 20 * 0.254, 3], name=name, value=value);
	color(black) difference() {
		rotate([0, 0, 180/8]) cylinder(d=4.9, h=3, $fn=8);
		translate([0, 0, 2]) rotate_extrude() translate([2.5, 0]) scale([0.75, 1]) circle(d=1.5);
	}
	color(orange) {
		for (h = [0:4])
			translate([0, 0, 1.5 + h * 0.25]) rotate_extrude() translate([2.2, 0]) scale([0.75, 1]) circle(d=0.25, $fn=12);
	}
	color(silver) cc([5, 3, 0.5]);
	color(white) translate([0, 0, 3]) linear_extrude(height = ee) rotate(-90) text(text=value, halign="center", valign="center", size=5 / len(value));
}

module inductors_murata_0603_1608(name, value) {
	rcsmd([1.6, 0.8, 0.8], name=name, value=value);
}
