return {
  -- Performance optimizations for Termux
  {
    "LazyVim/LazyVim",
    opts = {
      -- Disable some heavy features for better performance on mobile
      performance = {
        cache = {
          enabled = true,
        },
        rtp = {
          disabled_plugins = {
            "gzip",
            "matchit",
            "matchparen",
            "netrwPlugin",
            "tarPlugin",
            "tohtml",
            "tutor",
            "zipPlugin",
          },
        },
      },
    },
  },

  -- Termux-specific key mappings
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        -- Handle Termux special keys
        ["<C-@>"] = { "<C-Space>", "Ctrl+Space" },
      },
    },
  },

  -- Adjust for Termux clipboard
  {
    "ojroques/nvim-osc52",
    config = function()
      local function copy(lines, _)
        require("osc52").copy(table.concat(lines, "\n"))
      end
      local function paste()
        return { vim.fn.split(vim.fn.getreg(""), "\n"), vim.fn.getregtype("") }
      end
      vim.g.clipboard = {
        name = "osc52",
        copy = { ["+"] = copy, ["*"] = copy },
        paste = { ["+"] = paste, ["*"] = paste },
      }
    end,
  },

  -- Disable some heavy plugins that might be slow on Termux
  { "folke/trouble.nvim", enabled = false },
  { "folke/todo-comments.nvim", enabled = false },
}
