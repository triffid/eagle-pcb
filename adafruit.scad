include <eagle-pcb/common.scad>

module adafruit_TQFP44(name, value) {
	tqfp(pins=44, name=name, value=value);
}

module adafruit_SOT23(name, value) {
	rotate(180) sot23(name=name, value=value);
}

module adafruit_SOD_523(name, value) {
    rotate(-90) {
        color(dark) cc([1.2, 0.8, 0.6]);
        color(silver) cc([1.6, 0.3, 0.25]);
        color(light) translate([-0.4, 0, 0.6]) cc([0.4, 0.8, ee]);
	}
}
