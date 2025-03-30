local base = require'midnightcrawler.colors.base'

local none = "NONE"

local DarkGrey = '#0f1218'
local another_grey = '#1f2228'
local another_white = '#b3bbc8'
local custom = {
	None = { fg = none, bg = none },
	PanelActive = { fg = none, bg = DarkGrey },
	PanelActiveSel = { fg = base.white_light, bg = base.magenta_dark },
}

local panels = {
	Normal = { fg = base.white_dark, bg = none },
	NormalNC = { link = 'Normal' },
	-- Normal = { fg = base.yellow_dark, bg = none }
	NormalFloat = { fg = another_white, bg = another_grey },
	FloatBorder = { fg = none, bg = none },
	FloatTitle = { fg = base.fg, bg = none, bold = true },
	FloatFooter = { fg = base.fg, bg = none, bold = true },
	ColorColumn = custom.None,
	CursorLine = custom.PanelActive,
	StatusLine = custom.None,
	StatusLineNC = custom.None,
	TabLine = { fg = none, bg = none },
	TabLineSel = { fg = base.magenta_dark, bg = none, bold = true },
	TabLineFill = { fg = none, bg = none },
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
	DiffAdd = { fg = base.green_dark, bg = none },
	DiffChange = { fg = base.blue_light, bg = none },
	DiffDelete = { fg = base.red_dark, bg = none },
	DiffText =  { fg = base.blue_dark, bg = none },
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
	CurSearch = { fg = base.black, bg = base.cyan_light },
	MatchParen = { fg = base.black, bg = base.cyan_light },
	Visual = { fg = base.black, bg = base.cyan_light },
	VisualNOS = { link = 'Visual' },
}

local syntax = {
	Keyword = { fg = base.yellow_dark, bg = none },
	Operator = { fg = base.yellow_dark, bg = none, bold = false },
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
	['@type.builtin'] = { link = 'Type' },
	['@function.builtin'] = { link = 'Function' },
	['@constant.builtin'] = { link = 'Constant' },
	Error = { fg = base.red_light, bg = none },
	Ignore = { fg = base.magenta_light, bg = none },
	Underlined = { fg = none, bg = none, underline = true },
	Todo = { fg = base.magenta_light, bg = none },
	Comment = { fg = base.black_light, bg = none },
	Statement = { fg = base.magenta_light, bg = none },
	PreProc = { fg = base.yellow_dark, bg = none },
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
	Added = { link = 'DiffAdd' },
	Removed = { link = 'DiffDelete' },
	Delta = { link = 'DiffChange' }, -- ??
	Changed = { link = 'DiffChange' },
	NvimInternalError = { link = 'Error' },
	NvimInvalid = { link = 'Error' },
}

local diagnostic = {
	DiagnosticError = { fg = base.red_dark, bg = none },
	DiagnosticFloatingError = { link = 'DiagnosticError' },
	DiagnosticWarn = { fg = base.yellow_light, bg = none },
	DiagnosticFloatingWarn = { link = 'DiagnosticWarn' },
	DiagnosticInfo = { fg = base.blue_light, bg = none },
	DiagnosticFloatingInfo = { link = 'DiagnosticWarn' },
	DiagnosticHint = { fg = base.blue_dark, bg = none },
	DiagnosticFloatingHint = { link = 'DiagnosticHint' },
	DiagnosticOk = { fg = base.green_dark, bg = none},
	DiagnosticFloatingOk = { link = 'DiagnosticOk' },
	DiagnosticVirtualTextError = { link = 'DiagnosticError' },
	DiagnosticVirtualTextWarn = { link = 'DiagnosticWarn' },
	DiagnosticVirtualTextInfo = { link = 'DiagnosticInfo' },
	DiagnosticVirtualTextHint = { link = 'DiagnosticHint' },
	DiagnosticVirtualTextOk = { link = 'DiagnosticOk' },
	DiagnosticSignError = { link = 'DiagnosticError' },
	DiagnosticSignWarn = { link = 'DiagnosticWarn' },
	DiagnosticSignInfo = { link = 'DiagnosticInfo' },
	DiagnosticSignHint = { link = 'DiagnosticHint' },
	DiagnosticSignOk = { link = 'DiagnosticOk' },
	DiagnosticUnnecessary = { fg = base.yellow_dark, bg = none },
	DiagnosticDeprecated = { fg = base.yellow_dark, bg = none, strikethrough = true },
	DiagnosticUnderlineError = { fg = base.red_dark, bg = none, underline = true },
	DiagnosticUnderlineWarn = { fg = base.yellow_dark, bg = none, underline = true },
	DiagnosticUnderlineInfo = { fg = base.blue_dark, bg = none, underline = true },
	DiagnosticUnderlineHint = { fg = base.blue_dark, bg = none, underline = true },
	DiagnosticUnderlineOk = { fg = base.green_dark, bg = none, underline = true },
}

local qf = {
	qfLineNr = { link = 'Normal' },
	qfError = { link = 'Error' },
}

local gitsigns = {

}

local spell = {
	SpellBad = { fg = base.red_light, undercurl = true },
	SpellCap = { fg = base.yellow_light, undercurl = true },
	SpellRare = { fg = base.cyan_light, undercurl = true },
	SpellLocal = { fg = base.green_light, undercurl = true },
}

local misc = {
	Directory = { fg = base.cyan_light, bg = none },
	SignColumn = { fg = base.cyan_light, bg = none },
}

local blink_nvim = {
	BlinkCmpGhostText = { fg = base.yellow_light, bg = none, bold = false },
}

return vim.tbl_deep_extend('error', {}, panels, cursor, special, diff, linenr, search, syntax, msg, nvim, diagnostic, qf, gitsigns, spell, misc, blink_nvim)
