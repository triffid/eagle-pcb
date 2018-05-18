include <eagle-pcb/common.scad>;

module SparkFun_DiscreteSemi_SOT23_3(name, value) {
    rotate(180) sot23(name=name, value=value);
}
