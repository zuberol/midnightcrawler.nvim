local colors = require('midnightcrawler.colors')
local midnightcrawler = {}

local function set_terminal_colors()
  vim.g.terminal_color_0 = colors.bg
  vim.g.terminal_color_1 = colors.markup
  vim.g.terminal_color_2 = colors.string
  vim.g.terminal_color_3 = colors.accent
  vim.g.terminal_color_4 = colors.tag
  vim.g.terminal_color_5 = colors.constant
  vim.g.terminal_color_6 = colors.regexp
  vim.g.terminal_color_7 = colors.fg
  vim.g.terminal_color_8 = colors.fg_idle
  vim.g.terminal_color_9 = colors.error
  vim.g.terminal_color_10 = colors.string
  vim.g.terminal_color_11 = colors.accent
  vim.g.terminal_color_12 = colors.tag
  vim.g.terminal_color_13 = colors.constant
  vim.g.terminal_color_14 = colors.regexp
  vim.g.terminal_color_15 = colors.comment
  vim.g.terminal_color_background = colors.bg
  vim.g.terminal_color_foreground = colors.fg
end

local function set_groups()
  local groups = {
    -- Base.
    Normal = { fg = colors.fg },
    NormalFloat = { bg = colors.safari_grey },
    FloatBorder = {  },
    FloatTitle = { fg = colors.fg },
    ColorColumn = { bg = colors.panel_bg_inactive },
    Cursor = { fg = colors.bg, bg = colors.fg },
    CursorColumn = { bg = colors.panel_bg_inactive },
    CursorLine = { bg = colors.cursor_line },
    CursorLineNr = { fg = colors.accent, bg = 'NONE' },
    LineNr = { bg = 'NONE', fg = colors.fg },

    Directory = { fg = colors.func },
    ErrorMsg = { fg = colors.error },
    WinSeparator = { fg = colors.bg, bg = colors.bg },
    Folded = { fg = colors.fg_idle, bg = colors.fold_bg },
    FoldColumn = { bg = colors.bg },
    SignColumn = { bg = colors.bg },

    MatchParen = { sp = colors.func, underline = true },
    ModeMsg = { fg = colors.string },
    MoreMsg = { fg = colors.string },
    NonText = { fg = colors.fg },
    Pmenu = { fg = colors.fg, bg = colors.selection_inactive },
    PmenuSel = { fg = colors.green, bg = colors.cursor_line },
    Question = { fg = colors.string },
    Search = { fg = colors.bg, bg = colors.green },
    CurSearch = { fg = colors.bg, bg = colors.golden	},
    IncSearch = { fg = colors.bg, bg = colors.golden },
    SpecialKey = { fg = colors.selection_inactive },
    SpellCap = { sp = colors.tag, undercurl = true },
    SpellLocal = { sp = colors.keyword, undercurl = true },
    SpellBad = { sp = colors.error, undercurl = true },
    SpellRare = { sp = colors.regexp, undercurl = true },
    StatusLine = { fg = colors.fg, bg = colors.panel_bg_inactive },
    StatusLineNC = { fg = colors.fg, bg = colors.panel_bg_inactive },
    WildMenu = { fg = colors.bg, bg = colors.golden },
    TabLine = { fg = colors.fg, bg = colors.panel_bg_inactive },
    TabLineFill = { fg = colors.fg, bg = colors.panel_bg_inactive },
    TabLineSel = { fg = colors.bg, bg = colors.golden },
    Title = { fg = colors.keyword },
    Visual = { bg = colors.golden, fg = colors.bg },
    WarningMsg = { fg = colors.warning },

    Comment = { fg = colors.comment, italic = true },
    Constant = { fg = colors.constant },
    String = { fg = colors.string },
    Identifier = { fg = colors.type },
    Function = { fg = colors.func },
    Statement = { fg = colors.keyword },
    Operator = { fg = colors.operator },
    Exception = { fg = colors.markup },
    PreProc = { fg = colors.accent },
    Type = { fg = colors.type },
    Structure = { fg = colors.special },
    Special = { fg = colors.accent },
    Delimiter = { fg = colors.special },
    Underlined = { sp = colors.tag, underline = true },
    Ignore = { fg = colors.fg },
    Error = { fg = colors.white_smoke, bg = colors.error },
    Todo = { fg = colors.todo },
    qfLineNr = { fg = colors.keyword },
    qfError = { fg = colors.error },
    Conceal = { fg = colors.comment },
    CursorLineConceal = { fg = colors.fg, bg = colors.panel_bg_inactive },

    DiffAdd = { bg = colors.vcs_added_bg },
    DiffAdded = { fg = colors.vcs_added },
    DiffDelete = { bg = colors.vcs_removed_bg },
    DiffRemoved = { fg = colors.vcs_removed },
    DiffText = { bg = colors.gutter_normal },
    DiffChange = { bg = colors.selection_inactive },

    -- LSP.
    DiagnosticError = { fg = colors.error },
    DiagnosticWarn = { fg = colors.keyword },
    DiagnosticInfo = { fg = colors.tag },
    DiagnosticHint = { fg = colors.regexp },

    DiagnosticUnderlineError = { sp = colors.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = colors.keyword, undercurl = true },
    DiagnosticUnderlineInfo = { sp = colors.tag, undercurl = true },
    DiagnosticUnderlineHint = { sp = colors.regexp, undercurl = true },

    -- Markdown.
    markdownCode = { fg = colors.special },

    -- TreeSitter.
    ['@property'] = { fg = colors.tag },
    ['@tag'] = { fg = colors.keyword },
    ['@tag.attribute'] = { fg = colors.type },
    ['@tag.delimiter'] = { link = 'Delimiter' },
    ['@type.qualifier'] = { fg = colors.keyword },
    ['@variable'] = { fg = colors.fg },
    ['@variable.builtin'] = { fg = colors.func },
    ['@variable.member'] = { fg = colors.tag },
    ['@variable.parameter'] = { fg = colors.fg },
    ['@module'] = { fg = colors.func },
    ['@markup.heading'] = { fg = colors.keyword },
    ['@keyword.storage'] = { fg = colors.keyword },

    ['@lsp.type.namespace'] = { link = '@module' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.class'] = { link = '@type' },
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.interface'] = { link = '@type' },
    ['@lsp.type.struct'] = { link = '@variable.member' },
    ['@lsp.type.parameter'] = { fg = colors.lsp_parameter },
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
    TreesitterContext = { bg = colors.selection_inactive },

    -- Gitsigns.
    GitSignsAddLn = { fg = colors.vcs_added },
    GitSignsDeleteLn = { fg = colors.vcs_removed },
    GitSignsChange = { fg = colors.vcs_modified },

    -- Telescope.
    TelescopePromptBorder = { fg = colors.accent },

    -- Cmp.

		CmpItemAbbr = { fg = colors.fg },
    CmpItemMenu = { fg = colors.comment },
    CmpItemAbbrMatch = { fg = colors.red_rose },
    CmpItemAbbrMatchFuzzy = { fg = colors.red_rose, underline=true },

		CmpItemKind = { fg = colors.fg },
    CmpItemKindText = { fg = colors.string },
    CmpItemKindMethod = { fg = colors.keyword },
    CmpItemKindFunction = { fg = colors.func },
    CmpItemKindConstructor = { fg = colors.keyword },
    CmpItemKindField = { fg = colors.type },
    CmpItemKindVariable = { fg = colors.tag },
    CmpItemKindClass = { fg = colors.type },
    CmpItemKindInterface = { fg = colors.type },
    CmpItemKindModule = { fg = colors.keyword },
    CmpItemKindProperty = { fg = colors.keyword },
    CmpItemKindUnit = { fg = colors.constant },
    CmpItemKindValue = { fg = colors.constant },
    CmpItemKindEnum = { fg = colors.type },
    CmpItemKindKeyword = { fg = colors.keyword },
    CmpItemKindSnippet = { fg = colors.regexp },
    CmpItemKindColor = { fg = colors.special },
    CmpItemKindFile = { fg = colors.special },
    CmpItemKindReference = { fg = colors.special },
    CmpItemKindFolder = { fg = colors.special },
    CmpItemKindEnumMember = { fg = colors.constant },
    CmpItemKindConstant = { fg = colors.constant },
    CmpItemKindStruct = { fg = colors.type },
    CmpItemKindEvent = { fg = colors.tag },
    CmpItemKindOperator = { fg = colors.operator },
    CmpItemKindTypeParameter = { fg = colors.tag },

    -- Word under cursor.
    CursorWord = { bg = colors.selection_inactive },
    CursorWord0 = { bg = colors.selection_inactive },
    CursorWord1 = { bg = colors.selection_inactive },

    -- Noice
    NoiceLspProgressTitle = { fg = colors.fg },
    NoiceLspProgressClient = { fg = colors.special },

    -- NvimTree.
    NvimTreeGitDirty = { fg = colors.accent },
    NvimTreeGitStaged = { fg = colors.vcs_modified },
    NvimTreeGitMerge = { fg = colors.error },
    NvimTreeGitNew = { fg = colors.vcs_added },
    NvimTreeGitDeleted = { fg = colors.vcs_removed },

    NvimTreeFolderName = { fg = colors.special },
    NvimTreeFolderIcon = { fg = colors.accent },
    NvimTreeOpenedFolderName = { fg = colors.special },
    NvimTreeRootFolder = { fg = colors.keyword },
    NvimTreeSpecialFile = { fg = colors.fg },
    NvimTreeExecFile = { fg = colors.fg },
    NvimTreeIndentMarker = { fg = colors.fg },

    NvimTreeWindowPicker = { fg = colors.keyword, bg = colors.panel_border, bold = true },

    -- Neo-tree.
    NeoTreeRootName = { fg = colors.fg, bold = true },

    -- WhichKey.
    WhichKeyFloat = { bg = colors.bg },

    -- Indent blankline.
    IndentBlanklineContextChar = { fg = colors.comment },

    -- Neogit.
    NeogitDiffContextHighlight = { bg = colors.panel_bg_inactive },
    NeogitHunkHeader = { fg = colors.tag },
    NeogitHunkHeaderHighlight = { fg = colors.tag, bg = colors.panel_bg_inactive },
    NeogitDiffAddHighlight = { bg = colors.vcs_added_bg },
    NeogitDiffDeleteHighlight = { bg = colors.vcs_removed_bg },

    -- Hop.
    HopNextKey = { fg = colors.piggy_pink, bold = true, underline = true },
    HopNextKey1 = { fg = colors.piggy_pink, bold = true, underline = true },
    HopNextKey2 = { fg = colors.piggy_pink },
    HopUnmatched = { fg = colors.comment },

    -- Leap.
    LeapMatch = { fg = colors.regexp, underline = true },
    LeapLabelPrimary = { fg = colors.bg, bg = colors.regexp },
    LeapLabelSecondary = { fg = colors.bg, bg = colors.type },
    LeapLabelSelected = { fg = colors.bg, bg = colors.tag },

    -- LSP Signature.
    LspSignatureActiveParameter = { italic = true },

    -- Notify.
    NotifyERROR = { fg = colors.vcs_removed },
    NotifyWARN = { fg = colors.func },
    NotifyINFO = { fg = colors.vcs_added },
    NotifyDEBUG = { fg = colors.comment },
    NotifyTRACE = { fg = colors.vcs_modified },
    NotifyERRORTitle = { fg = colors.error },
    NotifyWARNTitle = { fg = colors.warning },
    NotifyINFOTitle = { fg = colors.string },
    NotifyDEBUGTitle = { fg = colors.ui },
    NotifyTRACETitle = { fg = colors.type },

    -- Dap.
    NvimDapVirtualText = { fg = colors.regexp },

    -- DAP UI.
    DapUIScope = { fg = colors.func },
    DapUIType = { fg = colors.type },
    DapUIDecoration = { fg = colors.tag },
    DapUIThread = { fg = colors.string },
    DapUIStoppedThread = { fg = colors.special },
    DapUISource = { fg = colors.regexp },
    DapUILineNumber = { fg = colors.constant },
    DapUIFloatBorder = { fg = colors.panel_border },
    DapUIWatchesEmpty = { fg = colors.warning },
    DapUIWatchesValue = { fg = colors.string },
    DapUIWatchesError = { fg = colors.error },
    DapUIBreakpointsPath = { fg = colors.regexp },
    DapUIBreakpointsInfo = { fg = colors.constant },
    DapUIBreakpointsCurrentLine = { fg = colors.constant, bold = true },

    -- Visual Multi.
    VM_Extend = { bg = colors.selection_inactive },
    VM_Cursor = { bg = colors.selection_inactive, sp = colors.fg, underline = true },
    VM_Insert = { sp = colors.fg, underline = true },
    VM_Mono = { fg = colors.bg, bg = colors.comment },

		-- git diff
		diffFile = { link = 'Statement' },
		gitDiff = { fg = colors.white_smoke },

		-- Mini
		MiniStatuslineModeNormal = { fg = colors.bg, bg = colors.golden, bold = true },
		MiniStatuslineModeInsert = { fg = colors.bg, bg = colors.golden, bold = true },
		MiniStatuslineModeVisual = { fg = colors.bg, bg = colors.golden, bold = true },
		MiniStatuslineModeReplace = { fg = colors.bg, bg = colors.golden, bold = true },
		MiniStatuslineModeCommand = { fg = colors.bg, bg = colors.golden, bold = true },
		MiniStatuslineModeOther = { fg = colors.bg, bg = colors.golden, bold = true },
		MiniStatuslineInactive = { fg = colors.fg, bg = colors.panel_bg_inactive }

		-- Highlight used in default statusline:
		--[[ TODO
		* `MiniStatuslineDevinfo` - for "dev info" group
			(|MiniStatusline.section_git| and |MiniStatusline.section_diagnostics|).
		* `MiniStatuslineFilename` - for |MiniStatusline.section_filename| section.
		* `MiniStatuslineFileinfo` - for |MiniStatusline.section_fileinfo| section.
		--]]
  }

  for group, parameters in pairs(groups) do
    vim.api.nvim_set_hl(0, group, parameters)
  end
end

--- Set the colorscheme.
function midnightcrawler.colorscheme()
  vim.api.nvim_command('hi clear')

  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end

  vim.g.VM_theme_set_by_colorscheme = true -- Required for Visual Multi
  vim.g.colors_name = 'midnightcrawler'
	vim.opt.termguicolors = true -- TODO maybe delete it later

	set_terminal_colors()
  set_groups()
end

return midnightcrawler
