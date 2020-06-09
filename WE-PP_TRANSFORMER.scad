include <eagle-pcb/common.scad>;

module WE_PP_TRANSFORMER(size, name, value, pins=3, pitch=1.27) {
	color(black) cc(size);
	color(white) render() translate([0, 0, size[2]]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size = size[1] / len(value));
	color(silver) render()
		for (i = [0:pins-1]) {
			translate([0, (i - ((pins - 1) / 2)) * pitch, 0]) cc([size[0] + 2, 0.66, 0.5]);
		}
}

module WE_PP_TRANSFORMER_760390013(name, value) {
	WE_PP_TRANSFORMER([7.14, 6.73, 4.19], name=name, value=value, pitch=2.54);
}

module WE_PP_TRANSFORMER_750311692(name, value) {
	WE_PP_TRANSFORMER([7.5, 9.5, 5], name=name, value=value, pins=4, pitch=2.54);
}
