local function cmd(command)
  return table.concat({ "<Cmd>", command, "<CR>" })
end

local keys_table = {
  -- local a = table.pack(10,20,30)
  -- for _, v in pairs(a) do print(v) end

  -- vim.keymap.set('n', '<C-w>z', cmd 'WindowsMaximize')
  {
    "<leader>m",
    cmd("WindowsMaximize"),
    desc = "Windows Maximize",
  },
  -- vim.keymap.set(
  --   'n', '<C-w>_', cmd 'WindowsMaximizeVertically'
  -- )
  {
    "<leader>mv",
    cmd("WindowsMaximizeVertically"),
    desc = "Windows Maximize Vertically",
  },
  -- vim.keymap.set(
  --   'n', '<C-w>|', cmd 'WindowsMaximizeHorizontally'
  -- )
  {
    "<leader>mh",
    cmd("WindowsMaximizeHorizontally"),
    desc = "Windows Maximize Horizontally",
  },
  {
    "<leader>=",
    cmd("WindowsEqualize"),
    desc = "Windows Equalize",
  },

  -- myTable = {}
  -- table.insert(myTable, 'Lua')
  -- table.insert(myTable, 'value')
}

return {
  {
    "anuvyklack/windows.nvim",
    dependencies = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim",
    },
    keys = keys_table,
    config = function()
      vim.o.winwidth = 10
      vim.o.winminwidth = 10
      vim.o.equalalways = false
      require("windows").setup()
    end,
  },
}
