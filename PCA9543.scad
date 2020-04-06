include <eagle-pcb/common.scad>

module PCA9543_TSSOP24(name, value) {
	rotate(90) soic(p = 24, w = 4.3, pitch = 0.65, name=name, value=value);
}
