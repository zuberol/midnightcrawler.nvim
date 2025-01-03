local base = require'midnightcrawler.colors.base'
local extra = require'midnightcrawler.colors.extra'
local midnightcrawler = {}

local function set_terminal_colors()
  vim.g.terminal_color_0 = base.bg
  vim.g.terminal_color_1 = extra.markup
  vim.g.terminal_color_2 = extra.string
  vim.g.terminal_color_3 = extra.accent
  vim.g.terminal_color_4 = extra.tag
  vim.g.terminal_color_5 = extra.constant
  vim.g.terminal_color_6 = extra.regexp
  vim.g.terminal_color_7 = extra.fg
  vim.g.terminal_color_8 = extra.fg_idle
  vim.g.terminal_color_9 = extra.error
  vim.g.terminal_color_10 = extra.string
  vim.g.terminal_color_11 = extra.accent
  vim.g.terminal_color_12 = extra.tag
  vim.g.terminal_color_13 = extra.constant
  vim.g.terminal_color_14 = extra.regexp
  vim.g.terminal_color_15 = extra.comment
  vim.g.terminal_color_background = base.bg
  vim.g.terminal_color_foreground = extra.fg
end

local function set_groups()
  local groups = {
    -- Base.
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

    -- LSP.
    DiagnosticError = { fg = extra.error },
    DiagnosticWarn = { fg = extra.keyword },
    DiagnosticInfo = { fg = extra.tag },
    DiagnosticHint = { fg = extra.regexp },
    DiagnosticUnderlineError = { sp = extra.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = extra.keyword, undercurl = true },
    DiagnosticUnderlineInfo = { sp = extra.tag, undercurl = true },
    DiagnosticUnderlineHint = { sp = extra.regexp, undercurl = true },

    -- TreeSitter.
    ['@property'] = { fg = extra.tag },
    ['@tag'] = { fg = extra.keyword },
    ['@tag.attribute'] = { fg = extra.type },
    ['@tag.delimiter'] = { link = 'Delimiter' },
    ['@type.qualifier'] = { fg = extra.keyword },
    ['@variable'] = { fg = extra.fg },
    ['@variable.builtin'] = { fg = extra.func },
    ['@variable.member'] = { fg = extra.tag },
    ['@variable.parameter'] = { fg = extra.fg },
    ['@module'] = { fg = extra.func },
    ['@markup.heading'] = { fg = extra.keyword },
    ['@keyword.storage'] = { fg = extra.keyword },
    ['@lsp.type.namespace'] = { link = '@module' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.class'] = { link = '@type' },
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.interface'] = { link = '@type' },
    ['@lsp.type.struct'] = { link = '@variable.member' },
    ['@lsp.type.parameter'] = { fg = extra.lsp_parameter },
    ['@lsp.type.field'] = { link = '@variable.member' },
    ['@lsp.type.variable'] = { link = '@variable' },
    ['@lsp.type.property'] = { link = '@property' },
    ['@lsp.type.enumMember'] = { link = '@constant' },
    ['@lsp.type.function'] = { link = '@function' },
    ['@lsp.type.method'] = { link = '@function.method' },
    ['@lsp.type.macro'] = { link = '@function.macro' },
    ['@lsp.type.decorator'] = { link = '@function' },
    ['@lsp.mod.constant'] = { link = '@constant' },

    -- TreesitterContext.
    TreesitterContext = { bg = extra.selection_inactive },

    -- Gitsigns.
    GitSignsAddLn = { fg = extra.vcs_added },
    GitSignsDeleteLn = { fg = extra.vcs_removed },
    GitSignsChange = { fg = extra.vcs_modified },

    -- Telescope.
    TelescopePromptBorder = { fg = extra.accent },

    -- Cmp.
		CmpItemAbbr = { fg = extra.fg },
    CmpItemMenu = { fg = extra.comment },
    CmpItemAbbrMatch = { fg = extra.red_rose },
    CmpItemAbbrMatchFuzzy = { fg = extra.red_rose, underline=true },
		CmpItemKind = { fg = extra.fg },
    CmpItemKindText = { fg = extra.string },
    CmpItemKindMethod = { fg = extra.keyword },
    CmpItemKindFunction = { fg = extra.func },
    CmpItemKindConstructor = { fg = extra.keyword },
    CmpItemKindField = { fg = extra.type },
    CmpItemKindVariable = { fg = extra.tag },
    CmpItemKindClass = { fg = extra.type },
    CmpItemKindInterface = { fg = extra.type },
    CmpItemKindModule = { fg = extra.keyword },
    CmpItemKindProperty = { fg = extra.keyword },
    CmpItemKindUnit = { fg = extra.constant },
    CmpItemKindValue = { fg = extra.constant },
    CmpItemKindEnum = { fg = extra.type },
    CmpItemKindKeyword = { fg = extra.keyword },
    CmpItemKindSnippet = { fg = extra.regexp },
    CmpItemKindColor = { fg = extra.special },
    CmpItemKindFile = { fg = extra.special },
    CmpItemKindReference = { fg = extra.special },
    CmpItemKindFolder = { fg = extra.special },
    CmpItemKindEnumMember = { fg = extra.constant },
    CmpItemKindConstant = { fg = extra.constant },
    CmpItemKindStruct = { fg = extra.type },
    CmpItemKindEvent = { fg = extra.tag },
    CmpItemKindOperator = { fg = extra.operator },
    CmpItemKindTypeParameter = { fg = extra.tag },

    -- Word under cursor.
    CursorWord = { bg = extra.selection_inactive },
    CursorWord0 = { bg = extra.selection_inactive },
    CursorWord1 = { bg = extra.selection_inactive },

    -- LSP Signature.
    LspSignatureActiveParameter = { italic = true },

		-- git diff
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
