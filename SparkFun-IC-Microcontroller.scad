include <eagle-pcb/common.scad>

module SparkFun_IC_Microcontroller_TQFP100(name, value) {
	tqfp(pins=100, pitch=0.5, name=name, value=value);
}

module SparkFun_IC_Microcontroller_TQFP32_08(name, value) {
	tqfp(pins=32, pitch=0.8, name=name, value=value);
}
