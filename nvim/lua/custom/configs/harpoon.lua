local harpoon = require "harpoon"

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<C-a>", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<C-n>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<leader>he", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>hh", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>hs", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>hf", function()
  harpoon:list():select(4)
end)
