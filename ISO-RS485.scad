include <eagle-pcb/common.scad>;

module ISO_RS485_SO_16DW(name, value) {
	rotate(90) soic(p=16, w=7.5, name=name, value=value);
}
