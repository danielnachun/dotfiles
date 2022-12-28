-- TODO: replace all vim.cmd invocations with native Lua commands whenever the API supports those operations.
function create_autocmd(args)
    vim.api.nvim_create_autocmd(args.event, {pattern = args.pattern, callback = args.command})
end

function set_keymap(args)
    vim.api.nvim_set_keymap(args.mode, args.shortcut, args.command, { noremap = true, silent = true })
end

function set_normal_keymap(args)
    set_keymap('n', args.shortcut, args.command)
end

function set_visual_keymap(args)
    set_keymap('v', args.shortcut, args.command)
end

-- Switch to insert mode when entering terminal buffer.
create_autocmd({
    event = {"BufWinEnter", "WinEnter"},
    pattern = "term://*",
    command = function() vim.api.nvim_command("startinsert") end
})

-- Turn on cursorline when entering terminal buffer.
create_autocmd({
    event = {"BufWinEnter", "WinEnter"},
    pattern = "term://*",
    command = function()
        vim.opt.cursorline = true 
    end
})

-- Turn off line numbers when entering terminal buffer.
create_autocmd({
    event = {"BufWinEnter", "WinEnter"},
    pattern = "term://*",
    command = function() 
        vim.opt.number = false 
    end
})

-- Switch back to previous mode when exiting terminal buffer.
create_autocmd({
    event = "BufLeave",
    pattern = "term://*",
    command = function()
        vim.api.nvim_command("stopinsert")
    end
})

-- Turn on cursorline when entering terminal buffer.
create_autocmd({
    event = "BufLeave",
    pattern = "term://*",
    command = function()
        vim.opt.cursorline = false 
    end
})

-- Automatically switch to directory of file that is being edited.
create_autocmd({
    event = {"BufEnter", "WinEnter"},
    pattern = "*",
    command = function()
        vim.api.nvim_command("silent! :lcd%:p:h")
    end
})

-- Resize the terminal buffer to 18 lines when it is opened.
create_autocmd({
    event = "TermOpen",
    pattern = "*",
    command = function()
        vim.api.nvim_command("resize 18")
    end
})

-- Turn off line numbers in terminal buffer when it is opened.
create_autocmd({
    event = "TermOpen",
    pattern = "*",
    command = function() 
        vim.opt.number = false 
    end
})

create_autocmd({
    event = "OptionSet",
    pattern = "guicursor",
    command = function()
        vim.api.nvim_command("noautocmd set guicursor=")
    end
})

create_autocmd({
    event = "BufWritePost",
    pattern = "$HOME/.local/share/chezmoi/*",
    command = "! chezmoi apply --source-path \"%\""
})

create_autocmd({
    event = {"BufNewFile", "BufRead"},
    pattern = "*",
    command = function() vim.diagnostic.disable() end
})

-- Minimap
create_autocmd({
    event = "ColorScheme",
    pattern = "*",
    command = function() 
        vim.api.nvim_command("highlight minimapCursor ctermbg=59 ctermfg=228 guibg=#5F5F5F guifg=#FFFF87")
    end
})

create_autocmd({
    event = "ColorScheme",
    pattern = "*",
    command = function()
        vim.api.nvim_command("highlight minimapRange ctermbg=242 ctermfg=228 guibg=#4F4F4F guifg=#FFFF87")
    end
})

create_autocmd({
    event = "FileType",
    pattern = "r",
    command = function() 
        set_visual_keymap({
            shortcut = "<Space>",
            command = "<Plug>RDSendSelection"
        })
    end
})

create_autocmd({
    event = "FileType",
    pattern = "r",
    command = function() 
        set_normal_keymap({
            shortcut = "<Space>",
            command = "<Plug>RDSendLine"
        })
    end
})

create_autocmd({
    event = "FileType",
    pattern = "r",
    command = function() 
        set_normal_keymap({
            shortcut = "<LocalLeader>rk",
            command = ":call RAction(\"levels\")<CR>"
        })
    end
})

create_autocmd({
    event = "FileType",
    pattern = "r",
    command = function() 
        set_normal_keymap({
            shortcut = "<LocalLeader>t",
            command = ":call RAction(\"tail\")<CR>"
        })
    end
})

create_autocmd({
    event = "FileType",
    pattern = "r",
    command = function() 
        set_normal_keymap({
            shortcut = "<LocalLeader>h",
            command = ":call RAction(\"head\")<CR>"
        })
    end
})

create_autocmd({
    event = "FileType",
    pattern = "r",
    command = function() 
        set_normal_keymap({
            shortcut = "<LocalLeader>p",
            command = ":call RAction(\"print\")<CR>"
        })
    end
})

create_autocmd({
    event = "FileType",
    pattern = "r",
    command = function() 
        set_normal_keymap({
            shortcut = "<LocalLeader>d",
            command = ":call RAction(\"dim\")<CR>"
        })
    end
})

create_autocmd({
    event = "FileType",
    pattern = "r",
    command = function() 
        command = set_normal_keymap({
            shortcut = "<LocalLeader>s",
            command = ":call RAction(\"str\")<CR>"
        })
    end
})

-- Color overrides
create_autocmd({
    event = "ColorScheme",
    pattern = "*",
    command = function()
        vim.api.nvim_command("highlight LineNr guibg=#f0f0f1")
    end
})
