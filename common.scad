$fa = 1;
$fs = 0.25;

ee = 0.01;
ee2 = ee * 2;

red = [1, 0, 0];
orange = [1, 0.6, 0];
yellow = [1, 1, 0];
green = [0, 1, 0];
silver = [0.7, 0.7, 0.7];
gold = [1, 0.8, 0.2];
dark = [0.2, 0.2, 0.2];
light = [0.9, 0.9, 1];
white = [1, 1, 1];
black = [0, 0, 0];

pcbgreen = [0, 0.55, 0];

soldermask = [0, 0.5, 0, 0.6];

fr4 = pcbgreen;

module board(c1, c2) {
	color(pcbgreen) render()
		translate([c1.x, c1.y, -1.6 - ee]) cube([c2.x - c1.x, c2.y - c1.y, 1.6]);
}

module cc(size) {
	render() linear_extrude(size[2]?size[2]:1)
		square([size[0], size[1]], center=true);
}

module electro_capacitor(d, h) {
	color(black) render() intersection() {
		cc([d, d, h / 8]);
		hull() {
			translate([d/24, 0, 0]) rotate(45) cc([d, d, h / 8]);
			translate([-d, 0, 0]) rotate(45) cc([d, d, h / 8]);
		}
	}
	color(silver) render() cylinder(d=d * 0.95, h=h);
	color(silver) render() cc([d * 1.2, d / 4, 0.25]);
}

module rcsmd(s=[1, 0.5, 0.5]) {
	color (silver) render()
		difference() {
			cc([s.x, s.y, s.z?s.z:s.y]);
			translate([0, 0, (s.z?s.z:s.y) / -2]) cc([s.x / 2, s.y * 2, (s.z?s.z:s.y) * 2]);
		}
	color (black) render()
		translate([0, 0, ee])
			cc([s.x - ee2, s.y - ee2, (s.z?s.z:s.y) - ee2]);
}

module ledsmd(c=[0, 1, 0, 0.8], s=[2, 1.27]) {
	color(silver) render()
		cc([s.y, s.x, s.x / 8]);
	color([c[0], c[1], c[2], 1]) render()
		translate([0, 0, 0.1]) cylinder(d=s.x / 4, h=s.x / 4, $fn=12);
	color([c[0], c[1], c[2], 0.8]) render()
		cc([s.y + ee, s.y, s.x * 0.4]);
}

module tqfp(pins = 32, pitch = 0.8) {
	color(black)
		cc([(pins / 4 * pitch + 1), (pins / 4 * pitch + 1), 1]);
	color(silver) {
		for (r = [0:3]) {
			rotate([0, 0, 90 * r]) {
				for (i = [0:pins/4 - 1]) {
					translate([pitch / 2 + ((pins / -8) * pitch) + (i * pitch), (pins / 4 * pitch + 1) / 2, 0]) cc([pitch / 2, 1.5, 0.1]);
				}
			}
		}
	}
	color(light) translate([((pins / -8) * pitch), ((pins / 4) * pitch) / 2, 1]) cylinder(d=0.6,h=ee, $fn=12);
}

module qfn(pins = 32, pitch = 0.5) {
	color(black)
		cc([(pins / 4 * pitch + 1), (pins / 4 * pitch + 1), 1]);
	color(silver) {
		for (r = [0:3]) {
			rotate([0, 0, 90 * r]) {
				for (i = [0:pins/4 - 1]) {
					translate([pitch / 2 + ((pins / -8) * pitch) + (i * pitch), (pins / 4 * pitch + 1) / 2, 0]) cc([pitch / 2, ee2, 0.25]);
				}
			}
		}
	}
	color(light) translate([((pins / -8) * pitch), ((pins / 4) * pitch) / 2, 1]) cylinder(d=0.6,h=ee, $fn=12);
}

module sw_membrane(size=[5, 5, 2]) {
	color(silver) render() translate([0, 0, (size[2] / 2) - 0.1]) hull() {
		cc([size[0], size[1] * 0.75, 0.1]);
		cc([size[0] * 0.75, size[1], 0.1]);
	}
	color(dark) render() {
		cylinder(d=(size[0] + size[1]) / 4, h=size[2]);
		hull() {
			cc([size[0], size[1] * 0.75, size[2] / 2 - 0.1]);
			cc([size[0] * 0.75, size[1], size[2] / 2 - 0.1]);
		}
	}
}

module smt_xtal() {
	color(gold) render() hull() {
		translate([-1.6 + 0.5, -1.25 + 0.5]) cylinder(r=0.5, h=0.5, $fn=12);
		translate([ 1.6 - 0.5, -1.25 + 0.5]) cylinder(r=0.5, h=0.5, $fn=12);
		translate([-1.6 + 0.5,  1.25 - 0.5]) cylinder(r=0.5, h=0.5, $fn=12);
		translate([ 1.6 - 0.5,  1.25 - 0.5]) cylinder(r=0.5, h=0.5, $fn=12);
		cc([2.8, 2.1, 0.6]);
	}
	color(silver) cc([3.2, 2.5, 0.1]);
}

module soic(p=8, w=4, name, value) {
	l = ((p / 2)) * 1.25;
	color(dark) difference() {
		cc([w, l, 1]);
		translate([w / -2 + 0.6, (0 - (p / 4) + 0.5) * -1.25, 1])
			sphere(d=0.8);
	}
	color(light) translate([w / -2 + 0.6, (0 - (p / 4) + 0.5) * -1.25, 0.9])
		cylinder(d=1, h=ee);
	color(silver) rotate(90)
		for (i = [0:p/2 - 1]) {
				for (r = [0:1])
					translate([(i - (p / 4) + 0.5) * 1.25, 0])
						rotate([0, 0, r * 180])
							translate([-0.25, w / 2])
								cube([0.5, w / 3, 0.4]);
	}
	color(white) translate([-0.1, 0, 1]) linear_extrude(height = ee) rotate(-90) text(text=value, halign="center", valign="top", size=w / 6);
	color(white) translate([0.1, 0, 1]) linear_extrude(height = ee) rotate(-90) text(text=name, halign="center", valign="bottom", size=w / 6);
}

module sot23(pins=3) {
	color(dark)
		cc([3, 1.5]);
	color(silver) {
		translate([ 1,  1.2]) cc([0.5, 1, 0.25]);
		translate([-1,  1.2]) cc([0.5, 1, 0.25]);
		if (pins != 4)
			translate([ 0, -1.2]) cc([0.5, 1, 0.25]);
		if (pins >= 4) {
			translate([ 1, -1.2]) cc([0.5, 1, 0.25]);
			translate([-1, -1.2]) cc([0.5, 1, 0.25]);
		}
		if (pins >= 6)
			translate([ 0,  1.2]) cc([0.5, 1, 0.25]);
	}
}

module sot563() {
	scale([0.4, 0.4, 0.5]) rotate(270) soic(p=6, w=2);
}

module bottom() {
	translate([0, 0, -1.6]) mirror([0, 0, 1]) children();
}

module pin(height = 10, width = 0.6, belowheight = 2) {
	color(silver) render() hull() {
		translate([0, 0, height]) cc([width / 2, width / 2, ee]);
		translate([0, 0, height - width]) cc([width, width, ee]);
		if (belowheight) {
			translate([0, 0, -belowheight + width]) cc([width, width, ee]);
			translate([0, 0, -belowheight]) cc([width / 2, width / 2, ee]);
		}
		else {
			cc([width, width, ee]);
		}
	}
}
