$fa = 1;
$fs = 0.25;

ee = 0.01;
ee2 = ee * 2;

pi = 3.14159265358979;

red = [1, 0, 0];
orange = [1, 0.4, 0];
yellow = [1, 1, 0];
green = [0, 1, 0];
blue  = [0.3, 0.3, 1];
silver = [0.7, 0.7, 0.7];
gold = [1, 0.8, 0.2];
dark = [0.2, 0.2, 0.2];
light = [0.9, 0.9, 1];
white = [1, 1, 1];
black = [0, 0, 0];

capacitor_brown = [0.5,0.3,0.1,1];

pcbgreen = [0, 0.3, 0, 0.8];

soldermask = [0, 0.4, 0, 0.5];

fr4 = pcbgreen;

module board(c1, c2) {
	color(pcbgreen) render()
		translate([c1.x, c1.y, -1.6 - ee]) cube([c2.x - c1.x, c2.y - c1.y, 1.6]);
}

module ccoff(c1, c2, height=1) {
	render() linear_extrude(height?height:1)
		translate([c1[0], c1[1]]) square([c2[0] - c1[0], c2[1] - c1[1]]);
}

module cc(size) {
	render() linear_extrude(size[2]?size[2]:1)
		square([size[0], size[1]], center=true);
}

module electro_capacitor(d, h, name, value) {
	color(black) render() {
		intersection() {
			cc([d, d, h / 8]);
			hull() {
				translate([d/24, 0, 0]) rotate(45) cc([d, d, h / 8]);
				translate([-d, 0, 0]) rotate(45) cc([d, d, h / 8]);
			}
		}
		intersection() {
			translate([0, 0, h]) cylinder(d=d * 0.95 + ee, h=ee);
			translate([d / -2, 0, 1]) cc([d / 2, d, h * 2]);
		}
	}
	color(silver) render() {
		cylinder(d=d * 0.95, h=h);
		cc([d * 1.2, d / 4, 0.25]);
	}
	color(white) {
		if ($preview) translate([0,  0.1, h + ee]) linear_extrude(height = ee) text(text=name , halign="center", valign="bottom", size=d / len(value));
		if ($preview) translate([0, -0.1, h + ee]) linear_extrude(height = ee) text(text=value, halign="center", valign="top"   , size=d / len(value));
	}
}

module rcsmd(s=[1, 0.5, 0.5], name, value, bodycolor=black) {
	color (silver) render()
		difference() {
			cc([s.x, s.y, s.z?s.z:s.y]);
			translate([0, 0, (s.z?s.z:s.y) / -2]) cc([s.x / 2, s.y * 2, (s.z?s.z:s.y) * 2]);
		}
	color (bodycolor) render()
		translate([0, 0, ee])
			cc([s.x - ee2, s.y - ee2, (s.z?s.z:s.y) - ee2]);
	if ($preview) color(white) translate([0, 0, s.z?s.z:s.y]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size=s.y / len(value));
}

module ledsmd(s=[2, 1.27], name, value="GREEN") {
	c =
		(value == "green"  || value == "GREEN"  || value == "Green"  ) ? green :
		(value == "yellow" || value == "YELLOW" || value == "Yellow" ) ? yellow :
		(value == "orange" || value == "ORANGE" || value == "Orange" ) ? orange :
		(value == "blue"   || value == "BLUE"   || value == "Blue"   ) ? blue :
		(value == "white"  || value == "WHITE"  || value == "White"  ) ? white :
		red;

	echo(c);
	color(silver) render()
		cc([s.y, s.x, s.x / 8]);
	color([c[0], c[1], c[2], 1]) render()
		translate([0, 0, 0.1]) cylinder(d=s.x / 4, h=s.x / 4, $fn=12);
	color([c[0], c[1], c[2], 0.8]) render()
		cc([s.y + ee, s.y, s.x * 0.4]);
}

