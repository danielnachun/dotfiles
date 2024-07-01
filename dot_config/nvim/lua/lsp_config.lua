-- Set up lspconfig.
--local capabilities = require('cmp_nvim_lsp').default_capabilities()
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").r_language_server.setup({})
require("lspconfig").bashls.setup({})
require("lspconfig").autotools_ls.setup({}) --update
require("lspconfig").awk_ls.setup({})
require("lspconfig").azure_pipelines_ls.setup({})
require("lspconfig").clangd.setup({})
require("lspconfig").clojure_lsp.setup({})
require("lspconfig").cmake.setup({})
require("lspconfig").digestif.setup({})
require("lspconfig").dockerls.setup({})
require("lspconfig").dprint.setup({})
require("lspconfig").erg.setup({})
require("lspconfig").dprint.setup({})
require("lspconfig").esbonio.setup({ cmd = { "esbonio" } })
require("lspconfig").fortls.setup({})
require("lspconfig").fsautocomplete.setup({})
require("lspconfig").golangci_lint_ls.setup({})
require("lspconfig").gopls.setup({})
--require'lspconfig'.groovyls.setup{}
require("lspconfig").harper_ls.setup({})
require("lspconfig").hls.setup({})
require("lspconfig").jedi_language_server.setup({})
require("lspconfig").jqls.setup({})
require("lspconfig").jsonls.setup({ capabilities = capabilities })
require("lspconfig").jsonnnet_ls.setup({ capabilities = capabilities })
require("lspconfig").lemminx.setup({})
require("lspconfig").ltex.setup({})
require("lspconfig").luau.setup({})
require("lspconfig").marksman.setup({})
--require'lspconfig'.msbuild_project_tools_server.setup{}
require("lspconfig").mesonlsp.setup({})
require("lspconfig").neocmake.setup({})
require("lspconfig").nushell.setup({})
require("lspconfig").ocamllsp.setup({})
--omnisharp
--require'lspconfig'.perlls.setup{}
require("lspconfig").perlpls.setup({})
require("lspconfig").prosemd_lsp.setup({})
--require'lspconfig'.pylsp.setup{}
require("lspconfig").pylyzer.setup({})
require("lspconfig").pyright.setup({})
require("lspconfig").remark_ls.setup({})
require("lspconfig").rubocop.setup({})
--require'lspconfig'.ruby_lsp.setup{} complains about Gemfile.lock, while solargraph does not
require("lspconfig").ruff.setup({})
require("lspconfig").rust_analyzer.setup({})
require("lspconfig").serve_d.setup({})
require("lspconfig").solargraph.setup({})
require("lspconfig").spectral.setup({})
require("lspconfig").sqlls.setup({})
--require'lspconfig'.sqls.setup{}
require("lspconfig").standardrb.setup({})
require("lspconfig").steep.setup({})
require("lspconfig").syntax_tree.setup({})
require("lspconfig").taplo.setup({})
require("lspconfig").texlab.setup({})
require("lspconfig").ttags.setup({})
require("lspconfig").typeprof.setup({})
require("lspconfig").vale_ls.setup({})
require("lspconfig").yamlls.setup({})

require("lspconfig").lua_ls.setup({
	on_init = function(client)
		local path = client.workspace_folders[1].name
		if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
			return
		end

		client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
			runtime = {
				-- Tell the language server which version of Lua you're using
				-- (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			-- Make the server aware of Neovim runtime files
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
					-- Depending on the usage, you might want to add additional paths here.
					-- "${3rd}/luv/library"
					-- "${3rd}/busted/library",
				},
				-- or pull in all of 'runtimepath'. NOTE: this is a lot slower
				-- library = vim.api.nvim_get_runtime_file("", true)
			},
		})
	end,
	settings = {
		Lua = {},
	},
})

