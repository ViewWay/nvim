# Neovim 使用指引

> `<leader>` = **空格**。记不住键位时:按下空格等半秒,which-key 会弹出所有分组;`<leader>sk` 可搜索全部键位。
> 本指引所有键位均已对照当前安装的 LazyVim 版本源码核实。

## 1. 文件 / 导航

| 键位 | 功能 |
|---|---|
| `<leader>ff` | 查找文件(项目根目录) |
| `<leader>,` | 切换最近缓冲区 |
| `<leader>sg` | 全项目文本搜索(rg 实时 grep) |
| `<leader>sk` | 搜索键位 |
| `<leader>sr` | 多文件查找替换(grug-far) |
| `s` / `S` | Flash 快速跳转 / Treesitter 结构选择(按提示字母瞬移) |
| `j` `k` | 按屏幕行移动(本配置,中文长段不断行) |
| `<C-h/j/k/l>` | 窗口间跳转 |
| `[b` `]b` / `<H/L>` | 上/下一个缓冲区(bufferline) |
| `<leader><tab>` | 标签页相关命令组 |

## 2. LSP(打开代码文件自动激活)

| 键位 | 功能 |
|---|---|
| `K` | 悬浮文档(hover) |
| `gd` / `gr` / `gI` / `gy` / `gD` | 定义 / 引用 / 实现 / 类型定义 / 声明 |
| `<leader>cr` | 重命名符号 |
| `<leader>cR` | 重命名文件(联动引用更新) |
| `<leader>ca` | Code Action(自动修复/快速操作) |
| `<leader>cs` / `<leader>cS` | 符号列表 / LSP 引用面板(Trouble) |
| `<leader>cl` | LSP 连接信息 |
| `<leader>xx` / `[d` `]d` | 诊断列表 / 上下一个诊断 |

## 3. 格式化 / Lint

| 键位 | 功能 |
|---|---|
| 保存时 | 自动格式化(LazyVim 默认开启) |
| `<leader>cf` | 手动格式化当前文件/选中区域 |
| `<leader>cF` | 格式化内嵌语言(如 markdown 里的代码块) |
| `<leader>uf` | 切换"保存时自动格式化"开关 |

## 4. 调试(DAP)

| 键位 | 功能 |
|---|---|
| `<leader>dc` | 启动/继续调试(F5 同效) |
| `<leader>db` / `<leader>dB` | 切换断点 / 条件断点 |
| `<leader>da` | 带参数启动 |
| `<leader>dO` / `<leader>di` / `<leader>do` | 单步跳过 / 进入 / 跳出 |
| `<leader>dC` | 运行到光标 |
| `<leader>du` | 打开/关闭调试 UI(变量、调用栈、watch) |
| `<leader>de` | 悬浮求值(可视模式可选表达式) |
| `<leader>dt` | 终止调试 |
| `<leader>dr` / `<leader>dw` | REPL / 变量部件 |

调试器按语言自动选择:C/C++/Rust → codelldb,Python → debugpy,Java → java-debug-adapter(jdtls 自动挂载,断点直接打在主类即可)。

## 5. AI(codecompanion)

| 键位 | 功能 |
|---|---|
| `<leader>aa` | 打开/关闭聊天窗口 |
| `<leader>ae` | 行内提示:光标处直接描述要改什么,回车执行 |
| `<leader>ac` | 动作面板(解释代码/重构/生成测试/修诊断…,可视模式先选代码) |

聊天窗口内:`@` 引用文件/缓冲区,`/` 内置提示词模板,`?` 查看帮助。
模型选择:启动时按 `DEEPSEEK_API_KEY` > `ANTHROPIC_API_KEY` > `OPENAI_API_KEY` 自动匹配,都没有则用本地 ollama。在 `~/.zshrc` 里 `export DEEPSEEK_API_KEY=sk-xxx` 后重启 nvim 生效。

## 6. Git

| 键位 | 功能 |
|---|---|
| `<leader>gg` | 打开 lazygit(全功能 git TUI) |
| `<leader>ghs` / `<leader>ghr` | 暂存 / 还原当前 hunk |
| `<leader>ghp` / `<leader>ghb` | 预览改动 / 当前行 blame |
| `]h` `[h` | 跳转到下/上一处改动 |

## 7. 终端 / 会话

| 键位 | 功能 |
|---|---|
| `<C-/>` | 浮动终端(再按切换回代码,终端内自动进入输入模式) |
| `<leader>ft` / `<leader>fT` | 打开终端(项目根 / 当前目录) |
| `<leader>qs` / `<leader>qS` | 恢复上次会话 / 选择会话 |
| `<leader>qq` | 全部退出 |

## 8. 本配置的个性化键位

| 键位 | 功能 |
|---|---|
| `;` | 进入命令模式(不用按 Shift) |
| 可视模式 `J` / `K` | 上下移动选中块,自动保持缩进 |
| 可视模式 `<` / `>` | 缩进并保持选中,可连续按 |
| 保存时 | 自动去除行尾空白(markdown 除外) |

## 9. 语言支持速查

| 语言 | LSP | 格式化 | 调试 |
|---|---|---|---|
| C/C++ | clangd | clang-format | codelldb |
| Rust | rust-analyzer | rustfmt | codelldb |
| Python | pyright | ruff | debugpy(`<leader>cv` 选 venv) |
| Java | jdtls | — | java-debug-adapter |
| Kotlin | kotlin-ls | ktlint | — |
| JS/TS | vtsls | prettierd | — |
| Vue / HTML / CSS | vue-ls / html / cssls | prettierd | — |
| JSON / YAML / TOML | +SchemaStore 校验 | prettierd / taplo | — |
| Lua | lua-ls | stylua | — |
| 仓颉 (.cj) | cangjie-lsp(本地 SDK) | — | — |

## 10. 维护

```vim
:Lazy          " 插件管理面板(Update / Sync / Clean)
:Mason         " LSP/格式化/调试器管理面板
:checkhealth   " 健康检查,缺什么依赖会明说
:LspInfo       " 当前 buffer 的 LSP 状态
```

改完配置同步到 GitHub:

```bash
git -C ~/.config/nvim add -A && git commit -m "msg" && git push
```

新机器恢复:`git clone git@github.com:ViewWay/nvim.git ~/.config/nvim && nvim`(插件和工具自动安装)。

## 11. 已知注意事项

- **pip**:系统 `~/.pip/pip.conf` 的 `prefix=~/lib` 会破坏 Mason 装 pypi 包,本配置已在 nvim 内屏蔽(`PIP_CONFIG_FILE=/dev/null`)。终端手动 `pip install` 若有异常,先看这个文件。
- **仓颉**:依赖 `~/cangjie` SDK 与已下载的 LSP wrapper,移动 SDK 路径后需同步改 `lua/plugins/cangjie.lua`。
- **图标乱码/方块**:确认终端使用 0xProto Nerd Font。
