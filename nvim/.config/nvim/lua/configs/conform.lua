local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    rust = { "ast-grep" }
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 3000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
