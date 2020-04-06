include <eagle-pcb/common.scad>;

module MCP_SOT23_5(name, value) {
	rotate(90) sot23(5, name=name, value=value);
}

module MCP_SOT23_6(name, value) {
	rotate(90) sot23(6, name=name, value=value);
}

module MCP_TSSOP_20(name, value) {
	soic(p = 20, w = 4.3, pitch = 0.65, name=name, value=value);
}
