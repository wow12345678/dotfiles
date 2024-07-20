local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "stevearc/conform.nvim",
    --  for users those who want auto-save conform + lazyloading!
    event = "BufWritePre",
    cmd = "ConformInfo",
    config = function()
      require "custom.configs.conform"
    end,
  },
  {
    "lervag/vimtex",
    lazy = false,
    config = function()
      vim.g.maplocalleader = " "
      vim.g.vimtex_view_general_viewer = "okular"
      vim.g.vimtex_view_general_options = "--unique file:@pdf#src:@line@tex"
      vim.g.vimtex_syntax_enabled = 0
    end,
  },
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
  },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require "custom.configs.copilot"
  --   end,
  -- },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   config = function()
  --     require "custom.configs.copilot_cmp"
  --   end,
  -- },
  {
    "luukvbaal/nnn.nvim",
    cmd = "NnnPicker",
    config = function()
      require "custom.configs.nnn"
    end,
  },
  {
    "ThePrimeagen/vim-apm",
    config = function()
      require "custom.configs.apm"
    end,
    lazy = false,
  },
  -- {
  --   "nvimtools/none-ls.nvim",
  --   config = function()
  --     require "custom.configs.none-ls"
  --   end,
  --   lazy = false,
  -- },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "custom.configs.dap"
    end,
  },
  {
    "nvim-neotest/nvim-nio",
  },
  {
    "rcarriga/nvim-dap-ui",
    requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      require "custom.configs.dap-ui"
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    config = function()
      require "custom.configs.nvim-dap-virtual-text"
    end,
    lazy = false,
  },
  {
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim" },
    opts = {},
  },
  {
    "stevearc/overseer.nvim",
    commit = "68a2d344cea4a2e11acfb5690dc8ecd1a1ec0ce0",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1,
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    config = function()
      require "custom.configs.rustaceanvim"
    end,
    ft = { "rust" },
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    lazy = false,
    config = function()
      require "custom.configs.harpoon"
    end,
  },
  {
    "mbbill/undotree",
    lazy = false,
    config = function()
      vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end,
  },
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
  --
  -- TODO (doesn't work yet)
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    config = function()
      require "custom.configs.nvim-jdtls"
    end,
  },
  {
    "fedepujol/move.nvim",
    config = function()
      require "custom.configs.move"
    end,
    lazy = false,
  },
  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    config = function()
      require "custom.configs.crates"
    end,
  },
}

return plugins
