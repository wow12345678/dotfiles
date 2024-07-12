vim.g.rustaceanvim = {
  server = {
    on_attach = function()
      vim.lsp.inlay_hint.enable(true, { 0 })
      vim.keymap.set("n", "<leader>rs", function()
        vim.cmd.RustLsp "ssr"
      end, { desc = "structural search replace" })
      vim.keymap.set("n", "<leader>rj", function()
        vim.cmd.RustLsp "joinLines"
      end, { desc = "join Lines" })
      vim.keymap.set("n", "<leader>ro", function()
        vim.cmd.RustLsp "opendocs"
      end, { desc = "open Docs for symbol under cursor" })
      vim.keymap.set("n", "<leader>rc", function()
        vim.cmd.RustLsp "openCargo"
      end, { desc = "open Cargo config" })
      vim.keymap.set("n", "<leader>re", function()
        vim.cmd.RustLsp "explainError"
      end, { desc = "explains Error" })
      vim.keymap.set("n", "<leader>rr", function()
        vim.cmd.RustLsp "runnables"
      end, { desc = "runnables" })
      vim.keymap.set("n", "<leader>rt", function()
        vim.cmd.RustLsp "testables"
      end, { desc = "testables" })
      vim.keymap.set("n", "<leader>rm", function()
        vim.cmd.RustLsp "expandMacro"
      end, { desc = "expand Macro" })
      vim.keymap.set("n", "<leader>ra", function()
        vim.cmd.RustLsp "codeAction"
      end, { desc = "code Actions" })
      vim.keymap.set("n", "<leader>rd", function()
        vim.cmd.RustLsp "renderDiagnostic"
      end, { desc = "render Diagnostics" })
    end,

    default_settings = {
      ["rust-analyzer"] = {
        diagnostics = {
          enable = true,
        },
        imports = {
          granularity = {
            group = "module",
          },
          prefix = "self",
        },
        cargo = {
          allFeatures = true,
        },
        procMacro = {
          enable = true,
        },
      },
    },
  },
}
