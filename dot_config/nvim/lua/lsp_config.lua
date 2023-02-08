-- Set up lspconfig.
--local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require'lspconfig'.r_language_server.setup{}
require'lspconfig'.bashls.setup{}

--require'navigator'.setup({
--    lsp = {
--        format_on_save = false,
--        diagnostic_scrollbar_sign = false
--    },
--})

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.code_actions.shellcheck,
        null_ls.builtins.formatting.styler,
        null_ls.builtins.formatting.format_r
    },
})
