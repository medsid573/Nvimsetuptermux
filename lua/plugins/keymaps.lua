return {
  -- Fix common key combinations in Termux
  {
    "LazyVim/LazyVim",
    opts = {
      keys = {
        -- Fix Ctrl+Space for completion
        { "<C-@>", "<C-Space>", mode = "i", desc = "Force Ctrl+Space" },
        -- Fix Alt key combinations
        { "<M-h>", "<C-w>h", desc = "Window left" },
        { "<M-j>", "<C-w>j", desc = "Window down" },
        { "<M-k>", "<C-w>k", desc = "Window up" },
        { "<M-l>", "<C-w>l", desc = "Window right" },
      },
    },
  },
}
