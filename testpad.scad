include <eagle-pcb/common.scad>

module testpad_TP10R(name, value) {
	#cylinder(r1=0, r2=1, h=20);
	#translate([0, 0, 21]) linear_extrude(height = ee) text(text=name, halign="center", valign="bottom", size=len(name) / 2);
}
