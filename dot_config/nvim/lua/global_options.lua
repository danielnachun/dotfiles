--Basic settings
vim.opt.guicursor = ""
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.showcmd = true
vim.opt.number = true
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.autoindent = true
vim.opt.formatoptions = "c,q,r,t"
vim.opt.ruler = true
vim.opt.wrapscan = true
vim.opt.mouse = "a"
vim.opt.hidden = true
vim.opt.laststatus = 2
vim.opt.encoding = "utf-8"
--vim.opt.termencoding = "utf-8"
vim.opt.equalalways = false
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
vim.opt.showmode = false
vim.opt.ffs = "unix,dos,mac"
vim.opt.foldmethod = "syntax"
vim.opt.foldlevel = 99
vim.opt.termguicolors = true
vim.o.shortmess = vim.o.shortmess .. "c"
vim.opt.cursorline = true
vim.opt.mousemoveevent = true
--set autochdir
--set winminheight=20

--What were these for?
--set statusline+=%#warningmsg#
--set statusline+=%*
