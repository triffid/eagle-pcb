include <eagle-pcb/common.scad>
include <eagle-pcb/led.scad>

module Nordic_misc_DIOC0603_N(name, value) {
	rotate(90) led_CHIP_LED0603(name=name, value=value);
}
