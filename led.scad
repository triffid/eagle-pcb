include <eagle-pcb/common.scad>;

module led_CHIP_LED0603(name, value="GREEN") {
		ledsmd(name=name, value=value, s=[6 * 0.234, 3 * 0.234]);
}

module led_CHIPLED_0603(name, value="GREEN") {
	led_CHIP_LED0603(name, value);
}

module led_CHIPLED_0805(name, value="GREEN") {
	ledsmd(name=name, value=value, s=[8 * 0.254, 5 * 0.254]);
}

module led_CHIP_LED0805(name, value = "GREEN") {
	led_CHIPLED_0805(name = name, value = value);
}

module led_1206(name, value="GREEN") {
	rotate(90) ledsmd(name=name, value=value, s=[12 * 0.254, 6 * 0.254]);
}

module led_LED3MM(name, value) {
	color(silver) render() {
		for (i=[0:1]) {
			translate([-1.27 + 2.54*i, 0, -2.5]) cylinder(d=0.6, h=4, $fs=0.2);
		}
	}
	color([0.9, 0.7, 0.7, 0.7]) render() {
		rotate(270) difference() {
			cylinder(d=3.8, h=0.5);
			translate([-10, 1.5, -1]) cube([20, 10, 10]);
		}
		hull() {
			cylinder(d=3, h=0.5);
			translate([0, 0, 3])
				sphere(d=3, $fs=0.2);
		}
	}
}

module led_P_LCC4_0(name, value, height=1) {
	color(light) difference() {
		cc([2.8, 3.2, height]);
		translate([0, 0, height]) scale([1, 1, 0.5]) sphere(r=1, $fs=0.2);
	}
	color([0.4, 0.4, 0.4, 0.9]) translate([0, 0, height - 0.5]) cc([0.8, 1, 0.2]);
	color([0.8, 0.8, 0.8, 0.5]) cc([2.7, 3.1, height - 0.1]);
}
