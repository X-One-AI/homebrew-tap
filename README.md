# X-One Homebrew Tap

Languages: English | [中文](./README.zh-CN.md)

Official Homebrew tap for X-One command-line tools.

## Install

```bash
brew tap x-one-ai/tap
brew trust --formula x-one-ai/tap/mcp-audit
brew install x-one-ai/tap/mcp-audit
mcp-audit --version

brew install x-one-ai/tap/xone-cli
xone --version
```

## Formulae

| Formula | Description |
| --- | --- |
| `mcp-audit` | Scan MCP and AI agent configs for risky permissions, secrets, unsafe commands, and CI safety gaps. |
| `agent-pr-evidence` | Generate reviewable safety evidence for AI-agent-generated pull requests. |
| `agent-failure-packet` | Create redacted, shareable debug packets from failed AI agent runs. |
| `mcp-risk-index` | Validate and render an evidence-backed MCP server risk signal catalog. |
| `ai-incident-lab` | Run safe local incident scenario packs for AI agent workflows. |
| `xone-cli` | Unified local entry point for X-One Agent Evidence Loop workflows. |

## Verification

The tap CI installs formulae from source and runs formula tests. Formula tests verify CLI entrypoints and the shortest safe workflow for tools with an `init` command:

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

Project docs:

- [mcp-audit README](https://github.com/X-One-AI/mcp-audit#readme)
- [mcp-audit Chinese README](https://github.com/X-One-AI/mcp-audit/blob/main/README.zh-CN.md)
- [agent-pr-evidence README](https://github.com/X-One-AI/agent-pr-evidence#readme)
- [agent-failure-packet README](https://github.com/X-One-AI/agent-failure-packet#readme)
- [mcp-risk-index README](https://github.com/X-One-AI/mcp-risk-index#readme)
- [ai-incident-lab README](https://github.com/X-One-AI/ai-incident-lab#readme)
- [xone-cli README](https://github.com/X-One-AI/xone-cli#readme)
- [xone-cli Chinese README](https://github.com/X-One-AI/xone-cli/blob/main/README.zh-CN.md)
