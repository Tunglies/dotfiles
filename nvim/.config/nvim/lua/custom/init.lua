return {
  -- {
  --   "sidebar-nvim/sidebar.nvim",
  --   lazy = false,
  --   opts = {
  --     open = false,
  --     sections = { "diagnostics", "symbols", "git" },
  --     todos = { ignored_paths = { "~" } },
  --   },
  -- },
  -- {
  --   "chomosuke/typst-preview.nvim",
  --   version = "0.3.*",
  --   build = function()
  --     require('typst-preview').update()
  --   end
  -- },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  }
}
