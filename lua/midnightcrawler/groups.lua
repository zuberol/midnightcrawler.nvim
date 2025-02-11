local base = require'midnightcrawler.base'
--[[
LspReferenceText          used for highlighting "text" references *hl-LspReferenceRead*
LspReferenceRead          used for highlighting "read" references *hl-LspReferenceWrite*
LspReferenceWrite         used for highlighting "write" references *hl-LspInlayHint*
LspInlayHint              used for highlighting inlay hints
LspCodeLens
LspCodeLensSeparator                                 *hl-LspCodeLensSeparator*
LspSignatureActiveParameter
@lsp.type.class          Identifiers that declare or reference a class type
@lsp.type.comment        Tokens that represent a comment
@lsp.type.decorator      Identifiers that declare or reference decorators and annotations
@lsp.type.enum           Identifiers that declare or reference an enumeration type
@lsp.type.enumMember     Identifiers that declare or reference an enumeration property, constant, or member
@lsp.type.event          Identifiers that declare an event property
@lsp.type.function       Identifiers that declare a function
@lsp.type.interface      Identifiers that declare or reference an interface type
@lsp.type.keyword        Tokens that represent a language keyword
@lsp.type.macro          Identifiers that declare a macro
@lsp.type.method         Identifiers that declare a member function or method
@lsp.type.modifier       Tokens that represent a modifier
@lsp.type.namespace      Identifiers that declare or reference a namespace, module, or package
@lsp.type.number         Tokens that represent a number literal
@lsp.type.operator       Tokens that represent an operator
@lsp.type.parameter      Identifiers that declare or reference a function or method parameters
@lsp.type.property       Identifiers that declare or reference a member property, member field, or member variable
@lsp.type.regexp         Tokens that represent a regular expression literal
@lsp.type.string         Tokens that represent a string literal
@lsp.type.struct         Identifiers that declare or reference a struct type
@lsp.type.type           Identifiers that declare or reference a type that is not covered above
@lsp.type.typeParameter  Identifiers that declare or reference a type parameter
@lsp.type.variable       Identifiers that declare or reference a local or global variable
@lsp.mod.abstract        Types and member functions that are abstract
@lsp.mod.async           Functions that are marked async
@lsp.mod.declaration     Declarations of symbols
@lsp.mod.defaultLibrary  Symbols that are part of the standard library
@lsp.mod.definition      Definitions of symbols, for example, in header files
@lsp.mod.deprecated      Symbols that should no longer be used
@lsp.mod.documentation   Occurrences of symbols in documentation
@lsp.mod.modification    Variable references where the variable is assigned to
@lsp.mod.readonly        Readonly variables and member fields (constants)
@lsp.mod.static          Class members (static members)
--]]

local M = {}

M['@lsp.type.string'] = {}
M['@lsp.type.string'].fg = base.green

return M
