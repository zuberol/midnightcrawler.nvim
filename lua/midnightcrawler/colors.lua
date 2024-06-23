
-- guifg=#b3b1ad guibg=#0a0e14
-- blue #3388f8 #428acd
-- pinky #c58ce3
-- violet #a686f8
-- black #0f111a #080807
-- golden #f4a938
--
-- nightshift TODO dfas fsa
-- red #ec3960 
-- golden   #c8a266  #c39e64 
-- yellow #fffe96 
-- violet #421880 
-- #C39 
-- blue #7fb1f9  #6faef9
-- dark blue #3388f8 
-- pink #c58ce3  
-- rose #ef83c3 
-- orangy #f18e67  #ef6b5d 
-- greeny #90fab1  #78c89a  
-- greeny #59be82 
-- background bluey-black #12162b
-- background ayu guifg=#b3b1ad guibg=#0a0e14
-- violety #84a0f9 #b541f7 
-- dark grey #242a35
-- rose #ef83c6 
--#363A4D
-- Customization for Pmenu
--vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#282C34", fg = "NONE" })
--vim.api.nvim_set_hl(0, "Pmenu", { fg = "#C5CDD9", bg = "#22252A" })

-- vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#C5CDD9", bg = "#7E8294" })
--vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#C5CDD9", bg = "#7E8294" })



local ripe_orange = '#ff4f0f'
local true_gold = '#f4a938'
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
local silver_2 = '#304357'
local silver_3 = '#393f4d'
local silver_4 = '#767e91'
local silver_5 = '#767e91'
local silver_6 = '#404755'
--'#242a35'
--'#464d5e'
--'#404755'
-- local dark_silver = '#767e91' --prev TODO must be darker
-- local dark_silver = '#334439' --skip, not nice

return {
	golden = true_gold,
	ripe_orange = ripe_orange,
	black = pitch_black,
	blue_azure = '#3388f8',
	piggy_pink = piggy_pink,
	blue_sky = blue_sky,
	green = lime_green,
	red_rose = red_rose,
	dark_rose = dark_rose,
	safari_grey = safari_grey,
	
	cursor_line = silver_6,
	accent = true_gold,
	bg = pitch_black,
	fg = white_smoke,
	fg_idle = '#3e4b59',

	abbr = blue_sky,
	todo = red_rose,
	tag = blue_sky,
	func = true_gold,
	type = red_rose,
	string = lime_green,
	regexp = '#95e6cb',
	markup = '#f07178',
	keyword = true_gold, --golden,
	special = true_gold,--'#e6b673',
	comment = '#626a73',
	constant = true_gold,
	operator = true_gold,
	error = error_red,
	lsp_parameter = '#cb9ff8',

	-- line = '#00010a', -- TODO
	line = dark_silver,
	fold_bg = dark_silver,
	-- panel_bg = '#0d1016', -- TODO should be used in mini statusline and Folded, plugins nop
	-- panel_shadow = '#00010a', -- TODO necessary?
	panel_shadow = '#00010a',
	panel_border = dark_silver, -- TODO unused i think, SET NO BORDER

	panel_bg = piggy_pink,
	panel_bg_inactive = dark_silver,

--	gutter_normal = '#404755', -- TODO
	gutter_normal = dark_silver,
	--gutter_active = '#464d5e', -- TODO
	gutter_active = white_smoke,
	selection_bg = true_gold,
	selection_inactive = dark_silver,--'#1b2733',
	--selection_border = '#304357', -- TODO?
	selection_border = dark_silver, -- TODO?
	--guide_active = '#393f4d', -- TODO
	guide_active = white_smoke,
	--guide_normal = '#767e91' -- TODO
	guide_normal = error_red,

	vcs_added = lime_green,
	vcs_modified = blue_sky,
	vcs_removed = red_rose,

	vcs_added_bg = '#1d2214',
	vcs_removed_bg = '#2d2220',

	warning = ripe_orange
}

