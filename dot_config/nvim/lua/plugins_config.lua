-- Can this be moved with other options
vim.opt.completeopt = "menu,menuone,noinsert,noselect,preview"

vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")

require("nvim-web-devicons").setup({
    color_icons = false
})
require("symbols-outline").setup()
require("scope").setup()

require("notify").setup()
require("telescope").setup()
require("which-key").setup({
    triggers_blacklist = {
        i = {"<space>"},
        v = {"<space>"}
    }
})
require("nvim-autopairs").setup {}
require("nvim-tree").setup()

vim.cmd("highlight LineNr guibg=#f0f0f1")
