return {
  {
    "folke/noice.nvim",
    enabled = false,
  },
  {
    "L3MON4D3/LuaSnip",
    config = function()
      local ls = require("luasnip")

      -- load your custom snippets
      require("luasnip.loaders.from_lua").load({
        paths = vim.fn.expand("~/.config/nvim/snippets"),
      })
    end,
  },
}
