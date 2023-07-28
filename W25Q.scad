include <eagle-pcb/common.scad>;

module W25Q_WSON6X5(name, value) {
	qfn(pins=8,pitch=1.27,h=0.8,sides=2,size=5.5,name=name,value=value);
}
