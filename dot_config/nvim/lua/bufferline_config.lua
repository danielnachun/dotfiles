require("bufferline").setup({
    options = {
        separator_style = "slant",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            },
            {
                filetype = "neo-tree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            }   
        }
    }
})

