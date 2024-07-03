-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

function set_keymap(args)
    vim.keymap.set(args.mode, args.shortcut, args.command, { noremap = true, silent = true })
end

function set_normal_keymap(args)
    set_keymap({mode = 'n', shortcut = args.shortcut, command = args.command})
end

function set_visual_keymap(args)
    set_keymap({mode = 'v', shortcut = args.shortcut, command = args.command})
end

function set_terminal_keymap(args)
    set_keymap({mode = 't', shortcut = args.shortcut, command = args.command})
end

set_terminal_keymap({
    mode = "",
    shortcut = "<C-J>",
    command = [[<C-\><C-n><C-W>j]]
})

set_terminal_keymap({
    mode = "",
    shortcut = "<C-K>",
    command = [[<C-\><C-n><C-W>k]]
})

set_terminal_keymap({
    mode = "",
    shortcut = "<C-H>",
    command = [[<C-\><C-n><C-W>h"]]
})

set_terminal_keymap({
    mode = "",
    shortcut = "<C-L>",
    command = [[<C-\><C-n><C-W>l]]
})

set_terminal_keymap({
    mode = "",
    shortcut = "<Esc>",
    command = [[<C-\><C-n>]]
})

set_normal_keymap({
    shortcut = '<leader>s', 
    command = ':IronRepl<cr>'
})

-- Telescope
set_normal_keymap({
    shortcut = "<C-P>",
    command = ":Telescope oldfiles<CR>"
})
