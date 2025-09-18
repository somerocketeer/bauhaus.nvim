local C = require("bauhaus.palette")

local M = {}

local function hi(g, v)
  vim.api.nvim_set_hl(0, g, v)
end

function M.apply(opts)
  opts = opts or {}
  local bg = opts.transparent and "NONE" or C.bg

  -- Core UI
  hi("Normal",        { fg = C.fg,  bg = bg })
  hi("NormalNC",      { fg = C.sub1, bg = bg })
  hi("NormalFloat",   { fg = C.fg,  bg = C.s0 })
  hi("FloatBorder",   { fg = C.s1,  bg = C.s0 })
  hi("WinSeparator",  { fg = C.s1 })
  hi("SignColumn",    { fg = C.sub0, bg = bg })
  hi("ColorColumn",   { bg = C.s0 })
  hi("CursorLine",    { bg = C.s2 })
  hi("CursorColumn",  { bg = C.s2 })
  hi("CursorLineNr",  { fg = C.violet, bold = true })
  hi("LineNr",        { fg = C.s1 })
  hi("Visual",        { bg = C.s2 })
  hi("Search",        { fg = C.bg, bg = C.blue, bold = true })
  hi("IncSearch",     { fg = C.bg, bg = C.yellow, bold = true })
  hi("MatchParen",    { fg = C.violet, bold = true })
  hi("Pmenu",         { fg = C.fg, bg = C.s0 })
  hi("PmenuSel",      { fg = C.fg, bg = C.s2, bold = true })
  hi("StatusLine",    { fg = C.fg, bg = C.s0 })
  hi("StatusLineNC",  { fg = C.sub0, bg = bg })
  hi("TabLine",       { fg = C.sub0, bg = bg })
  hi("TabLineSel",    { fg = C.violet, bg = C.s0, bold = true })
  hi("TabLineFill",   { bg = bg })
  hi("VertSplit",     { fg = C.s1 })
  hi("Folded",        { fg = C.sub0, bg = C.s0 })
  hi("FoldColumn",    { fg = C.sub0, bg = bg })

  -- Diagnostics
  hi("DiagnosticError",            { fg = C.red })
  hi("DiagnosticWarn",             { fg = C.yellow })
  hi("DiagnosticInfo",             { fg = C.blue })
  hi("DiagnosticHint",             { fg = C.cyan })
  hi("DiagnosticUnderlineError",   { undercurl = true, sp = C.red })
  hi("DiagnosticUnderlineWarn",    { undercurl = true, sp = C.yellow })
  hi("DiagnosticUnderlineInfo",    { undercurl = true, sp = C.blue })
  hi("DiagnosticUnderlineHint",    { undercurl = true, sp = C.cyan })
  hi("DiagnosticVirtualTextError", { fg = C.red })
  hi("DiagnosticVirtualTextWarn",  { fg = C.yellow })
  hi("DiagnosticVirtualTextInfo",  { fg = C.blue })
  hi("DiagnosticVirtualTextHint",  { fg = C.cyan })

  -- Syntax / Treesitter
  hi("Comment",     { fg = C.sub0, italic = true })
  hi("String",      { fg = C.green })
  hi("Number",      { fg = C.orange })
  hi("Boolean",     { fg = C.orange })
  hi("Identifier",  { fg = C.fg })
  hi("Function",    { fg = C.blue })
  hi("Keyword",     { fg = C.violet, bold = true })
  hi("Type",        { fg = C.yellow })
  hi("Constant",    { fg = C.orange })
  hi("Operator",    { fg = C.sub1 })
  hi("Delimiter",   { fg = C.s1 })
  hi("@punctuation.delimiter", { fg = C.sub0 })
  hi("@punctuation.bracket",   { fg = C.sub0 })
  hi("@punctuation.special",   { fg = C.sub0 })

  -- Diff & Git signs
  hi("DiffAdd",    { bg = "#12332f", fg = C.green })
  hi("DiffChange", { bg = "#1f2836", fg = C.blue })
  hi("DiffDelete", { bg = "#3a2323", fg = C.red })
  hi("DiffText",   { bg = "#293449", fg = C.blue, bold = true })
  hi("GitSignsAdd",    { fg = C.green })
  hi("GitSignsChange", { fg = C.blue })
  hi("GitSignsDelete", { fg = C.red })

  -- Telescope
  hi("TelescopeBorder", { fg = C.blue, bg = C.s0 })
  hi("TelescopeNormal", { fg = C.fg,  bg = C.s0 })
  hi("TelescopeTitle",  { fg = C.violet, bold = true })

  -- WhichKey
  hi("WhichKey",          { fg = C.violet, bold = true })
  hi("WhichKeyGroup",     { fg = C.violet })
  hi("WhichKeyDesc",      { fg = C.fg })
  hi("WhichKeySeparator", { fg = C.s1 })
end

return M
