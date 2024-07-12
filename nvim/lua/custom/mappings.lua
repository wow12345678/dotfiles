---@type MappingsTable
--
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["<leader>o"] = { "<cmd>NnnPicker -H <CR>", "open nnn" },

    --personal preference
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },

    --dap
    ["<leader>dc"] = { "<cmd>lua require'dap'.continue()<CR>", "dap continue" },
    ["<leader>db"] = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>", "dap toggle breakpoint" },
    ["<leader>dr"] = { "<cmd>lua require'dap'.repl.toggle()<CR>", "dap repl" },
    ["<leader>ds"] = { "<cmd>lua require'dap'.step_over()<CR>", "dap step over" },
    ["<leader>di"] = { "<cmd>lua require'dap'.step_into()<CR>", "dap step into" },
    ["<leader>dn"] = { "<cmd>lua require'dap'.run_to_cursor()<CR>", "dap run to cursor" },
    ["<leader>dx"] = { "<cmd>lua require'dap'.close()<CR>", "dap stop" },
    ["<leader>dh"] = { "<cmd>lua require'dap'.hover()<CR>", "dap hover" },

    --dapui
    ["<leader>dt"] = { "<cmd>lua require'dapui'.toggle()<CR>", "dapui toggle" },
    ["<leader>dl"] = { "<cmd>lua require'dapui'.list_breakpoints()<CR>", "dapui list breakpoints" },
    ["<leader>dv"] = { "<cmd>lua require'dapui'.list_variables()<CR>", "dapui list variables" },
    ["<leader>de"] = { "<cmd>lua require'dapui'.list_watches()<CR>", "dapui list watches" },

    --Compiler
    ["<F6>"] = { "<cmd>CompilerOpen<CR>", "open compiler" },
    ["<F7>"] = { "<cmd>CompilerToggleResults<CR>", "toggle compiler results" },
    ["<F8>"] = { "<cmd>CompilerRedo<CR>", "redo compiler" },
    ["<F9>"] = { "<cmd>CompilerStop<CR>", "stop compiler" },

    --inline Hints
    ["<leader>ih"] = {
      "<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) <CR>",
      "toggle inlay hints",
    },

    --Rustaceanvim
    -- ["<leader>rs"] = { "<cmd>RustLsp ssr<CR>", "structural search replace" },
    -- ["<leader>rj"] = { "<cmd>RustLsp joinLines<CR>", "join Lines" },
    -- ["<leader>ro"] = { "<cmd>RustLsp openDocs<CR>", "open Docs for symbol under cursor" },
    -- ["<leader>rc"] = { "<cmd>RustLsp openCargo<CR>", "open Cargo config" },
    -- ["<leader>re"] = { "<cmd>RustLsp explainError<CR>", "explains Error" },
    -- ["<leader>rr"] = { "<cmd>RustLsp runnables<CR>", "runnables" },
    -- ["<leader>rt"] = { "<cmd>RustLsp testables<CR>", "testables" },
    -- ["<leader>rm"] = { "<cmd>RustLsp expandMacro<CR>", "expand Macro" },
    -- ["<leader>ra"] = { "<cmd>RustLsp codeAction<CR>", "code Actions" },
    -- ["<leader>rd"] = { "<cmd>RustLsp renderDiagnostic<CR>", "render Diagnostics" },
    --
    --move
    ["<S-M-j>"] = { ":MoveLine(1)<CR>" },
    ["<S-M-k>"] = { ":MoveLine(-1)<CR>" },
    ["<S-M-h>"] = { ":MoveHChar(-1)<CR>" },
    ["<S-M-l>"] = { ":MoveHChar(1)<CR>" },

    -- Crates and Rustaceanvim keybinds moved to individual configs
    -- crates keybinds
    -- ["<leader>ct"] = { "<cmd>:Crates toggle<CR>", "crates.toggle" },
    -- ["<leader>cr"] = { "<cmd>:Crates reload<CR>", "crates.reload" },
    --
    -- ["<leader>cv"] = { "<cmd>:Crates show_versions_popup<CR>", "crates.show_versions_popup" },
    -- ["<leader>cf"] = { "<cmd>:Crates show_features_popup<CR>", "crates.show_features_popup" },
    -- ["<leader>cd"] = { "<cmd>:Crates show_dependencies_popup<CR>", "crates.show_dependencies_popup" },
    --
    -- ["<leader>cu"] = { "<cmd>:Crates update_crate<CR>", "crates.update_crate" },
    -- ["<leader>ca"] = { "<cmd>:Crates update_all_crates<CR>", "crates.update_all_crates" },
    -- ["<leader>cU"] = { "<cmd>:Crates upgrade_crate<CR>", "crates.upgrade_crate" },
    -- ["<leader>cA"] = { "<cmd>:Crates upgrade_all_crates<CR>", "crates.upgrade_all_crates" },
    --
    -- ["<leader>cx"] = {
    --   "<cmd>:Crates expand_plain_crate_to_inline_table<CR>",
    --   "crates.expand_plain_crate_to_inline_table",
    -- },
    -- ["<leader>cX"] = { "<cmd>:Crates extract_crate_into_table<CR>", "crates.extract_crate_into_table" },
    --
    -- ["<leader>cH"] = { "<cmd>:Crates open_homepage<CR>", "crates.open_homepage" },
    -- ["<leader>cR"] = { "<cmd>:Crates open_repository<CR>", "crates.open_repository" },
    -- ["<leader>cD"] = { "<cmd>:Crates open_documentation<CR>", "crates.open_documentation" },
    -- ["<leader>cC"] = { "<cmd>:Crates open_cratesio<CR>", "crates.open_crates_io" },
    -- ["<leader>cp"] = { "<cmd>:Crates focus_popup<CR>", "crates.focus_popup" },

    -- crates keybinds (for refactor)
    -- local crates = require "crates"
    -- local opts = { silent = true }
    --
    -- vim.keymap.set("n", "<leader>ct", crates.toggle, opts)
    -- vim.keymap.set("n", "<leader>cr", crates.reload, opts)
    --
    -- vim.keymap.set("n", "<leader>cv", crates.show_versions_popup, opts)
    -- vim.keymap.set("n", "<leader>cf", crates.show_features_popup, opts)
    -- vim.keymap.set("n", "<leader>cd", crates.show_dependencies_popup, opts)
    --
    -- vim.keymap.set("n", "<leader>cu", crates.update_crate, opts)
    -- vim.keymap.set("v", "<leader>cu", crates.update_crates, opts)
    -- vim.keymap.set("n", "<leader>ca", crates.update_all_crates, opts)
    -- vim.keymap.set("n", "<leader>cU", crates.upgrade_crate, opts)
    -- vim.keymap.set("v", "<leader>cU", crates.upgrade_crates, opts)
    -- vim.keymap.set("n", "<leader>cA", crates.upgrade_all_crates, opts)
    --
    -- vim.keymap.set("n", "<leader>cx", crates.expand_plain_crate_to_inline_table, opts)
    -- vim.keymap.set("n", "<leader>cX", crates.extract_crate_into_table, opts)
    --
    -- vim.keymap.set("n", "<leader>cH", crates.open_homepage, opts)
    -- vim.keymap.set("n", "<leader>cR", crates.open_repository, opts)
    -- vim.keymap.set("n", "<leader>cD", crates.open_documentation, opts)
    -- vim.keymap.set("n", "<leader>cC", crates.open_crates_io, opts)
    -- vim.keymap.set("n", "<leader>cp", crates.focus_popup, opts)
  },
  v = {
    [">"] = { ">gv", "indent" },

    ["<S-M-j>"] = { ":MoveBlock(1)<CR>" },
    ["<S-M-k>"] = { ":MoveBlock(-1)<CR>" },
    ["<S-M-h>"] = { ":MoveHBlock(-1)<CR>" },
    ["<S-M-l>"] = { ":MoveHBlock(1)<CR>" },

    -- crates
    -- ["<leader>cU"] = { "<cmd>:Crates upgrade_crates()<CR>", " crates.upgrade_crates " },
    -- ["<leader>cu"] = { "<cmd>:Crates update_crates()<CR>", " crates.update_crates " },
  },
}

-- more keybinds!

return M
