# nvim

个人 [LazyVim](https://lazyvim.org) 配置(Neovim 0.12+,macOS)。

## 已启用

- **语言**:C/C++、Rust、Java、Kotlin、Python、JS/TS、Vue、HTML/CSS、JSON/YAML/TOML、Lua、仓颉(本地 SDK `~/cangjie` + [cangjie-nvim](https://gitcode.com/ystyle/cangjie-nvim))
- **调试**:`dap.core`(F5 启动、`<leader>db` 断点、`<leader>du` DAP UI);C/C++/Rust 用 codelldb,Python 用 debugpy,Java 用 java-debug-adapter
- **AI**:[codecompanion.nvim](https://github.com/olimorris/codecompanion.nvim)
  - `<leader>aa` 聊天、`<leader>ae` 行内提示、`<leader>ac` 动作面板
  - 按环境变量自动选 adapter:`DEEPSEEK_API_KEY` / `ANTHROPIC_API_KEY` / `OPENAI_API_KEY`,都没有则回退 ollama
- **个性化**:`;` 进命令模式、`j/k` 屏幕行移动、可视模式 `J/K` 移动块、`<`/`>` 保持选中、保存去尾空白(markdown 除外)、终端自动插入模式、scrolloff=8

## 外部依赖

`rg` `fd` `lazygit` `git` `node`(fnm)、[0xProto Nerd Font](https://github.com/ryanoasis/nerd-fonts)、Cangjie SDK(可选)

## 同步到新机器

```bash
git clone git@github.com:ViewWay/nvim.git ~/.config/nvim
nvim   # 首次启动自动安装插件;LSP/格式化/调试器由 Mason 自动补齐
```
