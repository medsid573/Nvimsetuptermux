return {
  -- Reduce update time for better responsiveness
  {
    "LazyVim/LazyVim",
    opts = {
      ui = {
        -- Disable animations for better performance
        animations = {
          enabled = false,
        },
      },
    },
  },

  -- Custom settings for Termux
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- Only install necessary parsers
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",
        "python",
        "bash",
      },
      auto_install = false, -- Disable auto-install to save resources
      highlight = {
        enable = true,
        -- Reduce load by disabling some features
        additional_vim_regex_highlighting = false,
      },
    },
  },

  -- LSP optimizations for Termux
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Only enable essential LSPs
        lua_ls = {},
        pyright = {},
        bashls = {},
      },
    },
  },
}
