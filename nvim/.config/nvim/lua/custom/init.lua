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
}
