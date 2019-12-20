include <eagle-pcb/common.scad>;

module SparkFun_IC_Logic_SO16(name, value) {
	rotate(90) soic(16, name=name, value=value);
}
