include <eagle-pcb/common.scad>;

module microbuilder_CRYSTAL_3_2X2_5(name, value) {
	smt_xtal(name, value);
}

module microbuilder_0603(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}

module microbuilder_SOT23_5(name, value) {
	sot23(5, name=name, value=value);
}

module microbuilder_LQFP100(name, value) {
	tqfp(pins = 100, pitch = 0.5, name=name, value=value);
}

module microbuilder_QFN24_4MM(name, value) {
	qfn(24, name=name, value=value);
}

/*copied from con-JST-PH.scad and rotated, changed color, other small changes
 * ...probably would have been cleaner to make a new housing and rotate pins
 * actual part is more complicated, did not include various cut-ins and hole in top of receiver
 */
module microbuilder_JSTPH(p=2) {
    translate([0,-2.45,(2.25 - 1.7 + 5.65/2)]){ 
        rotate([-90,0,0]){ 
            color(silver) render() for (i = [0:p - 1]) {
                //inside pins
                translate([(i - ((p - 1) * 0.5)) * 2, 0, -0.5]) rotate(45) hull() {
                    cylinder(d=0.5 / cos(180/4), h=5, $fn=4);
                    cylinder(d=0.25, h=5.5, $fn=4);
                }
                //vertical pins
                translate([(i - ((p - 1) * 0.5)) * 2, 3.35, -0.25]) rotate([90,45,0]) cylinder(d=0.5 / cos(180/4), h=3.56, $fn=4);
                //board pins
                translate([(i - ((p - 1) * 0.5)) * 2, 3.1, -2.85]) rotate(45) hull() {
                    cylinder(d=0.5 / cos(180/4), h=2.35, $fn=4);
                    translate([0, 0, -0.25]) cylinder(d=0.25 / cos(180/4), h=ee, $fn=4);
                }
            } //end pins color
            
            color( c = [.15,.15,.15, 1]) render() difference() {
                union(){
                    translate([0, 2.25 - 1.7, 0  ]) cc([3 + (p-1) * 2 + 3, 5.65, 6]);
                    translate([(3 + (p-1) * 2 + 3)/2-0.8/2, 2.25 - 1.7 + 1.85/2, -1.8  ]) cc([0.8, 3.8, 1.8]);
                    translate([-((3 + (p-1) * 2 + 3)/2-0.8/2), 2.25 - 1.7 + 1.85/2, -1.8  ]) cc([0.8, 3.8, 1.8]);
                }
                translate([0, 2.25 - 1.7 + 0.15, 0.4]) cc([p * 2 + 1.5, 3.6, 6]);
                translate([0, 0         , 0.4]) cc([p * 2 - 2  , 4.1, 6]);
            }
            
        }
    }
}

module microbuilder_JSTPH2(name, value) {
	microbuilder_JSTPH(2);
}
