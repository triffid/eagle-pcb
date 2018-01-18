include <eagle-pcb/common.scad>;

module led_CHIP_LED0603(value="GREEN") {
	if (value == "green" || value == "GREEN")
		ledsmd(c=green, s=[6 * 0.234, 3 * 0.234]);
	else if (value == "yellow" || value == "YELLOW")
		ledsmd(c=yellow, s=[6 * 0.234, 3 * 0.234]);
	else if (value == "red" || value == "RED")
		ledsmd(c=red, s=[6 * 0.234, 3 * 0.234]);
	else if (value == "blue" || value == "BLUE")
		ledsmd(c=[0.3,0.3,1], s=[6 * 0.234, 3 * 0.234]);
	else if (value == "white" || value == "WHITE")
		ledsmd(c=white, s=[6 * 0.234, 3 * 0.234]);
}

module led_CHIPLED_0805(value="GREEN") {
	if (value == "green" || value == "GREEN")
		ledsmd(c=green, s=[8 * 0.254, 5 * 0.254]);
	else if (value == "yellow" || value == "YELLOW")
		ledsmd(c=yellow, s=[8 * 0.254, 5 * 0.254]);
	else if (value == "red" || value == "RED")
		ledsmd(c=red, s=[8 * 0.254, 5 * 0.254]);
	else if (value == "blue" || value == "BLUE")
		ledsmd(c=[0.3,0.3,1], s=[8 * 0.254, 5 * 0.254]);
	else if (value == "white" || value == "WHITE")
		ledsmd(c=white, s=[8 * 0.254, 5 * 0.254]);
}
