return {
	"3rd/image.nvim",
    build = false,
    opts = function(_, opts)
        setup = {
            backend = "ueberzugpp",
            processor = "magick_cli"
        }
    end
}
