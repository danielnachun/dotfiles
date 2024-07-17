-- actionlint - yaml
-- bandit - python
-- checkpatch - patch
-- clang-tidy - c, cpp, others?
-- cspell - ?
-- dash - dash
-- dotenv-linter?
-- flake8 - python
-- flawfinder - C/C++
-- languagetool - ?
-- mypy - python
-- pmd - java
-- pycodestyle - python
-- pydocstyle - python
-- pylint - python
-- pyrpoject-flake8 - python
-- reek - ruby
-- semgrep - multi
-- staticheck - go
-- textidote
-- textlint
-- typos - ?
-- vulture - python
-- ["*"]  = { "codespell" },
-- spectral

return {
	"mfussenegger/nvim-lint",
	opts = function(_, opts)
		opts.linters_by_ft.c = vim.tbl_extend("force", opts.linters_by_ft.c or {}, { "cppcheck", "cpplint" })
		opts.linters_by_ft.clojure = vim.tbl_extend("force", opts.linters_by_ft.clojure or {}, { "clj-kondo" })
		opts.linters_by_ft.clj = vim.tbl_extend("force", opts.linters_by_ft.clj or {}, { "joker-kondo" })
		opts.linters_by_ft.cmake = vim.tbl_extend("force", opts.linters_by_ft.cmake or {}, { "cmakelint" })
		opts.linters_by_ft.cpp = vim.tbl_extend("force", opts.linters_by_ft.cpp or {}, { "cppcheck", "cpplint" })
		opts.linters_by_ft.gitcommit =
			vim.tbl_extend("force", opts.linters_by_ft.gitcommit or {}, { "commitlint", "gitlint" })
		opts.linters_by_ft.go = vim.tbl_extend("force", opts.linters_by_ft.go or {}, { "revive" })
		opts.linters_by_ft.groovy = vim.tbl_extend("force", opts.linters_by_ft.groovy or {}, { "npm-groovy-lint" })
		opts.linters_by_ft.haskell = vim.tbl_extend("force", opts.linters_by_ft.haskell or {}, { "hlint" })
		opts.linters_by_ft.java =
			vim.tbl_extend("force", opts.linters_by_ft.java or {}, { "checkstyle", "npm-groovy-lint" })
		opts.linters_by_ft.json = vim.tbl_extend("force", opts.linters_by_ft.json or {}, { "jsonlint" })
		opts.linters_by_ft.lua = vim.tbl_extend("force", opts.linters_by_ft.lua or {}, { "luacheck" })
		opts.linters_by_ft.make = vim.tbl_extend("force", opts.linters_by_ft.make or {}, { "checkmake" })
		opts.linters_by_ft.markdown =
			vim.tbl_extend("force", opts.linters_by_ft.markdown or {}, { "proselint", "write-good" })
		opts.linters_by_ft.perl =
			vim.tbl_extend("force", opts.linters_by_ft.perl or {}, { "perlcritic", "perlimports" })
		opts.linters_by_ft.ruby = vim.tbl_extend("force", opts.linters_by_ft.ruby or {}, { "ruby" })
		opts.linters_by_ft.xml = vim.tbl_extend("force", opts.linters_by_ft.xml or {}, { "tidy" })
		opts.linters_by_ft.vim = vim.tbl_extend("force", opts.linters_by_ft.vim or {}, { "vint" })
		opts.linters_by_ft.yaml = vim.tbl_extend("force", opts.linters_by_ft.yaml or {}, { "yamllint" })
		opts.linters_by_ft.zsh = vim.tbl_extend("force", opts.linters_by_ft.zsh or {}, { "zsh" })
	end,
}
