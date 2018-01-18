include <eagle-pcb/common.scad>;

module rcl_C0402K() {
	rcsmd([4 * 0.254, 2 * 0.254]);
}

module rcl_R0402() {
	rcsmd([4 * 0.254, 2 * 0.254]);
}

module rcl_C0603() {
	rcsmd([6 * 0.254, 3 * 0.254]);
}

module rcl_C0805() {
	rcsmd([8 * 0.254, 5 * 0.254]);
}

module rcl_R0805() {
	rcsmd([8 * 0.254, 5 * 0.254]);
}

module rcl_PANASONIC_A() {
	electro_capacitor(3, 4);
}

module rcl_PANASONIC_B() {
	electro_capacitor(4, 5);
}

module rcl_C050_030X075() {
	color(silver) render() {
		translate([ 2.54, 0, -2]) cylinder(d=0.6, h=6, $fn=16);
		translate([-2.54, 0, -2]) cylinder(d=0.6, h=6, $fn=16);
	}
	color([0.5,0.1,0.1]) render() hull() {
		translate([ 2.54, 0, 1]) sphere(d=0.8, $fn=8);
		translate([-2.54, 0, 1]) sphere(d=0.8, $fn=8);
		translate([ 2.54, 0, 3]) sphere(d=2.5, $fn=8);
		translate([-2.54, 0, 3]) sphere(d=2.5, $fn=8);
		translate([ 2.54, 0, 5]) sphere(d=2.5, $fn=8);
		translate([-2.54, 0, 5]) sphere(d=2.5, $fn=8);
		translate([ 2.54, 0, 5.8]) sphere(d=0.8, $fn=8);
		translate([-2.54, 0, 5.8]) sphere(d=0.8, $fn=8);
	}
}
