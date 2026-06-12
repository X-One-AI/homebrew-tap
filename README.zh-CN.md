# X-One Homebrew Tap

语言：[English](./README.md) | 中文

这是 X-One 命令行工具的官方 Homebrew tap。

## 安装

```bash
brew tap x-one-ai/tap
brew trust --formula x-one-ai/tap/mcp-audit
brew install x-one-ai/tap/mcp-audit
mcp-audit --version
```

## Formulae

| Formula | 说明 |
| --- | --- |
| `mcp-audit` | 扫描 MCP 和 AI agent 配置中的高风险权限、明文密钥、不安全命令和 CI 安全风险。 |

## 验证

tap CI 会从源码安装 formula，并运行 formula test。对于 `mcp-audit`，测试会验证：

```bash
mcp-audit --version
mcp-audit discover
```

项目文档：

- [mcp-audit README](https://github.com/X-One-AI/mcp-audit#readme)
- [mcp-audit 中文 README](https://github.com/X-One-AI/mcp-audit/blob/main/README.zh-CN.md)
