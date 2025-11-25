return {
    "saghen/blink.cmp",
    dependencies = {
        { "mikavilpas/blink-ripgrep.nvim", version = "*" },
        { "Kaiser-Yang/blink-cmp-git" },
        { "ribru17/blink-cmp-spell" },
        { "mgalliou/blink-cmp-tmux" },
        { "bydlw98/blink-cmp-env" },
        { "disrupted/blink-cmp-conventional-commits" },
        { "erooke/blink-cmp-latex" },
        { "alexandre-abrioux/blink-cmp-npm.nvim" },
        { "marcoSven/blink-cmp-yanky" }
    },
    opts = {
        keymap = {
            preset = "enter",
            ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
            ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
        },
        sources = {
            default = {
                "lsp",
                "buffer",
                "snippets",
                "path",
                "ripgrep",
                "git",
                "tmux",
                "env",
                "conventional_commits",
                "latex",
                "npm"
            },
            providers = {
                ripgrep = {
                    module = "blink-ripgrep",
                    name = "Ripgrep",
                    opts = {},
                },
                git = {
                    module = "blink-cmp-git",
                    name = "Git",
                    opts = {},
                },
                spell = {
                    module = "blink-cmp-spell",
                    name = "Spell",
                    opts = {
                        use_cmp_spelling = true
                    },
                },
                tmux = {
                    module = "blink-cmp-tmux",
                    name = "Tmux",
                    opts = {},
                },
                env = {
                    module = "blink-cmp-env",
                    name = "Env",
                    opts = {},
                },
                conventional_commits = {
                    name = 'Conventional Commits',
                    module = 'blink-cmp-conventional-commits',
                    enabled = function()
                        return vim.bo.filetype == 'gitcommit'
                    end,
                    opts = {},
                },
                latex = {
					name = "Latex",
					module = "blink-cmp-latex",
					opts = {
						insert_command = false
					},
				},
                npm = {
                    name = "Npm",
                    module = "blink-cmp-npm",
                    async = true,
                    opts = {}
                },
                yank = {
                    name = "Yank",
                    module = "blink-yanky",
                    opts = {},
                },
            },
        }
    }
}
