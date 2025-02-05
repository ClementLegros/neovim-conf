return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<C-t>",
        function() require("telescope.builtin").find_files() end,
        desc = "Find Plugin File",
      },
      {
        "<C-tg>",
        function() require("telescope.builtin").live_grep() end,
        desc = "Find with grep"
      }
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        file_ignore_patterns = { "node_modules" },
      },
      pickers = {
        find_files = {
          theme = "dropdown",
        },
      },
    },
  },
}
