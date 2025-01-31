return {
	"hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-cmdline"
    },
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

		opts.formatting = vim.tbl_extend("force", opts.formatting, {
			fields = { "abbr", "kind", "menu" },
			format = lspkind.cmp_format({
				mode = "symbol_text", -- show only symbol annotations
				maxwidth = 50, -- prevent the popup from showing more than provided characters
				ellipsis_char = "...", -- the truncated part when popup menu exceed maxwidth
				before = function(entry, item)
					local menu_icon = {
						nvim_lsp = "",
						vsnip = "",
						path = "",
						cmp_zotcite = "z",
						cmp_r = "R",
					}
					item.menu = menu_icon[entry.source.name]
					return item
				end,
			}),
		})

		--opts.snippet = vim.tbl_extend("force", opts.snippet, {
		--    expand = function(args)
		--        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		--    end,
		--})

		-- opts.window = vim.tbl_extend("force", opts.window, {
		--   completion = cmp.config.window.bordered(),
		--   documentation = cmp.config.window.bordered(),
		-- })

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
		-- opts.sources = cmp.config.sources({
		--   { name = "nvim_lsp" },
		--   { name = "vsnip" },
		--   { name = "cmp_r" },
		--   { name = "buffer" },
		--   { name = "path" },
		--   { name = "tmux" },
		-- })

		-- Set configuration for git.
		cmp.setup.filetype("gitcommit", {
			sources = cmp.config.sources({
				{ name = "cmp_git" },
				{ name = "buffer" },
			}),
		})

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
