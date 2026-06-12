class McpAudit < Formula
  include Language::Python::Virtualenv

  desc "Scan MCP and AI agent configs for risky permissions and secrets"
  homepage "https://github.com/X-One-AI/mcp-audit"
  url "https://files.pythonhosted.org/packages/b8/4f/24f5c9e7301b2bbb39f10d8e0b9dad2c424236e11a7b2b98b55d2daf7594/xone_mcp_audit-0.4.1.tar.gz"
  sha256 "bc2ba1a3931726cb436246c84c3d0d1d8fe8378dde0a0552392075b1855762e1"
  license "MIT"

  depends_on "python@3.13"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "mcp-audit 0.4.1", shell_output("#{bin}/mcp-audit --version")
    assert_match "Config discovery preview", shell_output("#{bin}/mcp-audit discover")
  end
end
