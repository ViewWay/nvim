-- HTML / CSS 独立文件的 LSP 支持
-- (JS/TS/Vue 由 lang.typescript 和 lang.vue extras 提供)
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "html-lsp",
        "css-lsp",
      },
    },
  },
}
