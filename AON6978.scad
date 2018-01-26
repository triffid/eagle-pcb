include <eagle-pcb/common.scad>

module AON6978_DFN_S_6X5_PP() {
	color(black) cc([5.75, 5, 0.95]);
	color(silver) render() {
		for (i = [0:3]) {
			translate([5.75 /  2, (-1.5 + i) * 1.27, -ee]) cc([0.2, 0.4, 0.2]);
			translate([5.75 / -2, (-1.5 + i) * 1.27, -ee]) cc([0.2, 0.4, 0.2]);
		}
	}
}
