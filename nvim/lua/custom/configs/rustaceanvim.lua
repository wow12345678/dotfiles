vim.g.rustaceanvim = {
    server = {
        on_attach = function (client, bufnr)
            vim.lsp.inlay_hint.enable(bufnr)
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
                        enable = true;
                    },
                },
                procMacro = {
                    enable = true
                },
            },
        },
    },
}
