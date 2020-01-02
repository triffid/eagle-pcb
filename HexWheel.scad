include <eagle-pcb/common.scad>

module hexwheel(size=10, height=5, name, value) {
	color(blue) render()
	difference() {
		cc([size, size, height]);
		translate([0, 0, height - 0.5]) cylinder(d=size * 0.8, h=height);
	}
	color(light) render() {
		translate([0, 0, height - 0.5 + ee]) difference() {
			cylinder(d=size * 0.7, h = 0.5, center=true);
			cc([size / 20, size * 0.65, height]);
			translate([0, size * 0.35 - (size / 10 * 1.414), 0]) difference() {
				rotate([0,0,45]) cc([size/5, size/5, height]);
				translate([0, size / -2, -ee]) cc([size, size, height * 2]);
			}
		}
	}
	color(silver) render() {
		translate([0, 0, height - 0.5 + ee2])
			cylinder(d=size * 0.7, h = ee, center=true);
	}
	color(white) render() {
		for (i=[0:15]) {
			rotate([0, 0, i * 360 / -16]) translate([0, size * 0.45, height]) linear_extrude(height = ee) text(text="0123456789ABCDEF"[i], halign="center", valign="center", size=size * 0.08);
		}
	}
}

module HexWheel_HEXWHEEL_10MM(name, value) {
	hexwheel(size=10, height=5, name=name, value=value);
}
