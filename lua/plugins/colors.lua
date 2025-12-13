return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                compile = true,
                undercurl = true,
                commentStyle = { italic = true },
                keywordStyle = { italic = true },
                statementStyle = { bold = false },
                transparent = false,
                dimInactive = false,
                globalStatus = true,
            })

            vim.cmd('colorscheme kanagawa-dragon')

            -- Force black background
            vim.cmd([[
                hi Normal guibg=#000000
                hi NormalFloat guibg=#0A0A0A
                hi SignColumn guibg=#000000
                hi LineNr guibg=#000000
                hi CursorLine guibg=#111111
                hi EndOfBuffer guibg=#000000
                hi FoldColumn guibg=#000000
                hi ColorColumn guibg=#0A0A0A
            ]])
        end,
    },
}
