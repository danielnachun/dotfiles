-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
-- opt.signcolumn = "no"
opt.guicursor = ""
opt.tabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.showcmd = true
opt.showmatch = true --needed?
opt.autoindent = true
opt.ruler = true
opt.wrapscan = true
opt.hidden = true
opt.encoding = "utf-8"
opt.equalalways = false
opt.ttimeoutlen = 0
opt.relativenumber = false
--opt.ffs = "unix,dos,mac"
opt.mousemoveevent = true
opt.wrap = true

function set_var(args)
	vim.api.nvim_set_var(args.variable, args.value)
end
vim.g.autoformat = false
vim.g.snacks_animate = false
vim.b.autoformat = false
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_ruby_lsp = "solargraph"

set_var({
	variable = "mapleader",
	value = ",",
})

set_var({
	variable = "maplocalleader",
	value = ",",
})

-- Vimtex
-- Use NeoVim remote to allow feedback about errors
set_var({
	variable = "vimtex_compiler_progname",
	value = "nvr",
})

-- Auto fold
set_var({
	variable = "vimtex_fold_enabled",
	value = 1,
})

set_var({
	variable = "vimtex_view_method",
	value = "skim",
})

set_var({
	variable = "vimtex_syntax_conceal_disable",
	value = 1,
})

-- fix me!
--let g:vimtex_compiler_latexmk = {
--\ 'backend' : 'nvim',
--\}

set_var({
	variable = "tex_flavor",
	value = "latex",
})

-- require ('lspconfig').util.default_config.on_init = function(client, _)
--   client.server_capabilities.semanticTokensProvider = nil
-- end
