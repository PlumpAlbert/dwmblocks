//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  {"",  "/usr/local/share/dwmblocks/scripts/rescuetime 2>/dev/null", 1800, 3},
	{"",  "cat /tmp/recordingicon 2>/dev/null",	0,	9},
	{"",	"/usr/local/share/dwmblocks/scripts/ram 2>/dev/null",	10,	5},
	{"",	"/usr/local/share/dwmblocks/scripts/network 2>/dev/null",	300,	4},
	{"",	"/usr/local/share/dwmblocks/scripts/keyboard 2>/dev/null",	1,	2},
	{"",	"/usr/local/share/dwmblocks/scripts/clock 2>/dev/null",	60,	1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char *delim = "  ";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