--require'navigator'.setup({
--    lsp = {
--        format_on_save = false,
--        diagnostic_scrollbar_sign = false
--    },
--})

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.code_actions.gitrebase,
		null_ls.builtins.code_actions.gitsigns,
		null_ls.builtins.code_actions.gomodifytags,
		null_ls.builtins.code_actions.impl,
		--null_ls.builtins.code_actions.proselint,
		null_ls.builtins.formatting.styler,
		null_ls.builtins.formatting.format_r,
		null_ls.builtins.diagnostics.actionlint,
		null_ls.builtins.diagnostics.checkmake,
		null_ls.builtins.diagnostics.checkstyle,
		null_ls.builtins.diagnostics.clj_kondo,
		null_ls.builtins.diagnostics.codespell,
		null_ls.builtins.diagnostics.commitlint,
		null_ls.builtins.diagnostics.cppcheck,
		null_ls.builtins.diagnostics.fish,
		null_ls.builtins.diagnostics.gccdiag, --not in nvim-lint
		null_ls.builtins.diagnostics.gitlint,
		--null_ls.builtins.diagnostics.golangci_lint, may be redundant
		null_ls.builtins.diagnostics.hadolint,
		null_ls.builtins.diagnostics.markdownlint_cli2,
		--null_ls.builtins.diagnostics.mypy,
		null_ls.builtins.diagnostics.npm_groovy_lint,
		null_ls.builtins.diagnostics.perlimports,
		null_ls.builtins.diagnostics.pmd, --not in nvim-lint
		null_ls.builtins.diagnostics.proselint,
		null_ls.builtins.diagnostics.reek, --not in nvim-lint
		null_ls.builtins.diagnostics.revive,
		--null_ls.builtins.diagnostics.rubocop, may be redundant
		null_ls.builtins.diagnostics.selene,
		null_ls.builtins.diagnostics.semgrep, --not in nvim-lint
		null_ls.builtins.diagnostics.spectral, --not in nvim-lint
		null_ls.builtins.diagnostics.staticcheck, --not in nvim-lint
		null_ls.builtins.diagnostics.textidote, --not in nvim-lint
		null_ls.builtins.diagnostics.textlint, --not in nvim-lint
		null_ls.builtins.diagnostics.tidy, --not in nvim-lint
		null_ls.builtins.diagnostics.todo_comments,
		null_ls.builtins.diagnostics.trail_space,
		--null_ls.builtins.diagnostics.vale, maybe redundant
		null_ls.builtins.diagnostics.vint,
		null_ls.builtins.diagnostics.write_good,
		null_ls.builtins.diagnostics.yamllint,
		null_ls.builtins.diagnostics.zsh,
		null_ls.builtins.formatting.astyle,
		null_ls.builtins.formatting.bibclean, --not in conform.nvim
		null_ls.builtins.formatting.biome,
		--null_ls.builtins.formatting.blackd,
		null_ls.builtins.formatting.cbfmt,
		null_ls.builtins.formatting.clang_format,
		null_ls.builtins.formatting.cljstyle,
		null_ls.builtins.formatting.cmake_format,
		null_ls.builtins.formatting.codespell,
		null_ls.builtins.formatting.csharpier,
		null_ls.builtins.formatting.dfmt,
		null_ls.builtins.formatting.fantomas,
		null_ls.builtins.formatting.findent,
		null_ls.builtins.formatting.fish_indent,
		null_ls.builtins.formatting.fprettify,
		null_ls.builtins.formatting.gersemi,
		null_ls.builtins.formatting.gofmt,
		null_ls.builtins.formatting.gofumpt,
		null_ls.builtins.formatting.goimports,
		null_ls.builtins.formatting.goimports_reviser,
		null_ls.builtins.formatting.golines,
		null_ls.builtins.formatting.google_java_format,
		--null_ls.builtins.formatting.isortd,
        --gospel not in nvim-lint
		null_ls.builtins.formatting.joker,
		null_ls.builtins.formatting.mdformat,
		null_ls.builtins.formatting.npm_groovy_lint,
		null_ls.builtins.formatting.ocamlformat,
		null_ls.builtins.formatting.ocdc, -- not in conform.nvim
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.formatting.pyink,
        --pylama not in nvim-lint
		--null_ls.builtins.formatting.pylint,
		--null_ls.builtins.formatting.remark, fails with error not in conform.nvim
		null_ls.builtins.formatting.rstcheck, -- not in conform.nvim
		null_ls.builtins.formatting.rubyfmt,
		null_ls.builtins.formatting.rufo,
		null_ls.builtins.formatting.scalafmt,
		null_ls.builtins.formatting.shellharden,
		null_ls.builtins.formatting.shfmt,
		null_ls.builtins.formatting.sqlfluff,
		null_ls.builtins.formatting.sqlfmt,
		null_ls.builtins.formatting.sqlformat, --not in conform.nvim
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.textlint,
		null_ls.builtins.formatting.tidy,
		null_ls.builtins.formatting.treefmt, --not in conform.nvim
		null_ls.builtins.formatting.uncrustify,
		null_ls.builtins.formatting.xmllint,
		null_ls.builtins.formatting.yamlfix,
		null_ls.builtins.formatting.yamlfmt,
		--null_ls.builtins.formatting.yapf,
		null_ls.builtins.formatting.zprint,
		null_ls.builtins.hover.printenv,
		--null_ls.builtins.hover.dictionary
	},
})
