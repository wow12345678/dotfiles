vim.g.rustaceanvim = {
  server = {
    on_attach = function()
      vim.lsp.inlay_hint.enable(true, { 0 })
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
