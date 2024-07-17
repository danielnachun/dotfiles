return {
	"neovim/nvim-lspconfig",
	opts = {
		autoformat = false,
		servers = {
			autotools_ls = {},
			awk_ls = {},
			azure_pipelines_ls = {},
			clojure_lsp = {},
			--cmake = {},
			digestif = {},
			dockerls = {},
			dprint = {},
			-- erg = {},
			esbonio = {},
			fortls = {},
			fsautocomplete = {},
			golangci_lint_ls = {},
			harper_ls = {},
			--jedi_language_server = {},
			jqls = {},
			jsonnet_ls = {},
			lemminx = {},
			ltex = {}, --compare to texlab
			-- luau = {},
			marksman = {},
			mesonlsp = {},
			ocamllsp = {},
			--perlls = {}, compare to perlpls
			perlpls = {},
			-- prosemd = {},
			pylyzer = {},
			remark_ls = {},
			--rubocop = {}, probably handled by solargraph
			--rust_analyzer = {}, handeld by rustacean?
			serve_d = {},
			-- spectral = {},  missing package
			sqlls = {},
			--standardrb = {}, handled by solargraph?
			steep = {},
			syntax_tree = {},
			ttags = {},
			typeprof = {},
			vale_ls = {},
		},
	},
}
