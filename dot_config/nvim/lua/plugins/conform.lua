-- ast-grep - multi
-- auto_optional - python
-- autoflake - python
-- autopep8 - python
-- bibclean - bibtex
-- bibtex-tidy - bibtex
-- blackd - python
-- blue - python
-- cmake_format - cmake
-- docformatter - python
-- docstrfmt - python
-- dprint - multi
-- format-queries - treesitter?
-- fourmolu - setup with hls
-- injected - treesitter?
-- isortd - python
-- mdslw - markdown
-- ocdc - markdown
-- prettierd? - multi
-- pg_format - postgresql
-- pyink - python
-- pylint - python
-- reorder-python-imports
-- rstcheck - rst
-- rstfmt - rst
-- ruff_fix
-- ruff_format
-- ruff_organize_imports
-- sqlformat - sql
-- snakefmt - ?
-- squeeze_blanks - ?
-- treefmt - ruby
-- trim_newlines - ?
-- trim_whitespace - ?
-- typos - - ?
-- yapf - python
-- ["*"] = { "codespell" },

return {
	"stevearc/conform.nvim",
	opts = function(_, opts)
		setup = {
			format_on_save = function(bufnr)
				return
			end,
			format_after_save = function(bufnr)
				return
			end,
		}
		opts.formatters_by_ft.awk = vim.tbl_extend("force", opts.formatters_by_ft.awk or {}, { "awk" })
		opts.formatters_by_ft.c =
			vim.tbl_extend("force", opts.formatters_by_ft.c or {}, { "astyle", "clang-format", "indent", "uncrustify" })
		opts.formatters_by_ft.cabal = vim.tbl_extend("force", opts.formatters_by_ft.cabal or {}, { "cabal_fmt" })
		opts.formatters_by_ft.clj = vim.tbl_extend("force", opts.formatters_by_ft.clj or {}, { "joker" })
		opts.formatters_by_ft.clojure =
			vim.tbl_extend("force", opts.formatters_by_ft.clojure or {}, { "cljstyle", "zprint" })
		opts.formatters_by_ft.cmake = vim.tbl_extend("force", opts.formatters_by_ft.cmake or {}, { "gersemi" })
		opts.formatters_by_ft.cpp =
			vim.tbl_extend("force", opts.formatters_by_ft.cpp or {}, { "astyle", "clang-format", "uncrustify" })
		opts.formatters_by_ft.cs =
			vim.tbl_extend("force", opts.formatters_by_ft.cs or {}, { "astyle", "clang-format", "uncrustify" })
		opts.formatters_by_ft.d = vim.tbl_extend("force", opts.formatters_by_ft.d or {}, { "dfmt" })
		opts.formatters_by_ft.fortran =
			vim.tbl_extend("force", opts.formatters_by_ft.fortran or {}, { "findent", "fprettify" })
		opts.formatters_by_ft.fsharp = vim.tbl_extend("force", opts.formatters_by_ft.fsharp or {}, { "fantomas" })
		opts.formatters_by_ft.groovy =
			vim.tbl_extend("force", opts.formatters_by_ft.groovy or {}, { "npm_groovy_lint" })
		opts.formatters_by_ft.go =
			vim.tbl_extend("force", opts.formatters_by_ft.go or {}, { "goimports_reviser", "golines" })
		opts.formatters_by_ft.haskell =
			vim.tbl_extend("force", opts.formatters_by_ft.haskell or {}, { "hindent", "stylish-haskell" })
		opts.formatters_by_ft.java = vim.tbl_extend(
			"force",
			opts.formatters_by_ft.java or {},
			{ "astyle", "clang-format", "google-java-format", "npm_groovy_lint", "uncrustify" }
		)
		opts.formatters_by_ft.json =
			vim.tbl_extend("force", opts.formatters_by_ft.json or {}, { "biome", "fixjson", "jq" })
		opts.formatters_by_ft.jsonc = vim.tbl_extend("force", opts.formatters_by_ft.jsonc or {}, { "biome" })
		opts.formatters_by_ft.jsonnet = vim.tbl_extend("force", opts.formatters_by_ft.jsonnet or {}, { "jsonnetfmt" })
		opts.formatters_by_ft.lua = vim.tbl_extend("force", opts.formatters_by_ft.lua or {}, { "lua-format" })
		opts.formatters_by_ft.markdown =
			vim.tbl_extend("force", opts.formatters_by_ft.markdown or {}, { "cbfmt", "mdformat", "mdsf", "textlint" })
		opts.formatters_by_ft.ocaml =
			vim.tbl_extend("force", opts.formatters_by_ft.ocaml or {}, { "ocamlformat", "ocp-indent" })
		opts.formatters_by_ft.org = vim.tbl_extend("force", opts.formatters_by_ft.org or {}, { "cbfmt" })
		opts.formatters_by_ft.perl =
			vim.tbl_extend("force", opts.formatters_by_ft.perl or {}, { "perlimports", "perltidy" })
		opts.formatters_by_ft.r = vim.tbl_extend("force", opts.formatters_by_ft.r or {}, { "format_r", "styler" })
		opts.formatters_by_ft.ruby = vim.tbl_extend("force", opts.formatters_by_ft.ruby or {}, { "rufo", "rubyfmt" })
		opts.formatters_by_ft.rust = vim.tbl_extend("force", opts.formatters_by_ft.rust or {}, { "rustfmt" })
		opts.formatters_by_ft.scala = vim.tbl_extend("force", opts.formatters_by_ft.scala or {}, { "scalafmt" })
		opts.formatters_by_ft.sh =
			vim.tbl_extend("force", opts.formatters_by_ft.sh or {}, { "beautysh", "shellharden" })
		opts.formatters_by_ft.sql = vim.tbl_extend("force", opts.formatters_by_ft.sql or {}, { "sqlfmt" })
		opts.formatters_by_ft.txt = vim.tbl_extend("force", opts.formatters_by_ft.txt or {}, { "textlint" })
		opts.formatters_by_ft.xml =
			vim.tbl_extend("force", opts.formatters_by_ft.xml or {}, { "tidy", "xmlformat", "xmllint" })
		opts.formatters_by_ft.yaml =
			vim.tbl_extend("force", opts.formatters_by_ft.yaml or {}, { "yamlfix", "yamlfmt", "yq" })
	end,
}
