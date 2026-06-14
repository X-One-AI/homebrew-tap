# X-One Homebrew Tap

语言：[English](./README.md) | 中文

这是 X-One 命令行工具的官方 Homebrew tap。

## 安装

```bash
brew tap x-one-ai/tap
brew trust --formula x-one-ai/tap/mcp-audit
brew install x-one-ai/tap/mcp-audit
mcp-audit --version

brew install x-one-ai/tap/xone-cli
xone --version
```

## Formulae

| Formula | 说明 |
| --- | --- |
| `mcp-audit` | 扫描 MCP 和 AI agent 配置中的高风险权限、明文密钥、不安全命令和 CI 安全风险。 |
| `agent-pr-evidence` | 为 AI agent 生成的 PR 生成可审查的安全与交付证据。 |
| `agent-failure-packet` | 把失败的 AI agent run 生成脱敏、可分享的调试包。 |
| `mcp-risk-index` | 校验并渲染有证据支撑的 MCP server 风险信号 catalog。 |
| `ai-incident-lab` | 运行安全本地 AI agent incident scenario packs。 |
| `xone-cli` | X-One Agent Evidence Loop 的统一本地入口。 |

## 验证

tap CI 会从源码安装 formula，并运行 formula test。测试会验证 CLI 入口，以及带 `init` 命令工具的最短安全 workflow：

```bash
mcp-audit --version
mcp-audit discover
agent-pr-evidence --version
agent-failure-packet init
mcp-risk-index init && mcp-risk-index validate
ai-incident-lab init && ai-incident-lab validate
xone --version
xone doctor --json
```

项目文档：

- [mcp-audit README](https://github.com/X-One-AI/mcp-audit#readme)
- [mcp-audit 中文 README](https://github.com/X-One-AI/mcp-audit/blob/main/README.zh-CN.md)
- [agent-pr-evidence README](https://github.com/X-One-AI/agent-pr-evidence#readme)
- [agent-failure-packet README](https://github.com/X-One-AI/agent-failure-packet#readme)
- [mcp-risk-index README](https://github.com/X-One-AI/mcp-risk-index#readme)
- [ai-incident-lab README](https://github.com/X-One-AI/ai-incident-lab#readme)
- [xone-cli README](https://github.com/X-One-AI/xone-cli#readme)
- [xone-cli 中文 README](https://github.com/X-One-AI/xone-cli/blob/main/README.zh-CN.md)
