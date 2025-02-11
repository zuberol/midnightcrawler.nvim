local base = require'midnightcrawler.colors.base'

local none = "NONE"

local nvim = {
	-- Normal = { fg = base.white_dark, bg = none }
	Normal = { fg = base.yellow_dark, bg = none }
}

local syntax = {
	Keyword = { fg = base.yellow_dark, bg = none },
	Operator = { fg = base.yellow_dark, bg = none, bold = true },
	Constant = { fg = base.red_dark, bg = none },
	Type = { fg = base.blue_light, bg = none },
	Variable = { fg = base.white_light, bg = none },
	String = { fg = base.green_dark, bg = none },
--	Function = { link = 'Type' },
	['@lsp.mod.definition'] = { link = 'Type' },
	['@lsp.mod.readonly'] = { fg = base.magenta_dark, bg = none },
	['@lsp.type.namespace'] = { link = 'Type' },
	['@lsp.type.parameter'] = { link = 'Variable' },
	['@lsp.type.variable'] = { link = 'Variable' },
	['@lsp.type.function'] = { link = 'Type' },
	['@lsp.type.number'] = { fg = base.magenta_light, bg = none },
	['@lsp.typemod.variable.definition'] = { fg = base.red_dark, bg = none },
	['@lsp.typemod.parameter.definition'] = { fg = base.red_dark, bg = none },
--	['@lsp.typemod.function.definition'] = { fg = base.blue_light, bg = none },
	-- ['@lsp'] = { fg = base.cyan_light, bg = none },
}

return vim.tbl_deep_extend('error', {}, syntax, nvim)
