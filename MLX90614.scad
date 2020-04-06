include <eagle-pcb/common.scad>

module MLX90614_AA(name, value) {
	color(silver) {
		cylinder(d=9.12, h=0.2);
		cylinder(d=9   , h=0.3);
		cylinder(d=8.2 , h=3.6);
		translate([0, 0, 3.6 - ee]) cylinder(d1=5.6, d2=3.5, h=0.5);
		rotate(45) translate([5, 0, 0]) cc([1, 0.8, 0.3]);
	}
	color(dark) {
		cylinder(d=3.49, h=4.1);
	}
}
