# X-One Homebrew Tap

Languages: English | [中文](./README.zh-CN.md)

Official Homebrew tap for X-One command-line tools.

## Install

```bash
brew tap x-one-ai/tap
brew trust --formula x-one-ai/tap/mcp-audit
brew install x-one-ai/tap/mcp-audit
mcp-audit --version
```

## Formulae

| Formula | Description |
| --- | --- |
| `mcp-audit` | Scan MCP and AI agent configs for risky permissions, secrets, unsafe commands, and CI safety gaps. |

## Verification

The tap CI installs formulae from source and runs formula tests. For `mcp-audit`, the test verifies:

```bash
mcp-audit --version
mcp-audit discover
```

Project docs:

- [mcp-audit README](https://github.com/X-One-AI/mcp-audit#readme)
- [mcp-audit Chinese README](https://github.com/X-One-AI/mcp-audit/blob/main/README.zh-CN.md)
