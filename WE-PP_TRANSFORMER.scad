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

module WE_PP_TRANSFORMER_750032050(name, value) {
	color(silver) render() {
		translate([0, 0, 4.5]) {
			cc([16.5,  15, 8.4 - 4.5]);
			cc([12.5,12.5, 8.7 - 4.5]);
		}
		difference() {
			pins=4;
			pitch=3.71;
			for (i = [0:pins-1]) {
				translate([0, (i - ((pins - 1) / 2)) * pitch, 0]) cc([19.25, 1, 0.5]);
				translate([0, (i - ((pins - 1) / 2)) * pitch, 2.5]) cc([22.65, 1.2, 0.5]);
			}
			translate([0, 0, -ee]) cc([10 + ee2, 17, 3.5 + ee2]);
		}
	}
	color(black) {
		difference() {
			union() {
				cc([18.5, 16.5    , 3.5]);
				cc([15  , 15 + ee2, 8.4 - ee]);
			}
			translate([0, 0, -ee]) cc([10, 17, 3.5 + ee2]);
		}
		translate([0, 0, 8.7]) {
			translate([-5, 5, 0]) cylinder(d=1, h=ee, $fn=12);
			linear_extrude(height = ee) text(text=value, halign="center", valign="center", size = 12 / len(value));
		}
	}
	color(yellow) {
		hull() {
			translate([0,  2, 3]) rotate([0, 90, 0]) cylinder(h=10 + ee2, r=3, center=true);
			translate([0, -2, 3]) rotate([0, 90, 0]) cylinder(h=10 + ee2, r=3, center=true);
		}
	}
}
