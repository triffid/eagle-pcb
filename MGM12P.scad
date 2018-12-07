include <eagle-pcb/common.scad>;
include <eagle-pcb/UFL-IPX-RF-Connector.scad>;

module MGM12P_MGM12P(name, value) {
	color(black)
		cc([12.9, 17.8, 0.8]);
	color(silver) {
		difference() {
			translate([0, -2, 0.5])
				cc([11.7, 13.55, 1.5]);
			translate([2, 1, 0])
				cube([10, 10, 5]);
		}
	}
	translate([12.9 / 2 - 1.63, 17.8 / 2 - 4.4, 0.8])
		rotate(180)
			UFL_IPX_RF_Connector_UFL();
}
