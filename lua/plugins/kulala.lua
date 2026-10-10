-- REST 客户端:新建 xxx.http 文件写请求,<leader>k 组发送
--   <leader>kr 发送当前请求  <leader>kR 发送全部
--   <leader>kp 预览请求      <leader>ki 检查变量  <leader>kt 切换 headers/body
return {
  "mistweaverco/kulala.nvim",
  ft = { "http", "rest" },
  keys = {
    { "<leader>kr", function() require("kulala").run() end, desc = "Send Request", ft = { "http", "rest" } },
    { "<leader>kR", function() require("kulala").run_all() end, desc = "Send All Requests", ft = { "http", "rest" } },
    { "<leader>kp", function() require("kulala").preview() end, desc = "Preview Request", ft = { "http", "rest" } },
    { "<leader>ki", function() require("kulala").inspect() end, desc = "Inspect Request", ft = { "http", "rest" } },
    { "<leader>kt", function() require("kulala").toggle_view() end, desc = "Toggle Headers/Body", ft = { "http", "rest" } },
  },
  opts = {},
}
