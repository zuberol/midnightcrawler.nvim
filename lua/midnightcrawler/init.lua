local base = require'midnightcrawler.colors.base'
local extra = require'midnightcrawler.colors.extra'
local groups = require'midnightcrawler.colors.groups'
for group, parameters in pairs(groups) do
	vim.api.nvim_set_hl(0, group, parameters)
end

local function set_terminal_colors()
  vim.g.terminal_color_0 = base.bg
  vim.g.terminal_color_1 = base.color1
  vim.g.terminal_color_2 = base.color2
  vim.g.terminal_color_3 = base.color3
  vim.g.terminal_color_4 = base.color4
  vim.g.terminal_color_5 = base.color5
  vim.g.terminal_color_6 = base.color6
  vim.g.terminal_color_7 = base.color7
  vim.g.terminal_color_8 = base.color8
  vim.g.terminal_color_9 = base.color9
  vim.g.terminal_color_10 = base.color10
  vim.g.terminal_color_11 = base.color11
  vim.g.terminal_color_12 = base.color12
  vim.g.terminal_color_13 = base.color13
  vim.g.terminal_color_14 = base.color14
  vim.g.terminal_color_15 = base.color15
  vim.g.terminal_color_background = base.background
  vim.g.terminal_color_foreground = base.foreground
end

local function set_groups()
  local old_groups = {
    Normal = { fg = extra.fg },
    NormalFloat = { bg = extra.safari_grey },
    FloatBorder = {  },
    FloatTitle = { fg = extra.fg },
    ColorColumn = { bg = extra.panel_bg_inactive },
    Cursor = { fg = base.bg, bg = extra.fg },
    CursorColumn = { bg = extra.panel_bg_inactive },
    CursorLine = { bg = extra.cursor_line },
    CursorLineNr = { fg = extra.accent, bg = 'NONE' },
    LineNr = { bg = 'NONE', fg = extra.fg },
    Directory = { fg = extra.func },
    ErrorMsg = { fg = extra.error },
    WinSeparator = { fg = base.bg, bg = base.bg },
    Folded = { fg = extra.fg_idle, bg = extra.fold_bg },
    FoldColumn = { bg = base.bg },
    SignColumn = { bg = base.bg },
    MatchParen = { sp = extra.func, underline = true },
    ModeMsg = { fg = extra.string },
    MoreMsg = { fg = extra.string },
    NonText = { fg = extra.fg },
    Pmenu = { fg = extra.fg, bg = extra.selection_inactive },
    PmenuSel = { fg = extra.green, bg = extra.cursor_line },
    Question = { fg = extra.string },
    Search = { fg = base.bg, bg = extra.green },
    CurSearch = { fg = base.bg, bg = extra.golden	},
    IncSearch = { fg = base.bg, bg = extra.golden },
    SpecialKey = { fg = extra.selection_inactive },
    SpellCap = { sp = extra.tag, undercurl = true },
    SpellLocal = { sp = extra.keyword, undercurl = true },
    SpellBad = { sp = extra.error, undercurl = true },
    SpellRare = { sp = extra.regexp, undercurl = true },
    StatusLine = { fg = extra.fg, bg = extra.panel_bg_inactive },
    StatusLineNC = { fg = extra.fg, bg = extra.panel_bg_inactive },
    WildMenu = { fg = base.bg, bg = extra.golden },
    TabLine = { fg = extra.fg, bg = extra.panel_bg_inactive },
    TabLineFill = { fg = extra.fg, bg = extra.panel_bg_inactive },
    TabLineSel = { fg = base.bg, bg = extra.golden },
    Title = { fg = extra.keyword },
    Visual = { bg = extra.golden, fg = base.bg },
    WarningMsg = { fg = extra.warning },
    Comment = { fg = extra.comment, italic = true },
    Constant = { fg = extra.constant },
    String = { fg = extra.string },
    Identifier = { fg = extra.type },
    Function = { fg = extra.func },
    Statement = { fg = extra.keyword },
    Operator = { fg = extra.operator },
    Exception = { fg = extra.markup },
    PreProc = { fg = extra.accent },
    Type = { fg = extra.type },
    Structure = { fg = extra.special },
    Special = { fg = extra.accent },
    Delimiter = { fg = extra.special },
    Underlined = { sp = extra.tag, underline = true },
    Ignore = { fg = extra.fg },
    Error = { fg = extra.white_smoke, bg = extra.error },
    Todo = { fg = extra.todo },
    qfLineNr = { fg = extra.keyword },
    qfError = { fg = extra.error },
    Conceal = { fg = extra.comment },
    CursorLineConceal = { fg = extra.fg, bg = extra.panel_bg_inactive },
    DiffAdd = { bg = extra.vcs_added_bg },
    DiffAdded = { fg = extra.vcs_added },
    DiffDelete = { bg = extra.vcs_removed_bg },
    DiffRemoved = { fg = extra.vcs_removed },
    DiffText = { bg = extra.gutter_normal },
    DiffChange = { bg = extra.selection_inactive },
    DiagnosticError = { fg = extra.error },
    DiagnosticWarn = { fg = extra.keyword },
    DiagnosticInfo = { fg = extra.tag },
    DiagnosticHint = { fg = extra.regexp },
    DiagnosticUnderlineError = { sp = extra.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = extra.keyword, undercurl = true },
    DiagnosticUnderlineInfo = { sp = extra.tag, undercurl = true },
    DiagnosticUnderlineHint = { sp = extra.regexp, undercurl = true },
    GitSignsAddLn = { fg = extra.vcs_added },
    GitSignsDeleteLn = { fg = extra.vcs_removed },
    GitSignsChange = { fg = extra.vcs_modified },
    CursorWord = { bg = extra.selection_inactive },
    CursorWord0 = { bg = extra.selection_inactive },
    CursorWord1 = { bg = extra.selection_inactive },
    LspSignatureActiveParameter = { italic = true },
		diffFile = { link = 'Statement' },
		gitDiff = { fg = extra.white_smoke },
	}

  for group, parameters in pairs(groups) do
    vim.api.nvim_set_hl(0, group, parameters)
  end
end

function midnightcrawler.colorscheme()
  vim.api.nvim_command('hi clear')

  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end

  vim.g.colors_name = 'midnightcrawler'

	set_terminal_colors()
  set_groups()
end

return midnightcrawler
