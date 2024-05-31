return {
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load()
    end,
  },
  -- {
  --   "luisiacc/gruvbox-baby",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     background_color = "medium",
  --     transparent_mode = false,
  --     cinnebt_style = "italic",
  --     keyword_style = "italic",
  --     string_style = "nocombine",
  --     function_style = "bold",
  --     variable_style = "NONE",
  --     highlights = {},
  --     color_overrides = {},
  --     use_original_palette = false,
  --   },
  -- },
}
