include <eagle-pcb/common.scad>;

module SparkFun_DigitalIC_MLF32_PAD(name, value) {
	qfn(32, name=name, value=value);
}

module SparkFun_DigitalIC_TSSOP_28_4MM(name, value) {
	soic(p=28, w=4.5, pitch = 0.65, name=name, value=value);
}
