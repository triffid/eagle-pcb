include <eagle-pcb/common.scad>;

module LIS3DH_LGA_16(name, value) {
	color(black) cc([3, 3, 0.8]);
	color(white) render() {
		translate([0.1, 0, 1]) linear_extrude(height = ee) rotate(-90) text(text=name, halign="center", valign="bottom", size=(16 / 4 * 0.5 + 1) / len(value));
		translate([-0.1, 0, 1]) linear_extrude(height = ee) rotate(-90) text(text=value, halign="center", valign="top", size=(16 / 4 * 0.5 + 1) / len(value));
	}
}
