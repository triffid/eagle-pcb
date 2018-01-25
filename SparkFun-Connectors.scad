include <eagle-pcb/common.scad>;

module SparkFun_Connectors_USB_AB_MICRO_SMD() {
	color(silver) render()
	translate([-2.25, 0, 0])
	group() {
		difference() {
			union() {
				translate([2.15, 0, 0]) cc([0.9, 8.8, 0.2]); // mechanical wings
				hull() {
					translate([0, -3.5, 0.8]) cube([5.1, 7, 1.1]);
					translate([0, -3  , 0  ]) cube([5.1, 6, 1.1]);
				}
				for (i=[0:4]) translate([5, (i - 2) * 0.65, 0]) cc([1, 0.3, 0.1]);
			}
			hull() {
				translate([-1, -3.25, 0.8]) cube([5, 6.5, 1.05]);
				translate([-1, -2.75  , 0.05  ]) cube([5, 5.5, 1]);
			}
		}
	}
	color(dark) translate([-0.25, 0, 1.3]) cc([3.5, 3.4, 0.3]);
	color(gold) for (i=[0:4]) translate([-0.2 - abs(2 - i) * 0.05, (i - 2) * 0.65, 1.25]) cc([3, 0.3, 0.1]);
}
