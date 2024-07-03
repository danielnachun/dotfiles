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

return = {
    "mfussenegger/nvim-lint",
    opts = function(_, opts) 
        opts.linters_by_ft.c = vim.tbl_extend("force", opts.linters_by_ft.c, { "cppcheck", "cpplint" })
        opts.linters_by_ft.clojure = vim.tbl_extend("force", opts.linters_by_ft.clojure, { "clj-kondo" })
        opts.linters_by_ft.clj = vim.tbl_extend("force", opts.linters_by_ft.clj, { "joker-kondo" })
        opts.linters_by_ft.cmake = vim.tbl_extend("force", opts.linters_by_ft.cmake, { "cmakelint" })
        opts.linters_by_ft.cpp = vim.tbl_extend("force", opts.linters_by_ft.cpp, { "cppcheck", "cpplint" })
        opts.linters_by_ft.dockerfile = vim.tbl_extend("force", opts.linters_by_ft.dockerfile, { "hadolint" })
        opts.linters_by_ft.gitcommit = vim.tbl_extend("force", opts.linters_by_ft.gitcommit, { "commitlint", "gitlint" })
        opts.linters_by_ft.go = vim.tbl_extend("force", opts.linters_by_ft.go, { "revive" })
        opts.linters_by_ft.groovy = vim.tbl_extend("force", opts.linters_by_ft.groovy, { "npm-groovy-lint" })
        opts.linters_by_ft.haskell = vim.tbl_extend("force", opts.linters_by_ft.haskell, { "hlint" })
        opts.linters_by_ft.java = vim.tbl_extend("force", opts.linters_by_ft.java, { "checkstyle", "npm-groovy-lint" })
        opts.linters_by_ft.json = vim.tbl_extend("force", opts.linters_by_ft.json, { "jsonlint", "spectral" })
        opts.linters_by_ft.lua = vim.tbl_extend("force", opts.linters_by_ft.lua, { "luacheck" })
        opts.linters_by_ft.make = vim.tbl_extend("force", opts.linters_by_ft.make, { "checkmake" })
        opts.linters_by_ft.markdown = vim.tbl_extend("force", opts.linters_by_ft.markdown, { "proselint", "write-good" })
        opts.linters_by_ft.perl = vim.tbl_extend("force", opts.linters_by_ft.perl, { "perlcritic", "perlimports" })
        opts.linters_by_ft.ruby = vim.tbl_extend("force", opts.linters_by_ft.ruby, { "ruby" })
        opts.linters_by_ft.xml = vim.tbl_extend("force", opts.linters_by_ft.xml, { "tidy" })
        opts.linters_by_ft.vim = vim.tbl_extend("force", opts.linters_by_ft.vim, { "vint" })
        opts.linters_by_ft.yaml = vim.tbl_extend("force", opts.linters_by_ft.yaml, { "spectral", "yamllint" })
        opts.linters_by_ft.zsh = vim.tbl_extend("force", opts.linters_by_ft.zsh, { "zsh" })
    end
}
