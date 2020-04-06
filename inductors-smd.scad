include <eagle-pcb/common.scad>;

module inductors_smd(name, value, lw, height) {
	color([0.4, 0.4, 0.4]) difference() {
		hull() {
			cc([lw * 0.8, lw, height]);
			cc([lw, lw * 0.8, height]);
		}
		translate([0, 0, height - 0.5]) difference() {
			cylinder(d=lw * 0.8    , h=10);
			translate([0, 0, -ee]) cylinder(d=lw * 0.8 - 1, h=11);
		}
	}
	color(dark)  translate([0, 0, height - 0.5]) cylinder(d=lw * 0.81, h=ee);
	color(white) translate([0,  0.1, height]) linear_extrude(height=ee) text(text=name, halign="center", valign="bottom", size=lw / len(value));
	color(white) translate([0, -0.1, height]) linear_extrude(height=ee) text(text=value, halign="center", valign="top", size=lw / len(value));
}

module inductors_smd_L4020(name, value) {
	inductors_smd(name, value, 4.1, 2);
}

module inductors_smd_L5151(name, value) {
	inductors_smd(name, value, 5.1, 3);
}

module inductors_smd_SLF12575T(name, value) {
	inductors_smd(name, value, 12.5, 7.5);
}

module inductors_smd_MSS1210(name, value) {
	inductors_smd(name, value, 12, 10);
}

module inductors_smd_MSS1048(name, value) {
	inductors_smd(name, value, 10, 4.8);
}

module inductors_smd_LPS4018(name, value) {
	inductors_smd(name, value, 4.1, 1.8);
}

module inductors_smd_0603_1608(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value, , bodycolor=dark);
}
