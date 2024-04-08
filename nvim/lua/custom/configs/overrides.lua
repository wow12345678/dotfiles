local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "java",
    "markdown",
    "markdown_inline",
    "cpp",
    "rust",
    "c",
    "c_sharp",
    "python",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    --custom
    "ast-grep",
    "bash-language-server",
    "haskell-language-server",
    "haskell-debug-adapter",
    "rust-analyzer",
    "codelldb",
    "formoulu",
    "java-debg-adapter",
    "jdtls",
    "latexindent",
    "shfmt"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
