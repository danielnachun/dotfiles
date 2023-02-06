local iron = require("iron.core")
local view = require("iron.view")

iron.setup {
    config = {
        scratch_repl = false,
        repl_definition = {
            sh = {
                command = {"zsh"},
                format = bracketed_paste
            },
            python = require("iron.fts.python").ptipython
        },
        --repl_open_cmd = require('iron.view').bottom(40),
        repl_open_cmd = view.split.belowright(50)
    },
    keymaps = {
        visual_send = "<space>",
        send_line = "<space>",
        exit = "<leader>q"
    }
}
