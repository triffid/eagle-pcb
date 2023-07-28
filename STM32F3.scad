include <eagle-pcb/common.scad>;

module STM32F3_LQFP64_0_5_10X10(name, value) {
	tqfp(pins = 64, pitch = 0.5, size = 10, name = name, value = value);
}
