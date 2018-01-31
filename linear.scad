include <eagle-pcb/common.scad>;

module linear_SO08(name, value) {
	rotate(90) soic(name=name, value=value);
}
