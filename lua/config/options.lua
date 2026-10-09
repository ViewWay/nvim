-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 光标上下/左右始终保留 8 行列上下文,跳转时不贴边
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- 补全弹出菜单最多 14 行,避免遮挡过多内容
vim.opt.pumheight = 14

-- 系统的 ~/.pip/pip.conf 配置了 prefix=~/lib,会把 pip 安装重定向出 venv,
-- 导致 Mason 的 pypi 包(debugpy 等)装完即丢。让 nvim 内的 pip 忽略该配置。
if not vim.env.PIP_CONFIG_FILE then
  vim.env.PIP_CONFIG_FILE = "/dev/null"
end
