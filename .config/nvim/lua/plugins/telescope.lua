return {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        pickers = {
            find_files = {
                hidden = true
            },
            grep_string = {
                additional_args = {"--hidden"}
            },
            live_grep = {
                additional_args = {"--hidden"}
            },
        },
      },
    },
}