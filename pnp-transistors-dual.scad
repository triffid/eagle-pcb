include <eagle-pcb/common.scad>;

module pnp_transistors_dual_SOT1118(name, value) {
    qfn(pins=6, sides=2, pitch = 0.35, h=0.6, name=name, value=value);
}
