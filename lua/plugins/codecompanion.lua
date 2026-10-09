-- AI 辅助:codecompanion.nvim
-- 按优先级自动选择 adapter(环境变量):
--   DEEPSEEK_API_KEY > ANTHROPIC_API_KEY > OPENAI_API_KEY > 本地 ollama
-- 常用键位:
--   <leader>aa  打开/关闭 AI 聊天
--   <leader>ae  行内提示(光标处描述需求)
--   <leader>ac  动作面板(解释/重构/生成测试等,可视模式可选代码)
return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionActions", "CodeCompanionCmd" },
  keys = {
    { "<leader>aa", "<cmd>CodeCompanionChat Toggle<cr>", desc = "AI Chat" },
    { "<leader>ae", "<cmd>CodeCompanion<cr>", desc = "AI Inline Prompt" },
    { "<leader>ac", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "AI Actions" },
  },
  opts = function()
    local function pick_adapter()
      if os.getenv("DEEPSEEK_API_KEY") then
        return "deepseek"
      elseif os.getenv("ANTHROPIC_API_KEY") then
        return "anthropic"
      elseif os.getenv("OPENAI_API_KEY") then
        return "openai"
      end
      return "ollama"
    end
    return {
      opts = {
        send_code = true, -- 允许把缓冲区代码发给 LLM
        log_level = "ERROR",
      },
      strategies = {
        chat = { adapter = pick_adapter() },
        inline = { adapter = pick_adapter() },
        cmd = { adapter = pick_adapter() },
      },
    }
  end,
}
