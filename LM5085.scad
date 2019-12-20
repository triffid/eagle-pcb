include <eagle-pcb/common.scad>;

module LM5085_WSON_8(name, value) {
	qfn(pins=8, sides=2, pitch=0.5, h=0.8, size=3, name=name, value=value);
}
