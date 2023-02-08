function set_keymap(args)
    vim.api.nvim_set_keymap(args.mode, args.shortcut, args.command, { noremap = true, silent = true })
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

function set_var(args)
    vim.api.nvim_set_var(args.variable, args.value)
end

set_var({
    variable = "mapleader",
    value = ","
})

set_var({
    variable = "maplocalleader",
    value = ","
})

set_keymap({
    mode = "",
    shortcut = "<C-J>",
    command = "<C-W>j"
})

set_keymap({
    mode = "",
    shortcut = "<C-K>",
    command = "<C-W>k"
})

set_keymap({
    mode = "",
    shortcut = "<C-H>",
    command = "<C-W>h"
})

set_keymap({
    mode = "",
    shortcut = "<C-L>",
    command = "<C-W>l"
})

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

-- Fugitive
set_keymap ({
    mode = "",
    shortcut = "<leader>vv",
    command = ":Gcommit -a -m \"HEAD\"<CR> :Gpush -q<CR>"
})

-- NvimTree
set_keymap({
    mode = "",
    shortcut = "<leader>n",
    command = ":NvimTreeToggle<CR>"
})

-- Telescope
set_normal_keymap({
    shortcut = "<C-P>",
    command = ":Telescope oldfiles<CR>"
})

-- Trouble
set_keymap({
    mode = "",
    shortcut = "<leader>tt",
    command = ":TroubleToggle<CR>"
})
