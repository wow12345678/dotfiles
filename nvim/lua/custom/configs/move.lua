local move = require "move"

local opts = {
  line = {
    enable = true, -- Enables line movement
    indent = true, -- Toggles indentation
  },
  block = {
    enable = true, -- Enables block movement
    indent = true, -- Toggles indentation
  },
  word = {
    enable = true, -- Enables word movement
  },
  char = {
    enable = true, -- Enables char movement
  },
}

move.setup { opts }
