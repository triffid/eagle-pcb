include <eagle-pcb/common.scad>

module SparkFun_EIA3216(name, value) {
	rcsmd([3.2, 1.6], name=name, value=value);
}

module SparkFun_1X06_LOCK(name, value) {
}

module SparkFun_USB_B_PTH(name, value) {
}

module SparkFun_0603(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}
