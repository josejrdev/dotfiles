//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "/home/josejunior/scripts/bar/battery.sh",	1,		0},

	{"", "/home/josejunior/scripts/bar/cpu.sh",					1,		0},
	{"", "/home/josejunior/scripts/bar/ram.sh",					1,		0},
	{"", "/home/josejunior/scripts/bar/volume.sh",					1,		0},
	{"", "/home/josejunior/scripts/bar/date.sh",					1,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "   ";
static unsigned int delimLen = 20;
