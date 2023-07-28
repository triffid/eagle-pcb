module TC2030_TC2030_MCP_NL(name, value) {
	for (x=[0:5]) {
		translate([((x % 3) - 1) * 1.27, (floor(x/3) - 0.5) * 1.27, 0]) %cylinder(d=0.5, h=5);
		translate([((x % 3) - 1) * 1.27, (floor(x/3) - 0.5) * 1.27, 1]) %cylinder(d=0.9, h=4);
	}
}
