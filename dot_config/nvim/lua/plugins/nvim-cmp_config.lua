return {
	"hrsh7th/nvim-cmp",
    dependencies = {
        "amarz45/nvim-cmp-buffer-lines",
        "chrisgrieser/cmp_yanky",
        "delphinus/cmp-ctags",
        "Dosx001/cmp-commit",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-calc",
        "hrsh7th/cmp-nvim-lsp-signature-help",
        "hrsh7th/cmp-nvim-lsp-document-symbol",
        "hrsh7th/cmp-cmdline",
        "KadoBOT/cmp-plugins",
        "lukas-reineke/cmp-rg",
        "micangl/cmp-vimtex",
        "petertriho/cmp-git",
        "rasulomaroff/cmp-bufname",
        "ray-x/cmp-treesitter",
        "rcarriga/cmp-dap",
        "tamago324/cmp-zsh"
    },
    enabled = function()
        return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
            or require("cmp_dap").is_dap_buffer()
    end,
	opts = function(_, opts)
		local cmp = require("cmp")

		local has_words_before = function()
			local line, col = unpack(vim.api.nvim_win_get_cursor(0))
			return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
		end

		local feedkey = function(key, mode)
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
		end

		local lspkind = require("lspkind")


		opts.mapping = vim.tbl_extend("force", opts.mapping, {
			["<C-e>"] = cmp.mapping.abort(),
			["<Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif vim.snippet.active({ direction = 1 }) then
					vim.schedule(function()
						vim.snippet.jump(1)
					end)
				elseif has_words_before() then
					cmp.complete()
				else
					fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
				end
			end, { "i", "s" }),
			["<S-Tab>"] = cmp.mapping(function()
				if cmp.visible() then
					cmp.select_prev_item()
				elseif vim.snippet.active({ direction = -1 }) then
					vim.schedule(function()
						vim.snippet.jump(-1)
					end)
				end
			end, { "i", "s" }),
             ["<CR>"] = cmp.mapping({
                i = function(fallback)
                    if cmp.visible() then
                    cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })
                    else
                    fallback()
                    end
                end,
                s = cmp.mapping.confirm({ select = true }),
                c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
            }),
		})

        opts.sources = opts.sources or {}
        table.insert(
            opts.sources,
            {
                -- { name = "buffer-lines" },
                { name = "bufname" },
                { name = "calc" },
                { name = "cmp_yanky" },
                { name = "ctags" },
                { name = "nvim_lsp_signature_help"},
                { name = "nvim_lsp_signature_help"},
                { name = "nvim_lua" },
                { name = "rg" },
                { name = "vimtex" },
                { name = "zsh" }
            }
        )

		-- Set configuration for git.
		cmp.setup.filetype("gitcommit", {
			sources = cmp.config.sources({
				{ name = "cmp_git" },
                { name = "commit" },
				{ name = "buffer" },
			}),
		})

        cmp.setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
            sources = {
                { name = "dap" },
            },
        })
        --
		-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
		-- cmp.setup.cmdline({ "/", "?" }, {
		-- 	mapping = cmp.mapping.preset.cmdline(),
		-- 	sources = {
		-- 		{ name = "buffer" },
		-- 	},
		-- })

		-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		-- cmp.setup.cmdline(":", {
		-- 	mapping = cmp.mapping.preset.cmdline(),
		-- 	sources = cmp.config.sources({
		-- 		{ name = "path" },
		-- 		{ name = "cmdline" },
		-- 	}),
		-- })
	end,
}
