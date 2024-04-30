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
    ["<leader>rs"] = { "<cmd>RustLsp ssr<CR>", "structural search replace" },
    ["<leader>rj"] = { "<cmd>RustLsp joinLines<CR>", "join Lines" },
    ["<leader>rod"] = { "<cmd>RustLsp openDocs<CR>", "open Docs for symbol under cursor" },
    ["<leader>rc"] = { "<cmd>RustLsp openCargo<CR>", "open Cargo config" },
    ["<leader>re"] = { "<cmd>RustLsp explainError<CR>", "explains Error" },
    ["<leader>rr"] = { "<cmd>RustLsp runnables<CR>", "runnables" },
    ["<leader>rt"] = { "<cmd>RustLsp testables<CR>", "testables" },
    ["<leader>rm"] = { "<cmd>RustLsp expandMacro<CR>", "expand Macro" },
    ["<leader>ra"] = { "<cmd>RustLsp codeAction<CR>", "code Actions" },
    ["<leader>rd"] = { "<cmd>RustLsp renderDiagnostic<CR>", "render Diagnostics" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
