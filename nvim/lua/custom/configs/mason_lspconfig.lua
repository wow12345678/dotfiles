local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup {
  ensure_installed = {
    -- lua stuff
    "lua_ls",
    -- web dev stuff
    "html",
    "tsserver",
    "denols",
    -- c/cpp stuff
    "clangd",
    --custom
    "ast_grep",
    "bashls",
    "hls",
  },
  automatic_installation = true,
  handlers = nil,
}
