-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- 保存时去除行尾空白(markdown 除外,保留"双空格换行"语法)
vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("user-trim-ws", { clear = true }),
  callback = function(args)
    if vim.bo[args.buf].buftype ~= "" or vim.bo[args.buf].filetype == "markdown" then
      return
    end
    local view = vim.fn.winsaveview()
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.fn.winrestview(view)
  end,
})

-- 打开终端缓冲区自动进入插入模式
vim.api.nvim.create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("user-term-insert", { clear = true }),
  callback = function()
    vim.cmd("startinsert")
  end,
})
