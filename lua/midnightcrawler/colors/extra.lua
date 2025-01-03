
local base = require'base'

local ripe_orange = '#ff4f0f'
local true_gold = '#ff8200'
local pitch_black = '#000000'
local blue_sky = '#59c2ff'
local blue_sky_2 = '#39bae6'
local lime_green = '#8af478'
local error_red = '#ff3333'
local red_rose = '#ec3960'
local dark_rose = '#94041a'
local pink_rose = '#ef83c6'
local piggy_pink = '#ff00ff'
local white_smoke = '#b3b1ad'
local dark_silver = '#0d1016'
local darky_silver = '#3e4b59'
local safari_grey = '#171b21'
local dump_grey ='#282C34'

local silver_6 = '#404755'


return {
	abbr = blue_sky,
	accent = true_gold,
	black = pitch_black,
	blue_azure = '#3388f8',
	blue_sky = blue_sky,
	comment = '#626a73',
	constant = true_gold,
	cursor_line = silver_6,
	dark_rose = dark_rose,
	dump_grey = dump_grey,
	error = error_red,
	fg_idle = '#3e4b59',
	fold_bg = dark_silver,
	func = true_gold,
	golden = true_gold,
	green = lime_green,
	guide_active = white_smoke,
	guide_normal = error_red,
	gutter_active = white_smoke,
	gutter_normal = dark_silver,
	keyword = true_gold,
	line = dark_silver,
	lsp_parameter = '#cb9ff8',
	markup = '#f07178',
	operator = true_gold,
	panel_bg_inactive = dark_silver,
	panel_bg = piggy_pink,
	panel_border = dark_silver,
	panel_shadow = '#00010a',
	piggy_pink = piggy_pink,
	red_rose = red_rose,
	regexp = '#95e6cb',
	ripe_orange = ripe_orange,
	safari_grey = safari_grey,
	selection_bg = true_gold,
	selection_border = dark_silver,
	selection_inactive = base.color5,
	special = true_gold,
	string = lime_green,
	tag = blue_sky,
	todo = red_rose,
	type = red_rose,
	vcs_added_bg = '#1d2214',
	vcs_added = lime_green,
	vcs_modified = blue_sky,
	vcs_removed_bg = '#2d2220',
	vcs_removed = red_rose,
	warning = ripe_orange
}

