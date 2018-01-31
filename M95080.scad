include <eagle-pcb/common.scad>;

module M95080_SO08_EIAJ(name, value) {
	rotate(90) soic(p=8, w=5, name=name, value=value);
}
