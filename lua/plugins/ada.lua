return {
    {
        "TamaMcGlinn/nvim-lspconfig-ada",
        config = function()
            require("lspconfig").als.setup{
                on_init = require("gpr_selector").als_on_init
            }
        end
    },
    { "TamaMcGlinn/nvim-lsp-gpr-selector" },
}
