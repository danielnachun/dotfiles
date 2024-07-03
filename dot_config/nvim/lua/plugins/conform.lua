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
        opts.formatters_by_ft.awk = vim.tbl_extend("force", opts.formatters_by_ft.awk, { "awk" })
        opts.formatters_by_ft.c = vim.tbl_extend("force", opts.formatters_by_ft.c, { "astyle", "clang-format", "indent", "uncrustify" })
        opts.formatters_by_ft.cabal = vim.tbl_extend("force", opts.formatters_by_ft.cabal, { "cabal_fmt" })
        opts.formatters_by_ft.clj = vim.tbl_extend("force", opts.formatters_by_ft.clj, { "joker" })
        opts.formatters_by_ft.clojure = vim.tbl_extend("force", opts.formatters_by_ft.clojure, { "cljstyle", "zprint" })
        opts.formatters_by_ft.cmake = vim.tbl_extend("force", opts.formatters_by_ft.cmake, { "gersemi" })
        opts.formatters_by_ft.cpp = vim.tbl_extend("force", opts.formatters_by_ft.cpp, { "astyle", "clang-format", "uncrustify" })
        opts.formatters_by_ft.cs = vim.tbl_extend("force", opts.formatters_by_ft.cs, { "astyle", "clang-format", "uncrustify" })
        opts.formatters_by_ft.d = vim.tbl_extend("force", opts.formatters_by_ft.d, { "dfmt" })
        opts.formatters_by_ft.fortran vim.tbl_extend("force", opts.formatters_by_ft.fortran, { "findent", "fprettify" })
        opts.formatters_by_ft.fsharp vim.tbl_extend("force", opts.formatters_by_ft.fsharp, { "fantomas" })
        opts.formatters_by_ft.groovy vim.tbl_extend("force", opts.formatters_by_ft.groovy, { "npm_groovy_lint" })
        opts.formatters_by_ft.go vim.tbl_extend("force", opts.formatters_by_ft.go, { "goimports_reviser", "golines" })
        opts.formatters_by_ft.haskell vim.tbl_extend("force", opts.formatters_by_ft.haskell, { "hindent", "stylish-haskell" })
        opts.formatters_by_ft.java vim.tbl_extend("force", opts.formatters_by_ft.java, { "astyle", "clang-format", "google-java-format", "npm_groovy_lint", "uncrustify" })
        opts.formatters_by_ft.json vim.tbl_extend("force", opts.formatters_by_ft.json, { "biome", "fixjson", "jq" })
        opts.formatters_by_ft.jsonc vim.tbl_extend("force", opts.formatters_by_ft.jsonc, { "biome" })
        opts.formatters_by_ft.jsonnet vim.tbl_extend("force", opts.formatters_by_ft.jsonnet, { "jsonnetfmt" })
        opts.formatters_by_ft.lua vim.tbl_extend("force", opts.formatters_by_ft.lua, { "lua-format" })
        opts.formatters_by_ft.markdown vim.tbl_extend("force", opts.formatters_by_ft.markdown, { "cbfmt", "mdformat", "mdsf", "textlint" })
        opts.formatters_by_ft.ocaml vim.tbl_extend("force", opts.formatters_by_ft.ocaml, { "ocamlformat", "ocp-indent" })
        opts.formatters_by_ft.org vim.tbl_extend("force", opts.formatters_by_ft.org, { "cbfmt" })
        opts.formatters_by_ft.perl vim.tbl_extend("force", opts.formatters_by_ft.perl, { "perlimports", "perltidy" })
        opts.formatters_by_ft.r vim.tbl_extend("force", opts.formatters_by_ft.r, { "format_r", "styler" })
        opts.formatters_by_ft.ruby vim.tbl_extend("force", opts.formatters_by_ft.ruby, { "rufo", "rubyfmt" })
        opts.formatters_by_ft.rust vim.tbl_extend("force", opts.formatters_by_ft.rust, { "rustfmt" })
        opts.formatters_by_ft.scala vim.tbl_extend("force", opts.formatters_by_ft.scala, { "scalafmt" })
        opts.formatters_by_ft.sh vim.tbl_extend("force", opts.formatters_by_ft.sh, { "beautysh", "shellharden" })
        opts.formatters_by_ft.sql vim.tbl_extend("force", opts.formatters_by_ft.sql, { "sqlfmt" })
        opts.formatters_by_ft.txt vim.tbl_extend("force", opts.formatters_by_ft.txt, { "textlint" })
        opts.formatters_by_ft.xml vim.tbl_extend("force", opts.formatters_by_ft.xml, { "tidy", "xmlformat", "xmllint" })
        opts.formatters_by_ft.yaml vim.tbl_extend("force", opts.formatters_by_ft.yaml, { "yamlfix", "yamlfmt", "yq" })
    end
} 
