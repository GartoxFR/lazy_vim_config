return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim" },
    { "rose-pine/neovim", name = "rose-pine" },
    { "shaunsingh/nord.nvim" },
    {
        "neanias/everforest-nvim",
        lazy = false,
        priority = 1000,
        config = function() 
            require("everforest").setup({
                background = "medium"
            })
        end
    },
    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "everforest",
        },
    },
}
