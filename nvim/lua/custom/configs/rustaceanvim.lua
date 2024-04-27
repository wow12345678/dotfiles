vim.g.rustaceanvim = {
  server = {
    on_attach = function(client, bufnr)
      vim.lsp.inlay_hint.enable(true, 0)
    end,
    default_settings = {
      ["rust-analyzer"] = {
        imports = {
          granularity = {
            group = "module",
          },
          prefix = "self",
        },
        cargo = {
          buildScripts = {
            enable = true,
          },
        },
        procMacro = {
          enable = true,
        },
      },
    },
  },
}
