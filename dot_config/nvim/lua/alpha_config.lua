local startify = require'alpha.themes.startify'
local section = startify.section
local mru = startify.mru
section.mru.val = {
    { type = "padding", val = 1 },
    { type = "text", val = "MRU", opts = { hl = "SpecialComment" } },
    { type = "padding", val = 1 },
    {
        type = "group",
        val = function()
            return { mru(0) }
        end,
    },
}
section.mru_cwd.val = {
    { type = "padding", val = 1 },
    { type = "text", val = "MRU " .. vim.fn.getcwd(), opts = { hl = "SpecialComment", shrink_margin = false } },
    { type = "padding", val = 1 },
    {
        type = "group",
        val = function()
            return { mru(10, vim.fn.getcwd()) }
        end,
        opts = { shrink_margin = false },
    },
}
startify.config.layout = {
    { type = "padding", val = 1 },
    section.header,
    { type = "padding", val = 2 },
    section.top_buttons,
    section.mru,
    section.mru_cwd,
    { type = "padding", val = 1 },
    section.bottom_buttons,
    section.footer,
}

require("alpha").setup(startify.config)
