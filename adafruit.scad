include <eagle-pcb/common.scad>

module adafruit_TQFP44() {
	tqfp(pins=44);
}

module adafruit_SOT23() {
	rotate(180) sot23();
}
