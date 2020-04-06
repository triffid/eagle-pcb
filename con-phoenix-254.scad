include <eagle-pcb/con-phoenix-350.scad>;

module con_phoenix_254_5POL254(name, value) {
	rotate(180) scale([254 / 350, 254 / 350, 0.5]) con_phoenix_350_1751248(pins=5, name=name, value=value);
}
