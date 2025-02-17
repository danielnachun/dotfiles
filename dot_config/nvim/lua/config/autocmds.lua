-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

function create_autocmd(args)
	vim.api.nvim_create_autocmd(args.event, { pattern = args.pattern, callback = args.command })
end

-- Switch to insert mode, hide cursor line and line numbers when entering terminal buffer.
create_autocmd({
	event = { "BufWinEnter", "WinEnter" },
	pattern = "term://*",
	command = function()
		vim.api.nvim_command("startinsert")
	end,
})

-- Switch back to previous mode and re-enable cursorline when exiting terminal buffer.
create_autocmd({
	event = "BufLeave",
	pattern = "term://*",
	command = function()
		vim.api.nvim_command("stopinsert")
	end,
})

-- Automatically switch to directory of file that is being edited.
create_autocmd({
	event = { "BufEnter", "WinEnter" },
	pattern = "*",
	command = function()
		vim.api.nvim_command("silent! :lcd%:p:h")
	end,
})

-- Actualy disable tree-sitter for R
create_autocmd({
	event = { "BufEnter", "WinEnter" },
	pattern = "*.R",
	command = function()
		vim.api.nvim_command("TSDisable highlight")
	end,
})

-- Actualy disable tree-sitter for Python
create_autocmd({
	event = { "BufEnter", "WinEnter" },
	pattern = "*.py",
	command = function()
		vim.api.nvim_command("TSDisable highlight")
	end,
})

-- Actualy disable tree-sitter for Python
create_autocmd({
	event = { "BufEnter", "WinEnter" },
	pattern = "*.rb",
	command = function()
		vim.api.nvim_command("TSDisable highlight")
	end,
})

-- Switch back to previous mode and re-enable cursorline when exiting terminal buffer.
create_autocmd({
	event = { "BufEnter", "WinEnter"},
	pattern = "*(help)",
	command = function()
		vim.api.nvim_command("vertical resize 80")
	end,
})

-- Resize the terminal buffer to 18 lines when it is opened.
create_autocmd({
	event = "TermOpen",
	pattern = "*",
	command = function()
		vim.api.nvim_command("resize 18")
		vim.opt.number = false
		vim.opt.cursorline = false
		vim.opt.signcolumn = "no"
	end,
})

create_autocmd({
	event = "OptionSet",
	pattern = "guicursor",
	command = function()
		vim.api.nvim_command("noautocmd set guicursor=")
	end,
})

create_autocmd({
	event = "BufWritePost",
	pattern = "$HOME/.local/share/chezmoi/*",
	command = '! chezmoi apply --source-path "%"',
})

create_autocmd({
	event = { "BufNewFile", "BufRead" },
	pattern = "*",
	command = function()
		vim.diagnostic.disable()
	end,
})

-- Minimap
create_autocmd({
	event = "ColorScheme",
	pattern = "*",
	command = function()
		vim.api.nvim_command("highlight minimapCursor ctermbg=59 ctermfg=228 guibg=#5F5F5F guifg=#FFFF87")
	end,
})

create_autocmd({
	event = "ColorScheme",
	pattern = "*",
	command = function()
		vim.api.nvim_command("highlight minimapRange ctermbg=242 ctermfg=228 guibg=#4F4F4F guifg=#FFFF87")
	end,
})

-- -- Color overrides
-- create_autocmd({
--     event = "ColorScheme",
--     pattern = "*",
--     command = function()
--         vim.api.nvim_command("highlight LineNr guibg=#f0f0f1")
--     end
-- })
