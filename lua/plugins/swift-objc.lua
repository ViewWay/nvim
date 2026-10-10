-- Swift / Objective-C 支持
-- Swift LSP 用 Xcode 自带的 sourcekit-lsp(/usr/bin 有 shim,不经过 Mason)
-- Objective-C(.m/.mm)由 clangd 原生支持,补 treesitter 解析器即可
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sourcekit = {
          filetypes = { "swift", "objc", "objcpp" },
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "swift", "objc" },
    },
  },
}
