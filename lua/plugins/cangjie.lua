-- 仓颉 (Cangjie) 语言支持:基于本地 SDK (~/cangjie) + 社区 LSP 插件
-- 插件会自动下载 cangjie-lsp-wrapper,并注册 .cj 文件类型与 LSP
return {
  {
    "https://gitcode.com/ystyle/cangjie-nvim",
    name = "cangjie-nvim", -- 显式命名,避免 lazy 把 URL 路径当成目录
    opts = {
      auto_install = true, -- 首次启动自动下载 cangjie-lsp-wrapper
    },
    init = function()
      -- 即使 nvim 从 GUI 启动拿不到 shell 环境变量,也保证 SDK 可见
      vim.env.CANGJIE_HOME = vim.env.CANGJIE_HOME or vim.fn.expand("~/cangjie")
    end,
  },
}