module tqfp(pins = 32, pitch = 0.8, size = 0, name, value) {
	sz = (size == 0) ? (((pins / 4) + 4 / 2) * pitch) : (size);
	color(black)
		cc([sz, sz, 1]);
	color(silver) {
		for (r = [0:3]) {
			rotate([0, 0, 90 * r]) {
				for (i = [0:pins/4 - 1]) {
					translate([((pins / -8) + i + 0.5) * pitch, sz / 2, 0]) cc([pitch / 2, 1.5, 0.1]);
				}
			}
		}
	}
	color(light) translate([((pins / -8) * pitch), ((pins / 4) * pitch) / 2, 1]) cylinder(d=0.6,h=ee, $fn=12);
	color(white) render() {
		if ($preview) translate([0.1, 0, 1]) linear_extrude(height = ee) rotate(-90) text(text=name, halign="center", valign="bottom", size=(pins / 4 * pitch + 1) / len(value));
		if ($preview) translate([-0.1, 0, 1]) linear_extrude(height = ee) rotate(-90) text(text=value, halign="center", valign="top", size=(pins / 4 * pitch + 1) / len(value));
	}
}

module qfn(pins = 32, pitch = 0.5, h = 1, sides = 4, size = 0, name, value) {
	sz = (size == 0) ? (((pins / sides) + sides / 2) * pitch) : (size);
	color(black)
		cc([sz, sz, h]);
	color(silver) {
		for (r = [0:sides-1]) {
			rotate([0, 0, 90 + (360 / sides) * r]) {
				for (i = [0:pins/sides - 1]) {
					translate([((pins / sides) / -2 + i + 0.5) * pitch, sz / 2, -ee]) cc([pitch / 2, ee2, h / 4]);
				}
			}
		}
	}
	color(light) translate([-sz / 2 * 3/4, sz / 2 * 3/4, h]) cylinder(d=0.6,h=ee, $fn=12);
	color(white) render() rotate(90) {
		if ($preview) translate([0.1, 0, h])  linear_extrude(height = ee) rotate(-90) text(text=name,  halign="center", valign="bottom", size=sz / len(value));
		if ($preview) translate([-0.1, 0, h]) linear_extrude(height = ee) rotate(-90) text(text=value, halign="center", valign="top",    size=sz / len(value));
	}
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

module bga(size=[4, 4, 1], pins=[7, 4], pitch=0.5, name, value) {
	color(black) translate([0, 0, pitch / 5]) cc(size);
	color(silver) render() {
		for (z=[0:(pins[0] * pins[1] - 1)])
			translate([(z % pins[0]) * pitch - (pins[0] / 2 - 0.5) * pitch, floor(z / pins[0]) * pitch - (pins[1] / 2 - 0.5) * pitch, pitch / 5])
			sphere(d=pitch * 2 /3, $fn=12);
	}
	color(white) render() {
		if ($preview) translate([0, 0.1, pitch / 5 + size[2] + ee]) linear_extrude(height = ee) text(text=name, halign="center", valign="bottom", size=2.78 / len(value));
		if ($preview) translate([0, -0.1, pitch / 5 + size[2] + ee]) linear_extrude(height = ee) text(text=value, halign="center", valign="top", size=2.78 / len(value));
		translate([size[0] * -0.5 + pitch / 2, size[1] * 0.5 - pitch / 2, size[2] + pitch / 5 + ee]) linear_extrude(height = ee) circle(d=pitch / 2, $fn=9);
	}
}

module smt_xtal(name, value, size=[3.2, 2.5]) {
	color(gold) render() hull() {
		translate([(size[0] * -0.5) + 0.5, (size[1] * -0.5) + 0.5]) cylinder(r=0.5, h=0.5, $fn=12);
		translate([(size[0] *  0.5) - 0.5, (size[1] * -0.5) + 0.5]) cylinder(r=0.5, h=0.5, $fn=12);
		translate([(size[0] * -0.5) + 0.5, (size[1] *  0.5) - 0.5]) cylinder(r=0.5, h=0.5, $fn=12);
		translate([(size[0] *  0.5) - 0.5, (size[1] *  0.5) - 0.5]) cylinder(r=0.5, h=0.5, $fn=12);
		cc([size[0] - 0.4, size[1] - 0.4, 0.6]);
	}
	color(silver) cc([size[0], size[1], 0.1]);
	if ($preview) color(black) translate([0, 0, 0.6]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size=size[0] / len(value));
}

module soic(p=8, w=4, h = 1, pitch = 1.27, name, value) {
	l = ((p + 1) / 2) * pitch;
	color(dark) difference() {
		cc([w, l, h]);
		translate([w / -4, (0 - (p / 4) + 0.5) * -pitch, h])
			sphere(d=w / 6, $fn=12);
	}
	color(light) translate([w / -4, (0 - (p / 4) + 0.5) * -pitch, h])
		cylinder(d=w / 6, h=ee, $fn=12);
	color(silver) render()
		for (r = [0:1]) translate([w * (r - 0.5), 0, 0])
			for (i = [0:(p / 2) - 1])
				translate([0, ((p / -4) + 0.5 + i) * pitch, ee])
					cc([w / 3, pitch / 2, 0.2]);
	color(white) render() rotate(90) {
		if ($preview) translate([0,  0.1, h]) linear_extrude(height = ee) text(text=name, halign="center", valign="bottom", size=l / len(value));
		if ($preview) translate([0, -0.1, h]) linear_extrude(height = ee) text(text=value, halign="center", valign="top", size=l / len(value));
	}
}

module sot23(pins=3, name, value) {
	pw = (pins > 6)?0.35 : 0.43;
	color(dark)
		cc([3, 1.6, 1]);
	color(silver) {
		if (pins == 8) {
			for (m = [0:1]) mirror([0, m, 0])
				for (y = [0:3])
					translate([ 0.95 - y * (0.95 / 1.5),  1.0]) cc([pw, 0.7, 0.25]);
		}
		else {
			translate([ 0.95,  1.0]) cc([pw, 0.7, 0.25]);
			translate([-0.95,  1.0]) cc([pw, 0.7, 0.25]);
			if ((pins != 4) && (pins != 5))
				translate([ 0, -1.0]) cc([pw, 0.7, 0.25]);
			if (pins >= 4) {
				translate([ 0.95, -1.0]) cc([pw, 0.7, 0.25]);
				translate([-0.95, -1.0]) cc([pw, 0.7, 0.25]);
			}
			if (pins >= 5)
				translate([ 0,  1.0]) cc([pw, 0.7, 0.25]);
		}
	}
	color(white) render() {
		translate([1,  0.5, 1.0]) cylinder(d=0.4, h=ee, $fn=12);
		if ($preview) translate([0, 0, 1]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size=3 / len(value));
	}
}

module sot223(name, value) {
	color(dark)
		cc([6.5, 3.5, 1.6]);
	color(silver) render() {
		translate([0, 2, 0])
			cc([3, 3, 0.3]);
		for (i=[0:2]) {
			translate([2.3 * (i - 1), -2, 0])
				cc([0.7, 3, 0.3]);
		}
	}
	if ($preview) color(white) render() translate([0, 0, 1.6]) linear_extrude(height = ee) text(text=value, halign="center", valign="center", size=6.5 / len(value));
}

module sot563(name, value) {
	rotate(90) soic(p=6, w=1.1, h=0.5, pitch=0.5, name=name, value=value);
}

module bottom(thickness = 1.6) {
	translate([0, 0, -thickness]) mirror([0, 0, 1]) children();
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

module tubesegment(d1=5,d2=2,length=1,angle=0, color=silver, twist=0) {
	if (angle != 0) {
		r = length / 2 / PI / angle * 360;
		color(color) render() rotate([0, 0, twist]) translate([-r, 0, 0]) rotate([90, 0, 0]) rotate_extrude(angle=angle) {
			translate([r, 0]) difference() {
				circle(d=d1);
				circle(d=d2);
			};
		};
		rotate([0, 0, twist]) translate([-r, 0, 0]) rotate([0, -angle, 0]) translate([r, 0, 0]) children();
	}
	else {
		color(color) render() linear_extrude(height=length) difference() {
			circle(d=d1);
			circle(d=d2);
		};
		rotate([0, 0, twist]) translate([0, 0, length]) children();
	}
}
