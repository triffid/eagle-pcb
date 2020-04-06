include <eagle-pcb/common.scad>;

module WE_PP_TRANSFORMER(size, name, value) {
	color(black) cc(size);
	color(white) render() translate([0, 0, size[2]]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size = size[1] / len(value));
	color(silver) render()
		for (i = [0:2]) {
			translate([0, size[0] / 3 - (i * size[0] / 3), 0]) cc([size[1] + 3, 0.66, 0.5]);
		}
}

module WE_PP_TRANSFORMER_760390013(name, value) {
	WE_PP_TRANSFORMER([7.14, 6.73, 4.19], name=name, value=value);
}
