local base = require'midnightcrawler.colors.base'

local none = "NONE"

--'#404755'
local NvimDarkGrey3 = '#2c2e33'
local DarkGrey = '#0f1218'
local custom = {
	None = { fg = none, bg = none },
	PanelActive = { fg = none, bg = DarkGrey },
	PanelActiveSel = { fg = base.yellow_dark, bg = DarkGrey },
}

local panels = {
	Normal = { fg = base.white_dark, bg = none },
	NormalNC = { link = 'Normal' },
	-- Normal = { fg = base.yellow_dark, bg = none }
	NormalFloat = custom.PanelActive,
	FloatBorder = { fg = none, bg = none },
	FloatTitle = { fg = base.fg, bg = none, bold = true },
	FloatFooter = { fg = base.fg, bg = none, bold = true },
	ColorColumn = custom.None,
	CursorLine = PanelActive,
	StatusLine = custom.None,
	StatusLineNC = custom.None,
	TabLine = custom.None,
	TabLineSel = PanelActiveSel,
	TabLineFill = custom.None,
	Pmenu = custom.PanelActive,
	PmenuKind = { link = 'Pmenu' },
	PmenuSel = custom.PanelActiveSel,
	PmenuKindSel = { link = 'PmenuSel' },
	PmenuExtra = { link = 'Pmenu' },
	PmenuExtraSel = { link = 'Pmenu' },
	PmenuSbar = { fg = none, bg = base.black_dark },
	PmenuThumb = { fg = none, bg = base.white_dark },
	WinSeparator = { fg = base.bg, bg = base.bg },
	WildMenu = custom.PanelActiveSel,
	WinBar = custom.None,
	WinBarNC = custom.None,
}

local cursor = {
	Cursor = { fg = base.white_light, bg = none},
	lCursor = { fg = base.white_light, bg = none},
	CursorIM = { fg = base.white_light, bg = none},
	TermCursor = { link = 'Cursor' },
	TermCursorNC = { link = 'Cursor' },
}

local spell = {
	-- SpellBad	
	-- SpellCap	
	-- SpellLocal	
	-- SpellRare	
}

local special = {
	NonText = { fg = base.magenta_dark, bg = none },
	Special = { fg = base.yellow_light, bg = none },
	EndOfBuffer = { fg = base.magenta_dark, bg = none },
	Conceal = { fg = base.green_light, bg = none },
	Folded = { fg = base.cyan_light, bg = none },
	SpecialKey = { fg = base.magenta_light, bg = none },
	Whitespace = { fg = base.magenta_dark, bg = none },
}

local diff = {
	DiffAdd = { fg = base.green_light, bg = none },
	DiffChange = { fg = base.blue_light, bg = none },
	DiffDelete = { fg = base.red_light, bg = none },
	DiffText =  { fg = base.blue_light, bg = none },
}

local linenr = {
	LineNr = { fg = base.white_dark, bg = none },
	LineNrAbove = { link = 'LineNr' },
	LineNrBelow = { link = 'LineNr' },
	CursorLineNr = { link = 'LineNr' },
}

local search = {
	IncSearch	= { fg = base.black, bg = base.cyan_light },
	Substitute	= { fg = base.black, bg = base.green_light },
	Search	= { fg = base.black, bg = base.green_light },
	MatchParen = { fg = base.black, bg = base.yellow_light },
	Visual = { fg = base.black, bg = base.cyan_light },
	VisualNOS = { link = 'Visual' },
}

local syntax = {
	Keyword = { fg = base.yellow_dark, bg = none },
	Operator = { fg = base.yellow_dark, bg = none, bold = true },
	Constant = { fg = base.red_dark, bg = none },
	Type = { fg = base.blue_light, bg = none },
	Variable = { fg = base.white_light, bg = none },
	String = { fg = base.green_dark, bg = none },
	Function = { link = 'Type' },
	['@lsp.mod.definition'] = { link = 'Type' },
	['@lsp.mod.readonly'] = { fg = base.magenta_dark, bg = none },
	['@lsp.type.namespace'] = { link = 'Type' },
	['@lsp.type.parameter'] = { link = 'Variable' },
	['@lsp.type.variable'] = { link = 'Variable' },
	['@lsp.type.function'] = { link = 'Type' },
	['@lsp.type.number'] = { fg = base.magenta_light, bg = none },
	['@lsp.typemod.variable.definition'] = { fg = base.red_dark, bg = none },
	['@lsp.typemod.parameter.definition'] = { fg = base.red_dark, bg = none },
	SnippetTabstop = { fg = base.magenta_light, bg = none },
}

local msg = {
	ErrorMsg = { fg = base.red_dark, bg = none },
	WarningMsg = { fg = base.yellow_dark, bg = none },
	ModeMsg = { link = 'Normal' },
	MsgArea = { fg = none, bg = none },
	MoreMsg = { link = 'Normal' },
	QuickFixLine = { fg = base.cyan_light, bg = none },
	Question = { fg = base.cyan_light, bg = none },
	Title = { fg = base.fg, bg = none, bold = true },
}

local nvim = {
	Identifier = { link = 'Keyword' },
	Delimiter = { link = 'Operator' },
	['@variable'] = { link = 'Normal' },
	['@property'] = { link = '@variable' },
}

return vim.tbl_deep_extend('error', {}, panels, cursor, special, diff, linenr, search, syntax, msg, nvim)
