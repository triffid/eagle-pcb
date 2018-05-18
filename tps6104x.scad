include <eagle-pcb/common.scad>;

module tps6104x_TPS6104X(name, value) {
    translate([-1.3, -0.95]) rotate(-90) sot23(pins=5, name=name, value=value);
}
