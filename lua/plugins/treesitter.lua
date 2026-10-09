-- Treesitter 额外解析器:INI 配置文件语法高亮
-- (INI 没有专用 LSP,高亮由 treesitter 提供)
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "ini",
      "vue",
      "css",
    },
  },
}
