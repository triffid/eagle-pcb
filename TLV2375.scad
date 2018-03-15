include <eagle-pcb/common.scad>

module TLV2375_SOIC16N(name, value) {
	rotate(90) soic(p=16, name=name, value=value);
}
