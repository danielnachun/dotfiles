return {
    "folke/snacks.nvim",
    opts = {
        dashboard = {
            sections = {
                -- { section = "terminal", cmd = "fortune -s | cowsay", hl = "header", padding = 1, indent = 8 },
                { section = "header"},
                { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 2, limit = 10 },
                { section = "keys", gap = 1, padding = 1},
                -- { icon = " ", title = "Recent Files (current working directory)", section = "recent_files", cwd = true, indent = 2, padding = 1, limit = 10 },
                { section = "startup"},
            },
        },
    }
}
