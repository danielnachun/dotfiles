return {
	"neovim/nvim-lspconfig",
	opts = {
		autoformat = false,
		servers = {
            capabilities = {
                workspace = {
                    semanticTokensProvider = nil
                }
            },
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
			-- harper_ls = {},
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
			-- remark_ls = {},
			--rubocop = {}, probably handled by solargraph
			--rust_analyzer = {}, handeld by rustacean?
			serve_d = {},
			spectral = {},
			sqlls = {},
			--standardrb = {}, handled by solargraph?
			steep = {},
			syntax_tree = {},
			ttags = {},
			typeprof = {},
			vale_ls = {},
            yamlls = {
                settings = {
                    yaml = {
                        schemas = require('schemastore').yaml.schemas {
                            extra = {
                                {
                                    description = "Rattler build schema",
                                    fileMatch = "recipe.yaml",
                                    name = "recipe.yaml",
                                    url = "https://raw.githubusercontent.com/prefix-dev/recipe-format/main/schema.json"
                                }
                            }
                        }
                    }
                }
            }
		}
	}
}
