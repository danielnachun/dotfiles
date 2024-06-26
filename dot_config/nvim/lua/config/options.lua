-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
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

function set_keymap(args)
  vim.api.nvim_set_keymap(args.mode, args.shortcut, args.command, { noremap = true, silent = true })
end

function set_normal_keymap(args)
  set_keymap({ mode = "n", shortcut = args.shortcut, command = args.command })
end

function set_visual_keymap(args)
  set_keymap({ mode = "v", shortcut = args.shortcut, command = args.command })
end

function set_terminal_keymap(args)
  set_keymap({ mode = "t", shortcut = args.shortcut, command = args.command })
end

function set_var(args)
  vim.api.nvim_set_var(args.variable, args.value)
end

set_var({
  variable = "mapleader",
  value = ",",
})

set_var({
  variable = "maplocalleader",
  value = ",",
})
