-- git 合并冲突助手:冲突区域高亮
-- 缓冲区键位(仅在冲突文件生效):]x / [x  跳转冲突;co 取我方 ct 取对方 cb 两者 c0 删除
return {
  "akinsho/git-conflict.nvim",
  -- 插件目录存在才启用:避免网络不通时每次启动都卡在克隆重试
  enabled = function()
    return vim.fn.isdirectory(vim.fn.stdpath("data") .. "/lazy/git-conflict.nvim") == 1
  end,
  lazy = false,
  opts = {
    default_mappings = true,
    default_commands = true,
  },
}
