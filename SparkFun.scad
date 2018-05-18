include <eagle-pcb/common.scad>

module SparkFun_EIA3216(name, value) {
	color([1, 0.9, 0.2]) cc([3.2, 1.6, 1.5]);
	color(orange) translate([1.35, 0, 1.5]) cc([0.5, 1.6, ee]);
	color(silver) translate([0, 0, ee]) cc([3.3, 1, 0.8]);
	color(black) render() translate([-0.5, 0, 1.5]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size=3 / len(value));
}

module SparkFun_1X06_LOCK(name, value) {
}

module SparkFun_USB_B_PTH(name, value) {
}

module SparkFun_0603(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}

module SparkFun_0402_RES(name, value) {
	rcsmd([4 * 0.254, 2 * 0.254], name=name, value=value);
}

module SparkFun_0402_CAP(name, value) {
	rcsmd([4 * 0.254, 2 * 0.254], name=name, value=value);
}
