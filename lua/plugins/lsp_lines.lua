return {
  {
    "ErichDonGubler/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup({
        virtual_text = false,
        virtual_lines = true,
        only_current_line = false,
        highlight_whole_line = false
      })
      
      -- Disable by default (toggle with <leader>l)
      vim.diagnostic.config({
        virtual_lines = false,
      })
    end,
    keys = {
      {
        "<leader>l",
        function()
          local virtual_lines_enabled = not vim.diagnostic.config().virtual_lines
          vim.diagnostic.config({ virtual_lines = virtual_lines_enabled })
        end,
        desc = "Toggle LSP Lines"
      },
    }
  }
}
