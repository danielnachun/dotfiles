return {
    {
        "saghen/blink.cmp",
        dependencies = {
            { 'R-nvim/cmp-r' },
        },
        opts = {
            -- Assign keymaps so that tab cycles through completions and enter selects them
            keymap = {
                preset = "none",
                ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
                ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
                ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
                ["<Tab>"] = {
                    function(cmp)
                        if cmp.snippet_active() then return cmp.snippet_forward() else return cmp.select_next() end
                    end,
                    'fallback'
                },
                ["<S-Tab>"] = {
                    function(cmp)
                        if cmp.snippet_active() then return cmp.snippet_backward() else return cmp.select_prev() end
                    end,
                    'fallback'
                },
                ["<CR>"] = {
                    'select_and_accept',
                    'fallback'
                },
            },
            -- Add cmp_r as a provider
            -- Currently not triggering for (, not getting function arguments
            sources = {
                default = { "lsp", "path", "snippets", "buffer", "cmp_r" },
                providers = {
                    cmp_r = {
                        name = "cmp_r",
                        module = 'blink.compat.source',
                    }
                }
            },
        },
    },
}
