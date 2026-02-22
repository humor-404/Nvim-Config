return {
  {
    "vague-theme/vague.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
      -- NOTE: you do not need to call setup if you don't want to.
      require("vague").setup({})
      vim.cmd("colorscheme vague")
      vim.api.nvim_set_hl(0, "Normal", { bg = "#20212A" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "#20212A" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#20212A" })
      vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#20212A" })
      vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#20212A" })
      vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "#20212A" })
      -- vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { bg = "#20212A", fg = "#20212A" })
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
      vim.cmd("colorscheme rose-pine")
      vim.api.nvim_set_hl(0, "Normal", { bg = "#20212A" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "#20212A" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#20212A" })
    end,
  },
}
