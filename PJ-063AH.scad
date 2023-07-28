include <eagle-pcb/common.scad>;

module PJ_063AH_CUI_PJ_063AH(name, value) {
  color(dark) render() {
    difference() {
      union() {
        translate([5.5, 0, 0]) cc([13, 9, 8.8]);
        translate([0, 0, 0]) cc([2, 10, 9]);
        translate([11.5, 0, 0]) cc([1, 10, 9]);
      }
      translate([0, 0, 5]) rotate([0, 90, 0]) cylinder(d=6, h=20);
    }
    translate([9, 0, -1.8]) cylinder(d=1.5, h=2);
  }
  color(silver) render() {
    translate([7, 0, -3]) {
      translate([0,  4.5, 0]) cc([2, 0.2, 8]);
      translate([0, -4.5, 0]) cc([2, 0.2, 8]);
    }
    translate([0, 0, -3]) cc([0.2, 2, 4]);
    translate([6, 0, -3]) cc([0.2, 2, 4]);
    difference() {
      union() {
        translate([6,  4.5, 0]) cc([10, 0.2, 9]);
        translate([6, -4.5, 0]) cc([10, 0.2, 9]);
        translate([6,    0, 8.8]) cc([10, 9.2, 0.2]);
      }
      translate([7, 0, -1]) cc([2.5, 10, 5.5]);
    }
    hull() {
       translate([0, 0, 5]) rotate([0, 90, 0]) cylinder(d=2.5, h=1);
       translate([10, 0, 5]) sphere(d=2.5);
    }
  }
}
