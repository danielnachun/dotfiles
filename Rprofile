options(repos = structure(c(CRAN = "http://cran.rstudio.com/")))
options(languageserver.server_capabilities = list(completionProvider = FALSE, signatureHelpProvider = FALSE,
    completionItemResolve = FALSE))
.libPaths("~/micromamba/envs/r/lib/R/library")

if (interactive()) {
    options(colorout.verbose = 1L,
            nvimcom.verbose = 1L,
            help_type = "text",
            editor = "nvim",
            width = 200L,
            menu.graphics = FALSE,
            save.defaults = list(compress = FALSE),
            prompt = " ",
            radian.prompt = " ",
            radian.color_scheme = "colorful")

    # syntax highlighting
    library(colorout)
    if (!Sys.getenv("TERM") %in% c("", "linux")) {
        setOutputColors(normal = 145L,
                        number = 12L,
                        negnum = 9L,
                        string = 10L,
                        const = 13L,
                        stderror = 120L,
                        error = c(1L, 0L, 1L),
                        warn = 5L,
                        verbose = FALSE)
    }
}
