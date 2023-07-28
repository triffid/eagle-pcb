include <eagle-pcb/common.scad>;

module STM32H7_LQFP144(name, value) {
	tqfp(pins=144, pitch=0.5, name=name, value=value);
}
