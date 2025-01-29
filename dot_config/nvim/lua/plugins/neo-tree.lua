return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        event_handlers = {
            {
                event = "neo_tree_window_after_close",
                handler = function(args)
                    vim.cmd("wincmd =")
                end
            },
            {
                event = "before_render",
                handler = function(args)
                    vim.cmd("wincmd =")
                end
            },
        }
    }
}
