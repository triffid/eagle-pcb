include <eagle-pcb/common.scad>

module con_DC_BARREL_JACK_PJ_051BH(name, value) {
    color(dark) render() {
        difference() {
            union() {
                ccoff([-5.75, -4.75], [1.25, 4.75], 7.3);
                ccoff([ 0   , -4.5 ], [5.75, 4.25], 7.3);
                translate([0, 0, -1]) ccoff([-2.65, -2.15], [-0.85, -0.35], 2);
            }
            translate([2.45, -1.15, 3.5]) rotate([0, -90, 0]) cylinder(d=5.5, h=50);
        }
    }
    color(silver) render() {
        translate([2.45, -1.15, 3.5]) 
            hull() {
                rotate([0, -90, 0]) sphere(d=2.5);
                translate([-7.7 + 1.25, 0, 0]) rotate([0, -90, 0]) sphere(d=2.5);
            }
        translate([0, 0, 7.3]) ccoff([-5.25,  -5], [1.25,  5  ], 0.1 );
        translate([0, 0, 7.3]) ccoff([-1   ,  -4], [2   ,  4  ], 0.1 );
        translate([0, 0, 0.5]) ccoff([-5.25,  -5], [1.25, -4.9], 7.35 - 0.5);
        translate([0, 0, 0.5]) ccoff([-5.25, 4.9], [1.25,  5  ], 7.35 - 0.5);
        translate([-2.75, -4.95 + 0.05, -2.5 + 1.8/2])
        hull() {
            rotate([-90, 0, 0]) cylinder(d=1.8, h=0.1);
            translate([0, 0, 5]) rotate([-90, 0, 0]) cylinder(d=1.8, h=0.1);
        }
        translate([-2.75, 4.95 - 0.05, -2.5 + 1.8/2])
        hull() {
            rotate([-90, 0, 0]) cylinder(d=1.8, h=0.1);
            translate([0, 0, 5]) rotate([-90, 0, 0]) cylinder(d=1.8, h=0.1);
        }
        translate([4.55, -4.55 - 0.05, -2.5 + 1.8/2])
        hull() {
            rotate([-90, 0, 0]) cylinder(d=1.8, h=0.1);
            translate([0, 0, 5]) rotate([-90, 0, 0]) cylinder(d=1.8, h=0.1);
        }
        translate([4.55, 4.05 - 0.05, -2.5 + 1.8/2])
        hull() {
            rotate([-90, 0, 0]) cylinder(d=1.8, h=0.1);
            translate([0, 0, 5]) rotate([-90, 0, 0]) cylinder(d=1.8, h=0.1);
        }
        translate([4.55, -1.15 - 0.05, -2.5 + 1.8/2])
        hull() {
            rotate([-90, 0, 0]) cylinder(d=1.8, h=0.1);
            translate([0, 0, 5]) rotate([-90, 0, 0]) cylinder(d=1.8, h=0.1);
        }
        
        union() {
            translate([7.8, -1.15, -2.5 + 1.2 / 2]) sphere(d=1.2);
            translate([7.8, -1.15, -1.9])
                tubesegment(1.2, 0, 4.1)
                tubesegment(1.2, 0, pi/2, 90)
                tubesegment(1.2, 0, 3);
        }
    }
}
