include <eagle-pcb/common.scad>

module adafruit_TQFP44(name, value) {
	tqfp(pins=44, name=name, value=value);
}

module adafruit_SOT23(name, value) {
	rotate(180) sot23(name=name, value=value);
}
