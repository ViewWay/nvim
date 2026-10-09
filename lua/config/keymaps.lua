-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- 分号进命令模式,不用按 Shift
map("n", ";", ":")

-- j/k 按屏幕行移动(中文长段落 / wrap 显示时更直观)
map({ "n", "x" }, "j", "gj")
map({ "n", "x" }, "k", "gk")

-- 可视模式 J/K 移动选中块,自动重排缩进
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- 可视模式缩进后保持选中,便于连续调整
map("v", "<", "<gv")
map("v", ">", ">gv")
