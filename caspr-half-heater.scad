include <eagle-pcb/common.scad>

module caspr_half_heater_POGO_PIN(name, value) {
	color(gold) translate([0, 5.125, 0]) {
		translate([0, 0, 0.103 * -25.4]) cylinder(d=0.016 * 25.4, h=5);
		cylinder(d=0.043 * 25.4, h=0.025 * 25.4);
		cylinder(d=0.042 * 25.4, h=0.053 * 25.4);
		cylinder(d=0.037 * 25.4, h=0.186 * 25.4);
		hull() {
			cylinder(d=0.019 * 25.4, h=1);
			translate([0, 0, (0.247 - 0.0275 - 0.019/2) * 25.4]) sphere(d=0.019 * 25.4, $fn=12);
		}
	}
}
