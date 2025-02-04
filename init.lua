-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").omnisharp.setup({

  -- OMNISHARP
  cmd = { "C:\\Users\\cl0cb4el\\omnisharp-win-x64\\OmniSharp.exe", "--languageserver", "--hostPID", tostring(pid) },
  enable_editorconfig_support = true,
  enable_ms_build_load_projects_on_demand = false,
  enable_roslyn_analyzers = true,
  organize_imports_on_format = false,
  enable_import_completion = true,
  sdk_include_prereleases = true,
  analyze_open_documents_only = false,
})
