-- Markdown 增强(lang.markdown extra):markdownlint + markdown-toc + 浏览器实时预览
-- 预览命令::MarkdownPreview 打开 :MarkdownPreviewStop 关闭
-- 注:系统未装 npm 的 prettier(只有 prettierd),这里把 md 格式化链换成 prettierd
return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        markdown = { "prettierd", "markdownlint-cli2", "markdown-toc" },
      },
    },
  },
}
