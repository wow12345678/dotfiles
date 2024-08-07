---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "decay",
  theme_toggle = { "decay" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}
-- BEGIN: additional keybinds (TODO: Move in refactor)
vim.keymap.set("c", "<F2>", "\\(.*\\)")

-- END

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
