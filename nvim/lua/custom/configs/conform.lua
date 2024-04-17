--type conform.options
local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },

    javascript = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    typescript = { "prettier" },

    cpp = { "clang_format" },
    c = { "clang_format" },
    rust = { "rustfmt" },
    java = { "clang_format" },
    sh = { "shfmt" },
    haskell = { "fourmolu" },
    latex = { "latexindent" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
