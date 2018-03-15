include <eagle-pcb/common.scad>

module AD56x1_SC70(name, value) {
	rotate(90) soic(p=6, w=1.3, pitch=0.65, name=name, value=value);
}
