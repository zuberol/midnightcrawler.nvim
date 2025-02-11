local base = require'midnightcrawler.base'
local extra = require'midnightcrawler.extra'
local groups = require'midnightcrawler.groups'
local old_groups = require'midnightcrawler.old'
local midnightcrawler = {}

local function set_groups()
  for group, parameters in pairs(old_groups) do
    vim.api.nvim_set_hl(0, group, parameters)
  end
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

function midnightcrawler.colorscheme()
  vim.api.nvim_command('hi clear')

  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end

  vim.g.colors_name = 'midnightcrawler'

	set_terminal_colors()
  set_groups(groups)
end

return midnightcrawler
