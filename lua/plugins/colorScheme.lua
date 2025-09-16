return {
  -- Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
    config = function()
      require("rose-pine").setup {
        variant = "main", -- or "moon" / "dawn"
        dark_variant = "main",
        bold_vert_split = false,
        dim_nc_background = false,
        disable_background = false,
        disable_float_background = false,
        disable_italics = false,
      }
      -- Override background to pure black
      -- vim.api.nvim_set_hl(0, "Normal",       { bg = "#000000" })
      -- vim.api.nvim_set_hl(0, "NormalNC",     { bg = "#000000" })
      -- vim.api.nvim_set_hl(0, "SignColumn",   { bg = "#000000" })
      -- vim.api.nvim_set_hl(0, "LineNr",       { bg = "#000000" })
      -- vim.api.nvim_set_hl(0, "EndOfBuffer",  { bg = "#000000" })
      -- vim.api.nvim_set_hl(0, "NormalFloat",  { bg = "#000000" })
      vim.o.termguicolors = true
      vim.cmd.colorscheme("rose-pine") -- apply Nordic 
    end,
  },

{
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      -- flavour = "macchiato", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      term_colors = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        notify = false,
        mini = false,
      },
    })
    vim.cmd.colorscheme("catppuccin") -- apply Nordic 
  end,
},

{
    'AlexvZyl/nordic.nvim',
    lazy = true,
    priority = 1000,
    config = function()
    vim.cmd.colorscheme("nordic") -- apply Nordic 
    end
},

{
  "vague2k/vague.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other plugins
  config = function()
    vim.cmd("colorscheme vague")
  end
},
}

