return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style = "rounded",
        enable_diagnostics = false,

        default_component_configs = {
          container = { enable_character_fade = false },
        },

        filesystem = {
          filtered_items = {
            visible = true, -- show filtered items
            hide_dotfiles = false, -- show .files
            hide_gitignored = false, -- show gitignored files
            hide_hidden = false, -- show hidden system files
          },
          follow_current_file = {
            enabled = true,
          },
          hijack_netrw_behavior = "open_default",
        },

        window = {
          position = "right", -- sidebar on the right
          width = 30,
        },
      })
    end,
  },
}
