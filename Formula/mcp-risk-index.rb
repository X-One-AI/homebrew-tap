class McpRiskIndex < Formula
  include Language::Python::Virtualenv

  desc "Evidence-backed MCP server risk signal catalog and local CLI"
  homepage "https://github.com/X-One-AI/mcp-risk-index"
  url "https://github.com/X-One-AI/mcp-risk-index/releases/download/v0.2.0/xone_mcp_risk_index-0.2.0.tar.gz"
  sha256 "3cfd765eacd48b6ec7a8dd3e922e4008a6175bc495e5bfbb61fa1e8dbc8bad2b"
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
    assert_match "mcp-risk-index 0.2.0", shell_output("#{bin}/mcp-risk-index --version")
    system bin/"mcp-risk-index", "init", "--output", testpath/"catalog.yml"
    system bin/"mcp-risk-index", "validate", "--catalog", testpath/"catalog.yml", "--strict"
  end
end
