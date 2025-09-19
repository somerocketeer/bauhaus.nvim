-- Lualine theme mapping for Bauhaus
-- Place at lua/lualine/themes/bauhaus.lua

local C = require("bauhaus.palette")

local M = {}

-- Base sections colors
local bg  = C.bg
local fg  = C.fg
local norm = C.blue        -- neutral-ish accent for normal mode
local acc = C.violet       -- strong accent (coral)
local dim = C.sub0         -- dimmed text
local surf= C.s0           -- surface
local brd = C.s1           -- border/divider

M.normal = {
  a = { bg = norm, fg = bg, gui = "bold" },
  b = { bg = surf, fg = fg },
  c = { bg = surf, fg = fg },
}

M.insert = {
  a = { bg = acc, fg = bg, gui = "bold" },
  b = { bg = surf, fg = fg },
  c = { bg = surf, fg = fg },
}

M.visual = {
  a = { bg = C.cyan, fg = bg, gui = "bold" },
  b = { bg = surf, fg = fg },
  c = { bg = surf, fg = fg },
}

M.replace = {
  a = { bg = C.red, fg = bg, gui = "bold" },
  b = { bg = surf, fg = fg },
  c = { bg = surf, fg = fg },
}

M.command = {
  a = { bg = C.yellow, fg = bg, gui = "bold" },
  b = { bg = surf, fg = fg },
  c = { bg = surf, fg = fg },
}

M.inactive = {
  a = { bg = bg, fg = dim },
  b = { bg = bg, fg = dim },
  c = { bg = bg, fg = dim },
}

return M
