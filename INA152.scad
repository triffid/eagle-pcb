include <eagle-pcb/common.scad>;

module INA152_DGK_S_PDSO_G8(name, value) {
	rotate(90) scale(0.5) soic(w=6, name=name, value=value);
}
