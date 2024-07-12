local crates = require "crates"

crates.setup()

vim.keymap.set("n", "<leader>ct", crates.toggle, { silent = true, desc = "crates.toggle" })
vim.keymap.set("n", "<leader>cr", crates.reload, { silent = true, desc = "crates.reload" })
vim.keymap.set("n", "<leader>cv", crates.show_versions_popup, { silent = true, desc = "crates.show_versions_popup" })
vim.keymap.set("n", "<leader>cf", crates.show_features_popup, { silent = true, desc = "crates.show_features_popup" })
vim.keymap.set(
  "n",
  "<leader>cd",
  crates.show_dependencies_popup,
  { silent = true, desc = "crates.show_dependencies_popup" }
)
vim.keymap.set("n", "<leader>cu", crates.update_crate, { silent = true, desc = "crates.update_crate" })
vim.keymap.set("n", "<leader>ca", crates.update_all_crates, { silent = true, desc = "crates.update_all_crates" })
vim.keymap.set("n", "<leader>cU", crates.upgrade_crate, { silent = true, desc = "crates.upgrade_crate" })
vim.keymap.set("n", "<leader>cA", crates.upgrade_all_crates, { silent = true, desc = "crates.upgrade_all_crates" })
vim.keymap.set(
  "n",
  "<leader>cx",
  crates.expand_plain_crate_to_inline_table,
  { silent = true, desc = "crates.expand_plain_crate_to_inline_table" }
)
vim.keymap.set(
  "n",
  "<leader>cX",
  crates.extract_crate_into_table,
  { silent = true, desc = "crates.extract_crate_into_table" }
)
vim.keymap.set("n", "<leader>cH", crates.open_homepage, { silent = true, desc = "crates.open_homepage" })
vim.keymap.set("n", "<leader>cR", crates.open_repository, { silent = true, desc = "crates.open_repository" })
vim.keymap.set("n", "<leader>cD", crates.open_documentation, { silent = true, desc = "crates.open_documentation" })
vim.keymap.set("n", "<leader>cC", crates.open_crates_io, { silent = true, desc = "crates.open_crates_io" })
vim.keymap.set("n", "<leader>cp", crates.focus_popup, { silent = true, desc = "crates.focus_popup" })
vim.keymap.set("v", "<leader>cu", crates.update_crates, { silent = true, desc = "crates.update_crates" })
vim.keymap.set("v", "<leader>cU", crates.upgrade_crates, { silent = true, desc = "crates.upgrade_crates" })
