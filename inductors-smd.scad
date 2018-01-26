include <eagle-pcb/common.scad>;

module inductors_smd_L4020(name, value) {
	color([0.4, 0.4, 0.4]) cc([4.1, 4.1, 2.3]);
	color(white) translate([0,  0.1, 2.3]) linear_extrude(height=ee) text(text=name, halign="center", valign="bottom", size=0.8);
	color(white) translate([0, -0.1, 2.3]) linear_extrude(height=ee) text(text=value, halign="center", valign="top", size=0.8);
}
