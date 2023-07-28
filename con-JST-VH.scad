include <eagle-pcb/common.scad>

module con_JST_VH_B2P_VH_B(name, value) {
    color(light) render() {
        ccoff([-3.93, -4.875], [3.93, 2.075], 1.5);
        ccoff([-2.9, 2.075], [2.9, 4.1], 9.4);
        hull() {
            translate([0, 0, 7  ]) ccoff([-2.9, 2.075], [2.9, 4.7], 1  );
            translate([0, 0, 6.5]) ccoff([-2.9, 2.075], [2.9, 4.1], 2.9);
        }
    }
    color(silver) render() {
        for (x = [0:1]) {
            mirror([x, 0, 0]) translate([-1.98, 0, 0]) hull() {
                translate([0, 0, -3.7]) cc([0.5, 0.5, 14.6]);
                translate([0, 0, -3.4]) cc([1.14, 1.14, 14]);
            }
        }
    }
}
