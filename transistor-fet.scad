include <eagle-pcb/common.scad>;

module transistor_fet_SC74_INFINEON(name, value) {
	rotate(90) soic(p=6, w=1.6, pitch=0.95, name=name, value=value);
}
