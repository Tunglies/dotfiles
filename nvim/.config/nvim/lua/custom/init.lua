return {
  {
    "sidebar-nvim/sidebar.nvim",
    lazy = false,
    opts = {
      open = false,
      sections = { "diagnostics", "symbols", "git" },
      todos = { ignored_paths = { "~" } },
    },
  },
  {
    "chomosuke/typst-preview.nvim",
    version = "0.3.*",
    build = function()
      require('typst-preview').update()
    end
  }
}
