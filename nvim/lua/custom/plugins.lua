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

  -- Install a plugin
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
    -- event = "BufWritePre"
    config = function()
      require "custom.configs.conform"
    end,
  },
  {
    "lervag/vimtex",
    lazy = false,
  },
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require "custom.configs.copilot"
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require "custom.configs.copilot_cmp"
    end,
  },
  {
    "luukvbaal/nnn.nvim",
    lazy = false,
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
    "rcarriga/nvim-dap-ui",
    requires = { "mfussenegger/nvim-dap" },
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
  -- {
  --   "ThePrimeagen/harpoon",
  --   branch = "harpoon2",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   config = function()
  --     require "custom.configs.harpoon"
  --   end,
  -- },
  -- wait until harpoon2 is merged
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
  -- TODO (doesn't work yet)
  -- {
  --   "mfussenegger/nvim-jdtls",
  --   config = function()
  --     require "custom.configs.nvim-jdtls"
  --   end,
  --   lazy = false,
  -- }
}

return plugins
