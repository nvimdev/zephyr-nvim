local z = {
	base0 = "#1B2229",
	base1 = "#1c1f24",
	base2 = "#202328",
	base3 = "#23272e",
	base4 = "#3f444a",
	base5 = "#5B6268",
	base6 = "#73797e",
	base7 = "#9ca0a4",
	base8 = "#b1b1b1",

	bg = "#262a33",
	bg1 = "#504945",
	bg_popup = "#3E4556",
	bg_highlight = "#2E323C",
	bg_visual = "#b3deef",

	fg = "#bbc2cf",
	fg_alt = "#5B6268",

	red = "#e95678",

	redwine = "#d16d9e",
	orange = "#de841b",
	yellow = "#fac661",

	light_green = "#abcf84",
	green = "#afd700",
	dark_green = "#98be65",

	cyan = "#36d0e0",
	blue = "#61afef",
	violet = "#CBA6F7",
	magenta = "#c678dd",
	teal = "#1abc9c",
	grey = "#928374",
	brown = "#c78665",
	black = "#000000",

	bracket = "#80A0C2",
	none = "NONE",
}

-- LuaFormatter on
return {
	normal = {
		a = { fg = z.bg, bg = z.blue },
		b = { fg = z.blue, bg = z.bg },
		c = { fg = z.blue, bg = z.bg },
		z = { fg = z.bg, bg = z.blue },
	},
	insert = {
		a = { fg = z.bg, bg = z.light_green },
		b = { fg = z.light_green, bg = z.bg },
		c = { fg = z.light_green, bg = z.bg },
		z = { fg = z.bg, bg = z.light_green },
	},
	visual = {
		a = { fg = z.bg, bg = z.yellow },
		b = { fg = z.yellow, bg = z.bg },
		c = { fg = z.yellow, bg = z.bg },
		z = { fg = z.bg, bg = z.yellow },
	},
	command = {
		a = { fg = z.bg, bg = z.violet },
		b = { fg = z.violet, bg = z.bg },
		c = { fg = z.violet, bg = z.bg },
		z = { fg = z.bg, bg = z.violet },
	},
	replace = {
		a = { fg = z.bg, bg = z.red },
		b = { fg = z.red, bg = z.bg },
		c = { fg = z.red, bg = z.bg },
		z = { fg = z.bg, bg = z.red },
	},
	inactive = {
		a = { fg = z.fg, bg = z.bg },
		b = { fg = z.fg, bg = z.bg },
		c = { fg = z.fg, bg = z.bg },
	},
}
