return {
    "R-nvim/R.nvim",
    opts = {
        nvimpager = "split_h",
        rconsole_width = 0,
        Rout_more_colors = true,
        esc_term = false,
        hl_term = false,
        hook = {
            on_filetype = function ()
                vim.api.nvim_buf_set_keymap(0, "v", "<Space>", "<Plug>RDSendSelection", {})
                vim.api.nvim_buf_set_keymap(0, "n", "<Space>", "<Plug>RDSendLine", {})
                vim.api.nvim_buf_set_keymap(0, "n", "<LocalLeader>rk", "<Cmd>lua require('r.run').action('levels')<CR>", {})
                vim.api.nvim_buf_set_keymap(0, "n", "<LocalLeader>t", "<Cmd>lua require('r.run').action('tail')<CR>", {})
                vim.api.nvim_buf_set_keymap(0, "n", "<LocalLeader>h", "<Cmd>lua require('r.run').action('head')<CR>", {})
                vim.api.nvim_buf_set_keymap(0, "n", "<LocalLeader>p", "<Cmd>lua require('r.run').action('print')<CR>", {})
                vim.api.nvim_buf_set_keymap(0, "n", "<LocalLeader>d", "<Cmd>lua require('r.run').action('dim')<CR>", {})
                vim.api.nvim_buf_set_keymap(0, "n", "<LocalLeader>s", "<Cmd>lua require('r.run').action('str')<CR>", {})
            end
        },
    },
}
