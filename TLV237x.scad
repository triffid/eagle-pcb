include <eagle-pcb/common.scad>

module TLV237x_SOIC16N(name, value) {
	rotate(90) soic(p=16, name=name, value=value);
}

module TLV237x_MSOP8(name, value) {
	soic(p=8, w = 3, pitch=0.65, name=name, value=value);
}
